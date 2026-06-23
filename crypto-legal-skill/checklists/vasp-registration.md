# VASP / CASP Registration Checklist

For crypto businesses that need to register or obtain a license as a Virtual Asset Service Provider (VASP) or Crypto-Asset Service Provider (CASP). Use this to assess which jurisdictions require action and what to prepare.

> VASP registration timelines range from 2 weeks (FinCEN MSB) to 18 months (EU MiCA CASP full license). Start early.

---

## Step 0 — Do You Actually Need a VASP License?

First determine if your product triggers licensing requirements at all.

| Product Type | Typical Licensing Requirement |
|---|---|
| Non-custodial DEX (no user funds held) | Generally not required (but evolving) |
| Non-custodial wallet (user holds keys) | Generally not required |
| Custodial wallet or exchange | Required in most jurisdictions |
| Fiat on/off ramp | Required everywhere |
| Stablecoin issuer | Required (treated as e-money issuer) |
| Crypto lending (custodial) | Required in most jurisdictions |
| NFT marketplace (no fiat, no escrow) | Lower risk; jurisdiction-dependent |
| DeFi lending protocol (non-custodial) | Currently grey zone; watch for updates |
| Portfolio management for third parties | Securities/investment adviser license often required |

If your product is non-custodial and does not accept fiat, you may not need a VASP license in most jurisdictions — but get legal confirmation before assuming this.

---

## United States

### FinCEN MSB Registration (Federal)
- [ ] Determine if you meet the Money Services Business definition (exchange, transfer, or wallet services)
- [ ] Register on BSA E-Filing System at fincen.gov (free; takes ~2 weeks)
- [ ] Designate a BSA/AML Compliance Officer
- [ ] Draft written AML/BSA program covering: policies, training, independent testing, CIP
- [ ] Implement Customer Identification Program (CIP)
- [ ] Set up SAR (Suspicious Activity Report) filing process
- [ ] Set up CTR (Currency Transaction Report) for cash transactions >$10,000
- [ ] Renew registration every 2 years

### State Money Transmitter Licenses (MTL)
- [ ] Map users by state to determine which states require MTLs
- [ ] New York: ⚠️ **BitLicense required** if touching NY users — apply to NY DFS; timeline 12–24 months; $5,000 application fee; very demanding
- [ ] Priority states for early licensing: New York, California, Texas, Florida, Illinois
- [ ] Use NMLS (Nationwide Multistate Licensing System) for multi-state filings where available
- [ ] Consider hiring a licensed money transmitter partner for early US operations while pursuing licenses
- [ ] Budget: $2–5M+ for all 50 states; 2–4 year timeline
- [ ] Surety bond requirements vary by state ($25,000–$7M+)

---

## European Union — MiCA CASP License

