# crypto-legal-skill

A Claude Code skill addon that gives Solana builders access to comprehensive legal and regulatory guidance — from entity incorporation to token launch structuring, KYC/AML compliance, stablecoin regulations, and crypto taxation across major jurisdictions.

> **Extends**: [solana-dev-skill](https://github.com/solana-foundation/solana-dev-skill)

> **Disclaimer**: This skill provides general legal information, not legal advice. Always consult a qualified attorney for binding legal decisions.

---

## What's Included

### Reference Skill Files

| File | What It Covers |
|---|---|
| [skill/compliance.md](skill/compliance.md) | KYC/AML, VASP licensing (US/EU/Singapore/UAE), securities law (Howey test, Reg D/S), MiCA compliance |
| [skill/incorporation.md](skill/incorporation.md) | Where to incorporate (Cayman, Delaware, Singapore, UAE, BVI, Marshall Islands), Foundation + OpCo structure, DAO wrappers |
| [skill/taxation.md](skill/taxation.md) | Crypto tax in US, Germany, Portugal, Singapore, UAE, India, Brazil — capital gains, staking, DeFi |
| [skill/stablecoins.md](skill/stablecoins.md) | Stablecoin issuance on Solana, EU MiCA e-money tokens, US GENIUS Act / STABLE Act, reserve requirements |
| [skill/india-crypto-law.md](skill/india-crypto-law.md) | **India-specific**: 30% VDA tax, 1% TDS, PMLA, FIU-IND registration, RBI/SEBI, FEMA cross-border |
| [skill/depin-legal.md](skill/depin-legal.md) | **DePIN-specific**: hardware liability, spectrum licensing (FCC/CE), GDPR on IoT devices, token rewards securities analysis, DAO liability for physical infrastructure |
| [skill/resources.md](skill/resources.md) | Curated law firm directory, official regulatory links, tax tools, open-source legal templates |

### Actionable Checklists

| Checklist | What It Covers |
|---|---|
| [checklists/token-launch.md](checklists/token-launch.md) | 8-phase pre-TGE legal checklist: entity setup → securities analysis → fundraising → compliance infra → documentation → team tokens → exchange → post-launch |
| [checklists/vasp-registration.md](checklists/vasp-registration.md) | Step-by-step VASP/CASP licensing for US (FinCEN + MTL + BitLicense), EU (MiCA CASP), Singapore (MAS PSA), UAE (VARA), Cayman (CIMA) |
| [checklists/india-compliance.md](checklists/india-compliance.md) | India FIU-IND registration, PMLA obligations, FEMA cross-border rules, VDA tax setup, TDS compliance, ITR filing |

### Agents

| Agent | Purpose |
|---|---|
| [agents/legal-advisor.md](agents/legal-advisor.md) | Deep multi-jurisdiction legal analysis for complex structuring questions |

---

## Example Queries

```
"Where should I incorporate my Solana protocol?"
→ Loads incorporation.md — compares Cayman, Delaware, Singapore, UAE

"Is my token a security under US law?"
→ Loads compliance.md — walks through Howey test analysis

"How is crypto taxed in India?"
→ Loads india-crypto-law.md — covers 30% VDA tax, 1% TDS, no loss set-off

"How do I issue a stablecoin on Solana?"
→ Loads stablecoins.md — covers Token-2022 + GENIUS Act + MiCA requirements

"Do I need a VASP license in Europe?"
→ Loads compliance.md — covers MiCA CASP requirements

"Singapore vs UAE — which is better for a crypto founder?"
→ Loads taxation.md + incorporation.md
```

---

## DePIN Coverage (Solana-Specific)

Solana is the dominant DePIN chain. This skill includes dedicated DePIN legal coverage that no other crypto legal skill addresses:

- **Hardware liability** — how to allocate liability between protocol, manufacturer, and node operator
- **Spectrum licensing** — FCC Part 15, CE RED, CBRS; what certifications hardware needs before deployment
- **GDPR on IoT data** — data controller analysis for devices that capture personal data
- **Token rewards as securities** — the Howey analysis specific to node operator reward programs
- **DAO liability for physical infrastructure** — why physical DePINs need wrapped DAOs
- **Utility regulation** — energy and telecom DePINs that may trigger public utility rules
- **Insurance gaps** — what standard crypto insurance doesn't cover for physical infrastructure

---

## India Coverage (Novel)

This skill includes **deep India-specific legal coverage** not found in other skills:

- **30% VDA flat tax** (Section 115BBH, Income Tax Act) — the harshest globally
- **1% TDS on every crypto transaction** (Section 194S) — how it works, who's affected
- **No loss set-off** — losses cannot offset gains (even within crypto)
- **PMLA 2023 amendment** — which Solana projects must register with FIU-IND
- **RBI banking reality** — why Indian crypto businesses struggle to bank
- **FEMA** — cross-border crypto flows for Indian residents
- **Practical strategies** — Singapore holding company, UAE relocation, India operations

---

## Repository Structure

```
crypto-legal-skill/
├── BRIEF.md                     # Reference config (installed as CLAUDE.md)
├── README.md                    # This file
├── LICENSE                      # MIT License
├── install.sh                   # Installation script
│
├── skill/
│   ├── SKILL.md                 # Entry point + routing table
│   ├── compliance.md            # KYC/AML, VASP, securities
│   ├── incorporation.md         # Entity structures, jurisdictions
│   ├── taxation.md              # Crypto tax globally
│   ├── stablecoins.md           # Stablecoin regulations
│   ├── india-crypto-law.md      # India VDA tax, TDS, PMLA, FEMA
│   ├── depin-legal.md           # DePIN hardware, spectrum, data law
│   └── resources.md             # Law firms, tools, links
│
├── checklists/
│   ├── token-launch.md          # 8-phase pre-TGE legal checklist
│   ├── vasp-registration.md     # VASP/CASP licensing by jurisdiction
│   └── india-compliance.md      # India FIU + VDA compliance steps
│
└── agents/
    └── legal-advisor.md         # Deep analysis agent
```

---

## Installation

```bash
git clone https://github.com/<your-username>/crypto-legal-skill
cd crypto-legal-skill
./install.sh
```

The installer copies all skill and checklist files to `~/.claude/skills/crypto-legal/` and places the reference config as `CLAUDE.md` in your selected location.

---

## Contributing

Contributions are welcome, especially:
- New jurisdiction coverage (Japan, UK, South Korea, Brazil deep-dive)
- Regulatory updates as laws change
- Additional agent types (tax-specialist, compliance-auditor)

1. Fork the repository
2. Create a feature branch: `git checkout -b feat/uk-crypto-law-23-06-2026`
3. Submit a pull request

---

## License

MIT License — see [LICENSE](LICENSE) for details.

---

## Related

- [solana-dev-skill](https://github.com/solana-foundation/solana-dev-skill) — Core Solana development skill
- [solana-auditor-skill](https://github.com/solanabr/solana-auditor-skill) — Security auditing skill
