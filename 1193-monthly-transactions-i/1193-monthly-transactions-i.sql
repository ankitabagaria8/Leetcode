# Write your MySQL query statement below

SELECT date_edited AS month, country, COUNT(total) AS trans_count, SUM(approved) AS approved_count, SUM(amount) AS trans_total_amount,
SUM(CASE WHEN approved = 1 THEN amount ELSE 0 END) AS approved_total_amount 
FROM
(SELECT country, (CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved, 
(CASE WHEN state IS NOT NULL THEN 1 ELSE 0 END) AS total, 
SUBSTRING(trans_date, 1,7) AS date_edited, amount
FROM Transactions) AS A 
GROUP BY date_edited, country

























# SELECT SUBSTRING(trans_date, 1,7) AS month, country, COUNT(id) AS trans_count, 
# SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count, 
# SUM(amount) AS trans_total_amount, 
# SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
# FROM transactions 
# GROUP BY month, country