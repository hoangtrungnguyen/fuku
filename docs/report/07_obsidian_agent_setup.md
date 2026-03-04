# Research Report: Custom Agent PFM Stack (Obsidian + ClawBot + Todoist)
**Date:** 2026-03-03
**Subject:** Optimal repository and setup for an Obsidian-native, Agent-led PFM system.

---

## 1. Top Recommendation: Beancount + beancount-cli
For your specific need to integrate with **Todoist**, **Google Calendar**, and **ClawBot** (Telegram) within **Obsidian**, the **Beancount** ecosystem is the clear winner over hledger or Ledger-cli.

### Why Beancount for this setup?
1.  **Obsidian Integration:** The "Personal Finance" plugin for Beancount allows you to interact with your `.beancount` file directly within Obsidian. It includes a dashboard, transaction entry, and inline queries (like Dataview).
2.  **API Glue (Todoist/Google Cal):** Because Beancount is written in **Python**, it is the easiest stack for integrating with external APIs. You (or your agent) can write simple Python scripts using the `todoist-python` or `google-api-python-client` libraries to fetch data and append it to your ledger file.
3.  **ClawBot & Agent Communication:** `beancount-cli` is specifically designed for agents. It uses **Pydantic** to provide structured JSON output, which ensures your ClawBot/Telegram agent doesn't "hallucinate" or fail due to parsing text logs.

---

## 2. Integration Architecture

| Component | Role | Implementation |
| :--- | :--- | :--- |
| **Storage** | Backend | `.beancount` file inside your **Obsidian Vault**. |
| **Agent Interface** | CLI | `beancount-cli` (provides JSON for ClawBot). |
| **User Input** | Telegram | **ClawBot** (OpenClaw) running shell commands. |
| **Automation** | Sync | Python scripts to pull from **Todoist** and **Google Cal**. |
| **Visualization** | UI | Obsidian "Personal Finance" Plugin / Fava (optional). |

---

## 3. Recommended Repository & Plugins

### Core Engine: [Beancount v3](https://github.com/beancount/beancount)
- **Why:** The most stable backend for plain-text accounting.
- **Agent Tool:** [beancount-cli](https://github.com/beancount/beancount-cli) (Agent-friendly JSON wrapper).

### Obsidian Plugin: [Personal Finance Plugin](https://github.com/vzhd1701/obsidian-personal-finance)
- **Features:** Direct writing to Beancount, transaction management within notes, and live data dashboards.

### Automation Inspiration: [Beancount-Bot](https://github.com/wogong/beancount-bot)
- **Note:** This is a dedicated Telegram bot project for Beancount. You can study its code to teach **ClawBot** how to format financial transactions correctly.

---

## 4. How to set it up (Roadmap)
1.  **Initialize:** Create a `main.beancount` file in your Obsidian folder.
2.  **Install CLI:** Install `beancount` and `beancount-cli` on the same machine running ClawBot.
3.  **Skill Up ClawBot:** Give ClawBot access to your Obsidian folder and define a "Financial Skill" that runs `beancount-cli`.
4.  **Connect APIs:** Write a small Python script to fetch your Todoist tasks (as potential expenses) and Google Calendar events (as recurring bills) and convert them to Beancount entries.

---

## 5. Final Comparison

| Criteria | hledger (Alternative) | Beancount (Winner) |
| :--- | :--- | :--- |
| **Agent Parser** | JSON natively available. | JSON via Pydantic (High reliability). |
| **Obsidian** | Strong (Hledger Notes plugin). | Strongest (Interactive Dashboards). |
| **API Scripting** | Needs external Python/Ruby scripts. | **Native Python** (Unified environment). |
| **Data Integrity** | Flexible (Forgiving). | **Strict** (Agent can't input bad data). |
