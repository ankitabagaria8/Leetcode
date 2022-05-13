# Write your MySQL query statement below

With result as (SELECT '[0-5>' AS bin FROM sessions
UNION 
SELECT '[5-10>' AS bin FROM sessions
UNION
SELECT '[10-15>' AS bin FROM sessions
UNION 
SELECT '15 or more' AS bin FROM sessions)


select R.bin, ifnull(COUNT(A.session_id),0) AS total FROM (SELECT session_id, (CASE WHEN duration/60 < 5 THEN '[0-5>' 
WHEN (duration/60 >= 5 AND duration/60 < 10) THEN '[5-10>'
WHEN (duration/60 >=10 AND duration/60 < 15) THEN '[10-15>'
ELSE '15 or more' END) AS bin
FROM Sessions) AS A
RIGHT JOIN result AS R
 ON A.bin =R.bin 
 GROUP BY bin
 
 

