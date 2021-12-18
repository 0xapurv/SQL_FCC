INSERT INTO branch VALUES(4,'Buffalo',NULL,NULL);

-- find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

-- OR

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM branch
JOIN employee
ON employee.emp_id = branch.mgr_id;

--LEFT JOIN, it will return all the rows from the left table, even if there are no rows in the right table
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- RIGHT JOIN, it will return all the rows from the right table, even if there are no rows in the left table
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;


-- FULL OUTER JOIN : BOHT LEFT & RIGHT JOIN TOGETHER 
-- NOT AVAILABLE IN MYSQL

