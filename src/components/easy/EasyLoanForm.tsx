import { useState } from "react";
import { AmountField } from "@/components/shared/AmountField";
import { EASYLOAN_ACCOUNT, EASY_SYMBOL, EASY_TOKEN_CONTRACT } from "@/lib/chain/accounts";
import { parseAsset, parseDecimalToAsset, symbolCode } from "@/lib/chain/asset";
import { formatPctBps } from "@/lib/chain/math";
import {
  easyAction,
  transferAction,
  type EasyConfig,
  type EasyLoan,
  type EasyMarket,
  type EasyVault,
  LOAN_OPEN,
  LOAN_PENDING,
} from "@/lib/chain/easyloan";

type Transact = (
  actions: Array<{ account: string; name: string; data: Record<string, unknown> }>
) => Promise<unknown>;

export function EasyLoanForm({
  config,
  vault,
  markets,
  loans,
  actor,
  isLoggedIn,
  transact,
  onDone,
}: {
  config: EasyConfig | null;
  vault: EasyVault | null;
  markets: EasyMarket[];
  loans: EasyLoan[];
  actor: string | null;
  isLoggedIn: boolean;
  transact: Transact;
  onDone: () => void;
}) {
  const [poolId, setPoolId] = useState(markets[0] ? String(markets[0].pool_id) : "");
  const [easyAmt, setEasyAmt] = useState("");
  const [repayAmt, setRepayAmt] = useState("");
  const [loanId, setLoanId] = useState(loans[0] ? String(loans[0].id) : "");
  const [harvestAmt, setHarvestAmt] = useState("");
  const [minOut, setMinOut] = useState("");
  const [busy, setBusy] = useState(false);
  const [err, setErr] = useState<string | null>(null);
  const [msg, setMsg] = useState<string | null>(null);

  const market = markets.find((m) => String(m.pool_id) === poolId) ?? markets[0];
  const loan = loans.find((l) => String(l.id) === loanId) ?? loans[0];
  const easyContract = config?.easy_contract || EASY_TOKEN_CONTRACT;
  const easySym = config ? symbolCode(config.easy_symbol) : EASY_SYMBOL;
  const easyPrec = parseAsset(`0.0000 ${easySym}`)?.precision || parseAsset(vault?.easy_stacked_total)?.precision || 4;
  const outSym = market ? symbolCode(market.out_symbol) : "OUT";
  const outPrec = parseAsset(loan?.debt_out)?.precision ?? parseAsset(`0.0000 ${outSym}`)?.precision ?? 4;

  const run = async (actions: Array<{ account: string; name: string; data: Record<string, unknown> }>, ok: string) => {
    setErr(null);
    setMsg(null);
    if (!actor) {
      setErr("Connect wallet.");
      return;
    }
    setBusy(true);
    try {
      await transact(actions);
      setMsg(ok);
      onDone();
    } catch (e) {
      setErr(e instanceof Error ? e.message : "Transaction failed.");
    } finally {
      setBusy(false);
    }
  };

  const statusLabel = (s: number) =>
    s === LOAN_PENDING ? "pending fill" : s === LOAN_OPEN ? "open" : `status ${s}`;

  return (
    <div className="space-y-6">
      <div className="rounded-lg border border-primary/30 bg-primary/5 p-4 text-sm">
        <strong>Product B — not a CDP.</strong> Deposit EASY@mon3y; 50% sells on Alcor for an out-token
        you receive (and owe). The other 50% stays stacked and earns reflections. Cap:{" "}
        {formatPctBps(config?.max_pool_bps ?? 200)} of pool EASY reserve.
      </div>

      <div className="card p-5">
        <h2 className="font-display text-2xl">Open half-loan</h2>
        <p className="mt-1 text-sm text-muted-foreground">
          Transfer memo <code className="text-primary">loan#&lt;poolId&gt;</code>
        </p>
        <select
          className="input mt-3"
          value={String(market?.pool_id ?? "")}
          onChange={(e) => setPoolId(e.target.value)}
        >
          {markets.filter((m) => m.active !== false).map((m) => (
            <option key={String(m.pool_id)} value={String(m.pool_id)}>
              Pool {String(m.pool_id)} → {symbolCode(m.out_symbol)}
            </option>
          ))}
        </select>
        {!markets.length && (
          <p className="mt-2 text-sm text-muted-foreground">No easyloan markets on-chain yet.</p>
        )}
        <div className="mt-4">
          <AmountField label="EASY to deposit" value={easyAmt} onChange={setEasyAmt} symbol={easySym} />
        </div>
        <button
          type="button"
          className="btn btn-primary mt-4 w-full"
          disabled={!isLoggedIn || busy || !market}
          onClick={() => {
            const q = parseDecimalToAsset(easyAmt, easyPrec, easySym);
            if (!q || !market || !actor) return setErr("Enter EASY amount.");
            void run(
              [transferAction(easyContract, actor, EASYLOAN_ACCOUNT, q, `loan#${market.pool_id}`)],
              "Half-loan opened (waiting Alcor fill)."
            );
          }}
        >
          {!isLoggedIn ? "Connect wallet" : "Open half-loan"}
        </button>
      </div>

      <div className="card p-5">
        <h2 className="font-display text-2xl">Your loans</h2>
        {!loans.length ? (
          <p className="mt-2 text-sm text-muted-foreground">No open easyloans for this account.</p>
        ) : (
          <>
            <select className="input mt-3" value={String(loan?.id ?? "")} onChange={(e) => setLoanId(e.target.value)}>
              {loans.map((l) => (
                <option key={String(l.id)} value={String(l.id)}>
                  #{String(l.id)} · {statusLabel(Number(l.status))} · debt {l.debt_out}
                </option>
              ))}
            </select>
            {loan && (
              <dl className="mt-4 grid grid-cols-2 gap-3 text-sm">
                <div>
                  <dt className="text-muted-foreground">Stacked EASY</dt>
                  <dd>{loan.easy_stacked}</dd>
                </div>
                <div>
                  <dt className="text-muted-foreground">Debt (out)</dt>
                  <dd>{loan.debt_out}</dd>
                </div>
                <div>
                  <dt className="text-muted-foreground">Redeemable</dt>
                  <dd>{loan.redeemable_out}</dd>
                </div>
                <div>
                  <dt className="text-muted-foreground">Pool</dt>
                  <dd>{String(loan.pool_id)}</dd>
                </div>
              </dl>
            )}
            <AmountField label="Repay out-token" value={repayAmt} onChange={setRepayAmt} symbol={outSym} />
            <button
              type="button"
              className="btn btn-outline mt-3 w-full"
              disabled={!isLoggedIn || busy || !loan || !market}
              onClick={() => {
                const q = parseDecimalToAsset(repayAmt, outPrec, outSym);
                if (!q || !loan || !market || !actor) return setErr("Enter repay amount.");
                void run(
                  [transferAction(market.out_contract, actor, EASYLOAN_ACCOUNT, q, `repay#${loan.id}`)],
                  "Repay sent."
                );
              }}
            >
              Repay
            </button>
            <div className="mt-3 flex gap-2">
              <button
                type="button"
                className="btn btn-outline flex-1"
                disabled={!isLoggedIn || busy || !loan}
                onClick={() =>
                  void run([easyAction("applycredit", { loan_id: Number(loan!.id) })], "Credits applied.")
                }
              >
                Apply credit
              </button>
              <button
                type="button"
                className="btn btn-outline flex-1"
                disabled={!isLoggedIn || busy || !loan}
                onClick={() => void run([easyAction("withdraw", { loan_id: Number(loan!.id) })], "Withdrawn.")}
              >
                Withdraw stack
              </button>
            </div>
          </>
        )}
      </div>

      <div className="card p-5">
        <h2 className="font-display text-2xl">Harvest reflections</h2>
        <p className="mt-1 text-sm text-muted-foreground">
          Swaps reflection EASY on Alcor into out-token credits. Vault reflection pool:{" "}
          {vault?.reflection_pool ?? "—"}
        </p>
        <div className="mt-3 grid gap-3 sm:grid-cols-2">
          <input
            className="input"
            placeholder={`EASY amount`}
            value={harvestAmt}
            onChange={(e) => setHarvestAmt(e.target.value.replace(/[^\d.]/g, ""))}
          />
          <input
            className="input"
            placeholder={`Min out (${outSym})`}
            value={minOut}
            onChange={(e) => setMinOut(e.target.value.replace(/[^\d.]/g, ""))}
          />
        </div>
        <button
          type="button"
          className="btn btn-outline mt-3 w-full"
          disabled={!isLoggedIn || busy || !market}
          onClick={() => {
            const easyQ = parseDecimalToAsset(harvestAmt, easyPrec, easySym);
            const minQ = parseDecimalToAsset(minOut || "0.0001", outPrec, outSym);
            if (!easyQ || !minQ || !market) return setErr("Enter harvest amount and min out.");
            void run(
              [
                easyAction("harvest", {
                  pool_id: Number(market.pool_id),
                  easy_amount: easyQ,
                  min_out: minQ,
                }),
              ],
              "Harvest submitted."
            );
          }}
        >
          Harvest
        </button>
      </div>

      {err && <p className="rounded-md bg-destructive/10 p-3 text-sm text-destructive">{err}</p>}
      {msg && <p className="rounded-md bg-success/10 p-3 text-sm text-success">{msg}</p>}
    </div>
  );
}
