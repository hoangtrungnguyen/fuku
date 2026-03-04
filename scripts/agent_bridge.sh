#!/bin/bash

# fuku Agent Bridge
# Use this script to bridge external agents (like ClawBot) to the local Beancount environment.

set -e

# Path to the project root
PROJECT_ROOT="/Users/trungnguyenhoang/IdeaProjects/fuku"
cd "$PROJECT_ROOT"

# Path to the Ledger
LEDGER_FILE="$PROJECT_ROOT/obsidian/main.beancount"

# Activate the virtual environment if it exists
if [ -d ".venv" ]; then
    source .venv/bin/activate
else
    echo "❌ Error: Virtual environment (.venv) not found. Run 'bash install.sh' first."
    exit 1
fi

# Execute the 'bean' CLI with the provided arguments
# Force JSON output for agent consumption
exec bean "$@" --file "$LEDGER_FILE" --format json
