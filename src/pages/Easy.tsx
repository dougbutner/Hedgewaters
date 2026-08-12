import { Link } from "react-router-dom";
import { EasyLoanForm } from "@/components/easy/EasyLoanForm";
import { EmptyState } from "@/components/ui/EmptyState";
import { StatSkeleton } from "@/components/ui/StatSkeleton";
import { useEasyData } from "@/hooks/useEasyData";
import { useWallet } from "@/hooks/WalletProvider";

export default function Easy() {
  const { actor, isLoggedIn, transact } = useWallet();
  const { loading, error, config, vault, markets, myLoans, reload } = useEasyData(actor);

  return (
    <div className="space-y-6">
      <div>
        <h1 className="page-title">EASY half-loan</h1>
        <p className="mt-2 max-w-2xl text-muted-foreground">
          Product B — not Liquity. 50/50 Alcor sell + stacked EASY with reflections.{" "}
          <Link to="/docs/easyloan" className="text-primary hover:underline">
            Docs
          </Link>
        </p>
      </div>

      {loading ? (
        <StatSkeleton className="h-64" />
      ) : error ? (
        <EmptyState title="Could not load easyloan">
          {error}. Set <code>VITE_EASYLOAN_ACCOUNT</code> if needed.
        </EmptyState>
      ) : (
        <EasyLoanForm
          config={config}
          vault={vault}
          markets={markets}
          loans={myLoans}
          actor={actor}
          isLoggedIn={isLoggedIn}
          transact={transact}
          onDone={() => void reload()}
        />
      )}
    </div>
  );
}
