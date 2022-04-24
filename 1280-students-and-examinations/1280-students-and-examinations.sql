# # Write your MySQL query statement below

SELECT S.student_id, S.student_name, sub.subject_name, COUNT(E.student_id) AS attended_exams
FROM students AS S 
CROSS JOIN Subjects AS sub
LEFT JOIN Examinations AS E
ON S.student_id = E.student_id
AND Sub.subject_name = E.subject_name 
GROUP BY S.student_id, S.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name 