### Pre-Application Preparation
- [ ] Choose home member state for MiCA authorization (consider: BaFin/Germany, CSSF/Luxembourg, CBI/Ireland, Banca d'Italia, CNMV/Spain)
- [ ] Determine which CASP services you will provide (see MiCA Article 3 definitions)
- [ ] Minimum capital requirement confirmed:
  - Class 1 (order-taking, advice, transfers): €50,000
  - Class 2 (+ execution, exchange): €125,000
  - Class 3 (+ custody, operation of platform): €150,000
- [ ] Legal entity incorporated in chosen EU member state

### Governance and Organization
- [ ] Board composition: at least one third-country director permitted; majority EU residents not required but recommended
- [ ] Management body members: fit and proper assessment prepared (CV, criminal records check, financial history)
- [ ] Compliance function: designated Compliance Officer with relevant experience
- [ ] Risk management function: designated Risk Officer
- [ ] Internal audit function (can be outsourced for smaller firms)
- [ ] Written policies for: conflicts of interest, complaint handling, business continuity, outsourcing

### Operational Requirements
- [ ] AML/CTF program compliant with EU 6th Anti-Money Laundering Directive (6AMLD)
- [ ] KYC procedures: customer due diligence (CDD), enhanced due diligence (EDD) for high-risk
- [ ] Travel Rule compliance solution selected (Notabene, Sygna, OpenVASP)
- [ ] Safeguarding of client assets: segregation from own assets; reconciliation procedures
- [ ] Cyber security policy and incident response plan
- [ ] Business continuity and disaster recovery plan

### Application Submission
- [ ] MiCA-compliant White Paper (for token issuers) or service description (for CASPs)
- [ ] Programme of operations (3-year business plan)
- [ ] Governance arrangements documentation
- [ ] Regulatory capital evidence
- [ ] AML policy documentation
- [ ] Submit to home member state regulator; expect 25 working days to validate completeness + 40 working days for assessment
- [ ] Total timeline: 6–18 months from submission to authorization
- [ ] Budget: €200,000–€500,000 in legal, consulting, and regulatory fees

### Post-Authorization
- [ ] Passporting notification to target EU member states (file with home regulator who notifies others)
- [ ] Ongoing regulatory reporting to home regulator
- [ ] Annual audit
- [ ] Breach notification (material changes to business require regulatory notification)

---

## Singapore — MAS Payment Services Act

### Determine License Type
- [ ] Standard Payment Institution (SPI): <SGD 3M monthly DPT transactions; apply first, upgrade later
- [ ] Major Payment Institution (MPI): ≥SGD 3M monthly DPT transactions or ≥SGD 6M annually
- [ ] Activity types: DPT service (exchange, transfer, custody) requires license

### Pre-Application
- [ ] Singapore-incorporated entity (Pte. Ltd.)
- [ ] At least one Singapore-resident director
- [ ] Minimum base capital: SGD 250,000 (MPI); SGD 100,000 (SPI)
- [ ] Fit and proper assessment for directors and key personnel
- [ ] MAS will review reputation, track record, compliance culture

### Application Requirements
- [ ] Business model and service description
- [ ] AML/CFT policies (MAS Notice PSN02 compliant)
- [ ] Technology risk management policies (MAS TRM Guidelines)
- [ ] Outsourcing arrangements disclosed
- [ ] Financial projections (3 years)
- [ ] Consumer protection measures
- [ ] Cyber incident reporting plan

### Timeline and Cost
- [ ] Timeline: 6–12 months for MPI; 3–6 months for SPI
- [ ] Application fee: SGD 1,000–5,000
- [ ] Annual licensing fee: SGD 5,000–20,000
- [ ] Legal/consulting fees: SGD 100,000–300,000

---

## UAE — VARA (Dubai)

### License Types
- [ ] **MVP (Minimum Viable Product) License**: early-stage testing; limited user base
- [ ] **FMP (Full Market Product) License**: full operations
- [ ] Determine: Dubai Mainland (VARA) vs ADGM (Abu Dhabi — FSRA regulated)

### VARA Application (Dubai)
- [ ] Incorporate in Dubai free zone or mainland
- [ ] Identify Virtual Asset activities: exchange, transfer, custody, lending, broker-dealer, management/investment
- [ ] Prepare: business plan, governance framework, risk management policies, AML/CFT program
- [ ] Capital requirements: AED 1M–10M depending on activities
- [ ] Fit and proper for directors and senior management
- [ ] Technology and cyber security assessment
- [ ] Timeline: 2–6 months for MVP; 6–12 months for FMP
- [ ] Cost: AED 40,000–200,000 in regulatory fees + legal

---

## Cayman Islands — CIMA VASP Registration

- [ ] Determine if your activity requires VASP registration under Cayman Virtual Asset (Service Providers) Act 2020
- [ ] Activities requiring registration: exchange (crypto-fiat or crypto-crypto), transfer, custody, administration, issuance of virtual assets
- [ ] Register with CIMA via online portal
- [ ] AML/CFT policies compliant with Cayman AML Regulations
- [ ] Timeline: 4–8 weeks
- [ ] Annual registration fee: USD 10,000–25,000 depending on activity class

---

## AML Program — Core Components (All Jurisdictions)

Regardless of jurisdiction, a compliant AML program must cover:

- [ ] **Written AML Policy**: approved by senior management; reviewed annually
- [ ] **Compliance Officer**: named individual with authority and resources
- [ ] **Risk Assessment**: documented assessment of money laundering and sanctions risk for your specific business
- [ ] **Customer Due Diligence (CDD)**:
  - Individual customers: name, DOB, address, government ID, source of funds (high risk)
  - Corporate customers: ultimate beneficial owner identification (UBO ≥25% ownership)
- [ ] **Enhanced Due Diligence (EDD)**: for high-risk customers, PEPs (politically exposed persons), high-value transactions
- [ ] **Sanctions Screening**: OFAC SDN, EU Consolidated List, UN Sanctions, local lists; real-time screening on onboarding and ongoing
- [ ] **Transaction Monitoring**: rule-based or ML-based monitoring for suspicious patterns
- [ ] **SAR/STR Filing**: documented process for identifying, reviewing, and filing suspicious activity
- [ ] **Record Retention**: minimum 5 years for all CDD and transaction records
- [ ] **Training**: annual AML training for all relevant staff
- [ ] **Independent Audit/Testing**: annual review of AML program effectiveness
- [ ] **Travel Rule Compliance**: for transfers between VASPs >$1,000 (US) or equivalent

---

## Ongoing Compliance Calendar

| Frequency | Task |
|---|---|
| Real-time | Sanctions screening on new customers and counterparty VASPs |
| Monthly | Transaction monitoring review; SAR reporting if triggered |
| Quarterly | Regulatory updates review; compliance committee meeting |
| Annually | AML program review and update; staff training; independent audit |
| On change | Material business changes → notify regulator; re-assess licensing needs |
| Every 2 years | FinCEN MSB renewal (US) |
