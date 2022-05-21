# Write your MySQL query statement below

SELECT min(log_id) AS start_id, max(log_id) AS end_id FROM
(SELECT log_id, ROW_NUMBER() OVER (ORDER BY log_id) AS row_num, 
log_id - ROW_NUMBER() OVER (ORDER BY log_id) AS diff
FROM Logs) AS A
GROUP BY diff


