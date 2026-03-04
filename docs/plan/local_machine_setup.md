# Local Machine Setup Guide (Phase 1)
**Date:** 2026-03-03
**Subject:** Step-by-step guide for local/personal deployment of the fuku PFM.

---

## 💻 1. Environment Requirements
Since Phase 1 is strictly for **local personal use**, we will minimize external dependencies.

- **Python 3.10+**: Required for Beancount.
- **Obsidian**: Installed locally on your machine.
- **Terminal**: Primary interaction point for the agent.

---

## 🛠️ 2. One-Line Installation
You can install the entire fuku PFM environment (Python dependencies, folders, and initial ledger) with a single command:

```bash
# To install locally using the included script:
bash install.sh

# Future curl support (when hosted on GitHub/Gist):
# curl -sSL https://raw.githubusercontent.com/user/fuku/main/install.sh | bash
```

---

## 📂 3. Obsidian Vault Configuration
We have already created the `obsidian/` folder in your project root. To use it in Obsidian:
1. Open Obsidian and select **"Open folder as vault"**.
2. Navigate to `/Users/trungnguyenhoang/IdeaProjects/fuku/obsidian`.
3. Install the **"Personal Finance"** (Beancount) plugin from the Community Plugins store.
4. Point the plugin to `main.beancount`.

---

## 🤖 4. ClawBot Local Bridge
For local-only personal use, ClawBot will run on your machine and talk to the Telegram API to receive your commands.

### Setup Steps:
1. **Telegram Bot:** Use `@BotFather` to create a personal bot and get your API Token.
2. **Local Sync:** Ensure your agent can execute the bridge script we created:
   ```bash
   # Test the bridge from your terminal:
   bash scripts/agent_bridge.sh account list
   ```
3. **Agent Skill:** Configure ClawBot (or any agent) to execute this script with user-provided arguments. The script automatically handles the virtual environment and returns JSON.
   - **Command Pattern:** `bash /path/to/fuku/scripts/agent_bridge.sh {{args}}`
   - **Sample Inputs:** `account list`, `transaction list`, `report net-worth`.

---

## 🔒 5. Local Security & Privacy
- **Zero Cloud Leak:** Your financial data stays in your local `obsidian/` folder.
- **Git Versioning:** Run `git init` inside your vault to track changes and "undo" any bad agent transactions.
- **Encryption (Optional):** You can use **macOS FileVault** or an encrypted disk image for the `fuku` project if you need extra protection for your local files.
