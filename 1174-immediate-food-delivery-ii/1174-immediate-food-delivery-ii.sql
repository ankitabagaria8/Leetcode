# Write your MySQL query statement below
SELECT ROUND((needed/total)*100,2) AS immediate_percentage FROM
(SELECT DISTINCT A.customer_id, A.date_diff, 
SUM(CASE WHEN date_diff = 0 THEN 1 ELSE 0 END) AS needed, COUNT(*) AS total
FROM
(SELECT customer_id, order_date, customer_pref_delivery_date, 
DATEDIFF(customer_pref_delivery_date,order_date) AS date_diff, 
RANK() OVER (PARTITION BY customer_id ORDER BY order_date) AS Ranking
FROM Delivery) AS A
WHERE ranking = 1) AS B

























# SELECT  
# ROUND((SUM(CASE WHEN B.order_date = B.customer_pref_delivery_date THEN 1 ELSE 0 END)/COUNT(B.customer_id))*100,2) AS immediate_percentage FROM
# (SELECT A.customer_id, A.order_date, A.customer_pref_delivery_date FROM
# (SELECT customer_id, order_date, customer_pref_delivery_date , RANK() OVER(PARTITION BY customer_id ORDER BY order_date) AS ranking
# FROM DElivery) AS A
# WHERE ranking = 1) AS B
