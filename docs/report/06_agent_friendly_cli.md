# Research Report: Agent-Friendly CLI PFM Tools
**Date:** 2026-03-03
**Subject:** PFM tools specifically optimized for AI agents and automated CLI workflows.

---

## 1. Why "Agent-Friendliness" Matters
For a custom AI agent to manage finances, the tool must provide:
- **Machine-Readable Output:** JSON or CSV is mandatory for error-free parsing.
- **Stable CLI Interface:** Flags and commands must not change frequently.
- **Predictable Error Handling:** Non-zero exit codes and clear stderr messages.
- **Structured Data:** Plain-text formats (like Beancount/hledger) are ideal as the agent can read/write directly to the source file.

---

## 2. Top "Agent-Ready" Recommendations

### [beancount-cli](https://github.com/beancount/beancount-cli)
- **Status:** **Best for AI Agents.**
- **Tech Stack:** Python, Pydantic, Beancount v3.
- **Feature Layer:** It's a modern wrapper for Beancount specifically designed for automation.
- **JSON Support:** Global `--format json` flag for all commands.
- **Agent Benefit:** Uses Pydantic for strict data validation, ensuring the agent provides valid financial data before it's written to the ledger.

### [hledger](https://hledger.org)
- **Status:** **Most Robust CLI.**
- **Tech Stack:** Haskell.
- **Output:** Native support for `json` output on almost all reports (e.g., `hledger bal -O json`).
- **Web API:** Includes a built-in JSON API via `hledger-web` that an agent can query over HTTP if needed.
- **Agent Benefit:** Extremely stable and mature. The `print` command can output perfect JSON of the entire transaction history.

### [Beanquery](https://github.com/beancount/beanquery)
- **Status:** **Best for Data Analysis.**
- **Function:** A SQL-like query tool for Beancount files.
- **Agent Benefit:** An agent can run SQL queries like `SELECT date, narration, amount WHERE account ~ "Expenses:Food"` and get JSON results. This is much easier for an agent than parsing custom text blocks.

---

## 3. Comparison of Agent-Facing Features

| Feature | Beancount (+ CLI) | hledger | finance-cli (Go) |
| :--- | :--- | :--- | :--- |
| **JSON Output** | Native/Pydantic | Native (`-O json`) | Simple/Fragmented |
| **Input Validation** | Very High (Strict) | Medium/High | Low |
| **SQL Querying** | Yes (Beanquery) | Limited (Tags/Matches) | No |
| **Scripting language** | Python (First-class) | Haskell / CLI-only | Go |
| **Installation** | Pip (Easy) | Binary (Very Easy) | Binary (Very Easy) |

---

## 4. Suggested Implementation for your Agent
1.  **Storage:** Use a **Beancount** or **hledger** plain text file. It's human-readable, Git-versionable, and can be read by the agent like code.
2.  **Interface:** Use `beancount-cli` or `hledger` with the `--json` flag.
3.  **Validation:** Set up a "Pre-commit" hook or a validation step where the agent runs `hledger check` or `bean-check` before finalize any transaction.
4.  **Parsing:** Always use the JSON output format to avoid regex-parsing the console logs.

## 5. Summary Recommendation
If your project allows Python, **Beancount + beancount-cli** is the superior "Agent" choice due to the Pydantic validation and deep SQL-like querying capabilities. If you want a single, zero-dependency binary, **hledger** is the most feature-complete CLI tool available.
