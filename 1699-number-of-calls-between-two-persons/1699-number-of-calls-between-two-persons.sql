# Write your MySQL query statement below
SELECT A.person1, A.person2, COUNT(duration) AS call_count, SUM(duration) AS total_duration FROM
(SELECT (CASE WHEN from_id < to_id THEN from_id ELSE to_id END) AS person1, 
(CASE WHEN to_id > from_id THEN to_id ELSE from_id END) AS person2, 
duration
FROM Calls) AS A
GROUP BY A.person1, A.person2
