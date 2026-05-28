---
date: "2026-05-16"
time: "16:45"
generated_by: "Options Income Agent"
inputs_used:
  - context/trading-agent/output/macro-outlook.md (date: 2026-05-16)
  - context/trading-agent/output/value-stock-list.md (date: 2026-05-16)
modified_prompt: "Generate an options income trade list using the current macro regime and available candidate stocks. Focus on stocks with really good premium from short puts. Suggest an optimal strike and expiration for a diagonal put for a defined-risk trade."
data_source: "Finviz Elite (authenticated session, cookies validated May 16, 2026). IV and volatility data fetched via context/trading-agent/fetch-finviz.ps1."
---

# Options Income Trade List — May 16, 2026

Prepared by: Options Income Agent (AI-assisted)
Macro Input: Late Cycle / Early Stagflation — macro-outlook.md dated 2026-05-16
Candidate Source: value-stock-list.md dated 2026-05-16 (five-name ranked screen, two appendix watches)
Authentication: Finviz Elite confirmed (notice-newsletter = hidden elite)

All premium estimates are derived from Black-Scholes approximation using Finviz Elite IV data. Verify against the live options chain before execution. Bid/ask spreads may materially affect net credit on lower-priced underlyings (PFE in particular).

---

## 1. Market Regime Call and Confidence

**Regime: Late Cycle / Early Stagflation**
**Strategy Defaults: Bear**
**Confidence: Moderate-High**

The macro-outlook.md file (dated May 16, 2026) classifies the current environment as Late Cycle with an active stagflationary overlay. Per task-conventions.md, any ambiguous or mixed regime classification defaults to the Bear strategy set. The classification here is not ambiguous — it is explicitly stagflationary with multiple confirming signals.

Supporting evidence from macro-outlook.md:

- The 30-year Treasury yield is near a 19-year high. Rate-sensitive equity sectors are structurally disadvantaged.
- PPI surged +1.4% in April. Core inflation is re-accelerating while growth is decelerating simultaneously — the textbook stagflation configuration.
- The Iran conflict is an active supply-side oil shock. WTI was +4.23% on May 15 alone. This is not demand-driven and cannot be resolved by rate policy.
- Real wages have turned negative. Retail sales are contracting in real terms. Consumer capital depletion is underway.
- Market breadth is narrow. The S&P posted its worst single day since March on May 15. Leadership is concentrated in high-multiple AI names trading on 2028 earnings.

**Preferred sectors (per macro-outlook.md):** Energy, Consumer Defensive, Healthcare, Defense/Aerospace

**Avoided sectors:** Consumer Cyclical, Utilities, REITs, Basic Materials

**Bear regime strategy defaults activated:**
1. Undefined-Risk: Defensive Cash-Secured Put — sell OTM puts on highest-conviction High-comfort names in preferred sectors
2. Defined-Risk: Bear-Resilient Put Credit Spread — or, per modified prompt, a diagonal put structure that generates income from elevated IV while capping maximum loss

---

## 2. Candidate Stocks

Six candidates are evaluated. Five are ranked names from value-stock-list.md; BMY is an appendix watch. All candidates are in macro-preferred sectors.

| Rank | Ticker | Sector            | Price (May 15) | IV (Finviz Elite) | RSI (14) | Assignment Comfort | Est. Q2 2026 Earnings | Notes                                             |
| ---- | ------ | ----------------- | -------------- | ----------------- | -------- | ------------------ | --------------------- | ------------------------------------------------- |
| 1    | PFE    | Healthcare        | $25.33         | 26.69%            | 33.19    | Moderate           | Late July 2026        | Highest IV; oversold; dividend risk present       |
| 2    | COP    | Energy            | $122.41        | 23.95%            | 52.80    | Moderate           | Late July 2026        | Up 30.77% YTD; best balance sheet in E&P          |
| 3    | BMY    | Healthcare        | N/A (watch)    | 21.05%            | N/A      | High (est.)        | Late July 2026        | Appendix watch; data refresh needed               |
| 4    | CVX    | Energy            | $191.10        | 18.33%            | 54.03    | High               | Late August 2026      | Dividend Aristocrat; highest sector comfort       |
| 5    | MRK    | Healthcare        | $111.38        | 18.29%            | 42.54    | High               | Late July 2026        | Top-ranked value score (77/100)                   |
| 6    | LMT    | Defense/Aerospace | $516.01        | 17.51%            | 34.10    | High               | Late July 2026        | RSI approaching oversold; Golden Dome beneficiary |

