# Write your MySQL query statement below

SELECT business_id FROM 
(SELECT business_id, A.event_type, occurences - avg_occur AS diff, COUNT(business_id) AS cnt
FROM 
(SELECT event_type, AVG(occurences) AS avg_occur
FROM Events AS E
GROUP BY event_type) AS A
JOIN Events AS B
ON A.event_type = B.event_type 
WHERE occurences - avg_occur > 0
GROUP BY business_id 
HAVING cnt > 1) AS C
























# SELECT B.business_id FROM (SELECT  business_id, COUNT(business_id) AS no_of_times
# FROM Events AS E
# JOIN 
# (SELECT event_type, AVG(occurences) AS avg_occur
# FROM Events 
# GROUP BY event_type) AS A
# ON A.event_type = E.event_type 
# WHERE occurences > avg_occur
# GROUP BY business_id
# HAVING COUNT(business_id) >= 2) AS B

