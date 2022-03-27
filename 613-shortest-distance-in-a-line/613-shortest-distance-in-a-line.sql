# Write your MySQL query statement below
SELECT DISTINCT A.DIF AS shortest FROM (SELECT p1.X AS X1, P2.X AS X2, ABS(p1.X - P2.X) AS DIF
FROM Point AS P1
JOIN Point AS P2
WHERE  p1.X !=  p2.X) AS A
WHERE A.DIF = (SELECT MIN(B.DIFF) FROM (SELECT ABS(p1.X - P2.X) AS DIFF
FROM Point AS P1
JOIN Point AS P2
WHERE  p1.X !=  p2.X) AS B)