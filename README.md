# Hyperliquid Trader Behavior Analysis Using Bitcoin Fear & Greed Index

## Project Overview

This project analyzes the relationship between Bitcoin market sentiment (Fear & Greed Index) and trader behavior on the Hyperliquid trading platform.

The objective is to determine whether market sentiment influences trading performance, trading frequency, position sizing, and overall trader behavior. Insights from the analysis are used to propose actionable trading strategies.

## Datasets

### 1. Bitcoin Fear & Greed Index

Contains daily Bitcoin market sentiment.

**Columns**
- Date
- Fear & Greed Value
- Classification (Extreme Fear, Fear, Neutral, Greed, Extreme Greed)

### 2. Hyperliquid Historical Trader Data

Contains historical trade execution details.

**Key Columns**
- Account
- Coin
- Execution Price
- Trade Size (Tokens & USD)
- Side / Direction
- Closed PnL
- Timestamp
- Transaction Details

## Tools & Technologies

- Python (Pandas)
- MySQL
- Power BI
- Jupyter Notebook

## Methodology

The project follows the following workflow:

1. Load both datasets using Python.
2. Perform data cleaning:
   - Remove duplicates
   - Handle missing values
   - Convert timestamps
   - Extract daily dates
3. Export cleaned datasets.
4. Import cleaned data into MySQL.
5. Join trader and sentiment datasets using the Date column.
6. Calculate key trading metrics using SQL.
7. Create visualizations in Power BI.
8. Interpret results and provide strategy recommendations.

# Key Metrics Analyzed

- Daily Profit & Loss (PnL)
- Win Rate
- Average Trade Size
- Number of Trades
- Trading Activity by Market Sentiment
- Long vs Short Trading Activity
- Trader Performance by Market Sentiment

# Setup

## Prerequisites

Install the following software:

- Python 3.x
- Jupyter Notebook (Anaconda)
- MySQL Server
- MySQL Workbench
- Power BI Desktop

## Python Dependencies

Install the required Python packages:

```bash
pip install pandas numpy openpyxl
```

# How to Run

## Step 1 — Clone the Repository

```bash
git clone https://github.com/Harshita820/trade_sentiment-analysis-project.git
```

Open the project folder.

## Step 2 — Data Cleaning

Open:

```
notebook/analysis.ipynb
```

Run all cells to:

- Load raw datasets
- Clean missing values
- Convert timestamps to dates
- Export cleaned CSV files

The cleaned files will be saved inside the `data/` folder.

---

## Step 3 — Import into MySQL

1. Open MySQL Workbench.
2. Create a new database.

```sql
CREATE DATABASE hyperliquid;
```

3. Import:

- clean_trades.csv
- clean_sentiment.csv

using **Table Data Import Wizard**.

## Step 4 — Execute SQL Queries

Open:

```
sql/trade_analysis.sql
```

Run the SQL queries to generate:

- Daily PnL
- Win Rate
- Average Trade Size
- Trade Frequency
- Market Sentiment Analysis


## Step 5 — Open Power BI Dashboard

Open:

```
dashboard/Hyperliquid.pbix
```

Refresh the data source if required.

The dashboard contains visualizations for:

- Average PnL by Sentiment
- Win Rate by Sentiment
- Trading Activity
- Average Trade Size
- Trader Performance


# Key Findings

- Fear periods generated the highest average profitability.
- Greed periods had the highest trading activity but the lowest average profit.
- A higher win rate did not always correspond to higher profitability.
- Trader performance varied significantly across different accounts.

Detailed findings are available in:

```
summary.md
```


# Future Improvements

Possible extensions to this project include:

- Trader segmentation (High vs Low Leverage)
- Clustering traders into behavioral groups
- Predictive modeling for trader profitability
- Interactive Streamlit dashboard
- Risk-adjusted performance metrics (Drawdown, Sharpe Ratio)

---

# Author

**Harshita Tantia**

Aspiring Data Analyst with experience in SQL, Python, Power BI, Tableau, Excel, and Data Visualization.
