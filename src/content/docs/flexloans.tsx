import { Link } from "react-router-dom";

export function FlexloansDoc() {
  return (
    <article className="space-y-6 text-sm leading-relaxed text-muted-foreground">
      <p>
        Liquity-inspired CDP: deposit allowlisted collateral, mint <strong className="text-foreground">HXUSD</strong>{" "}
        at a rate bucket, earn via Stability Pool, liquidate below MCR, redeem for peg (lowest rate first).
        HXUSD is an external <code>eosio.token</code>; flexloans is issuer (<code>issue</code> / <code>retire</code>).
      </p>

      <h3 className="font-display text-2xl text-foreground">Transfer memos → flexloans</h3>
      <div className="overflow-x-auto">
        <table className="w-full min-w-[520px] text-left">
          <thead>
            <tr className="border-b border-border text-foreground">
              <th className="py-2 pr-3 font-medium">Memo</th>
              <th className="py-2 pr-3 font-medium">Token</th>
              <th className="py-2 font-medium">Effect</th>
            </tr>
          </thead>
          <tbody>
            {[
              ["open#<marketId>#<rateBps>", "coll", "Open position"],
              ["addcoll#<posId>", "coll", "Add collateral"],
              ["repay#<posId>", "HXUSD", "Repay debt"],
              ["sp#<marketId>", "HXUSD", "Deposit to Stability Pool"],
              ["redeem#<marketId>", "HXUSD", "Redeem for collateral"],
            ].map((row) => (
              <tr key={row[0]} className="border-b border-border/60 last:border-0">
                <td className="py-2 pr-3 font-mono text-foreground">{row[0]}</td>
                <td className="py-2 pr-3">{row[1]}</td>
                <td className="py-2">{row[2]}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      <h3 className="font-display text-2xl text-foreground">Actions</h3>
      <p>
        <code>borrow</code>, <code>withdrawcoll</code>, <code>setrate</code>, <code>closepos</code>,{" "}
        <code>withdrawsp</code>, <code>claimsp</code>, <code>liquidate</code>, <code>claimsurplus</code>, plus
        admin/oracle (<code>setconfig</code>, <code>addmarket</code>, <code>setprice</code>, <code>pause</code>).
      </p>

      <h3 className="font-display text-2xl text-foreground">Rate buckets</h3>
      <p>
        50 / 100 / 200 / 400 / 600 / 1000 bps. Interest accrues on touch; 100% of interest goes to the SP.
        Redemptions hit the lowest rate first (then oldest seq). Upfront borrow fee applies.
      </p>

      <h3 className="font-display text-2xl text-foreground">Risks</h3>
      <ul className="list-disc space-y-2 pl-5">
        <li>Liquidation when ICR &lt; MCR (no Recovery Mode in v1).</li>
        <li>CCR gates new borrowing when the market is too leveraged.</li>
        <li>Oracle price must be fresh and non-zero.</li>
      </ul>

      <p>
        App: <Link to="/borrow" className="text-primary hover:underline">Borrow</Link> ·{" "}
        <Link to="/earn" className="text-primary hover:underline">Earn</Link> ·{" "}
        <Link to="/redeem" className="text-primary hover:underline">Redeem</Link>
      </p>
    </article>
  );
}
