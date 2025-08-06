CREATE DATABASE MovieManagementSystem;
USE MovieManagementSystem;

-- 1. Movie Table
CREATE TABLE Movie (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    release_date DATE,
    duration INT -- in minutes
);


INSERT INTO Movie (title, genre, release_date, duration) VALUES
('maanaadu', 'Sci-Fi', '2021-08-11', 148),
('vaanam', 'Romance', '2011-11-11', 195),
('Silambattam', 'Action', '2008-03-05', 152);

UPDATE Movie SET duration = 150 WHERE movie_id=2;

DELETE FROM Movie WHERE movie_id=1;

SELECT * FROM Movie;



-- 2. Director Table
CREATE TABLE Director (
    director_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE
);
INSERT INTO Director (name, dob) VALUES
('S.J. Surya', '1984-07-30'),
('Mysskin', '1976-12-18'),
('GVM', '1983-08-16');

update Director set name="str" where director_id=1;

DELETE FROM Director WHERE director_id = 3;

SELECT * FROM Director;

-- 3. Actor Table
CREATE TABLE Actor (
    actor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE
);

INSERT INTO Actor (name, dob) VALUES
('Str', '1984-02-03'),
('surya', '1975-06-22'),
('dhanush', '1983-07-28');

update Director set name="karthi" where director_id=3;

DELETE FROM Actor WHERE actor_id = 2;

SELECT * FROM Actor;


