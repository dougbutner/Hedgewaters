#include "easyloan.hpp"

//contractName:easyloan

// === Set Config === //
ACTION easyloan::setconfig(name admin, name easy_contract, symbol easy_symbol,
                           name swap_contract, uint16_t sell_bps, uint16_t max_pool_bps) {
  config_t conf(get_self(), get_self().value);
  if (!conf.exists()) {
    require_auth(get_self());
  } else {
    require_auth(conf.get().admin);
  }

  check(is_account(admin), "easyloan: bad admin");
  check(is_account(easy_contract), "easyloan: bad easy contract");
  check(is_account(swap_contract), "easyloan: bad swap");
  check(easy_symbol.is_valid(), "easyloan: bad symbol");
  check(sell_bps > 0 && sell_bps < 10000, "easyloan: sell_bps");
  check(max_pool_bps > 0 && max_pool_bps <= 1000, "easyloan: max_pool_bps");

  conf.set(config{
    .admin = admin,
    .easy_contract = easy_contract,
    .easy_symbol = easy_symbol,
    .swap_contract = swap_contract,
    .sell_bps = sell_bps,
    .max_pool_bps = max_pool_bps,
    .paused = false
  }, get_self());

  vault_t vlt(get_self(), get_self().value);
  if (!vlt.exists()) {
    vlt.set(vault{
      .easy_stacked_total = asset{0, easy_symbol},
      .reflection_pool = asset{0, easy_symbol},
      .pending_harvest = asset{0, easy_symbol},
      .next_loan_id = 1
    }, get_self());
  }
}//END setconfig

ACTION easyloan::addmarket(uint64_t pool_id, name out_contract, symbol out_symbol) {
  auto cfg = check_config();
  require_auth(cfg.admin);
  check(is_account(out_contract), "easyloan: out contract");
  check(out_symbol.is_valid(), "easyloan: out symbol");
  check(pool_easy_reserve(pool_id, cfg) > 0, "easyloan: pool has no EASY");

  markets_t markets(get_self(), get_self().value);
  auto mit = markets.find(pool_id);
  if (mit == markets.end()) {
    markets.emplace(get_self(), [&](auto& r) {
      r.pool_id = pool_id;
      r.out_contract = out_contract;
      r.out_symbol = out_symbol;
      r.active = true;
    });
  } else {
    markets.modify(mit, same_payer, [&](auto& r) {
      r.out_contract = out_contract;
      r.out_symbol = out_symbol;
      r.active = true;
    });
  }
}//END addmarket

ACTION easyloan::setmarket(uint64_t pool_id, bool active) {
  require_auth(check_config().admin);
  markets_t markets(get_self(), get_self().value);
  auto it = markets.require_find(pool_id, "easyloan: market");
  markets.modify(it, same_payer, [&](auto& r) { r.active = active; });
}//END setmarket

ACTION easyloan::pause(bool paused) {
  config_t conf(get_self(), get_self().value);
  auto cfg = conf.get();
  require_auth(cfg.admin);
  cfg.paused = paused;
  conf.set(cfg, get_self());
}//END pause

// === Harvest: reflection EASY → Alcor → redeemable out === //
ACTION easyloan::harvest(uint64_t pool_id, asset easy_amount, asset min_out) {
  auto cfg = check_config();
  require_auth(cfg.admin);

  inflight_t inf(get_self(), get_self().value);
  check(!inf.exists() || !inf.get().active, "easyloan: swap in flight");

  markets_t markets(get_self(), get_self().value);
  auto m = markets.require_find(pool_id, "easyloan: market");
  check(m->active, "easyloan: market off");
  check(easy_amount.symbol == cfg.easy_symbol && easy_amount.amount > 0, "easyloan: amount");
  check(min_out.symbol == m->out_symbol, "easyloan: min_out symbol");

  auto v = get_vault(cfg.easy_symbol);
  check(v.reflection_pool.amount >= easy_amount.amount, "easyloan: reflection short");
  check(easy_amount.amount <= pool_easy_reserve(pool_id, cfg) * cfg.max_pool_bps / 10000,
        "easyloan: exceeds 2% pool EASY");

  v.reflection_pool -= easy_amount;
  v.pending_harvest += easy_amount;
  set_vault(v);

  set_inflight(0, pool_id); // loan_id 0 = harvest
  swap_easy(cfg, pool_id, easy_amount, get_self(), min_out, m->out_contract);
}//END harvest

ACTION easyloan::applycredit(uint64_t loan_id) {
  loans_t loans(get_self(), get_self().value);
  auto it = loans.require_find(loan_id, "easyloan: loan");
  require_auth(it->owner);
  check(it->status == LOAN_OPEN, "easyloan: not open");
  check(it->redeemable_out.amount > 0, "easyloan: no credit");

  asset apply = it->redeemable_out;
  if (apply.amount > it->debt_out.amount) apply.amount = it->debt_out.amount;

  loans.modify(it, same_payer, [&](auto& r) {
    r.debt_out -= apply;
    r.redeemable_out -= apply;
  });
}//END applycredit

