 Student Registration System (MySQL)

##  Overview
This project defines a normalized database schema for managing students, departments, and their course registrations.

## Tables
- **Student**: Stores student details
- **Department**: Academic departments
- **Instructor** *(optional)*: Linked to departments
- **Course** *(optional)*: Linked to departments and instructors
- **Registration** *(optional)*: Many-to-many between students and courses

##  Key Concepts
- `PRIMARY KEY`, `FOREIGN KEY`
- `AUTO_INCREMENT`, `UNIQUE`
- `ALTER`, `TRUNCATE`, `RENAME`

##  Tools
- MySQL Workbench
- ER Diagram: [Attached Image]

##  Files
- `Student_Registratio.sql` – full DDL and insert script
- `er_diagram.png` – entity relationship diagram
