# Synthetic Stock With Put Hedge — Trade Summary

## Objective
Get near stock-like upside exposure while capping downside to a predefined maximum loss.

## Structure (per 100 shares)
1. Buy 1 call (typically near-the-money)
2. Sell 1 put at the same strike/expiration as the call
3. Buy 1 lower-strike protective put (same expiration)

The buy call + sell put creates synthetic long stock. The additional long put defines the worst-case loss.

## Why Use It
- Replicates directional long exposure without purchasing shares outright.
- Converts open-ended downside into a known risk limit.
- Improves risk efficiency: position notional can be large while true max loss remains controlled.
- Reduces tail-risk damage from sharp gap-down moves versus unhedged short-put exposure.

## Why Sell the Put
- Selling the put (paired with the long call) is what creates synthetic long stock behavior.
- The short-put premium helps offset the cost of the long call.
- Compared with buying both a call and a put, this structure reduces premium drag when the goal is bullish directional exposure rather than a volatility bet.

## Tradeoff
- Selling the put introduces downside obligation if the stock falls.
- The added protective long put is what converts that obligation into defined risk.
- Net result: you give up some simplicity in exchange for stock-like upside participation with a capped worst-case loss.

## Payoff Profile
- Upside: similar to long stock above the synthetic strike (subject to net debit/credit and option pricing effects).
- Downside: capped below the protective put strike.
- Max loss: approximately strike width between short put and long put, adjusted for net entry cost.

## Best Conditions
- Bullish thesis with moderate-to-strong conviction.
- Elevated enough implied volatility to support short-put premium.
- Expectation of gradual upside or stable trend rather than short-term noise trading.

## Weak Conditions
- Sideways/choppy price action where hedge cost can drag returns.
- Very low implied volatility where short-put premium is thin.
- Very short-term/scalping time horizon.

## Risk and Management Notes
- Main risk shifts from unlimited downside to defined spread risk.
- Monitor assignment risk on the short put near expiration/dividends.
- Predefine exit triggers (profit target, time stop, thesis invalidation).
- Position size by max loss, not notional exposure.

## Bottom Line
This is a bullish, risk-defined alternative to owning stock or selling naked puts: you keep most of the upside behavior while explicitly limiting downside.
