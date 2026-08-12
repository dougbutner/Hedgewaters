/**
 * Antelope-shaped mock RPC over MockChainStore.
 * Drop-in for get_table_rows / get_currency_balance when live RPC is unavailable.
 */
import type { MockChainStore, TableRowPayload } from "./store";

export type GetTableRowsRequest = {
  json?: boolean;
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

export type GetTableRowsResponse = {
  rows: TableRowPayload[];
  more: boolean;
  next_key?: string;
};

export type GetCurrencyBalanceRequest = {
  code: string;
  account: string;
  symbol?: string;
};

export class MockChainRpc {
  constructor(private readonly store: MockChainStore) {}

  get_table_rows(req: GetTableRowsRequest): GetTableRowsResponse {
    return this.store.queryTableRows({
      code: req.code,
      table: req.table,
      scope: req.scope,
      limit: req.limit,
      lower_bound: req.lower_bound,
      upper_bound: req.upper_bound,
      reverse: req.reverse,
    });
  }

  get_currency_balance(req: GetCurrencyBalanceRequest): string[] {
    return this.store.getCurrencyBalance(req.code, req.account, req.symbol);
  }

  /** Handle /v1/chain/* POST bodies; returns JSON-serializable result or null if unknown. */
  handleChainPath(pathname: string, body: unknown): unknown | null {
    const path = pathname.replace(/\/+$/, "");
    if (path.endsWith("/v1/chain/get_table_rows")) {
      return this.get_table_rows(body as GetTableRowsRequest);
    }
    if (path.endsWith("/v1/chain/get_currency_balance")) {
      return this.get_currency_balance(body as GetCurrencyBalanceRequest);
    }
    return null;
  }
}

/**
 * Install a global fetch shim that serves mock chain RPC for CHAIN_ENDPOINTS-style URLs.
 * Returns an uninstall function.
 */
export function installMockFetch(
  rpc: MockChainRpc,
  opts: { endpoints?: string[] } = {}
): () => void {
  const endpoints = (opts.endpoints ?? ["http://mock.chain.local"]).map((e) =>
    e.replace(/\/$/, "")
  );
  const previous = globalThis.fetch;

  globalThis.fetch = (async (input: RequestInfo | URL, init?: RequestInit) => {
    const url = typeof input === "string" ? input : input instanceof URL ? input.href : input.url;
    const matched = endpoints.some((ep) => url.startsWith(ep));
    if (!matched) {
      return previous(input, init);
    }
    const pathname = new URL(url).pathname;
    let body: unknown = {};
    if (init?.body) {
      body = typeof init.body === "string" ? JSON.parse(init.body) : init.body;
    }
    const result = rpc.handleChainPath(pathname, body);
    if (result === null) {
      return new Response(JSON.stringify({ error: "mock rpc: unknown path" }), {
        status: 404,
        headers: { "Content-Type": "application/json" },
      });
    }
    return new Response(JSON.stringify(result), {
      status: 200,
      headers: { "Content-Type": "application/json" },
    });
  }) as typeof fetch;

  return () => {
    globalThis.fetch = previous;
  };
}
