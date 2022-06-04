WITH RECURSIVE cte AS(
SELECT E.employee_id, E.employee_name, 1 AS lvl
FROM Employees AS E
WHERE manager_id = 1
UNION 
SELECT E.employee_id, E.employee_name, c.lvl+1 AS lvl
    FROM cte AS C
    JOIN Employees AS E
    ON E.manager_id = C.employee_id
WHERE lvl <= 3)
    
SELECT DISTINCT employee_id FROM cte WHERE employee_id not in (SELECT employee_id FROM Employees WHERE employee_id = manager_id)































# # Write your MySQL query statement below
# WITH RECURSIVE cte_levels AS
# (
#   SELECT employee_id, employee_name, manager_id, 1 as lvl
#     FROM employees
#    WHERE manager_id = 1
#    UNION ALL
#   SELECT E.employee_id, E.employee_name, E.manager_id, c.lvl+1  as lvl
#     FROM cte_levels AS C
#     JOIN employees AS E ON E.manager_id = C.employee_id
#     WHERE lvl <= 3
# )
# SELECT DISTINCT employee_id FROM cte_levels WHERE employee_id not in (SELECT employee_id FROM Employees 
#                                                                 WHERE employee_id = manager_id);