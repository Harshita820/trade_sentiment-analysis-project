# Hyperliquid Trader Behavior Analysis Using Bitcoin Market Sentiment

## Objective

The objective of this analysis is to investigate how Bitcoin market sentiment (Fear & Greed Index) influences trader behavior and trading performance on Hyperliquid. By combining historical trading data with daily market sentiment, the analysis aims to identify behavioral patterns that can be used to improve trading decisions and risk management.

# Methodology

## Data Preparation

Two datasets were used for this analysis:

1. Bitcoin Fear & Greed Index
2. Hyperliquid Historical Trader Data

The following preprocessing steps were performed:

- Removed duplicate records.
- Checked and handled missing values.
- Converted timestamp columns into standard datetime format.
- Extracted the date from timestamps to enable daily-level analysis.
- Joined the trader dataset with the sentiment dataset using the Date column.
- Calculated key trading metrics including:
  - Daily Profit & Loss (PnL)
  - Win Rate
  - Average Trade Size
  - Number of Trades
  - Trading Activity by Sentiment

SQL was used for querying and aggregating the data, while Power BI was used to visualize the results.

---

# Key Findings

## 1. Market sentiment has a noticeable impact on trader profitability.

The analysis shows that average profit per trade changes across different market sentiment categories.

| Market Sentiment | Average PnL |
|------------------|------------:|
| Fear | 69.26 |
| Extreme Greed | 68.22 |
| Extreme Fear | 52.54 |
| Neutral | 46.96 |
| Greed | 33.46 |

Interestingly, traders achieved the highest average profitability during **Fear** periods, while **Greed** periods produced the lowest average returns. This suggests that periods of uncertainty may create more profitable trading opportunities, whereas optimistic markets may encourage overtrading or poor trade selection.

## 2. A higher win rate does not always result in higher profits.

Win rate varied across market conditions.

| Market Sentiment | Win Rate (%) |
|------------------|-------------:|
| Extreme Greed | 44.92 |
| Fear | 43.08 |
| Neutral | 41.31 |
| Greed | 36.63 |
| Extreme Fear | 34.98 |

Although **Extreme Greed** recorded the highest win rate, it did not produce the highest average PnL. On the other hand, **Fear** generated the highest profits despite having a slightly lower win rate.

This indicates that larger profitable trades contribute more to overall performance than simply increasing the percentage of winning trades.


## 3. Higher trading activity does not necessarily improve performance.

The number of trades increased significantly during optimistic market conditions.

Greed-related market conditions recorded the largest trading volume, while Extreme Fear showed the lowest activity.

However, despite higher trading frequency, Greed periods generated the lowest average profitability.

This suggests that increased market participation during bullish sentiment does not always translate into better trading outcomes and may indicate overtrading.


## 4. Trader performance varies significantly across accounts.

The trader-level analysis revealed considerable differences between individual traders.

Some observations include:

- Certain traders maintained win rates above 80%.
- Several highly active traders executed more than 20,000 trades while maintaining win rates below 50%.
- Average trade sizes ranged from approximately \$1,700 to over \$17,000.

These findings suggest that profitability depends on trading strategy and execution quality rather than trading frequency alone.


# Strategy Recommendations

## Strategy 1 – Be More Selective During Greed Markets

Greed periods recorded the highest trading activity but generated the lowest average profitability.

**Recommendation**

Rather than increasing trading frequency during bullish market sentiment, traders should focus on higher-confidence setups and avoid entering unnecessary trades simply because market sentiment is positive.


## Strategy 2 – Capitalize on Fear with Controlled Risk

Fear periods produced the highest average profit per trade.

**Recommendation**

During Fear market conditions, traders may benefit from taking carefully selected, high-conviction trades while maintaining disciplined risk management. Market volatility during fearful periods appears to create opportunities for larger profitable moves.


# Conclusion

The analysis demonstrates that market sentiment influences both trader behavior and trading performance.

While Greed encourages higher trading activity, it does not necessarily improve profitability. Conversely, Fear periods produce stronger average returns despite lower overall optimism.

These findings suggest that successful trading depends not only on market direction but also on adapting trading behavior according to prevailing market sentiment.

Future work could include trader segmentation based on leverage, trading frequency, and profitability, as well as developing predictive models using sentiment and behavioral features.
