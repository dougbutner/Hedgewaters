/**
 * Mirrors contracts/flexloans.cpp Stability Pool Product-Sum.
 * INDEX_SCALE = 1e12; ΔS = coll * P / total; gain = dep * ΔS / P_snap
 */
export const INDEX_SCALE = 1_000_000_000_000n;
export const P_MIN = INDEX_SCALE / 1_000_000n;

export type StabPool = {
  hedge: bigint;
  product_p: bigint;
  coll_scale: bigint;
  yield_scale: bigint;
  current_epoch: number;
};

export type SpDeposit = {
  hedge: bigint;
  product_snap: bigint;
  coll_snap: bigint;
  yield_snap: bigint;
  epoch_snap: number;
  pending_coll: bigint;
  pending_yield: bigint;
};

export function freshPool(): StabPool {
  return {
    hedge: 0n,
    product_p: INDEX_SCALE,
    coll_scale: 0n,
    yield_scale: 0n,
    current_epoch: 0,
  };
}

export function provide(pool: StabPool, dep: SpDeposit | null, amount: bigint): SpDeposit {
  pool.hedge += amount;
  if (!dep) {
    return {
      hedge: amount,
      product_snap: pool.product_p,
      coll_snap: pool.coll_scale,
      yield_snap: pool.yield_scale,
      epoch_snap: pool.current_epoch,
      pending_coll: 0n,
      pending_yield: 0n,
    };
  }
  updateDeposit(dep, pool);
  dep.hedge += amount;
  dep.product_snap = pool.product_p;
  dep.coll_snap = pool.coll_scale;
  dep.yield_snap = pool.yield_scale;
  dep.epoch_snap = pool.current_epoch;
  return dep;
}

/** Liquity Product-Sum update (flexloans::update_sp_deposit) */
export function updateDeposit(d: SpDeposit, sp: StabPool): void {
  if (d.product_snap <= 0n) throw new Error("P_snap");
  if (d.hedge <= 0n) {
    d.product_snap = sp.product_p;
    d.coll_snap = sp.coll_scale;
    d.yield_snap = sp.yield_scale;
    d.epoch_snap = sp.current_epoch;
    return;
  }
  const dep = d.hedge;
  const pSnap = d.product_snap;
  if (sp.coll_scale > d.coll_snap) {
    d.pending_coll += (dep * (sp.coll_scale - d.coll_snap)) / pSnap;
  }
  if (sp.yield_scale > d.yield_snap) {
    d.pending_yield += (dep * (sp.yield_scale - d.yield_snap)) / pSnap;
  }
  if (d.epoch_snap !== sp.current_epoch) {
    d.hedge = 0n;
  } else {
    d.hedge = (dep * sp.product_p) / pSnap;
  }
  d.product_snap = sp.product_p;
  d.coll_snap = sp.coll_scale;
  d.yield_snap = sp.yield_scale;
  d.epoch_snap = sp.current_epoch;
}

/** Offset debt against SP; mirrors flexloans::liquidate SP branch */
export function offset(pool: StabPool, offsetDebt: bigint, offsetColl: bigint): void {
  if (offsetDebt <= 0n || pool.hedge <= 0n) return;
  const spHedge = pool.hedge;
  const take = offsetDebt < spHedge ? offsetDebt : spHedge;
  const coll =
    offsetDebt === take
      ? offsetColl
      : (offsetColl * take) / offsetDebt;
  const remaining = spHedge - take;
  const newP = (pool.product_p * remaining) / spHedge;
  const collAdd = (coll * pool.product_p) / spHedge;
  pool.coll_scale += collAdd;
  pool.hedge -= take;
  const epochBump = remaining === 0n || newP < P_MIN;
  if (epochBump) {
    pool.current_epoch += 1;
    pool.product_p = INDEX_SCALE;
  } else {
    pool.product_p = newP;
  }
}

export function mintYield(pool: StabPool, interest: bigint): void {
  if (interest <= 0n || pool.hedge <= 0n) return;
  pool.yield_scale += (interest * pool.product_p) / pool.hedge;
}
