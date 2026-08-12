import { Link } from "react-router-dom";
import type { FlashConfig, FlashRoute } from "@/lib/chain/flashloan";
import { formatPctBps } from "@/lib/chain/math";

export function FlashOverview({
  config,
  routes,
}: {
  config: FlashConfig | null;
  routes: FlashRoute[];
}) {
  const fee = config?.fee_bps ?? 3;

  return (
    <div className="space-y-6">
      <div className="grid gap-4 md:grid-cols-3">
        {[
          { n: "1", t: "Optional convert", d: "Turn other reserves into the loan token via Alcor or proton.swaps." },
          { n: "2", t: "Lend + callback", d: "Snapshot balance + fee, send principal, then callback the receiver." },
          { n: "3", t: "Repay or revert", d: "checkbalance requires END ≥ SNAPSHOT + FEE or the whole tx fails." },
        ].map((s) => (
          <div key={s.n} className="panel p-4">
            <div className="text-xs text-primary">Step {s.n}</div>
            <h2 className="mt-1 text-base font-semibold">{s.t}</h2>
            <p className="mt-2 text-sm text-muted-foreground">{s.d}</p>
          </div>
        ))}
      </div>

      <div className="panel overflow-x-auto p-0">
        <div className="px-5 pt-5">
          <h2 className="text-sm font-semibold">Modes</h2>
          <p className="mt-1 text-sm text-muted-foreground">
            Default action is <code className="text-primary">flash</code> — CDT cannot name an action like the
            contract class.
          </p>
        </div>
        <table className="mt-4 w-full min-w-[520px] text-left text-sm">
          <thead>
            <tr className="border-y border-border text-muted-foreground">
              <th className="px-5 py-3 font-medium">Action</th>
              <th className="px-3 py-3 font-medium">Behavior</th>
            </tr>
          </thead>
          <tbody>
            <tr className="border-b border-border/60">
              <td className="px-5 py-3 font-medium">reserveflash</td>
              <td className="px-3 py-3 text-muted-foreground">Own loan-token reserves only</td>
            </tr>
            <tr className="border-b border-border/60">
              <td className="px-5 py-3 font-medium">convflash</td>
              <td className="px-3 py-3 text-muted-foreground">
                Convert pay-token via swap.alcor or proton.swaps, then lend
              </td>
            </tr>
            <tr>
              <td className="px-5 py-3 font-medium">flash</td>
              <td className="px-3 py-3 text-muted-foreground">
                Prefer reserve; else cheapest admin route + caller pay
              </td>
            </tr>
          </tbody>
        </table>
      </div>

      <div className="grid gap-4 md:grid-cols-2">
        <div className="panel p-4">
          <h2 className="text-sm font-semibold">Fees</h2>
          <p className="mt-2 text-3xl font-semibold tracking-wide text-primary">
            {formatPctBps(fee)} <span className="text-base text-muted-foreground">default</span>
          </p>
          <p className="mt-3 text-sm text-muted-foreground">
            0 bps for Flex tokens EASY, WON, MEME, GRAMS (plus admin <code>zerofee</code> rows).
          </p>
          {config?.paused && <p className="mt-2 text-sm text-destructive">Flash contract is paused.</p>}
        </div>
        <div className="panel p-4">
          <h2 className="text-sm font-semibold">Invariant</h2>
          <p className="mt-2 font-mono text-sm text-primary">END_BALANCE ≥ SNAPSHOT + FEE</p>
          <p className="mt-3 text-sm text-muted-foreground">
            Opt the flash account out of Flex transfer tax before lending those tokens, or repayments
            under-deliver and <code>checkbalance</code> fails.
          </p>
        </div>
      </div>

      {routes.length > 0 && (
        <div className="panel overflow-x-auto p-0">
          <h2 className="px-5 pt-5 text-base font-semibold">Conversion routes</h2>
          <table className="mt-4 w-full min-w-[640px] text-left text-sm">
            <thead>
              <tr className="border-y border-border text-muted-foreground">
                <th className="px-5 py-3 font-medium">ID</th>
                <th className="px-3 py-3 font-medium">Loan</th>
                <th className="px-3 py-3 font-medium">Pay</th>
                <th className="px-3 py-3 font-medium">Venue</th>
                <th className="px-3 py-3 font-medium">Est. fee</th>
              </tr>
            </thead>
            <tbody>
              {routes.map((r) => (
                <tr key={String(r.id)} className="border-b border-border/60 last:border-0">
                  <td className="px-5 py-3">{String(r.id)}</td>
                  <td className="px-3 py-3">
                    {r.loan_symbol}@{r.loan_contract}
                  </td>
                  <td className="px-3 py-3">
                    {r.pay_symbol}@{r.pay_contract}
                  </td>
                  <td className="px-3 py-3">{r.venue}</td>
                  <td className="px-3 py-3">{formatPctBps(r.est_fee_bps ?? 0)}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}

      <p className="text-sm text-muted-foreground">
        Integrators call these actions on-chain. Full reference:{" "}
        <Link to="/docs/flashloan" className="text-primary hover:underline">
          Docs → Flashloan
        </Link>
        .
      </p>
    </div>
  );
}
