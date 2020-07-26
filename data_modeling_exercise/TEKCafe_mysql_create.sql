CREATE TABLE `customers` (
	`customer_id` BINARY NOT NULL AUTO_INCREMENT,
	`customer-name` varchar(50) NOT NULL AUTO_INCREMENT,
	`customer-email` varchar(100) NOT NULL,
	PRIMARY KEY (`customer_id`)
);

CREATE TABLE `customer_order` (
	`customer_order_id` INT NOT NULL AUTO_INCREMENT,
	`customer_id` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`customer_order_id`)
);

CREATE TABLE `products` (
	`product_id` INT NOT NULL AUTO_INCREMENT,
	`product_name` varchar(50) NOT NULL,
	`product_price` INT NOT NULL,
	`product_type` varchar(50) NOT NULL,
	`product_desc` TEXT NOT NULL,
	PRIMARY KEY (`product_id`)
);

CREATE TABLE `order_items` (
	`order_item_id` INT NOT NULL AUTO_INCREMENT,
	`customer_order_id` INT NOT NULL,
	`product_id` INT NOT NULL,
	`quantity` INT NOT NULL,
	`order_price` INT NOT NULL,
	PRIMARY KEY (`order_item_id`)
);

ALTER TABLE `customer_order` ADD CONSTRAINT `customer_order_fk0` FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`);

ALTER TABLE `order_items` ADD CONSTRAINT `order_items_fk0` FOREIGN KEY (`customer_order_id`) REFERENCES `customer_order`(`customer_order_id`);

ALTER TABLE `order_items` ADD CONSTRAINT `order_items_fk1` FOREIGN KEY (`product_id`) REFERENCES `products`(`product_id`);

