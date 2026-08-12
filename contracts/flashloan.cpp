#include "flashloan.hpp"

//contractName:flashloan

/*/ --- Admin --- /*/

ACTION flashloan::setconfig(name admin, name alcor, name swaps, uint16_t fee_bps) {
  require_auth(get_self());
  check(is_account(admin), "flashloan: bad admin");
  check(is_account(alcor), "flashloan: bad alcor");
  check(is_account(swaps), "flashloan: bad swaps");
  check(fee_bps <= 100, "flashloan: fee_bps");

  config_t conf(get_self(), get_self().value);
  conf.set(config{
    .admin = admin,
    .alcor = alcor,
    .swaps = swaps,
    .fee_bps = fee_bps,
    .paused = false
  }, get_self());
}

ACTION flashloan::pause(bool paused) {
  auto cfg = check_config();
  require_auth(cfg.admin);
  config_t conf(get_self(), get_self().value);
  cfg.paused = paused;
  conf.set(cfg, get_self());
}

ACTION flashloan::setroute(uint64_t id, name loan_contract, symbol loan_symbol,
                           name pay_contract, symbol pay_symbol,
                           name venue, string pool_path, uint16_t est_fee_bps, bool active) {
  auto cfg = check_config();
  require_auth(cfg.admin);
  check(is_account(loan_contract) && is_account(pay_contract), "flashloan: token");
  check(loan_symbol.is_valid() && pay_symbol.is_valid(), "flashloan: symbol");
  check(venue == "alcor"_n || venue == "swaps"_n, "flashloan: venue");
  check(pool_path.size() > 0, "flashloan: pool_path");
  check(est_fee_bps <= 1000, "flashloan: est_fee");

  routes_t routes(get_self(), get_self().value);
  auto it = routes.find(id);
  if (it == routes.end()) {
    routes.emplace(get_self(), [&](auto& r) {
      r.id = id;
      r.loan_contract = loan_contract;
      r.loan_symbol = loan_symbol;
      r.pay_contract = pay_contract;
      r.pay_symbol = pay_symbol;
      r.venue = venue;
      r.pool_path = pool_path;
      r.est_fee_bps = est_fee_bps;
      r.active = active;
    });
  } else {
    routes.modify(it, same_payer, [&](auto& r) {
      r.loan_contract = loan_contract;
      r.loan_symbol = loan_symbol;
      r.pay_contract = pay_contract;
      r.pay_symbol = pay_symbol;
      r.venue = venue;
      r.pool_path = pool_path;
      r.est_fee_bps = est_fee_bps;
      r.active = active;
    });
  }
}

ACTION flashloan::delroute(uint64_t id) {
  auto cfg = check_config();
  require_auth(cfg.admin);
  routes_t routes(get_self(), get_self().value);
  auto it = routes.require_find(id, "flashloan: route");
  routes.erase(it);
}

ACTION flashloan::addzerofee(name token_contract, symbol_code sym) {
  auto cfg = check_config();
  require_auth(cfg.admin);
  check(is_account(token_contract), "flashloan: token");
  check(sym.is_valid(), "flashloan: sym");
  zerofees_t z(get_self(), get_self().value);
  auto it = z.find(token_contract.value);
  if (it == z.end()) {
    z.emplace(get_self(), [&](auto& r) {
      r.token_contract = token_contract;
      r.sym = sym;
    });
  } else {
    z.modify(it, same_payer, [&](auto& r) { r.sym = sym; });
  }
}

ACTION flashloan::delzerofee(name token_contract) {
  auto cfg = check_config();
  require_auth(cfg.admin);
  zerofees_t z(get_self(), get_self().value);
  auto it = z.require_find(token_contract.value, "flashloan: zerofee");
  z.erase(it);
}

ACTION flashloan::withdraw(name token_contract, asset quantity, name to) {
  auto cfg = check_config();
  require_auth(cfg.admin);
  check(!cfg.paused, "flashloan: paused");
  state_t st(get_self(), get_self().value);
  check(!st.exists(), "flashloan: flash active");
  check(is_account(to), "flashloan: to");
  check(quantity.amount > 0, "flashloan: amount");
  check_open(token_contract, get_self(), quantity.symbol.code());
  auto bal = token_balance(token_contract, quantity.symbol.code());
  check(bal.amount >= quantity.amount, "flashloan: balance");
  send_token(token_contract, to, quantity, "flashloan withdraw");
}

