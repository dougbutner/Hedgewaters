import { EASYLOAN_ACCOUNT } from "./accounts";
import { getSingleton, getTableRows } from "./rpc";
import { transferAction } from "./flexloans";

export type EasyConfig = {
  admin?: string;
  easy_contract: string;
  easy_symbol: string;
  swap_contract?: string;
  sell_bps?: number;
  max_pool_bps?: number;
  paused?: boolean;
};

export type EasyVault = {
  easy_stacked_total?: string;
  reflection_pool?: string;
  pending_harvest?: string;
  next_loan_id?: number | string;
};

export type EasyMarket = {
  pool_id: number | string;
  out_contract: string;
  out_symbol: string;
  active?: boolean;
};

export type EasyLoan = {
  id: number | string;
  owner: string;
  pool_id: number | string;
  easy_stacked: string;
  debt_out: string;
  redeemable_out: string;
  status: number;
  opened?: number;
};

export const LOAN_PENDING = 1;
export const LOAN_OPEN = 2;
export const LOAN_CLOSED = 3;

export async function fetchEasyConfig(): Promise<EasyConfig | null> {
  return getSingleton<EasyConfig>(EASYLOAN_ACCOUNT, "config");
}

export async function fetchEasyVault(): Promise<EasyVault | null> {
  return getSingleton<EasyVault>(EASYLOAN_ACCOUNT, "vault");
}

export async function fetchEasyMarkets(): Promise<EasyMarket[]> {
  return getTableRows<EasyMarket>({ code: EASYLOAN_ACCOUNT, table: "markets" });
}

export async function fetchEasyLoans(): Promise<EasyLoan[]> {
  return getTableRows<EasyLoan>({ code: EASYLOAN_ACCOUNT, table: "loans" });
}

export function easyAction(name: string, data: Record<string, unknown>) {
  return { account: EASYLOAN_ACCOUNT, name, data };
}

export { transferAction };
