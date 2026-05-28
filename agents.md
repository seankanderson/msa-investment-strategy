---
copyright: "Copyright 2026 Main Street Advisors LTD. All rights reserved."
modification_policy: "Do not modify this file unless explicitly instructed to do so by the user."
---

# Main Street Advisors — AI Agent Context

## About Main Street Advisors (MSA)

Main Street Advisors (MSA) is a fee-only, fiduciary registered investment advisory firm focused on retirement preparation. MSA does not manage accounts, execute trades, or hold client funds. The firm's role is to educate, analyze, and equip clients to take autonomous action in building and preserving retirement wealth.

MSA's core service delivers a written Retirement Readiness Plan covering both the **accumulation phase** (growing wealth during working years) and the **distribution phase** (converting assets into sustainable retirement income).

### Core Investment Strategies

MSA specializes in options-based income strategies for self-directed retirement accounts, with a focus on:

- **Selling short puts** on stable, dividend-paying companies with swing potential — capturing overpriced volatility premium and gaining downside protection via assignment into a wheel strategy
- **Vertical put spreads** (ATM short put / OTM long put) for more advanced clients seeking defined-risk premium selling
- **Swing trade thesis overlays** — identifying fundamentally sound companies that are temporarily punished by the market (e.g., BTI in 2023, MSFT in 2026, INTC in 2024–2025) and using options to earn income while building conviction toward a potential long position
- Primary account focus: **ROTH IRAs** and other self-directed retirement accounts, closing trades once 50% of max profit is realized

---

## About This Project

This project contains **investment strategy and analysis documents written as Markdown files**. These documents serve as the primary knowledge base for MSA's AI-powered stock and trade analysis.

### Purpose

Documents in this project are organized **per stock ticker**. Each ticker has two files: an advisor-authored analysis and notes file (`{TICKER}.md`) and an AI-generated standardized strategy document (`{TICKER}-strategy.md`). See the Two-File Workflow section for details.

Each Markdown file in this project captures a specific investment strategy, trade thesis, or analytical framework used or considered by MSA advisors. These files are structured to be:

- **Machine-readable** — ingested by MSA's AI analysis pipeline to power trade screening, thesis evaluation, and client plan recommendations
- **Human-readable** — reviewed and maintained by advisors as living strategy documents
- **Version-controlled** — tracked over time so strategy evolution is auditable

### How AI Uses These Files

MSA's AI analysis layer reads these Markdown strategy documents to:

1. Evaluate current market conditions against documented strategy criteria
2. Screen for stocks and options setups that match active theses
3. Support advisor-facing analysis and client plan generation
4. Surface relevant strategy context when analyzing specific tickers or sectors

### Document Conventions

Strategy files in this project should include:

- **Thesis summary** — the core investment idea in plain language
- **Entry criteria** — what conditions trigger consideration of a position
- **Strategy mechanics** — the specific options or equity structure used. This section must be detailed and actionable. Structure it as follows:
  - Open with a one- or two-sentence overall approach statement that captures the governing philosophy (e.g., "non-heroic, cash-flow-first — get paid to wait while the thesis resolves")
  - Document each distinct strategy as a numbered, named subsection (e.g., "Strategy 1 — Long-Dated Cash-Secured Put Ladder (Foundation)"). For each strategy include:
    - **What you do** — specific mechanics: instrument type, duration (DTE or months), strike selection (delta target or % OTM), and cadence
    - **Why this works** — the market condition or structural edge that makes this strategy effective for this ticker
    - **When it activates** — the trigger or prerequisite condition (e.g., "only if assigned from Strategy 1")
    - **Rules or mindset** — any discipline rules, size constraints, or framing the advisor should internalize
    - **Goal** — the intended outcome of running this strategy
  - Close the section with a combined scenario table mapping market conditions to the active strategy, and a brief position sizing note
- **Risk parameters** — max loss, roll rules, exit conditions
- **Target names or sectors** — tickers or categories this strategy applies to
- **Status** — active, under review, retired

**Formatting rules:**
- Do not use emojis anywhere in strategy documents
- Use plain text to convey all information

### Two-File Workflow

Each ticker follows a two-file pattern:

1. **`{TICKER}.md`** — The advisor-authored input document. Contains raw analysis, notes, trade observations, and unstructured thinking about the stock. Named by ticker (e.g., `PFE.md`). This is the source material the AI agent reads.

2. **`{TICKER}-strategy.md`** — The AI-generated output document. A focused, standardized strategy document produced by the agent from the input file, conforming to the Document Conventions above (e.g., `PFE-strategy.md`).

When asked to create or update a strategy document, the agent reads the corresponding `{TICKER}.md` input file and rewrites all analysis and strategy details into the standardized `{TICKER}-strategy.md` format. No information from the input file should be lost — all strategies, mechanics, risk rules, and thesis details must be preserved and restructured into the appropriate sections.

Each time a file is built create/rewrite very short summary document (tickers.md) of all the covered tickers in this project with links to all the files.

---

## Audience

These files are written for consumption by both human advisors and AI agents operating within the MSA platform. Write strategies clearly and completely — assume the AI reader has no prior context beyond what is in the file.
