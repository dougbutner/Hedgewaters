import { describe, it, expect } from "vitest";
import {
  icrBps,
  maxLtvPct,
  redeemCollEstimate,
  maxBorrowAmount,
  liquidationPriceUsd,
  RATE_BUCKETS,
} from "../src/lib/chain/math";
import { parseAsset, parseDecimalToAsset, formatAsset } from "../src/lib/chain/asset";

describe("UI chain math", () => {
  it("parses EOSIO assets and symbols", () => {
    const a = parseAsset("12.5000 XPR");
    expect(a?.symbol).toBe("XPR");
    expect(a?.precision).toBe(4);
    expect(a?.amount).toBe(125000n);
    expect(parseAsset("6,HEDGE")?.symbol).toBe("HEDGE");
    expect(parseAsset("6,HEDGE")?.precision).toBe(6);
    expect(parseDecimalToAsset("1.5", 4, "XPR")).toBe("1.5000 XPR");
  });

  it("computes ICR, max LTV, max borrow, and liq price", () => {
    const icr = icrBps(10_000n, 1_000_0000n, 2000_00000000n, 4, 4);
    expect(icr).toBe(20_000n);
    expect(maxLtvPct(11000)).toBeCloseTo(90.909, 2);
    expect(RATE_BUCKETS).toContain(200);

    const maxB = maxBorrowAmount(10_000n, 2000_00000000n, 4, 4, 11_000);
    expect(maxB).toBeGreaterThan(0n);

    const liq = liquidationPriceUsd(10_000n, 1_000_0000n, 4, 4, 11_000);
    expect(liq).toBeCloseTo(1100, 0);
  });

  it("estimates redeem coll after fee", () => {
    const coll = redeemCollEstimate(100_0000n, 4, 2000_00000000n, 4, 50);
    expect(coll).not.toBeNull();
    expect(formatAsset(coll!, 4, "XPR")).toMatch(/XPR/);
    expect(coll!).toBeLessThan(redeemCollEstimate(100_0000n, 4, 2000_00000000n, 4, 0)!);
  });
});
