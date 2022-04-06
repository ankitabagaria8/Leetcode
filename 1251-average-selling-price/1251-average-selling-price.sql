# Write your MySQL query statement below
SELECT P.product_id, round(sum(units*price)/sum(units),2) AS average_price
FROM Prices AS P
JOIN UnitsSold AS U
ON P.product_id = U.product_id 
WHERE purchase_date <= end_date AND purchase_date >= start_date
GROUP BY product_id