/*/ --- Flash modes --- /*/

ACTION flashloan::reserveflash(name receiver, extended_asset amount, string memo, name notifier) {
  auto cfg = check_config();
  check(!cfg.paused, "flashloan: paused");
  check(is_account(receiver), "flashloan: receiver");
  check(amount.quantity.amount > 0, "flashloan: amount");

  auto fee = calc_fee(amount, cfg);
  check_open(amount.contract, get_self(), amount.quantity.symbol.code());
  auto bal = token_balance(amount.contract, amount.quantity.symbol.code());
  check(bal.amount >= amount.quantity.amount + fee.amount, "flashloan: reserve short");

  execute_flash(receiver, amount, memo, notifier, MODE_RESERVE, cfg);
}//END reserveflash

ACTION flashloan::convflash(name receiver, extended_asset amount, string memo, name notifier,
                            name venue, string pool_path, extended_asset pay, asset min_out) {
  auto cfg = check_config();
  check(!cfg.paused, "flashloan: paused");
  check(is_account(receiver), "flashloan: receiver");
  check(amount.quantity.amount > 0, "flashloan: amount");
  check(pay.quantity.amount > 0, "flashloan: pay");
  check(min_out.symbol == amount.quantity.symbol, "flashloan: min_out symbol");
  check(min_out.amount > 0, "flashloan: min_out");

  ensure_liquidity(amount, venue, pool_path, pay, min_out, cfg);
  execute_flash(receiver, amount, memo, notifier, MODE_CONV, cfg);
}//END convflash

ACTION flashloan::flash(name receiver, extended_asset amount, string memo, name notifier,
                        uint64_t route_id, name venue, string pool_path,
                        extended_asset pay, asset min_out) {
  auto cfg = check_config();
  check(!cfg.paused, "flashloan: paused");
  check(is_account(receiver), "flashloan: receiver");
  check(amount.quantity.amount > 0, "flashloan: amount");

  auto fee = calc_fee(amount, cfg);
  check_open(amount.contract, get_self(), amount.quantity.symbol.code());
  auto bal = token_balance(amount.contract, amount.quantity.symbol.code());

  // Prefer reserve (cheapest: no DEX cost)
  if (bal.amount >= amount.quantity.amount + fee.amount) {
    execute_flash(receiver, amount, memo, notifier, MODE_RESERVE, cfg);
    return;
  }

  // Conversion path — auto-fill venue/path from cheapest route when needed
  name use_venue = venue;
  string use_path = pool_path;
  extended_asset use_pay = pay;
  asset use_min = min_out;
  name expect_pay_contract;
  symbol expect_pay_symbol;

  if (route_id != 0) {
    routes_t routes(get_self(), get_self().value);
    auto it = routes.require_find(route_id, "flashloan: route");
    check(it->active, "flashloan: route off");
    check(it->loan_contract == amount.contract
          && it->loan_symbol == amount.quantity.symbol, "flashloan: route asset");
    use_venue = it->venue;
    use_path = it->pool_path;
    expect_pay_contract = it->pay_contract;
    expect_pay_symbol = it->pay_symbol;
  } else if (use_path.size() == 0 || use_venue.value == 0) {
    routes_t routes(get_self(), get_self().value);
    auto byloan = routes.get_index<"byloan"_n>();
    uint64_t key = loan_key(amount.contract, amount.quantity.symbol);
    uint16_t best_bps = 65535;
    bool found = false;
    route best;
    for (auto it = byloan.lower_bound(key); it != byloan.end() && it->by_loan() == key; ++it) {
      if (!it->active) continue;
      if (it->est_fee_bps < best_bps) {
        best_bps = it->est_fee_bps;
        best = *it;
        found = true;
      }
    }
    check(found, "flashloan: no route");
    use_venue = best.venue;
    use_path = best.pool_path;
    expect_pay_contract = best.pay_contract;
    expect_pay_symbol = best.pay_symbol;
  }

  check(use_pay.quantity.amount > 0, "flashloan: pass pay for conversion");
  if (expect_pay_contract.value) {
    check(use_pay.contract == expect_pay_contract
          && use_pay.quantity.symbol == expect_pay_symbol, "flashloan: pay mismatch");
  }
  check(use_venue == "alcor"_n || use_venue == "swaps"_n, "flashloan: venue");
  check(use_path.size() > 0, "flashloan: pool_path");

  if (use_min.amount == 0) {
    int64_t need = amount.quantity.amount - bal.amount;
    if (need < 1) need = amount.quantity.amount;
    use_min = asset{need, amount.quantity.symbol};
  }
  check(use_min.symbol == amount.quantity.symbol, "flashloan: min_out symbol");

  ensure_liquidity(amount, use_venue, use_path, use_pay, use_min, cfg);
  execute_flash(receiver, amount, memo, notifier, MODE_CONV, cfg);
}//END flash

