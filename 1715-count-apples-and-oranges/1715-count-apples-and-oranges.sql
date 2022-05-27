# Write your MySQL query statement below

SELECT SUM(B.apple_count + IFNULL(C.apple_count,0)) AS apple_count,
SUM(B.orange_count+IFNULL(C.orange_count,0)) AS orange_count
FROM Boxes AS B
LEFT JOIN Chests AS C
ON B.chest_id = C.chest_id
