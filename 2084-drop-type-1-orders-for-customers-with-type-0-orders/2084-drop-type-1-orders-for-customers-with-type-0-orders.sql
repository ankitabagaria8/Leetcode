# Write your MySQL query statement below

SELECT * FROM Orders WHERE customer_id IN (SELECT customer_id FROM 
(SELECT customer_id, SUM(val) as type_0 FROM
(SELECT order_id, customer_id, order_type, 
(CASE WHEN order_type = 0 THEN 1 ELSE 0 END) AS val
FROM Orders) AS A
GROUP BY customer_id
HAVING type_0 >= 1) AS B)
AND order_type =0
UNION
SELECT * FROM Orders 
WHERE customer_id NOT IN (SELECT customer_id FROM (SELECT customer_id, SUM(val) as type_0 FROM
(SELECT order_id, customer_id, order_type, 
(CASE WHEN order_type = 0 THEN 1 ELSE 0 END) AS val
FROM Orders) AS A
GROUP BY customer_id
HAVING type_0 >= 1) AS B)









# SELECT * FROM Orders WHERE customer_id IN (SELECT A.customer_id from (SELECT customer_id, count(distinct order_type) AS cnt 
# FROM Orders 
# GROUP BY customer_id
# HAVING cnt = 2) AS A)
# AND order_type = 0
# UNION 
# SELECT * FROM Orders 
# WHERE customer_id NOT IN(SELECT A.customer_id from (SELECT customer_id, count(distinct order_type) AS cnt 
# FROM Orders 
# GROUP BY customer_id
# HAVING cnt = 2) AS A)