CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    join_date DATE
);

INSERT INTO Employees (emp_name, department, salary, join_date) VALUES
('Surya', 'IT', 60000, '2022-03-15'),
('Anjali', 'HR', 45000, '2021-06-20'),
('Ravi', 'Finance', 50000, '2020-01-10'),
('Priya', 'IT', 65000, '2023-01-25'),
('Karan', 'Finance', 55000, '2021-12-01'),
('Neha', 'HR', 47000, '2022-07-30'),
('Amit', 'IT', 62000, '2020-08-18');

SELECT SUM(salary) AS total_salary FROM Employees;

SELECT AVG(salary) AS average_salary FROM Employees;

SELECT COUNT(*) AS total_employees FROM Employees;

SELECT department, SUM(salary) AS total_salary FROM Employees GROUP BY department;

SELECT department, AVG(salary) AS average_salary FROM Employees GROUP BY department;

SELECT department, SUM(salary) AS total_salary FROM Employees GROUP BY department HAVING SUM(salary) > 110000;

SELECT department, YEAR(join_date) AS join_year, COUNT(*) AS total_employees FROM Employees GROUP BY department, YEAR(join_date);

SELECT COUNT(DISTINCT department) AS unique_departments FROM Employees;

