#include "flexloans.hpp"

//contractName:flexloans

namespace {
  uint64_t pow10u(uint8_t p) {
    uint64_t r = 1;
    while (p--) r *= 10;
    return r;
  }
}

// === Set Config === //
ACTION flexloans::setconfig(name admin, name debt_contract, symbol debt_symbol,
                            asset min_debt, uint16_t borrow_fee_bps,
                            uint16_t redeem_fee_floor_bps, uint16_t redeem_fee_max_bps) {
  config_t conf(get_self(), get_self().value);
  if (!conf.exists()) require_auth(get_self());
  else require_auth(conf.get().admin);

  check(is_account(admin), "flexloans: bad admin");
  check(is_account(debt_contract), "flexloans: bad debt contract");
  check(debt_symbol.is_valid(), "flexloans: bad debt symbol");
  check(min_debt.symbol == debt_symbol && min_debt.amount > 0, "flexloans: min_debt");
  check(borrow_fee_bps <= 500, "flexloans: borrow_fee");
  check(redeem_fee_floor_bps <= redeem_fee_max_bps && redeem_fee_max_bps <= 1000,
        "flexloans: redeem fees");

  uint64_t next_pos = 1, next_seq = 1, next_sp = 1;
  bool paused = false;
  if (conf.exists()) {
    auto o = conf.get();
    next_pos = o.next_pos_id;
    next_seq = o.next_seq;
    next_sp = o.next_sp_id;
    paused = o.paused;
  }

  conf.set(config{
    .admin = admin,
    .debt_contract = debt_contract,
    .debt_symbol = debt_symbol,
    .min_debt = min_debt,
    .borrow_fee_bps = borrow_fee_bps,
    .redeem_fee_floor_bps = redeem_fee_floor_bps,
    .redeem_fee_max_bps = redeem_fee_max_bps,
    .paused = paused,
    .next_pos_id = next_pos,
    .next_seq = next_seq,
    .next_sp_id = next_sp
  }, get_self());

  feestate_t fees(get_self(), get_self().value);
  if (!fees.exists()) {
    fees.set(feestate{
      .base_rate_bps = redeem_fee_floor_bps,
      .last_update = current_time_point().sec_since_epoch()
    }, get_self());
  }
}//END setconfig

ACTION flexloans::addmarket(uint64_t id, name coll_contract, symbol coll_symbol,
                            uint16_t mcr_bps, uint16_t ccr_bps, int64_t mint_cap) {
  auto cfg = check_config();
  require_auth(cfg.admin);
  check(is_account(coll_contract), "flexloans: coll contract");
  check(coll_symbol.is_valid(), "flexloans: coll symbol");
  check(mcr_bps >= 10000 && ccr_bps >= mcr_bps, "flexloans: mcr/ccr");
  check(mint_cap >= 0, "flexloans: mint_cap");

  markets_t markets(get_self(), get_self().value);
  check(markets.find(id) == markets.end(), "flexloans: market exists");

  markets.emplace(get_self(), [&](auto& r) {
    r.id = id;
    r.coll_contract = coll_contract;
    r.coll_symbol = coll_symbol;
    r.price_usd_e8 = 0;
    r.price_updated = 0;
    r.mcr_bps = mcr_bps;
    r.ccr_bps = ccr_bps;
    r.mint_cap = mint_cap;
    r.total_coll = 0;
    r.total_debt = 0;
    r.total_stake = 0;
    r.redist_coll_x = 0;
    r.redist_debt_x = 0;
    r.paused = false;
  });

  ensure_stabpool(id, cfg.debt_symbol, coll_symbol);
}//END addmarket

ACTION flexloans::setmarket(uint64_t id, bool paused, uint16_t mcr_bps, uint16_t ccr_bps,
                            int64_t mint_cap) {
  require_auth(check_config().admin);
  check(mcr_bps >= 10000 && ccr_bps >= mcr_bps, "flexloans: mcr/ccr");
  markets_t markets(get_self(), get_self().value);
  auto it = markets.require_find(id, "flexloans: market");
  markets.modify(it, same_payer, [&](auto& r) {
    r.paused = paused;
    r.mcr_bps = mcr_bps;
    r.ccr_bps = ccr_bps;
    r.mint_cap = mint_cap;
  });
}//END setmarket

ACTION flexloans::setprice(uint64_t market_id, uint64_t price_usd_e8) {
  require_auth(check_config().admin);
  check(price_usd_e8 > 0, "flexloans: price");
  markets_t markets(get_self(), get_self().value);
  auto it = markets.require_find(market_id, "flexloans: market");
  markets.modify(it, same_payer, [&](auto& r) {
    r.price_usd_e8 = price_usd_e8;
    r.price_updated = current_time_point().sec_since_epoch();
  });
}//END setprice

ACTION flexloans::pause(bool paused) {
  config_t conf(get_self(), get_self().value);
  auto cfg = conf.get();
  require_auth(cfg.admin);
  cfg.paused = paused;
  conf.set(cfg, get_self());
}//END pause

