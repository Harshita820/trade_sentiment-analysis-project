create view trade_sentiment as
select t.*, s.classification, `value`
from trade t
left join sentiment s on t.date = s.date;

# Daily PnL Per Account
select `account`, `date`, sum(closedPnl) as DailyPNL from trade_sentiment
group by `account`, `date` order by `date`;

# Win Rate Per Account
select `account`, count(*) as total_trades,
sum(case when closedPnl > 0 then 1 else 0 end) as winning_trades,
round(100 * sum(case when closedPnl > 0 then 1 else 0 end)/ count(*), 2) as win_rate
from trade_sentiment group by `account` order by win_rate;

# Average Trade Size Per Account
select `account`, round(avg(`Size USD`),2) as AvgTradeSize
from trade_sentiment group by `account` order by AvgTradeSize desc;

# Number of Trades Per Day
select `date`, count(*) as NumberOfTrades
from trade_sentiment group by `date` order by `date`;

# Long to Short Ratio
select 
round((sum(case when direction = 'Open Long' then 1  else 0 end)/ sum(case when direction = 'Open Short' then 1  else 0 end)),2)
as long_short_ratio
from trade_sentiment;

# Does performance differ between Fear and Greed?

# Average and Total Closed PnL per classification
select classification, round(avg(closedPnl),2) as AvgPnl,
round(sum(closedPnl),2) as TotalPnl from trade_sentiment
where classification is not null
group by classification;

# Win Rate per classification
select classification, round(100 * sum( case when closedPnl > 0 then 1 else 0 end)/ count(*), 2) as WinRate
from trade_sentiment
where classification is not null
group by classification;

# Average Loss Per Classification
select classification, round(avg(case when closedPnl < 0 then abs(closedPnl) end), 2) as AvgLoss
from trade_sentiment
where classification is not null
group by classification;

# Number of Trades per Classification
select classification, count(*) as trades
from trade_sentiment 
where classification is not null group by classification;

# Average Size per Classification
select classification, round(avg(`Size USD`),2) as avgSize
from trade_sentiment 
where classification is not null group by classification;

# Number of trades per classfication for long and short trades
select classification, direction, count(*) as trades
from trade_sentiment 
where classification is not null and direction in ('Open Long', 'Open Short')
group by classification, direction order by classification;

# Top 10 Frequent Traders Account
select `account`, count(*) as total_trade from trade_sentiment
group by `account` order by total_trade desc limit 10;





