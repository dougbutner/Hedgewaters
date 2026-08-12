import { useMemo, useState } from "react";
import { AmountField } from "@/components/shared/AmountField";
import { FLEXLOANS_ACCOUNT } from "@/lib/chain/accounts";
import { parseAsset, parseDecimalToAsset, symbolCode, formatAsset } from "@/lib/chain/asset";
import { formatPctBps, redeemCollEstimate } from "@/lib/chain/math";
import { transferAction, type FlexConfig, type FlexMarket } from "@/lib/chain/flexloans";

type Transact = (
  actions: Array<{ account: string; name: string; data: Record<string, unknown> }>
) => Promise<unknown>;

export function RedeemForm({
  markets,
  config,
  actor,
  isLoggedIn,
  transact,
  onDone,
}: {
  markets: FlexMarket[];
  config: FlexConfig | null;
  actor: string | null;
  isLoggedIn: boolean;
  transact: Transact;
  onDone: () => void;
}) {
  const [marketId, setMarketId] = useState(markets[0] ? String(markets[0].id) : "");
  const [amount, setAmount] = useState("");
  const [busy, setBusy] = useState(false);
  const [err, setErr] = useState<string | null>(null);
  const [msg, setMsg] = useState<string | null>(null);

  const market = markets.find((m) => String(m.id) === marketId) ?? markets[0];
  const debtSym = config ? symbolCode(config.debt_symbol) : "HXUSD";
  const collSym = market ? symbolCode(market.coll_symbol) || symbolCode(market.total_coll) : "COLL";
  const debtPrec = parseAsset(config?.min_debt)?.precision ?? 4;
  const collPrec = parseAsset(market?.total_coll)?.precision ?? 4;
  const feeBps = config?.redeem_fee_floor_bps ?? 0;

  const estimate = useMemo(() => {
    if (!market) return null;
    const q = parseDecimalToAsset(amount || "0", debtPrec, debtSym);
    if (!q) return null;
    const a = parseAsset(q);
    if (!a) return null;
    const coll = redeemCollEstimate(
      a.amount,
      a.precision,
      BigInt(market.price_usd_e8 || 0),
      collPrec,
      feeBps
    );
    return coll != null ? formatAsset(coll, collPrec, collSym) : null;
  }, [amount, market, debtPrec, debtSym, collPrec, collSym, feeBps]);

  const submit = async () => {
    setErr(null);
    setMsg(null);
    if (!actor || !config || !market) {
      setErr("Connect wallet and wait for markets.");
      return;
    }
    const q = parseDecimalToAsset(amount, debtPrec, debtSym);
    if (!q) {
      setErr("Enter a valid HXUSD amount.");
      return;
    }
    setBusy(true);
    try {
      await transact([
        transferAction(config.debt_contract, actor, FLEXLOANS_ACCOUNT, q, `redeem#${market.id}`),
      ]);
      setMsg("Redeem submitted.");
      setAmount("");
      onDone();
    } catch (e) {
      setErr(e instanceof Error ? e.message : "Transaction failed.");
    } finally {
      setBusy(false);
    }
  };

  if (!markets.length) return null;

  return (
    <div className="space-y-4">
      <div className="panel p-5">
        <label className="text-sm text-muted-foreground">Market</label>
        <select className="input mt-2" value={String(market?.id ?? "")} onChange={(e) => setMarketId(e.target.value)}>
          {markets.map((m) => (
            <option key={String(m.id)} value={String(m.id)}>
              {symbolCode(m.coll_symbol) || symbolCode(m.total_coll)} · #{String(m.id)}
            </option>
          ))}
        </select>
        <p className="mt-2 text-sm text-muted-foreground">
          Redeem fee (floor) {formatPctBps(feeBps)} · lowest rate first
        </p>
      </div>

      <AmountField
        label={`Redeem ${debtSym}`}
        value={amount}
        onChange={setAmount}
        symbol={debtSym}
        subline={estimate ? `≈ ${estimate} after fee` : "Expected collateral after fee"}
      />

      {err && <p className="rounded-md bg-destructive/10 p-3 text-sm text-destructive">{err}</p>}
      {msg && <p className="rounded-md bg-success/10 p-3 text-sm text-success">{msg}</p>}

      <button
        type="button"
        className="btn btn-primary w-full"
        disabled={!isLoggedIn || busy}
        onClick={() => void submit()}
      >
        {!isLoggedIn ? "Connect wallet" : busy ? "Redeeming…" : "Redeem"}
      </button>
    </div>
  );
}
