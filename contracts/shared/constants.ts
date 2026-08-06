/**
 * Liquity-X shared constants.
 * Research: research/vaults-sx-breach.md — never sync totals from balances.
 */

export const INDEX_SCALE: u64 = 1000000000000000000;
export const PRICE_SCALE: u64 = 100000000;
export const BPS: u64 = 10000;
export const HEALTH_MAX: u64 = 0xffffffffffffffff;

export const POS_ACTIVE: u8 = 0;
export const POS_FROZEN: u8 = 1;
export const POS_LIQUIDATING: u8 = 2;
export const POS_CLOSED: u8 = 3;

export const LIQ_QUEUED: u8 = 0;
export const LIQ_ABSORBING: u8 = 1;
export const LIQ_DONE: u8 = 2;

export const ORACLE_MAX_AGE: u64 = 600;
export const ORACLE_MIN_CONFIDENCE: u64 = 8000;

/** Placeholder account names — set per network before deploy. */
export const ACCOUNT_ORACLE: string = "oracle.xpr";
export const ACCOUNT_MARKET: string = "market.xpr";
export const ACCOUNT_POSITION: string = "position.xpr";
export const ACCOUNT_DEBT: string = "debt.xpr";
export const ACCOUNT_STABILITY: string = "stability.xpr";
export const ACCOUNT_LIQUIDATION: string = "liquidation.xpr";
export const ACCOUNT_GOVERNANCE: string = "governance.xpr";
export const ACCOUNT_TOKEN: string = "token.xpr";

export function isRateBucket(rateBps: u16): bool {
  return (
    rateBps == 50 ||
    rateBps == 100 ||
    rateBps == 200 ||
    rateBps == 400 ||
    rateBps == 600 ||
    rateBps == 1000
  );
}

export function nextId(available: u64): u64 {
  return available == 0 ? <u64>1 : available;
}
