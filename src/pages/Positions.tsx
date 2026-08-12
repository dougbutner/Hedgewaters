import { Link, useSearchParams } from "react-router-dom";
import { PositionPanel } from "@/components/borrow/PositionPanel";
import { UserPosition } from "@/components/borrow/UserPosition";
import { ConnectionError, CompactEmpty } from "@/components/ui/ConnectionError";
import { useFlexData } from "@/hooks/useFlexData";
import { useWallet } from "@/hooks/WalletProvider";

export default function Positions() {
  const [params] = useSearchParams();
  const { actor, isLoggedIn, transact } = useWallet();
  const { loading, error, config, markets, myPositions, mySurplus, reload } = useFlexData(actor);

  return (
    <div className="space-y-4">
      {!isLoggedIn ? (
        <CompactEmpty title="Connect a wallet">View and manage your Hedge CDP positions.</CompactEmpty>
      ) : error ? (
        <ConnectionError error={error} onRetry={() => void reload()} />
      ) : loading ? (
        <div className="panel h-48 animate-pulse bg-surface" />
      ) : !myPositions.length ? (
        <CompactEmpty
          title="No open positions"
          action={
            <Link to="/" className="btn btn-primary btn-sm">
              Borrow
            </Link>
          }
        >
          Open a position from the Borrow workspace.
        </CompactEmpty>
      ) : (
        <div className="grid gap-4 lg:grid-cols-[minmax(0,1fr)_minmax(0,380px)]">
          <UserPosition positions={myPositions} markets={markets} config={config} />
          <div className="panel">
            <div className="panel-header">
              <h2 className="text-sm font-semibold">Manage position</h2>
            </div>
            <div className="panel-body">
              <PositionPanel
                positions={myPositions}
                markets={markets}
                config={config}
                surpluses={mySurplus}
                actor={actor}
                transact={transact}
                onDone={() => void reload()}
              />
            </div>
          </div>
        </div>
      )}
      {params.get("id") && <p className="sr-only">Focus position {params.get("id")}</p>}
    </div>
  );
}
