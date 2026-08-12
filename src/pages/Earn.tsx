import { useSearchParams } from "react-router-dom";
import { StabilityPoolCard } from "@/components/earn/StabilityPoolCard";
import { StabilityPoolSection } from "@/components/earn/StabilityPoolSection";
import { ConnectionError, CompactEmpty } from "@/components/ui/ConnectionError";
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
    <div className="space-y-4">
      {error ? (
        <ConnectionError error={error} onRetry={() => void reload()} />
      ) : loading ? (
        <div className="panel h-40 animate-pulse bg-surface" />
      ) : (
        <>
          <StabilityPoolSection
            markets={markets}
            pools={pools}
            deposits={mySp}
            config={config}
            compact
          />
          {!ordered.length ? (
            <CompactEmpty title="No stability pools yet">Markets must exist before SP deposits.</CompactEmpty>
          ) : (
            <div className="grid gap-3 md:grid-cols-2">
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
        </>
      )}
    </div>
  );
}
