import { USE_MOCK_CHAIN } from "@/services/walletConstants";

/** Thin banner when Vite is serving SQL fixtures from tests/mock-chain. */
export function TestModeBanner() {
  if (!USE_MOCK_CHAIN) return null;
  return (
    <div className="border-b border-primary/30 bg-primary/10 px-4 py-1.5 text-center text-[11px] font-medium tracking-wide text-primary">
      TEST MODE — mock chain fixtures from <code className="text-foreground">tests/mock-chain</code>
      {" · "}
      actions update local SQL (not mainnet)
    </div>
  );
}
