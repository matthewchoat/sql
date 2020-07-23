CREATE TABLE `products` (
	`product_id` int NOT NULL AUTO_INCREMENT,
	`product_name` varchar(50) NOT NULL,
	`product_desc` varchar(255) NOT NULL,
	`product_price` int NOT NULL,
	PRIMARY KEY (`product_id`)
);

CREATE TABLE `ratings` (
	`rating_id` int NOT NULL AUTO_INCREMENT,
	`product_id` int NOT NULL,
	`rating` int NOT NULL,
	PRIMARY KEY (`rating_id`)
);

CREATE TABLE `customer_demographics` (
	`customer_id` int NOT NULL AUTO_INCREMENT,
	`gender` char,
	`rating_id` int NOT NULL,
	`region` varchar(50),
	`income_scale` varchar(255),
	`age_range` varchar(50),
	PRIMARY KEY (`customer_id`)
);

ALTER TABLE `ratings` ADD CONSTRAINT `ratings_fk0` FOREIGN KEY (`product_id`) REFERENCES `products`(`product_id`);

ALTER TABLE `customer_demographics` ADD CONSTRAINT `customer_demographics_fk0` FOREIGN KEY (`rating_id`) REFERENCES `ratings`(`rating_id`);

