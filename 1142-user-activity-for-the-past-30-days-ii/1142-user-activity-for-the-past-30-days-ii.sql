# Write your MySQL query statement below

SELECT IFNULL(ROUND(A.total_session/A.total_user,2),0) AS average_sessions_per_user FROM (SELECT COUNT(DISTINCT user_id) as total_user, COUNT(DISTINCT session_id) AS total_session FROM Activity
WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27') AS A 

