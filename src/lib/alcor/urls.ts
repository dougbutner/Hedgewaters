/** Alcor XPR UI — prefer https://alcor.exchange/v/xpr/* (embed + links).
 * Token ids must match Proton Alcor API casing (lowercase), e.g. easy-mon3y.
 */

export const EASY_TOKEN_ID = "easy-mon3y";
export const XPR_TOKEN_ID = "xpr-eosio.token";
export const XUSDC_TOKEN_ID = "xusdc-xtokens";

const BASE = "https://alcor.exchange/v/xpr";

function pairQuery(input: string, output: string) {
  return `input=${encodeURIComponent(input)}&output=${encodeURIComponent(output)}`;
}

/** Default swap: buy EASY (input XPR → output EASY). */
export function alcorSwap(opts?: { widget?: boolean; input?: string; output?: string }) {
  const input = opts?.input ?? XPR_TOKEN_ID;
  const output = opts?.output ?? EASY_TOKEN_ID;
  const q = pairQuery(input, output);
  // swap-widget / chart-widget 302 → /terminal; /swap keeps the pair and embeds cleanly.
  if (opts?.widget) return `${BASE}/terminal?${q}`;
  return `${BASE}/swap?${q}`;
}

/** Chart / terminal always paired toward EASY. */
export function alcorChart(opts?: { input?: string; output?: string }) {
  const input = opts?.input ?? XPR_TOKEN_ID;
  const output = opts?.output ?? EASY_TOKEN_ID;
  return `${BASE}/terminal?${pairQuery(input, output)}`;
}

export function alcorMarkets() {
  return `${BASE}/markets`;
}

export function alcorFarms(contract = "mon3y") {
  return `${BASE}/farm?contracts=${encodeURIComponent(contract)}`;
}

export function alcorFarmCreate() {
  return `${BASE}/farm/create`;
}

export function alcorEasyAnalytics() {
  return `${BASE}/analytics/tokens/easy-mon3y`;
}

export function alcorBridge() {
  return `${BASE}/bridge`;
}

export function alcorWallet() {
  return `${BASE}/wallet`;
}

export function alcorOtc() {
  return `${BASE}/otc`;
}

export function alcorLiquidity() {
  return `${BASE}/swap?tab=liquidity&${pairQuery(XPR_TOKEN_ID, EASY_TOKEN_ID)}`;
}

export type AlcorTabId =
  | "swap"
  | "chart"
  | "markets"
  | "farms"
  | "analytics"
  | "liquidity"
  | "bridge"
  | "wallet"
  | "otc";

export const ALCOR_TABS: {
  id: AlcorTabId;
  label: string;
  embed: boolean;
  href: () => string;
}[] = [
  { id: "swap", label: "Swap", embed: true, href: () => alcorSwap({ widget: true }) },
  { id: "chart", label: "Chart", embed: true, href: () => alcorChart() },
  { id: "markets", label: "Markets", embed: true, href: () => alcorMarkets() },
  { id: "farms", label: "Farms", embed: true, href: () => alcorFarms() },
  { id: "analytics", label: "EASY", embed: true, href: () => alcorEasyAnalytics() },
  { id: "liquidity", label: "Liquidity", embed: true, href: () => alcorLiquidity() },
  { id: "bridge", label: "Bridge", embed: true, href: () => alcorBridge() },
  { id: "wallet", label: "Wallet", embed: true, href: () => alcorWallet() },
  { id: "otc", label: "OTC", embed: true, href: () => alcorOtc() },
];
