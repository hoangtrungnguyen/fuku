# Plan: Implementing a Binance Trading Bot (Python)

## 1. Goal
Build a Python-based automated trading bot that interacts with the Binance API, integrates with the previously planned "Mini-Fin" system, and uses AI for signal validation.

## 2. Technical Stack
- **Language:** Python 3.10+
- **Library:** `python-binance`
- **Database:** PostgreSQL (for trade logs and history).
- **Environment:** Docker (for stable, 24/7 deployment).
- **AI Integration:** FastAPI endpoint to query Gemini/Claude for "News Sentiment" or "Pattern Recognition" before executing a trade.

## 3. System Architecture
1. **Market Listener:** A background process using WebSockets to monitor specific pairs (e.g., BTCUSDT, ETHUSDT).
2. **Signal Generator:** 
    - **Technical:** Uses `pandas-ta` for indicators.
    - **AI:** Sends recent news snippets to Gemini to confirm if the "vibe" is bullish.
3. **Execution Manager:** Handles order placement, retries on network failure, and monitors for partial fills.
4. **Dashboard:** A simple React UI to view open positions, PnL (Profit and Loss), and bot status.

## 4. Step-by-Step Implementation
### Step 1: Environment Setup
- Create a Binance Testnet account.
- Setup `venv` and install `python-binance`, `pandas`, `ccxt`, and `python-dotenv`.

### Step 2: Connection Module
- Create a `client.py` that handles authentication and rate-limit management.

### Step 3: Strategy & Backtesting
- Write a simple strategy (e.g., SMA Crossover).
- Backtest against historical data before running on Testnet.

### Step 4: AI Signal Validation (The "Mini-Fin" Hook)
- Before the bot executes a 'BUY', it sends a request to the Finance System's AI API: 
  *"Should I buy BTC at $50k given the last 10 news headlines?"*

### Step 5: Live Deployment
- Deploy to a VPS (e.g., DigitalOcean, AWS) using Docker.
- Setup alerts via Telegram or Discord for trade execution notifications.

---
*Created by Gemini CLI Assistant - February 2026*
