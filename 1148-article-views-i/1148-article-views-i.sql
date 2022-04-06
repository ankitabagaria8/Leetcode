# Write your MySQL query statement below
# SELECT DISTINCT A.author_id AS id FROM (SELECT W.author_id, V.viewer_id FROM Views AS W
# JOIN Views AS V
# ON W.author_id = V.viewer_id) AS A
# ORDER BY id;


SELECT DISTINCT A.author_id AS id FROM (SELECT author_id, viewer_id FROM Views 
WHERE author_id = viewer_id ) AS A
ORDER BY author_id