# Incorporation — Entity Structures for Crypto Projects

> **Disclaimer**: General legal information only. Not legal advice. Consult a qualified attorney.

---

## 1. Jurisdiction Comparison

| Jurisdiction | Best For | Tax | Timeline | Cost |
|---|---|---|---|---|
| Cayman Islands | Offshore protocol foundation, funds | 0% all taxes | 4–8 weeks | $15–30K setup |
| British Virgin Islands (BVI) | Holding company, subsidiary | 0% all taxes | 1–2 weeks | $5–15K setup |
| Delaware (US) | US-focused startup, VC fundraising | Federal + State corp tax | 1–3 days | $500–1K online |
| Singapore | Asia hub, APAC operations | 17% corp (low effective rate) | 1–3 days | $2–5K |
| UAE (Dubai / ADGM) | Tax-free HQ, treasury | 0–9% corp | 2–4 weeks | $10–25K |
| Switzerland (Zug) | "Crypto Valley" foundation | 12–15% effective | 4–8 weeks | $20–40K |
| Marshall Islands | DAO structures | 0% | 2–4 weeks | $5–10K |
| Wyoming (US) | DAO LLC, US-based DAO | State + federal applicable | Days | $1K |
| Portugal (Madeira) | EU-accessible, NHR tax regime | 0–28% (NHR: 20% flat) | 2–4 weeks | $5–10K |
| Estonia | EU-accessible, e-residency | 0% retained / 20% distributed | Online | $1–3K |

---

## 2. The Standard Multi-Entity Structure

Most well-funded Solana protocols use a **Foundation + Operating Company** structure:

```
┌─────────────────────────────────────────────────────┐
│              CAYMAN ISLANDS FOUNDATION              │
│  - Holds protocol IP and token treasury             │
│  - Issues tokens (TGE)                              │
│  - Funds grants to ecosystem                        │
│  - No shareholders → harder for claimants to attach │
└────────────────────┬────────────────────────────────┘
                     │ Funds operations via grants
                     ▼
┌─────────────────────────────────────────────────────┐
│         OPERATING COMPANY (Delaware / Singapore)    │
│  - Employs the team                                 │
│  - Signs vendor contracts                           │
│  - Builds the product                               │
│  - Receives grants from Foundation                  │
└─────────────────────────────────────────────────────┘
```

**Why separate them?**
- Foundation protects treasury from operating liabilities
- Foundation gives governance legitimacy ("no controlling entity")
- Operating company can raise equity (SAFE/SAFE+token) from VCs
- Reduces token's securities risk (Foundation issues tokens, not OpCo)

**Examples**: Solana Foundation (Cayman) + Solana Labs (Delaware), Uniswap Foundation + Uniswap Labs.

---

## 3. Cayman Islands Foundation Company

**What it is**: A Cayman entity with no shareholders. Governed by a Board of Directors and a Supervisor. Used widely as the canonical "crypto foundation."

**Key features**:
- **No shareholders** → no equity-like ownership; harder to pierce for damages
- **Foundation Objects**: Purpose-driven (e.g., "develop the XYZ Protocol")
- **Supervisor role**: Oversight of directors; can be a Cayman law firm
- **Annual fees**: ~$3–6K/year to maintain

**When to use**: When issuing a token. The Foundation owns the token treasury and issues tokens, creating separation from the team's operating company.

**Setup process**:
1. Engage a Cayman law firm (e.g., Maples, Walkers, Carey Olsen)
2. Draft Foundation Articles and Memorandum
3. Register with the Cayman Registrar of Companies
4. Appoint initial directors (founders) and Supervisor
5. Open a bank or digital asset account (Signature, Silvergate alternatives: Mercury, Brex for USD; BCB Group, Silverbird for crypto-native)

**Cost**: $15,000–$30,000 for setup; $5,000–$10,000/year maintenance.

---

## 4. British Virgin Islands (BVI) Company

**What it is**: A simple offshore holding company. The most commonly used structure for straightforward asset holding.

**Key uses in crypto**:
- Token-holding subsidiary of a Foundation
- IP holding company
- VC fund vehicle

**Advantages**:
- Very fast to set up (days)
- No public register of shareholders (privacy)
- Zero taxes
- Extremely flexible corporate law

**Disadvantage**: Less legitimate-looking than a Foundation for token issuance; primarily used as holding/subsidiary.

---

## 5. Delaware C-Corporation

**Best for**: Projects targeting US institutional VC investment. VCs typically require a Delaware C-Corp for equity investment.

**Key features**:
- Standard for Silicon Valley / US VC fundraising
- SAFE (Simple Agreement for Future Equity) + SAFE + Token Side Letter common structure
- No minimum capital requirement
- Can have multiple share classes (common, preferred)

**Caution**: US entity = US tax nexus. All global income may be subject to US corporate tax (21% federal + state). US founders face additional reporting obligations (FBAR, FATCA) for offshore assets.

**Common pairing**: Delaware OpCo + Cayman Foundation (see §2 above).

---