**IV Premium Ranking (high to low, best candidates for short put premium selling):**
PFE (26.69%) > COP (23.95%) > BMY (21.05%) > CVX (18.33%) > MRK (18.29%) > LMT (17.51%)

**Earnings clearance note:** Finviz returned last quarter's earnings dates (January-February 2026). Q2 2026 earnings for all six names are expected in the July 22 through August 5 window based on historical reporting cadence. The Jul 18, 2026 expiration (the proposed short put leg on the diagonal) closes before Q2 earnings open for all six candidates. This clears the earnings risk check for undefined-risk structures with 30-45 DTE expirations through June 30, and for the Jul 18 short put leg of the diagonal specifically.

**Candidates excluded from trade specification:**
- BMY: Insufficient fresh fundamental data for options-specific sizing. Recommend pulling a dedicated Finviz data run before entering. IV is strong (21.05%) — watch for next cycle.
- LMT: IV is the lowest in the set at 17.51%, limiting premium appeal. The RSI 34.10 and defense sector tailwinds are constructive for equity or wheel accumulation but do not justify priority in a premium-focused run.

---

## 3. Recommended Undefined-Risk Setup

**Bear Regime Default: Defensive Cash-Secured Put**

The undefined-risk slot in a Bear regime goes to the highest-conviction High-comfort name in a preferred sector. Per the regime framework, undefined-risk structures in a declining tape require the advisor to be genuinely comfortable owning the underlying at the strike price if assigned. This rules out PFE and COP (both Moderate assignment comfort) despite their higher IV.

**Primary: CVX — Cash-Secured Put**

| Field                    | Value                                                            |
| ------------------------ | ---------------------------------------------------------------- |
| Ticker and sector        | CVX — Energy                                                     |
| Assignment comfort tier  | High                                                             |
| Next earnings date       | Late August 2026 (Q2 earnings; clears Jun 20 expiration)         |
| Trade structure          | Cash-Secured Put (undefined risk)                                |
| Strike                   | $182                                                             |
| Expiration               | Jun 20, 2026 (35 DTE)                                            |
| Delta at entry (est.)    | -0.25                                                            |
| Estimated premium        | $1.75-1.85 per share ($175-185 per contract)                     |
| Maximum loss             | $18,200 per contract (stock to zero, less premium received)      |
| Profit target            | Close at 50% of premium received ($0.88-0.93 per share)          |
| Hard stop / roll trigger | Roll down and out if stock crosses $185; do not chase below $175 |

**Rationale:** The $182 strike is approximately 5% OTM from the May 15 close of $191.10. At delta -0.25, there is roughly a 25% probability of assignment at expiration. The premium of $1.75-1.85 represents approximately 0.96% return on capital deployed ($18,200 cash secured) in 35 days — roughly 10% annualized. For a Dividend Aristocrat in the preferred Energy sector with a 3.62% base dividend yield, this is a disciplined entry. If assigned at $182, the total cost basis (net of premium) is approximately $180.15-180.25, a position that generates 3.96% dividend yield on cost basis plus covered call income thereafter.

Oil price risk is the primary threat. If the Iran conflict de-escalates materially, WTI could pull back sharply and take CVX with it. The $180-182 zone is approximately 6% below current price — a reasonable buffer for a swift headline-driven move. If CVX trades through $185 before expiration, roll the put down and out to keep delta management current.

**Account requirement:** CVX cash-secured puts require $18,200 per contract in cash or approved margin equivalent. This position is appropriate for Roth IRA accounts of $100,000 or larger at a 1-contract maximum. Do not allocate more than 18% of account capital to a single CSP position on any name.

**Secondary: MRK — Cash-Secured Put**

