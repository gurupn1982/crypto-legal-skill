# Crypto Taxation — Jurisdiction by Jurisdiction

> **Disclaimer**: General legal information only. Tax laws change frequently. Consult a qualified tax professional for your specific situation.

---

## Quick Comparison

| Country | Capital Gains Tax | Crypto-Specific Rules | Staking Tax | Notes |
|---|---|---|---|---|
| **USA** | 0–37% (short) / 0–20% (long) | Property; every trade taxable | Ordinary income | FBAR/FATCA for foreign accounts |
| **Germany** | 0% (held >1 year) | Like private sale | Income tax rate | Most favorable in EU |
| **Portugal** | 28% (held <1yr) / 0% (>1yr) | 2023 reform; prior 0% | 28% | NHR regime advantageous |
| **UK** | 10–20% CGT | Property | Income tax | £3K annual allowance (2024) |
| **Singapore** | **0%** | No capital gains tax | 0% | Top choice for Asia |
| **UAE** | **0%** | No personal income tax | 0% | Zero across the board |
| **India** | **30% flat** | 30% VDA tax, no loss offset | 30% | Harshest globally; see [india-crypto-law.md](india-crypto-law.md) |
| **Brazil** | 0–22.5% | Progressive; >R$35K/month exempt | Taxable | Strong FIU reporting |
| **El Salvador** | 0% (BTC only) | Bitcoin legal tender | 0% | Other crypto: standard rules |
| **Switzerland** | 0% (private) | Wealth tax applies | Taxable income | Professional traders taxed |

---

## 1. United States

### How Crypto Is Classified

The IRS treats cryptocurrency as **property**, not currency. This has major implications:

- Every trade, sale, or exchange is a taxable event
- Paying for goods/services with crypto = taxable event
- Exchanging one token for another = taxable event (even on-chain swaps)
- Receiving crypto as payment = ordinary income at fair market value

### Capital Gains

| Holding Period | Rate |
|---|---|
| < 12 months | Ordinary income rate (10–37%) |
| > 12 months | Long-term capital gains (0%, 15%, or 20%) |
| Net Investment Income Tax | Additional 3.8% for high earners |

**Combined maximum rate for short-term crypto gains**: up to ~40.8% (37% + 3.8% NIIT).

### Staking, Mining, and DeFi

