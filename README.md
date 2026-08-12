# Hedgewaters

Vite + React + TypeScript app for **Hedgewaters** on **XPR Network**: Hedge CDP (`flexloans`), EASY half-loan (`easyloan`), and same-tx flash (`flashloan`). True-black UI with Flextokens yellow accents — IBM Plex Sans/Mono, borrow-first workspace, Markets / Stability Pool / Positions.

Wallets: **WebAuth** + **Anchor**, multi-account, one active signer via `useProton` / `useWallet`.

---

## What you get

- Dashboard, Borrow, Earn, Redeem (Product A)
- Easy half-loan flows (Product B)
- Flash product page (Product C, docs-first)
- In-app **Docs** (`/docs`, `/docs/:slug`)
- Theme tokens in `src/index.css` (`.btn`, `.input`, `.card`)
- `skill/` markdown for contracts, RPC, NFTs; Cursor skills under `.agents/skills/`

---

## Stack

| Layer | Choice |
|--------|--------|
| Build | Vite 5 |
| UI | React 18 + Tailwind |
| Fonts | IBM Plex Sans (UI), IBM Plex Mono (numbers) |
| Wallets | `@proton/web-sdk`, `@proton/link`, WharfKit session + Anchor plugin |
| Routing | `react-router-dom` |
| Tests | Vitest under `tests/` only |
| Contracts | C++ Antelope CDT in `contracts/` |

---

## Layout

```text
src/
  App.tsx                 # Router + WalletProvider + Wharf dialog
  layouts/AppShell.tsx    # TopNav + footer
  layouts/DocsLayout.tsx
  components/             # nav, wallet, markets, borrow, earn, redeem, easy, flash, docs, ui
  content/docs/           # in-app documentation articles
  pages/                  # Dashboard, Borrow, Earn, Redeem, Easy, Flash, docs, 404
  lib/chain/              # RPC + flexloans / easyloan / flashloan helpers
  hooks/                  # useProton, WalletProvider, useFlexData, useEasyData
  services/               # Wallet restore, WebAuth, Anchor, constants
contracts/                # flexloans, easyloan, flashloan
tests/                    # math + ABI (not under src/)
```

---

## Commands

```bash
npm install
npm run dev      # http://localhost:8080
npm run build
npm run preview
npm run test
```

Optional env (defaults shown):

```bash
VITE_FLEXLOANS_ACCOUNT=flexloans
VITE_EASYLOAN_ACCOUNT=easyloan
VITE_FLASHLOAN_ACCOUNT=flashloan
VITE_EASY_TOKEN=mon3y
```

Chain endpoints and app name: `src/services/walletConstants.ts`.

---

## Docs map

| Doc | Purpose |
|-----|---------|
| In-app `/docs` | Protocol reference for users |
| [`skill/SKILL.md`](skill/SKILL.md) | Index of `skill/` modules |
| [`.agents/skills/smart-contracts/SKILL.md`](.agents/skills/smart-contracts/SKILL.md) | Contract build / deploy / safety |
| [`Welcome.md`](Welcome.md) | Product one-liners |
| [`parameters.md`](parameters.md) | Goals & style constraints |
| [`project directive.md`](project%20directive.md) | On-chain product scope |

---

## Security

Signed actions change real chain state. Review generated code, use **testnet**, and read `skill/safety-guidelines.md` before deploying contracts.

---

## License

Dependencies keep their own licenses. Template positioning credits EASY / Flextokens ([flex.report](https://flex.report)).
