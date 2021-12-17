CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);

INSERT INTO student VALUES(1,'JACK','Biology');
INSERT INTO student VALUES(2, 'Kate','Sociology');
INSERT INTO student(student_id,name) VALUES(3,'Claire');

Select * FROM student