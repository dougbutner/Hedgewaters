import { Link, Navigate, useParams } from "react-router-dom";
import { getDoc } from "@/content/docs";

export default function DocPage() {
  const { slug } = useParams<{ slug: string }>();
  const doc = slug ? getDoc(slug) : undefined;
  if (!doc) return <Navigate to="/docs" replace />;

  const Body = doc.Component;

  return (
    <div className="space-y-4">
      <p className="text-sm text-muted-foreground">
        <Link to="/docs" className="hover:text-primary">
          Docs
        </Link>{" "}
        / {doc.title}
      </p>
      <h1 className="page-title">{doc.title}</h1>
      <Body />
    </div>
  );
}
