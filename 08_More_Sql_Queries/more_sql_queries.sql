-- find all employee
SELECT *
FROM employee;

-- find all employee ordered by salary
SELECT *
FROM employee
ORDER BY salary DESC;

-- find all employee ordered by sex then name
SELECT *
FROM employee
ORDER BY sex,first_name, last_name;


-- find the first 5 employees from the table
SELECT *
FROM employee
LIMIT 5;

-- Find the forename and surname names of all employees
SELECT first_name AS forename, last_name AS surname
FROM employee;

-- find all the different genders
SELECT DISTINCT sex
FROM employee;

-- find all the different branch id from employee table
SELECT DISTINCT branch_id
FROM employee;