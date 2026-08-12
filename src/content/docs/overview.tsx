import { Link } from "react-router-dom";

export function OverviewDoc() {
  return (
    <article className="prose-docs space-y-6 text-sm leading-relaxed text-muted-foreground">
      <p>
        Hedgewaters is three separate Antelope contracts on <strong className="text-foreground">XPR Network</strong>.
        UI is TypeScript/React only. On-chain code is C++ / CDT.
      </p>

      <div className="overflow-x-auto">
        <table className="w-full min-w-[480px] text-left">
          <thead>
            <tr className="border-b border-border text-foreground">
              <th className="py-2 pr-4 font-medium">Product</th>
              <th className="py-2 pr-4 font-medium">Contract</th>
              <th className="py-2 font-medium">What</th>
            </tr>
          </thead>
          <tbody>
            <tr className="border-b border-border/60">
              <td className="py-2 pr-4 text-foreground">A — Hedge CDP</td>
              <td className="py-2 pr-4">
                <code>flexloans</code>
              </td>
              <td className="py-2">
                Multi-collateral CDP → mint HXUSD.{" "}
                <Link to="/borrow" className="text-primary hover:underline">
                  App
                </Link>
              </td>
            </tr>
            <tr className="border-b border-border/60">
              <td className="py-2 pr-4 text-foreground">B — EASY half-loan</td>
              <td className="py-2 pr-4">
                <code>easyloan</code>
              </td>
              <td className="py-2">
                EASY@mon3y 50/50 Alcor + reflections.{" "}
                <Link to="/easy" className="text-primary hover:underline">
                  App
                </Link>
              </td>
            </tr>
            <tr>
              <td className="py-2 pr-4 text-foreground">C — Flash</td>
              <td className="py-2 pr-4">
                <code>flashloan</code>
              </td>
              <td className="py-2">
                Same-tx flash from reserves.{" "}
                <Link to="/flash" className="text-primary hover:underline">
                  App
                </Link>
              </td>
            </tr>
          </tbody>
        </table>
      </div>

      <h3 className="font-display text-2xl text-foreground">Shared safety rules</h3>
      <ul className="list-disc space-y-2 pl-5">
        <li>Never <code>get_balance</code> → overwrite accounting (Vaults.sx class of bug).</li>
        <li>Validate → write tables → transfer/mint.</li>
        <li>Notify = deposit accept only (+ narrow memos).</li>
        <li>Fixed-point math only. <code>check()</code> prefixes: <code>flexloans:</code> / <code>easyloan:</code> / <code>flashloan:</code>.</li>
      </ul>

      <h3 className="font-display text-2xl text-foreground">Stack</h3>
      <p>
        Contracts: eosio-cpp. App: Vite + React + Tailwind. Wallets: WebAuth (<code>@proton/web-sdk</code>) and
        Anchor (WharfKit). Tests live under <code>tests/</code> only.
      </p>
    </article>
  );
}
