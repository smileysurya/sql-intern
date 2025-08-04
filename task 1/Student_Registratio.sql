create database Student_Registration_System;
use Student_Registration_System;
-- Student table
CREATE TABLE Student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    dob DATE
);

SELECT * FROM Student;

INSERT INTO Student (name, email, dob) VALUES
('Surya', 'surya@example.com', '2003-04-01'),
('Anjali', 'anjali@example.com', '2004-01-12'),
('Kiran', 'kiran@example.com', '2002-11-30');

SELECT * FROM Student;

UPDATE Student
SET dob = '2004-05-10'
WHERE name = 'Surya';

SELECT * FROM Student;

RENAME TABLE Student TO Learner;

SELECT * FROM Student;

TRUNCATE TABLE Student;


-- Department table
CREATE TABLE Department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
SELECT * FROM Department;

--Insert Data
INSERT INTO Department (name) VALUES
('Computer Science'),
('Mechanical Engineering'),
('Mathematics');
SELECT * FROM Department;



-- Instructor table
CREATE TABLE Instructor (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);
SELECT * FROM Instructor
INSERT INTO Instructor (name, email, department_id) VALUES
('Dr. Smith', 'smith@univ.edu', 1),
('Prof. John', 'john@univ.edu', 2),
('Dr. Alice', 'alice@univ.edu', 3);

-- Course table
CREATE TABLE Course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    credits INT,
    instructor_id INT,
    department_id INT,
    FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id),
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

SELECT * FROM Course;

INSERT INTO Course (name, description, credits, instructor_id, department_id) VALUES
('Data Structures', 'Study of Trees and Graphs', 4, 1, 1),
('Thermodynamics', 'Heat and energy systems', 3, 2, 2),
('Algebra', 'Linear Algebra and Matrices', 3, 3, 3);

SELECT * FROM Course;

SELECT s.name AS student_name, c.name AS course_name
FROM Student s
JOIN Registration r ON s.student_id = r.student_id
JOIN Course c ON r.course_id = c.course_id;

SELECT * FROM Course;
-- Registration table
CREATE TABLE Registration (
    reg_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    reg_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

SELECT * FROM Registration;

INSERT INTO Registration (student_id, course_id) VALUES
(1, 1), 
(2, 2), 
(3, 3), 
(1, 3); 

SELECT * FROM Registration;

DELETE FROM Registration
WHERE reg_id = 1;

SELECT * FROM Registration;


DROP TABLE Registration;



