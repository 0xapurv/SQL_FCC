-- % = any number character
-- _ = one character

-- find any client's who are an LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- find any branch supplier who are in the label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%Label%';

-- find any employee born in october
SELECT *
FROM employee
WHERE birth_day LIKE '%-10-%'; --  or '____-10%' (4 times underscore, hyphen, percentage)

-- find any clients who are schools
SELECT *
FROM client
WHERE client_name LIKE "%School%";  -- its not case sensitive