# Epics Overview: fuku PFM System
**Date:** 2026-03-03
**Subject:** Detailed breakdown of high-level development phases (Epics).

---

## 🏛️ Epic 1: Month 1 - Foundation & Agent Core
**Grava ID:** `grava-982b`
**Priority:** High
**Setup Guide:** [Local Machine Setup (Phase 1)](./local_machine_setup.md)

### Description
Establish the "Source of Truth" for **local-first personal use** by setting up a plain-text Beancount ledger within an Obsidian vault on the local machine. Create the initial "Agent Skills" by bridging ClawBot to the local machine's CLI.

### Key Tasks
- [ ] Initialize `main.beancount` in Obsidian vault.
- [ ] Configure `beancount-cli` for JSON-formatted output.
- [ ] Bridge ClawBot (Telegram) to the host machine's CLI.
- [ ] Implement `bean-check` validation hook for agent entries.

---

## 🔗 Epic 2: Month 2 - External Integrations & Consolidation
**Grava ID:** `grava-77bd`
**Priority:** Medium

### Description
Solve "Wallet Fatigue" by consolidating data from Todoist, Google Calendar, and basic Bank CSV imports. Transition the system from manual ledger management to an automated data pipeline.

### Key Tasks
- [ ] Develop Python script for Todoist → Beancount task ingestion.
- [ ] Develop Python script for Google Calendar → Beancount bill reminders.
- [ ] Create flexible CSV mapping configurations for primary bank accounts.
- [ ] Setup Obsidian dashboards to visualize combined data (Tasks + Spend).

---

## 🧠 Epic 3: Month 3 - Intelligence & Financial OS
**Grava ID:** `grava-9ecf`
**Priority:** Low

### Description
Enhance the system with AI-driven intelligence. Move from simple data recording to proactive financial advice, forecasting, and comprehensive asset management.

### Key Tasks
- [ ] Deploy LLM skill for natural language transaction categorization.
- [ ] Build a "Balance Forecasting" engine based on historical habit data.
- [ ] Implement Investment/Lot tracking for stocks and crypto.
- [ ] Perform a full security/privacy audit of API key storage and ledger encryption.

---

## 🗺️ Roadmap Reference
For the chronological timeline and success metrics, see the **[3-Month Roadmap](./roadmap_3_months.md)**.
