# Write your MySQL query statement below
SELECT CASE WHEN MAX(rank_v) = 1 THEN null
ELSE A.salary END AS SecondHighestSalary
FROM (SELECT id, salary, RANK() OVER (ORDER BY salary DESC) 
                      AS rank_v FROM Employee) AS A 
                      WHERE A.rank_v = 2
