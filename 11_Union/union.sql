-- find a list of empliyees and branch names 
SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch 
UNION
SELECT client_name
FROM client;

-- RULE 1: Should be same number of column in all unions
-- RULE 2: Should be of same data type


-- find a list of all clients & branch suppliers names
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- find a list of all money spent or earned by the company
SELECT salary
FROM employee
UNION
SELECT total_sales
FROM works_with;