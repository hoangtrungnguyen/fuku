#!/bin/bash

# fuku PFM Installer
# Subject: Local installation of the Beancount-based PFM system for Obsidian/ClawBot.

set -e

echo "🚀 Starting fuku PFM installation..."

# 1. Check for Python 3
if ! command -v python3 &> /dev/null; then
    echo "❌ Error: Python 3 is not installed. Please install it from https://python.org"
    exit 1
fi

echo "✅ Python 3 detected."

# 2. Setup Virtual Environment & Install Dependencies
echo "📦 Setting up Python virtual environment (.venv)..."
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
    echo "✅ Virtual environment created."
fi

echo "📦 Installing Beancount and Beancount-CLI within .venv..."
source .venv/bin/activate
pip install --upgrade beancount beancount-cli

# 3. Create Obsidian Vault Structure
echo "📂 Setting up Obsidian Vault..."
mkdir -p obsidian

if [ ! -f "obsidian/main.beancount" ]; then
    echo 'option "operating_currency" "USD"

2026-01-01 open Assets:Bank:Checking
2026-01-01 open Assets:Cash
2026-01-01 open Liabilities:CreditCard
2026-01-01 open Income:Salary
2026-01-01 open Expenses:Food
2026-01-01 open Expenses:Rent
2026-01-01 open Expenses:General
2026-01-01 open Equity:Opening-Balances
' > obsidian/main.beancount
    echo "✅ Created initial ledger: obsidian/main.beancount"
else
    echo "ℹ️  Existing ledger found, skipping creation."
fi

# 4. Verify Installation
echo "🔍 Verifying installation..."
if command -v bean-check &> /dev/null; then
    bean-check obsidian/main.beancount
    echo "✅ Beancount engine is operational."
else
    echo "⚠️  Warning: bean-check not found in PATH. Ensure Pip binaries are in your Shell PATH."
fi

echo "---"
echo "🎉 fuku PFM is ready for local use!"
echo "Next steps:"
echo "1. Open the 'obsidian/' folder as a vault in Obsidian."
echo "2. Install the 'Personal Finance' community plugin."
echo "3. Connect your ClawBot to this directory to start agentic logging."
