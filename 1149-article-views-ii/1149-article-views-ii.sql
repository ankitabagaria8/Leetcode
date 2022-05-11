# Write your MySQL query statement below
SELECT distinct A.viewer_id as id FROM (SELECT viewer_id, view_date, COUNT(DISTINCT article_id) AS counted
FROM Views 
group by viewer_id, view_date
HAVING counted > 1) AS A
ORDER BY viewer_id