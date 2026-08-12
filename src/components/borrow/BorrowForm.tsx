import { useMemo, useState } from "react";
import { AmountField } from "@/components/shared/AmountField";
import { FLEXLOANS_ACCOUNT } from "@/lib/chain/accounts";
import { parseDecimalToAsset, symbolCode, parseAsset, assetAmountNumber } from "@/lib/chain/asset";
import { RATE_BUCKETS, formatPctBps, icrBps } from "@/lib/chain/math";
import {
  flexAction,
  transferAction,
  type FlexConfig,
  type FlexMarket,
} from "@/lib/chain/flexloans";

type Transact = (
  actions: Array<{ account: string; name: string; data: Record<string, unknown> }>
) => Promise<unknown>;

export function BorrowForm({
  markets,
  config,
  actor,
  isLoggedIn,
  transact,
  onDone,
  initialMarketId,
}: {
  markets: FlexMarket[];
  config: FlexConfig | null;
  actor: string | null;
  isLoggedIn: boolean;
  transact: Transact;
  onDone: () => void;
  initialMarketId?: string;
}) {
  const [marketId, setMarketId] = useState(
    initialMarketId || (markets[0] ? String(markets[0].id) : "")
  );
  const [coll, setColl] = useState("");
  const [loan, setLoan] = useState("");
  const [rate, setRate] = useState<number>(200);
  const [busy, setBusy] = useState(false);
  const [msg, setMsg] = useState<string | null>(null);
  const [err, setErr] = useState<string | null>(null);

  const market = markets.find((m) => String(m.id) === String(marketId)) ?? markets[0];
  const collSym = market ? symbolCode(market.coll_symbol) || symbolCode(market.total_coll) : "COLL";
  const debtSym = config ? symbolCode(config.debt_symbol) : "HEDGE";
  const collPrec = parseAsset(market?.total_coll)?.precision ?? parseAsset(`0 ${collSym}`)?.precision ?? 4;
  const debtPrec = parseAsset(config?.min_debt)?.precision ?? 6;

  const previewIcr = useMemo(() => {
    if (!market) return null;
    const c = parseDecimalToAsset(coll || "0", collPrec, collSym);
    const d = parseDecimalToAsset(loan || "0", debtPrec, debtSym);
    if (!c || !d) return null;
    const ca = parseAsset(c);
    const da = parseAsset(d);
    if (!ca || !da || da.amount <= 0n) return null;
    return icrBps(ca.amount, da.amount, BigInt(market.price_usd_e8 || 0), ca.precision, da.precision);
  }, [coll, loan, market, collPrec, debtPrec, collSym, debtSym]);

  const collUsd =
    market && coll
      ? (assetAmountNumber(parseDecimalToAsset(coll, collPrec, collSym) ?? "") *
          Number(market.price_usd_e8 || 0)) /
        1e8
      : 0;

  const submit = async () => {
    setMsg(null);
    setErr(null);
    if (!actor || !market || !config) {
      setErr("Connect a wallet and wait for markets to load.");
      return;
    }
    const collQty = parseDecimalToAsset(coll, collPrec, collSym);
    if (!collQty) {
      setErr("Enter a valid collateral amount.");
      return;
    }
    const loanQty = loan.trim() ? parseDecimalToAsset(loan, debtPrec, debtSym) : null;
    if (loan.trim() && !loanQty) {
      setErr("Enter a valid loan amount.");
      return;
    }

    const nextId = Number(config.next_pos_id ?? 0);
    const actions: Array<{ account: string; name: string; data: Record<string, unknown> }> = [
      transferAction(market.coll_contract, actor, FLEXLOANS_ACCOUNT, collQty, `open#${market.id}#${rate}`),
    ];
    if (loanQty && nextId >= 0) {
      actions.push(flexAction("borrow", { pos_id: nextId, amount: loanQty }));
    }

    setBusy(true);
    try {
      await transact(actions);
      setMsg("Position opened.");
      setColl("");
      setLoan("");
      onDone();
    } catch (e) {
      setErr(e instanceof Error ? e.message : "Transaction failed.");
    } finally {
      setBusy(false);
    }
  };

  if (!markets.length) {
    return null;
  }

  return (
    <div className="space-y-4">
      <div className="panel p-5">
        <label className="text-sm text-muted-foreground">Collateral</label>
        <div className="mt-2 flex flex-wrap items-center gap-2">
          <select
            className="input max-w-xs"
            value={String(market?.id ?? "")}
            onChange={(e) => setMarketId(e.target.value)}
          >
            {markets.map((m) => (
              <option key={String(m.id)} value={String(m.id)}>
                {symbolCode(m.coll_symbol) || symbolCode(m.total_coll)} · #{String(m.id)}
              </option>
            ))}
          </select>
        </div>
      </div>

      <AmountField
        label="Collateral amount"
        value={coll}
        onChange={setColl}
        symbol={collSym}
        subline={collUsd ? `≈ $${collUsd.toFixed(2)}` : "$0.00"}
      />
      <AmountField
        label="Loan"
        value={loan}
        onChange={setLoan}
        symbol={debtSym}
        subline={`Min debt ${config?.min_debt ?? "—"} · borrow fee ${formatPctBps(config?.borrow_fee_bps ?? 0)}`}
      />

      <div className="panel p-5">
        <div className="flex items-center justify-between">
          <span className="text-sm text-muted-foreground">Interest rate</span>
          <span className="text-sm">{formatPctBps(rate)}</span>
        </div>
        <div className="mt-3 flex flex-wrap gap-2">
          {RATE_BUCKETS.map((b) => (
            <button
              key={b}
              type="button"
              className={`btn btn-sm ${rate === b ? "btn-primary" : "btn-outline"}`}
              onClick={() => setRate(b)}
            >
              {formatPctBps(b)}
            </button>
          ))}
        </div>
        <p className="mt-3 text-sm text-muted-foreground">
          Preview ICR {previewIcr != null ? formatPctBps(previewIcr) : "—"} · MCR{" "}
          {market ? formatPctBps(market.mcr_bps) : "—"}
        </p>
      </div>

      {err && <p className="rounded-md bg-destructive/10 p-3 text-sm text-destructive">{err}</p>}
      {msg && <p className="rounded-md bg-success/10 p-3 text-sm text-success">{msg}</p>}

      <button
        type="button"
        className="btn btn-primary w-full"
        disabled={!isLoggedIn || busy}
        onClick={() => void submit()}
      >
        {!isLoggedIn ? "Connect wallet" : busy ? "Opening…" : "Open position"}
      </button>
    </div>
  );
}