// === Borrow === //
ACTION flexloans::borrow(uint64_t pos_id, asset amount) {
  auto cfg = check_config();
  check(!cfg.paused, "flexloans: paused");
  check(amount.symbol == cfg.debt_symbol && amount.amount > 0, "flexloans: amount");

  positions_t positions(get_self(), get_self().value);
  auto it = positions.require_find(pos_id, "flexloans: position");
  require_auth(it->owner);
  check(it->status == POS_ACTIVE, "flexloans: not active");

  markets_t markets(get_self(), get_self().value);
  touch_position(positions, it, markets, cfg);
  it = positions.require_find(pos_id, "flexloans: position");

  auto mit = markets.require_find(it->market_id, "flexloans: market");
  check(!mit->paused, "flexloans: market paused");
  require_fresh_price(*mit);

  int64_t fee = (int64_t)(((__int128)amount.amount * cfg.borrow_fee_bps) / BPS_DENOM);
  int64_t debt_add = amount.amount + fee;
  int64_t new_debt = it->debt.amount + debt_add;
  check(new_debt >= cfg.min_debt.amount, "flexloans: min debt");
  if (mit->mint_cap > 0)
    check(mit->total_debt + debt_add <= mit->mint_cap, "flexloans: mint cap");

  check(icr_bps(cfg, *mit, it->coll.amount, new_debt) >= mit->mcr_bps, "flexloans: ICR");
  check(tcr_bps(cfg, *mit) >= mit->ccr_bps
        || icr_bps(cfg, *mit, it->coll.amount, new_debt) >= mit->ccr_bps,
        "flexloans: CCR");

  uint64_t old_stake = it->stake;
  name borrower = it->owner;
  uint64_t mid = it->market_id;
  markets.modify(mit, same_payer, [&](auto& r) {
    r.total_debt += debt_add;
    r.total_stake = r.total_stake - old_stake + (uint64_t)new_debt;
  });
  positions.modify(it, same_payer, [&](auto& r) {
    r.debt.amount = new_debt;
    r.stake = (uint64_t)new_debt;
  });

  if (fee > 0)
    mint_interest_to_sp(mid, asset{fee, cfg.debt_symbol});

  issue_debt(borrower, amount, "flexloans borrow");
}//END borrow

ACTION flexloans::withdrawcoll(uint64_t pos_id, asset amount) {
  auto cfg = check_config();
  check(!cfg.paused, "flexloans: paused");
  check(amount.amount > 0, "flexloans: amount");

  positions_t positions(get_self(), get_self().value);
  auto it = positions.require_find(pos_id, "flexloans: position");
  require_auth(it->owner);
  check(it->status == POS_ACTIVE, "flexloans: not active");
  check(amount.symbol == it->coll.symbol, "flexloans: coll symbol");
  check(amount.amount < it->coll.amount, "flexloans: keep coll");

  markets_t markets(get_self(), get_self().value);
  touch_position(positions, it, markets, cfg);
  it = positions.require_find(pos_id, "flexloans: position");
  auto mit = markets.require_find(it->market_id, "flexloans: market");
  require_fresh_price(*mit);

  int64_t new_coll = it->coll.amount - amount.amount;
  if (it->debt.amount > 0) {
    check(icr_bps(cfg, *mit, new_coll, it->debt.amount) >= mit->mcr_bps, "flexloans: ICR");
    check(tcr_bps(cfg, *mit) >= mit->ccr_bps
          || icr_bps(cfg, *mit, new_coll, it->debt.amount) >= mit->ccr_bps,
          "flexloans: CCR");
  }

  name coll_contract = mit->coll_contract;
  name owner = it->owner;
  markets.modify(mit, same_payer, [&](auto& r) { r.total_coll -= amount.amount; });
  positions.modify(it, same_payer, [&](auto& r) { r.coll.amount = new_coll; });

  send_token(coll_contract, owner, amount, "flexloans withdraw coll");
}//END withdrawcoll

ACTION flexloans::setrate(uint64_t pos_id, uint16_t rate_bps) {
  auto cfg = check_config();
  check(!cfg.paused, "flexloans: paused");
  check(valid_rate(rate_bps), "flexloans: rate bucket");

  positions_t positions(get_self(), get_self().value);
  auto it = positions.require_find(pos_id, "flexloans: position");
  require_auth(it->owner);
  check(it->status == POS_ACTIVE || it->status == POS_ZOMBIE, "flexloans: status");

  markets_t markets(get_self(), get_self().value);
  touch_position(positions, it, markets, cfg);
  it = positions.require_find(pos_id, "flexloans: position");

  config_t conf(get_self(), get_self().value);
  auto c = conf.get();
  uint64_t seq = c.next_seq++;
  conf.set(c, get_self());

  positions.modify(it, same_payer, [&](auto& r) {
    r.rate_bps = rate_bps;
    r.seq = seq;
    if (r.status == POS_ZOMBIE && r.debt.amount >= cfg.min_debt.amount)
      r.status = POS_ACTIVE;
  });
}//END setrate

ACTION flexloans::closepos(uint64_t pos_id) {
  auto cfg = check_config();
  positions_t positions(get_self(), get_self().value);
  auto it = positions.require_find(pos_id, "flexloans: position");
  require_auth(it->owner);
  check(it->status == POS_ACTIVE || it->status == POS_ZOMBIE, "flexloans: status");

  markets_t markets(get_self(), get_self().value);
  touch_position(positions, it, markets, cfg);
  it = positions.require_find(pos_id, "flexloans: position");
  check(it->debt.amount == 0, "flexloans: repay first");

  close_position_row(positions, it, markets, cfg);
}//END closepos

