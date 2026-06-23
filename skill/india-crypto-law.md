# India Crypto Law — Complete Guide for Solana Builders

> **Disclaimer**: General legal information only. Indian crypto law is evolving rapidly. Consult a qualified Indian CA and lawyer specializing in FEMA/crypto.

India represents a paradox for crypto builders: **the world's largest developer talent pool** for Solana, combined with **the world's harshest crypto tax regime**. This guide covers everything an India-based Solana founder needs to know.

---

## 1. Legal Status of Crypto in India

**Crypto is legal in India.** This is frequently misunderstood.

The Supreme Court of India lifted the RBI's banking ban on crypto in March 2020 (*Internet and Mobile Association of India v. Reserve Bank of India*). Since then:

- Buying, selling, holding, and trading crypto is legal for individuals
- No law prohibits owning crypto
- What does NOT exist: a formal regulatory framework or government-issued license for crypto businesses
- What DOES exist: tax obligations (harsh) and AML/FIU reporting requirements (strict)

**The 2022 Budget Amendment** (Finance Act 2022) introduced the VDA (Virtual Digital Asset) taxation framework — making crypto taxable but NOT banning it.

---

## 2. VDA Tax — 30% Flat Tax

### What is a VDA?

Section 2(47A) of the Income Tax Act defines **Virtual Digital Asset** to include:
- Any information, code, number, or token generated through cryptographic means
- Any digital representation of value exchanged with the promise of value
- Non-fungible tokens (NFTs)
- Other digital assets as notified by the government

**Exclusions**: Gift cards, vouchers, and other digital representations of fiat currency.

### The 30% Tax

Section 115BBH of the Income Tax Act:

- **Rate**: 30% flat (+ 4% Health and Education Cess = effective **31.2%**)
- **Applies to**: Any income from transfer of VDA
- **"Transfer"** is broadly defined: sale, exchange, swap, gift, or any disposition
- **No basic exemption**: The 30% applies even if your total income is below the basic exemption limit
- **No deductions**: Cannot claim deduction for cost of mining, electricity, or other expenses — **only cost of acquisition is deductible**
- **Surcharge**: High earners pay additional surcharge on top:
  - Income 50L–1Cr: +10% surcharge on tax → effective 34.32%
  - Income 1Cr–2Cr: +15% surcharge → effective 35.88%
  - Income >2Cr: +25% surcharge → effective 39%

### No Loss Set-Off — The Most Punishing Provision

**Section 115BBH(2)(b)**: No loss from transfer of VDA can be set off against:
- Any other income (salary, business, capital gains from stocks)
- Any other VDA gain (loss on SOL cannot offset gain on ETH)
- Carried forward to future years

**Example**:
- You make ₹10L profit on SOL
- You make ₹8L loss on ETH
- **Tax payable**: 30% × ₹10L = ₹3L (the ETH loss is ignored)
- **Effective tax rate on portfolio**: 300% of your ₹2L net gain

This makes India's VDA tax regime arguably the harshest globally.

### What Counts as a "Transfer" (Taxable Event)

| Transaction | Taxable? |
|---|---|
| Sell crypto for INR | Yes — 30% on profit |
| Swap crypto for crypto (e.g., SOL→USDC) | Yes — 30% on gain at point of swap |
| Receive crypto as salary/freelance payment | Yes — taxable as income at FMV; future sale also taxable |
| Receive staking rewards | Yes — taxable as income at FMV on receipt |
| Receive airdrop | Yes — income at FMV on receipt |
| Gift crypto (received) | Yes — if FMV >₹50,000; taxable as "income from other sources" |
| Gift crypto (given) | Yes — treated as "transfer" at FMV; capital gain computed |
| Mining rewards | Yes — income on receipt |
| NFT sale | Yes — 30% on profit |
| Buy and hold crypto | No — not a taxable event |
| Transfer between your own wallets | Generally no — but retain proof it's your wallet |

---

## 3. 1% TDS (Tax Deducted at Source)

### Section 194S — TDS on VDA Transfer

Effective July 1, 2022:

- **Rate**: 1% TDS on every crypto transaction
- **Who deducts**: 
  - Exchange/broker deducts TDS if the transaction happens on-platform
  - If P2P: buyer deducts and deposits TDS
- **Threshold**: No TDS if consideration <₹10,000 per transaction (or ₹50,000/year for specified persons)
- **Applicable to**: Any payment made in connection with transfer of VDA, including in-kind payments

### Impact on Indian Users on DEXes/Solana

When an Indian user swaps on a DEX (e.g., Jupiter on Solana):
- No centralized exchange deducts TDS
- The user is technically required to self-deduct and deposit TDS
- **Practical reality**: Most Indian users on DeFi are non-compliant with TDS
- **Risk**: Tax department can recover TDS + 1.5% interest per month + penalty

### Claiming TDS Credit