ACTION easyloan::withdraw(uint64_t loan_id) {
  auto cfg = check_config();
  loans_t loans(get_self(), get_self().value);
  auto it = loans.require_find(loan_id, "easyloan: loan");
  require_auth(it->owner);
  check(it->status == LOAN_OPEN, "easyloan: not open");
  check(it->debt_out.amount == 0, "easyloan: debt remains");
  check(it->easy_stacked.amount > 0, "easyloan: empty");

  asset pay = it->easy_stacked;
  auto v = get_vault(cfg.easy_symbol);
  check(v.easy_stacked_total.amount >= pay.amount, "easyloan: vault");
  v.easy_stacked_total -= pay;
  set_vault(v);

  loans.modify(it, same_payer, [&](auto& r) {
    r.easy_stacked.amount = 0;
    r.status = LOAN_CLOSED;
  });

  send_token(cfg.easy_contract, it->owner, pay, "easyloan withdraw");
}//END withdraw

void easyloan::on_transfer(name from, name to, asset quantity, string memo) {
  if (to != get_self() || from == get_self()) return;

  auto cfg = check_config();

  if (get_first_receiver() == cfg.easy_contract && quantity.symbol == cfg.easy_symbol) {
    if (memo.size() >= 5 && memo.substr(0, 5) == "loan#") {
      open_loan(from, quantity, parse_u64(memo.substr(5)), cfg);
      return;
    }
    handle_reflection(quantity, cfg);
    return;
  }

  if (memo.size() >= 6 && memo.substr(0, 6) == "repay#") {
    handle_repay(from, quantity, parse_u64(memo.substr(6)), cfg);
    return;
  }

  handle_alcor_fill(from, quantity, cfg);
}//END on_transfer

void easyloan::open_loan(name from, asset quantity, uint64_t pool_id, const config& cfg) {
  check(!cfg.paused, "easyloan: paused");
  check(quantity.amount > 1, "easyloan: dust");

  inflight_t inf(get_self(), get_self().value);
  check(!inf.exists() || !inf.get().active, "easyloan: swap in flight");

  markets_t markets(get_self(), get_self().value);
  auto m = markets.require_find(pool_id, "easyloan: market");
  check(m->active, "easyloan: market off");

  int64_t sell_amt = quantity.amount * cfg.sell_bps / 10000;
  int64_t keep_amt = quantity.amount - sell_amt;
  check(sell_amt > 0 && keep_amt > 0, "easyloan: split");

  int64_t reserve = pool_easy_reserve(pool_id, cfg);
  check(sell_amt <= reserve * cfg.max_pool_bps / 10000, "easyloan: >2% pool EASY");

  asset sell{sell_amt, cfg.easy_symbol};
  asset keep{keep_amt, cfg.easy_symbol};
  asset zero_out{0, m->out_symbol};

  auto v = get_vault(cfg.easy_symbol);
  uint64_t id = v.next_loan_id++;
  v.easy_stacked_total += keep;
  set_vault(v);

  loans_t loans(get_self(), get_self().value);
  loans.emplace(get_self(), [&](auto& r) {
    r.id = id;
    r.owner = from;
    r.pool_id = pool_id;
    r.easy_stacked = keep;
    r.debt_out = zero_out;
    r.redeemable_out = zero_out;
    r.status = LOAN_PENDING;
    r.opened = current_time_point().sec_since_epoch();
  });

  set_inflight(id, pool_id);
  asset min_out{1, m->out_symbol};
  swap_easy(cfg, pool_id, sell, get_self(), min_out, m->out_contract);
}//END open_loan

void easyloan::handle_alcor_fill(name from, asset quantity, const config& cfg) {
  inflight_t inf(get_self(), get_self().value);
  if (!inf.exists() || !inf.get().active) return;

  auto flight = inf.get();
  markets_t markets(get_self(), get_self().value);
  auto m = markets.require_find(flight.pool_id, "easyloan: market");
  check(get_first_receiver() == m->out_contract, "easyloan: unexpected token");
  check(quantity.symbol == m->out_symbol, "easyloan: unexpected symbol");
  check(quantity.amount > 0, "easyloan: fill dust");

  if (flight.loan_id == 0) {
    // Harvest path
    auto v = get_vault(cfg.easy_symbol);
    v.pending_harvest.amount = 0;
    set_vault(v);
    credit_harvest(quantity, flight.pool_id);
    clear_inflight();
    return;
  }

  loans_t loans(get_self(), get_self().value);
  auto it = loans.require_find(flight.loan_id, "easyloan: loan");
  check(it->status == LOAN_PENDING, "easyloan: not pending");

  name owner = it->owner;
  loans.modify(it, same_payer, [&](auto& r) {
    r.debt_out = quantity;
    r.status = LOAN_OPEN;
  });
  clear_inflight();

  send_token(m->out_contract, owner, quantity, "easyloan payout");
}//END handle_alcor_fill