// === Stability Pool === //
ACTION flexloans::withdrawsp(name owner, uint64_t market_id, asset amount) {
  require_auth(owner);
  auto cfg = check_config();
  check(amount.symbol == cfg.debt_symbol && amount.amount > 0, "flexloans: amount");

  spdeposits_t deps(get_self(), get_self().value);
  auto dit = require_sp(owner, market_id);
  stabpools_t pools(get_self(), get_self().value);
  auto spit = pools.require_find(market_id, "flexloans: stabpool");

  spdeposit d = *dit;
  update_sp_deposit(d, *spit);
  check(amount.amount <= d.hxusd.amount, "flexloans: sp balance");
  check(spit->hxusd.amount >= amount.amount, "flexloans: sp total");

  pools.modify(spit, same_payer, [&](auto& r) { r.hxusd.amount -= amount.amount; });
  d.hxusd.amount -= amount.amount;
  d.product_snap = spit->product_p;
  d.coll_snap = spit->coll_scale;
  d.yield_snap = spit->yield_scale;
  d.epoch_snap = spit->current_epoch;

  if (d.hxusd.amount == 0 && d.pending_coll.amount == 0 && d.pending_yield.amount == 0)
    deps.erase(dit);
  else
    deps.modify(dit, same_payer, [&](auto& r) { r = d; });

  send_token(cfg.debt_contract, owner, amount, "flexloans sp withdraw");
}//END withdrawsp

ACTION flexloans::claimsp(name owner, uint64_t market_id) {
  require_auth(owner);
  auto cfg = check_config();

  markets_t markets(get_self(), get_self().value);
  auto mit = markets.require_find(market_id, "flexloans: market");

  spdeposits_t deps(get_self(), get_self().value);
  auto dit = require_sp(owner, market_id);
  stabpools_t pools(get_self(), get_self().value);
  auto spit = pools.require_find(market_id, "flexloans: stabpool");

  spdeposit d = *dit;
  update_sp_deposit(d, *spit);

  asset pay_coll = d.pending_coll;
  asset pay_yield = d.pending_yield;
  d.pending_coll.amount = 0;
  d.pending_yield.amount = 0;
  d.product_snap = spit->product_p;
  d.coll_snap = spit->coll_scale;
  d.yield_snap = spit->yield_scale;
  d.epoch_snap = spit->current_epoch;

  if (pay_coll.amount > 0) {
    check(spit->coll_balance.amount >= pay_coll.amount, "flexloans: sp coll book");
    pools.modify(spit, same_payer, [&](auto& r) { r.coll_balance.amount -= pay_coll.amount; });
  }
  deps.modify(dit, same_payer, [&](auto& r) { r = d; });

  if (pay_coll.amount > 0)
    send_token(mit->coll_contract, owner, pay_coll, "flexloans sp coll");
  if (pay_yield.amount > 0)
    send_token(cfg.debt_contract, owner, pay_yield, "flexloans sp yield");
}//END claimsp

// === Liquidate === //
ACTION flexloans::liquidate(uint64_t pos_id) {
  auto cfg = check_config();
  positions_t positions(get_self(), get_self().value);
  auto it = positions.require_find(pos_id, "flexloans: position");
  check(it->status == POS_ACTIVE || it->status == POS_ZOMBIE, "flexloans: status");

  markets_t markets(get_self(), get_self().value);
  touch_position(positions, it, markets, cfg);
  it = positions.require_find(pos_id, "flexloans: position");
  auto mit = markets.require_find(it->market_id, "flexloans: market");
  require_fresh_price(*mit);

  check(it->debt.amount > 0, "flexloans: no debt");
  check(icr_bps(cfg, *mit, it->coll.amount, it->debt.amount) < mit->mcr_bps,
        "flexloans: healthy");

  const int64_t debt = it->debt.amount;
  const int64_t coll = it->coll.amount;
  const uint64_t market_id = it->market_id;
  const name owner = it->owner;
  const uint64_t stake = it->stake;
  const symbol coll_sym = it->coll.symbol;

  stabpools_t pools(get_self(), get_self().value);
  auto spit = pools.require_find(market_id, "flexloans: stabpool");

  const int64_t sp_hxusd = spit->hxusd.amount;
  const int64_t offset_debt = debt < sp_hxusd ? debt : sp_hxusd;
  const int64_t offset_coll = debt > 0
    ? (int64_t)(((__int128)coll * offset_debt) / debt) : 0;
  const int64_t rem_debt = debt - offset_debt;
  const int64_t rem_coll = coll - offset_coll;
  const uint64_t peer_stake = mit->total_stake > stake ? mit->total_stake - stake : 0;

  if (offset_debt > 0) {
    const int64_t remaining_sp = sp_hxusd - offset_debt;
    uint64_t new_p = (uint64_t)(((__int128)spit->product_p * remaining_sp) / sp_hxusd);
    // Liquity: ΔS = coll * P / totalDeposits (P before decrease)
    uint64_t coll_add = (uint64_t)(((__int128)offset_coll * spit->product_p) / sp_hxusd);
    // Epoch reset when SP emptied or P would collapse (never stick product_p at 1)
    const bool epoch_bump = (remaining_sp == 0) || (new_p < P_MIN);
    pools.modify(spit, same_payer, [&](auto& r) {
      r.coll_scale += coll_add;
      r.hxusd.amount -= offset_debt;
      r.coll_balance.amount += offset_coll;
      if (epoch_bump) {
        r.current_epoch += 1;
        r.product_p = INDEX_SCALE;
      } else {
        r.product_p = new_p;
      }
    });
    retire_debt(asset{offset_debt, cfg.debt_symbol}, "flexloans liq offset");
  }

  if (rem_debt > 0 && peer_stake > 0) {
    markets.modify(mit, same_payer, [&](auto& r) {
      r.redist_coll_x += (uint64_t)(((__int128)rem_coll * INDEX_SCALE) / peer_stake);
      r.redist_debt_x += (uint64_t)(((__int128)rem_debt * INDEX_SCALE) / peer_stake);
      r.total_coll -= offset_coll;
      r.total_debt -= offset_debt;
      r.total_stake -= stake;
    });
  } else {
    if (rem_debt == 0 && rem_coll > 0) {
      surpluses_t sur(get_self(), get_self().value);
      auto sit = sur.find(pos_id);
      if (sit == sur.end()) {
        sur.emplace(get_self(), [&](auto& r) {
          r.position_id = pos_id;
          r.owner = owner;
          r.market_id = market_id;
          r.coll = asset{rem_coll, coll_sym};
        });
      } else {
        sur.modify(sit, same_payer, [&](auto& r) { r.coll.amount += rem_coll; });
      }
    }
    markets.modify(mit, same_payer, [&](auto& r) {
      r.total_coll -= coll;
      r.total_debt -= debt;
      r.total_stake -= stake;
    });
  }

  positions.modify(it, same_payer, [&](auto& r) {
    r.coll.amount = 0;
    r.debt.amount = 0;
    r.stake = 0;
    r.status = POS_CLOSED;
  });
}//END liquidate

