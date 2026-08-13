import { CHAIN_ENDPOINTS, USE_MOCK_CHAIN } from "@/services/walletConstants";

/** Push UI-shaped actions to the Vite mock-chain middleware. */
export async function mockTransact(
  actions: Array<{ account: string; name: string; data: Record<string, unknown> }>
): Promise<{ transaction_id: string }> {
  if (!USE_MOCK_CHAIN) throw new Error("mockTransact only in VITE_USE_MOCK_CHAIN mode");
  const ep = CHAIN_ENDPOINTS[0]?.replace(/\/$/, "") || "";
  const res = await fetch(`${ep}/v1/chain/push_transaction`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ actions }),
  });
  const text = await res.text();
  if (!res.ok) {
    let msg = text;
    try {
      msg = (JSON.parse(text) as { error?: string }).error || text;
    } catch {
      /* keep text */
    }
    throw new Error(msg || `Mock RPC ${res.status}`);
  }
  return JSON.parse(text) as { transaction_id: string };
}
