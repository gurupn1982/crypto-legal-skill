# Stablecoin Regulations

> **Disclaimer**: General legal information only. Stablecoin regulations are rapidly evolving — verify current status. Consult a qualified attorney.

---

## 1. What Is a Stablecoin (Legally)?

Regulators have broadly categorized stablecoins into three types, each with different regulatory treatment:

| Type | Examples | Backing | Regulatory Treatment |
|---|---|---|---|
| **Fiat-backed (payment stablecoin)** | USDC, USDT, PYUSD | 1:1 fiat reserves | E-money / payment regulation |
| **Crypto-backed (decentralized)** | DAI, UXD | Over-collateralized crypto | DeFi regulation (grey zone) |
| **Algorithmic** | TerraUSD (failed 2022) | Algorithm-controlled supply | High scrutiny; effectively banned in EU |
| **Commodity-backed** | PAXG (gold) | Physical commodity | Varies; often securities adjacent |

---

## 2. United States — GENIUS Act & STABLE Act (2025)

### GENIUS Act (Guiding and Establishing National Innovation for US Stablecoins)

Passed Senate in 2025. Key provisions:

- **Who can issue**: Federally or state-chartered issuers only
  - Federal route: OCC (Office of the Comptroller of the Currency) issues "payment stablecoin" charter
  - State route: State-chartered issuer with state regulatory approval + federal oversight if >$10B in circulation
- **Reserve requirements**: 1:1 backing with:
  - US cash or insured deposits
  - Short-term US Treasury securities (≤93 days maturity)
  - Central bank reserves
  - Overnight repos backed by Treasuries
- **Prohibited**: Algorithmic stablecoins (those that maintain peg through purely algorithmic means)
- **Foreign issuers**: Can serve US users if their home jurisdiction has "comparable" regulation (approved by Treasury)
- **Monthly audits**: Required; annual full audit by registered accounting firm
- **No interest on stablecoins**: Holders may not receive yield on the stablecoin itself

### STABLE Act (Stablecoin Transparency and Accountability for a Better Ledger Economy)

House counterpart to GENIUS Act. Key differences from GENIUS Act:
- More restrictive on state-chartered issuers
- Stronger prohibition on Big Tech issuing stablecoins
- 2-year moratorium on algorithmic stablecoins pending further study

**Status as of mid-2026**: GENIUS Act passed Senate; reconciliation with STABLE Act ongoing. Expected to become law in 2026.

### Implications for Solana Builders

- **App that accepts/sends USDC**: No issuer license needed; you're using a licensed stablecoin
- **Issuing a new stablecoin on Solana**: You need a federal or state charter (effectively only banks and licensed entities)
- **DeFi protocol with stablecoin yields**: The "no interest" rule applies to the stablecoin itself, not to lending protocols built on top

---

## 3. European Union — MiCA (Markets in Crypto-Assets Regulation)

MiCA creates two stablecoin categories with distinct requirements:

### E-Money Tokens (EMTs)

EMTs are stablecoins pegged to a single fiat currency (e.g., EURC).

**Requirements to issue EMTs in EU**:
- Must be an authorized **Electronic Money Institution (EMI)** under EU e-money directive
- Reserves: 1:1 backing in segregated, low-risk assets
- Redemption at par: holders must be able to redeem at any time
- **No interest**: Cannot pay interest on EMT holdings
- White paper: Must publish a MiCA-compliant crypto-asset white paper
- Approval by home member state regulator

**Significant EMT** (>€5B outstanding or >10M transactions/day):
- Additional requirements: EBA (European Banking Authority) oversight
- Enhanced liquidity buffers

### Asset-Referenced Tokens (ARTs)

ARTs are backed by a basket of assets (multiple currencies, commodities, or crypto).

**Requirements**:
- ART-specific authorization from home regulator
- Own funds ≥ 3% of average reserve assets
- Reserve composition rules
- **Prohibition**: No interest on ARTs; algorithmic ARTs with no asset backing: effectively prohibited

### Impact on Existing Stablecoins

- **USDC**: Circle obtained EMI status; USDC is MiCA-compliant in EU
- **USDT (Tether)**: As of mid-2026, has not obtained EU EMI authorization; exchange delistings in EU occurring
- **DAI/USDS**: MakerDAO/Sky pursuing MiCA compliance; ART classification under review

