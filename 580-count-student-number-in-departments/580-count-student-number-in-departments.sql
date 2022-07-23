# Write your MySQL query statement below
SELECT D.dept_name, IFNULL(count(student_id),0) AS student_number
FROM Student AS S
RIGHT JOIN Department AS D
ON S.dept_id = D.dept_id 
GROUP BY dept_name 
ORDER BY student_number DESC, dept_name




























# SELECT dept_name, ifnull(count(S.dept_id),0) as student_number 
# FROM Student AS S
# RIGHT JOIN Department AS D
# ON S.dept_id = D.dept_id 
# GROUP BY dept_name 
# ORDER BY student_number  DESC



























# SELECT D.dept_name, COUNT(S.student_id) AS student_number
# FROM Student AS S
# RIGHT JOIN Department AS D
# ON S.dept_id = D.dept_id 
# GROUP BY D.dept_name
# ORDER BY student_number DESC, D.dept_name




























# SELECT dept_name, COUNT(S.student_id) AS student_number
# FROM Student AS S
# RIGHT JOIN Department AS D
# ON S.dept_id = D.dept_id
# GROUP BY dept_name
# ORDER BY student_number DESC, dept_name


