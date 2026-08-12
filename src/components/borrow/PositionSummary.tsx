import { formatPctBps, formatUsd } from "@/lib/chain/math";

export function PositionSummary({
  collLabel,
  collUsd,
  borrowLabel,
  ratioLabel,
  rateBps,
  feeLabel,
  liqPriceLabel,
  capacityLabel,
  depositPreview,
  receivePreview,
  feePreview,
  onConfirm,
  confirmDisabled,
  confirmLabel,
  busy,
  status,
}: {
  collLabel: string;
  collUsd: string;
  borrowLabel: string;
  ratioLabel: string;
  rateBps: number;
  feeLabel: string;
  liqPriceLabel: string;
  capacityLabel: string;
  depositPreview: string;
  receivePreview: string;
  feePreview: string;
  onConfirm: () => void;
  confirmDisabled: boolean;
  confirmLabel: string;
  busy: boolean;
  status?: { type: "ok" | "err"; message: string } | null;
}) {
  return (
    <aside className="panel lg:sticky lg:top-20">
      <div className="panel-header">
        <h2 className="text-sm font-semibold text-foreground">Position Summary</h2>
      </div>
      <div className="panel-body space-y-3">
        <Row label="Collateral" value={collLabel} sub={collUsd} />
        <Row label="Borrowed" value={borrowLabel} />
        <Row label="Collateral Ratio" value={ratioLabel} />
        <Row label="Interest Rate" value={formatPctBps(rateBps)} />
        <Row label="Borrow Fee" value={feeLabel} />
        <Row label="Liquidation Price" value={liqPriceLabel} />
        <Row label="Remaining Capacity" value={capacityLabel} />

        <div className="divider pt-3">
          <p className="mb-2 text-[11px] font-medium uppercase tracking-wider text-muted-foreground">
            Transaction Preview
          </p>
          <div className="space-y-2 rounded-sm border border-white/10 bg-[#000000] px-3 py-2.5 text-xs">
            <div className="flex justify-between gap-3">
              <span className="text-muted-foreground">You deposit</span>
              <span className="font-mono tabular-nums">{depositPreview}</span>
            </div>
            <div className="flex justify-between gap-3">
              <span className="text-muted-foreground">You receive</span>
              <span className="font-mono tabular-nums text-primary">{receivePreview}</span>
            </div>
            <div className="flex justify-between gap-3">
              <span className="text-muted-foreground">Protocol fee</span>
              <span className="font-mono tabular-nums">{feePreview}</span>
            </div>
            <div className="flex justify-between gap-3">
              <span className="text-muted-foreground">Est. network fee</span>
              <span className="font-mono tabular-nums text-muted-foreground">Network gas</span>
            </div>
          </div>
        </div>

        {status && (
          <p
            className={`rounded-md px-3 py-2 text-xs ${
              status.type === "ok"
                ? "bg-success/10 text-success"
                : "bg-destructive/10 text-destructive"
            }`}
          >
            {status.message}
          </p>
        )}

        <button
          type="button"
          className="btn btn-primary btn-lg w-full"
          disabled={confirmDisabled || busy}
          onClick={onConfirm}
        >
          {busy ? "Confirming…" : confirmLabel}
        </button>
      </div>
    </aside>
  );
}

function Row({ label, value, sub }: { label: string; value: string; sub?: string }) {
  return (
    <div className="flex items-start justify-between gap-3 text-xs">
      <span className="text-muted-foreground">{label}</span>
      <div className="text-right">
        <div className="font-mono tabular-nums text-foreground">{value}</div>
        {sub && <div className="mt-0.5 text-[11px] text-muted-foreground">{sub}</div>}
      </div>
    </div>
  );
}

export { formatUsd };
