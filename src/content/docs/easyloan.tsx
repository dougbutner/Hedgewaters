import { Link } from "react-router-dom";

export function EasyloanDoc() {
  return (
    <article className="space-y-6 text-sm leading-relaxed text-muted-foreground">
      <p>
        Not a Liquity trove. Deposit <strong className="text-foreground">EASY@mon3y</strong> → sell{" "}
        <code>sell_bps</code> (default 50%) on Alcor for an allowlisted out-token. User receives out-token and
        owes that amount; remaining EASY stays stacked. Reflections via takeiteasy accrue to{" "}
        <code>reflection_pool</code> (never <code>get_balance</code>).
      </p>

      <h3 className="text-base font-semibold text-foreground">Memos</h3>
      <ul className="list-disc space-y-2 pl-5">
        <li>
          <code className="text-foreground">loan#&lt;poolId&gt;</code> — EASY in → open loan + Alcor sell
        </li>
        <li>
          <code className="text-foreground">repay#&lt;loanId&gt;</code> — out-token in → repay debt
        </li>
        <li>Untagged inbound EASY → tagged as reflection (not principal)</li>
      </ul>

      <h3 className="text-base font-semibold text-foreground">Actions</h3>
      <p>
        <code>harvest</code> (swap reflection EASY → out-token credits), <code>applycredit</code>,{" "}
        <code>withdraw</code>, plus admin <code>setconfig</code> / <code>addmarket</code> / <code>pause</code>.
      </p>

      <h3 className="text-base font-semibold text-foreground">2% pool cap</h3>
      <pre className="overflow-x-auto rounded-lg bg-secondary p-4 font-mono text-xs text-foreground">
        {`easy_reserve = pool tokenA or tokenB where symbol == EASY
max_sell     = easy_reserve * max_pool_bps / 10000   // default 200
require sell_amount <= max_sell`}
      </pre>

      <h3 className="text-base font-semibold text-foreground">Alcor swap memo</h3>
      <p>
        <code>swapexactin#&lt;poolId&gt;#&lt;recipient&gt;#&lt;minQuantity SYM@contract&gt;#0</code>
      </p>
      <p>
        Example pools (confirm live before allowlist): 4512 XPR↔EASY, 4065 EASY↔XUSDC, 4066 EASY↔XUSDT, 5926
        EASY↔METAL, 5837 EASY↔XXRP.
      </p>

      <p>
        One Alcor inflight at a time (loan_id=0 means harvest) so fills are not mis-attributed.
      </p>

      <p>
        App:{" "}
        <Link to="/easy" className="text-primary hover:underline">
          Easy
        </Link>
      </p>
    </article>
  );
}
