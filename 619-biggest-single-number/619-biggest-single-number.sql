# Write your MySQL query statement below

SELECT CASE WHEN B.num is null then null ELSE B.num END AS num
FROM
(SELECT  MAX(A.num) AS num 
FROM (SELECT num, COUNT(num) as total FROM MyNumbers 
GROUP BY num HAVING COUNT(num) = 1) AS A) AS B
