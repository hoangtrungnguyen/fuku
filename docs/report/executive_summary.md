# Executive Summary: Personal Finance Management Research (2024-2025)
**Project:** fuku - PFM System Research
**Date:** 2026-03-03
**Prepared by:** Antigravity (AI Research Agent)

---

## 1. Overview
This research explores the current landscape of Personal Finance Management (PFM) systems from GitHub, academia, architecture, and industry perspectives. The overarching goal is to define a "state-of-the-art" PFM for *fuku*.

## 2. Key Synthesis of Findings

### A. The "Consolidation" Opportunity (The 91% Factor)
Research (DECTA, 2025) shows **91% of users** would consolidate into a single app if it had integrated features. *fuku*'s USP should be as a **Federated Financial Hub**, pulling data from multiple banks into one cohesive, version-controlled view.

### B. "Local-First" Architecture for Privacy & Speed
Leading modern repos like **Actual Budget** prove that users value **offline-first/privacy** above almost all else in finance. Using **SQLite + CRDTs** or **Dolt** (Distributed SQL) provides a powerful "Git for money" experience that users (especially developers) will love.

### C. Moving from "Tracking" to "Advice" via AI
Most apps track *yesterday*. *fuku* should use **AI (LLM/NLP)** for:
- **Yesterday:** Auto-categorization (Messy description -> Human readable tag).
- **Today:** Anomalous activity detection (e.g., "Warning: Your internet bill is $20 higher than last month").
- **Tomorrow:** Forecasting (e.g., "Based on current trends, your account balance will reach $0 on the 24th").

## 3. Top Recommendations for fuku Roadmap

1.  **Dolt Integration:** Fully leverage branch-based financial planning. Let users "branch" their finances to test hypothetical scenarios (e.g., "What if I take this mortgage?").
2.  **Open Banking Foundation:** Prioritize Plaid/SaltEdge/GoCardless integration to solve the data entry manual-work problem (The #1 cause of app abandonment).
3.  **Cross-Platform Sync:** Ensure a mobile app (PWA) and desktop app stay in sync with zero latency using local-first protocols.

---

## 4. Full Report Directory
- [GitHub Repositories](./01_github_repos.md)
- [Academic Studies & Wallet Fatigue](./02_academic_studies.md)
- [Modern PFM Architecture](./03_modern_architecture.md)
- [Industry Experts & Influencers](./04_industry_influencers.md)
- [CLI/Backend Focused Repositories](./05_cli_backend_focused.md)
- [Agent-Friendly CLI Tools](./06_agent_friendly_cli.md)
- [Obsidian + ClawBot Agent Setup](./07_obsidian_agent_setup.md)
- [3-Month Roadmap](../plan/roadmap_3_months.md)
- [Epics Overview](../plan/epics_overview.md)
- [Local Machine Setup (Phase 1)](../plan/local_machine_setup.md)
- [AI-Native Finance (2025 Update)](./09_ai_native_finance_2025.md)