| Field                    | Value                                                       |
| ------------------------ | ----------------------------------------------------------- |
| Ticker and sector        | MRK — Healthcare                                            |
| Assignment comfort tier  | High                                                        |
| Next earnings date       | Late July 2026 (Q2 earnings; clears Jun 20 expiration)      |
| Trade structure          | Cash-Secured Put (undefined risk)                           |
| Strike                   | $107.50                                                     |
| Expiration               | Jun 20, 2026 (35 DTE)                                       |
| Delta at entry (est.)    | -0.29                                                       |
| Estimated premium        | $1.30-1.40 per share ($130-140 per contract)                |
| Maximum loss             | $10,750 per contract (stock to zero, less premium received) |
| Profit target            | Close at 50% of premium received ($0.65-0.70 per share)     |
| Hard stop / roll trigger | Roll if MRK crosses $110 to the downside intraday on volume |

MRK is the top-ranked value candidate (77/100) with High assignment comfort. At 11.6x forward P/E, assignment into MRK at $107.50 (net basis approximately $106.10-106.20 after premium) creates a position trading at approximately 11x forward earnings with a 2.98% dividend yield on cost and a $131.83 consensus analyst target. The IV at 18.29% is lower than PFE or COP, so premium is modest in dollar terms but reasonable for a name of this quality.

---

## 4. Recommended Defined-Risk Setup — Diagonal Put

**Modified Prompt Request:** Suggest an optimal strike and expiration for a diagonal put for a defined-risk trade.

A diagonal put spread sells a near-dated put at a higher strike and simultaneously buys a longer-dated put at a lower strike. The two legs differ in both strike and expiration. The short leg captures elevated near-term time decay (theta); the long leg caps the maximum downside loss and retains time value if the position goes against you. Net credit or small debit depends on the IV differential and strike placement.

The defined-risk slot goes to the highest-IV candidates regardless of assignment comfort tier, because the long put cap protects against large adverse moves. PFE is the primary choice at 26.69% IV; COP is secondary at 23.95% IV.

---

### Primary Diagonal: PFE — Jul 18 / Sep 19

**Rationale:** PFE carries the highest IV in the candidate set at 26.69% and is technically oversold at RSI 33.19. The elevated IV inflates both legs, but the near-dated short put benefits more from time decay acceleration. The defined-risk structure is appropriate here because PFE's assignment comfort is only Moderate — the dividend payout ratio at 126% introduces a non-trivial risk that a dividend cut could accelerate downside. The long put cap eliminates the tail risk.

| Field                       | Value                                                                                                                         |
| --------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| Ticker and sector           | PFE — Healthcare                                                                                                              |
| Assignment comfort tier     | Moderate (defined risk required; do not run naked puts on PFE in Bear regime)                                                 |
| Next earnings date          | Late July 2026 (clears Jul 18 short leg expiration)                                                                           |
| Trade structure             | Diagonal Put Spread                                                                                                           |
| Short leg                   | Sell Jul 18, 2026 $24 put                                                                                                     |
| Long leg                    | Buy Sep 19, 2026 $22 put                                                                                                      |
| Short leg DTE               | 63 days                                                                                                                       |
| Long leg DTE                | 126 days                                                                                                                      |
| Short leg delta (est.)      | -0.37                                                                                                                         |
| Long leg delta (est.)       | -0.21                                                                                                                         |
| Short leg est. premium      | $0.72-0.78 per share (credit received)                                                                                        |
| Long leg est. cost          | $0.56-0.62 per share (debit paid)                                                                                             |
| Estimated net credit        | $0.12-0.18 per share ($12-18 per contract)                                                                                    |
| Spread width                | $2.00 per share ($200 per contract)                                                                                           |
| Maximum loss                | $1.82-1.88 per share ($182-188 per contract)                                                                                  |
| Break-even at Jul 18 expiry | Approximately $23.85 (short strike minus net credit)                                                                          |
| Profit target               | Close entire position at 50% of max profit ($0.06-0.09 capture)                                                               |
| Hard stop / roll trigger    | If PFE drops below $23.50 before Jul 8, close the short leg. Let the long Sep put run as a standalone hedge or sell to close. |

