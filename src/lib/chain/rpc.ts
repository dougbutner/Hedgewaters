import { CHAIN_ENDPOINTS } from "@/services/walletConstants";

export type TableQuery = {
  code: string;
  table: string;
  scope?: string;
  limit?: number;
  lower_bound?: string | number;
  upper_bound?: string | number;
  index_position?: string | number;
  key_type?: string;
  reverse?: boolean;
};

export async function getTableRows<T>(opts: TableQuery): Promise<T[]> {
  let lastErr: unknown;
  for (const ep of CHAIN_ENDPOINTS) {
    try {
      const res = await fetch(`${ep.replace(/\/$/, "")}/v1/chain/get_table_rows`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          json: true,
          code: opts.code,
          table: opts.table,
          scope: opts.scope ?? opts.code,
          limit: opts.limit ?? 200,
          lower_bound: opts.lower_bound,
          upper_bound: opts.upper_bound,
          index_position: opts.index_position,
          key_type: opts.key_type,
          reverse: opts.reverse,
        }),
      });
      if (!res.ok) throw new Error(`RPC ${res.status}`);
      const data = (await res.json()) as { rows?: T[] };
      return data.rows ?? [];
    } catch (err) {
      lastErr = err;
    }
  }
  throw lastErr instanceof Error ? lastErr : new Error("RPC failed");
}

export async function getSingleton<T>(code: string, table: string): Promise<T | null> {
  const rows = await getTableRows<T>({ code, table, scope: code, limit: 1 });
  return rows[0] ?? null;
}

export async function getCurrencyBalance(
  code: string,
  account: string,
  symbol?: string
): Promise<string | null> {
  let lastErr: unknown;
  for (const ep of CHAIN_ENDPOINTS) {
    try {
      const res = await fetch(`${ep.replace(/\/$/, "")}/v1/chain/get_currency_balance`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ code, account, symbol: symbol || undefined }),
      });
      if (!res.ok) throw new Error(`RPC ${res.status}`);
      const data = (await res.json()) as string[];
      return data[0] ?? null;
    } catch (err) {
      lastErr = err;
    }
  }
  throw lastErr instanceof Error ? lastErr : new Error("RPC failed");
}
