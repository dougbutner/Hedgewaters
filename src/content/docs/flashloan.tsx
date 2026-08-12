import { Link } from "react-router-dom";

export function FlashloanDoc() {
  return (
    <article className="space-y-6 text-sm leading-relaxed text-muted-foreground">
      <p>
        Same-transaction flash lender (sx.flash / Titan spirit, ERC-3156-like). Principal leaves the contract,
        your notifier runs, then <code>checkbalance</code> enforces repayment + fee. Unpaid ⇒ the entire
        transaction reverts.
      </p>

      <h3 className="text-base font-semibold text-foreground">Flow</h3>
      <ol className="list-decimal space-y-2 pl-5">
        <li>Optional DEX conversion of other reserves → loan token</li>
        <li>Snapshot loan-token balance + fee</li>
        <li>Transfer principal to receiver</li>
        <li>
          <code>callback</code> → borrower notifier
        </li>
        <li>
          <code>checkbalance</code> — unpaid ⇒ revert
        </li>
      </ol>

      <h3 className="text-base font-semibold text-foreground">Modes</h3>
      <div className="overflow-x-auto">
        <table className="w-full min-w-[480px] text-left">
          <thead>
            <tr className="border-b border-border text-foreground">
              <th className="py-2 pr-3 font-medium">Action</th>
              <th className="py-2 font-medium">Behavior</th>
            </tr>
          </thead>
          <tbody>
            <tr className="border-b border-border/60">
              <td className="py-2 pr-3 font-mono text-foreground">reserveflash</td>
              <td className="py-2">Own loan-token reserves only</td>
            </tr>
            <tr className="border-b border-border/60">
              <td className="py-2 pr-3 font-mono text-foreground">convflash</td>
              <td className="py-2">
                <code>swap.alcor</code> or <code>proton.swaps</code>, then lend
              </td>
            </tr>
            <tr>
              <td className="py-2 pr-3 font-mono text-foreground">flash</td>
              <td className="py-2">Prefer reserve; else cheapest admin <code>routes</code> row + caller pay</td>
            </tr>
          </tbody>
        </table>
      </div>
      <p>
        Default integrator entry is <code className="text-foreground">flash</code>, not <code>flashloan</code> —
        CDT forbids an action named like the contract class.
      </p>

      <h3 className="text-base font-semibold text-foreground">Fees</h3>
      <ul className="list-disc space-y-2 pl-5">
        <li>Default 3 bps (0.03%)</li>
        <li>0 bps for EASY@mon3y, WON@w3won, MEME@m3m3, GRAMS@gold.mon3y</li>
        <li>
          Extra zero-fee tokens via <code>addzerofee</code>
        </li>
      </ul>

      <h3 className="text-base font-semibold text-foreground">Invariant</h3>
      <p className="font-mono text-foreground">END_BALANCE ≥ SNAPSHOT + FEE</p>
      <p>
        Deploy: opt the flash account out of Flex transfer tax (noflexzone / optoutoftax) or repayments
        under-deliver and <code>checkbalance</code> fails. Only one flash active at a time (<code>state</code>{" "}
        singleton).
      </p>

      <h3 className="text-base font-semibold text-foreground">Admin</h3>
      <p>
        <code>setconfig</code>, <code>pause</code>, <code>setroute</code> / <code>delroute</code>,{" "}
        <code>addzerofee</code> / <code>delzerofee</code>, <code>withdraw</code>.
      </p>

      <p>
        Product page:{" "}
        <Link to="/flash" className="text-primary hover:underline">
          Flash
        </Link>
      </p>
    </article>
  );
}
