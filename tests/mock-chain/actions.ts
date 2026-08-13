/**
 * Minimal flexloans transfer-memo simulator for live UI test mode.
 * Mirrors memo routing used by the real contract / UI (open#, repay#, addcoll#, sp#).
 */
import { MOCK_FLEXLOANS, MOCK_HEDGE_TOKEN } from "./seed";
import type { MockChainStore, TableRowPayload } from "./store";

export type ChainAction = {
  account: string;
  name: string;
  data: Record<string, unknown>;
};

function parseAssetQty(raw: string): { amount: bigint; precision: number; symbol: string } {
  const m = /^(-?\d+)(?:\.(\d+))?\s+([A-Z0-9]+)$/.exec(String(raw).trim());
  if (!m) throw new Error(`mock: bad asset ${raw}`);
  const frac = m[2] ?? "";
  const precision = frac.length;
  const digits = (m[1] + frac).replace(/^-/, "");
  const sign = m[1].startsWith("-") ? -1n : 1n;
  return { amount: sign * BigInt(digits || "0"), precision, symbol: m[3] };
}

function formatAsset(amount: bigint, precision: number, symbol: string): string {
  const neg = amount < 0n;
  const abs = neg ? -amount : amount;
  if (precision <= 0) return `${neg ? "-" : ""}${abs.toString()} ${symbol}`;
  const s = abs.toString().padStart(precision + 1, "0");
  return `${neg ? "-" : ""}${s.slice(0, -precision)}.${s.slice(-precision)} ${symbol}`;
}

function zeroAssetLike(sample: string): string {
  const p = parseAssetQty(sample);
  return formatAsset(0n, p.precision, p.symbol);
}

function addAssets(a: string, b: string): string {
  const pa = parseAssetQty(a);
  const pb = parseAssetQty(b);
  if (pa.symbol !== pb.symbol || pa.precision !== pb.precision) {
    throw new Error(`mock: asset mismatch ${a} vs ${b}`);
  }
  return formatAsset(pa.amount + pb.amount, pa.precision, pa.symbol);
}

function subAssets(a: string, b: string): string {
  const pa = parseAssetQty(a);
  const pb = parseAssetQty(b);
  if (pa.symbol !== pb.symbol || pa.precision !== pb.precision) {
    throw new Error(`mock: asset mismatch ${a} vs ${b}`);
  }
  if (pa.amount < pb.amount) throw new Error(`mock: insufficient ${a} for ${b}`);
  return formatAsset(pa.amount - pb.amount, pa.precision, pa.symbol);
}

function rowById(store: MockChainStore, table: string, id: number): TableRowPayload | null {
  return store.listRows(MOCK_FLEXLOANS, table).find((r) => Number(r.id) === id) ?? null;
}

function nextId(store: MockChainStore, table: string, field = "id"): number {
  const rows = store.listRows(MOCK_FLEXLOANS, table);
  let max = 0;
  for (const r of rows) max = Math.max(max, Number(r[field] ?? r.id ?? 0));
  return max + 1;
}

function adjustBalance(
  store: MockChainStore,
  code: string,
  account: string,
  delta: string,
  credit: boolean
): void {
  const sym = parseAssetQty(delta).symbol;
  const cur = store.getCurrencyBalance(code, account, sym)[0];
  if (credit) {
    store.setBalance(code, account, cur ? addAssets(cur, delta) : delta);
  } else {
    if (!cur) throw new Error(`mock: no ${sym} balance for ${account}`);
    store.setBalance(code, account, subAssets(cur, delta));
  }
}

function applyOpen(
  store: MockChainStore,
  from: string,
  quantity: string,
  marketId: number,
  rateBps: number
): void {
  const market = rowById(store, "markets", marketId);
  if (!market) throw new Error(`mock: unknown market ${marketId}`);
  const config = store.listRows(MOCK_FLEXLOANS, "config")[0];
  if (!config) throw new Error("mock: missing config");

  const collContract = String(market.coll_contract);
  adjustBalance(store, collContract, from, quantity, false);

  const debtSym = String(config.debt_symbol).split(",")[1] || "HEDGE";
  const debtPrec = Number(String(config.debt_symbol).split(",")[0] || 6);
  const coll = parseAssetQty(quantity);
  // Demo mint ~ debt from coll units (UI exercise, not ICR-accurate).
  let debtAmt = coll.amount / 10n;
  const minDebt = 10n * 10n ** BigInt(debtPrec);
  if (debtAmt < minDebt) debtAmt = minDebt;
  const debtQty = formatAsset(debtAmt, debtPrec, debtSym);

  const id = nextId(store, "positions");
  const now = Math.floor(Date.now() / 1000);
  store.upsertRow({
    code: MOCK_FLEXLOANS,
    table: "positions",
    primaryKey: id,
    payload: {
      id,
      owner: from,
      market_id: marketId,
      coll: quantity,
      debt: debtQty,
      rate_bps: rateBps,
      seq: id,
      stake: Number(coll.amount),
      redist_coll_snap: 0,
      redist_debt_snap: 0,
      last_accrue: now,
      status: 1,
    },
  });

  market.total_coll = addAssets(String(market.total_coll), quantity);
  market.total_debt = addAssets(String(market.total_debt), debtQty);
  store.upsertRow({ code: MOCK_FLEXLOANS, table: "markets", primaryKey: marketId, payload: market });

  adjustBalance(store, MOCK_HEDGE_TOKEN, from, debtQty, true);
  config.next_pos_id = Math.max(Number(config.next_pos_id ?? id), id + 1);
  store.upsertRow({ code: MOCK_FLEXLOANS, table: "config", primaryKey: 0, payload: config });
}

