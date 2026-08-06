/**
 * Liquity-X fixed-point math. No floating point in financial paths.
 */
import { check } from "proton-tsc";
import { INDEX_SCALE, BPS, HEALTH_MAX } from "./constants";

/** Multiply then divide with reduced overflow risk. */
export function mulDiv(a: u64, b: u64, denom: u64): u64 {
  check(denom > 0, "liquity-x: div0");
  const q = a / denom;
  const r = a % denom;
  return q * b + (r * b) / denom;
}

/** Current debt from stored debt and indices. */
export function currentDebt(storedDebt: u64, borrowIndex: u64, positionIndex: u64): u64 {
  check(positionIndex > 0, "liquity-x: bad position index");
  if (storedDebt == 0) return 0;
  return mulDiv(storedDebt, borrowIndex, positionIndex);
}

/**
 * Accrue borrow index for elapsed seconds at rate_bps (annual, linear).
 * year = 365 * 24 * 3600.
 */
export function accrueBorrowIndex(borrowIndex: u64, rateBps: u64, elapsed: u64): u64 {
  if (elapsed == 0 || rateBps == 0) return borrowIndex;
  const YEAR: u64 = 365 * 24 * 3600;
  const add = mulDiv(mulDiv(INDEX_SCALE, rateBps, BPS), elapsed, YEAR);
  return borrowIndex + add;
}

export function collateralValue(amount: u64, price: u64, priceScale: u64): u64 {
  return mulDiv(amount, price, priceScale);
}

/** Health ratio in bps. */
export function healthRatioBps(collValue: u64, debtValue: u64): u64 {
  if (debtValue == 0) return HEALTH_MAX;
  return mulDiv(collValue, BPS, debtValue);
}
