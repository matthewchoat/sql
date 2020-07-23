CREATE TABLE `customers` (
	`customer_id` int NOT NULL AUTO_INCREMENT,
	`customer_name` varchar(100) NOT NULL AUTO_INCREMENT,
	`customer_address` varchar(100) NOT NULL,
	`customer_email` varchar(100) NOT NULL,
	`customer_phone` int NOT NULL,
	PRIMARY KEY (`customer_id`)
);

CREATE TABLE `products` (
	`product_id` int NOT NULL AUTO_INCREMENT,
	`product_name` varchar(100) NOT NULL,
	`product_desc` varchar(500) NOT NULL,
	`product_price` DECIMAL NOT NULL,
	`product_modelnum` varchar(100) NOT NULL,
	`vendor_id` int NOT NULL,
	PRIMARY KEY (`product_id`)
);

CREATE TABLE `vendors` (
	`vendor_id` int NOT NULL AUTO_INCREMENT,
	`vendor_name` varchar(100) NOT NULL,
	`vendor_address` varchar(100) NOT NULL,
	`vendor_email` varchar(100) NOT NULL,
	`vendor_phone` varchar(100) NOT NULL,
	PRIMARY KEY (`vendor_id`)
);

CREATE TABLE `customer_orders` (
	`order_id` int NOT NULL AUTO_INCREMENT,
	`order_datetime` DATETIME NOT NULL,
	`order_total` DECIMAL NOT NULL,
	`customer_id` int NOT NULL,
	PRIMARY KEY (`order_id`)
);

CREATE TABLE `order_product` (
	`order_product_id` int NOT NULL AUTO_INCREMENT,
	`order_id` int NOT NULL,
	`product_id` int NOT NULL,
	`quantity` int NOT NULL,
	`order_price` DECIMAL NOT NULL DEFAULT 'product_price * quantity',
	PRIMARY KEY (`order_product_id`)
);

ALTER TABLE `products` ADD CONSTRAINT `products_fk0` FOREIGN KEY (`vendor_id`) REFERENCES `vendors`(`vendor_id`);

ALTER TABLE `customer_orders` ADD CONSTRAINT `customer_orders_fk0` FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`);

ALTER TABLE `order_product` ADD CONSTRAINT `order_product_fk0` FOREIGN KEY (`order_id`) REFERENCES `customer_orders`(`order_id`);

ALTER TABLE `order_product` ADD CONSTRAINT `order_product_fk1` FOREIGN KEY (`product_id`) REFERENCES `products`(`product_id`);

