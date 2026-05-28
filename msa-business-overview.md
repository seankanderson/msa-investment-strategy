---
copyright: "Copyright 2026 Main Street Advisors LTD. All rights reserved."
modification_policy: "Do not modify this file unless explicitly instructed to do so by the user."
---

# MSA Business Process Flow
## Internal Reference — Retirement Preparation Service

> **Purpose:** This document captures the end-to-end business process for delivering the Retirement Preparation service. It is intended for internal use to guide platform development, compliance requirements, staff procedures, and the design of automated workflows.

---

## 1. Philosophy and Positioning

### Service philosophy
- MSA is a **fee-only, fiduciary advisory firm**. We do not sell products, manage accounts, execute trades, or hold client funds.
- The client is in the driver's seat at all times. Our role is to educate, analyze, and equip — not to act on their behalf.
- Retirement planning is a **wealth-building problem**, not a savings problem. The core mental shift we facilitate: stop thinking of retirement savings as a number to spend down; instead build assets that generate income indefinitely.
- Two phases must be addressed for every client:
  1. **Accumulation phase** — saving, investing, and growing wealth during working years
  2. **Distribution phase** — converting accumulated wealth into reliable income in retirement
- Fees are flat-rate. We do not charge percentage-of-assets. We do not create ongoing dependencies to generate recurring billing. The initial plan is intended to stand on its own and support long-term autonomous action.

### Fit assessment principle
- If a client's profile makes it clear that MSA is not the right fit for their situation (complexity beyond scope, needs that require a different type of advisor, etc.), the advisor communicates this **before the consultation meeting and before any fee is charged**.
- This must be documented in the platform and a message sent to the client through the messaging system with a clear explanation and, where possible, a referral direction.


### Strategy focus
We seek to inform clients about the possibility of selling option proemium to grow self-directed retirement accounts and to derive incomce in retirement from those accounts, often with a focus on deriving income from ROTH IRAs. The main strategy is kept simple with a focus on selling short puts for stable, proven (often dividend paying) companies that have a possible swing aspect to them. The short put benefits from the market overpricing volatility and the protection afforded by the premium if assigned which can typically be rolled into a wheel strategy (selling calls) though this is avoided. For more savvy clients or thoise that are more advanced we will look at vertical put spreads where an ATM put is sold and a cheaper OTM put is bought. 

Sometimes these strategies are developed in the context of swing trades of solid companies that are currently artificially depressed or being punished by the market. Think 2023 BTI or 2026 MSFT. The thesis is that we sell premium on these stocks as a way to make money and learn thier price action and business with an eye toward possibly going long on the stock to realize the full gain on a swing. Think 2024-2025 INTC.

---

## 2. Client Journey — Step-by-Step Process

### Step 01 — Account Creation
- Client signs up on the platform.
- No credit card or commitment required at signup.
- Account creation triggers:
  - Welcome email / onboarding message via platform messaging
  - Dashboard becomes accessible
  - Investment Profile questionnaire becomes available (incomplete state)
- **Platform dev note:** No payment information collected at this stage.

---

### Step 02 — Investment Profile Questionnaire
- Client completes a structured questionnaire covering:
  - Current financial picture (accounts, assets, debts, income, expenses)
  - Retirement goals and timeline
  - Risk tolerance
  - Social Security expectations
  - Concerns and open questions
- Profile saves progress incrementally; client can return and continue at any time.
- **Client guidance (shown in UI):** Take time to be thorough. Some fields may require digging up account statements or historical documents. The quality of the plan is directly tied to the completeness of the profile.
- Upon submission/completion, profile status changes to "Ready for Review."
- **Platform dev note:** Advisor is notified (in-platform notification or email) when a profile reaches "Ready for Review" status.

---

### Step 03 — Advisor Profile Review and Fit Assessment
- Advisor reviews the completed investment profile **before** scheduling is confirmed.
- **Fit assessment:** Advisor determines whether MSA can serve this client appropriately.
  - If **fit confirmed:** Advisor approves scheduling. Client is notified and prompted to book a meeting slot.
  - If **not a fit:** Advisor sends a message through the platform explaining the situation before any fee is charged. No consultation is scheduled. Document reason internally.
- **Platform dev note:** Build a simple advisor-facing workflow state: `Profile Received → Under Review → Fit Confirmed / Not a Fit`. Messaging to client triggered from this state transition.

---

### Step 04 — Consultation Scheduling
- Client selects a meeting time from available slots.
- Meeting format options: **in-person** or **virtual (video call)**.
- Consultation duration: **60 minutes**.
- **Payment collection:** Consultation fee is collected at the time of booking (or at confirmation — TBD). No fee is charged before fit assessment is complete (see Step 03).
- **Disclosures and signoffs required at booking:**
  - [ ] MSA Engagement Agreement / Terms of Service
  - [ ] Fiduciary Disclosure — client acknowledges MSA acts in a fiduciary capacity
  - [ ] Scope of Services Disclosure — confirms MSA does not manage accounts, hold funds, or execute trades
  - [ ] Privacy Policy acknowledgment
  - [ ] Consent to record meeting (for virtual meetings; see Recording Policy below)
