import { useMemo, useState } from "react";
import { useSearchParams } from "react-router-dom";
import { BorrowForm } from "@/components/borrow/BorrowForm";
import { PositionPanel } from "@/components/borrow/PositionPanel";
import { RiskHints } from "@/components/shared/RiskHints";
import { EmptyState } from "@/components/ui/EmptyState";
import { StatSkeleton } from "@/components/ui/StatSkeleton";
import { useFlexData } from "@/hooks/useFlexData";
import { useWallet } from "@/hooks/WalletProvider";

export default function Borrow() {
  const [params] = useSearchParams();
  const initialMarket = params.get("market") || undefined;
  const { actor, isLoggedIn, transact } = useWallet();
  const { loading, error, config, markets, myPositions, mySurplus, reload } = useFlexData(actor);
  const [tab, setTab] = useState<"open" | "manage">(myPositions.length ? "manage" : "open");

  const showManage = useMemo(() => tab === "manage" && myPositions.length > 0, [tab, myPositions.length]);

  return (
    <div className="space-y-6">
      <div>
        <h1 className="page-title">Borrow HXUSD</h1>
        <p className="mt-2 text-muted-foreground">Open a CDP or manage an existing position.</p>
      </div>

      <div className="flex gap-2">
        <button
          type="button"
          className={`btn btn-sm ${!showManage ? "btn-primary" : "btn-outline"}`}
          onClick={() => setTab("open")}
        >
          Open
        </button>
        <button
          type="button"
          className={`btn btn-sm ${showManage ? "btn-primary" : "btn-outline"}`}
          onClick={() => setTab("manage")}
          disabled={!myPositions.length}
        >
          Manage {myPositions.length ? `(${myPositions.length})` : ""}
        </button>
      </div>

      {loading ? (
        <div className="grid gap-4 lg:grid-cols-2">
          <StatSkeleton className="h-64" />
          <StatSkeleton className="h-64" />
        </div>
      ) : error ? (
        <EmptyState title="Could not load flexloans">{error}</EmptyState>
      ) : !markets.length ? (
        <EmptyState title="No collateral markets">Deploy flexloans and call addmarket first.</EmptyState>
      ) : (
        <div className="grid gap-6 lg:grid-cols-[minmax(0,1fr)_minmax(0,20rem)]">
          <div>
            {showManage ? (
              <PositionPanel
                positions={myPositions}
                markets={markets}
                config={config}
                surpluses={mySurplus}
                actor={actor}
                transact={transact}
                onDone={() => void reload()}
              />
            ) : (
              <BorrowForm
                markets={markets}
                config={config}
                actor={actor}
                isLoggedIn={isLoggedIn}
                transact={transact}
                onDone={() => void reload()}
                initialMarketId={initialMarket}
              />
            )}
          </div>
          <RiskHints />
        </div>
      )}
    </div>
  );
}
