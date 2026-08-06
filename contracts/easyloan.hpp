#pragma once

/*/
  easyloan — EASY Half-Loan (Hedgewaters)

  Deposit EASY@mon3y → sell 50% on Alcor for an allowlisted out-token →
  user receives out-token and owes that amount; other 50% EASY stays stacked
  (reflections via takeiteasy). Harvest swaps reflection EASY → redeemable out.
  Repay in out-token or wait for redeemable credits (negative-rate path).

  Style: ups.hpp tables + invitono.cpp section comments.
  Safety: research/vaults-sx-breach.md — never balance→overwrite accounting.
  Directive: project directive.md
/*/

#include <eosio/eosio.hpp>
#include <eosio/asset.hpp>
#include <eosio/singleton.hpp>
#include <eosio/system.hpp>

using namespace eosio;
using std::string;

class [[eosio::contract("easyloan")]] easyloan : public contract {
 public:
  using contract::contract;

  // --- Loan lifecycle --- //
  static constexpr uint8_t LOAN_PENDING = 1;  // EASY sold; waiting Alcor out fill
  static constexpr uint8_t LOAN_OPEN    = 2;
  static constexpr uint8_t LOAN_CLOSED  = 3;

  /*/ --- config ---
    sell_bps      = portion of deposit sold (5000 = 50%)
    max_pool_bps  = max sell vs Alcor pool EASY reserve (200 = 2%)
  /*/
  TABLE config {
    name   admin;
    name   easy_contract;   // mon3y
    symbol easy_symbol;     // EASY
    name   swap_contract;   // swap.alcor
    uint16_t sell_bps;
    uint16_t max_pool_bps;
    bool   paused;

    EOSLIB_SERIALIZE(config,
      (admin)(easy_contract)(easy_symbol)(swap_contract)
      (sell_bps)(max_pool_bps)(paused))
  };
  typedef singleton<"config"_n, config> config_t;

  /*/ --- vault ---
    Explicit EASY books. NEVER set from get_balance (Vaults.sx class of bug).
  /*/
  TABLE vault {
    asset easy_stacked_total;  // sum of open loan.easy_stacked
    asset reflection_pool;     // inbound EASY not tagged as loan principal
    asset pending_harvest;     // EASY in-flight to Alcor for harvest
    uint64_t next_loan_id;

    EOSLIB_SERIALIZE(vault,
      (easy_stacked_total)(reflection_pool)(pending_harvest)(next_loan_id))
  };
  typedef singleton<"vault"_n, vault> vault_t;

  /*/ --- inflight ---
    One Alcor swap at a time. loan_id=0 means harvest fill.
    Avoids mis-attributing out-token notifies (Vaults.sx-adjacent race).
  /*/
  TABLE inflight {
    bool     active;
    uint64_t loan_id;  // 0 = harvest
    uint64_t pool_id;

    EOSLIB_SERIALIZE(inflight, (active)(loan_id)(pool_id))
  };
  typedef singleton<"inflight"_n, inflight> inflight_t;

  // --- Allowlisted Alcor pool (EASY ↔ out) --- //
  TABLE market {
    uint64_t pool_id;
    name     out_contract;
    symbol   out_symbol;
    bool     active;

    uint64_t primary_key() const { return pool_id; }
  };
  using markets_t = multi_index<"markets"_n, market>;

  TABLE loan {
    uint64_t id;
    name     owner;
    uint64_t pool_id;
    asset    easy_stacked;     // EASY we owe the user
    asset    debt_out;         // out-token user owes us (set on Alcor fill)
    asset    redeemable_out;   // reflection credits in out-token
    uint8_t  status;
    uint32_t opened;

    uint64_t primary_key() const { return id; }
    uint64_t by_owner() const { return owner.value; }
    uint64_t by_pool() const { return pool_id; }
  };
  using loans_t = multi_index<"loans"_n, loan,
    indexed_by<"byowner"_n, const_mem_fun<loan, uint64_t, &loan::by_owner>>,
    indexed_by<"bypool"_n, const_mem_fun<loan, uint64_t, &loan::by_pool>>
  >;

  // --- Minimal Alcor pools row (read-only) --- //
  struct currslot {
    uint128_t sqrtPriceX64;
    int32_t   tick;
    uint32_t  lastObservationTimestamp;
    uint32_t  currentObservationNum;
    uint32_t  maxObservationNum;
  };
  TABLE alcorpool {
    uint64_t id;
    bool active;
    extended_asset tokenA;
    extended_asset tokenB;
    uint32_t fee;
    uint8_t  feeProtocol;
    int32_t  tickSpacing;
    uint64_t maxLiquidityPerTick;
    currslot currSlot;
    uint128_t feeGrowthGlobalAX64;
    uint128_t feeGrowthGlobalBX64;
    asset protocolFeeA;
    asset protocolFeeB;
    uint64_t liquidity;

    uint64_t primary_key() const { return id; }
  };
  using alcorpools_t = multi_index<"pools"_n, alcorpool>;

  // === Actions === //
  ACTION setconfig(name admin, name easy_contract, symbol easy_symbol,
                   name swap_contract, uint16_t sell_bps, uint16_t max_pool_bps);
  ACTION addmarket(uint64_t pool_id, name out_contract, symbol out_symbol);
  ACTION setmarket(uint64_t pool_id, bool active);
  ACTION pause(bool paused);
  ACTION harvest(uint64_t pool_id, asset easy_amount, asset min_out);
  ACTION applycredit(uint64_t loan_id);
  ACTION withdraw(uint64_t loan_id);

  [[eosio::on_notify("*::transfer")]]
  void on_transfer(name from, name to, asset quantity, string memo);

 private:
  config check_config();
  vault  get_vault(const symbol& easy_sym);
  void   set_vault(const vault& v);

  int64_t pool_easy_reserve(uint64_t pool_id, const config& cfg);
  void    open_loan(name from, asset quantity, uint64_t pool_id, const config& cfg);
  void    handle_alcor_fill(name from, asset quantity, const config& cfg);
  void    handle_repay(name from, asset quantity, uint64_t loan_id, const config& cfg);
  void    handle_reflection(asset quantity, const config& cfg);
  void    credit_harvest(asset out_qty, uint64_t pool_id);

  void send_token(name token_contract, name to, asset qty, const string& memo);
  void swap_easy(const config& cfg, uint64_t pool_id, asset easy_in,
                 name recipient, asset min_out, name out_contract);
  void set_inflight(uint64_t loan_id, uint64_t pool_id);
  void clear_inflight();
  uint64_t parse_u64(const string& s);
};
