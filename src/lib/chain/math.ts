export const BPS_DENOM = 10_000n;
export const RATE_BUCKETS = [50, 100, 200, 400, 600, 1000] as const;

export function maxLtvPct(mcrBps: number): number {
  if (!mcrBps) return 0;
  return (10000 / mcrBps) * 100;
}

/** ICR bps from integer asset units. HXUSD ~ $1. priceUsdE8 = USD per 1.0 coll × 1e8. */
export function icrBps(
  collAmt: bigint,
  debtAmt: bigint,
  priceUsdE8: bigint,
  collPrecision: number,
  debtPrecision: number
): bigint | null {
  if (debtAmt <= 0n) return null;
  const cs = 10n ** BigInt(collPrecision);
  const ds = 10n ** BigInt(debtPrecision);
  const collUsd = (collAmt * priceUsdE8) / cs;
  const debtUsd = (debtAmt * 100_000_000n) / ds;
  if (debtUsd <= 0n) return null;
  return (collUsd * BPS_DENOM) / debtUsd;
}

export function formatPctBps(bps: number | bigint | null | undefined): string {
  if (bps == null) return "—";
  const n = Number(bps) / 100;
  if (!Number.isFinite(n)) return "—";
  return `${n.toFixed(n >= 10 ? 1 : 2)}%`;
}

/** Coll out after redeem fee: HXUSD~$1 → coll = usd / price. */
export function redeemCollEstimate(
  hxusdAmt: bigint,
  hxusdPrecision: number,
  priceUsdE8: bigint,
  collPrecision: number,
  feeBps: number
): bigint | null {
  if (hxusdAmt <= 0n || priceUsdE8 <= 0n) return null;
  const ds = 10n ** BigInt(hxusdPrecision);
  const cs = 10n ** BigInt(collPrecision);
  const usdE8 = (hxusdAmt * 100_000_000n) / ds;
  const collGross = (usdE8 * cs) / priceUsdE8;
  return (collGross * (BPS_DENOM - BigInt(feeBps))) / BPS_DENOM;
}