TDS deducted by exchanges appears in your Form 26AS. You can claim it as advance tax credit against your final tax liability.

**Net effect of 1% TDS**: You're pre-paying 1% of every gross sale value. This is refundable only if your total tax liability is less than 1% of your gross turnover — which is very common for active traders or those making losses.

---

## 4. PMLA and FIU-IND

### Prevention of Money Laundering Act (PMLA) — 2023 Amendment

In March 2023, the Indian government brought VDA service providers under PMLA via gazette notification. This made crypto exchanges, wallets, and custodians **Reporting Entities** under PMLA.

**Who is a Reporting Entity (RE) under PMLA for crypto?**
- Crypto exchanges (centralized)
- Crypto brokers and advisors
- Custodial wallet providers
- Crypto portfolio managers
- Any entity facilitating exchange, transfer, safekeeping, or administration of VDAs or instruments for VDA control

**Note**: Non-custodial DeFi protocols are not clearly covered — PMLA applies to service providers, not decentralized protocols.

### FIU-IND Registration

All crypto Reporting Entities must register with the **Financial Intelligence Unit – India (FIU-IND)**.

**Requirements post-registration**:
1. **Customer Due Diligence (CDD)**: KYC for all customers
2. **Ongoing monitoring**: Transaction monitoring for suspicious patterns
3. **Record-keeping**: 5 years minimum
4. **Suspicious Transaction Reports (STR)**: File with FIU-IND within 7 days of identifying suspicious transaction
5. **Cash Transaction Reports (CTR)**: For transactions above ₹10 lakh involving cash
6. **Counterfeit Currency Reports**: If encountered
7. **Designated Persons Transaction Reports**: For UN/domestic designated terrorist/criminals

**Process to register**: FIU-IND online portal (fiuindia.gov.in). Typically takes 4–8 weeks.

**Penalty for non-registration**: Up to ₹1 lakh per day of non-compliance.

### Practical Compliance for Solana Projects

If your Solana project has:
- **A DEX or swap interface**: If you custody user assets at any point → PMLA RE
- **A wallet product (custodial)**: PMLA RE; must KYC users
- **A pure non-custodial protocol**: PMLA likely doesn't apply to the protocol, but the front-end company should take legal advice
- **An NFT marketplace**: If you hold funds in escrow → possibly PMLA RE

---

## 5. RBI and Banking Access

### RBI's Current Stance

The RBI has been consistently skeptical of crypto:
- March 2018: RBI circular prohibiting banks from servicing crypto businesses (struck down by SC in 2020)
- Current: RBI has not issued a blanket ban but continues to express concerns about crypto's macro-financial implications
- RBI has proposed a CBDC (Digital Rupee / e-Rupee) as an alternative

**Banking reality for Indian crypto businesses**:
- No law prohibits banks from serving crypto businesses
- Many Indian banks (especially PSBs like SBI, PNB) de-risk by refusing accounts to crypto exchanges
- Private banks (HDFC, ICICI, Axis, Kotak) are more accommodating but may add restrictions
- Some neo-banks (Fi, Jupiter) are crypto-friendly
- **Practical**: Most Indian crypto businesses have difficult banking relationships

### RBI Stance on Stablecoins

RBI has not authorized any stablecoin for circulation in India. Using USDC in India-based products that interact with Indian users is a grey area — RBI could potentially view USDC acceptance as foreign currency circulation without authorization under FEMA.

---

## 6. FEMA (Foreign Exchange Management Act) — Cross-Border Considerations

FEMA governs all cross-border financial transactions by Indian residents. Crypto creates complex FEMA issues:

### Outward Remittance for Crypto Purchase

- **Liberalised Remittance Scheme (LRS)**: Indian residents can remit up to $250,000/year abroad for permissible purposes
- **Crypto purchase abroad**: RBI has not explicitly permitted crypto under LRS; effectively grey area
- **Practice**: Many Indians purchase crypto on foreign exchanges — technically non-compliant with RBI's LRS restrictions
- **TCS on LRS**: 20% Tax Collection at Source on LRS remittances above ₹7 lakh (as of 2023)

### Token Income Received from Abroad

- If you work for a foreign Solana project and receive tokens as compensation:
  - Tokens are income; must be declared at FMV
  - Must be reported as foreign asset under FEMA
  - Schedule FA in ITR-2 or ITR-3: report foreign crypto assets
- **Failure to report foreign assets**: Punishable under Black Money Act (up to 10 years imprisonment + 90% penalty)

### VC Investment into Indian Entity

- Foreign VC investment into an Indian crypto company is subject to FDI (Foreign Direct Investment) rules
- Crypto is not a prohibited sector for FDI
- Investment via equity → RBI approval via Automatic Route generally
- Investment via SAFTs or token deals → more complex; may need RBI case-by-case approval

---

## 7. Tax Filing for Indian Crypto Users

