import { useState } from "react";
import { FLEXLOANS_ACCOUNT } from "@/lib/chain/accounts";
import { parseDecimalToAsset, symbolCode, parseAsset } from "@/lib/chain/asset";
import {
  flexAction,
  transferAction,
  type FlexConfig,
  type FlexMarket,
  type FlexSpDeposit,
  type FlexStabpool,
} from "@/lib/chain/flexloans";

type Transact = (
  actions: Array<{ account: string; name: string; data: Record<string, unknown> }>
) => Promise<unknown>;

export function StabilityPoolCard({
  market,
  pool,
  deposit,
  config,
  actor,
  isLoggedIn,
  transact,
  onDone,
}: {
  market: FlexMarket;
  pool?: FlexStabpool;
  deposit?: FlexSpDeposit;
  config: FlexConfig | null;
  actor: string | null;
  isLoggedIn: boolean;
  transact: Transact;
  onDone: () => void;
}) {
  const [amount, setAmount] = useState("");
  const [wd, setWd] = useState("");
  const [busy, setBusy] = useState(false);
  const [err, setErr] = useState<string | null>(null);
  const [msg, setMsg] = useState<string | null>(null);

  const collSym = symbolCode(market.coll_symbol) || symbolCode(market.total_coll);
  const debtSym = config ? symbolCode(config.debt_symbol) : "HXUSD";
  const debtPrec = parseAsset(config?.min_debt)?.precision ?? parseAsset(pool?.hxusd)?.precision ?? 4;

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

  return (
    <div className="card p-5">
      <div className="flex items-start justify-between gap-3">
        <div>
          <h2 className="font-display text-2xl tracking-wide">{collSym} Stability Pool</h2>
          <p className="mt-1 text-sm text-muted-foreground">
            Deposit {debtSym}. Earn liquidation collateral + 100% of interest.
          </p>
        </div>
        <span className="flex h-9 w-9 items-center justify-center rounded-full bg-primary/20 text-xs font-semibold text-primary">
          {collSym.slice(0, 2)}
        </span>
      </div>

      <dl className="mt-4 grid grid-cols-2 gap-3 text-sm sm:grid-cols-3">
        <div>
          <dt className="text-muted-foreground">TVL</dt>
          <dd>{pool?.hxusd ?? `0 ${debtSym}`}</dd>
        </div>
        <div>
          <dt className="text-muted-foreground">Coll gains</dt>
          <dd>{pool?.coll_balance ?? `0 ${collSym}`}</dd>
        </div>
        <div>
          <dt className="text-muted-foreground">Your deposit</dt>
          <dd>{deposit?.hxusd ?? `0 ${debtSym}`}</dd>
        </div>
      </dl>

      <div className="mt-4 space-y-2">
        <input
          className="input"
          placeholder={`Deposit ${debtSym}`}
          value={amount}
          onChange={(e) => setAmount(e.target.value.replace(/[^\d.]/g, ""))}
        />
        <button
          type="button"
          className="btn btn-primary w-full"
          disabled={!isLoggedIn || busy || !config}
          onClick={() => {
            const q = parseDecimalToAsset(amount, debtPrec, debtSym);
            if (!q || !config || !actor) return setErr("Enter a deposit amount.");
            void run(
              [transferAction(config.debt_contract, actor, FLEXLOANS_ACCOUNT, q, `sp#${market.id}`)],
              "Deposited to SP."
            );
          }}
        >
          {!isLoggedIn ? "Connect to deposit" : "Deposit"}
        </button>
      </div>

      <div className="mt-4 space-y-2">
        <input
          className="input"
          placeholder={`Withdraw ${debtSym}`}
          value={wd}
          onChange={(e) => setWd(e.target.value.replace(/[^\d.]/g, ""))}
        />
        <div className="flex gap-2">
          <button
            type="button"
            className="btn btn-outline flex-1"
            disabled={!isLoggedIn || busy}
            onClick={() => {
              const q = parseDecimalToAsset(wd, debtPrec, debtSym);
              if (!q || !actor) return setErr("Enter a withdraw amount.");
              void run(
                [flexAction("withdrawsp", { owner: actor, market_id: Number(market.id), amount: q })],
                "Withdrawn."
              );
            }}
          >
            Withdraw
          </button>
          <button
            type="button"
            className="btn btn-outline flex-1"
            disabled={!isLoggedIn || busy}
            onClick={() => {
              if (!actor) return;
              void run(
                [flexAction("claimsp", { owner: actor, market_id: Number(market.id) })],
                "Claimed SP gains."
              );
            }}
          >
            Claim
          </button>
        </div>
      </div>

      {deposit?.pending_coll && (
        <p className="mt-3 text-xs text-muted-foreground">
          Pending: {deposit.pending_coll} · {deposit.pending_yield}
        </p>
      )}
      {err && <p className="mt-3 text-sm text-destructive">{err}</p>}
      {msg && <p className="mt-3 text-sm text-success">{msg}</p>}
    </div>
  );
}
