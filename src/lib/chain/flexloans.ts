import { FLEXLOANS_ACCOUNT } from "./accounts";
import { getSingleton, getTableRows } from "./rpc";

export type FlexConfig = {
  admin?: string;
  debt_contract: string;
  debt_symbol: string;
  min_debt?: string;
  borrow_fee_bps?: number;
  redeem_fee_floor_bps?: number;
  redeem_fee_max_bps?: number;
  paused?: boolean;
  next_pos_id?: number | string;
  next_seq?: number | string;
  next_sp_id?: number | string;
};

export type FlexMarket = {
  id: number | string;
  coll_contract: string;
  coll_symbol: string;
  price_usd_e8: number | string;
  price_updated?: number;
  mcr_bps: number;
  ccr_bps: number;
  mint_cap?: number | string;
  total_coll: string;
  total_debt: string;
  total_stake?: number | string;
  paused?: boolean;
};

export type FlexPosition = {
  id: number | string;
  owner: string;
  market_id: number | string;
  coll: string;
  debt: string;
  rate_bps: number;
  seq?: number | string;
  stake?: number | string;
  last_accrue?: number;
  status: number;
};

export type FlexStabpool = {
  market_id: number | string;
  hxusd: string;
  coll_balance: string;
  product_p?: number | string;
  current_epoch?: number;
};

export type FlexSpDeposit = {
  id: number | string;
  owner: string;
  market_id: number | string;
  hxusd: string;
  pending_coll?: string;
  pending_yield?: string;
};

export type FlexSurplus = {
  position_id: number | string;
  owner: string;
  market_id: number | string;
  coll: string;
};

export type FlexFeeState = {
  base_rate_bps?: number | string;
  last_update?: number;
};

export const POS_ACTIVE = 1;
export const POS_ZOMBIE = 2;
export const POS_CLOSED = 3;

export async function fetchFlexConfig(): Promise<FlexConfig | null> {
  return getSingleton<FlexConfig>(FLEXLOANS_ACCOUNT, "config");
}

export async function fetchFlexMarkets(): Promise<FlexMarket[]> {
  return getTableRows<FlexMarket>({ code: FLEXLOANS_ACCOUNT, table: "markets" });
}

export async function fetchFlexStabpools(): Promise<FlexStabpool[]> {
  return getTableRows<FlexStabpool>({ code: FLEXLOANS_ACCOUNT, table: "stabpools" });
}

export async function fetchFlexPositions(): Promise<FlexPosition[]> {
  return getTableRows<FlexPosition>({ code: FLEXLOANS_ACCOUNT, table: "positions" });
}

export async function fetchFlexSpDeposits(): Promise<FlexSpDeposit[]> {
  return getTableRows<FlexSpDeposit>({ code: FLEXLOANS_ACCOUNT, table: "spdeposits" });
}

export async function fetchFlexSurpluses(): Promise<FlexSurplus[]> {
  return getTableRows<FlexSurplus>({ code: FLEXLOANS_ACCOUNT, table: "surpluses" });
}

export async function fetchFlexFeeState(): Promise<FlexFeeState | null> {
  return getSingleton<FlexFeeState>(FLEXLOANS_ACCOUNT, "feestate");
}

export function transferAction(
  tokenContract: string,
  from: string,
  to: string,
  quantity: string,
  memo: string
) {
  return { account: tokenContract, name: "transfer", data: { from, to, quantity, memo } };
}

export function flexAction(name: string, data: Record<string, unknown>) {
  return { account: FLEXLOANS_ACCOUNT, name, data };
}
