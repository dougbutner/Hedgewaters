import { RedeemForm } from "@/components/redeem/RedeemForm";
import { EmptyState } from "@/components/ui/EmptyState";
import { StatSkeleton } from "@/components/ui/StatSkeleton";
import { useFlexData } from "@/hooks/useFlexData";
import { useWallet } from "@/hooks/WalletProvider";

export default function Redeem() {
  const { actor, isLoggedIn, transact } = useWallet();
  const { loading, error, config, markets, reload } = useFlexData(actor);

  return (
    <div className="space-y-6">
      <div>
        <h1 className="page-title">Redeem HXUSD</h1>
        <p className="mt-2 max-w-2xl text-muted-foreground">
          Swap HXUSD for collateral at ~$1 minus the redeem fee. Hits the lowest rate bucket first.
        </p>
      </div>

      {loading ? (
        <StatSkeleton className="max-w-xl h-64" />
      ) : error ? (
        <EmptyState title="Could not load markets">{error}</EmptyState>
      ) : !markets.length ? (
        <EmptyState title="Nothing to redeem against">No flexloans markets on-chain.</EmptyState>
      ) : (
        <div className="grid gap-6 lg:grid-cols-[minmax(0,28rem)_minmax(0,1fr)]">
          <RedeemForm
            markets={markets}
            config={config}
            actor={actor}
            isLoggedIn={isLoggedIn}
            transact={transact}
            onDone={() => void reload()}
          />
          <div className="card p-5 h-fit">
            <h2 className="font-display text-2xl">How redemption works</h2>
            <ul className="mt-3 list-disc space-y-2 pl-5 text-sm text-muted-foreground">
              <li>Used when HXUSD is below $1 to restore the peg.</li>
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
