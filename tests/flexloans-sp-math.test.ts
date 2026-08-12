import { describe, it, expect } from "vitest";
import {
  INDEX_SCALE,
  freshPool,
  provide,
  updateDeposit,
  offset,
  mintYield,
  type SpDeposit,
} from "./lib/flexloans-sp";

describe("flexloans SP Product-Sum", () => {
  it("single depositor gets full coll on partial offset (not half)", () => {
    const pool = freshPool();
    let dep: SpDeposit = provide(pool, null, 100n);

    // offset 50 debt, 10 coll — Liquity: depositor receives all 10 coll
    offset(pool, 50n, 10n);
    expect(pool.hedge).toBe(50n);
    expect(pool.product_p).toBe(INDEX_SCALE / 2n); // 5e11

    updateDeposit(dep, pool);
    expect(dep.hedge).toBe(50n);
    expect(dep.pending_coll).toBe(10n);
  });

  it("wrong /INDEX_SCALE formula would overpay after 2nd liquidation — correct /P_snap does not", () => {
    const pool = freshPool();
    const dep = provide(pool, null, 100n);

    offset(pool, 50n, 10n); // S += 10*P/100, P*=0.5
    offset(pool, 25n, 5n); // remaining SP 50; take 25, coll 5

    updateDeposit(dep, pool);

    // Total coll distributed = 15; single depositor from t0 gets 15
    expect(dep.pending_coll).toBe(15n);
    expect(dep.hedge).toBe(25n); // 100 * (final P) / 1e12

    // Buggy old formula used ΔS/INDEX without embedding P in S:
    // after two offsets with S += coll*INDEX/total → pending would be 20
    expect(dep.pending_coll).not.toBe(20n);
  });

  it("yield scale uses P so gain = deposit * interest / total when P unchanged", () => {
    const pool = freshPool();
    const dep = provide(pool, null, 100n);
    mintYield(pool, 10n);
    updateDeposit(dep, pool);
    expect(dep.pending_yield).toBe(10n);
    expect(dep.hedge).toBe(100n);
  });

  it("epoch bump on full empty resets P and wipes remaining deposit after gains", () => {
    const pool = freshPool();
    const dep = provide(pool, null, 100n);
    offset(pool, 100n, 40n);
    expect(pool.hedge).toBe(0n);
    expect(pool.current_epoch).toBe(1);
    expect(pool.product_p).toBe(INDEX_SCALE);

    updateDeposit(dep, pool);
    expect(dep.pending_coll).toBe(40n);
    expect(dep.hedge).toBe(0n);
    expect(dep.epoch_snap).toBe(1);
  });

  it("two depositors split coll pro-rata", () => {
    const pool = freshPool();
    const a = provide(pool, null, 75n);
    const b = provide(pool, null, 25n);
    expect(pool.hedge).toBe(100n);

    offset(pool, 40n, 20n);
    updateDeposit(a, pool);
    updateDeposit(b, pool);

    expect(a.pending_coll + b.pending_coll).toBe(20n);
    expect(a.pending_coll).toBe(15n); // 75%
    expect(b.pending_coll).toBe(5n); // 25%
  });
});
