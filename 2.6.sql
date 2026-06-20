CREATE TABLE orders(
	`order_id` INT PRIMARY KEY,
    `order_date` DATE NOT NULL,
    `status` VARCHAR (10) DEFAULT 'NEW' NOT NULL
);
CREATE TABLE products(
	`product_id` INT PRIMARY KEY,
    `product_name` VARCHAR (50),
    `price` INT
);
CREATE TABLE order_items(
	`order_id` INT NOT NULL,
    `product_id` INT NOT NULL,
    `quantity` INT NOT NULL,
    PRIMARY KEY (`order_id`, `product_id`),
    FOREIGN KEY (`order_id`) REFERENCES orders (`order_id`),
    FOREIGN KEY (`product_id`) REFERENCES products (`product_id`)
);