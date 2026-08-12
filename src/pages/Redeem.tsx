import { RedeemForm } from "@/components/redeem/RedeemForm";
import { ConnectionError, CompactEmpty } from "@/components/ui/ConnectionError";
import { useFlexData } from "@/hooks/useFlexData";
import { useWallet } from "@/hooks/WalletProvider";

export default function Redeem() {
  const { actor, isLoggedIn, transact } = useWallet();
  const { loading, error, config, markets, reload } = useFlexData(actor);

  return (
    <div className="space-y-4">
      {loading ? (
        <div className="panel h-48 max-w-xl animate-pulse bg-surface" />
      ) : error ? (
        <ConnectionError error={error} onRetry={() => void reload()} />
      ) : !markets.length ? (
        <CompactEmpty title="Nothing to redeem against">No flexloans markets on-chain.</CompactEmpty>
      ) : (
        <div className="grid gap-4 lg:grid-cols-[minmax(0,28rem)_minmax(0,1fr)]">
          <RedeemForm
            markets={markets}
            config={config}
            actor={actor}
            isLoggedIn={isLoggedIn}
            transact={transact}
            onDone={() => void reload()}
          />
          <div className="panel h-fit">
            <div className="panel-header">
              <h2 className="text-sm font-semibold">How redemption works</h2>
            </div>
            <ul className="panel-body list-disc space-y-2 pl-5 text-xs text-muted-foreground">
              <li>Used when HEDGE is below $1 to restore the peg.</li>
              <li>Positions with the lowest interest rate are redeemed first.</li>
              <li>Collateral and debt decrease together — no net loss for the borrower.</li>
              <li>Zombie positions below min debt are cleaned up on redeem.</li>
            </ul>
          </div>
        </div>
      )}
    </div>
  );
}