void easyloan::handle_repay(name from, asset quantity, uint64_t loan_id, const config& cfg) {
  loans_t loans(get_self(), get_self().value);
  auto it = loans.require_find(loan_id, "easyloan: loan");
  check(it->owner == from, "easyloan: not owner");
  check(it->status == LOAN_OPEN, "easyloan: not open");
  check(quantity.symbol == it->debt_out.symbol, "easyloan: wrong token");

  markets_t markets(get_self(), get_self().value);
  auto m = markets.require_find(it->pool_id, "easyloan: market");
  check(get_first_receiver() == m->out_contract, "easyloan: bad token contract");
  check(quantity.amount > 0 && quantity.amount <= it->debt_out.amount, "easyloan: amount");

  loans.modify(it, same_payer, [&](auto& r) {
    r.debt_out -= quantity;
  });
}//END handle_repay

void easyloan::handle_reflection(asset quantity, const config& cfg) {
  auto v = get_vault(cfg.easy_symbol);
  v.reflection_pool += quantity;
  set_vault(v);
}//END handle_reflection

void easyloan::credit_harvest(asset out_qty, uint64_t pool_id) {
  loans_t loans(get_self(), get_self().value);
  auto bypool = loans.get_index<"bypool"_n>();

  int64_t total_stacked = 0;
  std::vector<uint64_t> ids;
  for (auto itr = bypool.lower_bound(pool_id);
       itr != bypool.end() && itr->pool_id == pool_id; ++itr) {
    if (itr->status != LOAN_OPEN) continue;
    total_stacked += itr->easy_stacked.amount;
    ids.push_back(itr->id);
  }
  check(total_stacked > 0, "easyloan: no open stacked");

  int64_t distributed = 0;
  for (size_t i = 0; i < ids.size(); ++i) {
    auto it = loans.require_find(ids[i], "easyloan: loan");
    int64_t share = (int64_t)(((__int128)out_qty.amount * it->easy_stacked.amount) / total_stacked);
    if (i + 1 == ids.size()) share = out_qty.amount - distributed; // remainder
    distributed += share;
    loans.modify(it, same_payer, [&](auto& r) {
      r.redeemable_out.amount += share;
    });
  }
}//END credit_harvest

easyloan::config easyloan::check_config() {
  config_t conf(get_self(), get_self().value);
  check(conf.exists(), "easyloan: setconfig first");
  return conf.get();
}

easyloan::vault easyloan::get_vault(const symbol& easy_sym) {
  vault_t vlt(get_self(), get_self().value);
  check(vlt.exists(), "easyloan: vault missing");
  return vlt.get();
}

void easyloan::set_vault(const vault& v) {
  vault_t(get_self(), get_self().value).set(v, get_self());
}

void easyloan::set_inflight(uint64_t loan_id, uint64_t pool_id) {
  inflight_t(get_self(), get_self().value).set(
    inflight{.active = true, .loan_id = loan_id, .pool_id = pool_id}, get_self());
}

void easyloan::clear_inflight() {
  inflight_t(get_self(), get_self().value).set(
    inflight{.active = false, .loan_id = 0, .pool_id = 0}, get_self());
}

int64_t easyloan::pool_easy_reserve(uint64_t pool_id, const config& cfg) {
  alcorpools_t pools(cfg.swap_contract, cfg.swap_contract.value);
  auto pit = pools.require_find(pool_id, "easyloan: alcor pool");
  check(pit->active, "easyloan: pool inactive");

  if (pit->tokenA.quantity.symbol == cfg.easy_symbol
      && pit->tokenA.contract == cfg.easy_contract)
    return pit->tokenA.quantity.amount;
  if (pit->tokenB.quantity.symbol == cfg.easy_symbol
      && pit->tokenB.contract == cfg.easy_contract)
    return pit->tokenB.quantity.amount;

  check(false, "easyloan: EASY not in pool");
  return 0;
}

void easyloan::send_token(name token_contract, name to, asset qty, const string& memo) {
  action(
    permission_level{get_self(), "active"_n},
    token_contract, "transfer"_n,
    std::make_tuple(get_self(), to, qty, memo)
  ).send();
}

void easyloan::swap_easy(const config& cfg, uint64_t pool_id, asset easy_in,
                         name recipient, asset min_out, name out_contract) {
  string memo = "swapexactin#" + std::to_string(pool_id) + "#" + recipient.to_string()
              + "#" + min_out.to_string() + "@" + out_contract.to_string() + "#0";
  send_token(cfg.easy_contract, cfg.swap_contract, easy_in, memo);
}

uint64_t easyloan::parse_u64(const string& s) {
  check(s.size() > 0, "easyloan: parse");
  uint64_t n = 0;
  for (char c : s) {
    check(c >= '0' && c <= '9', "easyloan: digit");
    n = n * 10 + (uint64_t)(c - '0');
  }
  return n;
}
