import fs from "node:fs";
import os from "node:os";
import path from "node:path";
import { afterEach, describe, expect, it } from "vitest";
import {
  CHAIN_ENDPOINTS,
} from "../src/services/walletConstants";
import { getTableRows, getSingleton } from "../src/lib/chain/rpc";
import {
  fetchFlexConfig,
  fetchFlexMarkets,
  fetchFlexStabpools,
} from "../src/lib/chain/flexloans";
import {
  openMockChain,
  writeSeedSnapshot,
  defaultSnapshotPath,
  MOCK_FLEXLOANS,
  type MockChain,
} from "./mock-chain";

const tmpDirs: string[] = [];
const chains: MockChain[] = [];

afterEach(() => {
  while (chains.length) chains.pop()?.close();
  for (const d of tmpDirs.splice(0)) {
    fs.rmSync(d, { recursive: true, force: true });
  }
});

function tmpDir(): string {
  const d = fs.mkdtempSync(path.join(os.tmpdir(), "hw-mock-chain-"));
  tmpDirs.push(d);
  return d;
}

describe("mock chain SQL store", () => {
  it("seeds flexloans markets into SQLite", () => {
    const chain = openMockChain({ dbPath: ":memory:", seed: true });
    chains.push(chain);

    const markets = chain.rpc.get_table_rows({
      code: MOCK_FLEXLOANS,
      table: "markets",
    });
    expect(markets.rows).toHaveLength(2);
    expect(markets.rows[0]).toMatchObject({
      id: 1,
      coll_symbol: "4,XPR",
      mcr_bps: 11000,
    });

    const config = chain.rpc.get_table_rows({
      code: MOCK_FLEXLOANS,
      table: "config",
      limit: 1,
    });
    expect(config.rows[0]).toMatchObject({
      debt_symbol: "4,HXUSD",
      paused: false,
    });

    const pools = chain.rpc.get_table_rows({
      code: MOCK_FLEXLOANS,
      table: "stabpools",
    });
    expect(pools.rows).toHaveLength(2);
  });

  it("snapshots and restores market data from a SQL file", () => {
    const dir = tmpDir();
    const snap = path.join(dir, "markets.sqlite");

    const a = openMockChain({ dbPath: ":memory:", seed: true });
    chains.push(a);
    a.snapshot(snap);
    expect(fs.existsSync(snap)).toBe(true);

    const b = openMockChain({ dbPath: ":memory:" });
    chains.push(b);
    expect(b.rpc.get_table_rows({ code: MOCK_FLEXLOANS, table: "markets" }).rows).toHaveLength(0);

    b.restore(snap);
    const markets = b.rpc.get_table_rows({ code: MOCK_FLEXLOANS, table: "markets" }).rows;
    expect(markets).toHaveLength(2);
    expect(markets.map((m) => m.id)).toEqual([1, 2]);

    const bals = b.store.getCurrencyBalance("eosio.token", "alice", "XPR");
    expect(bals[0]).toBe("5000.0000 XPR");
  });

  it("writeSeedSnapshot produces a restorable canonical file", () => {
    const dir = tmpDir();
    const snap = path.join(dir, "seed-snapshot.sqlite");
    writeSeedSnapshot(snap);

    const chain = openMockChain({ dbPath: ":memory:" });
    chains.push(chain);
    chain.restore(snap);
    expect(chain.store.getMeta("seed")).toBe("flexloans-default");
    expect(chain.rpc.get_table_rows({ code: MOCK_FLEXLOANS, table: "markets" }).rows.length).toBeGreaterThan(0);
  });

  it("restoreIfEmpty loads snapshot or seeds when markets are missing", () => {
    const dir = tmpDir();
    const dbPath = path.join(dir, "chain.sqlite");
    const snap = path.join(dir, "seed-snapshot.sqlite");
    writeSeedSnapshot(snap);

    const chain = openMockChain({
      dbPath,
      restoreIfEmpty: true,
      snapshotPath: snap,
    });
    chains.push(chain);
    expect(chain.rpc.get_table_rows({ code: MOCK_FLEXLOANS, table: "markets" }).rows).toHaveLength(2);
  });
});

describe("mock chain fetch shim", () => {
  it("serves getTableRows / fetchFlexMarkets without live RPC", async () => {
    const chain = openMockChain({ dbPath: ":memory:", seed: true });
    chains.push(chain);
    const uninstall = chain.installFetch(CHAIN_ENDPOINTS);

    try {
      const rows = await getTableRows<{ id: number }>({
        code: MOCK_FLEXLOANS,
        table: "markets",
      });
      expect(rows.length).toBe(2);
      expect(rows[0].id).toBe(1);

      const cfg = await getSingleton<{ debt_symbol: string }>(MOCK_FLEXLOANS, "config");
      expect(cfg?.debt_symbol).toBe("4,HXUSD");

      const markets = await fetchFlexMarkets();
      const pools = await fetchFlexStabpools();
      const config = await fetchFlexConfig();
      expect(markets).toHaveLength(2);
      expect(pools).toHaveLength(2);
      expect(config?.debt_contract).toBe("eosio.token");
    } finally {
      uninstall();
    }
  });
});

describe("default snapshot path", () => {
  it("points under tests/mock-chain/data", () => {
    expect(defaultSnapshotPath()).toContain(path.join("mock-chain", "data"));
    expect(defaultSnapshotPath().endsWith("seed-snapshot.sqlite")).toBe(true);
  });
});
