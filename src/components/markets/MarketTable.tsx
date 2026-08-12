import { Link } from "react-router-dom";
import type { FlexConfig, FlexMarket, FlexStabpool } from "@/lib/chain/flexloans";
import { parseAsset, symbolCode } from "@/lib/chain/asset";
import { formatPctBps, maxLtvPct } from "@/lib/chain/math";

export function MarketTable({
  markets,
  pools,
  config,
}: {
  markets: FlexMarket[];
  pools?: FlexStabpool[];
  config?: FlexConfig | null;
}) {
  const debtSym = config ? symbolCode(config.debt_symbol) : "HEDGE";

  return (
    <div className="panel overflow-x-auto">
      <table className="w-full min-w-[900px] text-left text-xs">
        <thead>
          <tr className="border-b border-border text-muted-foreground">
            <th className="px-4 py-2.5 font-medium">Collateral</th>
            <th className="px-3 py-2.5 font-medium">Total Deposits</th>
            <th className="px-3 py-2.5 font-medium">Total Debt</th>
            <th className="px-3 py-2.5 font-medium">SP Liquidity</th>
            <th className="px-3 py-2.5 font-medium">MCR</th>
            <th className="px-3 py-2.5 font-medium">Max LTV</th>
            <th className="px-3 py-2.5 font-medium">Status</th>
            <th className="px-4 py-2.5 font-medium text-right">Action</th>
          </tr>
        </thead>
        <tbody>
          {markets.map((m) => {
            const sym = symbolCode(m.coll_symbol) || symbolCode(m.total_coll);
            const pool = pools?.find((p) => String(p.market_id) === String(m.id));
            const paused = Boolean(m.paused);
            return (
              <tr key={String(m.id)} className="border-b border-border/50 last:border-0 hover:bg-secondary/30">
                <td className="px-4 py-3">
                  <div className="flex items-center gap-2.5">
                    <span className="flex h-7 w-7 items-center justify-center rounded-full bg-secondary text-[10px] font-bold">
                      {sym.slice(0, 3)}
                    </span>
                    <div>
                      <div className="font-medium text-foreground">{sym}</div>
                      <div className="text-[10px] text-muted-foreground">Market #{String(m.id)}</div>
                    </div>
                  </div>
                </td>
                <td className="px-3 py-3 font-mono tabular-nums">{m.total_coll || "—"}</td>
                <td className="px-3 py-3 font-mono tabular-nums">{m.total_debt || `0 ${debtSym}`}</td>
                <td className="px-3 py-3 font-mono tabular-nums">{pool?.hedge ?? `0 ${debtSym}`}</td>
                <td className="px-3 py-3 font-mono tabular-nums">{formatPctBps(m.mcr_bps)}</td>
                <td className="px-3 py-3 font-mono tabular-nums">{maxLtvPct(m.mcr_bps).toFixed(1)}%</td>
                <td className="px-3 py-3">
                  <span
                    className={`inline-flex items-center gap-1 rounded px-1.5 py-0.5 text-[10px] font-semibold uppercase tracking-wide ${
                      paused
                        ? "bg-destructive/10 text-destructive"
                        : "bg-success/10 text-success"
                    }`}
                  >
                    <span className={`h-1 w-1 rounded-full ${paused ? "bg-destructive" : "bg-success"}`} />
                    {paused ? "Paused" : "Active"}
                  </span>
                </td>
                <td className="px-4 py-3 text-right">
                  <Link
                    to={`/?market=${m.id}`}
                    className="text-xs font-medium text-primary hover:underline"
                  >
                    Borrow
                  </Link>
                </td>
              </tr>
            );
          })}
        </tbody>
      </table>
      {!markets.length && (
        <p className="px-4 py-6 text-center text-xs text-muted-foreground">No markets configured.</p>
      )}
    </div>
  );
}

export function formatMarketPrice(m: FlexMarket): string {
  const p = Number(m.price_usd_e8 || 0) / 1e8;
  if (!p) return "—";
  return `$${p.toLocaleString(undefined, { maximumFractionDigits: 4 })}`;
}

export function marketCollSymbol(m: FlexMarket): string {
  return symbolCode(m.coll_symbol) || symbolCode(m.total_coll) || parseAsset(m.total_coll)?.symbol || "—";
}
