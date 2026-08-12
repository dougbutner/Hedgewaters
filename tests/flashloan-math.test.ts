import { describe, it, expect } from "vitest";

const BPS = 10_000n;
const DEFAULT_FEE_BPS = 3n;

const FLEX_ZERO: Array<{ contract: string; sym: string }> = [
  { contract: "mon3y", sym: "EASY" },
  { contract: "w3won", sym: "WON" },
  { contract: "m3m3", sym: "MEME" },
  { contract: "gold.mon3y", sym: "GRAMS" },
];

function isZeroFee(contract: string, sym: string): boolean {
  return FLEX_ZERO.some((f) => f.contract === contract && f.sym === sym);
}

/** Mirrors flashloan::calc_fee */
function calcFee(amount: bigint, contract: string, sym: string, feeBps = DEFAULT_FEE_BPS): bigint {
  if (isZeroFee(contract, sym)) return 0n;
  return (amount * feeBps) / BPS;
}

type Mode = "reserve" | "conv";

/** Mirrors flash default: reserve if balance >= amount + fee */
function pickMode(balance: bigint, amount: bigint, fee: bigint): Mode {
  return balance >= amount + fee ? "reserve" : "conv";
}

/** End invariant after lend+repay: start - amount + (amount+fee) >= start + fee */
function repaidOk(start: bigint, amount: bigint, fee: bigint, repaid: bigint): boolean {
  const expected = start + fee;
  const end = start - amount + repaid;
  return end >= expected;
}

describe("flashloan fee policy", () => {
  it("charges 0.03% (3 bps) on normal assets", () => {
    expect(calcFee(1_000_0000n, "eosio.token", "XPR")).toBe(3000n); // 0.03% of 1e7 = 3e3
  });

  it("charges 0 on Flex tokens", () => {
    for (const f of FLEX_ZERO) {
      expect(calcFee(1_000_0000n, f.contract, f.sym)).toBe(0n);
    }
  });
});

describe("flashloan mode selection", () => {
  it("prefers reserve when funded", () => {
    const amount = 100n;
    const fee = calcFee(amount, "eosio.token", "XPR");
    expect(pickMode(100n + fee, amount, fee)).toBe("reserve");
  });

  it("falls back to conversion when short", () => {
    const amount = 100n;
    const fee = 1n;
    expect(pickMode(50n, amount, fee)).toBe("conv");
  });
});

describe("flashloan repayment invariant", () => {
  it("passes when borrower returns principal + fee", () => {
    expect(repaidOk(1000n, 100n, 3n, 103n)).toBe(true);
  });

  it("fails when under-repaid (must revert tx)", () => {
    expect(repaidOk(1000n, 100n, 3n, 100n)).toBe(false);
  });
});
