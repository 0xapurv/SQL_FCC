-- youtube link - <https://www.youtube.com/watch?v=iPEmGpI3OGU&t=2s>

-- syntax
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

SELECT Ename, Lname
FROM employee
WHERE deptname IN(
    SELECT deptname
    FROM employee
    GROUP BY deptname
    HAVING count(*)<2
);
