import { Outlet, Link, useLocation } from "react-router-dom";
import { TopNav } from "@/components/nav/TopNav";
import { OrganicShapes } from "@/components/ui/OrganicShapes";
import { TestModeBanner } from "@/components/ui/TestModeBanner";

export function AppShell() {
  const { pathname } = useLocation();
  const isTerminal = pathname === "/trade" || pathname.startsWith("/trade/");

  return (
    <div className="flex min-h-screen flex-col">
      <OrganicShapes />
      <TestModeBanner />
      <TopNav />
      {isTerminal ? (
        <main className="flex min-h-0 w-full flex-1 flex-col">
          <Outlet />
        </main>
      ) : (
        <>
          <main className="page-enter mx-auto w-full max-w-app flex-1 px-4 pb-6 pt-2 md:px-6 md:pb-8 md:pt-2 lg:px-8">
            <Outlet />
          </main>
          <footer>
            <div className="water-rule" aria-hidden />
            <div className="mx-auto flex max-w-app flex-wrap items-center justify-between gap-x-6 gap-y-2 px-4 py-4 text-xs text-muted-foreground md:px-6 lg:px-8">
              <p className="tracking-wide">Hedgewaters · XPR Network</p>
              <div className="flex flex-wrap gap-x-4 gap-y-1 uppercase tracking-wider text-[10px] font-semibold">
                <Link to="/markets" className="hover:text-foreground">
                  Markets
                </Link>
                <Link to="/earn" className="hover:text-foreground">
                  Stability Pool
                </Link>
                <Link to="/trade" className="hover:text-foreground">
                  Alcor · EASY
                </Link>
                <Link to="/flash" className="hover:text-foreground">
                  Flash
                </Link>
                <Link to="/docs" className="hover:text-foreground">
                  Docs
                </Link>
                <a
                  href="https://www.xprnetwork.org"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="hover:text-foreground"
                >
                  XPR Network
                </a>
              </div>
            </div>
          </footer>
        </>
      )}
    </div>
  );
}
