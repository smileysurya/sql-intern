# Task 7 - Creating Views

## Objective
Learn to create and use SQL Views for data abstraction, simplification, and security.

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
  - `join_date`

## Task Summary
- Created `Employees` table with sample employee data.
- Implemented multiple SQL views:
  1. **IT_Employees** → Displays employees only from the IT department.
  2. **Dept_Avg_Salary** → Shows the average salary for each department.
  3. **High_Salary_Employees** → Displays employees with salaries above 55,000 and uses `WITH CHECK OPTION` to enforce this rule.
- Demonstrated how to **select**, **update** through a view, and **drop** a view.


## Commands Used
- `CREATE VIEW`
- `SELECT FROM view_name` 
- `UPDATE view_name` .
- `DROP VIEW` 
