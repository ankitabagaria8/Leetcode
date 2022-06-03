# Write your MySQL query statement below
# SELECT ROUND(D.cnt/C.player_cnt,2) AS fraction FROM 
# (select count(B.player_id) AS cnt FROM 
# (SELECT  player_id, lead_date - event_date AS date_diff FROM
# (SELECT player_id, event_date, 
# LEAD(event_date,1) OVER (PARTITION BY player_id ORDER BY event_date) AS lead_date
# FROM Activity) AS A) AS B
# WHERE date_diff = 1) AS D, 
# (SELECT COUNT(DISTINCT player_id) as player_cnt FROM Activity) AS C




# SELECT ROUND(SUM(CASE WHEN A.diff = -1 THEN 1 ELSE 0 END)/count(DISTINCT A.player_id),2) AS fraction
# FROM
# (SELECT player_id, 
# DATEDIFF(event_date,lead(event_date) over (partition by player_id order by event_date)) AS diff, 
# RANK() OVER(PARTITION BY player_id ORDER BY event_date) as total
# FROM Activity ) AS A
# WHERE A.total = 1



select ROUND(SUM(case when B.dated = -1 THEN 1 ELSE 0 END)/COUNT(DISTINCT player_id),2) AS fraction
FROM
(SELECT player_id, event_date, A.dated FROM
(SELECT player_id, event_date, 
datediff(event_date, lead(event_date) OVER (PARTITION BY player_id ORDER BY event_date)) as dated, 
RANK() OVER (PARTITION BY player_id ORDER BY event_date) AS ranking
FROM Activity) AS A
WHERE ranking = 1) AS B


