- **Platform dev note:** All disclosures must be digitally acknowledged and timestamped. Store signoff record against client account. These must be retrievable for compliance purposes.

---

### Step 05 — Initial Consultation (60 minutes)
- Advisor and client meet (in-person or virtually).
- Advisor has reviewed the investment profile in advance.
- Meeting focuses on:
  - Confirming and clarifying profile details
  - Walking through the advisor's initial observations
  - Discussing both the accumulation phase and distribution phase picture
  - Aligning on goals and priorities
  - Answering client questions
- At this stage the advisor does not deliver a final written plan — that comes after the meeting.

#### Recording Policy — Virtual Meetings
- Virtual meetings **may be recorded** with client consent (collected at booking — see Step 04).
- After the meeting, an **AI-generated summary** of the recording is produced. The summary covers:
  - Key topics discussed
  - Decisions or directions agreed upon
  - Open items or questions raised
  - Any changes to the profile noted during the call
- The AI summary is delivered to the client **as a message in the platform messaging system** within 24 hours of the meeting.
- The summary also goes into the advisor's internal notes for that client.
- **Platform dev note:** Integrate with a transcription/summarization service (e.g., Azure AI Speech + OpenAI summarization, or a meeting platform with native AI summary export). Trigger summary delivery as an automated platform message from the advisor's account. Raw recording storage and retention policy TBD (compliance review needed).

#### Recording Policy — In-Person Meetings
- In-person meetings are not recorded by default.
- Advisor manually creates meeting notes after the session.
- A written summary of the meeting (manually composed or AI-assisted from notes) is sent to the client via the platform messaging system within 24 hours.
- **Platform dev note:** Provide advisor-facing UI for entering and submitting post-meeting notes, with an option to generate a formatted summary message to send to the client.

---