**Delta note:** The $24 short put at -0.37 delta is intentionally aggressive given the user's emphasis on premium. It reflects the stock's proximity to the $24 level — PFE closed at $25.33, making $24 only $1.33 OTM. If a lower-risk entry is preferred (delta -0.25 to -0.28), use the $23/$21 diagonal instead:
- Sell Jul 18 $23 put, delta -0.26, est. $0.42-0.48 credit
- Buy Sep 19 $21 put, delta -0.16, est. $0.34-0.40 cost
- Net credit: $0.06-0.10 ($6-10 per contract), max loss $1.90-1.94

**Why the diagonal structure outperforms a plain vertical here:** In a standard put vertical (same expiration), the long put expires simultaneously with the short put, eliminating time value symmetrically. In a diagonal, the long Sep 19 put retains approximately 63 days of remaining time value at the Jul 18 short expiration. If PFE drops to $22 by Jul 18, the Sep put is approximately at the money with 63 DTE remaining — that residual value materially offsets the short put loss, creating a softer actual loss than the spread width implies.

**Position sizing:** The PFE diagonal requires no margin beyond the long put debit in a Roth IRA (since the long put fully covers the short put obligation at the short strike). Net capital at risk per contract: $182-188. This is appropriate for any account size. An account of $50,000 could run 5-10 contracts without exceeding 2-3% portfolio risk.

---

### Secondary Diagonal: COP — Jul 18 / Sep 19

**Rationale:** COP has the second-highest IV at 23.95% and generates significantly higher absolute premium than PFE due to its share price. The assignment comfort is Moderate (up 30.77% YTD), which supports the diagonal structure over a naked CSP.

| Field                       | Value                                                                                                                                       |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| Ticker and sector           | COP — Energy                                                                                                                                |
| Assignment comfort tier     | Moderate (defined risk preferred given YTD run and elevated valuation)                                                                      |
| Next earnings date          | Late July 2026 (clears Jul 18 short leg expiration)                                                                                         |
| Trade structure             | Diagonal Put Spread                                                                                                                         |
| Short leg                   | Sell Jul 18, 2026 $115 put                                                                                                                  |
| Long leg                    | Buy Sep 19, 2026 $105 put                                                                                                                   |
| Short leg DTE               | 63 days                                                                                                                                     |
| Long leg DTE                | 126 days                                                                                                                                    |
| Short leg delta (est.)      | -0.32                                                                                                                                       |
| Long leg delta (est.)       | -0.16                                                                                                                                       |
| Short leg est. premium      | $2.55-2.70 per share (credit received)                                                                                                      |
| Long leg est. cost          | $1.75-1.90 per share (debit paid)                                                                                                           |
| Estimated net credit        | $0.75-0.90 per share ($75-90 per contract)                                                                                                  |
| Spread width                | $10.00 per share ($1,000 per contract)                                                                                                      |
| Maximum loss                | $9.10-9.25 per share ($910-925 per contract)                                                                                                |
| Break-even at Jul 18 expiry | Approximately $114.18 (short strike minus net credit)                                                                                       |
| Profit target               | Close entire position at 50% of max profit ($37-45 capture per contract)                                                                    |
| Hard stop / roll trigger    | If COP drops below $112, close the short leg and evaluate rolling down 30-45 days. Oil price below $85 WTI is a macro reassessment trigger. |

**Sizing note:** At $910-925 max loss per contract, the COP diagonal requires more capital than the PFE diagonal. A $100,000 account running 3 contracts commits $2,730-2,775 in max loss capital — approximately 2.75% of account. This is the upper bound for a single defined-risk position in a Bear regime.

---

## 5. Position Sizing and Max Loss

The following sizing guidelines assume a self-directed Roth IRA. Adjust proportionally for taxable accounts or HSA structures.

