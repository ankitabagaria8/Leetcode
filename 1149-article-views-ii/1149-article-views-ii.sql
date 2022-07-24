# Write your MySQL query statement below
SELECT DISTINCT viewer_id AS id FROM 
(SELECT viewer_id, COUNT(DISTINCT article_id) AS cnt
FROM Views 
GROUP BY viewer_id, view_date
HAVING cnt >= 2) AS A
ORDER BY viewer_id

























# SELECT distinct viewer_id AS id FROM
# (SELECT viewer_id, view_date
# FROM Views 
# GROUP BY viewer_id, view_date
# HAVING COUNT(DISTINCT article_id) > 1) AS A
# ORDER BY id

























# SELECT distinct A.viewer_id AS id FROM
# (SELECT viewer_id, view_date, COUNT(DISTINCT article_id) AS cnt
# FROM Views AS V
# GROUP BY viewer_id, view_date
# HAVING cnt > 1) AS A
# ORDER BY id





# SELECT distinct A.viewer_id as id FROM (SELECT viewer_id, view_date, COUNT(DISTINCT article_id) AS counted
# FROM Views 
# group by viewer_id, view_date
# HAVING counted > 1) AS A
# ORDER BY viewer_id