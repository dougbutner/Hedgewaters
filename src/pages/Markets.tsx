import { MarketTable } from "@/components/markets/MarketTable";
import { ProtocolStats } from "@/components/borrow/ProtocolStats";
import { ConnectionError, CompactEmpty } from "@/components/ui/ConnectionError";
import { useFlexData } from "@/hooks/useFlexData";
import { useWallet } from "@/hooks/WalletProvider";

export default function Markets() {
  const { actor } = useWallet();
  const { loading, error, config, markets, pools, reload } = useFlexData(actor);

  return (
    <div className="space-y-4">
      <div className="flex justify-end">
        <div className="w-full lg:max-w-xl">
          <ProtocolStats config={config} markets={markets} pools={pools} loading={loading} />
        </div>
      </div>

      {error ? (
        <ConnectionError error={error} onRetry={() => void reload()} />
      ) : loading ? (
        <div className="panel h-40 animate-pulse bg-surface" />
      ) : markets.length ? (
        <MarketTable markets={markets} pools={pools} config={config} />
      ) : (
        <CompactEmpty title="No markets configured">
          Deploy flexloans and call addmarket to list collateral markets.
        </CompactEmpty>
      )}
    </div>
  );
}
