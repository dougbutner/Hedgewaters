export type ParsedAsset = {
  amount: bigint;
  precision: number;
  symbol: string;
  raw: string;
};

/** Parse EOSIO asset string `"1.0000 XPR"` or symbol `"4,XPR"`. */
export function parseAsset(raw: string | number | null | undefined): ParsedAsset | null {
  if (raw == null) return null;
  if (typeof raw === "number") {
    return { amount: BigInt(Math.trunc(raw)), precision: 0, symbol: "", raw: String(raw) };
  }
  const s = String(raw).trim();
  if (!s) return null;
  const comma = /^(\d+),([A-Z0-9]+)$/.exec(s);
  if (comma) {
    return { amount: 0n, precision: Number(comma[1]), symbol: comma[2], raw: s };
  }
  const m = /^(-?\d+)(?:\.(\d+))?\s+([A-Z0-9]+)$/.exec(s);
  if (!m) return null;
  const frac = m[2] ?? "";
  const precision = frac.length;
  const digits = (m[1] + frac).replace(/^-/, "");
  const sign = m[1].startsWith("-") ? -1n : 1n;
  return { amount: sign * BigInt(digits || "0"), precision, symbol: m[3], raw: s };
}

export function formatAmount(amount: bigint, precision: number): string {
  const neg = amount < 0n;
  const abs = neg ? -amount : amount;
  if (precision <= 0) return `${neg ? "-" : ""}${abs.toString()}`;
  const s = abs.toString().padStart(precision + 1, "0");
  const i = s.slice(0, -precision);
  const f = s.slice(-precision);
  return `${neg ? "-" : ""}${i}.${f}`;
}

export function formatAsset(amount: bigint, precision: number, symbol: string): string {
  return `${formatAmount(amount, precision)} ${symbol}`;
}

export function parseDecimalToAsset(input: string, precision: number, symbol: string): string | null {
  const t = input.trim();
  if (!t || !/^\d+(\.\d+)?$/.test(t)) return null;
  const [i, f = ""] = t.split(".");
  if (f.length > precision) return null;
  const frac = f.padEnd(precision, "0");
  return `${i}.${frac} ${symbol}`;
}

export function assetAmountNumber(raw: string | number | null | undefined): number {
  const p = parseAsset(String(raw ?? ""));
  if (!p || p.precision < 0) return 0;
  return Number(p.amount) / 10 ** p.precision;
}

export function symbolCode(raw: string | undefined | null): string {
  if (!raw) return "—";
  const p = parseAsset(raw);
  return p?.symbol || String(raw);
}
