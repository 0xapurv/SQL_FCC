 -- find the numbers of employees
 SELECT COUNT(emp_id)
 FROM employee;

 -- find the numbers of employees who has a supervisor
 SELECT COUNT(super_id)
 FROM employee;

 -- find the number of female employees born after 1970
 SELECT COUNT(emp_id)
 FROM employee
 WHERE sex = 'F' AND birth_day >= '1970-01-01';

 -- find the average of all the employee's salary
 SELECT AVG(salary)
 FROM employee;

 -- find the average of the employee's salary among males
 SELECT AVG(salary)
 FROM employee
 WHERE sex = 'M';

 -- find the sum of all employee's salaries
 SELECT SUM(salary)
 FROM employee;

 -- find out how many males and females there are
 -- agregation
 SELECT COUNT(sex), sex
 FROM employee
 GROUP BY sex;      -- GROUP BY is used for aggregation of data

 -- find out the total sales of each salesman
 SELECT SUM(total_sales), emp_id
 FROM works_with
 GROUP BY emp_id;

 -- find the sum of total spending of the client
 SELECT SUM(total_sales), client_id
 FROM works_with
 GROUP BY client_id;