/*/ --- Internal inline actions --- /*/

ACTION flashloan::callback(name code, name receiver, extended_asset amount, asset fee,
                           string memo, name notifier) {
  require_auth(get_self());
  check(code == get_self(), "flashloan: code");
  check(is_account(notifier), "flashloan: notifier");
  require_recipient(notifier);
}

ACTION flashloan::checkbalance(name token_contract, symbol_code symcode) {
  require_auth(get_self());
  state_t st(get_self(), get_self().value);
  check(st.exists(), "flashloan: no state");
  auto s = st.get();
  check(s.token_contract == token_contract, "flashloan: token");
  check(s.expected.symbol.code() == symcode, "flashloan: sym");

  auto bal = token_balance(token_contract, symcode);
  check(bal.amount >= s.expected.amount,
        "flashloan: not repaid before end of transaction");
  st.remove();
}

ACTION flashloan::flashlog(name receiver, extended_asset amount, asset fee, uint8_t mode) {
  require_auth(get_self());
  (void)receiver;
  (void)amount;
  (void)fee;
  (void)mode;
}

[[eosio::on_notify("*::transfer")]]
void flashloan::on_transfer(name from, name to, asset quantity, string memo) {
  (void)memo;
  (void)quantity;
  if (to != get_self() || from == get_self()) return;
  if (from == "eosio"_n || from == "eosio.ram"_n) return;

  state_t st(get_self(), get_self().value);
  if (!st.exists()) return; // funding deposits ok when idle

  // Mid-flash: only loan-token repayments allowed (ignore DEX change refunds carefully)
  auto s = st.get();
  name token = get_first_receiver();
  if (token != s.token_contract) {
    // Alcor may refund unused pay-token; allow any inbound while flash active
    // except we never rewrite books from balances.
    return;
  }
}

/*/ --- Private --- /*/

flashloan::config flashloan::check_config() {
  config_t conf(get_self(), get_self().value);
  check(conf.exists(), "flashloan: setconfig first");
  return conf.get();
}

asset flashloan::token_balance(name token_contract, symbol_code sym) {
  accounts_t accounts(token_contract, get_self().value);
  auto it = accounts.find(sym.raw());
  if (it == accounts.end()) return asset{0, symbol{sym, 0}};
  return it->balance;
}

void flashloan::check_open(name token_contract, name account, symbol_code sym) {
  accounts_t accounts(token_contract, account.value);
  auto it = accounts.find(sym.raw());
  check(it != accounts.end(), "flashloan: open balance required");
}

asset flashloan::calc_fee(const extended_asset& amount, const config& cfg) {
  if (is_zero_fee(amount.contract, amount.quantity.symbol.code()))
    return asset{0, amount.quantity.symbol};
  int64_t fee = (int64_t)(((__int128)amount.quantity.amount * cfg.fee_bps) / BPS_DENOM);
  return asset{fee, amount.quantity.symbol};
}

bool flashloan::is_zero_fee(name token_contract, symbol_code sym) {
  if (token_contract == "mon3y"_n && sym == symbol_code("EASY")) return true;
  if (token_contract == "w3won"_n && sym == symbol_code("WON")) return true;
  if (token_contract == "m3m3"_n && sym == symbol_code("MEME")) return true;
  if (token_contract == "gold.mon3y"_n && sym == symbol_code("GRAMS")) return true;

  zerofees_t z(get_self(), get_self().value);
  auto it = z.find(token_contract.value);
  return it != z.end() && it->sym == sym;
}

