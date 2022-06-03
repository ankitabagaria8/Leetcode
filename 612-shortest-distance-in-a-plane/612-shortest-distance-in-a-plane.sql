# Write your MySQL query statement below

SELECT round(min(sqrt(A.output)),2) AS shortest FROM 
(SELECT P1.x AS x1, P1.y AS y1, P2.x AS x2, P2.y AS y2, 
((P1.y-P2.y)*(P1.y-P2.y) + (P1.x-P2.x)*(P1.x-P2.x)) AS output 
FROM Point2D AS P1
JOIN Point2D AS P2
ON (P1.x,P1.y) <> (P2.x,P2.y)) AS A
























# SELECT MIN(ROUND(sqrt(((x1-x2)*(x1-x2)+ (y1-y2)*(y1-y2))),2)) AS shortest FROM
# (SELECT A.x AS x1, A.y AS y1, B.x AS x2, B.y AS y2
# FROM Point2D AS A
# JOIN Point2D AS B
# ON (A.x, A.y) <> (B.x, B.y)) AS A