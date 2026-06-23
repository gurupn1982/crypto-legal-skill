# India Crypto Compliance Checklist

For founders and businesses with Indian operations, Indian team members, or Indian users. India has the world's most complex combination of crypto tax, AML, and cross-border financial rules. This checklist covers all three.

> Items marked ⚠️ carry criminal liability risk (imprisonment) for non-compliance. Do not skip these.

---

## Section A — Is Your Business a Reporting Entity Under PMLA?

The Prevention of Money Laundering Act 2002 (as amended March 2023) applies to "Reporting Entities" (REs) in the VDA space. Confirm whether your product is an RE before proceeding.

- [ ] **Exchange / conversion**: do you convert VDA to fiat, or VDA to VDA, for customers? → **RE**
- [ ] **Transfer service**: do you facilitate transfer of VDA on behalf of customers? → **RE**
- [ ] **Custody / safekeeping**: do you hold private keys or custody assets for customers? → **RE**
- [ ] **Financial services related to VDA issuance or sale**: do you advise on, arrange, or manage token sales for others? → **RE**
- [ ] **Non-custodial DeFi protocol**: do you hold no user assets and have no discretion over transactions? → likely **not an RE** (but take legal advice)
- [ ] **Pure software / tooling**: no financial intermediation → likely **not an RE**

If your business is an RE, proceed through Section B. If not, jump to Section D (tax compliance).

---

## Section B — FIU-IND Registration (Mandatory for Reporting Entities)

⚠️ Operating as an unregistered RE is a PMLA violation — penalty up to ₹1 lakh/day plus potential criminal prosecution.

### Registration Process
- [ ] Create account on FIU-IND portal: **fiuindia.gov.in**
- [ ] Prepare company incorporation documents (CIN, MOA, AOA)
- [ ] Prepare list of directors and key management personnel with PAN and Aadhaar details
- [ ] Describe VDA services offered in detail
- [ ] Submit registration application; expect 4–8 weeks for approval
- [ ] Receive Registration Reference Number (RRN)
- [ ] Display RRN on website and in relevant communications

### Ongoing Obligations Post-Registration

**Customer Due Diligence (CDD)**
- [ ] KYC for all customers before account activation: Aadhaar/PAN (Indian residents), passport (foreign nationals)
- [ ] Video KYC (V-KYC) or in-person KYC per RBI/FIU guidelines
- [ ] Beneficial owner identification for corporate customers (UBO ≥15% for Indian corporates)
- [ ] Enhanced due diligence (EDD) for PEPs (Politically Exposed Persons) and their family members
- [ ] Ongoing customer risk rating (low / medium / high); update on trigger events

**Transaction Monitoring**
- [ ] Transaction monitoring system implemented (rule-based at minimum)
- [ ] Thresholds for manual review: single transactions >₹10 lakh; cumulative >₹50 lakh/month (adjust based on risk profile)
- [ ] Sanctions screening: UN Consolidated List, Government of India designated entities, OFAC (for international exposure)
- [ ] Source of funds verification for high-value transactions

**Reporting Obligations**
- [ ] ⚠️ **Suspicious Transaction Reports (STRs)**: file with FIU-IND within 7 working days of identifying a suspicious transaction
- [ ] **Cash Transaction Reports (CTRs)**: for cash transactions >₹10 lakh; file within 15 days of month end
- [ ] **Non-Profit Organization Transaction Reports (NTRs)**: if applicable
- [ ] **Counterfeit Currency Reports (CCRs)**: if counterfeit currency encountered (rare in crypto context)

**Record Keeping**
- [ ] ⚠️ Maintain all KYC records for minimum **5 years** after account closure
- [ ] Maintain all transaction records for minimum **5 years** from transaction date
- [ ] Records must be readily available to FIU-IND on request; keep in India (or accessible from India)

**Compliance Program**
- [ ] ⚠️ Appoint a **Principal Officer** (senior management level) responsible for PMLA compliance; notify FIU-IND of name and contact
- [ ] Appoint a **Designated Director** (director-level; not the Principal Officer)
- [ ] Written AML/CFT policy approved by board
- [ ] Annual staff training on PMLA obligations
- [ ] Internal audit of AML program annually

---

## Section C — FEMA (Foreign Exchange Management Act)

Applies to any Indian resident or Indian-incorporated company with cross-border crypto flows.

### Cross-Border Payments Received in Crypto

- [ ] If you receive crypto from abroad as payment for services: classify as "export of services" under FEMA; must realize and repatriate foreign exchange within prescribed period (currently 9 months from invoice date for most services)
- [ ] Report inward remittances to your authorized dealer bank; provide FIRC (Foreign Inward Remittance Certificate)
- [ ] If receiving crypto tokens (not fiat) from a foreign entity: FEMA classification is unclear; seek legal opinion before proceeding at scale

### Foreign Investment in Indian Entity

- [ ] Foreign VC investing into your Indian entity requires compliance with FDI (Foreign Direct Investment) regulations
- [ ] Crypto sector is not in the prohibited/restricted list; FDI permissible under automatic route for most tech companies
- [ ] File FC-GPR (Foreign Currency-Gross Provisional Return) with RBI within 30 days of share allotment to foreign investor
- [ ] All foreign investment must be routed through authorized dealer banks only
- [ ] Issue shares only in permitted classes; convertible notes require RBI approval for some structures

### Overseas Investment by Indian Entity

- [ ] Indian companies investing in foreign entities (e.g., setting up Singapore Pte Ltd) must comply with FEMA Overseas Investment Rules 2022
- [ ] Automatic route: up to 400% of net worth for financial commitment abroad; most tech investments qualify
- [ ] File Form OI (Overseas Investment) with authorized dealer bank within 30 days of investment
- [ ] Annual reporting: ODI-Annual Return (APR) by December 31 each year