### Step 06 — Plan Development (Post-Consultation)
- Advisor develops the written **Retirement Readiness Plan** based on the investment profile and consultation.
- Plan components:
  - Current financial picture assessment
  - Retirement projection (based on current trajectory)
  - Gap analysis
  - Phase 1 recommendations (accumulation): account structuring, contribution strategies, investment allocation direction, savings priorities
  - Phase 2 recommendations (distribution): income generation strategy, withdrawal sequencing, Social Security optimization, risk management in retirement
  - What to study / learn (educational direction specific to the client's gaps)
  - Action checklist — prioritized, sequenced steps the client carries out themselves
- The plan is the **pre-flight checklist and flight plan**: everything the client needs to get in the air and stay there.
- Turnaround target: TBD (suggest 5–7 business days from consultation).

---

### Step 07 — Plan Delivery
- Completed plan is uploaded to the client's dashboard.
- Client is notified via platform message that their plan is ready.
- Advisor sends a brief cover message through the platform messaging system summarizing the plan and highlighting the top 3–5 priority actions.
- **Platform dev note:** Plan document should be downloadable (PDF) and viewable in-platform. Version the document if future revisions are made.

---

## 3. Ongoing Support Model

### Platform Messaging — Always Free
- Clients can message their advisor through the platform at any time for:
  - General questions
  - Clarifications on plan items
  - Updates on their situation
  - Quick sanity checks
- This is provided at **no charge**, indefinitely.
- Advisor responds on the platform. All communication is logged and stored in the client record.
- **Platform dev note:** Build a threaded messaging interface accessible from the client dashboard and the advisor dashboard. Notifications for new messages on both sides.

### Follow-Up Consultations — Billed in 15-Minute Increments
- Available when a situation calls for a deeper review:
  - Major life change (job loss, inheritance, divorce, health event)
  - Significant market shift requiring plan reassessment
  - Client wants to revisit and revise the plan meaningfully
- Billed **only for time used**, in **15-minute increments**.
- Client books a follow-up session through the platform.
- **Payment:** Charged at the time of booking based on estimated duration, or charged post-session based on actual time (TBD — billing model to confirm).
- **Disclosures:** Same engagement and scope disclosures apply. If this is a first follow-up since original signoff, confirm disclosures are still current.
- **Platform dev note:** Follow-up booking flow should allow the client to select a duration estimate (30 min, 45 min, 60 min, etc.) and display the cost per increment. Timer-based billing post-session is an alternative but adds complexity.

---

## 4. Fee Schedule Reference

| Service                                    | Fee                      |
| ------------------------------------------ | ------------------------ |
| Initial 60-min consultation + written plan | TBD (flat rate)          |
| Follow-up consultations                    | TBD per 15-min increment |
| Platform messaging                         | Free (always)            |
| Account creation                           | Free                     |

> **Billing notes:** All fees are flat-rate. No percentage-of-assets. No hidden costs. The firm does not benefit from recommending any particular financial product, account type, or institution.

---

## 5. Compliance and Regulatory Considerations

> ⚠️ **These items require legal/compliance review before platform implementation.**

- [ ] Fiduciary duty documentation standards — what must be retained and for how long
- [ ] Disclosure signoff storage — format, retention period, auditability
- [ ] State registration requirements — advisor licensing by state for virtual clients
- [ ] Recording consent laws — vary by state (one-party vs. two-party consent); ensure consent flow covers all applicable states
- [ ] AI-generated meeting summaries — review for accuracy before delivery? Or auto-deliver with disclaimer?
- [ ] Plan document retention — how long are client plans stored after engagement ends
- [ ] Data security requirements for client financial information
- [ ] Refund policy — define and document in terms of service

---

## 6. Platform Feature Checklist (Derived from Business Flow)

| Feature                                                                | Status | Notes                           |
| ---------------------------------------------------------------------- | ------ | ------------------------------- |
| Client account creation                                                | —      | No payment at signup            |
| Investment profile questionnaire (multi-step, saveable)                | —      |                                 |
| Profile completion status tracking                                     | —      |                                 |
| Advisor notification on profile ready                                  | —      |                                 |
| Advisor fit assessment workflow (states: reviewing / fit / not a fit)  | —      |                                 |
| Automated "not a fit" message to client                                | —      |                                 |
| Disclosure + signoff flow at booking                                   | —      | Timestamped, stored per client  |
| Payment collection at booking                                          | —      | Billing model TBD               |
| Meeting scheduling (virtual + in-person slots)                         | —      |                                 |
| Virtual meeting integration (video)                                    | —      |                                 |
| AI meeting summary generation + delivery as platform message           | —      | Transcription service TBD       |
| Advisor post-meeting notes UI (in-person)                              | —      |                                 |
| Plan document upload + versioning                                      | —      | PDF download + in-platform view |
| Plan delivery notification                                             | —      |                                 |
| Client–advisor threaded messaging                                      | —      | Free, always on                 |
| Follow-up consultation booking + billing                               | —      | 15-min increment billing        |
| Advisor dashboard (client list, profile status, messages, plan status) | —      |                                 |
| Client dashboard (profile, plan, messages, meeting history)            | —      |                                 |

---

## 7. Ideas

### Multi-Practice Support (Under the MSA Brand)

**Concept:** Allow other advisory practice founders to operate their own practices within the MSA platform — under the MSA brand umbrella. There is no custom domain, external branding, or white-label skin. The platform looks and feels like MSA throughout. The differentiation is at the **practice level**: different founders, different advisors, different "About" content, and isolated client/advisor data per practice.

Think of it less like white-labeling and more like how a law firm has multiple partners each running their own book of clients under the same firm name.

**Why this is worth exploring:**
- The platform tooling (questionnaire engine, plan delivery, messaging, meeting scheduling, billing) is generically useful to any fiduciary advisory practice operating in the same model.
- Other practice founders who align with the MSA philosophy could operate under the MSA brand, expanding reach without MSA needing to hire all the advisors directly.
- Low marginal cost to onboard a new practice once the data isolation layer is in place.

**What "practice-level" means in practice — known so far:**
- Each practice has its own **Founder** (the practice owner / principal advisor)
- Each practice has its own **About page** content — founder bio, practice description, who they serve
- Each practice has its own roster of **advisors**
- Clients belong to a specific practice and interact only with advisors in that practice
- Plans, messages, documents, and billing records are scoped to the practice — no cross-practice data access

**What stays the same across all practices:**
- The MSA brand, visual design, and platform UI
- The core service workflow (profile → consultation → plan → ongoing support)
- Platform-level terms, fiduciary standards, and compliance framework
- The fee structure model (flat-rate, no AUM fees) — this may be a condition of operating under the MSA brand

**Still to define:**
- [ ] Exactly what content is practice-specific vs. platform-wide (e.g., does each practice get its own Services page content, or is that shared?)
- [ ] How are practice founders onboarded and vetted? Who approves them?
- [ ] What is the fee/revenue arrangement between MSA and practice founders?
- [ ] Do practice founders set their own consultation fees, or does MSA set a platform-wide fee schedule?
- [ ] How does billing work — does MSA collect and pay out to practice founders, or does each practice handle their own billing?
- [ ] Compliance boundary — practice founder is responsible for their own advisor licensing; platform provides tooling only
- [ ] How does a client "find" or get directed to a specific practice? (e.g., direct link, practice-specific signup URL path like `/join/practice-name`, or a practice directory on the platform)

**Platform dev note:**
- Multi-tenancy is still required at the data layer — every client, advisor, plan, message, and document must carry a `practice_id`
- Auth roles needed: `platform_admin`, `practice_founder`, `advisor`, `client`
- Practice founders need an admin view scoped to their own practice (their advisors, their clients, their plans, their billing)
- About/founder page content should be configurable per practice (stored in a practice profile, rendered into a shared About page template)
- No subdomain routing or custom domain/DNS complexity needed at this stage

