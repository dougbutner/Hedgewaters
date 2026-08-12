import { formatPctBps, healthFromIcr } from "@/lib/chain/math";

export function CollateralRatio({
  icrBps,
  mcrBps,
  liquidationPrice,
  collSymbol,
}: {
  icrBps: bigint | null;
  mcrBps: number;
  liquidationPrice: number | null;
  collSymbol: string;
}) {
  const health = healthFromIcr(icrBps, mcrBps);
  const icrNum = icrBps != null ? Number(icrBps) / 100 : null;
  const mcrPct = mcrBps / 100;

  // Map ICR onto a 0–100 bar where MCR sits at ~22% of the track and 400% is ~100%
  const maxDisplay = Math.max(mcrPct * 3.5, 400);
  const fillPct =
    icrNum == null ? 0 : Math.min(100, Math.max(0, ((icrNum - mcrPct * 0.5) / (maxDisplay - mcrPct * 0.5)) * 100));
  const mcrMark = Math.min(100, Math.max(0, ((mcrPct - mcrPct * 0.5) / (maxDisplay - mcrPct * 0.5)) * 100));

  const healthColor =
    health === "SAFE"
      ? "text-success"
      : health === "AT_RISK"
        ? "text-warning"
        : health === "LIQUIDATABLE"
          ? "text-destructive"
          : "text-muted-foreground";

  const barColor =
    health === "SAFE"
      ? "bg-success"
      : health === "AT_RISK"
        ? "bg-warning"
        : health === "LIQUIDATABLE"
          ? "bg-destructive"
          : "bg-muted-foreground";

  return (
    <div className="glass-field p-4">
      <div className="flex items-end justify-between gap-3">
        <div>
          <p className="field-label">Collateral Ratio</p>
          <p className="mt-1 font-mono text-2xl font-semibold tabular-nums tracking-tight">
            {icrNum != null ? `${icrNum.toFixed(1)}%` : "—"}
          </p>
        </div>
        <span className={`text-xs font-semibold uppercase tracking-wider ${healthColor}`}>{health}</span>
      </div>

      <div className="relative mt-4 h-1.5 rounded-full bg-secondary">
        <div className={`absolute inset-y-0 left-0 rounded-full ${barColor}`} style={{ width: `${fillPct}%` }} />
        <div
          className="absolute top-1/2 h-3 w-px -translate-y-1/2 bg-destructive/80"
          style={{ left: `${mcrMark}%` }}
          title={`Liquidation ${formatPctBps(mcrBps)}`}
        />
      </div>
      <div className="mt-1.5 flex justify-between text-[10px] text-muted-foreground">
        <span>LIQUIDATION {formatPctBps(mcrBps)}</span>
        <span>SAFE →</span>
      </div>

      <dl className="mt-4 grid grid-cols-2 gap-3 text-xs sm:grid-cols-3">
        <div>
          <dt className="text-muted-foreground">Liquidation Threshold</dt>
          <dd className="mt-0.5 font-mono tabular-nums text-foreground">{formatPctBps(mcrBps)}</dd>
        </div>
        <div>
          <dt className="text-muted-foreground">Est. Liquidation Price</dt>
          <dd className="mt-0.5 font-mono tabular-nums text-foreground">
            {liquidationPrice != null
              ? `$${liquidationPrice.toLocaleString(undefined, { maximumFractionDigits: 4 })} ${collSymbol}`
              : "—"}
          </dd>
        </div>
        <div>
          <dt className="text-muted-foreground">Health Status</dt>
          <dd className={`mt-0.5 font-semibold ${healthColor}`}>{health}</dd>
        </div>
      </dl>
    </div>
  );
}
