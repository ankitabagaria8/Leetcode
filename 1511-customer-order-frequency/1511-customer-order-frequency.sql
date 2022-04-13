# Write your MySQL query statement below
SELECT A.customer_id, A.name FROM (SELECT C.customer_id, C.name, MONTH(order_date) as mth, SUM(price*quantity) AS total_sales
FROM Customers AS C
JOIN Orders AS O ON O.customer_id = C.customer_id
JOIN Product AS P ON O.product_id = P.product_id 
WHERE (MONTH(order_date) IN (06,07)) AND YEAR(order_date) = 2020
GROUP BY C.customer_id, C.name, mth
HAVING total_sales >= 100 ) AS A
GROUP BY A.customer_id 
HAVING COUNT(A.mth) =  2