### LRS (Liberalised Remittance Scheme) for Individual Founders

- [ ] Indian resident individuals can remit up to USD 250,000 per year abroad under LRS
- [ ] ⚠️ TCS (Tax Collected at Source) at 20% on LRS remittances above ₹7 lakh per year (claimable as advance tax)
- [ ] Permitted purposes under LRS include: overseas education, travel, maintenance of relatives, investment in foreign securities
- [ ] Crypto purchase abroad: **not explicitly permitted** under LRS by RBI; grey area — take legal advice before remitting for crypto purchase
- [ ] Document all LRS remittances; maintain bank records

---

## Section D — VDA Tax Compliance (All Indian Crypto Holders and Businesses)

### Tax Setup

- [ ] Engage a Chartered Accountant (CA) with proven crypto experience before first transaction; do not DIY crypto taxes in India
- [ ] Select a crypto tax software that handles Schedule VDA: **Koinly**, **Cleartax Crypto**, or **Quicko**
- [ ] Connect all exchanges and wallets to tax software for automated import
- [ ] Set cost basis method: India uses FIFO (First In, First Out) as default; confirm with CA

### Transaction Record Keeping

- [ ] ⚠️ Maintain complete records of every VDA transaction: date, quantity, INR value at transaction time, counterparty (exchange/wallet address), and purpose
- [ ] For OTC/P2P trades: maintain written records; obtain bank receipts for fiat legs
- [ ] For DeFi transactions (swaps, liquidity provision): extract on-chain transaction logs and record INR value of each token at time of each transaction
- [ ] Records must be maintained for **6 assessment years** (effectively 7 years from transaction year)

### Advance Tax (If VDA gains exceed ₹10,000 in the year)

- [ ] ⚠️ Advance tax is mandatory if estimated tax liability exceeds ₹10,000; failure attracts interest under sections 234B and 234C
- [ ] Advance tax payment schedule:
  - June 15: 15% of estimated annual tax
  - September 15: 45% cumulative
  - December 15: 75% cumulative
  - March 15: 100% cumulative
- [ ] Calculate estimated VDA gains quarterly; adjust advance tax payments accordingly

### TDS Compliance (Section 194S)

**If you are a buyer in a P2P/OTC crypto transaction** (not through a licensed exchange that deducts for you):
- [ ] ⚠️ Deduct 1% TDS on the purchase consideration at time of credit/payment
- [ ] Deposit TDS with the government: **Form 26QE** for individuals; **Form 26Q** for businesses
- [ ] Deposit deadline: 30 days from end of month in which TDS was deducted
- [ ] Issue TDS certificate (Form 16E/16A) to the seller

**If you operate an exchange or platform** where Indian users transact:
- [ ] Register as Tax Deductor/Collector at Source (apply for TAN — Tax Deduction Account Number)
- [ ] Deduct 1% TDS on gross consideration for each VDA transaction by Indian users
- [ ] File quarterly TDS returns (Form 26Q or 26QE as applicable)
- [ ] Deposit TDS by 7th of following month

### ITR Filing

- [ ] Use **ITR-2** (salary + VDA gains) or **ITR-3** (business income + VDA gains)
- [ ] Complete **Schedule VDA**: list each VDA transaction with acquisition date, transfer date, cost, and sale price
- [ ] Report VDA at 30% flat rate; do not club with capital gains schedule (different rate)
- [ ] ⚠️ **No loss set-off**: do not attempt to offset VDA losses against any other income — this is a common error that attracts scrutiny
- [ ] Declare foreign crypto assets in **Schedule FA** (Foreign Assets): all crypto held on foreign exchanges or wallets must be declared by INR value as of March 31
- [ ] ⚠️ Failure to declare foreign assets: Black Money (Undisclosed Foreign Income and Assets) Act — up to 10 years imprisonment + 90% penalty
- [ ] ITR filing deadline: July 31 (non-audit); October 31 (audit required)

---

## Section E — Token Grants to Indian Team Members

If your protocol is granting tokens to India-based contributors:

- [ ] Token receipt is taxable income at FMV on date of receipt (30% VDA rate)
- [ ] If tokens vest over time: each vest is a separate taxable event
- [ ] Document grant date, vest schedule, and token FMV at each vest date
- [ ] 1% TDS may be applicable if the grantor is an Indian entity paying tokens to an Indian person
- [ ] FEMA: tokens granted by a foreign entity to an Indian resident are treated as a foreign asset; must be reported in Schedule FA
- [ ] If founder holds >10% stake in foreign entity that holds crypto: additional reporting under FEMA required

---

## Section F — Ongoing Compliance Calendar

| Frequency | Task |
|---|---|
| Each transaction | Record INR value; update cost basis in tax software |
| Monthly (if exchange) | Deposit TDS deducted in prior month by 7th |
| Quarterly | Advance tax deposits (Jun 15, Sep 15, Dec 15, Mar 15); TDS return filing |
| Annually (July 31) | ITR filing with Schedule VDA and Schedule FA |
| Annually | FIU-IND compliance review; AML training; STR/CTR reconciliation |
| Annually (Dec 31) | FEMA ODI Annual Return (if overseas investment exists) |
| Within 7 days | STR filing with FIU-IND on identifying suspicious transaction |
| Within 30 days | TDS deposit for P2P/OTC transactions |

---

## Key Contacts and Portals

| Purpose | Portal |
|---|---|
| FIU-IND registration and reporting | fiuindia.gov.in |
| TDS deposit and returns | tin.tin.nsdl.com (TRACES) |
| ITR filing | incometax.gov.in |
| FEMA / RBI foreign investment | rbi.org.in → FIRMS portal |
| GST registration (if applicable) | gst.gov.in |
