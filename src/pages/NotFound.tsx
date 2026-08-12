import { Link, useLocation } from "react-router-dom";
import { useEffect } from "react";

export default function NotFound() {
  const location = useLocation();

  useEffect(() => {
    console.error("404:", location.pathname);
  }, [location.pathname]);

  return (
    <div className="flex min-h-[60vh] flex-col items-center justify-center text-center">
      <h1 className="page-title">404</h1>
      <p className="mt-2 text-muted-foreground">Page not found</p>
      <Link to="/" className="mt-4 text-primary hover:underline">
        Back to dashboard
      </Link>
    </div>
  );
}
