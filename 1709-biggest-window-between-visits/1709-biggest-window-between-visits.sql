# Write your MySQL query statement below

SELECT user_id, MAX(DATEDIFF(lead_date, visit_date)) AS biggest_window FROM
(SELECT user_id, visit_date, 
CASE WHEN (LEAD(visit_date) OVER (PARTITION BY user_id ORDER BY visit_date)) IS NULL THEN 
'2021-1-1' ELSE LEAD(visit_date) OVER (PARTITION BY user_id ORDER BY visit_date) END AS lead_date
FROM UserVisits) AS A
GROUP BY user_id 
ORDER BY user_id 