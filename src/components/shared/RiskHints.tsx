import { Link } from "react-router-dom";

export function RiskHints() {
  return (
    <div className="panel p-5">
      <h2 className="text-sm font-semibold">Rates &amp; redemptions</h2>
      <p className="mt-2 text-sm text-muted-foreground">
        Redemptions help keep HEDGE near $1. If you are redeemed, collateral and debt fall together —
        no net loss, but your rate bucket determines who is hit first.
      </p>
      <ul className="mt-4 list-disc space-y-2 pl-5 text-sm text-muted-foreground">
        <li>Redemptions occur when HEDGE trades below $1.</li>
        <li>Lowest interest-rate positions are redeemed first.</li>
        <li>Raising your rate bucket reduces redemption risk.</li>
        <li>Liquidation risk rises if ICR falls below MCR.</li>
      </ul>
      <Link to="/docs/flexloans" className="mt-4 inline-block text-sm text-primary hover:underline">
        Learn more in Docs →
      </Link>
    </div>
  );
}
