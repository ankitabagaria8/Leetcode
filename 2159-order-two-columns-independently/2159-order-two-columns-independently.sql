# Write your MySQL query statement below
SELECT D1.first_col, D2.second_col FROM
(SELECT first_col, ROW_NUMBER() OVER(ORDER BY first_col) AS row1
FROM Data) AS D1
JOIN
(SELECT second_col, ROW_NUMBER() OVER(ORDER BY second_col DESC) AS row2
FROM Data) AS D2
ON D1.row1 = D2.row2
