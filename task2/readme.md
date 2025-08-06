#  Movie Management System (MySQL Project)

##  Overview
This project is a simple Movie Management System built using **MySQL**. It allows you to store and manage data about movies, directors, and actors using SQL queries and relational tables.

---

##  Database Schema

### 1. `Movie` Table
Stores details about each movie.

- `movie_id` – Primary Key
- `title` – Movie title
- `genre` – Type of movie (e.g., Action, Romance)
- `release_date` – Release date of the movie
- `duration` – Duration in minutes
- `director_id` – Foreign Key referencing `Director.director_id`

### 2. `Director` Table
Stores information about directors.

- `director_id` – Primary Key
- `name` – Full name of the director
- `dob` – Date of birth

### 3. `Actor` Table
Stores information about actors.

- `actor_id` – Primary Key
- `name` – Full name of the actor
- `dob` – Date of birth

---

##  Relationships

- One **Director** can direct many **Movies** (One-to-Many)
- Actors are stored independently (no many-to-many implemented yet)

---

##  Sample SQL Features Used

- ✅ `CREATE TABLE` – Define structure
- ✅ `INSERT INTO` – Add records
- ✅ `UPDATE` – Modify existing data
- ✅ `DELETE` – Remove data
- ✅ `SELECT` – View table contents
- ✅ `FOREIGN KEY` – Create relationships

