-- find names of all employees who have sold over 30,000 to a single client

SELECT DISTINCT employee.first_name, employee.last_name 
FROM employee
JOIN works_with
ON works_with.emp_id = employee.emp_id
WHERE works_with.total_sales > 30000;

-- Nested Query

SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN(
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000
);

-- find all clients who are handled by the branch that Michael Scott manages, assume you know Michael's ID


SELECT client.client_name
FROM client
WHERE client.branch_id IN (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
);

SELECT client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1
);