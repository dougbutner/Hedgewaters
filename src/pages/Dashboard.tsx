import { Navigate } from "react-router-dom";

/** Legacy dashboard → Borrow is the home workspace. */
export default function Dashboard() {
  return <Navigate to="/" replace />;
}