ACTION flexloans::claimsurplus(uint64_t position_id) {
  surpluses_t sur(get_self(), get_self().value);
  auto it = sur.require_find(position_id, "flexloans: surplus");
  require_auth(it->owner);

  markets_t markets(get_self(), get_self().value);
  auto mit = markets.require_find(it->market_id, "flexloans: market");

  asset pay = it->coll;
  name owner = it->owner;
  name coll_contract = mit->coll_contract;
  sur.erase(it);

  send_token(coll_contract, owner, pay, "flexloans surplus");
}//END claimsurplus

// === Transfers === //
void flexloans::on_transfer(name from, name to, asset quantity, string memo) {
  if (to != get_self() || from == get_self()) return;

  auto cfg = check_config();
  check(!cfg.paused, "flexloans: paused");

  // HXUSD in: repay / sp / redeem
  if (get_first_receiver() == cfg.debt_contract && quantity.symbol == cfg.debt_symbol) {
    if (memo.size() >= 6 && memo.substr(0, 6) == "repay#") {
      repay_debt(from, quantity, parse_u64(memo.substr(6)), cfg);
      return;
    }
    if (memo.size() >= 3 && memo.substr(0, 3) == "sp#") {
      config_t conf(get_self(), get_self().value);
      auto c = conf.get();
      provide_sp(from, quantity, parse_u64(memo.substr(3)), c);
      conf.set(c, get_self());
      return;
    }
    if (memo.size() >= 7 && memo.substr(0, 7) == "redeem#") {
      do_redeem(from, quantity, parse_u64(memo.substr(7)), cfg);
      return;
    }
    check(false, "flexloans: bad hxusd memo");
  }

  // Collateral in: open / addcoll
  if (memo.size() >= 5 && memo.substr(0, 5) == "open#") {
    uint64_t market_id = 0;
    uint16_t rate_bps = 0;
    parse_open_memo(memo.substr(5), market_id, rate_bps);
    config_t conf(get_self(), get_self().value);
    auto c = conf.get();
    open_position(from, quantity, market_id, rate_bps, c);
    conf.set(c, get_self());
    return;
  }
  if (memo.size() >= 8 && memo.substr(0, 8) == "addcoll#") {
    add_collateral(from, quantity, parse_u64(memo.substr(8)), cfg);
    return;
  }

  check(false, "flexloans: unknown transfer");
}//END on_transfer

// === Internal: open / add / repay / sp / redeem === //
void flexloans::open_position(name from, asset quantity, uint64_t market_id, uint16_t rate_bps,
                              config& cfg) {
  check(valid_rate(rate_bps), "flexloans: rate bucket");
  markets_t markets(get_self(), get_self().value);
  auto mit = markets.require_find(market_id, "flexloans: market");
  check(!mit->paused, "flexloans: market paused");
  check(get_first_receiver() == mit->coll_contract, "flexloans: coll contract");
  check(quantity.symbol == mit->coll_symbol && quantity.amount > 0, "flexloans: coll");
  require_fresh_price(*mit);

  uint64_t id = cfg.next_pos_id++;
  uint64_t seq = cfg.next_seq++;
  uint32_t now = current_time_point().sec_since_epoch();

  markets.modify(mit, same_payer, [&](auto& r) { r.total_coll += quantity.amount; });

  positions_t positions(get_self(), get_self().value);
  positions.emplace(get_self(), [&](auto& r) {
    r.id = id;
    r.owner = from;
    r.market_id = market_id;
    r.coll = quantity;
    r.debt = asset{0, cfg.debt_symbol};
    r.rate_bps = rate_bps;
    r.seq = seq;
    r.stake = 0;
    r.redist_coll_snap = mit->redist_coll_x;
    r.redist_debt_snap = mit->redist_debt_x;
    r.last_accrue = now;
    r.status = POS_ACTIVE;
  });
}//END open_position

