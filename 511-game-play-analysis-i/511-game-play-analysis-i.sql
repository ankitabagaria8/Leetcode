# Write your MySQL query statement below
SELECT A.player_id, A.event_date AS first_login  FROM (SELECT MIN(event_date) as event_date, player_id FROM Activity
GROUP BY player_id) AS A
