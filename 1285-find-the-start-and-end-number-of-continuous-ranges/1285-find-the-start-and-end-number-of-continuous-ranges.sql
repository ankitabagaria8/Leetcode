# Write your MySQL query statement below

SELECT B.min_id AS start_id, B.max_id AS end_id FROM
(SELECT diff, MIN(A.log_id) AS min_id, MAX(log_id) AS max_id FROM
(SELECT log_id, ROW_NUMBER() OVER(ORDER BY log_id) AS row_num, log_id - ROW_NUMBER() OVER(ORDER BY log_id) AS diff
FROM Logs) AS A
GROUP BY diff) AS B

















# SELECT min(log_id) AS start_id, max(log_id) AS end_id FROM
# (SELECT log_id, ROW_NUMBER() OVER (ORDER BY log_id) AS row_num, 
# log_id - ROW_NUMBER() OVER (ORDER BY log_id) AS diff
# FROM Logs) AS A
# GROUP BY diff


