/**
 * Risk Engine — pure helpers. Caller snapshots oracle once and passes primitives.
 */
import { check, currentTimeSec } from "proton-tsc";
import {
  ORACLE_MAX_AGE,
  ORACLE_MIN_CONFIDENCE,
  PRICE_SCALE,
} from "./constants";
import { collateralValue, currentDebt, healthRatioBps } from "./math";

export class PriceSnapshot {
  constructor(
    public price: u64 = 0,
    public timestamp: u64 = 0,
    public confidence: u64 = 0,
    public twap: u64 = 0
  ) {}
}

export function snapshotOracle(
  price: u64,
  timestamp: u64,
  confidence: u64,
  twap: u64
): PriceSnapshot {
  const now = currentTimeSec();
  check(price > 0, "liquity-x: oracle price <= 0");
  check(timestamp <= now, "liquity-x: oracle future timestamp");
  check(now - timestamp <= ORACLE_MAX_AGE, "liquity-x: oracle stale");
  check(confidence >= ORACLE_MIN_CONFIDENCE, "liquity-x: oracle confidence");
  return new PriceSnapshot(price, timestamp, confidence, twap);
}

export function positionDebt(storedDebt: u64, borrowIndex: u64, positionIndex: u64): u64 {
  return currentDebt(storedDebt, borrowIndex, positionIndex);
}

export function health(
  collateral: u64,
  storedDebt: u64,
  borrowIndex: u64,
  positionIndex: u64,
  price: PriceSnapshot
): u64 {
  const debt = positionDebt(storedDebt, borrowIndex, positionIndex);
  const cValue = collateralValue(collateral, price.price, PRICE_SCALE);
  return healthRatioBps(cValue, debt);
}

export function isHealthy(
  collateral: u64,
  storedDebt: u64,
  borrowIndex: u64,
  positionIndex: u64,
  price: PriceSnapshot,
  mcr: u64
): bool {
  return health(collateral, storedDebt, borrowIndex, positionIndex, price) >= mcr;
}

export function isLiquidatable(
  collateral: u64,
  storedDebt: u64,
  borrowIndex: u64,
  positionIndex: u64,
  price: PriceSnapshot,
  mcr: u64
): bool {
  return health(collateral, storedDebt, borrowIndex, positionIndex, price) < mcr;
}
