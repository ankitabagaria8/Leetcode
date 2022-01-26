# Write your MySQL query statement below
# SELECT A.player_id, A.device_id FROM (SELECT player_id, MIN(event_date) AS event_date FROM Activity
# GROUP BY player_id) AS A


SELECT B.player_id, B.device_id FROM Activity  AS B JOIN 
(SELECT player_id, MIN(event_date) AS event_date FROM Activity 
GROUP BY player_id) AS A
WHERE B.player_id = A.player_id 
AND B.event_date = A.event_date
