# XPR App Forge

A **vanilla** Vite + React + TypeScript starter for **XPR Network** apps: **WebAuth** + **Anchor**, multi-account header, one active signer, and a plain **contract action** form. No UI kit, no query layer, no Radix/shadcn—native HTML and a few Tailwind classes.

Use it as a **copy template** for games and playful on-chain apps. Wallet code stays; you replace the page.

---

## What you get

- Connect **WebAuth** (browser / mobile) via [`@proton/web-sdk`](https://docs.xprnetwork.org/client-sdks/web.html) + `@proton/link`, or **Anchor** via WharfKit
- Remember several wallets, switch the active signer, sign with `useProton().transact`
- Black / gold theme tokens in `src/index.css` (`.btn`, `.input`, `.card`)
- `skill/` markdown for contracts, RPC, NFTs, testing; Cursor skills under `.agents/skills/`

Not included on purpose: DeFi dashboards, swaps, portfolios, or financial-product scaffolding.

---

## Stack (minimal)

| Layer | Choice |
|--------|--------|
| Build | Vite 5 |
| UI | React 18 + Tailwind utilities |
| Wallets | `@proton/web-sdk`, `@proton/link`, WharfKit session + Anchor plugin |
| Routing | `react-router-dom` (`/`, 404) |
| Tests | Vitest (smoke) |

---

## Layout

```text
src/
  App.tsx                 # Router + Wharf dialog mount
  main.tsx
  index.css               # Theme + .btn / .input / .card
  components/
    Header.tsx            # Multi-wallet menu (native <details>)
    TransactionForm.tsx   # Contract / action / JSON → transact
  hooks/useProton.ts
  pages/Index.tsx         # Home
  pages/NotFound.tsx
  services/               # Wallet restore, WebAuth, Anchor, constants
skill/                    # XPR / EOSIO guides
.agents/skills/           # smart-contracts, alcor-exchange
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

Chain endpoints and app name: `src/services/walletConstants.ts`.

---

## How to build from this template

1. Copy the repo (or clone).
2. Keep wallet services; change pages/components only as needed.
3. For on-chain contracts, follow `.agents/skills/smart-contracts/SKILL.md` and `skill/safety-guidelines.md`—**testnet first**.

---

## Docs map

| Doc | Purpose |
|-----|---------|
| [`skill/SKILL.md`](skill/SKILL.md) | Index of `skill/` modules |
| [`.agents/skills/smart-contracts/SKILL.md`](.agents/skills/smart-contracts/SKILL.md) | Contract build / deploy / safety |
| [`AI_BUILDER_GUIDE.md`](AI_BUILDER_GUIDE.md) | UI + NFT metadata conventions |
| [`Welcome.md`](Welcome.md) | First-session questions |
| [`parameters.md`](parameters.md) | Template goals & style constraints |

---

## Security

Signed actions can change real chain state. Review generated code, use **testnet**, and read `skill/safety-guidelines.md` before deploying contracts. Prefer narrow game actions over the generic JSON form in production.

---

## License

Dependencies keep their own licenses. Template positioning credits EASY / Flextokens ([flex.report](https://flex.report)).
