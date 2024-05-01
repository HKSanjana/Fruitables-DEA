CREATE TABLE `tbladmin` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT,
 `added_date` datetime NOT NULL,
 `email` varchar(100) NOT NULL,
 `password` varchar(100) NOT NULL,
 `name` varchar(100) NOT NULL,
 PRIMARY KEY (`id`)
) ;

CREATE TABLE `tblcart` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT,
 `discount_price` varchar(200) DEFAULT NULL,
 `quantity` int(11) NOT NULL,
 `total_price` varchar(200) DEFAULT NULL,
 `customer_id` bigint(20) NOT NULL,
 `product_id` bigint(20) NOT NULL,
 `mrp_price` varchar(200) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ;

CREATE TABLE `tblcustomer` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `address` varchar(255) NOT NULL,
 `added_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
 `email` varchar(100) NOT NULL,
 `gender` varchar(6) NOT NULL,
 `name` varchar(50) NOT NULL,
 `password` varchar(60) NOT NULL,
 `phone` varchar(200) NOT NULL,
 `pin_code` varchar(255) NOT NULL,
 PRIMARY KEY (`id`)
) ;

CREATE TABLE `tblorders` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `order_no` int(11) DEFAULT NULL,
 `customer_name` varchar(200) DEFAULT NULL,
 `mobile_number` varchar(100) DEFAULT NULL,
 `email_id` varchar(100) DEFAULT NULL,
 `address` varchar(400) DEFAULT NULL,
 `address_type` varchar(100) DEFAULT NULL,
 `pincode` varchar(100) DEFAULT NULL,
 `image` varchar(200) DEFAULT NULL,
 `product_name` varchar(400) DEFAULT NULL,
 `quantity` int(11) DEFAULT NULL,
 `product_price` varchar(100) DEFAULT NULL,
 `product_selling_price` varchar(100) DEFAULT NULL,
 `product_total_price` varchar(100) DEFAULT NULL,
 `order_status` varchar(100) DEFAULT NULL,
 `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
 `payment_mode` varchar(100) DEFAULT NULL,
 `payment_id` int(11) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ;

CREATE TABLE `tblproduct` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT,
 `active` varchar(100) DEFAULT NULL,
 `code` varchar(5) DEFAULT NULL,
 `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `description` varchar(255) DEFAULT NULL,
 `image` varchar(100) DEFAULT NULL,
 `image_name` varchar(400) DEFAULT NULL,
 `name` varchar(30) DEFAULT NULL,
 `price` varchar(200) DEFAULT NULL,
 `mrp_price` varchar(200) DEFAULT NULL,
 `product_category` varchar(100) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ;

