/**
 * Default flexloans market fixtures for the mock chain.
 * Shapes match Antelope get_table_rows JSON (UI-friendly assets).
 */
import type { MockChainStore, UpsertRowInput } from "./store";

export const MOCK_FLEXLOANS = "flexloans";
export const MOCK_HXUSD_TOKEN = "eosio.token";

const now = Math.floor(Date.now() / 1000);

/** INDEX_SCALE-style product P used by Liquity SP math (1e27-ish as string int). */
const PRODUCT_P = "1000000000000000000000000000";

export function flexloansSeedRows(): UpsertRowInput[] {
  const code = MOCK_FLEXLOANS;
  return [
    {
      code,
      table: "config",
      primaryKey: 0,
      payload: {
        admin: "flexadmin",
        debt_contract: MOCK_HXUSD_TOKEN,
        debt_symbol: "4,HXUSD",
        min_debt: "10.0000 HXUSD",
        borrow_fee_bps: 50,
        redeem_fee_floor_bps: 50,
        redeem_fee_max_bps: 500,
        paused: false,
        next_pos_id: 3,
        next_seq: 3,
        next_sp_id: 2,
      },
    },
    {
      code,
      table: "feestate",
      primaryKey: 0,
      payload: {
        base_rate_bps: 50,
        last_update: now,
      },
    },
    {
      code,
      table: "markets",
      primaryKey: 1,
      payload: {
        id: 1,
        coll_contract: "eosio.token",
        coll_symbol: "4,XPR",
        price_usd_e8: 2_000_0000, // $0.20
        price_updated: now,
        mcr_bps: 11000,
        ccr_bps: 15000,
        mint_cap: "1000000.0000 HXUSD",
        total_coll: "250000.0000 XPR",
        total_debt: "20000.0000 HXUSD",
        total_stake: 2500000000,
        redist_coll_x: 0,
        redist_debt_x: 0,
        paused: false,
      },
    },
    {
      code,
      table: "markets",
      primaryKey: 2,
      payload: {
        id: 2,
        coll_contract: "xtokens",
        coll_symbol: "8,XBTC",
        price_usd_e8: 95_000_00000000, // $95,000
        price_updated: now,
        mcr_bps: 11000,
        ccr_bps: 15000,
        mint_cap: "500000.0000 HXUSD",
        total_coll: "1.25000000 XBTC",
        total_debt: "50000.0000 HXUSD",
        total_stake: 125000000,
        redist_coll_x: 0,
        redist_debt_x: 0,
        paused: false,
      },
    },
    {
      code,
      table: "stabpools",
      primaryKey: 1,
      payload: {
        market_id: 1,
        hxusd: "8000.0000 HXUSD",
        coll_balance: "0.0000 XPR",
        product_p: PRODUCT_P,
        coll_scale: 0,
        yield_scale: 0,
        current_epoch: 0,
      },
    },
    {
      code,
      table: "stabpools",
      primaryKey: 2,
      payload: {
        market_id: 2,
        hxusd: "15000.0000 HXUSD",
        coll_balance: "0.00000000 XBTC",
        product_p: PRODUCT_P,
        coll_scale: 0,
        yield_scale: 0,
        current_epoch: 0,
      },
    },
    {
      code,
      table: "positions",
      primaryKey: 1,
      payload: {
        id: 1,
        owner: "alice",
        market_id: 1,
        coll: "100000.0000 XPR",
        debt: "8000.0000 HXUSD",
        rate_bps: 500,
        seq: 1,
        stake: 1000000000,
        redist_coll_snap: 0,
        redist_debt_snap: 0,
        last_accrue: now,
        status: 1,
      },
    },
    {
      code,
      table: "positions",
      primaryKey: 2,
      payload: {
        id: 2,
        owner: "bob",
        market_id: 2,
        coll: "0.50000000 XBTC",
        debt: "20000.0000 HXUSD",
        rate_bps: 300,
        seq: 2,
        stake: 50000000,
        redist_coll_snap: 0,
        redist_debt_snap: 0,
        last_accrue: now,
        status: 1,
      },
    },
    {
      code,
      table: "spdeposits",
      primaryKey: 1,
      payload: {
        id: 1,
        owner: "carol",
        market_id: 1,
        hxusd: "2500.0000 HXUSD",
        product_snap: PRODUCT_P,
        coll_snap: 0,
        yield_snap: 0,
        epoch_snap: 0,
        pending_coll: "0.0000 XPR",
        pending_yield: "0.0000 HXUSD",
      },
    },
  ];
}

export function seedFlexloans(store: MockChainStore): void {
  store.clear();
  store.upsertRows(flexloansSeedRows());
  store.setBalance(MOCK_HXUSD_TOKEN, "alice", "100.0000 HXUSD");
  store.setBalance("eosio.token", "alice", "5000.0000 XPR");
  store.setMeta("seed", "flexloans-default");
  store.setMeta("seeded_at", new Date().toISOString());
}