void flexloans::add_collateral(name from, asset quantity, uint64_t pos_id, const config& cfg) {
  positions_t positions(get_self(), get_self().value);
  auto it = positions.require_find(pos_id, "flexloans: position");
  check(it->owner == from, "flexloans: not owner");
  check(it->status == POS_ACTIVE || it->status == POS_ZOMBIE, "flexloans: status");

  markets_t markets(get_self(), get_self().value);
  touch_position(positions, it, markets, cfg);
  it = positions.require_find(pos_id, "flexloans: position");
  auto mit = markets.require_find(it->market_id, "flexloans: market");
  check(get_first_receiver() == mit->coll_contract, "flexloans: coll contract");
  check(quantity.symbol == mit->coll_symbol && quantity.amount > 0, "flexloans: coll");

  markets.modify(mit, same_payer, [&](auto& r) { r.total_coll += quantity.amount; });
  positions.modify(it, same_payer, [&](auto& r) { r.coll.amount += quantity.amount; });
}//END add_collateral

void flexloans::repay_debt(name from, asset quantity, uint64_t pos_id, const config& cfg) {
  positions_t positions(get_self(), get_self().value);
  auto it = positions.require_find(pos_id, "flexloans: position");
  check(it->owner == from, "flexloans: not owner");
  check(it->status == POS_ACTIVE || it->status == POS_ZOMBIE, "flexloans: status");
  check(quantity.amount > 0 && quantity.amount <= it->debt.amount, "flexloans: repay amt");

  markets_t markets(get_self(), get_self().value);
  touch_position(positions, it, markets, cfg);
  it = positions.require_find(pos_id, "flexloans: position");
  auto mit = markets.require_find(it->market_id, "flexloans: market");

  int64_t new_debt = it->debt.amount - quantity.amount;
  uint64_t old_stake = it->stake;
  uint64_t new_stake = new_debt > 0 ? (uint64_t)new_debt : 0;

  markets.modify(mit, same_payer, [&](auto& r) {
    r.total_debt -= quantity.amount;
    r.total_stake = r.total_stake - old_stake + new_stake;
  });
  positions.modify(it, same_payer, [&](auto& r) {
    r.debt.amount = new_debt;
    r.stake = new_stake;
    if (new_debt > 0 && new_debt < cfg.min_debt.amount)
      r.status = POS_ZOMBIE;
  });

  retire_debt(quantity, "flexloans repay");
}//END repay_debt

void flexloans::provide_sp(name from, asset quantity, uint64_t market_id, config& cfg) {
  check(quantity.amount > 0, "flexloans: amount");
  markets_t markets(get_self(), get_self().value);
  auto mit = markets.require_find(market_id, "flexloans: market");
  (void)mit;

  stabpools_t pools(get_self(), get_self().value);
  auto spit = pools.require_find(market_id, "flexloans: stabpool");

  spdeposits_t deps(get_self(), get_self().value);
  auto byom = deps.get_index<"byom"_n>();
  uint128_t key = ((uint128_t)from.value << 64) | market_id;
  auto fit = byom.find(key);

  if (fit == byom.end()) {
    uint64_t id = cfg.next_sp_id++;
    deps.emplace(get_self(), [&](auto& r) {
      r.id = id;
      r.owner = from;
      r.market_id = market_id;
      r.hxusd = quantity;
      r.product_snap = spit->product_p;
      r.coll_snap = spit->coll_scale;
      r.yield_snap = spit->yield_scale;
      r.epoch_snap = spit->current_epoch;
      r.pending_coll = asset{0, spit->coll_balance.symbol};
      r.pending_yield = asset{0, cfg.debt_symbol};
    });
  } else {
    spdeposit d = *fit;
    update_sp_deposit(d, *spit);
    d.hxusd.amount += quantity.amount;
    d.product_snap = spit->product_p;
    d.coll_snap = spit->coll_scale;
    d.yield_snap = spit->yield_scale;
    d.epoch_snap = spit->current_epoch;
    byom.modify(fit, same_payer, [&](auto& r) { r = d; });
  }

  pools.modify(spit, same_payer, [&](auto& r) { r.hxusd.amount += quantity.amount; });
}//END provide_sp

