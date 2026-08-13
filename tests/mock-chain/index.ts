/**
 * Mock chain entry — SQL-backed local market data when live XPR RPC is unavailable.
 *
 * Usage:
 *   const chain = openMockChain({ seed: true });
 *   const markets = chain.rpc.get_table_rows({ code: "flexloans", table: "markets" }).rows;
 *   chain.snapshot("./my-snapshot.sqlite");
 *   chain.restore("./my-snapshot.sqlite");
 */
import path from "node:path";
import { CHAIN_ENDPOINTS } from "../../src/services/walletConstants";
import { MockChainStore, defaultDbPath, defaultSnapshotPath } from "./store";
import { seedFlexloans } from "./seed";
import { MockChainRpc, installMockFetch } from "./rpc";

export { MockChainStore, defaultDbPath, defaultSnapshotPath } from "./store";
export { seedFlexloans, flexloansSeedRows, MOCK_FLEXLOANS, MOCK_HEDGE_TOKEN } from "./seed";
export { MockChainRpc, installMockFetch } from "./rpc";
export { applyMockActions } from "./actions";
export type { ChainAction } from "./actions";
export type { GetTableRowsRequest, GetTableRowsResponse } from "./rpc";
export type { UpsertRowInput, TableRowPayload } from "./store";


export type OpenMockChainOptions = {
  /** SQLite path. Default: tests/mock-chain/data/chain.sqlite. Pass ":memory:" for ephemeral. */
  dbPath?: string;
  /** Load default flexloans fixtures after open (clears existing rows). */
  seed?: boolean;
  /** If true and db is empty, restore from shipped seed snapshot when present, else seed. */
  restoreIfEmpty?: boolean;
  /** Snapshot file used by restoreIfEmpty / writeSeedSnapshot. */
  snapshotPath?: string;
};

export type MockChain = {
  store: MockChainStore;
  rpc: MockChainRpc;
  snapshot: (destPath?: string) => void;
  restore: (srcPath?: string) => void;
  seed: () => void;
  installFetch: (endpoints?: string[]) => () => void;
  close: () => void;
};

export function openMockChain(opts: OpenMockChainOptions = {}): MockChain {
  const dbPath = opts.dbPath ?? defaultDbPath();
  const snapshotPath = opts.snapshotPath ?? defaultSnapshotPath();
  const store = new MockChainStore({ dbPath });
  const rpc = new MockChainRpc(store);

  if (opts.seed) {
    seedFlexloans(store);
  } else if (opts.restoreIfEmpty) {
    const existing = store.listRows("flexloans", "markets");
    if (existing.length === 0) {
      try {
        store.restore(snapshotPath);
      } catch {
        seedFlexloans(store);
        store.snapshot(snapshotPath);
      }
    }
  }

  return {
    store,
    rpc,
    snapshot: (dest = snapshotPath) => store.snapshot(dest),
    restore: (src = snapshotPath) => store.restore(src),
    seed: () => seedFlexloans(store),
    installFetch: (endpoints = [...CHAIN_ENDPOINTS]) =>
      installMockFetch(rpc, { endpoints }),
    close: () => store.close(),
  };
}

/** Build (or refresh) the canonical seed snapshot file under data/. */
export function writeSeedSnapshot(destPath = defaultSnapshotPath()): string {
  const mem = new MockChainStore({ dbPath: ":memory:" });
  seedFlexloans(mem);
  mem.snapshot(destPath);
  mem.close();
  return path.resolve(destPath);
}