### Which ITR Form?

| Income Type | ITR Form |
|---|---|
| Salary + crypto gains | ITR-2 |
| Business income + crypto | ITR-3 |
| Presumptive business (Section 44AD/ADA) | ITR-4 (but VDA income must also be declared) |
| Crypto as business activity | ITR-3 |

### Schedule VDA

Since AY 2023-24, ITR forms include a dedicated **Schedule VDA**:
- Date of acquisition
- Date of transfer
- Cost of acquisition
- Sale consideration
- Tax computed at 30%

All VDA transactions must be reported individually, similar to capital gains schedule.

### Key Deadlines

| Event | Deadline |
|---|---|
| File ITR (non-audit) | July 31 of assessment year |
| File ITR (audit required) | October 31 |
| Advance tax (if liability >₹10K) | Quarterly: June 15, Sept 15, Dec 15, March 15 |
| TDS deposit (buyer in P2P) | 30 days from end of month of deduction |

---

## 8. Practical Strategies for India-Based Solana Founders

### Option 1: Operate from India (Most Founders)

**Tax reality**:
- 30% on all crypto gains; no loss set-off
- 1% TDS on every transaction
- PMLA compliance if custodying user assets

**Mitigation**:
- Use a Chartered Accountant (CA) with crypto experience from day 1
- Track every transaction with cost basis (Koinly, Cleartax crypto)
- Maintain clean books; FIU registration if applicable
- Consider whether token grants vest slowly (delays recognition)

### Option 2: Relocate to Singapore / UAE

The cleanest solution for high-value crypto founders:
- **Singapore**: 0% capital gains, 0% on crypto gains; Singapore Pte Ltd is easy to set up
- **UAE**: 0% personal income tax; no capital gains
- **Requirements for Indian founder to stop being Indian tax resident**:
  - Must spend <182 days in India in the tax year (generally)
  - Or <60 days in India if you've been abroad for 365+ days in preceding 4 years
  - Obtain UAE/Singapore residency visa
  - Open bank accounts in new jurisdiction before selling tokens

**Critical**: Seek advice from a FEMA expert before relocating. Exit from India involves FEMA implications for existing company stakes and assets.

### Option 3: Singapore Holding Company

Even if founders remain in India, structuring the Solana project's token treasury via a Singapore entity can:
- Keep token appreciation in Singapore (0% CGT)
- Salary/consulting income paid to Indian individuals is still taxable in India
- But reduces India-level exposure on token value growth

**Requires**: Singapore corporate structure, arm's-length services agreement with any Indian team entity.

---

## 9. Upcoming Indian Crypto Regulation (Mid-2026)

India is working on a comprehensive crypto regulatory framework. Current status:

- **Inter-Ministerial Consultations**: Multiple ministries involved (Finance, RBI, SEBI, MeitY)
- **SEBI's position**: SEBI wants oversight of crypto as a financial product; has recommended treating crypto exchanges as market infrastructure
- **RBI's position**: Continues to push for CBDC adoption; cautious on private crypto
- **Expected**: A formal Crypto Bill is anticipated but has been delayed multiple times; as of mid-2026, no bill has been tabled in Parliament
- **Likely framework**: Registration with SEBI or new crypto regulator; AML/KYC requirements; possibly exchange regulation

**Practical implication**: Build compliance infrastructure (KYC, AML, transaction monitoring) from day 1 — it will be required.

---

## 10. Quick Reference

| Topic | Rule |
|---|---|
| Is crypto legal in India? | Yes |
| Tax on crypto gains | 30% flat + 4% cess = 31.2% |
| TDS on crypto sale | 1% on gross sale value |
| Set-off crypto losses | NOT allowed (no set-off at all) |
| Carry forward crypto losses | NOT allowed |
| Staking/airdrop income | 30% at time of receipt |
| NFT sales | 30% |
| Receiving crypto gift >₹50K | Taxable as income |
| FIU registration | Required for custodial crypto businesses |
| PMLA compliance | Yes, since March 2023 |
| Foreign crypto on ITR | Must declare in Schedule FA |
| RBI banking | No ban but banking access difficult |
| Best entity structure | Singapore Pte Ltd holding + India subsidiary |

---

## Further Reading

- [Finance Act 2022 — VDA provisions](https://www.incometaxindia.gov.in/)
- [Section 115BBH, Income Tax Act](https://egazette.gov.in/WriteReadData/2022/234515.pdf)
- [FIU-IND registration portal](https://fiuindia.gov.in/)
- [PMLA 2023 Amendment (VDA notification)](https://rbidocs.rbi.org.in/)
- [SEBI consultation paper on crypto](https://www.sebi.gov.in/)
- [Income Tax India — Schedule VDA guidance](https://www.incometaxindia.gov.in/)
- → See [resources.md](resources.md) for India-specific crypto CA and lawyer recommendations
