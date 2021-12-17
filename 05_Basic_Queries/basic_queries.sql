CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20)
);

DROP TABLE student;

INSERT INTO student(name,major) VALUES('Jack','Biology');
INSERT INTO student(name,major) VALUES('Katie','Sociology');
INSERT INTO student(name,major) VALUES('Claire','English');
INSERT INTO student(name,major) VALUES('Jack','Biology');
INSERT INTO student(name,major) VALUES('Mike','Computer Science');


SELECT * FROM student;

Select name, major
From student;

SELECT student.name, student.major
FROM student
ORDER BY name;

SELECT student.name, student.major
FROM student
ORDER BY name DESC;

SELECT *
FROM student
ORDER BY student_id DESC;


SELECT *
FROM student
ORDER BY major,student_id;

SELECT *
FROM student
ORDER BY major DESC,student_id DESC;  -- first priority is the major, then the student_id 

SELECT *
FROM student
ORDER BY student_id DESC
LIMIT 2;   -- limit the number of rows returned

SELECT name, major
FROM student
WHERE major = 'Biology' OR major = 'Computer Science';

-- <, >, <=, >=, <>, AND, OR

SELECT name, major
FROM student
WHERE major <> 'Biology';

Select *
FROM student
WHERE student_id <= 4;

SELECT *
FROM student
WHERE student_id <=3 AND name <> 'Jack';

SELECT *
FROM student
WHERE name IN ('Claire','Katie','Mike'); -- IN is a list of values

SELECT *
FROM student
WHERE major IN ('Biology','Chemistry') AND student_id > 2;