- **Staking rewards**: Treated as ordinary income when received (Jarrett v. IRS, 2022 — but IRS continues to assert income treatment)
- **Mining income**: Ordinary income at fair market value when received
- **DeFi yield/interest**: Ordinary income
- **Airdrop tokens**: Ordinary income at fair market value when you gain dominion and control
- **Hard fork tokens**: Income on receipt
- **NFT sales**: Short/long-term capital gains (or ordinary income if you're an NFT creator)

### US Reporting Requirements

- **Form 8949**: Report each crypto transaction
- **Schedule D**: Capital gains summary
- **FBAR (FinCEN 114)**: Required if foreign crypto exchange accounts exceed $10,000 aggregate at any point during the year
- **Form 8938 (FATCA)**: Foreign financial assets >$50,000 (single) or $100,000 (married)
- **Form 1099-DA**: New starting 2025 — brokers (including centralized exchanges) must issue these

### Wash Sale Rule

**Does NOT currently apply to crypto** (applies to securities). You can sell crypto at a loss and immediately repurchase — but Congress may close this loophole.

### Token Issuance (for Founders)

- **Founding tokens**: If you receive tokens as compensation, it may be ordinary income at time of vesting
- **Section 83(b) election**: File within 30 days of receiving restricted tokens to be taxed at grant date value (often near $0), not vesting date
- **Token sale proceeds**: If tokens are securities, subject to securities tax treatment; if not, property rules apply
- **SAFTs**: Taxed as forward contracts; complex treatment

---

## 2. European Union

### MiCA Tax Implications (2024+)

MiCA itself is a licensing regulation, not a tax regulation. Tax treatment varies by EU member state. However, MiCA creates clarity on token classification that indirectly affects tax treatment.

### Germany 🇩🇪 (Most Favorable EU)

- Crypto held **>1 year**: **0% capital gains tax** (Einkommensteuergesetz §23)
- Crypto held <1 year: taxed at marginal income tax rate (up to 45%)
- Staking: controversial — BFH ruling in 2024 suggests staking does NOT restart holding period
- Mining: income on receipt; subsequent sale may use 1-year holding period clock
- **Practical**: Hold your SOL for 12 months and you pay 0% on gains

### France 🇫🇷

- 30% flat tax (PFU) on crypto capital gains
- Occasional transactions: 30% flat
- Habitual traders: progressive income tax rates

### Portugal 🇵🇹

- Pre-2023: 0% (famous "crypto tax haven")
- Post-2023 reform: 28% for short-term gains (held <1 year); **0% for holdings >1 year**
- NHR (Non-Habitual Resident) regime: 20% flat on Portuguese-source income for 10 years (applies to crypto income earned in Portugal)

### Netherlands 🇳🇱

- Crypto taxed as assets in Box 3 (wealth tax ~1.2–1.7% of deemed return on total assets)
- No CGT; instead an annual "notional return" is taxed
- All crypto holdings reported at Jan 1 value each year

---

## 3. Singapore 🇸🇬 — Top Choice for Crypto Founders

**Capital gains tax: 0%**

Singapore does not have a capital gains tax. This applies to crypto.

**However:**
- If crypto trading is your **business or profession** (frequent, systematic), profits may be taxed as income (17% corporate, up to 22% personal income)
- IRAS (Inland Revenue) applies "badges of trade" test to determine business vs. investment
- Most long-term holders and infrequent traders will be classified as investors → 0% tax

### Token Issuance

- Token sales may be subject to GST (9%) unless treated as financial services (exempt)
- IRAS issued guidance: utility tokens are subject to GST; payment tokens are exempt
- Security tokens: income recognition rules apply

### Reporting

- No annual crypto reporting requirement for individuals
- Corporate: must include crypto assets in financial statements

---

## 4. UAE 🇦🇪 — Zero Tax Jurisdiction

**Personal income tax: 0%**  
**Capital gains tax: 0%**  
**Corporate tax: 0–9%** (introduced June 2023)

The UAE's federal personal income tax exemption covers all individuals — including crypto gains, trading profits, and staking rewards.

**Corporate tax (2023)**:
- 0% on first AED 375,000 (≈$102K) profit
- 9% above that
- **Free Zone companies (QFZP)**: can maintain 0% on qualifying income if they don't do business with UAE mainland

**Practical**: A Dubai free zone company that earns crypto revenue from non-UAE sources pays 0% tax.

**VAT on crypto**: UAE has 5% VAT but crypto transactions are generally exempt (crypto is not a good or service per UAE FTA guidance).

---

## 5. India 🇮🇳 — Harshest Globally

See full details in [india-crypto-law.md](india-crypto-law.md). Summary:

- **30% flat tax** on VDA (Virtual Digital Asset) income — highest globally
- **1% TDS** on every crypto sale/transfer
- **No loss set-off**: losses from crypto cannot offset gains from other income
- **No inter-asset loss set-off**: loss on ETH cannot offset gains on SOL
- **Staking/mining**: taxed as income
- **Gifts of crypto**: taxable in hands of recipient above ₹50,000

---

## 6. Brazil 🇧🇷

- **Capital gains**: progressive rate
  - Gains up to R$5M: 15%
  - R$5M–R$10M: 17.5%
  - R$10M–R$30M: 20%
  - Above R$30M: 22.5%
- **Monthly exemption**: gains from crypto sales up to R$35,000/month are **tax-exempt**
- **Offshore crypto**: since 2023, Brazilian residents must report foreign crypto holdings >R$6,000
- **Reporting**: Brazilian residents must declare crypto on annual income tax return (DIRPF)
- **RFB (Receita Federal)**: requires reporting of crypto transactions above R$30,000/month

---

## 7. DeFi-Specific Tax Issues

These apply globally and are often under-reported:

| Activity | Likely Tax Treatment |
|---|---|
| Liquidity pool deposits | Generally not taxable (varies) |
| LP token receipt | Not taxable in most jurisdictions |
| LP fee income | Taxable income |
| LP withdrawal with gains | Capital gain on exit (varies) |
| Yield farming rewards | Ordinary income when received |
| Token swaps on DEX | Capital gain/loss event (US, UK, India) |
| Cross-chain bridge | Varies; many treat as exchange (taxable) |
| Wrapping tokens (e.g., SOL→wSOL) | Usually not taxable if same underlying |
| Protocol governance tokens received | Income on receipt (US); varies elsewhere |
| NFT royalties received | Ordinary income |
| NFT sale | Capital gain (or ordinary income for creators) |

---

## 8. Tax Loss Harvesting

Many jurisdictions allow you to realize losses to offset gains:

**Best practices**:
- Track every transaction with cost basis (tools: Koinly, TokenTax, TaxBit, CoinTracker)
- In December, identify unrealized losses and consider selling before year-end
- US: No wash sale rule for crypto (yet) — you can immediately repurchase
- Germany: Hold losing positions past 1 year to avoid taxable loss crystallization impacting future gains

---

## 9. Key Tools for Crypto Tax Compliance

| Tool | Best For |
|---|---|
| [Koinly](https://koinly.io) | Individuals; Solana + DeFi support |
| [TaxBit](https://taxbit.com) | Enterprises, exchanges |
| [TokenTax](https://tokentax.co) | US-focused, DeFi |
| [CoinTracker](https://cointracker.io) | Multi-chain portfolio + tax |
| [Crypto.com Tax](https://crypto.com/tax) | Free basic tier |
| [Waltio](https://waltio.com) | France and EU focused |

---

## Further Reading

- [IRS Virtual Currency FAQ](https://www.irs.gov/businesses/small-businesses-self-employed/virtual-currencies)
- [IRAS Singapore Crypto Tax Guide](https://www.iras.gov.sg/taxes/individual-income-tax/basics-of-individual-income-tax/tax-residency-and-tax-rates/individual-income-tax-rates)
- [German BMF crypto guidance (2022)](https://www.bundesfinanzministerium.de/Content/DE/Downloads/BMF_Schreiben/Steuerarten/Einkommensteuer/2022-05-09-einzelfragen-zur-ertragsteuerrechtlichen-behandlung-von-kryptowaehrungen.pdf)
- → See [india-crypto-law.md](india-crypto-law.md) for India-specific detail
