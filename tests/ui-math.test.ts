import { describe, it, expect } from "vitest";
import { icrBps, maxLtvPct, redeemCollEstimate, RATE_BUCKETS } from "../src/lib/chain/math";
import { parseAsset, parseDecimalToAsset, formatAsset } from "../src/lib/chain/asset";

describe("UI chain math", () => {
  it("parses EOSIO assets and symbols", () => {
    const a = parseAsset("12.5000 XPR");
    expect(a?.symbol).toBe("XPR");
    expect(a?.precision).toBe(4);
    expect(a?.amount).toBe(125000n);
    expect(parseAsset("4,HXUSD")?.symbol).toBe("HXUSD");
    expect(parseDecimalToAsset("1.5", 4, "XPR")).toBe("1.5000 XPR");
  });

  it("computes ICR and max LTV", () => {
    // 1.0000 coll at $2000, 1000.0000 HXUSD debt → ICR = 200%
    const icr = icrBps(10_000n, 1_000_0000n, 2000_00000000n, 4, 4);
    expect(icr).toBe(20_000n);
    expect(maxLtvPct(11000)).toBeCloseTo(90.909, 2);
    expect(RATE_BUCKETS).toContain(200);
  });

  it("estimates redeem coll after fee", () => {
    const coll = redeemCollEstimate(100_0000n, 4, 2000_00000000n, 4, 50);
    expect(coll).not.toBeNull();
    expect(formatAsset(coll!, 4, "XPR")).toMatch(/XPR/);
    expect(coll!).toBeLessThan(redeemCollEstimate(100_0000n, 4, 2000_00000000n, 4, 0)!);
  });
});
