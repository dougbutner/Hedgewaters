import { Link } from "react-router-dom";
import type { FlexMarket } from "@/lib/chain/flexloans";
import { parseAsset, symbolCode } from "@/lib/chain/asset";
import { formatPctBps, maxLtvPct } from "@/lib/chain/math";

export function MarketTable({ markets }: { markets: FlexMarket[] }) {
  return (
    <div className="card overflow-x-auto">
      <table className="w-full min-w-[640px] text-left text-sm">
        <thead>
          <tr className="border-b border-border text-muted-foreground">
            <th className="px-5 py-3 font-medium">Collateral</th>
            <th className="px-3 py-3 font-medium">MCR</th>
            <th className="px-3 py-3 font-medium">Max LTV</th>
            <th className="px-3 py-3 font-medium">Total debt</th>
            <th className="px-5 py-3 font-medium text-right"> </th>
          </tr>
        </thead>
        <tbody>
          {markets.map((m) => {
            const sym = symbolCode(m.coll_symbol) || symbolCode(m.total_coll);
            const debt = parseAsset(m.total_debt);
            return (
              <tr key={String(m.id)} className="border-b border-border/60 last:border-0">
                <td className="px-5 py-4">
                  <div className="flex items-center gap-3">
                    <span className="flex h-8 w-8 items-center justify-center rounded-full bg-secondary text-xs font-semibold">
                      {sym.slice(0, 2)}
                    </span>
                    <div>
                      <div className="font-medium">{sym}</div>
                      <div className="text-xs text-muted-foreground">Market #{String(m.id)}</div>
                    </div>
                  </div>
                </td>
                <td className="px-3 py-4">{formatPctBps(m.mcr_bps)}</td>
                <td className="px-3 py-4">{maxLtvPct(m.mcr_bps).toFixed(1)}%</td>
                <td className="px-3 py-4">{debt?.raw ?? m.total_debt ?? "—"}</td>
                <td className="px-5 py-4 text-right">
                  <Link to={`/borrow?market=${m.id}`} className="text-primary hover:underline">
                    Borrow
                  </Link>
                  <span className="mx-2 text-muted-foreground">·</span>
                  <Link to={`/earn?market=${m.id}`} className="text-primary hover:underline">
                    Earn
                  </Link>
                </td>
              </tr>
            );
          })}
        </tbody>
      </table>
    </div>
  );
}
