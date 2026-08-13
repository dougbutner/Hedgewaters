import { Chains } from '@wharfkit/common';

export const APP_NAME = 'Hedgewaters';
export const REQUEST_ACCOUNT = 'hedgewaters';

/** Vite injects import.meta.env in the browser; guard for Node/config contexts. */
const viteEnv =
  typeof import.meta !== 'undefined' && import.meta && 'env' in import.meta
    ? (import.meta as ImportMeta & { env?: Record<string, string | undefined> }).env
    : undefined;

/** When true, UI talks to Vite mock-chain middleware (tests/mock-chain). */
export const USE_MOCK_CHAIN = viteEnv?.VITE_USE_MOCK_CHAIN === '1';

/** Multiple RPC endpoints for fault tolerance (XPR Network mainnet). */
export const CHAIN_ENDPOINTS: string[] = USE_MOCK_CHAIN
  ? [
      typeof window !== 'undefined' ? window.location.origin : 'http://127.0.0.1:8080',
    ]
  : viteEnv?.VITE_CHAIN_ENDPOINTS
    ? String(viteEnv.VITE_CHAIN_ENDPOINTS)
        .split(',')
        .map((s) => s.trim())
        .filter(Boolean)
    : ['https://proton.greymass.com', 'https://proton.eosusa.io'];

/** Shown in the wallet selector modal (resolved against site origin). */
export const APP_LOGO = '/placeholder.svg';

/** XPR Network mainnet — same definition WharfKit ships in @wharfkit/common */
export const XPR_CHAIN = Chains.XPR;

export const XPR_CHAIN_ID_HEX = String(XPR_CHAIN.id);


