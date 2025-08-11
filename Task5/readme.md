# Task 5 - SQL Joins (SalesDB)

## Objective
Learn to combine data from multiple tables using different types of SQL joins.

## Tools Used
- MySQL Workbench

## Database Overview
**Database Name:** `SalesDB`  

### Tables:
1. **Customers**
   - `customer_id` (Primary Key)
   - `customer_name`
   - `city`

2. **Orders**
   - `order_id` (Primary Key)
   - `customer_id` (Foreign Key → Customers.customer_id)
   - `product_name`
   - `quantity`
   - `price`
   - `order_date`

## Task Summary
- Created two related tables: `Customers` and `Orders`.
- Inserted sample customer and order records.
- Applied:
  - **INNER JOIN** → Shows only matching rows in both tables.
  - **LEFT JOIN** → Shows all rows from `Customers` with matching orders (if any).
  - **RIGHT JOIN** → Shows all rows from `Orders` with matching customers (if any).
  - **FULL JOIN** (via `UNION` of LEFT + RIGHT JOIN) → Shows all rows from both tables.

## Key Learnings
- Joins are used to merge data across tables based on relationships.
- Foreign keys ensure data integrity between related tables.
- `FULL JOIN` is not directly available in MySQL; can be simulated with `UNION`.
