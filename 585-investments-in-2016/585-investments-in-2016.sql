# Write your MySQL query statement below
SELECT ROUND(SUM(C.tiv_2016),2) AS tiv_2016 FROM
(SELECT DISTINCT A.pid, A.tiv_2016 FROM
(SELECT I.pid, I.tiv_2016, CONCAT(I.lat, I.lon) AS lat_lon
FROM Insurance AS I
JOIN Insurance AS J 
ON I.tiv_2015 = J.tiv_2015
AND I.pid != J.pid
AND I.lat != J.lat
AND I.lon != J.lon) AS A
JOIN
(SELECT CONCAT(lat, lon) AS lat_lon, COUNT(CONCAT(lat, lon)) AS cnt FROM Insurance
GROUP BY lat_lon) AS B
ON A.lat_lon = B.lat_lon
WHERE B.cnt = 1) AS C



























# SELECT ROUND(SUM(A.tiv_2016),2) AS tiv_2016 FROM 
# (SELECT I1.pid, I1.tiv_2015, I1.tiv_2016
# FROM Insurance  AS I1
#  WHERE CONCAT(lat, lon) NOT IN (SELECT CONCAT(lat, lon) FROM Insurance
#                                WHERE pid != I1.pid)
#  AND (I1.tiv_2015 IN (SELECT tiv_2015 FROM Insurance
#                      WHERE pid != I1.pid))) AS A
