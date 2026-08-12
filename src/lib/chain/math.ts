export const BPS_DENOM = 10_000n;
export const RATE_BUCKETS = [50, 100, 200, 400, 600, 1000] as const;

export function maxLtvPct(mcrBps: number): number {
  if (!mcrBps) return 0;
  return (10000 / mcrBps) * 100;
}

/** ICR bps from integer asset units. HEDGE ~ $1. priceUsdE8 = USD per 1.0 coll × 1e8. */
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

export function maxBorrowAmount(
  collAmt: bigint,
  priceUsdE8: bigint,
  collPrecision: number,
  debtPrecision: number,
  mcrBps: number
): bigint {
  if (collAmt <= 0n || priceUsdE8 <= 0n || mcrBps <= 0) return 0n;
  const cs = 10n ** BigInt(collPrecision);
  const ds = 10n ** BigInt(debtPrecision);
  const collUsdE8 = (collAmt * priceUsdE8) / cs;
  // max debt USD e8 at MCR: collUsd * BPS / mcr
  const maxDebtUsdE8 = (collUsdE8 * BPS_DENOM) / BigInt(mcrBps);
  return (maxDebtUsdE8 * ds) / 100_000_000n;
}

/** USD price (human) at which ICR equals mcr given coll & debt units. */
export function liquidationPriceUsd(
  collAmt: bigint,
  debtAmt: bigint,
  collPrecision: number,
  debtPrecision: number,
  mcrBps: number
): number | null {
  if (collAmt <= 0n || debtAmt <= 0n || mcrBps <= 0) return null;
  const cs = 10n ** BigInt(collPrecision);
  const ds = 10n ** BigInt(debtPrecision);
  // price_e8 = mcr * debtUsdE8 * cs / (coll * BPS)
  const debtUsdE8 = (debtAmt * 100_000_000n) / ds;
  const priceE8 = (BigInt(mcrBps) * debtUsdE8 * cs) / (collAmt * BPS_DENOM);
  return Number(priceE8) / 1e8;
}

export function healthFromIcr(icrBps: bigint | null, mcrBps: number): "SAFE" | "AT_RISK" | "LIQUIDATABLE" | "—" {
  if (icrBps == null || mcrBps <= 0) return "—";
  if (icrBps < BigInt(mcrBps)) return "LIQUIDATABLE";
  if (icrBps < BigInt(Math.floor(mcrBps * 1.25))) return "AT_RISK";
  return "SAFE";
}

export function borrowFeeAmount(amount: bigint, feeBps: number): bigint {
  return (amount * BigInt(feeBps)) / BPS_DENOM;
}

export function rateBucketLabel(bps: number): string {
  if (bps <= 50) return "Lowest rate";
  if (bps <= 100) return "Low redemption risk";
  if (bps <= 200) return "Balanced";
  if (bps <= 400) return "Higher availability";
  if (bps <= 600) return "Higher availability";
  return "Highest rate";
}

export function formatCompact(amount: bigint, precision: number): string {
  const n = Number(amount) / 10 ** precision;
  if (!Number.isFinite(n)) return "—";
  if (Math.abs(n) >= 1_000_000) return `${(n / 1_000_000).toFixed(2)}M`;
  if (Math.abs(n) >= 1_000) return `${(n / 1_000).toFixed(2)}K`;
  return n.toLocaleString(undefined, { maximumFractionDigits: Math.min(precision, 4) });
}

export function formatUsd(n: number | null | undefined): string {
  if (n == null || !Number.isFinite(n)) return "—";
  return `$${n.toLocaleString(undefined, { minimumFractionDigits: 2, maximumFractionDigits: 2 })}`;
}

/** Coll out after redeem fee: HEDGE~$1 → coll = usd / price. */
export function redeemCollEstimate(
  hedgeAmt: bigint,
  hedgePrecision: number,
  priceUsdE8: bigint,
  collPrecision: number,
  feeBps: number
): bigint | null {
  if (hedgeAmt <= 0n || priceUsdE8 <= 0n) return null;
  const ds = 10n ** BigInt(hedgePrecision);
  const cs = 10n ** BigInt(collPrecision);
  const usdE8 = (hedgeAmt * 100_000_000n) / ds;
  const collGross = (usdE8 * cs) / priceUsdE8;
  return (collGross * (BPS_DENOM - BigInt(feeBps))) / BPS_DENOM;
}
