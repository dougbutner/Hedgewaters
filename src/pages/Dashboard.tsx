import { Link } from "react-router-dom";
import { MarketTable } from "@/components/markets/MarketTable";
import { EmptyState } from "@/components/ui/EmptyState";
import { StatSkeleton, TableSkeleton } from "@/components/ui/StatSkeleton";
import { useFlexData } from "@/hooks/useFlexData";
import { useWallet } from "@/hooks/WalletProvider";
import { parseAsset, symbolCode } from "@/lib/chain/asset";
import { formatPctBps } from "@/lib/chain/math";
import { flexAction } from "@/lib/chain/flexloans";

export default function Dashboard() {
  const { actor, transact } = useWallet();
  const { loading, error, config, markets, pools, positions, mySurplus, reload } = useFlexData(actor);

  const totalDebt = markets.reduce((acc, m) => acc + (parseAsset(m.total_debt)?.amount ?? 0n), 0n);
  const debtPrec = parseAsset(config?.min_debt)?.precision ?? parseAsset(markets[0]?.total_debt)?.precision ?? 4;
  const debtSym = config ? symbolCode(config.debt_symbol) : "HXUSD";
  const spTvl = pools.reduce((acc, p) => acc + (parseAsset(p.hxusd)?.amount ?? 0n), 0n);

  return (
    <div className="space-y-8">
      <div>
        <h1 className="page-title">Borrow HXUSD against collateral</h1>
        <p className="mt-2 max-w-2xl text-muted-foreground">
          Hedge CDP (flexloans) — isolated markets, user-set rate buckets, Stability Pool, liquidations, and
          redemptions.{" "}
          <Link to="/docs/flexloans" className="text-primary hover:underline">
            Read the docs
          </Link>
        </p>
      </div>

      {loading ? (
        <div className="grid gap-4 sm:grid-cols-3">
          <StatSkeleton />
          <StatSkeleton />
          <StatSkeleton />
        </div>
      ) : (
        <div className="grid gap-4 sm:grid-cols-3">
          <div className="card p-5">
            <p className="text-sm text-muted-foreground">Total debt</p>
            <p className="mt-2 font-display text-3xl tracking-wide">
              {formatUnits(totalDebt, debtPrec)} {debtSym}
            </p>
          </div>
          <div className="card p-5">
            <p className="text-sm text-muted-foreground">Stability Pool</p>
            <p className="mt-2 font-display text-3xl tracking-wide">
              {formatUnits(spTvl, debtPrec)} {debtSym}
            </p>
          </div>
          <div className="card p-5">
            <p className="text-sm text-muted-foreground">Borrow fee</p>
            <p className="mt-2 font-display text-3xl tracking-wide">
              {formatPctBps(config?.borrow_fee_bps ?? 0)}
            </p>
            <p className="mt-1 text-xs text-muted-foreground">{markets.length} markets · {positions.length} positions</p>
          </div>
        </div>
      )}

      {error && (
        <EmptyState title="Markets unavailable">
          Could not reach the XPR RPC or flexloans is not deployed yet ({error}). Set{" "}
          <code>VITE_FLEXLOANS_ACCOUNT</code> if the contract lives on another account.
        </EmptyState>
      )}

      {loading ? (
        <TableSkeleton rows={4} />
      ) : markets.length ? (
        <div>
          <h2 className="mb-3 font-display text-2xl">Markets</h2>
          <MarketTable markets={markets} />
        </div>
      ) : (
        !error && (
          <EmptyState title="No markets yet">
            Admin <code>addmarket</code> has not been called. You can still browse{" "}
            <Link to="/docs" className="text-primary hover:underline">
              Docs
            </Link>{" "}
            and{" "}
            <Link to="/flash" className="text-primary hover:underline">
              Flash
            </Link>
            .
          </EmptyState>
        )
      )}

      {mySurplus.length > 0 && (
        <div className="card p-5">
          <h2 className="font-display text-2xl">Claim surplus</h2>
          <ul className="mt-3 space-y-2 text-sm">
            {mySurplus.map((s) => (
              <li key={String(s.position_id)} className="flex items-center justify-between">
                <span>
                  Position #{String(s.position_id)} · {s.coll}
                </span>
                <button
                  type="button"
                  className="btn btn-primary btn-sm"
                  onClick={() =>
                    void transact([flexAction("claimsurplus", { position_id: Number(s.position_id) })]).then(
                      () => reload()
                    )
                  }
                >
                  Claim
                </button>
              </li>
            ))}
          </ul>
        </div>
      )}
    </div>
  );
}

function formatUnits(amount: bigint, precision: number): string {
  if (precision <= 0) return amount.toString();
  const s = amount.toString().padStart(precision + 1, "0");
  return `${s.slice(0, -precision)}.${s.slice(-precision)}`;
}
