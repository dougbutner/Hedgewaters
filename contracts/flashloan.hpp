#pragma once

/*/
  flashloan — Hedgewaters Product C (XPR flash lender)

  Same-tx flash loans from own reserves, with optional DEX conversion of
  other reserves via swap.alcor / proton.swaps before lending.

  Modes:
    reserveflash — own loan-token balance only
    convflash    — convert pay-token → loan-token, then lend
    flash        — prefer reserve; else cheapest conversion route
                   (named `flash` — action cannot match class name)

  Fee: 3 bps (0.03%); 0 bps for Flex tokens EASY/WON/MEME/GRAMS.
  Invariant: END_BALANCE >= SNAPSHOT + FEE (else whole tx reverts).
  Pattern: sx.flash + reference contracts/flash-loans/ (ERC-3156 spirit).

  Deploy: opt flash account out of Flex transfer tax (noflexzone /
  optoutoftax) or repayments will under-deliver and checkbalance fails.

  Style: ups.hpp tables + invitono.cpp sections.
  Safety: research/vaults-sx-breach.md — never balance→overwrite books.
/*/

#include <eosio/eosio.hpp>
#include <eosio/asset.hpp>
#include <eosio/singleton.hpp>
#include <eosio/system.hpp>

using namespace eosio;
using std::string;

class [[eosio::contract("flashloan")]] flashloan : public contract {
 public:
  using contract::contract;

  static constexpr uint16_t BPS_DENOM = 10000;
  static constexpr uint16_t DEFAULT_FEE_BPS = 3; // 0.03%

  static constexpr uint8_t MODE_RESERVE = 1;
  static constexpr uint8_t MODE_CONV    = 2;

  /*/ --- config --- /*/
  TABLE config {
    name     admin;
    name     alcor;       // swap.alcor
    name     swaps;       // proton.swaps
    uint16_t fee_bps;     // default 3
    bool     paused;

    EOSLIB_SERIALIZE(config, (admin)(alcor)(swaps)(fee_bps)(paused))
  };
  typedef singleton<"config"_n, config> config_t;

  /*/ --- state (one active flash) ---
    expected = loan-token balance after conversion + fee (must hold at end)
  /*/
  TABLE state {
    name         token_contract;
    asset        expected;
    uint8_t      mode;
    name         receiver;

    EOSLIB_SERIALIZE(state, (token_contract)(expected)(mode)(receiver))
  };
  typedef singleton<"state"_n, state> state_t;

  /*/ --- admin conversion routes --- /*/
  TABLE route {
    uint64_t id;
    name     loan_contract;
    symbol   loan_symbol;
    name     pay_contract;
    symbol   pay_symbol;
    name     venue;        // alcor | swaps
    string   pool_path;    // Alcor pool id(s) or MetalX LT symbol
    uint16_t est_fee_bps;
    bool     active;

    uint64_t primary_key() const { return id; }
    uint64_t by_loan() const {
      return (loan_contract.value ^ (uint64_t(loan_symbol.code().raw()) << 32));
    }
  };
  using routes_t = multi_index<"routes"_n, route,
    indexed_by<"byloan"_n, const_mem_fun<route, uint64_t, &route::by_loan>>
  >;

  /*/ --- extra zero-fee tokens (Flex four are hardcoded) --- /*/
  TABLE zerofee {
    name        token_contract;
    symbol_code sym;

    uint64_t primary_key() const { return token_contract.value; }
  };
  using zerofees_t = multi_index<"zerofee"_n, zerofee>;

  // eosio.token accounts (read balance / open check)
  struct account {
    asset balance;
    uint64_t primary_key() const { return balance.symbol.code().raw(); }
  };
  using accounts_t = multi_index<"accounts"_n, account>;

  // === Admin === //
  ACTION setconfig(name admin, name alcor, name swaps, uint16_t fee_bps);
  ACTION pause(bool paused);
  ACTION setroute(uint64_t id, name loan_contract, symbol loan_symbol,
                  name pay_contract, symbol pay_symbol,
                  name venue, string pool_path, uint16_t est_fee_bps, bool active);
  ACTION delroute(uint64_t id);
  ACTION addzerofee(name token_contract, symbol_code sym);
  ACTION delzerofee(name token_contract);
  ACTION withdraw(name token_contract, asset quantity, name to);

  // === Flash modes === //
  ACTION reserveflash(name receiver, extended_asset amount, string memo, name notifier);
  ACTION convflash(name receiver, extended_asset amount, string memo, name notifier,
                   name venue, string pool_path, extended_asset pay, asset min_out);
  ACTION flash(name receiver, extended_asset amount, string memo, name notifier,
               uint64_t route_id, name venue, string pool_path,
               extended_asset pay, asset min_out);

  // === Internal (self-auth inline) === //
  ACTION callback(name code, name receiver, extended_asset amount, asset fee,
                  string memo, name notifier);
  ACTION checkbalance(name token_contract, symbol_code symcode);
  ACTION flashlog(name receiver, extended_asset amount, asset fee, uint8_t mode);

  [[eosio::on_notify("*::transfer")]]
  void on_transfer(name from, name to, asset quantity, string memo);

 private:
  config check_config();
  asset  token_balance(name token_contract, symbol_code sym);
  void   check_open(name token_contract, name account, symbol_code sym);
  asset  calc_fee(const extended_asset& amount, const config& cfg);
  bool   is_zero_fee(name token_contract, symbol_code sym);

  void ensure_liquidity(const extended_asset& amount, name venue, string pool_path,
                        extended_asset pay, asset min_out, const config& cfg);
  void do_convert(name venue, string pool_path, extended_asset pay, asset min_out,
                  name loan_contract, const config& cfg);
  void execute_flash(name receiver, extended_asset amount, string memo, name notifier,
                     uint8_t mode, const config& cfg);

  void send_token(name token_contract, name to, asset qty, const string& memo);
  uint64_t loan_key(name loan_contract, symbol loan_symbol);
};
