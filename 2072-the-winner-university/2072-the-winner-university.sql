# Write your MySQL query statement below


SELECT 
CASE WHEN A.ny_count > B.cali_count THEN 'New York University'
WHEN A.ny_count < B.cali_count THEN 'California University'
ELSE 'No Winner' END AS 'winner'
 
FROM (SELECT COUNT(N.student_id) AS NY_count FROM NewYork AS N 
WHERE score >= 90) AS A, 
(SELECT COUNT(C.student_id) AS cali_count FROM California AS C WHERE score >= 90) AS B
