import { useSearchParams } from "react-router-dom";
import { StabilityPoolCard } from "@/components/earn/StabilityPoolCard";
import { EmptyState } from "@/components/ui/EmptyState";
import { StatSkeleton } from "@/components/ui/StatSkeleton";
import { useFlexData } from "@/hooks/useFlexData";
import { useWallet } from "@/hooks/WalletProvider";

export default function Earn() {
  const [params] = useSearchParams();
  const focus = params.get("market");
  const { actor, isLoggedIn, transact } = useWallet();
  const { loading, error, config, markets, pools, mySp, reload } = useFlexData(actor);

  const ordered = focus
    ? [...markets].sort((a, b) => (String(a.id) === focus ? -1 : String(b.id) === focus ? 1 : 0))
    : markets;

  return (
    <div className="space-y-6">
      <div>
        <h1 className="page-title">Deposit HXUSD to earn rewards</h1>
        <p className="mt-2 max-w-2xl text-muted-foreground">
          Stability Pool depositors absorb liquidations (gain collateral) and receive 100% of interest.
        </p>
      </div>

      {loading ? (
        <div className="grid gap-4 md:grid-cols-2">
          <StatSkeleton className="h-56" />
          <StatSkeleton className="h-56" />
        </div>
      ) : error ? (
        <EmptyState title="Could not load pools">{error}</EmptyState>
      ) : !ordered.length ? (
        <EmptyState title="No stability pools yet">Markets must exist before SP deposits.</EmptyState>
      ) : (
        <div className="grid gap-4 md:grid-cols-2">
          {ordered.map((m) => (
            <StabilityPoolCard
              key={String(m.id)}
              market={m}
              pool={pools.find((p) => String(p.market_id) === String(m.id))}
              deposit={mySp.find((d) => String(d.market_id) === String(m.id))}
              config={config}
              actor={actor}
              isLoggedIn={isLoggedIn}
              transact={transact}
              onDone={() => void reload()}
            />
          ))}
        </div>
      )}
    </div>
  );
}