void flexloans::do_redeem(name from, asset hxusd_amount, uint64_t market_id, const config& cfg) {
  check(hxusd_amount.amount > 0, "flexloans: amount");
  markets_t markets(get_self(), get_self().value);
  auto mit = markets.require_find(market_id, "flexloans: market");
  require_fresh_price(*mit);
  check(mit->total_debt > 0, "flexloans: no debt");

  // Fee: floor + decaying baseRate (simple)
  feestate_t fees(get_self(), get_self().value);
  auto fs = fees.get();
  uint32_t now = current_time_point().sec_since_epoch();
  uint32_t dt = now > fs.last_update ? now - fs.last_update : 0;
  // decay ~ half-life rough: reduce base by dt/day
  uint64_t decay = dt / 86400;
  if (decay > fs.base_rate_bps) fs.base_rate_bps = cfg.redeem_fee_floor_bps;
  else if (decay > 0) {
    fs.base_rate_bps -= decay;
    if (fs.base_rate_bps < cfg.redeem_fee_floor_bps)
      fs.base_rate_bps = cfg.redeem_fee_floor_bps;
  }
  uint64_t fee_bps = fs.base_rate_bps;
  if (fee_bps < cfg.redeem_fee_floor_bps) fee_bps = cfg.redeem_fee_floor_bps;
  if (fee_bps > cfg.redeem_fee_max_bps) fee_bps = cfg.redeem_fee_max_bps;

  // coll paid for $1 debt: debt_usd / price, minus fee
  // coll_amt = debt * debt_scale_inv * price_inv ...
  // 1.0 HXUSD (~$1) buys (1e8 / price_usd_e8) coll whole-units, scaled by precisions
  uint64_t coll_unit = pow10u(mit->coll_symbol.precision());
  uint64_t debt_unit = pow10u(cfg.debt_symbol.precision());

  int64_t remaining = hxusd_amount.amount;
  int64_t coll_paid_total = 0;
  uint8_t hits = 0;
  const uint8_t max_hits = 20;

  positions_t positions(get_self(), get_self().value);
  auto byr = positions.get_index<"byredeem"_n>();
  uint128_t lo = ((uint128_t)market_id << 80);
  uint128_t hi = ((uint128_t)(market_id + 1) << 80);

  for (auto itr = byr.lower_bound(lo); itr != byr.end() && itr->by_redeem() < hi && remaining > 0 && hits < max_hits; ) {
    if (itr->status != POS_ACTIVE && itr->status != POS_ZOMBIE) {
      ++itr;
      continue;
    }
    uint64_t pid = itr->id;
    ++itr;

    auto pit = positions.require_find(pid, "flexloans: position");
    touch_position(positions, pit, markets, cfg);
    pit = positions.require_find(pid, "flexloans: position");
    mit = markets.require_find(market_id, "flexloans: market");

    if (pit->debt.amount <= 0) continue;

    int64_t take_debt = pit->debt.amount < remaining ? pit->debt.amount : remaining;
    // coll corresponding to take_debt at $1, before fee
    int64_t coll_gross = (int64_t)(((__int128)take_debt * coll_unit * 100000000)
                                   / ((__int128)debt_unit * mit->price_usd_e8));
    int64_t fee_coll = (int64_t)(((__int128)coll_gross * fee_bps) / BPS_DENOM);
    int64_t coll_to_user = coll_gross - fee_coll;
    if (coll_to_user > pit->coll.amount) {
      coll_to_user = pit->coll.amount;
      // recalc debt for available coll (keep simple: pro-rate)
      if (coll_gross > 0)
        take_debt = (int64_t)(((__int128)take_debt * coll_to_user) / (coll_gross - fee_coll > 0 ? coll_gross - fee_coll : 1));
    }
    if (take_debt <= 0 || coll_to_user <= 0) continue;

    int64_t new_debt = pit->debt.amount - take_debt;
    int64_t new_coll = pit->coll.amount - coll_to_user;
    uint64_t old_stake = pit->stake;
    uint64_t new_stake = new_debt > 0 ? (uint64_t)new_debt : 0;

    markets.modify(mit, same_payer, [&](auto& r) {
      r.total_debt -= take_debt;
      r.total_coll -= coll_to_user;
      r.total_stake = r.total_stake - old_stake + new_stake;
    });
    positions.modify(pit, same_payer, [&](auto& r) {
      r.debt.amount = new_debt;
      r.coll.amount = new_coll;
      r.stake = new_stake;
      if (new_debt == 0) {
        r.status = POS_CLOSED;
      } else if (new_debt < cfg.min_debt.amount) {
        r.status = POS_ZOMBIE;
      }
    });

    remaining -= take_debt;
    coll_paid_total += coll_to_user;
    hits++;
  }

  int64_t burned = hxusd_amount.amount - remaining;
  check(burned > 0, "flexloans: nothing redeemed");

  // bump baseRate with redeemed share of supply
  fs.base_rate_bps += (uint64_t)(((__int128)burned * 100) / (mit->total_debt + burned + 1));
  if (fs.base_rate_bps > cfg.redeem_fee_max_bps) fs.base_rate_bps = cfg.redeem_fee_max_bps;
  fs.last_update = now;
  fees.set(fs, get_self());

  retire_debt(asset{burned, cfg.debt_symbol}, "flexloans redeem");
  if (remaining > 0) {
    // refund unredeemed HXUSD
    send_token(cfg.debt_contract, from, asset{remaining, cfg.debt_symbol}, "flexloans redeem refund");
  }
  if (coll_paid_total > 0) {
    send_token(mit->coll_contract, from, asset{coll_paid_total, mit->coll_symbol},
               "flexloans redeem");
  }
}//END do_redeem