function applyRepay(store: MockChainStore, from: string, quantity: string, posId: number): void {
  const pos = rowById(store, "positions", posId);
  if (!pos || String(pos.owner) !== from) throw new Error(`mock: position ${posId} not found`);
  const market = rowById(store, "markets", Number(pos.market_id));
  if (!market) throw new Error("mock: market missing");

  adjustBalance(store, MOCK_HEDGE_TOKEN, from, quantity, false);
  const left = subAssets(String(pos.debt), quantity);
  pos.debt = left;
  if (parseAssetQty(left).amount === 0n) pos.status = 0;
  store.upsertRow({ code: MOCK_FLEXLOANS, table: "positions", primaryKey: posId, payload: pos });
  market.total_debt = subAssets(String(market.total_debt), quantity);
  store.upsertRow({
    code: MOCK_FLEXLOANS,
    table: "markets",
    primaryKey: Number(pos.market_id),
    payload: market,
  });
}

function applyAddColl(store: MockChainStore, from: string, quantity: string, posId: number): void {
  const pos = rowById(store, "positions", posId);
  if (!pos || String(pos.owner) !== from) throw new Error(`mock: position ${posId} not found`);
  const market = rowById(store, "markets", Number(pos.market_id));
  if (!market) throw new Error("mock: market missing");
  const collContract = String(market.coll_contract);
  adjustBalance(store, collContract, from, quantity, false);
  pos.coll = addAssets(String(pos.coll), quantity);
  store.upsertRow({ code: MOCK_FLEXLOANS, table: "positions", primaryKey: posId, payload: pos });
  market.total_coll = addAssets(String(market.total_coll), quantity);
  store.upsertRow({
    code: MOCK_FLEXLOANS,
    table: "markets",
    primaryKey: Number(pos.market_id),
    payload: market,
  });
}

function applySpDeposit(store: MockChainStore, from: string, quantity: string, marketId: number): void {
  const pool =
    store.listRows(MOCK_FLEXLOANS, "stabpools").find((p) => Number(p.market_id) === marketId) ?? null;
  if (!pool) throw new Error(`mock: no stabpool for market ${marketId}`);
  adjustBalance(store, MOCK_HEDGE_TOKEN, from, quantity, false);
  pool.hedge = addAssets(String(pool.hedge), quantity);
  store.upsertRow({
    code: MOCK_FLEXLOANS,
    table: "stabpools",
    primaryKey: marketId,
    payload: pool,
  });

  const existing = store
    .listRows(MOCK_FLEXLOANS, "spdeposits")
    .find((d) => String(d.owner) === from && Number(d.market_id) === marketId);
  if (existing) {
    existing.hedge = addAssets(String(existing.hedge), quantity);
    store.upsertRow({
      code: MOCK_FLEXLOANS,
      table: "spdeposits",
      primaryKey: Number(existing.id),
      payload: existing,
    });
  } else {
    const id = nextId(store, "spdeposits");
    store.upsertRow({
      code: MOCK_FLEXLOANS,
      table: "spdeposits",
      primaryKey: id,
      payload: {
        id,
        owner: from,
        market_id: marketId,
        hedge: quantity,
        product_snap: String(pool.product_p),
        coll_snap: 0,
        yield_snap: 0,
        epoch_snap: Number(pool.current_epoch ?? 0),
        pending_coll: zeroAssetLike(String(pool.coll_balance)),
        pending_yield: zeroAssetLike(quantity),
      },
    });
  }
}

/** Apply a batch of UI-shaped actions against the mock store. */
export function applyMockActions(store: MockChainStore, actions: ChainAction[]): { transaction_id: string } {
  for (const action of actions) {
    if (action.name !== "transfer") {
      throw new Error(`mock: unsupported action ${action.account}::${action.name}`);
    }
    const from = String(action.data.from ?? "");
    const to = String(action.data.to ?? "");
    const quantity = String(action.data.quantity ?? "");
    const memo = String(action.data.memo ?? "");
    if (to !== MOCK_FLEXLOANS) {
      throw new Error(`mock: transfer to ${to} not simulated (only ${MOCK_FLEXLOANS})`);
    }

    if (memo.startsWith("open#")) {
      const [, mid, rate] = memo.split("#");
      applyOpen(store, from, quantity, Number(mid), Number(rate));
    } else if (memo.startsWith("repay#")) {
      applyRepay(store, from, quantity, Number(memo.split("#")[1]));
    } else if (memo.startsWith("addcoll#")) {
      applyAddColl(store, from, quantity, Number(memo.split("#")[1]));
    } else if (memo.startsWith("sp#")) {
      applySpDeposit(store, from, quantity, Number(memo.split("#")[1]));
    } else {
      throw new Error(`mock: unknown memo ${memo}`);
    }
  }
  return { transaction_id: `mock-${Date.now().toString(16)}` };
}
