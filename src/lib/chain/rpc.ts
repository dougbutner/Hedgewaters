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

function isMissingAccountError(status: number, body: string): boolean {
  if (status !== 400 && status !== 404 && status !== 500) return false;
  return /account_query_exception|Fail to retrieve account|unknown key|does not exist/i.test(body);
}

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
      const text = await res.text();
      if (!res.ok) {
        // Undeployed / unknown contract → empty tables (UI can show empty state).
        if (isMissingAccountError(res.status, text)) return [];
        throw new Error(`RPC ${res.status}`);
      }
      const data = JSON.parse(text) as { rows?: T[] };
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
      const text = await res.text();
      if (!res.ok) {
        if (isMissingAccountError(res.status, text)) return null;
        throw new Error(`RPC ${res.status}`);
      }
      const data = JSON.parse(text) as string[];
      return data[0] ?? null;
    } catch (err) {
      lastErr = err;
    }
  }
  throw lastErr instanceof Error ? lastErr : new Error("RPC failed");
}