## 6. Singapore Private Limited (Pte. Ltd.)

**Best for**: APAC-focused projects, India-founded teams wanting a clean holding structure, projects seeking MAS licensing.

**Key features**:
- 17% corporate tax (effective rate lower due to startup exemptions)
- Territorial taxation (foreign-sourced income exempt in most cases)
- Zero capital gains tax
- Excellent banking access (DBS, UOB, OCBC)
- Gateway to APAC VC (Sequoia Southeast Asia, Paradigm, Tiger)
- MAS Payment Institution license available (see [compliance.md](compliance.md))

**For India-founded teams**: Singapore Pte Ltd as holding company with Indian subsidiary (Pvt. Ltd.) for local operations is the canonical structure. Avoids India's 30% VDA tax on token appreciation at entity level.

**Setup**: 1–3 days via ACRA online. Requires at least 1 Singapore-resident director (can hire nominee). Cost: SGD 1,000–5,000.

---

## 7. UAE Structures

### Dubai Mainland / Free Zone

| Structure | Best For | Tax |
|---|---|---|
| Dubai Mainland LLC | Local operations, VARA license | 9% corporate (>AED 375K profit) |
| DIFC (Financial Centre) | Financial services, funds | 0% if within DIFC |
| ADGM (Abu Dhabi) | Regulated crypto, institutional | 0% within ADGM |
| Dubai Internet City / Silicon Oasis | Tech companies | 0% free zone (if no mainland business) |

**Key benefit**: Personal income tax = 0%. Corporate tax introduced in 2023 at 9%, but free zone entities qualifying for Qualifying Free Zone Person (QFZP) status can maintain 0% on qualifying income.

**For founders relocating**: UAE golden visa (2-year or 5-year) available to investors and entrepreneurs. Combined with free zone company = effective 0% tax on crypto gains.

---

## 8. DAO Legal Wrappers

DAOs without a legal wrapper have no limited liability — members may be personally liable for DAO obligations.

### Wyoming DAO LLC

- First US state to recognize DAOs as LLCs (2021)
- Members = token holders
- Liability limited to member's contribution
- US-based: subject to US tax and regulations
- Best for: DAOs wanting US legal recognition, grants, bank accounts

### Marshall Islands DAO LLC

- Offshore DAO recognition (2022)
- No corporate tax
- Privacy-preserving
- Creditor protection
- Best for: Offshore DAOs wanting legal existence without US nexus

### Cayman Exempted Limited Partnership (ELP)

- Used for some DAOs structured as investment vehicles
- GPs and LPs have defined roles

### Unincorporated Association / Swiss Association

- Swiss Verein (Association) used by some protocols (e.g., Ethereum Foundation)
- Non-profit, member-owned
- Good for pure open-source foundations with no commercial operations

---

## 9. India-Founded Team — Recommended Structure

If you are an Indian founder building a Solana protocol:

```
┌────────────────────────────────────────────────┐
│         SINGAPORE PTE. LTD. (Holding)          │
│  - Holds IP, equity in subsidiaries            │
│  - Raises VC funding                           │
│  - Token treasury (or Cayman Foundation)       │
└───────────────────┬────────────────────────────┘
                    │ Wholly owned subsidiary
                    ▼
┌────────────────────────────────────────────────┐
│    INDIA PRIVATE LIMITED (Operations)          │
│  - Employs Indian developers                  │
│  - Services agreement with Singapore parent   │
│  - R&D center benefits (Section 10AA, SEZ)    │
└────────────────────────────────────────────────┘
```

**Key considerations**:
- Indian subsidiary must have an arm's-length services agreement with Singapore parent
- Transfer pricing rules apply — document the intercompany pricing
- RBI approval required for equity investment into Indian company by foreign entity (FDI route)
- Founders relocating to Singapore: must comply with Indian exit tax rules; consult CA before moving
- FEMA regulations govern cross-border transactions — see [india-crypto-law.md](india-crypto-law.md)

---

## 10. Key Questions to Answer Before Incorporating

1. **Who are your likely investors?** US VCs → Delaware. Asian VCs → Singapore. Crypto-native funds → Cayman or Singapore.
2. **Will you issue a token?** If yes → Cayman Foundation strongly recommended.
3. **Will you serve US users?** If yes → US legal counsel from day 1.
4. **Where do founders live?** Tax residency of founders affects entity choice significantly.
5. **Do you need banking?** Some offshore jurisdictions have terrible banking options; Singapore and UAE are excellent.
6. **What's your timeline to token?** < 12 months → prioritize Cayman Foundation immediately.

---

## Further Reading

- [Paradigm DAO Legal Framework](https://daos.paradigm.xyz/)
- [Wyoming DAO LLC legislation](https://www.wyoleg.gov/2021/Introduced/SF0038.pdf)
- [Cayman Islands Foundation Company Law](https://www.cima.ky/)
- [Singapore ACRA Company Registration](https://www.acra.gov.sg/)
- → See [resources.md](resources.md) for law firm recommendations per jurisdiction
