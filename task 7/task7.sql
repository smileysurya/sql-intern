-- Create Database
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Create Table
CREATE TABLE Employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    join_date DATE
);

-- Insert
INSERT INTO Employees (emp_name, department, salary, join_date) VALUES
('Surya', 'IT', 60000, '2022-03-15'),
('Anjali', 'HR', 45000, '2021-06-20'),
('Ravi', 'Finance', 50000, '2020-01-10'),
('Priya', 'IT', 65000, '2023-01-25'),
('Karan', 'Finance', 55000, '2021-12-01'),
('Neha', 'HR', 47000, '2022-07-30'),
('Amit', 'IT', 62000, '2020-08-18');

-- 1. Create a View showing only IT Department employees
CREATE VIEW IT_Employees AS
SELECT emp_id, emp_name, salary
FROM Employees
WHERE department = 'IT';

-- 2. Create a View showing average salary by department
CREATE VIEW Dept_Avg_Salary AS
SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department;

-- 3. Create a View with a condition to secure data
CREATE VIEW High_Salary_Employees AS
SELECT emp_name, department, salary
FROM Employees
WHERE salary > 55000
WITH CHECK OPTION; -- Prevents inserting/updating rows that don't match condition


-- 4. Using the Views
SELECT * FROM IT_Employees;
SELECT * FROM Dept_Avg_Salary;
SELECT * FROM High_Salary_Employees;


-- 5. Update data through a View
UPDATE IT_Employees
SET salary = 70000
WHERE emp_id = 1;


-- 6. Drop a View
DROP VIEW IF EXISTS IT_Employees;
