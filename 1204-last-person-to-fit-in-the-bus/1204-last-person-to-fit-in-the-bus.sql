# Write your MySQL query statement below
SELECT person_name FROM
(SELECT turn, weight, person_name, 
SUM(weight) OVER(ORDER BY turn) AS total_weight
FROM Queue) AS A 
WHERE total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1


























# select B.person_name from (SELECT SUM(weight) OVER (ORDER BY turn) AS cumsum, 
# ROW_NUMBER() OVER (Order by turn) AS total_num, person_name
# FROM
# (SELECT turn, weight, person_name
# FROM Queue 
# ORDER BY turn) AS A) AS B
# WHERE B.cumsum <= 1000 
# ORDER BY total_num DESC
# LIMIT 1