| Trade                      | Structure               | Capital Required / Contract | Max Loss / Contract | % of $100K Account (1 contract) | Max Contracts at 2% Risk |
| -------------------------- | ----------------------- | --------------------------- | ------------------- | ------------------------------- | ------------------------ |
| CVX Jun 20 $182 CSP        | Undefined-risk (cash)   | $18,200 (cash secured)      | $18,200             | 18.2%                           | 1 (accounts $100K+)      |
| MRK Jun 20 $107.50 CSP     | Undefined-risk (cash)   | $10,750 (cash secured)      | $10,750             | 10.8%                           | 1-2 (accounts $50K+)     |
| PFE Jul/Sep $24/$22 diag   | Defined-risk (long put) | $185-190 (long put debit)   | $182-188            | 0.19%                           | 10 contracts             |
| COP Jul/Sep $115/$105 diag | Defined-risk (long put) | $915-925 (long put net)     | $910-925            | 0.92%                           | 2-3 contracts            |

**Total recommended portfolio allocation across all four positions (1 contract each):**
- Cash deployed (CSPs, capital held aside): $28,950 (CVX + MRK)
- Defined-risk exposure (diagonals): $1,095-1,115 in combined max loss
- Total portfolio capital touched: approximately 30% of a $100K account

This is within the conservative allocation standard for a Bear regime. The remaining 70% stays in cash or Treasury equivalents, consistent with the defensive posture the macro regime demands.

**ROTH IRA mechanics:** Cash-secured puts in a Roth require the full strike-price equivalent in settled cash. Margin is not available in most Roth IRA structures. The defined-risk diagonals are permitted in Roth IRAs because the long put fully covers the short put obligation — the broker sees this as a spread with defined risk. Confirm this with your custodian if using a non-standard broker.

---

## 6. Management Plan

### 6a. Profit-Taking Target

Close all positions at 50% of the maximum profit received. This applies to both the undefined-risk CSPs and the defined-risk diagonals.

| Position                       | Open Credit / Net Credit | 50% Close Target | Dollar Target per Contract            |
| ------------------------------ | ------------------------ | ---------------- | ------------------------------------- |
| CVX Jun 20 $182 CSP            | ~$1.80                   | ~$0.90 remaining | Close when put trades at $0.90        |
| MRK Jun 20 $107.50 CSP         | ~$1.35                   | ~$0.68 remaining | Close when put trades at $0.68        |
| PFE Jul/Sep $24/$22 diagonal   | ~$0.15 net credit        | Entire position  | Close spread for $0.06-0.08 net debit |
| COP Jul/Sep $115/$105 diagonal | ~$0.82 net credit        | Entire position  | Close spread for $0.40-0.42 net debit |

For the diagonals, 50% of max profit means the position has decayed to roughly half the original credit value. Close both legs simultaneously to avoid legging risk.

### 6b. Roll Trigger

Roll any short put that reaches 21 DTE without having hit the 50% profit target. Roll down and out: move the strike slightly lower and extend by 30 days. Never roll for a debit — if a credit roll is not available, close the position and wait for IV to reset.

- CVX: If not at 50% profit by Jun 6 (14 days before expiry), evaluate rolling to Jul 18 at the $178-180 strike for a credit.
- MRK: Same rule — evaluate rolling to Jul 18 at $105 if not at target by Jun 6.
- Diagonals: If the short put leg (Jul 18) approaches 21 DTE without full decay, do not roll the diagonal — close the short put at the market and decide independently whether to hold or close the long put based on current outlook.

### 6c. Stop Logic and Early Exit

**CVX CSP stop:** If CVX trades below $185 intraday on above-average volume, assess whether the break is oil-price-driven (roll — macro event, stock likely recovers) or company-specific (close — information asymmetry risk). Do not hold a losing CSP through an earnings report.

**MRK CSP stop:** If MRK breaks below $107 intraday (crossing the short strike), close the position. The thesis-break condition for MRK is EPS guidance cuts. A single earnings miss on normalized figures is a roll event; two consecutive misses are a close event.

**PFE diagonal stop:** If PFE breaks below $23.50 before Jul 8 (two weeks before short expiry), close the short $24 put and retain the Sep $22 put as a standalone hedge. The long put at that point has roughly $0.80-1.20 in time value — it becomes a directional trade on continued weakness. Close the long put if PFE stabilizes above $24 or reaches the $21 level.

