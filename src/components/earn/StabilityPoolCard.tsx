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

  const run = async (
    actions: Array<{ account: string; name: string; data: Record<string, unknown> }>,
    ok: string
  ) => {
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
    <div className="panel">
      <div className="panel-header flex items-start justify-between gap-3">
        <div>
          <h2 className="text-sm font-semibold">{collSym} Stability Pool</h2>
          <p className="mt-0.5 text-[11px] text-muted-foreground">
            Earn liquidation coll + interest in {debtSym}
          </p>
        </div>
        <span className="flex h-7 w-7 items-center justify-center rounded-full bg-secondary text-[10px] font-bold">
          {collSym.slice(0, 2)}
        </span>
      </div>

      <div className="panel-body space-y-3">
        <dl className="grid grid-cols-3 gap-2 text-xs">
          <div>
            <dt className="text-muted-foreground">TVL</dt>
            <dd className="mt-0.5 font-mono tabular-nums">{pool?.hxusd ?? `0 ${debtSym}`}</dd>
          </div>
          <div>
            <dt className="text-muted-foreground">Coll gains</dt>
            <dd className="mt-0.5 font-mono tabular-nums">{pool?.coll_balance ?? `0 ${collSym}`}</dd>
          </div>
          <div>
            <dt className="text-muted-foreground">Yours</dt>
            <dd className="mt-0.5 font-mono tabular-nums">{deposit?.hxusd ?? `0 ${debtSym}`}</dd>
          </div>
        </dl>

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

        <div className="flex gap-2">
          <input
            className="input flex-1"
            placeholder={`Withdraw ${debtSym}`}
            value={wd}
            onChange={(e) => setWd(e.target.value.replace(/[^\d.]/g, ""))}
          />
          <button
            type="button"
            className="btn btn-outline"
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
            className="btn btn-outline"
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

        {err && <p className="text-xs text-destructive">{err}</p>}
        {msg && <p className="text-xs text-success">{msg}</p>}
      </div>
    </div>
  );
}
