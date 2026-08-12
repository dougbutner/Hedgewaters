/**
 * Mirrors flexloans ICR / interest / rate helpers.
 */
export const BPS_DENOM = 10_000n;
export const SECONDS_YEAR = 365n * 24n * 3600n;
export const RATE_BUCKETS = [50, 100, 200, 400, 600, 1000] as const;

export function pow10(p: number): bigint {
  let r = 1n;
  for (let i = 0; i < p; i++) r *= 10n;
  return r;
}

/** ICR in bps: coll_usd_e8 / debt_usd_e8 * 10000 (HEDGE ~ $1) */
export function icrBps(
  collAmt: bigint,
  debtAmt: bigint,
  priceUsdE8: bigint,
  collPrecision: number,
  debtPrecision: number
): bigint {
  if (debtAmt <= 0n) throw new Error("icr debt");
  const cs = pow10(collPrecision);
  const ds = pow10(debtPrecision);
  const collUsd = (collAmt * priceUsdE8) / cs;
  const debtUsd = (debtAmt * 100_000_000n) / ds;
  return (collUsd * BPS_DENOM) / debtUsd;
}

export function validRate(rateBps: number): boolean {
  return (RATE_BUCKETS as readonly number[]).includes(rateBps);
}

export function accrueInterest(debt: bigint, rateBps: number, dtSec: bigint): bigint {
  if (debt <= 0n || dtSec <= 0n) return 0n;
  return (debt * BigInt(rateBps) * dtSec) / (BPS_DENOM * SECONDS_YEAR);
}

export function borrowFee(amount: bigint, feeBps: number): bigint {
  return (amount * BigInt(feeBps)) / BPS_DENOM;
}
