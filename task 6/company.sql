
CREATE DATABASE CompanyDB;
USE CompanyDB;


CREATE TABLE Employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);


CREATE TABLE Departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert 
INSERT INTO Employees (emp_name, department, salary) VALUES
('Surya', 'IT', 60000),
('Anjali', 'HR', 45000),
('Ravi', 'Finance', 50000),
('Priya', 'IT', 65000),
('Karan', 'Finance', 55000),
('Neha', 'HR', 47000),
('Amit', 'IT', 62000);

-- Insert 
INSERT INTO Departments (dept_name) VALUES
('IT'), ('HR'), ('Finance'), ('Marketing');

-- 1. Scalar Subquery 
SELECT emp_name, salary
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

-- 2. Multiple-Row Subquery with IN 
SELECT emp_name, department
FROM Employees
WHERE department IN (
    SELECT dept_name FROM Departments WHERE dept_name IN ('IT', 'HR')
);


-- 3. Correlated Subquery 
SELECT emp_name, department, salary
FROM Employees e
WHERE salary = (
    SELECT MAX(salary) FROM Employees
    WHERE department = e.department
);

-- 4. EXISTS Subquery 
SELECT dept_name
FROM Departments d
WHERE EXISTS (
    SELECT * FROM Employees e
    WHERE e.department = d.dept_name
);

-- 5. Subquery in FROM Clause 
SELECT department, avg_salary
FROM (
    SELECT department, AVG(salary) AS avg_salary
    FROM Employees
    GROUP BY department
) AS dept_summary;
