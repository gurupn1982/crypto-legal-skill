# Compliance — KYC/AML, Licensing, Securities

> **Disclaimer**: General legal information only. Not legal advice. Consult a qualified attorney.

---

## 1. Is Your Token a Security?

This is the most consequential legal question for Solana founders. Getting it wrong triggers SEC enforcement, token rescission, and potential criminal liability.

### The Howey Test (US)

A token is likely a security if it involves:
1. **Investment of money**
2. **In a common enterprise**
3. **With expectation of profits**
4. **Derived from the efforts of others**

**Red flags that push toward "security":**
- Marketing that emphasizes token price appreciation
- Promises of returns, staking yields, or revenue share
- Centralized team controls all protocol development
- Token sold before the network is functional ("pre-launch" sales)
- Investors have no utility for the token other than resale

**Factors that push toward "utility":**
- Network is fully functional at time of sale
- Token has clear consumptive use (paying fees, governance, access)
- Widely distributed; no single entity controls the protocol
- Secondary market price driven by utility demand, not speculation

**Reves Test** (for debt instruments): applies to tokens structured as notes or bonds promising fixed returns.

### Safe Harbor Approach (SEC Framework)
The SEC's 2019 Framework for Digital Asset Analysis provides a non-exhaustive list of factors. Former SEC official William Hinman's 2018 speech suggested ETH was not a security due to sufficient decentralization — this "Hinman analysis" is still relevant but not legally binding.

**Practical threshold**: If your protocol is sufficiently decentralized at token launch (no single controlling party), you have the strongest argument for utility status.

---

## 2. KYC/AML Requirements

### Who Needs KYC/AML?

| Product Type | KYC/AML Required? | Notes |
|---|---|---|
| Pure DEX (non-custodial) | Generally No | But some jurisdictions are tightening |
| CEX / custodial exchange | Yes | Money transmitter / VASP license |
| Fiat on/off ramp | Yes | Strong KYC required everywhere |
| NFT marketplace | Depends | US FinCEN: NFT platforms may be MSBs |
| Stablecoin issuer | Yes | Treated as e-money issuer in most jurisdictions |
| DeFi lending protocol | Likely No (currently) | Regulatory grey zone; evolving |
| Wallet provider (custodial) | Yes | Money transmitter |
| Wallet provider (non-custodial) | Generally No | Self-hosted wallet exemption |

### FATF Travel Rule

The Financial Action Task Force (FATF) Travel Rule requires VASPs (Virtual Asset Service Providers) to share originator and beneficiary information for transactions over $1,000 (threshold varies by country).

**Key requirement**: When transferring crypto between VASPs, you must transmit:
- Originator name, account number, address
- Beneficiary name, account number

**Protocols for Travel Rule compliance**: Notabene, Sygna, OpenVASP, TRP (Travel Rule Protocol).

### AML Program Requirements (US FinCEN)

US Money Service Businesses and VASPs must have a written AML program covering:
1. Policies and procedures
2. Designated compliance officer
3. Ongoing employee training
4. Independent audit/testing
5. Customer identification program (CIP)
6. Suspicious activity reporting (SAR filing)
7. Currency transaction reports (CTR) for transactions >$10,000

---

## 3. VASP Licensing

### United States

No single federal crypto license. Patchwork of requirements:

| License Type | Regulator | Required for |
|---|---|---|
| Money Transmitter License (MTL) | State-by-state (49 states + DC) | Crypto exchanges, custodians, payment processors |
| BitLicense | NY DFS | Any crypto business touching New York customers |
| Trust Charter | OCC / State banking regulators | Custody of crypto assets |
| Broker-Dealer | FINRA / SEC | Trading securities (including security tokens) |
| Investment Adviser | SEC / State | Managing crypto portfolios for clients |
| MSB Registration | FinCEN | Exchanges, wallet providers, transmitters |

**Cost and timeline**: MTL in all 50 states can take 2–4 years and $2–5M+. Most startups limit US operations initially or use a licensed partner.

### European Union — MiCA (Markets in Crypto-Assets Regulation)

MiCA came into full effect in December 2024. It creates a harmonized EU-wide framework.

**CASP (Crypto-Asset Service Provider) License**:
- Single EU license valid across all 27 member states
- Applied for in one member state (passporting to others)
- Covers: exchange, custody, portfolio management, brokerage, advice

**Requirements**:
- Minimum capital: €50,000–€150,000 depending on services
- Governance and risk management policies
- Safeguarding of client assets
- Disclosure and white paper requirements

**Timeline**: 6–18 months for approval. Favorable jurisdictions: Germany (BaFin), Luxembourg, Ireland, Lithuania.

