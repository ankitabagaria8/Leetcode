# Write your MySQL query statement below

# DELETE FROM Person WHERE ID NOT IN 
# (SELECT A.id from (SELECT MIN(id) AS id FROM Person 
# GROUP BY email) AS A)


DELETE FROM Person WHERE id IN (SELECT * FROM (SELECT id FROM PERSON WHERE id 
 NOT IN (SELECT MIN(id) AS id FROM Person Group by email)) B);

