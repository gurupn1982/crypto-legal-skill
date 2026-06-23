# Token Launch Legal Checklist

Pre-TGE (Token Generation Event) legal checklist for Solana protocol founders. Work through this 6–12 months before your planned token launch. Items marked ⚠️ are blocking — do not proceed to TGE without resolving them.

> This checklist covers legal and structural preparation only. Tokenomics design, smart contract audits, and exchange listing mechanics are separate workstreams.

---

## Phase 1 — Entity Structure (T-12 to T-9 months)

### Foundation Setup
- [ ] ⚠️ **Cayman Foundation Company incorporated** — the entity that will issue tokens and hold treasury
- [ ] Foundation objects drafted to cover protocol development and ecosystem grants
- [ ] Initial board of directors appointed (typically 3: two founders + independent director)
- [ ] Supervisor appointed (Cayman law firm or professional supervisor)
- [ ] Foundation bank account or digital asset account opened (BCB Group, Silverbird, or similar)
- [ ] Foundation registered for CIMA VASP if applicable (Cayman)

### Operating Company
- [ ] Delaware C-Corp or Singapore Pte Ltd incorporated for team employment and VC fundraising
- [ ] Services agreement executed between Foundation and operating company (Foundation pays grants; OpCo performs development services)
- [ ] Transfer pricing analysis for cross-border intercompany flows
- [ ] Employer of Record (EOR) or local entities set up for team members in non-OpCo jurisdictions

### IP Assignment
- [ ] All founders and early contributors have signed IP assignment agreements
- [ ] Protocol IP assigned to the Foundation (or licensed from OpCo to Foundation)
- [ ] Open-source licensing strategy determined (MIT, Apache 2.0, Business Source License)
- [ ] Trademark applications filed in key jurisdictions (US, EU, target markets)

---

## Phase 2 — Token Legal Analysis (T-9 to T-6 months)

### Securities Law Opinion
- [ ] ⚠️ **Written securities law analysis obtained from qualified crypto counsel** — covering the Howey test for your specific token
- [ ] Token utility use cases documented and hardcoded into protocol before launch (not aspirational)
- [ ] Network decentralization assessment documented — degree of founder control at launch
- [ ] Token is not marketed with price appreciation, ROI projections, or investment language anywhere (website, docs, social media, pitch decks)
- [ ] "Sufficient decentralization" roadmap in place if launching before full decentralization

### Token Design Review
- [ ] Token functions are consumptive at launch (fees, governance, access, staking for work)
- [ ] No revenue share, profit distribution, or dividend-like mechanism without securities counsel sign-off
- [ ] Governance rights are participatory (voting) not financial (entitled to returns)
- [ ] Token vesting schedules for team and investors are documented

---

## Phase 3 — Pre-Sale / Fundraising (T-9 to T-6 months)

### If Raising from Investors Pre-TGE
- [ ] ⚠️ **US accredited investor verification** — if US persons participate, Reg D (506(b) or 506(c)) exemption required; Form D filed with SEC within 15 days of first sale
- [ ] SAFT (Simple Agreement for Future Tokens) or SAFE + Token Side Letter drafted and reviewed by counsel
- [ ] Investment agreements clearly state tokens are not securities (where supportable) or comply with securities law
- [ ] Cap table and token allocation table reconciled
- [ ] No general solicitation to US persons unless using Reg D 506(c) with verified accredited investors only

### Reg S (Non-US Investors)
- [ ] Reg S offering materials prepared for non-US investors
- [ ] Offshore transaction conditions documented (buyer is outside US, no directed selling efforts in US)
- [ ] Distribution compliance period observed (40 days for equity securities; shorter for tokens depending on analysis)

---

## Phase 4 — Compliance Infrastructure (T-6 to T-3 months)

### Geo-blocking and Attestation
- [ ] ⚠️ **US person geo-block implemented** on token sale interface (IP block + VPN detection)
- [ ] ⚠️ **Sanctioned country block implemented** (Iran, North Korea, Cuba, Syria, Russia depending on scope)
- [ ] Self-attestation flow: buyers confirm they are not US persons and not in sanctioned jurisdictions
- [ ] Canada blocked if not compliant with Canadian securities law (OSC)
- [ ] Legal counsel confirmed list of blocked jurisdictions appropriate for your offering

