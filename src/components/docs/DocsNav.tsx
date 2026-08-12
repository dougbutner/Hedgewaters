import { NavLink } from "react-router-dom";
import { DOCS } from "@/content/docs";

export function DocsNav() {
  return (
    <nav className="lg:w-56 shrink-0">
      <p className="mb-2 text-xs uppercase tracking-wide text-muted-foreground">Documentation</p>
      <div className="flex flex-wrap gap-1 lg:flex-col">
        <NavLink
          to="/docs"
          end
          className={({ isActive }) =>
            `rounded-full px-3 py-1.5 text-sm ${isActive ? "bg-secondary text-foreground" : "text-muted-foreground hover:text-foreground"}`
          }
        >
          Hub
        </NavLink>
        {DOCS.map((d) => (
          <NavLink
            key={d.slug}
            to={`/docs/${d.slug}`}
            className={({ isActive }) =>
              `rounded-full px-3 py-1.5 text-sm ${isActive ? "bg-secondary text-foreground" : "text-muted-foreground hover:text-foreground"}`
            }
          >
            {d.title}
          </NavLink>
        ))}
      </div>
    </nav>
  );
}