void flexloans::close_position_row(positions_t& positions, positions_t::const_iterator it,
                                   markets_t& markets, const config& cfg) {
  auto mit = markets.require_find(it->market_id, "flexloans: market");
  asset coll = it->coll;
  name owner = it->owner;
  name coll_contract = mit->coll_contract;
  uint64_t stake = it->stake;

  if (coll.amount > 0) {
    markets.modify(mit, same_payer, [&](auto& r) {
      r.total_coll -= coll.amount;
      r.total_stake -= stake;
    });
  } else if (stake > 0) {
    markets.modify(mit, same_payer, [&](auto& r) { r.total_stake -= stake; });
  }

  positions.modify(it, same_payer, [&](auto& r) {
    r.coll.amount = 0;
    r.debt.amount = 0;
    r.stake = 0;
    r.status = POS_CLOSED;
  });

  if (coll.amount > 0)
    send_token(coll_contract, owner, coll, "flexloans close");
}//END close_position_row

// === Helpers === //
flexloans::config flexloans::check_config() {
  config_t conf(get_self(), get_self().value);
  check(conf.exists(), "flexloans: setconfig first");
  return conf.get();
}

bool flexloans::valid_rate(uint16_t rate_bps) const {
  static const uint16_t buckets[] = {50, 100, 200, 400, 600, 1000};
  for (auto b : buckets) if (b == rate_bps) return true;
  return false;
}

void flexloans::require_fresh_price(const market& m) const {
  check(m.price_usd_e8 > 0, "flexloans: no price");
  uint32_t now = current_time_point().sec_since_epoch();
  check(now <= m.price_updated + PRICE_STALE_SEC, "flexloans: stale price");
}

uint64_t flexloans::icr_bps(const config& cfg, const market& m,
                            int64_t coll_amt, int64_t debt_amt) const {
  check(debt_amt > 0, "flexloans: icr debt");
  uint64_t cs = pow10u(m.coll_symbol.precision());
  uint64_t ds = pow10u(cfg.debt_symbol.precision());
  // coll_usd_e8 = coll_amt / cs * price_usd_e8
  // debt_usd_e8 = debt_amt / ds * 1e8
  __int128 coll_usd = (__int128)coll_amt * m.price_usd_e8 / cs;
  __int128 debt_usd = (__int128)debt_amt * 100000000 / ds;
  check(debt_usd > 0, "flexloans: icr");
  return (uint64_t)(coll_usd * BPS_DENOM / debt_usd);
}

uint64_t flexloans::tcr_bps(const config& cfg, const market& m) const {
  if (m.total_debt <= 0) return UINT64_MAX;
  return icr_bps(cfg, m, m.total_coll, m.total_debt);
}

void flexloans::apply_redist(position& p, const market& m) {
  if (p.stake == 0) {
    p.redist_coll_snap = m.redist_coll_x;
    p.redist_debt_snap = m.redist_debt_x;
    return;
  }
  if (m.redist_coll_x > p.redist_coll_snap) {
    int64_t add = (int64_t)(((__int128)p.stake * (m.redist_coll_x - p.redist_coll_snap)) / INDEX_SCALE);
    p.coll.amount += add;
  }
  if (m.redist_debt_x > p.redist_debt_snap) {
    int64_t add = (int64_t)(((__int128)p.stake * (m.redist_debt_x - p.redist_debt_snap)) / INDEX_SCALE);
    p.debt.amount += add;
  }
  p.redist_coll_snap = m.redist_coll_x;
  p.redist_debt_snap = m.redist_debt_x;
}

void flexloans::accrue_position(position& p, market& m, const config& cfg) {
  uint32_t now = current_time_point().sec_since_epoch();
  if (p.debt.amount <= 0 || now <= p.last_accrue) {
    p.last_accrue = now;
    return;
  }
  uint64_t dt = now - p.last_accrue;
  int64_t interest = (int64_t)(((__int128)p.debt.amount * p.rate_bps * dt)
                               / ((__int128)BPS_DENOM * SECONDS_YEAR));
  if (interest > 0) {
    p.debt.amount += interest;
    m.total_debt += interest;
    // refresh stake with debt
    // stake update done by caller after touch
    mint_interest_to_sp(m.id, asset{interest, cfg.debt_symbol});
  }
  p.last_accrue = now;
}

void flexloans::touch_position(positions_t& positions, positions_t::const_iterator it,
                               markets_t& markets, const config& cfg) {
  auto mit = markets.require_find(it->market_id, "flexloans: market");
  position p = *it;
  market m = *mit;
  uint64_t old_stake = p.stake;

  apply_redist(p, m);
  accrue_position(p, m, cfg);

  if (p.status == POS_ACTIVE || p.status == POS_ZOMBIE)
    p.stake = p.debt.amount > 0 ? (uint64_t)p.debt.amount : 0;

  markets.modify(mit, same_payer, [&](auto& r) {
    r.total_debt = m.total_debt;
    r.total_coll = m.total_coll; // redist may have increased position coll from indices only
    // When redist applies, coll/debt move from indices into position; market totals already
    // include redistributed amounts. Only adjust stake delta:
    r.total_stake = r.total_stake - old_stake + p.stake;
  });
  // Fix coll book when redist added coll to position: market.total_coll already held rem_coll
  positions.modify(it, same_payer, [&](auto& r) { r = p; });
}

