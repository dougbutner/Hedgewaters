import { useState } from "react";
import { AmountField } from "@/components/shared/AmountField";
import { FLEXLOANS_ACCOUNT } from "@/lib/chain/accounts";
import { parseAsset, parseDecimalToAsset, symbolCode } from "@/lib/chain/asset";
import { RATE_BUCKETS, formatPctBps, icrBps } from "@/lib/chain/math";
import {
  flexAction,
  transferAction,
  type FlexConfig,
  type FlexMarket,
  type FlexPosition,
  type FlexSurplus,
} from "@/lib/chain/flexloans";

type Transact = (
  actions: Array<{ account: string; name: string; data: Record<string, unknown> }>
) => Promise<unknown>;

export function PositionPanel({
  positions,
  markets,
  config,
  surpluses,
  actor,
  transact,
  onDone,
}: {
  positions: FlexPosition[];
  markets: FlexMarket[];
  config: FlexConfig | null;
  surpluses: FlexSurplus[];
  actor: string | null;
  transact: Transact;
  onDone: () => void;
}) {
  const [posId, setPosId] = useState(positions[0] ? String(positions[0].id) : "");
  const [collAdd, setCollAdd] = useState("");
  const [collWd, setCollWd] = useState("");
  const [borrowAmt, setBorrowAmt] = useState("");
  const [repayAmt, setRepayAmt] = useState("");
  const [busy, setBusy] = useState(false);
  const [err, setErr] = useState<string | null>(null);
  const [msg, setMsg] = useState<string | null>(null);

  const pos = positions.find((p) => String(p.id) === posId) ?? positions[0];
  const market = pos ? markets.find((m) => String(m.id) === String(pos.market_id)) : undefined;
  const collSym = market ? symbolCode(market.coll_symbol) || symbolCode(pos?.coll) : "COLL";
  const debtSym = config ? symbolCode(config.debt_symbol) : symbolCode(pos?.debt) || "HXUSD";
  const collPrec = parseAsset(pos?.coll)?.precision ?? 4;
  const debtPrec = parseAsset(pos?.debt)?.precision ?? 4;

  const icr =
    pos && market
      ? icrBps(
          parseAsset(pos.coll)?.amount ?? 0n,
          parseAsset(pos.debt)?.amount ?? 0n,
          BigInt(market.price_usd_e8 || 0),
          collPrec,
          debtPrec
        )
      : null;

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

  if (!positions.length) {
    return (
      <p className="text-sm text-muted-foreground">No open positions for this account.</p>
    );
  }

  return (
    <div className="space-y-4">
      <div className="panel p-5">
        <label className="text-sm text-muted-foreground">Your position</label>
        <select className="input mt-2" value={String(pos?.id ?? "")} onChange={(e) => setPosId(e.target.value)}>
          {positions.map((p) => (
            <option key={String(p.id)} value={String(p.id)}>
              #{String(p.id)} · {p.coll} / {p.debt} · {formatPctBps(p.rate_bps)}
            </option>
          ))}
        </select>
        <dl className="mt-4 grid grid-cols-2 gap-3 text-sm">
          <div>
            <dt className="text-muted-foreground">Collateral</dt>
            <dd>{pos?.coll}</dd>
          </div>
          <div>
            <dt className="text-muted-foreground">Debt</dt>
            <dd>{pos?.debt}</dd>
          </div>
          <div>
            <dt className="text-muted-foreground">ICR</dt>
            <dd>{icr != null ? formatPctBps(icr) : "—"}</dd>
          </div>
          <div>
            <dt className="text-muted-foreground">Rate</dt>
            <dd>{pos ? formatPctBps(pos.rate_bps) : "—"}</dd>
          </div>
        </dl>
      </div>

      <AmountField label="Add collateral" value={collAdd} onChange={setCollAdd} symbol={collSym} />
      <button
        type="button"
        className="btn btn-outline w-full"
        disabled={busy || !market}
        onClick={() => {
          const q = parseDecimalToAsset(collAdd, collPrec, collSym);
          if (!q || !market || !pos) return setErr("Enter collateral amount.");
          void run(
            [transferAction(market.coll_contract, actor!, FLEXLOANS_ACCOUNT, q, `addcoll#${pos.id}`)],
            "Collateral added."
          );
        }}
      >
        Add collateral
      </button>

      <AmountField label="Withdraw collateral" value={collWd} onChange={setCollWd} symbol={collSym} />
      <button
        type="button"
        className="btn btn-outline w-full"
        disabled={busy || !pos}
        onClick={() => {
          const q = parseDecimalToAsset(collWd, collPrec, collSym);
          if (!q || !pos) return setErr("Enter withdraw amount.");
          void run([flexAction("withdrawcoll", { pos_id: Number(pos.id), amount: q })], "Collateral withdrawn.");
        }}
      >
        Withdraw collateral
      </button>

      <AmountField label="Borrow more" value={borrowAmt} onChange={setBorrowAmt} symbol={debtSym} />
      <button
        type="button"
        className="btn btn-outline w-full"
        disabled={busy || !pos}
        onClick={() => {
          const q = parseDecimalToAsset(borrowAmt, debtPrec, debtSym);
          if (!q || !pos) return setErr("Enter borrow amount.");
          void run([flexAction("borrow", { pos_id: Number(pos.id), amount: q })], "Borrowed.");
        }}
      >
        Borrow
      </button>

      <AmountField label="Repay" value={repayAmt} onChange={setRepayAmt} symbol={debtSym} />
      <button
        type="button"
        className="btn btn-outline w-full"
        disabled={busy || !pos || !config}
        onClick={() => {
          const q = parseDecimalToAsset(repayAmt, debtPrec, debtSym);
          if (!q || !pos || !config || !actor) return setErr("Enter repay amount.");
          void run(
            [transferAction(config.debt_contract, actor, FLEXLOANS_ACCOUNT, q, `repay#${pos.id}`)],
            "Repaid."
          );
        }}
      >
        Repay
      </button>

      <div className="panel p-5">
        <p className="text-sm text-muted-foreground">Change rate bucket</p>
        <div className="mt-3 flex flex-wrap gap-2">
          {RATE_BUCKETS.map((b) => (
            <button
              key={b}
              type="button"
              className={`btn btn-sm ${pos?.rate_bps === b ? "btn-primary" : "btn-outline"}`}
              disabled={busy || !pos}
              onClick={() =>
                void run([flexAction("setrate", { pos_id: Number(pos!.id), rate_bps: b })], "Rate updated.")
              }
            >
              {formatPctBps(b)}
            </button>
          ))}
        </div>
      </div>

      <button
        type="button"
        className="btn btn-outline w-full text-destructive"
        disabled={busy || !pos}
        onClick={() => void run([flexAction("closepos", { pos_id: Number(pos!.id) })], "Position closed.")}
      >
        Close position
      </button>

      {surpluses.length > 0 && (
        <div className="panel p-5">
          <h3 className="text-sm font-semibold">Surplus</h3>
          <ul className="mt-2 space-y-2 text-sm">
            {surpluses.map((s) => (
              <li key={String(s.position_id)} className="flex items-center justify-between">
                <span>
                  #{String(s.position_id)} · {s.coll}
                </span>
                <button
                  type="button"
                  className="btn btn-primary btn-sm"
                  disabled={busy}
                  onClick={() =>
                    void run(
                      [flexAction("claimsurplus", { position_id: Number(s.position_id) })],
                      "Surplus claimed."
                    )
                  }
                >
                  Claim
                </button>
              </li>
            ))}
          </ul>
        </div>
      )}

      {err && <p className="rounded-md bg-destructive/10 p-3 text-sm text-destructive">{err}</p>}
      {msg && <p className="rounded-md bg-success/10 p-3 text-sm text-success">{msg}</p>}
    </div>
  );
}
