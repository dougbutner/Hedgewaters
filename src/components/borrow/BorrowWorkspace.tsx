import { useEffect, useMemo, useState } from "react";
import { RateSelector } from "@/components/borrow/RateSelector";
import { CollateralRatio } from "@/components/borrow/CollateralRatio";
import { PositionSummary } from "@/components/borrow/PositionSummary";
import { FLEXLOANS_ACCOUNT } from "@/lib/chain/accounts";
import {
  formatAmount,
  formatAsset,
  parseAsset,
  parseDecimalToAsset,
  symbolCode,
} from "@/lib/chain/asset";
import {
  borrowFeeAmount,
  formatPctBps,
  formatUsd,
  icrBps,
  liquidationPriceUsd,
  maxBorrowAmount,
} from "@/lib/chain/math";
import { getCurrencyBalance } from "@/lib/chain/rpc";
import {
  flexAction,
  transferAction,
  type FlexConfig,
  type FlexMarket,
} from "@/lib/chain/flexloans";

type Transact = (
  actions: Array<{ account: string; name: string; data: Record<string, unknown> }>
) => Promise<unknown>;

export function BorrowWorkspace({
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
  const [rate, setRate] = useState(200);
  const [balance, setBalance] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);
  const [status, setStatus] = useState<{ type: "ok" | "err"; message: string } | null>(null);

  const market = markets.find((m) => String(m.id) === String(marketId)) ?? markets[0];
  const collSym = market ? symbolCode(market.coll_symbol) || symbolCode(market.total_coll) : "COLL";
  const debtSym = config ? symbolCode(config.debt_symbol) : "HEDGE";
  const collPrec =
    parseAsset(market?.total_coll)?.precision ?? parseAsset(`0.0000 ${collSym}`)?.precision ?? 4;
  const debtPrec = parseAsset(config?.min_debt)?.precision ?? 6;
  const priceE8 = BigInt(market?.price_usd_e8 || 0);
  const mcr = market?.mcr_bps ?? 11000;
  const feeBps = config?.borrow_fee_bps ?? 0;

  useEffect(() => {
    let cancelled = false;
    if (!actor || !market) {
      setBalance(null);
      return;
    }
    void getCurrencyBalance(market.coll_contract, actor, collSym)
      .then((b) => {
        if (!cancelled) setBalance(b);
      })
      .catch(() => {
        if (!cancelled) setBalance(null);
      });
    return () => {
      cancelled = true;
    };
  }, [actor, market, collSym]);

  const collParsed = useMemo(() => {
    const q = parseDecimalToAsset(coll || "0", collPrec, collSym);
    return q ? parseAsset(q) : null;
  }, [coll, collPrec, collSym]);

  const loanParsed = useMemo(() => {
    const q = parseDecimalToAsset(loan || "0", debtPrec, debtSym);
    return q ? parseAsset(q) : null;
  }, [loan, debtPrec, debtSym]);

  const collUsd =
    collParsed && priceE8 > 0n
      ? (Number(collParsed.amount) / 10 ** collPrec) * (Number(priceE8) / 1e8)
      : 0;

  const previewIcr = useMemo(() => {
    if (!collParsed || !loanParsed || loanParsed.amount <= 0n || !market) return null;
    return icrBps(collParsed.amount, loanParsed.amount, priceE8, collPrec, debtPrec);
  }, [collParsed, loanParsed, market, priceE8, collPrec, debtPrec]);

  const maxBorrow = useMemo(() => {
    if (!collParsed || !market) return 0n;
    return maxBorrowAmount(collParsed.amount, priceE8, collPrec, debtPrec, mcr);
  }, [collParsed, market, priceE8, collPrec, debtPrec, mcr]);

  const remaining = useMemo(() => {
    const used = loanParsed?.amount ?? 0n;
    return maxBorrow > used ? maxBorrow - used : 0n;
  }, [maxBorrow, loanParsed]);

  const feeAmt = loanParsed ? borrowFeeAmount(loanParsed.amount, feeBps) : 0n;
  const liqPrice = useMemo(() => {
    if (!collParsed || !loanParsed || loanParsed.amount <= 0n) return null;
    return liquidationPriceUsd(collParsed.amount, loanParsed.amount, collPrec, debtPrec, mcr);
  }, [collParsed, loanParsed, collPrec, debtPrec, mcr]);

  const balParsed = balance ? parseAsset(balance) : null;

  const setMaxColl = () => {
    if (!balParsed) return;
    setColl(formatAmount(balParsed.amount, balParsed.precision));
  };

  const setMaxLoan = () => {
    if (maxBorrow <= 0n) return;
    setLoan(formatAmount(maxBorrow, debtPrec));
  };

  const submit = async () => {
    setStatus(null);
    if (!actor || !market || !config) {
      setStatus({ type: "err", message: "Connect a wallet to borrow." });
      return;
    }
    const collQty = parseDecimalToAsset(coll, collPrec, collSym);
    if (!collQty) {
      setStatus({ type: "err", message: "Enter a valid collateral amount." });
      return;
    }
    const loanQty = loan.trim() ? parseDecimalToAsset(loan, debtPrec, debtSym) : null;
    if (!loan.trim() || !loanQty) {
      setStatus({ type: "err", message: "Enter a valid HEDGE borrow amount." });
      return;
    }
    if (loanParsed && loanParsed.amount > maxBorrow) {
      setStatus({ type: "err", message: "Borrow amount exceeds available capacity at MCR." });
      return;
    }

    const nextId = Number(config.next_pos_id ?? 0);
    const actions = [
      transferAction(market.coll_contract, actor, FLEXLOANS_ACCOUNT, collQty, `open#${market.id}#${rate}`),
      flexAction("borrow", { pos_id: nextId, amount: loanQty }),
    ];

    setBusy(true);
    try {
      await transact(actions);
      setStatus({ type: "ok", message: "Position opened successfully." });
      setColl("");
      setLoan("");
      onDone();
    } catch (e) {
      setStatus({ type: "err", message: e instanceof Error ? e.message : "Transaction failed." });
    } finally {
      setBusy(false);
    }
  };

  if (!markets.length) return null;

  const confirmLabel = !isLoggedIn ? "Connect wallet" : "Confirm Borrow";

  return (
    <div className="grid gap-4 lg:grid-cols-[minmax(0,1fr)_minmax(280px,340px)] lg:items-start">
      <section className="panel">
        <div className="panel-header flex items-center justify-between gap-3">
          <h2 className="text-sm font-semibold">Borrow Position</h2>
          <select
            className="input h-8 w-auto min-w-[9rem] text-xs"
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

        <div className="panel-body space-y-5">
          {/* Collateral */}
          <div>
            <div className="mb-2 flex items-center justify-between gap-2">
              <span className="field-label">Collateral</span>
              <span className="text-[11px] text-muted-foreground">
                Available{" "}
                <span className="font-mono text-foreground">
                  {balance ?? (isLoggedIn ? "…" : "—")}
                </span>
              </span>
            </div>
            <div className="glass-field p-3">
              <div className="flex items-center justify-between gap-2">
                <span className="rounded bg-secondary/80 px-2 py-0.5 text-[11px] font-semibold">{collSym}</span>
                <button type="button" className="btn btn-ghost btn-sm h-7 text-[11px]" onClick={setMaxColl} disabled={!balParsed}>
                  MAX
                </button>
              </div>
              <input
                className="mt-2 w-full bg-transparent font-mono text-2xl font-semibold tabular-nums outline-none placeholder:text-muted-foreground/40"
                inputMode="decimal"
                placeholder="0.00"
                value={coll}
                onChange={(e) => setColl(e.target.value.replace(/[^\d.]/g, ""))}
              />
              <p className="mt-1 text-[11px] text-muted-foreground">
                Collateral value {formatUsd(collUsd)}
                {priceE8 > 0n
                  ? ` · Oracle $${(Number(priceE8) / 1e8).toLocaleString(undefined, { maximumFractionDigits: 4 })}`
                  : ""}
              </p>
            </div>
          </div>

          {/* Borrow */}
          <div>
            <div className="mb-2 flex items-center justify-between gap-2">
              <span className="field-label">Borrow {debtSym}</span>
              <button type="button" className="btn btn-ghost btn-sm h-7 text-[11px]" onClick={setMaxLoan} disabled={maxBorrow <= 0n}>
                MAX
              </button>
            </div>
            <div className="glass-field p-3">
              <div className="flex items-center justify-between">
                <span className="rounded bg-secondary/80 px-2 py-0.5 text-[11px] font-semibold">{debtSym}</span>
              </div>
              <input
                className="mt-2 w-full bg-transparent font-mono text-2xl font-semibold tabular-nums outline-none placeholder:text-muted-foreground/40"
                inputMode="decimal"
                placeholder="0.00"
                value={loan}
                onChange={(e) => setLoan(e.target.value.replace(/[^\d.]/g, ""))}
              />
              <p className="mt-1 text-[11px] text-muted-foreground">
                Available to borrow{" "}
                <span className="font-mono text-foreground">
                  {maxBorrow > 0n ? formatAsset(maxBorrow, debtPrec, debtSym) : `0 ${debtSym}`}
                </span>
                {config?.min_debt ? ` · Min ${config.min_debt}` : ""}
              </p>
            </div>
          </div>

          <RateSelector value={rate} onChange={setRate} />

          <CollateralRatio
            icrBps={previewIcr}
            mcrBps={mcr}
            liquidationPrice={liqPrice}
            collSymbol={collSym}
          />

          <div className="flex flex-wrap items-center justify-between gap-2 border-t border-border pt-4 text-[11px] text-muted-foreground">
            <span>
              Borrow fee:{" "}
              <span className="font-mono text-foreground">
                {feeAmt > 0n ? formatAsset(feeAmt, debtPrec, debtSym) : `0 ${debtSym}`}
              </span>{" "}
              ({formatPctBps(feeBps)})
            </span>
            <span>Network fee paid in XPR</span>
          </div>

          <button
            type="button"
            className="btn btn-primary btn-lg w-full lg:hidden"
            disabled={!isLoggedIn || busy}
            onClick={() => void submit()}
          >
            {!isLoggedIn ? "Connect wallet" : busy ? "Borrowing…" : `Borrow ${debtSym}`}
          </button>
        </div>
      </section>

      <PositionSummary
        collLabel={collParsed && collParsed.amount > 0n ? formatAsset(collParsed.amount, collPrec, collSym) : `0 ${collSym}`}
        collUsd={formatUsd(collUsd)}
        borrowLabel={loanParsed && loanParsed.amount > 0n ? formatAsset(loanParsed.amount, debtPrec, debtSym) : `0 ${debtSym}`}
        ratioLabel={previewIcr != null ? formatPctBps(previewIcr) : "—"}
        rateBps={rate}
        feeLabel={feeAmt > 0n ? formatAsset(feeAmt, debtPrec, debtSym) : `0 ${debtSym}`}
        liqPriceLabel={
          liqPrice != null
            ? `$${liqPrice.toLocaleString(undefined, { maximumFractionDigits: 4 })}`
            : "—"
        }
        capacityLabel={remaining > 0n ? formatAsset(remaining, debtPrec, debtSym) : `0 ${debtSym}`}
        depositPreview={collParsed && collParsed.amount > 0n ? formatAsset(collParsed.amount, collPrec, collSym) : `—`}
        receivePreview={loanParsed && loanParsed.amount > 0n ? formatAsset(loanParsed.amount, debtPrec, debtSym) : `—`}
        feePreview={feeAmt > 0n ? formatAsset(feeAmt, debtPrec, debtSym) : `0 ${debtSym}`}
        onConfirm={() => void submit()}
        confirmDisabled={!isLoggedIn || !coll.trim() || !loan.trim()}
        confirmLabel={confirmLabel}
        busy={busy}
        status={status}
      />
    </div>
  );
}
