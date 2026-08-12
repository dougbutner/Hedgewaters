import { Outlet, Link } from "react-router-dom";
import { TopNav } from "@/components/nav/TopNav";

export function AppShell() {
  return (
    <div className="flex min-h-screen flex-col">
      <TopNav />
      <main className="mx-auto w-full max-w-6xl flex-1 px-4 py-8">
        <Outlet />
      </main>
      <footer className="border-t border-border px-4 py-4 text-sm text-muted-foreground">
        <div className="mx-auto flex max-w-6xl flex-wrap items-center justify-between gap-3">
          <p>Hedgewaters on XPR Network</p>
          <div className="flex flex-wrap gap-4">
            <Link to="/redeem" className="hover:text-primary">
              Redeem HXUSD
            </Link>
            <Link to="/flash" className="hover:text-primary">
              Flash
            </Link>
            <Link to="/docs" className="hover:text-primary">
              Docs
            </Link>
          </div>
        </div>
      </footer>
    </div>
  );
}
