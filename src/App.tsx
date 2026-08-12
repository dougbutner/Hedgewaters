import { useEffect } from "react";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import { appendWharfDialogElement } from "@/services/wharfSessionKit";
import { WalletProvider } from "@/hooks/WalletProvider";
import { AppShell } from "@/layouts/AppShell";
import { DocsLayout } from "@/layouts/DocsLayout";
import Dashboard from "./pages/Dashboard.tsx";
import Borrow from "./pages/Borrow.tsx";
import Earn from "./pages/Earn.tsx";
import Redeem from "./pages/Redeem.tsx";
import Easy from "./pages/Easy.tsx";
import Flash from "./pages/Flash.tsx";
import DocsHub from "./pages/docs/DocsHub.tsx";
import DocPage from "./pages/docs/DocPage.tsx";
import NotFound from "./pages/NotFound.tsx";

export default function App() {
  useEffect(() => {
    appendWharfDialogElement();
  }, []);

  return (
    <BrowserRouter>
      <WalletProvider>
        <Routes>
          <Route element={<AppShell />}>
            <Route path="/" element={<Dashboard />} />
            <Route path="/borrow" element={<Borrow />} />
            <Route path="/earn" element={<Earn />} />
            <Route path="/redeem" element={<Redeem />} />
            <Route path="/easy" element={<Easy />} />
            <Route path="/flash" element={<Flash />} />
            <Route path="/docs" element={<DocsLayout />}>
              <Route index element={<DocsHub />} />
              <Route path=":slug" element={<DocPage />} />
            </Route>
            <Route path="*" element={<NotFound />} />
          </Route>
        </Routes>
      </WalletProvider>
    </BrowserRouter>
  );
}
