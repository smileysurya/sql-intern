-- Create Database
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Create  Table
CREATE TABLE Employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Insert  Data
INSERT INTO Employees (emp_name, department, salary) VALUES
('Surya', 'IT', 60000),
('Anjali', 'HR', 45000),
('Ravi', 'Finance', 50000),
('Priya', 'IT', 65000),
('Karan', 'Finance', 55000),
('Neha', 'HR', 47000),
('Amit', 'IT', 62000);

-- Stored Procedure: Get employees by department
DELIMITER //
CREATE PROCEDURE GetEmployeesByDept(IN deptName VARCHAR(50))
BEGIN
    SELECT emp_id, emp_name, salary
    FROM Employees
    WHERE department = deptName;
END //
DELIMITER ;

-- Call the Procedure
CALL GetEmployeesByDept('IT');

-- Stored Procedure: Increase salary by percentage
DELIMITER //
CREATE PROCEDURE IncreaseSalary(IN deptName VARCHAR(50), IN percentage DECIMAL(5,2))
BEGIN
    UPDATE Employees
    SET salary = salary + (salary * (percentage / 100))
    WHERE department = deptName;
END //
DELIMITER ;

-- Call the Procedure
CALL IncreaseSalary('HR', 10);

--  Function: Get annual salary of an employee
DELIMITER //
CREATE FUNCTION GetAnnualSalary(empID INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE annual_salary DECIMAL(10,2);
    SELECT salary * 12 INTO annual_salary
    FROM Employees
    WHERE emp_id = empID;
    RETURN annual_salary;
END //
DELIMITER ;

-- Use the Function
SELECT emp_name, GetAnnualSalary(emp_id) AS Annual_Salary
FROM Employees;

-- Function: Get total employees in a department
DELIMITER //
CREATE FUNCTION CountEmployeesInDept(deptName VARCHAR(50)) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE emp_count INT;
    SELECT COUNT(*) INTO emp_count
    FROM Employees
    WHERE department = deptName;
    RETURN emp_count;
END //
DELIMITER ;

-- Use the Function
SELECT CountEmployeesInDept('IT') AS IT_Department_Count;
