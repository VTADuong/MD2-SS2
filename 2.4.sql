CREATE TABLE users(
	`id` INT PRIMARY KEY,
    `username` VARCHAR (100) UNIQUE,
    `pass` INT (10) NOT NULL,
    `status` VARCHAR (10) DEFAULT 'ACTIVE' CHECK (`status` IN ('ACTIVE', 'INACTIVE'))
);