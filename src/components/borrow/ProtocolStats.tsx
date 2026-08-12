import { formatCompact, formatPctBps } from "@/lib/chain/math";
import type { FlexConfig, FlexMarket, FlexStabpool } from "@/lib/chain/flexloans";
import { parseAsset, symbolCode } from "@/lib/chain/asset";

export function ProtocolStats({
  config,
  markets,
  pools,
  loading,
}: {
  config: FlexConfig | null;
  markets: FlexMarket[];
  pools: FlexStabpool[];
  loading?: boolean;
}) {
  const debtPrec =
    parseAsset(config?.min_debt)?.precision ?? parseAsset(markets[0]?.total_debt)?.precision ?? 6;
  const debtSym = config ? symbolCode(config.debt_symbol) : "HEDGE";
  const totalDebt = markets.reduce((a, m) => a + (parseAsset(m.total_debt)?.amount ?? 0n), 0n);
  const spTvl = pools.reduce((a, p) => a + (parseAsset(p.hedge)?.amount ?? 0n), 0n);
  const avgRate =
    markets.length > 0
      ? Math.round(markets.reduce((a, m) => a + (m.mcr_bps || 0), 0) / markets.length)
      : 0;

  const items = [
    { label: "Total Debt", value: loading ? "…" : `${formatCompact(totalDebt, debtPrec)} ${debtSym}` },
    { label: "Stability Pool", value: loading ? "…" : `${formatCompact(spTvl, debtPrec)} ${debtSym}` },
    { label: "Markets", value: loading ? "…" : String(markets.length) },
    {
      label: "Borrow Fee",
      value: loading ? "…" : formatPctBps(config?.borrow_fee_bps ?? 0),
    },
  ];

  return (
    <div className="min-w-0">
      <div className="flex flex-wrap items-baseline gap-x-8 gap-y-3 sm:gap-x-10">
        {items.map((item) => (
          <div key={item.label} className="min-w-0">
            <p className="stat-label">{item.label}</p>
            <p className="stat-value mt-0.5 truncate">{item.value}</p>
            {item.label === "Markets" && avgRate > 0 && (
              <p className="sr-only">Avg MCR {formatPctBps(avgRate)}</p>
            )}
          </div>
        ))}
      </div>
    </div>
  );
}
