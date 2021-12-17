CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20)
);

DROP TABLE student;

INSERT INTO student(name,major) VALUES('Jack','Biology');
INSERT INTO student(name,major) VALUES('Katie','Sociology');
INSERT INTO student(name,major) VALUES('Claire','English');
INSERT INTO student(name,major) VALUES('JAck','Biology');
INSERT INTO student(name,major) VALUES('Mike','Computer Science');


Select * FROM student;

UPDATE student 
SET major = "Bio"
WHERE major = "Biology";

UPDATE student
SET major = "Computer Science"
WHERE student_id = 4;

UPDATE student
SET major = "BioChemistry"
WHERE major = "Bio" OR major ="Sociology";

UPDATE student
SET name = "TOM", major = "undecided"
WHERE student_id = 1;


UPDATE student                                              -- update all the rows with major = "undecided"
SET major = "undecided";


DELETE FROM student;                                        -- delete all the rows

DELETE FROM student
WHERE student_id = 1;

DELETE FROM student
WHERE name = "Jack" AND major = "Biology";