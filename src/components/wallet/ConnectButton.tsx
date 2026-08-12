import { useState } from "react";
import { walletTypeLabel } from "@/services/walletSessions";
import { useWallet } from "@/hooks/WalletProvider";

export function ConnectButton() {
  const {
    actor,
    isLoggedIn,
    loading,
    wallets,
    activeId,
    addWebAuthWallet,
    addAnchorWallet,
    setActive,
    removeWallet,
    disconnectAll,
  } = useWallet();
  const [copied, setCopied] = useState(false);

  const copyActor = () => {
    if (!actor) return;
    void navigator.clipboard.writeText(actor).then(() => {
      setCopied(true);
      window.setTimeout(() => setCopied(false), 2000);
    });
  };

  if (!isLoggedIn || !actor) {
    return (
      <div className="flex items-center gap-2">
        <button
          type="button"
          className="btn btn-primary btn-sm"
          disabled={loading}
          onClick={() => void addWebAuthWallet()}
        >
          {loading ? "Restoring…" : "Connect"}
        </button>
        <button
          type="button"
          className="btn btn-outline btn-sm hidden sm:inline-flex"
          disabled={loading}
          onClick={() => void addAnchorWallet()}
        >
          Anchor
        </button>
      </div>
    );
  }

  return (
    <details className="relative">
      <summary className="btn btn-outline btn-sm cursor-pointer list-none [&::-webkit-details-marker]:hidden">
        <span className="max-w-[140px] truncate">{actor}</span>
        <span aria-hidden>▾</span>
      </summary>
      <div className="absolute right-0 z-50 mt-2 w-80 rounded-lg border bg-popover p-2 shadow-md">
        <div className="flex items-center gap-2 px-2 py-2">
          <span className="min-w-0 flex-1 truncate font-medium">{actor}</span>
          <button type="button" className="btn btn-ghost btn-sm" onClick={copyActor}>
            {copied ? "Copied" : "Copy"}
          </button>
        </div>
        <hr className="my-2 border-border" />
        <p className="px-2 text-xs uppercase tracking-wide text-muted-foreground">Connected wallets</p>
        <ul className="mt-1 max-h-64 overflow-y-auto">
          {wallets.map((w) => {
            const active = w.id === activeId;
            return (
              <li key={w.id} className="flex items-center gap-2 rounded px-2 py-2 hover:bg-secondary">
                <button type="button" className="min-w-0 flex-1 text-left" onClick={() => setActive(w.id)}>
                  <div className="truncate font-medium">
                    {w.provider === "webauth" ? w.auth.actor : w.actor}
                  </div>
                  <div className="truncate text-xs text-muted-foreground">{walletTypeLabel(w)}</div>
                </button>
                {active && <span className="text-xs text-primary">active</span>}
                <button
                  type="button"
                  className="btn btn-ghost btn-sm text-muted-foreground hover:text-destructive"
                  aria-label="Disconnect wallet"
                  onClick={() => void removeWallet(w.id)}
                >
                  ×
                </button>
              </li>
            );
          })}
        </ul>
        <hr className="my-2 border-border" />
        <button type="button" className="btn btn-outline btn-sm mb-2 w-full" onClick={() => void addWebAuthWallet()}>
          + WebAuth / mobile
        </button>
        <button type="button" className="btn btn-outline btn-sm mb-2 w-full" onClick={() => void addAnchorWallet()}>
          + Anchor
        </button>
        <button
          type="button"
          className="btn btn-ghost btn-sm w-full text-muted-foreground hover:text-destructive"
          onClick={() => void disconnectAll()}
        >
          Disconnect all
        </button>
      </div>
    </details>
  );
}
