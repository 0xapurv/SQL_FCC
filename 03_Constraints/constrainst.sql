CREATE TABLE student (
    student_id INT PRIMARY KEY, -- primary key is both NOT NULL and UNIQUE
    name VARCHAR(20) NOT NULL, -- NOT NULL means the column must have a value when the row is inserted
    major VARCHAR(20) UNIQUE   -- UNIQUE means the column must have a unique value 
    gpa DECIMAL(3,2) default 0.0 -- default means the column will have a default value if it is not specified
    );

DROP TABLE student;