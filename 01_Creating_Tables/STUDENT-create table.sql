CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);

-- or -- 

CREATE TABLE student(
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

DESCRIBE student   -- Describe the table student

DROP TABLE student -- Drop the table student from the database 

ALTER TABLE student ADD gpa DECIMAL(3,2); -- Add a column gpa to the table student

ALTER TABLE student DROP COLUMN gpa;  -- Drop the column gpa from the table student