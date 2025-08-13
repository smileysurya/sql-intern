# Task 6 - Subqueries and Nested Queries

## Objective
Practice using different types of SQL subqueries to filter, calculate, and analyze data.

## Tools Used
- MySQL Workbench

## Database Overview
**Database Name:** `CompanyDB`  

### Tables:
1. **Employees**
   - `emp_id` (Primary Key)
   - `emp_name`
   - `department`
   - `salary`

2. **Departments**
   - `dept_id` (Primary Key)
   - `dept_name`

## Task Summary
- Created `Employees` and `Departments` tables.
- Inserted sample data into both tables.
- Implemented different subquery types:
  1. **Scalar Subquery** → Compare each employee's salary with the average salary.
  2. **Multiple-Row Subquery (IN)** → Find employees in IT or HR.
  3. **Correlated Subquery** → Find employees with the highest salary in each department.
  4. **EXISTS Subquery** → List departments that have at least one employee.
  5. **Subquery in FROM Clause (Derived Table)** → Show average salary per department.