---

## 4. Issuing a Stablecoin on Solana — Technical + Legal Checklist

### Technical Prerequisites

Choose token standard:
- **SPL Token**: Basic; sufficient for most use cases
- **Token-2022**: Extensions for compliance-critical features:
  - **Transfer hook**: Call compliance program on each transfer (sanctions screening, KYC)
  - **Permanent delegate**: Freeze/clawback for regulatory compliance
  - **Confidential transfers**: ZK-based privacy
  - **Transfer fee**: Revenue model for issuer

### Legal Prerequisites

Before issuing a stablecoin with real financial value:

1. Determine jurisdiction: Where are you, where are your users?
2. **US users**: Need federal payment stablecoin charter or licensed banking partner
3. **EU users**: Need EMI license (or launch via existing licensed partner)
4. **Singapore users**: Need MAS Major Payment Institution license
5. **UAE users**: VARA license for stablecoin issuance
6. **Offshore-only**: Cayman/BVI entity, geo-block US + EU users

### Practical Options for Founders

| Approach | Description | Difficulty |
|---|---|---|
| Build on USDC | Accept Circle's USDC; no issuer license needed | Easy |
| White-label licensed issuer | Partner with licensed EMI to issue your stablecoin | Medium |
| Apply for charter/license | Become a licensed issuer | Hard; $1M+ legal costs |
| Offshore launch (no US/EU users) | Issue in permissive jurisdiction, geo-block regulated markets | Medium; limited market |

**Recommended for most Solana builders**: Use USDC or PYUSD and build value-add services on top. Don't issue your own unless you have $5M+ in legal budget.

---

## 5. Reserve Requirements by Jurisdiction

| Jurisdiction | Reserve Requirement | Who Earns Yield | Audits |
|---|---|---|---|
| US (GENIUS Act) | 1:1 US cash, T-bills <93 days | Issuer | Monthly + annual |
| EU (MiCA EMT) | 1:1 in segregated assets | Issuer | Ongoing + EBA oversight |
| Singapore (MAS) | 1:1 in cash or T-bills, <3 month maturity | Issuer | Annual |
| UAE (VARA) | 1:1 in approved assets | Issuer | Monthly |
| Cayman (CIMA) | As defined in VASP registration | Issuer | Annual |

**Key business model**: All frameworks allow the issuer to earn yield on reserves. This is how Circle earns revenue — holds T-bills backing USDC, earns the yield, does not pass it to token holders.

---

## 6. Algorithmic Stablecoins — Current Status

Following TerraUSD collapse (May 2022, $40B wiped out):

- **EU**: Effectively prohibited — algorithmic ARTs without asset backing not authorized under MiCA
- **US**: GENIUS Act prohibits "endogenously collateralized" stablecoins backed primarily by issuer's own token
- **UK**: FCA explicitly excludes algorithmic stablecoins from regulated stablecoin framework
- **Practical**: Do not build an algorithmic stablecoin for any regulated market. Crypto-backed, over-collateralized stablecoins face ART classification challenges in EU.

---

## 7. Key Stablecoin Issuers on Solana

| Stablecoin | Issuer | Solana Support | Regulatory Status |
|---|---|---|---|
| USDC | Circle | Native SPL | MiCA compliant (Circle has EU EMI) |
| USDT | Tether | SPL (native) | Not EU MiCA compliant as of mid-2026 |
| PYUSD | PayPal/Paxos | Native SPL | NY DFS trust charter |
| EURC | Circle | Native SPL | Circle EU EMI |
| UXD | UXD Protocol | Native (Solana-native) | Decentralized; regulatory grey |

---

## Further Reading

- [GENIUS Act Full Text (Congress.gov)](https://www.congress.gov/bill/119th-congress/senate-bill/394)
- [MiCA Stablecoin Provisions (EUR-Lex)](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32023R1114)
- [MAS Stablecoin Framework (Singapore)](https://www.mas.gov.sg/regulation/payments/stablecoins)
- [Circle MiCA Compliance Hub](https://www.circle.com/en/mica)
- [Token-2022 Extensions Documentation](https://spl.solana.com/token-2022/extensions)
- → See [resources.md](resources.md) for legal counsel specializing in stablecoin issuance
