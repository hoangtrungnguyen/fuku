# Research Report: Modern PFM Architecture (2024-2025 Trends)
**Date:** 2026-03-03
**Subject:** PFM architectural benchmarks and integration patterns in the age of AI.

---

## 1. Core Architectural Pillars

| Component | Standard (2025) | Why it's required |
| :--- | :--- | :--- |
| **Data Synchronization** | **Open Banking APIs** | Plaid (US), SaltEdge (EU/Global), Belvo (LatAm). Real-time data sync is the new baseline. |
| **Logic Layer** | **Microservices** | Scalability. Separating categorization, investment tracking, and alerts ensures stability. |
| **Data Storage** | **Dolt (Distributed SQL) / SQL** | Support for version-controlled financial records, easy "undo/redo" of bulk imports. |
| **Intelligence** | **LLM/NLP Layer** | Automated categorization and natural language queries ("How much did I spend at Starbucks last month?"). |

---

## 2. Open Banking Integration (The "Consolidation" Strategy)
Following the "Wallet Fatigue" study findings (65% want integration), our PFM should prioritize:
1.  **Plaid/SaltEdge/GoCardless:** These providers allow the user to connect their bank account once and have transactions flow in automatically.
2.  **PULL Strategy (Scalable):** Fetching data ONLY when needed or on a scheduled basis, rather than "pushing" thousands of records to an analysis engine constantly.
3.  **Encrypted Data Pipelines:** SOC 2, ISO 27001, and GDPR compliance are mandatory for handling bank credentials/metadata.

---

## 3. The "AI Finance Assistant" Architecture
Modern PFM systems (like **Maybe Finance** and **SuperAGI** benchmarks) are moving away from simple IF/THEN rules:
- **Natural Language Processing (NLP):** For parsing messy bank descriptions (e.g., `AMZN Mktp US*1234` -> "Amazon Marketplace").
- **LLM-Powered Summarization:** Creating weekly/monthly "Financial Stories" rather than just bar charts.
- **Predictive Analytics:** Using historical data to warn users *before* they overspend or if they have upcoming bills.

---

## 4. The "Local-First" Advantage
Architecture like **Actual Budget** uses **CRDTs (Conflict-free Replicated Data Types)** and **SQLite**:
- **Benefits:** Instant responsiveness, works offline, extreme privacy (data stays on-device).
- **Cons:** Synchronization between multiple devices (mobile + desktop) requires a metadata-only sync server.

---

## 5. Architectural Recommendations for fuku
- **Distributed Versioning:** Use **Dolt**'s branching (already integrated in fuku via `grava`) to allow users to "test" financial decisions (e.g., "What if I buy this car?") on a separate branch before merging back to the "Main" financial record.
- **Micro-Services for AI:** Keep the AI/LLM layer separate to ensure core transaction logging stays fast and available even if the AI service is slow/offline.
- **Serverless for Analytics:** Use serverless functions (e.g., Lambda) to process heavy financial reports only when requested, keeping the core PFM "lightweight."
