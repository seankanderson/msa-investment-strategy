# Financial Decision Framework

**Status:** Active — living document
**Scope:** All large financial decisions — major purchases, real estate transactions, large position entries or exits, account rollovers or conversions, business investments, debt payoff or origination, gifting, and any decision that moves a meaningful percentage of net worth or annual income.

## Purpose

Before committing to any large financial decision, run it through this framework. The goal is not to produce a yes/no answer automatically — it is to force every major decision to answer the same three questions in writing before money moves. A decision that cannot produce clear answers to all three questions is not ready to be made.

This framework applies to personal decisions, family decisions, and client-facing analysis. AI agents evaluating a proposed decision should structure their analysis around these three questions and flag any question the proposal fails to answer.

## The Three Questions

Every large financial decision must be evaluated against all three questions. None can be skipped. A decision can be attractive on two dimensions and still be wrong because of the third.

### 1. What does this do to my liquidity?

Liquidity is the ability to meet obligations and seize opportunities without selling assets under duress. It is the first question because liquidity failures are how otherwise-sound plans die.

Answer in writing:

- How much cash or near-cash does this decision consume, immediately and over time?
- What does my accessible liquidity look like the day after this decision, and 12 months after? (Accessible means reachable without penalty, tax event, or forced sale.)
- Does this decision create new fixed obligations (payments, capital calls, margin requirements) that claim future liquidity?
- If an emergency or a major opportunity appeared six months from now, could I respond without unwinding this decision at a loss?
- Does this decision lock capital behind a penalty, surrender period, lockup, or illiquid market? For how long?

Warning signs: emergency reserves falling below target, reliance on selling volatile assets to cover known future expenses, new obligations that assume current income continues uninterrupted.

### 2. What does this do to my tax planning?

Every large decision has a tax shape — this year, over the next several years, and at the eventual exit or in the estate. Taxes are a controllable cost only when they are considered before the decision, not after.

Answer in writing:

- What is the immediate tax consequence — realized gains, ordinary income, penalties, recapture?
- Does this change my marginal bracket this year, or push income into a year where it is taxed worse (IRMAA thresholds, credit phase-outs, capital gains brackets)?
- Does this decision use or waste tax-advantaged space (IRA/Roth contribution room, conversion windows, 0% capital gains room, loss harvesting opportunities)?
- What is the tax character of future income or gains this decision creates — ordinary, qualified, tax-free, tax-deferred?
- How does this asset or obligation behave at exit and at death — basis step-up, required distributions, estate inclusion?
- Could timing this decision differently (splitting across tax years, waiting for long-term treatment, pairing with an offsetting loss) materially improve the outcome?

Warning signs: realizing large gains without checking bracket impact, converting or withdrawing from retirement accounts in a high-income year, placing tax-inefficient assets in taxable accounts when sheltered space exists.

### 3. What does this do to my future income?

Wealth exists to fund life. Every large decision either strengthens, weakens, or restructures the stream of future income that assets and work will produce.

Answer in writing:

- Does this decision add durable income (dividends, premium income, rent, interest, business cash flow) or remove it?
- Does it convert income-producing capital into non-producing assets (consumption, illiquid appreciation plays)? If so, what replaces that income?
- How does this affect retirement readiness — the date, the sustainable withdrawal amount, or the margin of safety?
- Does the income this creates survive stress — recession, rate changes, the loss of my ability to actively manage it?
- If I could no longer work or actively trade, does this decision make my family's income situation better or worse?
- What is the opportunity cost — what income would this capital produce in its next-best use?

Warning signs: trading durable income for speculative appreciation, decisions that only work if active management continues indefinitely, consumption financed by capital that was previously producing income.

## How to Use the Framework

1. **State the decision plainly** — one or two sentences: what is being done, how much capital is involved, and why now.
2. **Answer all three questions in writing** using the prompts above. Short, honest answers beat long, hedged ones.
3. **Assign each question a verdict:** Strengthens / Neutral / Weakens.
4. **Apply the decision rules below.**
5. **Record the decision** — including the verdicts and reasoning — so it can be reviewed later. For family-relevant decisions, log an entry in [wealth-management-notes.md](wealth-management-notes.md).

## Decision Rules

- **Any question that cannot be answered means the decision is not ready.** Go get the answer first.
- **Weakens on liquidity is a hard stop** unless the decision includes a specific, funded plan to restore reserves within a defined period. Liquidity damage compounds; do not rationalize it.
- **Weakens on two or more questions means no**, regardless of how attractive the upside looks. Revisit only if the decision can be restructured (smaller size, different timing, different account) so that at most one dimension weakens.
- **Weakens on one question requires a written offset** — a concrete reason the other two dimensions more than compensate, and a plan to manage the weakened one.
- **Strengthens or Neutral on all three is a green light** — proceed to normal execution discipline (sizing, entry criteria, and risk rules from the relevant strategy documents).

## Decision Record Template

Use this template for each decision evaluated:

```
### [YYYY-MM-DD] [Decision Title]
**Decision:** What is being done, amount, and timing.

**Liquidity:** [Strengthens / Neutral / Weakens]
Answer and reasoning.

**Tax planning:** [Strengthens / Neutral / Weakens]
Answer and reasoning.

**Future income:** [Strengthens / Neutral / Weakens]
Answer and reasoning.

**Verdict:** Proceed / Restructure / Decline / Not ready (missing answers)
**Offsets or conditions:** Required if any dimension weakens.
**Review date:** When to re-examine this decision.
```

## Relationship to Other Documents

- Position sizing, entry criteria, and trade mechanics live in the per-ticker strategy documents; this framework governs whether a large commitment should be made at all.
- Macro timing context comes from [macro-plumbing.md](macro-plumbing.md).
- Philosophy, standing principles, and family guidance live in [wealth-management-notes.md](wealth-management-notes.md); decisions evaluated here that carry family or legacy weight should also be journaled there.

## Extending This Framework

These three questions are the required floor, not the ceiling. Additional lenses (risk of ruin, complexity cost, emotional sustainability, estate impact) may be added as numbered questions over time. When a lens is added, update the Decision Rules and the template to include it, and note the date of the change here.

**Change log:**
- 2026-07-27 — Initial version: liquidity, tax planning, future income.
