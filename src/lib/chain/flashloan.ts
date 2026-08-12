import { FLASHLOAN_ACCOUNT } from "./accounts";
import { getSingleton, getTableRows } from "./rpc";

export type FlashConfig = {
  admin?: string;
  alcor?: string;
  swaps?: string;
  fee_bps?: number;
  paused?: boolean;
};

export type FlashRoute = {
  id: number | string;
  loan_contract: string;
  loan_symbol: string;
  pay_contract: string;
  pay_symbol: string;
  venue: string;
  pool_path: string;
  est_fee_bps?: number;
  active?: boolean;
};

export async function fetchFlashConfig(): Promise<FlashConfig | null> {
  return getSingleton<FlashConfig>(FLASHLOAN_ACCOUNT, "config");
}

export async function fetchFlashRoutes(): Promise<FlashRoute[]> {
  return getTableRows<FlashRoute>({ code: FLASHLOAN_ACCOUNT, table: "routes" });
}
