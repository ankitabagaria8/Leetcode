SELECT name AS Name FROM Candidate AS C
JOIN
(SELECT candidateId, COUNT(*) AS cnt
FROM Vote 
GROUP BY candidateId
ORDER BY cnt DESC
LIMIT 1) AS A
ON A.candidateId = C.id





























# SELECT A.name FROM 
# (SELECT name, COUNT(V.id) AS cnt
# FROM Candidate AS C
# JOIN Vote AS V
# ON C.id = V.candidateId
# GROUP BY name
# ORDER BY cnt DESC
# LIMIT 1) AS A





























# SELECT A.name FROM 
# (SELECT  C.name, COUNT(C.id) AS cnt
# FROM Candidate AS C
# JOIN Vote AS V
# ON C.id = V.candidateId
# GROUP BY C.name
# ORDER BY COUNT(C.id) DESC) AS A
# LIMIT 1




























# Write your MySQL query statement below
# SELECT A.name FROM (SELECT  C.name,  COUNT(candidateID) AS TOTAL
# FROM Candidate AS C
# JOIN Vote AS V
# ON C.id = V.candidateId
# GROUP BY  name) AS A
# ORDER BY total DESC
# LIMIT 1

