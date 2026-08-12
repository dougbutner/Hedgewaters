import { useState } from "react";
import { NavLink } from "react-router-dom";
import { ConnectButton } from "@/components/wallet/ConnectButton";

const LINKS = [
  { to: "/", label: "Dashboard", icon: DashIcon },
  { to: "/borrow", label: "Borrow", icon: BorrowIcon },
  { to: "/earn", label: "Earn", icon: EarnIcon },
  { to: "/redeem", label: "Redeem", icon: RedeemIcon },
  { to: "/easy", label: "Easy", icon: EasyIcon },
  { to: "/flash", label: "Flash", icon: FlashIcon },
  { to: "/docs", label: "Docs", icon: DocsIcon },
] as const;

export function TopNav() {
  const [open, setOpen] = useState(false);

  return (
    <header className="border-b border-border">
      <div className="mx-auto flex max-w-6xl items-center justify-between gap-4 px-4 py-3">
        <NavLink to="/" className="flex items-center gap-2 shrink-0" onClick={() => setOpen(false)}>
          <span className="flex h-8 w-8 items-center justify-center rounded-md bg-primary text-sm font-bold text-primary-foreground">
            H
          </span>
          <span className="font-display text-2xl tracking-wide">Hedgewaters</span>
        </NavLink>

        <nav className="hidden items-center gap-1 lg:flex">
          {LINKS.map(({ to, label, icon: Icon }) => (
            <NavLink
              key={to}
              to={to}
              end={to === "/"}
              className={({ isActive }) =>
                `inline-flex items-center gap-1.5 rounded-full px-3 py-1.5 text-sm transition-colors ${
                  isActive ? "text-primary" : "text-muted-foreground hover:text-foreground"
                }`
              }
            >
              {({ isActive }) => (
                <>
                  <Icon active={isActive} />
                  {label}
                </>
              )}
            </NavLink>
          ))}
        </nav>

        <div className="flex items-center gap-2">
          <ConnectButton />
          <button
            type="button"
            className="btn btn-ghost btn-sm lg:hidden"
            aria-label="Menu"
            onClick={() => setOpen((v) => !v)}
          >
            ☰
          </button>
        </div>
      </div>

      {open && (
        <nav className="flex flex-wrap gap-1 border-t border-border px-4 py-2 lg:hidden">
          {LINKS.map(({ to, label, icon: Icon }) => (
            <NavLink
              key={to}
              to={to}
              end={to === "/"}
              onClick={() => setOpen(false)}
              className={({ isActive }) =>
                `inline-flex items-center gap-1.5 rounded-full px-3 py-1.5 text-sm ${
                  isActive ? "text-primary" : "text-muted-foreground"
                }`
              }
            >
              {({ isActive }) => (
                <>
                  <Icon active={isActive} />
                  {label}
                </>
              )}
            </NavLink>
          ))}
        </nav>
      )}
    </header>
  );
}

function DashIcon({ active }: { active: boolean }) {
  return (
    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" aria-hidden>
      <rect x="1" y="1" width="6" height="6" rx="1" stroke={active ? "currentColor" : "#94a3b8"} />
      <rect x="9" y="1" width="6" height="6" rx="1" stroke={active ? "currentColor" : "#94a3b8"} />
      <rect x="1" y="9" width="6" height="6" rx="1" stroke={active ? "currentColor" : "#94a3b8"} />
      <rect x="9" y="9" width="6" height="6" rx="1" stroke={active ? "currentColor" : "#94a3b8"} />
    </svg>
  );
}

function BorrowIcon({ active }: { active: boolean }) {
  return (
    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" aria-hidden>
      <path d="M3 11V5l5-3 5 3v6l-5 3-5-3Z" stroke={active ? "currentColor" : "#94a3b8"} />
    </svg>
  );
}

function EarnIcon({ active }: { active: boolean }) {
  return (
    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" aria-hidden>
      <circle cx="8" cy="8" r="6" stroke={active ? "currentColor" : "#94a3b8"} />
      <path d="M8 4v8M5.5 6.5c.6-1 1.5-1.5 2.5-1.5s1.9.5 2.5 1.5M5.5 9.5c.6 1 1.5 1.5 2.5 1.5s1.9-.5 2.5-1.5" stroke={active ? "currentColor" : "#94a3b8"} />
    </svg>
  );
}

function RedeemIcon({ active }: { active: boolean }) {
  return (
    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" aria-hidden>
      <path d="M3 8h10M9 4l4 4-4 4" stroke={active ? "currentColor" : "#94a3b8"} strokeLinecap="round" />
    </svg>
  );
}

function EasyIcon({ active }: { active: boolean }) {
  return (
    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" aria-hidden>
      <circle cx="6" cy="8" r="3.5" stroke={active ? "currentColor" : "#94a3b8"} />
      <circle cx="10" cy="8" r="3.5" stroke={active ? "currentColor" : "#94a3b8"} />
    </svg>
  );
}

function FlashIcon({ active }: { active: boolean }) {
  return (
    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" aria-hidden>
      <path d="M9 1 4 9h5l-2 6 7-9H9l0-5Z" stroke={active ? "currentColor" : "#94a3b8"} strokeLinejoin="round" />
    </svg>
  );
}

function DocsIcon({ active }: { active: boolean }) {
  return (
    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" aria-hidden>
      <path d="M4 2h6l3 3v9H4V2Z" stroke={active ? "currentColor" : "#94a3b8"} />
      <path d="M10 2v3h3" stroke={active ? "currentColor" : "#94a3b8"} />
    </svg>
  );
}
