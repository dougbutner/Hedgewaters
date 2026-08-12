import { Link } from "react-router-dom";
import type { FlexConfig, FlexMarket, FlexSpDeposit, FlexStabpool } from "@/lib/chain/flexloans";
import { parseAsset, symbolCode } from "@/lib/chain/asset";
import { formatCompact } from "@/lib/chain/math";

export function StabilityPoolSection({
  markets,
  pools,
  deposits,
  config,
  compact = false,
}: {
  markets: FlexMarket[];
  pools: FlexStabpool[];
  deposits: FlexSpDeposit[];
  config: FlexConfig | null;
  compact?: boolean;
}) {
  const debtSym = config ? symbolCode(config.debt_symbol) : "HEDGE";
  const debtPrec = parseAsset(config?.min_debt)?.precision ?? 6;
  const totalSp = pools.reduce((a, p) => a + (parseAsset(p.hedge)?.amount ?? 0n), 0n);
  const myTotal = deposits.reduce((a, d) => a + (parseAsset(d.hedge)?.amount ?? 0n), 0n);

  return (
    <section>
      <div className="mb-3 flex items-center justify-between gap-3">
        <div>
          <h2 className="section-title">Stability Pool</h2>
          <p className="mt-0.5 text-xs text-muted-foreground">
            Deposit {debtSym} to absorb liquidations and earn interest.
          </p>
        </div>
        <div className="flex gap-2">
          <Link to="/earn" className="btn btn-primary btn-sm">
            Deposit {debtSym}
          </Link>
          <Link to="/earn" className="btn btn-outline btn-sm">
            Withdraw
          </Link>
        </div>
      </div>

      <div className="mb-3 grid grid-cols-2 gap-3 sm:grid-cols-4">
        <MiniStat label={`Total ${debtSym}`} value={`${formatCompact(totalSp, debtPrec)} ${debtSym}`} />
        <MiniStat label="Your Deposit" value={`${formatCompact(myTotal, debtPrec)} ${debtSym}`} />
        <MiniStat
          label="Pool Share"
          value={
            totalSp > 0n && myTotal > 0n
              ? `${((Number(myTotal) / Number(totalSp)) * 100).toFixed(2)}%`
              : "—"
          }
        />
        <MiniStat label="Pools" value={String(pools.length || markets.length)} />
      </div>

      {!compact && (
        <div className="panel overflow-x-auto">
          <table className="w-full min-w-[640px] text-left text-xs">
            <thead>
              <tr className="border-b border-border text-muted-foreground">
                <th className="px-4 py-2.5 font-medium">Market</th>
                <th className="px-3 py-2.5 font-medium">TVL</th>
                <th className="px-3 py-2.5 font-medium">Coll Gains</th>
                <th className="px-3 py-2.5 font-medium">Your Deposit</th>
                <th className="px-4 py-2.5 font-medium text-right">Action</th>
              </tr>
            </thead>
            <tbody>
              {markets.map((m) => {
                const sym = symbolCode(m.coll_symbol) || symbolCode(m.total_coll);
                const pool = pools.find((p) => String(p.market_id) === String(m.id));
                const dep = deposits.find((d) => String(d.market_id) === String(m.id));
                return (
                  <tr key={String(m.id)} className="border-b border-border/50 last:border-0">
                    <td className="px-4 py-3 font-medium">{sym} Pool</td>
                    <td className="px-3 py-3 font-mono tabular-nums">{pool?.hedge ?? `0 ${debtSym}`}</td>
                    <td className="px-3 py-3 font-mono tabular-nums">{pool?.coll_balance ?? "—"}</td>
                    <td className="px-3 py-3 font-mono tabular-nums">{dep?.hedge ?? `0 ${debtSym}`}</td>
                    <td className="px-4 py-3 text-right">
                      <Link to={`/earn?market=${m.id}`} className="text-xs font-medium text-primary hover:underline">
                        Deposit
                      </Link>
                    </td>
                  </tr>
                );
              })}
            </tbody>
          </table>
          {!markets.length && (
            <p className="px-4 py-5 text-center text-xs text-muted-foreground">No stability pools yet.</p>
          )}
        </div>
      )}
    </section>
  );
}

function MiniStat({ label, value }: { label: string; value: string }) {
  return (
    <div className="glass-field px-3 py-2.5">
      <p className="text-[10px] uppercase tracking-wider text-muted-foreground">{label}</p>
      <p className="mt-1 font-mono text-sm font-medium tabular-nums">{value}</p>
    </div>
  );
}
