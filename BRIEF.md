# Solana Founder Legal Reference

A working reference for Web3 builders navigating entity formation, token structuring, compliance obligations, and crypto taxation. Covers major global jurisdictions with deep coverage of India and Solana-specific topics including DePIN.

> Standard caveat: This is a reference toolkit, not legal advice. Material here reflects general legal principles and publicly available regulatory guidance. Engage qualified counsel before making structural decisions.

---

## Jurisdiction-First Thinking

Most legal questions in crypto have different answers depending on where the founders live, where the entity is incorporated, and where the users are. Before loading any reference file, identify:

1. **Founder residence** — determines personal tax treatment
2. **Entity jurisdiction** — determines corporate tax, token issuance rules, banking
3. **User geography** — determines which compliance regimes apply

The combination of these three factors drives most structural decisions.

---

## Reference Files

Load the relevant file based on what the builder is working through:

| Topic | File |
|---|---|
| Incorporation, entity structures, DAO wrappers | [skill/incorporation.md](skill/incorporation.md) |
| KYC/AML, VASP licensing, securities analysis | [skill/compliance.md](skill/compliance.md) |
| Crypto tax — US, EU, Singapore, UAE, India, Brazil | [skill/taxation.md](skill/taxation.md) |
| Stablecoin issuance, MiCA EMT rules, GENIUS Act | [skill/stablecoins.md](skill/stablecoins.md) |
| India — VDA tax, TDS, PMLA, FIU-IND, FEMA | [skill/india-crypto-law.md](skill/india-crypto-law.md) |
| DePIN — hardware liability, spectrum, data privacy | [skill/depin-legal.md](skill/depin-legal.md) |
| Pre-launch legal checklists | [checklists/token-launch.md](checklists/token-launch.md) |
| VASP/CASP licensing checklist | [checklists/vasp-registration.md](checklists/vasp-registration.md) |
| India compliance checklist | [checklists/india-compliance.md](checklists/india-compliance.md) |
| Law firms, official regulators, tax tools | [skill/resources.md](skill/resources.md) |

---

## Default Structural Positions

These reflect standard practice among crypto-native legal counsel as of 2026. Use as starting points, not conclusions.

**Offshore protocol**: Cayman Islands Foundation Company as token issuer + Delaware or Singapore operating company for team employment and VC fundraising. BVI holdco optional for IP.

**India-founded team**: Singapore Pte Ltd as holding entity with Indian subsidiary under a services agreement. Token treasury either in Singapore or a Cayman Foundation depending on fundraising plans.

**DAO**: Wyoming DAO LLC for US-centric projects needing legal recognition. Marshall Islands DAO for offshore. Cayman Foundation for anything doing a public token generation event.

**Token launch without US exposure**: Cayman or BVI Foundation issues tokens under Reg S (non-US persons only). Hard geo-block and attestation for US, Canada, and sanctioned countries before launch.

**DePIN project**: Add hardware operator agreements and data processing addendums before deploying any hardware that touches user data or licensed spectrum.

---

## Jurisdiction Tax Summary

| Jurisdiction | Capital Gains | Crypto-Specific |
|---|---|---|
| UAE | 0% | Best zero-tax option for founders |
| Singapore | 0% | Territorial; clean for APAC operations |
| Germany | 0% (>1yr hold) | Best in EU; 1-year clock from acquisition |
| Portugal | 0% (>1yr hold) | Post-2023 rules; NHR regime adds benefit |
| US | 0–37% | Worldwide income; every trade is taxable |
| India | 30% flat | Harshest globally; no loss set-off; 1% TDS |

---

## High-Risk Flags

Surface these explicitly when they appear in a builder's situation:

- **US persons in a token sale** — SEC enforcement; no workaround without registration
- **Token that fails Howey / looks like a security** — rescission exposure + disgorgement
- **Indian company or founder transacting in crypto** — PMLA, FIU registration, 30% VDA tax
- **DePIN device collecting personal data from EU residents** — GDPR, Article 25 (privacy by design)
- **Stablecoin targeting EU or US users** — MiCA EMT license or GENIUS Act charter required
- **Cross-border token grants to Indian residents** — FEMA + income tax + TDS obligations stack

---

## Deep Analysis

For questions requiring detailed multi-jurisdiction analysis or complex structuring work, spawn the legal advisor agent: [agents/legal-advisor.md](agents/legal-advisor.md)

---

## Repository Layout

```
crypto-legal-skill/
├── BRIEF.md                     ← this file (installed as CLAUDE.md)
├── README.md
├── LICENSE
├── install.sh
│
├── skill/
│   ├── SKILL.md                 ← routing entry point
│   ├── compliance.md            ← KYC/AML, VASP licensing, securities
│   ├── incorporation.md         ← entity structures, jurisdictions
│   ├── taxation.md              ← crypto tax globally
│   ├── stablecoins.md           ← stablecoin regulations
│   ├── india-crypto-law.md      ← India VDA tax, TDS, PMLA, FEMA
│   ├── depin-legal.md           ← DePIN hardware, spectrum, data law
│   └── resources.md             ← law firms, regulators, tools
│
├── checklists/
│   ├── token-launch.md          ← pre-TGE legal checklist
│   ├── vasp-registration.md     ← VASP/CASP licensing checklist
│   └── india-compliance.md      ← India FIU + VDA compliance checklist
│
└── agents/
    └── legal-advisor.md         ← deep analysis agent
```
