# Reference contracts (read-only)

Vendored sources for **research and comparison only**. Do not deploy from here. Do not copy EVM patterns into `contracts/` without Antelope redesign.

| Path | Origin | Why it is here |
|------|--------|----------------|
| `sx.vaults/` | [stableex/sx.vaults](https://github.com/stableex/sx.vaults) | Vulnerable vault — `update()` balance overwrite |
| `sx.flash/` | [stableex/sx.flash](https://github.com/stableex/sx.flash) | Flash loan used as exploit trigger |
| `liquity-bold/` | [liquity/bold](https://github.com/liquity/bold) sparse: `contracts/src` | Liquity V2 economics reference |
| `legacy-xpr/` | Prior Hedgewaters `contracts/` samples | Local XPR/C++ samples (Alcor, ups, token headers) |

## How to use

1. Read [`../research/`](../research/) first.  
2. When implementing a Liquity-X feature, open the matching Liquity V2 Solidity file for **intent**.  
3. Open `sx.vaults/vaults.sx.cpp` `update` + `on_transfer` before any accounting change.  
4. Implement only under [`../contracts/`](../contracts/).

## License note

Upstream licenses remain with their authors (see each tree’s LICENSE/README). Vendored for private study inside this project.
