import { Link } from "react-router-dom";
import type { FlexConfig, FlexMarket, FlexPosition } from "@/lib/chain/flexloans";
import { parseAsset, symbolCode } from "@/lib/chain/asset";
import {
  formatPctBps,
  healthFromIcr,
  icrBps,
  liquidationPriceUsd,
} from "@/lib/chain/math";

export function UserPosition({
  positions,
  markets,
  config,
}: {
  positions: FlexPosition[];
  markets: FlexMarket[];
  config: FlexConfig | null;
}) {
  if (!positions.length) return null;

  return (
    <section>
      <div className="mb-3 flex items-center justify-between gap-3">
        <h2 className="section-title">Your Position</h2>
        <Link to="/positions" className="text-xs font-medium text-primary hover:underline">
          Manage all
        </Link>
      </div>
      <div className="panel overflow-x-auto">
        <table className="w-full min-w-[720px] text-left text-xs">
          <thead>
            <tr className="border-b border-border text-muted-foreground">
              <th className="px-4 py-2.5 font-medium">ID</th>
              <th className="px-3 py-2.5 font-medium">Collateral</th>
              <th className="px-3 py-2.5 font-medium">Debt</th>
              <th className="px-3 py-2.5 font-medium">Ratio</th>
              <th className="px-3 py-2.5 font-medium">Rate</th>
              <th className="px-3 py-2.5 font-medium">Liq. Price</th>
              <th className="px-3 py-2.5 font-medium">Health</th>
              <th className="px-4 py-2.5 font-medium text-right">Actions</th>
            </tr>
          </thead>
          <tbody>
            {positions.map((p) => {
              const market = markets.find((m) => String(m.id) === String(p.market_id));
              const coll = parseAsset(p.coll);
              const debt = parseAsset(p.debt);
              const collPrec = coll?.precision ?? 4;
              const debtPrec = debt?.precision ?? 6;
              const icr =
                coll && debt && market
                  ? icrBps(
                      coll.amount,
                      debt.amount,
                      BigInt(market.price_usd_e8 || 0),
                      collPrec,
                      debtPrec
                    )
                  : null;
              const mcr = market?.mcr_bps ?? 11000;
              const health = healthFromIcr(icr, mcr);
              const liq =
                coll && debt
                  ? liquidationPriceUsd(coll.amount, debt.amount, collPrec, debtPrec, mcr)
                  : null;
              const healthCls =
                health === "SAFE"
                  ? "text-success"
                  : health === "AT_RISK"
                    ? "text-warning"
                    : health === "LIQUIDATABLE"
                      ? "text-destructive"
                      : "text-muted-foreground";

              return (
                <tr key={String(p.id)} className="border-b border-border/50 last:border-0">
                  <td className="px-4 py-3 font-mono tabular-nums">#{String(p.id)}</td>
                  <td className="px-3 py-3 font-mono tabular-nums">{p.coll}</td>
                  <td className="px-3 py-3 font-mono tabular-nums">{p.debt}</td>
                  <td className="px-3 py-3 font-mono tabular-nums">{icr != null ? formatPctBps(icr) : "—"}</td>
                  <td className="px-3 py-3 font-mono tabular-nums">{formatPctBps(p.rate_bps)}</td>
                  <td className="px-3 py-3 font-mono tabular-nums">
                    {liq != null ? `$${liq.toLocaleString(undefined, { maximumFractionDigits: 4 })}` : "—"}
                  </td>
                  <td className={`px-3 py-3 font-semibold ${healthCls}`}>{health}</td>
                  <td className="px-4 py-3 text-right">
                    <div className="inline-flex gap-1">
                      <Link to={`/positions?id=${p.id}`} className="btn btn-outline btn-sm">
                        Adjust
                      </Link>
                      <Link to={`/positions?id=${p.id}&tab=repay`} className="btn btn-ghost btn-sm">
                        Repay
                      </Link>
                    </div>
                  </td>
                </tr>
              );
            })}
          </tbody>
        </table>
        {config && (
          <p className="sr-only">Debt symbol {symbolCode(config.debt_symbol)}</p>
        )}
      </div>
    </section>
  );
}
