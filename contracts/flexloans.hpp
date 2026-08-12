#pragma once

/*/
  flexloans — Hedge CDP (Liquity financial core on Antelope)

  Multi-collateral CDP: deposit allowlisted coll → mint HEDGE at a rate
  bucket → Stability Pool earns interest + liquidation coll → redeem peg.

  Plan (this contract):
    1. markets + oracle price (stale/zero reject)
    2. positions: open / add-withdraw coll / borrow / repay / close
    3. rate buckets (50/100/200/400/600/1000 bps) + accrue on touch
    4. interest → SP (100%); upfront borrow fee
    5. SP provide / withdraw / claim (index math)
    6. liquidate ICR < MCR → SP offset → redistribution indices
    7. surplus claim; redeem lowest-rate first + zombies
    8. MCR / CCR borrow gates

  Skip: delegation, NFT, SP stash, gas pools, continuous SortedTroves,
        PIL/gov, zappers, separate pool contracts.

  SP math (Liquity Product-Sum):
    ΔS = coll * P / totalDeposits;  ΔG = interest * P / totalDeposits
    compounded = deposit * P / P_snap
    coll_gain  = deposit * (S - S_snap) / P_snap
    yield_gain = deposit * (G - G_snap) / P_snap
  When P would collapse (empty SP or P < P_MIN), bump current_epoch and
  reset P to INDEX_SCALE so product never sticks at 1.

  Redistribution is debt-weighted (stake = debt). That diverges from Liquity
  V1 coll-weighted redist; ICR ordering under sequential liqs is not proven.

  HEDGE = external eosio.token (precision 6: 6,HEDGE); flexloans is issuer (issue/retire).
  Style: ups.hpp tables + invitono.cpp sections.
  Safety: research/vaults-sx-breach.md — never balance→overwrite accounting.
/*/

#include <eosio/eosio.hpp>
#include <eosio/asset.hpp>
#include <eosio/singleton.hpp>
#include <eosio/system.hpp>

using namespace eosio;
using std::string;

class [[eosio::contract("flexloans")]] flexloans : public contract {
 public:
  using contract::contract;

  static constexpr uint8_t POS_ACTIVE = 1;
  static constexpr uint8_t POS_ZOMBIE = 2;
  static constexpr uint8_t POS_CLOSED = 3;

  static constexpr uint64_t INDEX_SCALE = 1'000'000'000'000ull; // 1e12
  static constexpr uint64_t P_MIN = INDEX_SCALE / 1'000'000ull;   // 1e6 — epoch if P would fall below
  static constexpr uint32_t SECONDS_YEAR = 365 * 24 * 3600;
  static constexpr uint32_t PRICE_STALE_SEC = 3600;
  static constexpr uint16_t BPS_DENOM = 10000;

  /*/ --- config --- /*/
  TABLE config {
    name     admin;
    name     debt_contract;
    symbol   debt_symbol;
    asset    min_debt;
    uint16_t borrow_fee_bps;
    uint16_t redeem_fee_floor_bps;
    uint16_t redeem_fee_max_bps;
    bool     paused;
    uint64_t next_pos_id;
    uint64_t next_seq;
    uint64_t next_sp_id;

    EOSLIB_SERIALIZE(config,
      (admin)(debt_contract)(debt_symbol)(min_debt)
      (borrow_fee_bps)(redeem_fee_floor_bps)(redeem_fee_max_bps)
      (paused)(next_pos_id)(next_seq)(next_sp_id))
  };
  typedef singleton<"config"_n, config> config_t;

  /*/ --- market (isolated branch) ---
    price_usd_e8 = USD per 1.0 coll * 1e8
    total_stake  = sum of active position stakes (redist denominator)
  /*/
  TABLE market {
    uint64_t id;
    name     coll_contract;
    symbol   coll_symbol;
    uint64_t price_usd_e8;
    uint32_t price_updated;
    uint16_t mcr_bps;
    uint16_t ccr_bps;
    int64_t  mint_cap;
    int64_t  total_coll;
    int64_t  total_debt;
    uint64_t total_stake;
    uint64_t redist_coll_x;
    uint64_t redist_debt_x;
    bool     paused;

    uint64_t primary_key() const { return id; }
  };
  using markets_t = multi_index<"markets"_n, market>;

  TABLE position {
    uint64_t id;
    name     owner;
    uint64_t market_id;
    asset    coll;
    asset    debt;
    uint16_t rate_bps;
    uint64_t seq;
    uint64_t stake;
    uint64_t redist_coll_snap;
    uint64_t redist_debt_snap;
    uint32_t last_accrue;
    uint8_t  status;

    uint64_t primary_key() const { return id; }
    uint64_t by_owner() const { return owner.value; }
    uint64_t by_market() const { return market_id; }
    uint128_t by_redeem() const {
      return ((uint128_t)market_id << 80)
           | ((uint128_t)rate_bps << 64)
           | (uint64_t)(~seq);
    }
  };
  using positions_t = multi_index<"positions"_n, position,
    indexed_by<"byowner"_n, const_mem_fun<position, uint64_t, &position::by_owner>>,
    indexed_by<"bymarket"_n, const_mem_fun<position, uint64_t, &position::by_market>>,
    indexed_by<"byredeem"_n, const_mem_fun<position, uint128_t, &position::by_redeem>>
  >;

