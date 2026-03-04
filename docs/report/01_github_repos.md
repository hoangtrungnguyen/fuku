# Research Report: Open Source Personal Finance Management (PFM) Repositories
**Date:** 2026-03-03
**Subject:** Analysis of leading GitHub repositories for PFM 2024-2025.

## 1. Top Repositories Comparison

| Repository | Tech Stack | Unique Selling Point (USP) | GitHub Star Trend |
| :--- | :--- | :--- | :--- |
| **[Firefly III](https://github.com/firefly-iii/firefly-iii)** | PHP 8.4, Laravel, Vue2 | **Advanced Double-Entry Accounting.** Self-hosted, rule-based transaction handling. | ~22.6k (Strong) |
| **[Actual Budget](https://github.com/actualbudget/actual)** | Node.js, SQLite, CRDTs | **Local-First & Offline.** Privacy-focused, envelope budgeting method. | ~25.2k (Rising) |
| **[Maybe Finance](https://github.com/maybe-finance/maybe)** | Ruby on Rails, PostgreSQL | **Modern Wealth Management.** Focuses on net worth, investments, and includes AI assistant. | ~30k (Rapid Growth) |
| **[Ghostfolio](https://github.com/ghostfolio/ghostfolio)** | TypeScript, NestJS, Angular | **Investment & Portfolio Tracking.** Specialized in stocks, ETFs, and crypto analytics. | ~6k (Niche/Growing) |
| **[GnuCash](https://github.com/Gnucash/gnucash)** | C, Scheme | **Professional Grade Accounting.** Mature, complex double-entry for businesses/personal. | (Stable/Legacy) |

---

## 2. Technical Deep Dive

### Firefly III (The "Power User" Choice)
- **Features:** Rule-based transaction categorization, Bill prediction, Recurring transactions, "Piggy bank" savings goals.
- **Data Privacy:** 100% self-hosted. No data leaves the server unless you configure the data importer.
- **Integration:** Excellent JSON REST API. Data importer supports Plaid and GoCardless.

### Actual Budget (The "Privacy & Performance" Choice)
- **Architecture:** Local-first using SQLite and CRDTs for multi-device sync without a central server requirement (can sync via a tiny server).
- **UX:** Exceptional performance (instant load times). Very simple, "no-nonsense" interface.
- **Methods:** Strictly follows *Envelope Budgeting* (Allocate every dollar you earn).

### Maybe Finance (The "Modern AI" Choice)
- **USP:** It attempt to build the "personal OS for your money". It was originally a paid SaaS that went open-source.
- **Features:** Great at visualizing Net Worth over time and tracking diversified assets (real estate, crypto, legacy bank accounts).
- **AI Integration:** Includes an AI-powered finance assistant for natural language queries about spending patterns.

### Ghostfolio (The "Investor's" Choice)
- **Focus:** Performance metrics (Return on Average Investment), Asset Allocation visualization.
- **Design:** Modern "Zen mode" for distraction-free tracking. Very clean Angular UI.

## 3. Recommendations for fuku
- **For Performance:** Adopt a **local-first** approach similar to *Actual Budget*.
- **For AI:** Integrate **LLM/NLP** for transaction categorization (Auto-tagging) like *Maybe*.
- **For Accuracy:** Ensure a **double-entry** foundation like *Firefly III* or *GnuCash* to prevent "disappearing money" bugs.
