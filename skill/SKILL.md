---
name: crypto-legal
description: Legal and regulatory guidance for Solana founders. Covers entity incorporation, KYC/AML compliance, securities law, token launch structuring, stablecoin regulations, and crypto taxation across major jurisdictions including deep India-specific coverage (VDA tax, TDS, RBI/SEBI, FIU-IND).
user-invocable: true
---

# Crypto Legal Skill

> **Addon for**: [solana-dev-skill](https://github.com/solana-foundation/solana-dev-skill)  
> **Disclaimer**: This skill provides general legal information only — not legal advice. Consult a qualified attorney for your specific situation.

## What This Skill Is For

Use this skill when a Solana founder asks about:

### Entity & Structure
- Where to incorporate a crypto startup or protocol
- Foundation + operating company structures
- DAO legal wrappers (Wyoming DAO LLC, Marshall Islands, etc.)
- How to structure a token launch legally
- Multi-entity structures to separate IP, treasury, operations

### Compliance & Licensing
- KYC/AML requirements for DeFi/CeFi products
- VASP (Virtual Asset Service Provider) licensing
- Whether a token is a security (Howey test, Reves test)
- Regulation D / Reg S / Reg CF for US fundraising
- EU MiCA compliance for crypto-asset service providers
- Sanctions screening (OFAC, EU, UN)

### Taxation
- How crypto gains are taxed in the US, EU, Singapore, UAE, India
- Token issuance tax treatment
- Staking and DeFi income
- Employee/contributor token compensation

### Stablecoins
- How to issue a stablecoin on Solana
- EU MiCA e-money token rules
- US stablecoin legislation (GENIUS Act, STABLE Act 2025)
- Reserve requirements and auditing

### India-Specific (novel jurisdiction coverage)
- 30% VDA tax + 1% TDS under Indian Income Tax Act
- PMLA / FIU-IND registration for Indian crypto businesses
- RBI restrictions and FEMA cross-border implications
- SEBI regulatory posture on crypto
- Operating a Solana project from India

---

## Operating Procedure

### 1. Identify the Legal Domain

| User asks about... | Primary skill file |
|---|---|
| Where to incorporate / entity structure | [incorporation.md](incorporation.md) |
| KYC/AML / VASP licensing / securities | [compliance.md](compliance.md) |
| Crypto taxes (US, EU, SG, UAE, India, etc.) | [taxation.md](taxation.md) |
| Stablecoin regulations / issuance | [stablecoins.md](stablecoins.md) |
| India: VDA tax, TDS, RBI, SEBI, FIU | [india-crypto-law.md](india-crypto-law.md) |
| DePIN: hardware, spectrum, data privacy, DAO liability | [depin-legal.md](depin-legal.md) |
| Links to official resources / law firms | [resources.md](resources.md) |
| Token launch pre-TGE legal checklist | [../checklists/token-launch.md](../checklists/token-launch.md) |
| VASP / CASP licensing step-by-step | [../checklists/vasp-registration.md](../checklists/vasp-registration.md) |
| India FIU + VDA compliance checklist | [../checklists/india-compliance.md](../checklists/india-compliance.md) |

### 2. Always Lead With the Disclaimer

Before providing legal information on sensitive topics (token structure, securities, fundraising), remind the user this is general information — not legal advice — and recommend a qualified crypto attorney for their jurisdiction.

### 3. Be Jurisdiction-Aware

Always ask or infer the user's jurisdiction before answering tax or compliance questions. The answer to "can I launch a token?" differs significantly between US, EU, Singapore, and India founders.

### 4. Flag High-Risk Topics

If the user asks about topics with high legal risk, flag it explicitly:
- US persons participating in token sales
- Tokens that may be securities
- Products serving US users without registration
- Mixing of foundation and operational entity funds
- Cross-border fiat on/off ramps

### 5. Pick the Right Agent

| Task | Agent | Model |
|---|---|---|
| Deep legal analysis, structuring advice | [legal-advisor](../agents/legal-advisor.md) | opus |
| Quick lookups, definitions, jurisdiction comparisons | (inline, this skill) | sonnet |

---

## Default Positions (Opinionated Defaults)

These reflect current best practices among Solana-ecosystem legal counsel (as of mid-2026):

### Incorporation
- **Offshore protocol**: Cayman Islands Foundation Company + BVI/Cayman subsidiary
- **US-centric startup**: Delaware C-Corp with SAFT/SAFE fundraising
- **DAO**: Wyoming DAO LLC (simple) or Marshall Islands DAO (offshore)
- **India-founded team**: Singapore Pte Ltd as holding entity, Indian subsidiary for operations

### Token Launch
- **Avoid US persons** in public token sales unless SEC-registered
- **SAFT** (Simple Agreement for Future Tokens) for early-stage fundraising
- **Utility-first design**: document utility use cases before token generation
- **Lock-up periods** for team/investor allocations (12–48 months typical)

### Tax Residency for Founders
- **Zero capital gains**: UAE (Dubai), Portugal (non-habitual resident), Singapore
- **Territorial taxation**: Singapore, Hong Kong
- **High-risk for crypto**: US founders (worldwide income + FBAR), India (30% VDA tax)

---

## Skill File Index

| File | Topics |
|---|---|
| [compliance.md](compliance.md) | KYC/AML, VASP licensing, securities analysis, MiCA, Reg D/S |
| [incorporation.md](incorporation.md) | Entity types, jurisdiction comparison, DAO wrappers, multi-entity structures |
| [taxation.md](taxation.md) | US, EU, Singapore, UAE, India, Brazil crypto tax treatment |
| [stablecoins.md](stablecoins.md) | Stablecoin issuance, MiCA EMT rules, US stablecoin bills, reserve requirements |
| [india-crypto-law.md](india-crypto-law.md) | VDA tax, 1% TDS, RBI/SEBI, FIU-IND, PMLA, FEMA |
| [depin-legal.md](depin-legal.md) | DePIN hardware liability, spectrum licensing, GDPR on IoT, token rewards securities risk |
| [resources.md](resources.md) | Law firm links, official regulatory sites, template libraries |
| [../checklists/token-launch.md](../checklists/token-launch.md) | 8-phase pre-TGE legal checklist |
| [../checklists/vasp-registration.md](../checklists/vasp-registration.md) | VASP/CASP licensing by jurisdiction |
| [../checklists/india-compliance.md](../checklists/india-compliance.md) | India FIU-IND, PMLA, VDA tax, FEMA step-by-step |

---

## Task Routing Quick Reference

| User says... | Read this file |
|---|---|
| "Where should I incorporate?" | [incorporation.md](incorporation.md) |
| "How do I set up a Cayman foundation?" | [incorporation.md](incorporation.md) |
| "Is my token a security?" | [compliance.md](compliance.md) |
| "Do I need a VASP license?" | [compliance.md](compliance.md) |
| "How do I do KYC for my DEX?" | [compliance.md](compliance.md) |
| "MiCA compliance for my project" | [compliance.md](compliance.md) |
| "How is crypto taxed in the US?" | [taxation.md](taxation.md) |
| "Singapore vs UAE for tax residency" | [taxation.md](taxation.md) |
| "Staking rewards — taxable?" | [taxation.md](taxation.md) |
| "How to issue a stablecoin on Solana?" | [stablecoins.md](stablecoins.md) |
| "GENIUS Act / STABLE Act" | [stablecoins.md](stablecoins.md) |
| "India crypto tax / 30% VDA tax" | [india-crypto-law.md](india-crypto-law.md) |
| "1% TDS on crypto in India" | [india-crypto-law.md](india-crypto-law.md) |
| "Can I run a Solana project from India?" | [india-crypto-law.md](india-crypto-law.md) |
| "FIU-IND registration" | [india-crypto-law.md](india-crypto-law.md) |
| "PMLA / money laundering India" | [india-crypto-law.md](india-crypto-law.md) |
| "DePIN hardware liability" | [depin-legal.md](depin-legal.md) |
| "Spectrum licensing for DePIN" | [depin-legal.md](depin-legal.md) |
| "GDPR for IoT / DePIN device data" | [depin-legal.md](depin-legal.md) |
| "DePIN token rewards — securities?" | [depin-legal.md](depin-legal.md) |
| "DePIN DAO liability" | [depin-legal.md](depin-legal.md) |
| "Token launch legal checklist" | [../checklists/token-launch.md](../checklists/token-launch.md) |
| "What do I need before TGE?" | [../checklists/token-launch.md](../checklists/token-launch.md) |
| "How to get a VASP license" | [../checklists/vasp-registration.md](../checklists/vasp-registration.md) |
| "MiCA CASP application steps" | [../checklists/vasp-registration.md](../checklists/vasp-registration.md) |
| "India FIU registration steps" | [../checklists/india-compliance.md](../checklists/india-compliance.md) |
| "India crypto compliance checklist" | [../checklists/india-compliance.md](../checklists/india-compliance.md) |
| "Find a crypto lawyer" | [resources.md](resources.md) |
