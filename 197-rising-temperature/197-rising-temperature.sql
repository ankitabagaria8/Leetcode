# Write your MySQL query statement below
SELECT W.id FROM weather AS W
JOIN Weather AS P
WHERE DATEDIFF(W.recordDate,P.recordDate) = 1
AND W.temperature > P.temperature;