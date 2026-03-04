# Research Report: AI-Native Financial CLI & Agents (2025 Deep Dive)
**Date:** 2026-03-03
**Subject:** The shift from "CLI reporting" to "Agentic Financial Orchestration" using LLMs and MCP.

---

## 1. The 2025 Shift: From CLI to MCP
The most significant advancement for AI finance in 2025 is the **Model Context Protocol (MCP)**. Instead of just running commands, these servers allow your agent (ClawBot, Claude, Gemini) to "see" your financial data as a lived-in context.

| Tool / Server | Purpose | Why it's "Best in Class" |
| :--- | :--- | :--- |
| **[Fi Money MCP](https://fi.money)** | Portfolio Snapshot | Unifies bank, mutual funds, and real estate into an AI-readable stream. |
| **[Lunch Flow MCP](https://lunchflow.app)** | Real-time Query | Read-only banking access. Best for asking "What did I spend on X?" via natural language. |
| **[MCP Financial Advisor](https://mcp.so)** | Bookkeeping Agent | Provides structured finance schemas specifically for AI advisors to perform budgeting. |

---

## 2. Advanced Agentic Platforms (GitHub Repos)
These repositories represent the cutting edge of terminal-based financial intelligence.

### [AutoFinance](https://github.com/vladimirsiedykh/autofinance)
- **Concept:** An **AI Financial Command Center** inside your terminal.
- **How it works:** It uses the **GitHub Copilot CLI** to orchestrate specialized agents for technical analysis, sentiment mapping, and risk management.
- **Why for you:** It turns your terminal into a "chat room" for your portfolio.

### [FinRobot](https://github.com/AI4Finance-Foundation/FinRobot)
- **Concept:** Open-source AI Agent Platform using **FinGPT**.
- **Specialty:** Investment research automation and algorithmic trading.
- **Process:** It unifies LLMs with reinforcement learning to generate professional-grade financial valuation reports directly from the CLI.

---

## 3. Local-First AI & Privacy (Privacy Native)
For users (like you) using **Obsidian**, privacy is often the #1 priority.

- **Local LLM Setup (DZone 2025):** There is a growing trend of running **Llama 3** or **Phind** locally to analyze Beancount files.
- **Structured Data:** Tools like **`beancount-cli`** are now using **Pydantic** models (Python) to ensure that when a local AI agent writes a transaction, it follows strict accounting schemas.

---

## 4. Top Recommendation Hierarchy for AI Agents

| Requirement | Top Tool (Binary/CLI) | Ecosystem Support |
| :--- | :--- | :--- |
| **Simple Logging** | `hledger` | `-O json` flag is industry-standard for parsing. |
| **Agentic Writing** | `beancount-cli` | Pydantic validation prevents agent "hallucinations" in the ledger. |
| **Strategic Analysis** | `FinRobot` | Best for automated investment research. |
| **Unified "Chat"** | `AutoFinance` | Orchestrates multiple agents via natural language terminal commands. |

---

## 5. Strategic Conclusion for fuku
For your **ClawBot + Obsidian** setup, the best "AI Tooling" strategy is:
1.  **Engine:** Use `Beancount` for the ledger.
2.  **Interface:** Use an **MCP Server** (like MCP Financial Advisor) to expose that ledger to ClawBot.
3.  **Intelligence:** Use **FinRobot** as a standalone skill for deep analysis on your investment performance.
4.  **UI:** Keep **Obsidian** as the visualization layer where the agent "leaves" its reports for you to read.
