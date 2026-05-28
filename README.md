---
copyright: "Copyright 2026 Main Street Advisors LTD. All rights reserved."
modification_policy: "Do not modify this file unless explicitly instructed to do so by the user."
---

# MSA Investment Strategy Knowledge Base

This project is the strategy and analysis knowledge base for Main Street Advisors (MSA). It contains advisor-authored analysis notes and AI-generated standardized strategy documents for each covered ticker. These files power MSA's AI analysis pipeline and serve as living reference documents for advisor use.

---

## Key Documents

| Document                                             | Purpose                                                                                    |
| ---------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| [tickers.md](tickers.md)                             | Index of all covered tickers with links to both files for each                             |
| [primer.md](primer.md)                               | Context primer to paste into a browser AI before a stock analysis session                  |
| [agents.md](agents.md)                               | Master AI context document — project conventions, document structure, and formatting rules |
| [msa-business-overview.md](msa-business-overview.md) | MSA business process overview                                                              |
| [macro-plumbing.md](macro-plumbing.md)               | Macro intelligence framework — tracking structural regulatory changes, liquidity signals, and institutional positioning before they price in |

---

## How to Research a New Ticker

This is the standard workflow for turning a stock idea into a strategy document in this project.

**Step 1 — Set up your browser AI session**

Open [primer.md](primer.md) and copy the full contents. Paste it into a browser-based AI (Microsoft Copilot, ChatGPT, etc.) as the opening message of a new session. This loads the AI with your identity as an MSA advisor, the core strategy framework, and instructions on what you need from the analysis.

**Step 2 — Add your ticker and notes**

At the bottom of the primer — under the "Ticker and Context for This Session" heading — add your ticker symbol and any observations, questions, or thesis fragments you already have. Paste the full combined text into the browser AI and let it analyze the stock through the MSA lens.

**Step 3 — Capture the output**

Take the analysis the browser AI produces and save it as a new Markdown file in this project named `{TICKER}.md` (e.g., `INTC.md`). This becomes your advisor-authored input document. You can add to it, edit it, or annotate it freely — it is your raw working file.

**Step 4 — Generate the strategy document**

Open this project in VS Code and ask the Copilot agent:

> "Build a strategy document for {TICKER}."

The agent will read your `{TICKER}.md` file and produce a standardized `{TICKER}-strategy.md` following the document conventions in [agents.md](agents.md). It will also update [tickers.md](tickers.md) to include the new ticker.

---

## Project Conventions

- Each ticker has two files: `{TICKER}.md` (your raw notes) and `{TICKER}-strategy.md` (the AI-generated standardized output)
- Strategy documents follow a fixed structure: Thesis Summary, Entry Criteria, Strategy Mechanics, Risk Parameters, Key Upside Layers, Key Risks, Target Ticker, Status
- No emojis anywhere in strategy documents
- See [agents.md](agents.md) for the full document convention reference

---

## Intellectual Property

&copy; 2026 Main Street Advisors LTD. All rights reserved.

The contents of this repository — including all strategy documents, analysis files, document conventions, workflow frameworks, and supporting materials — are the proprietary intellectual property of Main Street Advisors LTD. These materials are confidential and intended solely for internal advisor use within the MSA platform.

**No part of this repository may be reproduced, distributed, transmitted, published, or used outside of the MSA platform without the express written permission of Main Street Advisors LTD.**

This includes but is not limited to:
- Investment strategy documents and analysis files
- Document templates, formatting conventions, and structural frameworks
- AI agent context files and prompt materials
- Client-facing plan content derived from these documents

Unauthorized use, reproduction, or distribution of these materials may constitute a violation of applicable intellectual property law.
