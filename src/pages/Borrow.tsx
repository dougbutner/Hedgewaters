import { useSearchParams } from "react-router-dom";
import { BorrowWorkspace } from "@/components/borrow/BorrowWorkspace";
import { ProtocolStats } from "@/components/borrow/ProtocolStats";
import { UserPosition } from "@/components/borrow/UserPosition";
import { StabilityPoolSection } from "@/components/earn/StabilityPoolSection";
import { MarketTable } from "@/components/markets/MarketTable";
import { ConnectionError, CompactEmpty } from "@/components/ui/ConnectionError";
import { useFlexData } from "@/hooks/useFlexData";
import { useWallet } from "@/hooks/WalletProvider";
import { symbolCode } from "@/lib/chain/asset";

export default function Borrow() {
  const [params] = useSearchParams();
  const initialMarket = params.get("market") || undefined;
  const { actor, isLoggedIn, transact } = useWallet();
  const {
    loading,
    error,
    config,
    markets,
    pools,
    myPositions,
    mySp,
    reload,
  } = useFlexData(actor);

  const debtSym = config ? symbolCode(config.debt_symbol) : "HXUSD";

  return (
    <div className="stagger space-y-5">
      <div className="flex justify-end">
        <div className="w-full lg:max-w-xl">
          <ProtocolStats config={config} markets={markets} pools={pools} loading={loading} />
        </div>
      </div>

      {/* Main workspace */}
      {error ? (
        <ConnectionError error={error} onRetry={() => void reload()} />
      ) : loading ? (
        <div className="grid gap-4 lg:grid-cols-[1fr_320px]">
          <div className="panel h-80 animate-pulse bg-surface" />
          <div className="panel h-80 animate-pulse bg-surface" />
        </div>
      ) : markets.length ? (
        <BorrowWorkspace
          markets={markets}
          config={config}
          actor={actor}
          isLoggedIn={isLoggedIn}
          transact={transact}
          onDone={() => void reload()}
          initialMarketId={initialMarket}
        />
      ) : (
        <CompactEmpty title="No collateral markets yet">
          Markets will appear here once flexloans is configured with addmarket.
        </CompactEmpty>
      )}

      {/* Your positions */}
      {myPositions.length > 0 && (
        <UserPosition positions={myPositions} markets={markets} config={config} />
      )}

      {/* Markets */}
      <section>
        <div className="mb-3 flex items-center justify-between gap-3">
          <h2 className="section-title">{debtSym} Markets</h2>
        </div>
        {error ? (
          <ConnectionError error={error} onRetry={() => void reload()} />
        ) : loading ? (
          <div className="panel h-32 animate-pulse bg-surface" />
        ) : markets.length ? (
          <MarketTable markets={markets} pools={pools} config={config} />
        ) : (
          <CompactEmpty title="No markets">Awaiting on-chain market configuration.</CompactEmpty>
        )}
      </section>

      {/* Stability pool */}
      <StabilityPoolSection
        markets={markets}
        pools={pools}
        deposits={mySp}
        config={config}
        compact={false}
      />
    </div>
  );
}
