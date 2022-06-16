# Write your MySQL query statement below



WITH table1 AS (SELECT activity, COUNT(*) AS cnt FROM Friends GROUP BY activity)


SELECT activity FROM table1
WHERE cnt != (SELECT MAX(cnt) FROM table1)
AND cnt!= (SELECT MIN(cnt) FROM table1)














