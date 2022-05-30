# Write your MySQL query statement below

# SELECT category, IFNULL(COUNT(account_id),0) AS accounts_count FROM
# (SELECT account_id, 
# CASE WHEN income < 20000 THEN 'Low Salary'
# WHEN income >= 20000 AND income <= 50000 THEN 'Average Salary'
# ELSE 'High Salary' END AS category
# FROM Accounts) AS A
# GROUP BY category

SELECT 'Low Salary' AS category, SUM(CASE WHEN income < 20000 THEN 1 ELSE 0 END) AS accounts_count
FROM Accounts
UNION 
SELECT 'Average Salary' AS category, SUM(CASE WHEN income >= 20000 AND income <= 50000 THEN 1 ELSE 0 END) AS accounts_count
FROM Accounts
UNION 
SELECT 'High Salary' AS category, SUM(CASE WHEN income > 50000 THEN 1 ELSE 0 END) AS accounts_count
FROM Accounts