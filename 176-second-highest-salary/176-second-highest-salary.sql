# Write your MySQL query statement below

SELECT CASE WHEN MAX(ranking) = 1 THEN null ELSE salary END SecondHighestSalary FROM 
(SELECT SALARY, DENSE_RANK() OVER (ORDER BY salary DESC) AS ranking
FROM Employee) AS E
WHERE ranking = 2





























# SELECT 
# (CASE WHEN MAX(ranking) = 1 THEN null ELSE A.salary END) AS SecondHighestSalary FROM
# (SELECT id, salary, RANK() OVER (ORDER BY salary DESC) AS ranking FROM Employee) AS A
# WHERE ranking = 2
























# SELECT CASE WHEN MAX(rank_v) = 1 THEN null
# ELSE A.salary END AS SecondHighestSalary
# FROM (SELECT id, salary, RANK() OVER (ORDER BY salary DESC) 
#                       AS rank_v FROM Employee) AS A 
#                       WHERE A.rank_v = 2