**Token Issuers under MiCA**:
- Crypto-Asset White Paper required (similar to prospectus)
- Significant Asset-Referenced Tokens (ARTs) have additional requirements
- E-Money Tokens require e-money institution license (see [stablecoins.md](stablecoins.md))

### Singapore — MAS

**Major Payment Institution (MPI) License** or **Standard Payment Institution (SPI)**:
- MPI required if monthly transactions exceed SGD 3M or crypto >SGD 6M/year
- Payment Services Act (PSA) 2019, amended 2021
- MAS known for thorough but relatively clear process
- Timeline: 6–12 months
- Favorable for Asian operations hub

### UAE — VARA (Virtual Assets Regulatory Authority)

Dubai's VARA (established 2022) regulates virtual asset activities in Dubai.

- **Minimum Viable Product (MVP) License**: for early-stage testing
- **Full Market Product (FMP) License**: full operations
- Abu Dhabi: ADGM (FSRA framework) — well-established, common for institutional crypto

**Benefit**: 0% corporate and personal income tax. Strong for treasury management.

### Cayman Islands

- **Virtual Asset Service Provider (VASP) Registration** with CIMA (Cayman Islands Monetary Authority)
- Lighter touch than US/EU
- Commonly used by offshore funds and protocols
- No income tax, capital gains tax, or corporate tax

---

## 4. Token Launch Legal Structures

### Option A: Simple Agreement for Future Tokens (SAFT)

- Used for pre-launch fundraising from accredited investors
- Relies on Reg D exemption (US accredited investors only)
- Token delivered after network launch
- **Risk**: SEC has challenged SAFT structure; does not guarantee non-security status

### Option B: Token Warrant / SAFE + Token Side Letter

- Equity (SAFE or convertible note) + right to receive tokens
- More investor-friendly than pure SAFT
- Increasingly common (YC, a16z portfolio companies use this)
- Separates equity value from token value

### Option C: Reg A+ Public Token Offering

- SEC-qualified offering to general public (not just accredited investors)
- Up to $75M/year
- Full SEC review; expensive ($500K–$1M+ to execute)
- Very few crypto projects have used this

### Option D: Regulation S (Non-US Investors Only)

- Offer tokens only to non-US persons
- No SEC registration required
- Must implement IP blocking and attestation for US persons
- Common for offshore foundations doing public sales

### Option E: Community Sale via Foundation (No US Persons)

- Cayman/BVI Foundation runs the token generation event (TGE)
- Strict geo-block + attestation for US, Canada, sanctioned countries
- No marketing to US persons
- Current standard for Solana ecosystem projects

---

## 5. Sanctions Compliance

**OFAC (Office of Foreign Assets Control)** maintains the SDN (Specially Designated Nationals) list. Transacting with sanctioned parties is illegal for US persons and entities regardless of crypto.

**Key requirements**:
- Screen wallet addresses against OFAC SDN list before processing
- Block users from sanctioned countries (Iran, North Korea, Russia in some contexts, Cuba, Syria)
- Tools: Chainalysis Sanctions API, Elliptic, TRM Labs

**Important precedent**: In 2022, OFAC sanctioned Tornado Cash smart contract addresses (later partially reversed in court, 5th Circuit 2024). This established that open-source, immutable smart contracts can be subject to OFAC sanctions — a major shift.

**Best practice for DeFi**: Even non-custodial protocols should implement front-end blocking of OFAC-listed addresses as a minimum.

---

## 6. Securities Law Practical Decision Tree

```
Is the token sold before the network is functional?
├── YES → High securities risk. Consider SAFT + Reg D (US accredited only)
│         or Reg S (non-US only). Consult attorney immediately.
└── NO → Is the token primarily used for speculation/investment returns?
         ├── YES → Still securities risk. Document utility extensively.
         └── NO → Is the network sufficiently decentralized?
                  ├── YES → Strongest utility token argument.
                  └── NO → Moderate risk. Avoid US marketing. Seek legal opinion.
```

---

## Further Reading

- [SEC FinHub Digital Asset Framework (2019)](https://www.sec.gov/corpfin/framework-investment-contract-analysis-digital-assets)
- [FATF Virtual Assets Guidance (2021)](https://www.fatf-gafi.org/content/fatf-gafi/en/publications/Fatfrecommendations/Guidance-rba-virtual-assets-2021.html)
- [MiCA Regulation Full Text](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32023R1114)
- [FinCEN MSB Regulations](https://www.fincen.gov/money-services-business-definition)
- → See [resources.md](resources.md) for law firm recommendations
