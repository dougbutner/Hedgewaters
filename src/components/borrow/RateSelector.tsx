import { RATE_BUCKETS, formatPctBps, rateBucketLabel } from "@/lib/chain/math";

export function RateSelector({
  value,
  onChange,
}: {
  value: number;
  onChange: (bps: number) => void;
}) {
  return (
    <div>
      <div className="mb-2 flex items-center justify-between">
        <span className="field-label">Interest Rate</span>
        <span className="font-mono text-xs text-foreground">{formatPctBps(value)}</span>
      </div>
      <div className="grid grid-cols-2 gap-1.5 sm:grid-cols-3 lg:grid-cols-6">
        {RATE_BUCKETS.map((bps) => {
          const selected = value === bps;
          return (
            <button
              key={bps}
              type="button"
              onClick={() => onChange(bps)}
              className={`glass-field px-2 py-2.5 text-left ${
                selected ? "bg-primary/15 ring-0 !brightness-110" : ""
              }`}
              style={
                selected
                  ? { filter: "drop-shadow(0 0 1px hsl(48 100% 50% / 0.75))" }
                  : undefined
              }
            >
              <div className={`font-mono text-sm font-semibold tabular-nums ${selected ? "text-primary" : "text-foreground"}`}>
                {formatPctBps(bps)}
              </div>
              <div className="mt-0.5 text-[10px] leading-tight text-muted-foreground">
                {rateBucketLabel(bps)}
              </div>
            </button>
          );
        })}
      </div>
      <p className="mt-2 text-[11px] text-muted-foreground">
        Lower rates face redemptions first. Higher rates reduce redemption risk.
      </p>
    </div>
  );
}
