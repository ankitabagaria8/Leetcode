# Write your MySQL query statement below

SELECT first_col, second_col FROM
(SELECT first_col, ROW_NUMBER() OVER(ORDER BY first_col) AS num1 FROM Data 
) AS A
JOIN
(SELECT  ROW_NUMBER() OVER(ORDER BY second_col DESC) AS num2, second_col FROM Data) AS B
ON A.num1 = B.num2





# SELECT D1.first_col, D2.second_col FROM
# (SELECT first_col, ROW_NUMBER() OVER(ORDER BY first_col) AS row1
# FROM Data) AS D1
# JOIN
# (SELECT second_col, ROW_NUMBER() OVER(ORDER BY second_col DESC) AS row2
# FROM Data) AS D2
# ON D1.row1 = D2.row2
