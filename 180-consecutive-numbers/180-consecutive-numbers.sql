# # Write your MySQL query statement below
# SELECT num FROM (SELECT id, num, ROW_NUMBER() OVER(PARTITION BY num ORDER BY id) AS row_num 
# FROM Logs) AS A 
# WHERE row_num = 3


SELECT DISTINCT(A.num) AS ConsecutiveNums FROM (SELECT id, num, 
lead(num, 1) over (order by id) as l1, 
lead(num, 2) over (order by id) as l2
FROM logs) AS A
WHERE l1 = num AND l2 = num