**COP diagonal stop:** If COP breaks below $112 intraday, close the short $115 put. The Sep $105 put with 63+ days remaining is a valuable standalone position if oil-driven volatility is continuing. Evaluate separately. If the Iran conflict de-escalates materially and oil falls below $85 WTI, close the entire COP diagonal and step aside.

**Dividend cut trigger (PFE and MRK):** If either company announces a dividend cut, close all associated short puts immediately at the market. Do not wait for a better price. A dividend cut implies cash flow deterioration not priced into the options structure.

---

## 7. Monitoring Triggers

### Macro and Rate Events

| Trigger                                       | Signal Type         | Action                                                                        |
| --------------------------------------------- | ------------------- | ----------------------------------------------------------------------------- |
| FOMC meeting (June 2026)                      | Rate policy         | If hike signaled, reassess CVX and MRK CSP strikes downward; increase buffer  |
| VIX spikes above 25                           | Volatility regime   | Pause new entries; allow existing positions to benefit from IV decline        |
| VIX drops below 14                            | Volatility collapse | Take profits early; premium no longer compensates for risk                    |
| Iran ceasefire announcement (full resolution) | Oil sector macro    | Expect COP/CVX to drop 5-8% rapidly; close or roll COP diagonal immediately   |
| PPI print above +1.5% MoM                     | Stagflation deepens | Confirm Bear regime is intact; do not loosen strategy defaults                |
| 10-year Treasury above 5.5%                   | Rate shock          | Defense sector (LMT) benefits; growth names and leveraged balance sheets hurt |

### Company-Specific Triggers

| Ticker | Trigger                                             | Threshold Action                                                               |
| ------ | --------------------------------------------------- | ------------------------------------------------------------------------------ |
| CVX    | WTI crude below $85                                 | Roll CSP strike down to $175 or close; Iran ceasefire is primary catalyst risk |
| CVX    | Hess merger terms materially worsened               | Monitor; one-time event — do not exit unless FCF guidance changes              |
| MRK    | Q2 normalized EPS below $2.40                       | Close CSP; valuation thesis depends on $9.64 full-year consensus               |
| MRK    | Winrevair quarterly revenue below $400M             | Pipeline ramp concern; reduce strike floor to $100                             |
| PFE    | Dividend cut announcement                           | Close all PFE positions immediately at market                                  |
| PFE    | RSI drops below 28 (deep oversold)                  | Consider adding a second diagonal tranche at lower strikes                     |
| COP    | Qatar production restoration confirmed              | Positive; hold diagonal through expiry                                         |
| COP    | CEO or CFO large insider sell (non-option exercise) | Flag if size exceeds 50% of annual comp equivalent; evaluate exit              |
| LMT    | Golden Dome program voted down by Congress          | Removes long-term revenue driver; reassess if adding LMT                       |

### Earnings Windows

All positions specified in this document use expirations that clear Q2 2026 earnings (expected July 22 through August 5). No position should be open through an earnings event in an undefined-risk structure. Review this list approximately 14 days before the earliest expected earnings date (around July 8, 2026) and confirm all CSP expirations have been closed or rolled.

| Ticker | Est. Q2 2026 Earnings Window | Position Expiry                      | Status                                                |
| ------ | ---------------------------- | ------------------------------------ | ----------------------------------------------------- |
| CVX    | Late August 2026             | Jun 20, 2026                         | Clears by 8+ weeks                                    |
| MRK    | Late July 2026               | Jun 20, 2026                         | Clears by 4+ weeks                                    |
| PFE    | Late July 2026               | Jul 18, 2026 (short) / Sep 19 (long) | Short leg clears; long leg is past Q2 and clear of Q3 |
| COP    | Late July 2026               | Jul 18, 2026 (short) / Sep 19 (long) | Same as PFE — both legs clear                         |

If Q2 2026 earnings are confirmed earlier than July 22 for any name, adjust immediately.

---

*This output was generated on 2026-05-16 using authenticated Finviz Elite data via fetch-finviz.ps1. Premium estimates are Black-Scholes approximations based on the IV values retrieved. Verify all strikes and premiums against the live options chain before execution. This document is for advisor and AI agent use only and does not constitute a client recommendation.*
