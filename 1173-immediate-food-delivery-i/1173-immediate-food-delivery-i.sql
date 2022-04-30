# Write your MySQL query statement below



SELECT round((SUM(B.value_extra)/COUNT(B.value_extra))*100,2) AS  immediate_percentage
FROM
(SELECT CASE WHEN A.total = 'immediate' THEN 1 ELSE 0 END AS value_extra FROM 
(SELECT  
CASE WHEN customer_pref_delivery_date = order_date THEN 'immediate'
ELSE 'scheduled' END AS total
FROM Delivery) AS A ) AS B
