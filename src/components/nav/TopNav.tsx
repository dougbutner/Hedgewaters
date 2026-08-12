import { useState } from "react";
import { NavLink, Link, useLocation } from "react-router-dom";
import { ConnectButton } from "@/components/wallet/ConnectButton";
import { getPageMeta } from "@/lib/nav/pageMeta";

const PRIMARY = [
  { to: "/", label: "Borrow", end: true },
  { to: "/markets", label: "Markets", end: false },
  { to: "/earn", label: "Stability Pool", end: false },
  { to: "/positions", label: "Positions", end: false },
  { to: "/trade", label: "Alcor", end: false },
] as const;

const MORE = [
  { to: "/redeem", label: "Redeem" },
  { to: "/easy", label: "Easy" },
  { to: "/flash", label: "Flash" },
  { to: "/docs", label: "Docs" },
] as const;

function isRouteActive(pathname: string, to: string, end?: boolean) {
  if (end || to === "/") return pathname === "/" || pathname === "/borrow";
  return pathname === to || pathname.startsWith(`${to}/`);
}

export function TopNav() {
  const { pathname } = useLocation();
  const meta = getPageMeta(pathname);
  const isTerminal = pathname === "/trade" || pathname.startsWith("/trade/");
  const [open, setOpen] = useState(false);
  const [moreOpen, setMoreOpen] = useState(false);

  const otherPrimary = PRIMARY.filter(({ to, end }) => !isRouteActive(pathname, to, end));
  const otherMore = MORE.filter(({ to }) => !isRouteActive(pathname, to));

  return (
    <header className="sticky top-0 z-40 border-b border-white/5 bg-[hsl(var(--glass)/0.55)] backdrop-blur-xl">
      <div className="mx-auto flex max-w-app items-stretch gap-4 px-4 md:gap-8 md:px-6 lg:gap-12 lg:px-8">
        <Link
          to="/"
          className="flex shrink-0 flex-col justify-center py-3 leading-none"
          onClick={() => setOpen(false)}
        >
          <span className="text-[15px] font-semibold tracking-tight text-foreground">HEDGEWATERS</span>
          <span className="mt-0.5 text-[10px] font-medium uppercase tracking-[0.14em] text-muted-foreground">
            XPR Network
          </span>
        </Link>

        {/* Active page title + subtitle replace the selected menu item */}
        {!isTerminal && (
          <div className="flex min-w-0 max-w-[min(100%,28rem)] flex-col justify-center border-l border-white/10 py-2.5 pl-4 md:max-w-md md:pl-7 lg:pl-10">
            <h1 className="truncate text-[17px] font-semibold leading-tight tracking-tight text-foreground md:text-[19px]">
              {meta.title}
            </h1>
            <p className="mt-0.5 line-clamp-2 text-[11px] leading-snug text-muted-foreground md:text-xs">
              {meta.subtitle}
            </p>
          </div>
        )}

        {/* Remaining destinations — spaced farther from the title */}
        <nav className="ml-auto hidden items-center gap-2 md:flex lg:gap-4">
          {otherPrimary.map(({ to, label, end }) => (
            <NavLink
              key={to}
              to={to}
              end={end}
              className="nav-caps rounded-md px-2.5 py-1.5 text-muted-foreground transition-[color,background-color] duration-[var(--motion)] hover:bg-secondary/60 hover:text-foreground lg:px-3"
            >
              {label}
            </NavLink>
          ))}
          <div className="relative ml-1 lg:ml-3">
            <button
              type="button"
              className="nav-caps rounded-md px-2.5 py-1.5 text-muted-foreground hover:bg-secondary/60 hover:text-foreground lg:px-3"
              onClick={() => setMoreOpen((v) => !v)}
            >
              More ▾
            </button>
            {moreOpen && (
              <>
                <button
                  type="button"
                  className="fixed inset-0 z-40 cursor-default"
                  aria-label="Close"
                  onClick={() => setMoreOpen(false)}
                />
                <div className="panel absolute right-0 z-50 mt-1 w-44 py-1 shadow-lg">
                  {otherMore.map((item) => (
                    <Link
                      key={item.to}
                      to={item.to}
                      className="nav-caps relative z-[1] block px-3 py-2 text-muted-foreground hover:bg-secondary/80 hover:text-foreground"
                      onClick={() => setMoreOpen(false)}
                    >
                      {item.label}
                    </Link>
                  ))}
                </div>
              </>
            )}
          </div>
        </nav>

        <div className="flex shrink-0 items-center gap-2 py-2">
          <span className="glass-bevel hidden items-center gap-1.5 rounded-md bg-[hsl(var(--glass)/0.4)] px-2.5 py-1 text-[10px] font-semibold uppercase tracking-wider text-muted-foreground sm:inline-flex">
            <span className="h-1.5 w-1.5 rounded-full bg-success" />
            XPR
          </span>
          <ConnectButton />
          <button
            type="button"
            className="btn btn-ghost btn-sm md:hidden"
            aria-label="Menu"
            onClick={() => setOpen((v) => !v)}
          >
            ☰
          </button>
        </div>
      </div>

      {open && (
        <nav className="flex flex-wrap gap-1 border-t border-white/5 bg-[hsl(var(--glass)/0.7)] px-4 py-2 backdrop-blur-xl md:hidden">
          {[...otherPrimary, ...otherMore].map((item) => (
            <NavLink
              key={item.to}
              to={item.to}
              end={"end" in item ? item.end : false}
              onClick={() => setOpen(false)}
              className="nav-caps rounded-md px-3 py-1.5 text-muted-foreground"
            >
              {item.label}
            </NavLink>
          ))}
        </nav>
      )}
    </header>
  );
}
