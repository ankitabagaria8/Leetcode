# Write your MySQL query statement below
# SELECT T.team_id, T.team_name, IFNULL(E.num_points,0) AS num_points FROM Teams AS T
# LEFT JOIN 
# (SELECT C.host_team, C.score + D.score AS num_points 
# FROM
# (SELECT host_team, SUM(host_score) AS score FROM (SELECT host_team, host_goals, guest_goals, 
# (CASE WHEN host_goals > guest_goals THEN 3
# WHEN host_goals = guest_goals THEN 1
# ELSE 0 END) as host_score
# FROM Matches) AS A
# GROUP BY host_team) AS C
# JOIN
# (SELECT guest_team, SUM(guest_score) AS score FROM (SELECT guest_team, host_goals, guest_goals, 
# (CASE WHEN host_goals < guest_goals THEN 3
# WHEN host_goals = guest_goals THEN 1
# ELSE 0 END) as guest_score
# FROM Matches) AS B
# GROUP BY guest_team) AS D
# ON C.host_team = D.guest_team) AS E
# ON T.team_id = E.host_team
# ORDER BY num_points DESC, team_id

with points as(
select match_id, host_team, guest_team,
        case when host_goals>guest_goals then 3 
             when host_goals<guest_goals then 0 
             else 1 end as host_point,
        case when host_goals<guest_goals then 3
             when host_goals>guest_goals then 0
             else 1 end as guest_point
from matches
)

select t.team_id, t.team_name, ifnull(sum(p.point),0) as num_points
from (
select host_team as team_id, sum(host_point) as point
from points
group by host_team
union all
select guest_team as team_id, sum(guest_point) as point
from points
group by guest_team) p right join teams t
on p.team_id=t.team_id
group by t.team_id
order by 3 desc, 1 asc
























