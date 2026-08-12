/// <reference types="vite/client" />

interface ImportMetaEnv {
  readonly VITE_FLEXLOANS_ACCOUNT?: string;
  readonly VITE_EASYLOAN_ACCOUNT?: string;
  readonly VITE_FLASHLOAN_ACCOUNT?: string;
  readonly VITE_EASY_TOKEN?: string;
}

interface ImportMeta {
  readonly env: ImportMetaEnv;
}