void flashloan::ensure_liquidity(const extended_asset& amount, name venue, string pool_path,
                                 extended_asset pay, asset min_out, const config& cfg) {
  auto bal = token_balance(amount.contract, amount.quantity.symbol.code());
  if (bal.amount >= amount.quantity.amount) return;

  check(pay.quantity.amount > 0, "flashloan: need pay");
  check(pool_path.size() > 0, "flashloan: pool_path");
  check(venue == "alcor"_n || venue == "swaps"_n, "flashloan: venue");

  int64_t need = amount.quantity.amount - bal.amount;
  asset want = min_out;
  if (want.amount < need)
    want = asset{need, amount.quantity.symbol};

  do_convert(venue, pool_path, pay, want, amount.contract, cfg);

  bal = token_balance(amount.contract, amount.quantity.symbol.code());
  check(bal.amount >= amount.quantity.amount, "flashloan: conversion short");
}

void flashloan::do_convert(name venue, string pool_path, extended_asset pay, asset min_out,
                           name loan_contract, const config& cfg) {
  check_open(pay.contract, get_self(), pay.quantity.symbol.code());
  auto pay_bal = token_balance(pay.contract, pay.quantity.symbol.code());
  check(pay_bal.amount >= pay.quantity.amount, "flashloan: pay balance");

  if (venue == "alcor"_n) {
    // Prefer exact-out so we pull precisely the shortfall (change returned).
    string memo = "swapexactout#" + pool_path + "#" + get_self().to_string()
                + "#" + min_out.to_string() + "@" + loan_contract.to_string() + "#0";
    send_token(pay.contract, cfg.alcor, pay.quantity, memo);
  } else {
    // proton.swaps: POOL_LT,minOutAmount
    string memo = pool_path + "," + std::to_string(min_out.amount);
    send_token(pay.contract, cfg.swaps, pay.quantity, memo);
  }
}

void flashloan::execute_flash(name receiver, extended_asset amount, string memo, name notifier,
                              uint8_t mode, const config& cfg) {
  (void)cfg;
  state_t st(get_self(), get_self().value);
  check(!st.exists(), "flashloan: flash active");

  check_open(amount.contract, get_self(), amount.quantity.symbol.code());
  check_open(amount.contract, receiver, amount.quantity.symbol.code());

  auto fee = calc_fee(amount, check_config());
  auto bal = token_balance(amount.contract, amount.quantity.symbol.code());
  // sx.flash: balance - fee >= amount  ⇒  balance >= amount + fee cushion
  check(bal.amount >= amount.quantity.amount + fee.amount, "flashloan: liquidity");
  asset expected = asset{bal.amount + fee.amount, amount.quantity.symbol};

  st.set(state{
    .token_contract = amount.contract,
    .expected = expected,
    .mode = mode,
    .receiver = receiver
  }, get_self());

  send_token(amount.contract, receiver, amount.quantity, memo.size() ? memo : string("flashloan"));

  if (notifier.value) {
    action(
      permission_level{get_self(), "active"_n},
      get_self(), "callback"_n,
      std::make_tuple(get_self(), receiver, amount, fee, memo, notifier)
    ).send();
  }

  action(
    permission_level{get_self(), "active"_n},
    get_self(), "checkbalance"_n,
    std::make_tuple(amount.contract, amount.quantity.symbol.code())
  ).send();

  action(
    permission_level{get_self(), "active"_n},
    get_self(), "flashlog"_n,
    std::make_tuple(receiver, amount, fee, mode)
  ).send();
}

void flashloan::send_token(name token_contract, name to, asset qty, const string& memo) {
  action(
    permission_level{get_self(), "active"_n},
    token_contract, "transfer"_n,
    std::make_tuple(get_self(), to, qty, memo)
  ).send();
}

uint64_t flashloan::loan_key(name loan_contract, symbol loan_symbol) {
  return loan_contract.value ^ (uint64_t(loan_symbol.code().raw()) << 32);
}
