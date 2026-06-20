CREATE TABLE students_constraint(
	`id` INT PRIMARY KEY,
    `fullname` VARCHAR (100) NOT NULL,
    `email` VARCHAR (100) UNIQUE,
    `age` INT CHECK (`age` >= 18)
);