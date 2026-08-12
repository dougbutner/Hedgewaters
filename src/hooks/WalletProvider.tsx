import { createContext, useContext, type ReactNode } from "react";
import { useProton } from "./useProton";

type WalletApi = ReturnType<typeof useProton>;

const WalletContext = createContext<WalletApi | null>(null);

export function WalletProvider({ children }: { children: ReactNode }) {
  const wallet = useProton();
  return <WalletContext.Provider value={wallet}>{children}</WalletContext.Provider>;
}

export function useWallet(): WalletApi {
  const ctx = useContext(WalletContext);
  if (!ctx) throw new Error("useWallet must be used within WalletProvider");
  return ctx;
}
