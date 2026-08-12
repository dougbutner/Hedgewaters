import { Outlet } from "react-router-dom";
import { DocsNav } from "@/components/docs/DocsNav";

export function DocsLayout() {
  return (
    <div className="flex flex-col gap-8 lg:flex-row">
      <DocsNav />
      <div className="min-w-0 flex-1">
        <Outlet />
      </div>
    </div>
  );
}
