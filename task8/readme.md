# Task 8 - Stored Procedures and Functions

## Objective
Learn to create and use stored procedures and functions in MySQL to modularize SQL logic for reusability and maintainability.

## Tools Used
- MySQL Workbench

## Database Overview
**Database Name:** `CompanyDB`

### Table:
- **Employees**
  - `emp_id` (Primary Key)
  - `emp_name`
  - `department`
  - `salary`

## Task Summary
- Created an `Employees` table with sample employee data.
- Developed stored procedures:
  1. **GetEmployeesByDept** → Returns all employees in a given department.
  2. **IncreaseSalary** → Increases salaries of employees in a given department by a specified percentage.
- Developed functions:
  1. **GetAnnualSalary** → Returns the annual salary of a specific employee.
  2. **CountEmployeesInDept** → Returns the number of employees in a given department.
- Tested the stored routines with sample calls.

