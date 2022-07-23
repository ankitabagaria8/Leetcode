# # Write your MySQL query statement below
select distinct num AS ConsecutiveNums  FROM
(SELECT id, num, lead(num) over (order by id) as lead1, lead(num,2) over (order by id) as lead2
FROM Logs) AS A
WHERE num = lead1 and num = lead2



























# SELECT DISTINCT num AS ConsecutiveNums FROM
# (SELECT id, num, LEAD(num,1) OVER (ORDER BY id) AS lead1, 
# LEAD(num,2) OVER (ORDER BY id) AS lead2
# FROM Logs) AS A
# WHERE num = lead1
# AND num = lead2




























# SELECT num FROM (SELECT id, num, ROW_NUMBER() OVER(PARTITION BY num ORDER BY id) AS row_num 
# FROM Logs) AS A 
# WHERE row_num = 3


# SELECT DISTINCT(A.num) AS ConsecutiveNums FROM (SELECT id, num, 
# lead(num, 1) over (order by id) as l1, 
# lead(num, 2) over (order by id) as l2
# FROM logs) AS A
# WHERE l1 = num AND l2 = num


# select DISTINCT num AS ConsecutiveNums from 
# (SELECT id, num, lead(num, 1) over(order by id) AS lead_1, 
# lead(num, 2) over(order by id) AS lead_2
# FROM Logs ) AS A
# WHERE lead_1 = num and lead_2 = num






