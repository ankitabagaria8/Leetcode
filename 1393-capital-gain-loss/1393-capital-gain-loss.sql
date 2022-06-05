# Write your MySQL query statement below
SELECT stock_name, SUM(gain_loss) AS capital_gain_loss FROM
(SELECT stock_name, (CASE WHEN operation = 'Buy' THEN price*-1 ELSE price END) AS gain_loss
FROM Stocks) AS A
GROUP BY stock_name 



























# SELECT stock_name,
# (SUM(CASE WHEN operation = 'Sell' THEN price END) - SUM(CASE WHEN operation = 'Buy' THEN price END))
# AS capital_gain_loss
# FROM Stocks 
# GROUP BY stock_name

