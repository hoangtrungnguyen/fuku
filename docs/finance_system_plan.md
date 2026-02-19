# Plan: AI-Powered Startup Finance Management System (Mini-Fin)

## 1. Overview
A lightweight, intelligent system to help SaaS startups manage their budgets and expenses without a full-time CFO. The core "brain" of the system is powered by LLM APIs (Gemini and Claude).

## 2. Core Features
- **Intelligent Expense Categorization:** Send a receipt or bank statement line to the API to automatically categorize it into SaaS-specific buckets (COGS, R&D, S&M, G&A).
- **Runway & Burn Prediction:** Use Gemini's time-series reasoning to forecast when you'll run out of cash based on historical trends.
- **Natural Language Budget Querying:** Ask "How much did we spend on AWS in the last 6 months?" or "Which department is exceeding its budget?".
- **Receipt Parsing (OCR + LLM):** Use Gemini's multimodal capabilities to extract Merchant, Date, Amount, and Tax from photos.
- **Scenario Planning:** "What happens to our runway if we hire 2 senior engineers in April?"

## 3. Technology Stack
- **Frontend:** React (TypeScript) + Tailwind CSS (for speed and clean UI).
- **Backend:** Python (FastAPI) + SQLAlchemy / Pydantic.
- **Database:** PostgreSQL (for structured transaction data) or SQLite for simplicity in MVP.
- **AI Engine:**
    - **Gemini 2.5 Flash:** For high-speed receipt parsing and categorization.
    - **Claude 3.5 Sonnet:** For complex financial report summarization and forecasting logic.
- **Tools:** `gemini-cli` extensions for rapid prototyping of AI prompts.

## 4. System Architecture
1.  **Ingestion Layer:** Upload CSVs (from banks) or JPEGs (receipts) via FastAPI endpoints.
2.  **AI Transformation Layer (Python-based):**
    - **Receipt Parser:** Multimodal LLM extracts data.
    - **Categorizer:** Text-based LLM maps line items to the SaaS Chart of Accounts.
3.  **Data Persistence:** Store processed transactions using SQLAlchemy.
4.  **Analytics Layer:** Custom SQL queries + LLM interpretation to generate monthly CFO summaries.

## 5. Implementation Phases
### Phase 1: Ingestion & Parsing (Weeks 1-2)
- Build file upload for receipts and CSVs.
- Integrate Gemini API for data extraction.
- Output: Clean table of all expenses.

### Phase 2: Budgeting & Metrics (Weeks 3-4)
- User defines "Target Budget" per category.
- System calculates Burn Rate, MRR, and Runway automatically.
- Output: Simple Dashboard.

### Phase 3: AI Chat Interface (Weeks 5-6)
- Implement a chat window where the user can query the database.
- Use a "Tools/Function Calling" approach where the LLM can generate SQL to query the transaction database.

---
*Created by Gemini CLI Assistant - February 2026*
