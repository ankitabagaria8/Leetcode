# Write your MySQL query statement below
SELECT DISTINCT C.seat AS seat_id FROM(SELECT a.seat_id AS seat, a.free as a_free, b.seat_id, b.free AS b_free FROM Cinema AS a, Cinema AS b
WHERE a.free = 1 and b.free = 1
AND (a.seat_id = b.seat_id+ 1 OR a.seat_id = b.seat_id -1 )) AS C
ORDER BY C.seat;



