# Write your MySQL query statement below
SELECT B.product_id, B.product_name, B.customer_id FROM
(SELECT product_id, product_name, customer_id, 
RANK() OVER(PARTITION BY customer_id ORDER BY product_cnt DESC) AS ranking FROM
(SELECT O.product_id, product_name, customer_id, COUNT(O.product_id) AS product_cnt
FROM Orders AS O
JOIN Products AS P
ON O.product_id = P.product_id 
GROUP BY customer_id, product_id, product_name) AS A) AS B
WHERE ranking = 1