### KYC/AML (if applicable)
- [ ] Determine if token sale requires KYC (private sale to accredited investors: yes; fully public Reg S sale: lighter touch)
- [ ] KYC provider selected and integrated (Persona, Sumsub, Jumio, Onfido)
- [ ] Sanctions screening on all participants (OFAC SDN list at minimum)
- [ ] AML policy document drafted
- [ ] VASP registration considered for the Foundation if it receives and distributes fiat or crypto at scale

### Token Distribution Infrastructure
- [ ] Smart contract audit completed before any tokens are deployed
- [ ] Vesting contract audited separately if using on-chain vesting
- [ ] Multi-sig treasury setup (minimum 3-of-5 signers, geographically distributed)
- [ ] Emergency pause/freeze mechanisms reviewed with legal counsel (can freeze create securities liability?)

---

## Phase 5 — Documentation (T-3 to T-1 months)

### User-Facing Documents
- [ ] ⚠️ **Token Terms of Sale** — governing law, dispute resolution, no-US-persons representation, no-securities representation
- [ ] ⚠️ **Privacy Policy** — GDPR and CCPA compliant; covers data collected during token sale
- [ ] **Terms of Service** — for protocol use, not just token sale
- [ ] **Risk Disclosures** — volatility, smart contract risk, regulatory uncertainty
- [ ] **White Paper** — technical and economic description of the protocol (not a financial prospectus)
- [ ] MiCA-compliant crypto-asset white paper if EU users will participate (required under MiCA)

### Internal Documents
- [ ] Board resolution authorizing the TGE signed by Foundation directors
- [ ] Token allocation schedule approved and documented
- [ ] Investor side letter obligations reconciled with public tokenomics

---

## Phase 6 — Team and Contributor Tokens (T-3 to T-1 months)

### US-Based Team Members
- [ ] ⚠️ **Section 83(b) elections** filed within 30 days of token grant if tokens are restricted property (US founders only) — this is time-critical; missing the window cannot be fixed
- [ ] Token grants documented as compensation agreements
- [ ] Payroll tax implications analyzed with US CPA
- [ ] If tokens are subject to vesting, employment/contractor agreements reflect vesting schedule

### Non-US Team Members
- [ ] Tax treatment of token grants analyzed per local jurisdiction
- [ ] India-based contributors: 30% VDA tax on tokens received as income; FEMA analysis for cross-border grants; see [india-crypto-law.md](../skill/india-crypto-law.md)
- [ ] Token grants documented in writing regardless of jurisdiction

---

## Phase 7 — Exchange Listings (T-1 to T+1 month)

- [ ] Exchange listing agreements reviewed by counsel (representations about token's legal status)
- [ ] Confirm exchange is licensed/registered in jurisdictions where it operates
- [ ] Market maker agreements reviewed
- [ ] Lock-up agreement compliance: team/investor tokens not sold before lock-up expiry
- [ ] Insider trading policy implemented — no team members trade before public token generation

---

## Phase 8 — Post-Launch (T+1 month onward)

- [ ] Protocol governance transferred to token holders per decentralization roadmap
- [ ] Ongoing legal monitoring: SEC guidance changes, MiCA updates, FATF guidance
- [ ] Annual review of token's legal status as protocol evolves
- [ ] Foundation annual filing and compliance fees maintained
- [ ] VASP registration renewals tracked

---

## Common Mistakes to Avoid

**Skipping the securities opinion**: The cost of a proper securities law memo is $20,000–$50,000. The cost of an SEC enforcement action starts at $1M+.

**Missing Section 83(b) deadline**: US founders who receive vesting tokens and don't file within 30 days end up owing income tax on the full value at each vest date (often much higher) rather than at grant (often near zero).

**Mixing Foundation and OpCo funds**: Sending Foundation token treasury to the operating company's bank account for payroll collapses the structural separation that the Foundation provides. Use a services agreement and invoice/grant flow.

**Marketing to US persons before geo-blocking**: Even one tweet saying "our token launches tomorrow" sent before US geo-blocking is live creates SEC jurisdiction.

**No operator vesting**: Founders who receive their full token allocation upfront with no vesting give investors no contractual protection against a rug. Standard is 4-year vest with 1-year cliff.
