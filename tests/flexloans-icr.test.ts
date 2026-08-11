import { describe, it, expect } from "vitest";
import {
  icrBps,
  validRate,
  accrueInterest,
  borrowFee,
  RATE_BUCKETS,
} from "./lib/flexloans-icr";

describe("flexloans ICR / rates / interest", () => {
  it("ICR at 110% MCR boundary (4-dec coll @ $1, 4-dec debt)", () => {
    // 110 coll, 100 debt @ $1 → ICR = 11000 bps
    const icr = icrBps(110_0000n, 100_0000n, 100_000_000n, 4, 4);
    expect(icr).toBe(11_000n);
  });

  it("ICR rejects borrow path when below MCR 110%", () => {
    const icr = icrBps(100_0000n, 100_0000n, 100_000_000n, 4, 4);
    expect(icr).toBe(10_000n);
    expect(icr < 11_000n).toBe(true);
  });

  it("different precisions (6-dec USDC-style coll, 4-dec debt)", () => {
    // 110 USDC (6 dec), 100 HXUSD (4 dec), price $1
    const icr = icrBps(110_000000n, 100_0000n, 100_000_000n, 6, 4);
    expect(icr).toBe(11_000n);
  });

  it("only listed rate buckets are valid", () => {
    for (const b of RATE_BUCKETS) expect(validRate(b)).toBe(true);
    expect(validRate(75)).toBe(false);
    expect(validRate(0)).toBe(false);
  });

  it("interest accrual ~ rate * dt / year", () => {
    const debt = 10_000_0000n; // 10k
    const year = accrueInterest(debt, 1000, 365n * 24n * 3600n); // 10%
    expect(year).toBe(1_000_0000n); // 1k
    const half = accrueInterest(debt, 1000, (365n * 24n * 3600n) / 2n);
    expect(half).toBe(500_0000n);
  });

  it("upfront borrow fee", () => {
    expect(borrowFee(1000_0000n, 50)).toBe(5_0000n); // 0.5%
  });
});
