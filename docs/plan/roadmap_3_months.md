# 3-Month Implementation Roadmap: fuku PFM System
**Date:** 2026-03-03
**Subject:** Strategic rollout plan for the Obsidian/Agent-led Personal Finance Management system.
**Detailed Epics:** [See Epics Overview](./epics_overview.md)

---

## 🗓️ Month 1: Foundation & Agent Core
**Objective:** Establishing the "Source of Truth" and the primary interface for your custom agent.

- **M1.1: Core Ledger Setup:** Initialize a Beancount ledger within the Obsidian vault and install the "Personal Finance" plugin for visualization.
- **M1.2: Agent CLI Skills:** Configure `beancount-cli` and bridge it to **ClawBot** (Telegram). Ensure the agent can read/write using structured JSON.
- **M1.3: Secure Shell Commands:** Define safe execution boundaries for ClawBot to run financial commands without compromising the host system.
- **M1.4: Validation Layer:** Implement `bean-check` or `hledger check` as a mandatory pre-step for any agent-initiated transaction.

---

## 🗓️ Month 2: The "Consolidation" Phase
**Objective:** Solving "Wallet Fatigue" by pulling data from Todoist, Google Calendar, and Banks.

- **M2.1: Todoist Task Sync:** Build a Python automation to fetch "Personal" tasks from Todoist and suggest them as potential expenses to the agent.
- **M2.2: Google Calendar Integration:** Map recurring bill due dates from GCal to Beancount `periodic` transactions or reminders.
- **M2.3: Bank Data Pipeline:** Implement a flexible CSV importer or Plaid/SaltEdge integration for automated transaction fetching.
- **M2.4: Federated Dashboard:** Enhance the Obsidian UI to aggregate status from all three sources (Todoist vs Calendar vs Actual Spend).

---

## 🗓️ Month 3: Intelligence & "Financial OS"
**Objective:** Moving from data entry to proactive financial advice and high-fidelity reporting.

- **M3.1: AI Auto-Categorization:** Deploy an LLM-based categorization skill for ClawBot to clean up messy bank descriptions (e.g., `AMZN*123` -> `Expenses:General:Amazon`).
- **M3.2: Forecasting & Alerting:** Build simple logic for "Balance Forecasting" (predicting balance at month-end based on GCal bills and habit-data).
- **M3.3: Portfolio & Asset Tracking:** Extend the ledger to track non-cash assets (Investments, Real Estate) using Beancount's powerful "Lot" tracking.
- **M3.4: Privacy & Security Audit:** Implement ISO 27001-inspired security patterns for handling API keys (Todoist/GCal) and encryption-at-rest for the ledger.

---

## 🎯 Success Metrics (End of Month 3)
1. **Consolidation:** 100% of financial events (Bills, Spend, Tasks) visible in **Obsidian**.
2. **Speed:** Average time for the agent to log a transaction via **Telegram** < 5 seconds.
3. **Accuracy:** 0 manual entry errors due to strict Beancount balancing.