void flexloans::ensure_stabpool(uint64_t market_id, const symbol& debt_sym,
                                const symbol& coll_sym) {
  stabpools_t pools(get_self(), get_self().value);
  if (pools.find(market_id) != pools.end()) return;
  pools.emplace(get_self(), [&](auto& r) {
    r.market_id = market_id;
    r.hxusd = asset{0, debt_sym};
    r.coll_balance = asset{0, coll_sym};
    r.product_p = INDEX_SCALE;
    r.coll_scale = 0;
    r.yield_scale = 0;
    r.current_epoch = 0;
  });
}

/*/ --- update_sp_deposit ---
  Classic Liquity Product-Sum (pre-compound deposit, divide by P_snap):
    compounded = deposit * P / P_snap
    coll_gain  = deposit * (S - S_snap) / P_snap
    yield_gain = deposit * (G - G_snap) / P_snap
  Cross-epoch: apply final gains against old snaps, then wipe remaining deposit.
/*/
void flexloans::update_sp_deposit(spdeposit& d, const stabpool& sp) {
  check(d.product_snap > 0, "flexloans: sp P_snap");

  if (d.hxusd.amount <= 0) {
    d.product_snap = sp.product_p;
    d.coll_snap = sp.coll_scale;
    d.yield_snap = sp.yield_scale;
    d.epoch_snap = sp.current_epoch;
    return;
  }

  const int64_t dep = d.hxusd.amount;
  const uint64_t p_snap = d.product_snap;

  if (sp.coll_scale > d.coll_snap) {
    d.pending_coll.amount +=
      (int64_t)(((__int128)dep * (sp.coll_scale - d.coll_snap)) / p_snap);
  }
  if (sp.yield_scale > d.yield_snap) {
    d.pending_yield.amount +=
      (int64_t)(((__int128)dep * (sp.yield_scale - d.yield_snap)) / p_snap);
  }

  if (d.epoch_snap != sp.current_epoch) {
    // Epoch advanced (SP emptied or P collapsed) — remaining deposit wiped
    d.hxusd.amount = 0;
  } else {
    int64_t compounded = (int64_t)(((__int128)dep * sp.product_p) / p_snap);
    if (compounded < 0) compounded = 0;
    d.hxusd.amount = compounded;
  }

  d.product_snap = sp.product_p;
  d.coll_snap = sp.coll_scale;
  d.yield_snap = sp.yield_scale;
  d.epoch_snap = sp.current_epoch;
}

void flexloans::mint_interest_to_sp(uint64_t market_id, asset interest) {
  if (interest.amount <= 0) return;
  stabpools_t pools(get_self(), get_self().value);
  auto spit = pools.require_find(market_id, "flexloans: stabpool");
  if (spit->hxusd.amount <= 0) {
    // no depositors — hold as unallocated: still issue to contract for accounting
    issue_debt(get_self(), interest, "flexloans interest hold");
    return;
  }
  // Liquity: ΔG = interest * P / totalDeposits
  uint64_t add = (uint64_t)(((__int128)interest.amount * spit->product_p) / spit->hxusd.amount);
  pools.modify(spit, same_payer, [&](auto& r) {
    r.yield_scale += add;
  });
  issue_debt(get_self(), interest, "flexloans sp yield");
  // yield sits on contract until claim moves it to users via pending_yield from scale
}

flexloans::spdeposits_t::const_iterator flexloans::require_sp(name owner, uint64_t market_id) {
  spdeposits_t deps(get_self(), get_self().value);
  auto byom = deps.get_index<"byom"_n>();
  uint128_t key = ((uint128_t)owner.value << 64) | market_id;
  auto it = byom.find(key);
  check(it != byom.end(), "flexloans: no sp deposit");
  return deps.require_find(it->id, "flexloans: spdeposit");
}

void flexloans::issue_debt(name to, asset qty, const string& memo) {
  auto cfg = check_config();
  action(
    permission_level{get_self(), "active"_n},
    cfg.debt_contract, "issue"_n,
    std::make_tuple(to, qty, memo)
  ).send();
}

void flexloans::retire_debt(asset qty, const string& memo) {
  auto cfg = check_config();
  // tokens must be on this contract (transfer-in already happened for repay/redeem)
  action(
    permission_level{get_self(), "active"_n},
    cfg.debt_contract, "retire"_n,
    std::make_tuple(qty, memo)
  ).send();
}

void flexloans::send_token(name token_contract, name to, asset qty, const string& memo) {
  action(
    permission_level{get_self(), "active"_n},
    token_contract, "transfer"_n,
    std::make_tuple(get_self(), to, qty, memo)
  ).send();
}

uint64_t flexloans::parse_u64(const string& s) {
  check(s.size() > 0, "flexloans: parse");
  uint64_t n = 0;
  for (char c : s) {
    check(c >= '0' && c <= '9', "flexloans: digit");
    n = n * 10 + (uint64_t)(c - '0');
  }
  return n;
}

void flexloans::parse_open_memo(const string& memo, uint64_t& market_id, uint16_t& rate_bps) {
  // format: marketId#rateBps
  auto hash = memo.find('#');
  check(hash != string::npos, "flexloans: open memo");
  market_id = parse_u64(memo.substr(0, hash));
  uint64_t rb = parse_u64(memo.substr(hash + 1));
  check(rb <= 65535, "flexloans: rate");
  rate_bps = (uint16_t)rb;
}
