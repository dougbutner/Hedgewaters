import { describe, it, expect } from "vitest";

/** Mirrors easyloan open_loan split + max_pool_bps check */
function splitDeposit(amount: bigint, sellBps: number): { sell: bigint; keep: bigint } {
  const sell = (amount * BigInt(sellBps)) / 10_000n;
  const keep = amount - sell;
  return { sell, keep };
}

function exceedsPoolCap(sell: bigint, poolEasyReserve: bigint, maxPoolBps: number): boolean {
  const cap = (poolEasyReserve * BigInt(maxPoolBps)) / 10_000n;
  return sell > cap;
}

describe("easyloan split / liquidity cap", () => {
  it("50/50 split on even deposit", () => {
    const { sell, keep } = splitDeposit(1000_0000n, 5000);
    expect(sell).toBe(500_0000n);
    expect(keep).toBe(500_0000n);
  });

  it("remainder stays in keep on odd amounts", () => {
    const { sell, keep } = splitDeposit(101n, 5000);
    expect(sell + keep).toBe(101n);
    expect(sell).toBe(50n);
    expect(keep).toBe(51n);
  });

  it("rejects sell above 2% of pool EASY reserve", () => {
    const reserve = 1_000_000_0000n;
    const { sell } = splitDeposit(50_000_0000n, 5000); // sell 25M
    expect(exceedsPoolCap(sell, reserve, 200)).toBe(true); // cap = 2M
    const ok = splitDeposit(2_000_0000n, 5000); // sell 1M
    expect(exceedsPoolCap(ok.sell, reserve, 200)).toBe(false);
  });
});