  /*/ --- stabpool ---
    product_p   = Liquity P (deposit loss product), starts INDEX_SCALE
    coll_scale  = S (coll gain per deposit unit, raw running sum)
    yield_scale = G (HEDGE interest gain per deposit unit)
    current_epoch bumps when SP empties or P would drop below P_MIN
  /*/
  TABLE stabpool {
    uint64_t market_id;
    asset    hedge;
    asset    coll_balance;
    uint64_t product_p;
    uint64_t coll_scale;
    uint64_t yield_scale;
    uint32_t current_epoch;

    uint64_t primary_key() const { return market_id; }
  };
  using stabpools_t = multi_index<"stabpools"_n, stabpool>;

  TABLE spdeposit {
    uint64_t id;
    name     owner;
    uint64_t market_id;
    asset    hedge;
    uint64_t product_snap;
    uint64_t coll_snap;
    uint64_t yield_snap;
    uint32_t epoch_snap;
    asset    pending_coll;
    asset    pending_yield;

    uint64_t primary_key() const { return id; }
    uint64_t by_owner() const { return owner.value; }
    uint128_t by_om() const {
      return ((uint128_t)owner.value << 64) | market_id;
    }
  };
  using spdeposits_t = multi_index<"spdeposits"_n, spdeposit,
    indexed_by<"byowner"_n, const_mem_fun<spdeposit, uint64_t, &spdeposit::by_owner>>,
    indexed_by<"byom"_n, const_mem_fun<spdeposit, uint128_t, &spdeposit::by_om>>
  >;

  TABLE surplus {
    uint64_t position_id;
    name     owner;
    uint64_t market_id;
    asset    coll;

    uint64_t primary_key() const { return position_id; }
    uint64_t by_owner() const { return owner.value; }
  };
  using surpluses_t = multi_index<"surpluses"_n, surplus,
    indexed_by<"byowner"_n, const_mem_fun<surplus, uint64_t, &surplus::by_owner>>
  >;

  TABLE feestate {
    uint64_t base_rate_bps;
    uint32_t last_update;

    EOSLIB_SERIALIZE(feestate, (base_rate_bps)(last_update))
  };
  typedef singleton<"feestate"_n, feestate> feestate_t;

  // === Admin / oracle === //
  ACTION setconfig(name admin, name debt_contract, symbol debt_symbol,
                   asset min_debt, uint16_t borrow_fee_bps,
                   uint16_t redeem_fee_floor_bps, uint16_t redeem_fee_max_bps);
  ACTION addmarket(uint64_t id, name coll_contract, symbol coll_symbol,
                   uint16_t mcr_bps, uint16_t ccr_bps, int64_t mint_cap);
  ACTION setmarket(uint64_t id, bool paused, uint16_t mcr_bps, uint16_t ccr_bps,
                   int64_t mint_cap);
  ACTION setprice(uint64_t market_id, uint64_t price_usd_e8);
  ACTION pause(bool paused);

  // === Borrower === //
  ACTION borrow(uint64_t pos_id, asset amount);
  ACTION withdrawcoll(uint64_t pos_id, asset amount);
  ACTION setrate(uint64_t pos_id, uint16_t rate_bps);
  ACTION closepos(uint64_t pos_id);

  // === Stability Pool === //
  ACTION withdrawsp(name owner, uint64_t market_id, asset amount);
  ACTION claimsp(name owner, uint64_t market_id);

  // === Liquidation / redeem / surplus === //
  ACTION liquidate(uint64_t pos_id);
  ACTION claimsurplus(uint64_t position_id);

  [[eosio::on_notify("*::transfer")]]
  void on_transfer(name from, name to, asset quantity, string memo);

 private:
  config check_config();

  bool valid_rate(uint16_t rate_bps) const;
  void require_fresh_price(const market& m) const;

  uint64_t icr_bps(const config& cfg, const market& m,
                   int64_t coll_amt, int64_t debt_amt) const;
  uint64_t tcr_bps(const config& cfg, const market& m) const;

  void accrue_position(position& p, market& m, const config& cfg);
  void apply_redist(position& p, const market& m);
  void touch_position(positions_t& positions, positions_t::const_iterator it,
                      markets_t& markets, const config& cfg);

  void ensure_stabpool(uint64_t market_id, const symbol& debt_sym, const symbol& coll_sym);
  void update_sp_deposit(spdeposit& d, const stabpool& sp);
  void mint_interest_to_sp(uint64_t market_id, asset interest);
  spdeposits_t::const_iterator require_sp(name owner, uint64_t market_id);

  void issue_debt(name to, asset qty, const string& memo);
  void retire_debt(asset qty, const string& memo);
  void send_token(name token_contract, name to, asset qty, const string& memo);

  void open_position(name from, asset quantity, uint64_t market_id, uint16_t rate_bps,
                     config& cfg);
  void add_collateral(name from, asset quantity, uint64_t pos_id, const config& cfg);
  void repay_debt(name from, asset quantity, uint64_t pos_id, const config& cfg);
  void provide_sp(name from, asset quantity, uint64_t market_id, config& cfg);
  void do_redeem(name from, asset hedge_amount, uint64_t market_id, const config& cfg);

  void close_position_row(positions_t& positions, positions_t::const_iterator it,
                          markets_t& markets, const config& cfg);

  uint64_t parse_u64(const string& s);
  void     parse_open_memo(const string& memo, uint64_t& market_id, uint16_t& rate_bps);
};
