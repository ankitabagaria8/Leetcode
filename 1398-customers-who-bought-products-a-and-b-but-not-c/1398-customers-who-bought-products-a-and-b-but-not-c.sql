# Write your MySQL query statement below


SELECT A.customer_id, A.customer_name FROM (SELECT customer_name, C.customer_id,
SUM(CASE WHEN product_name in ('A','B') THEN 1 ELSE 0 END) AS a_or_b,
SUM(CASE WHEN product_name = 'C' THEN 1 ELSE 0 END) AS c
FROM Customers AS C
JOIN Orders AS O
ON C.customer_id = O.customer_id 
WHERE product_name IN ('A','B','C')
GROUP BY customer_name, customer_id
HAVING a_or_b >= 2 AND c = 0) AS A

