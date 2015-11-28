# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-11-27 21:27                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "Berry company"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `Berry company` (
    `employee_id` VARCHAR(40) NOT NULL,
    `Tel` VARCHAR(40),
    `address` VARCHAR(40),
    CONSTRAINT `PK_Berry company` PRIMARY KEY (`employee_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Product"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Product` (
    `name` VARCHAR(40),
    `id` VARCHAR(40),
    `employee_id` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_Product` PRIMARY KEY (`employee_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Product Detail"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `Product Detail` (
    `name` VARCHAR(40),
    `price` VARCHAR(40),
    `id` VARCHAR(40),
    `employee_id` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_Product Detail` PRIMARY KEY (`employee_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Employee"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Employee` (
    `Em_name` VARCHAR(40),
    `id` VARCHAR(40),
    `address` VARCHAR(40),
    `tel` VARCHAR(40),
    `employee_id` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_Employee` PRIMARY KEY (`employee_id`)
);

# ---------------------------------------------------------------------- #
# Add table "customer"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `customer` (
    `name` VARCHAR(40),
    `id` VARCHAR(40),
    `tel` VARCHAR(40),
    `age` VARCHAR(40),
    `employee_id` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_customer` PRIMARY KEY (`employee_id`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `Employee` ADD CONSTRAINT `Berry company_Employee` 
    FOREIGN KEY (`employee_id`) REFERENCES `Berry company` (`employee_id`);

ALTER TABLE `customer` ADD CONSTRAINT `Employee_customer` 
    FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`employee_id`);

ALTER TABLE `Product` ADD CONSTRAINT `Berry company_Product` 
    FOREIGN KEY (`employee_id`) REFERENCES `Berry company` (`employee_id`);

ALTER TABLE `Product Detail` ADD CONSTRAINT `Product_Product Detail` 
    FOREIGN KEY (`employee_id`) REFERENCES `Product` (`employee_id`);
