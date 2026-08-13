/// <reference types="vite/client" />

interface ImportMetaEnv {
  readonly VITE_FLEXLOANS_ACCOUNT?: string;
  readonly VITE_EASYLOAN_ACCOUNT?: string;
  readonly VITE_FLASHLOAN_ACCOUNT?: string;
  readonly VITE_EASY_TOKEN?: string;
  readonly VITE_USE_MOCK_CHAIN?: string;
  readonly VITE_CHAIN_ENDPOINTS?: string;
}

interface ImportMeta {
  readonly env: ImportMetaEnv;
}
