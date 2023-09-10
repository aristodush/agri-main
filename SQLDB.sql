-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema agri
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema agri
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `agri` DEFAULT CHARACTER SET utf8mb4 ;
USE `agri` ;

-- -----------------------------------------------------
-- Table `agri`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agri`.`Order` (
  `productName` VARCHAR(9) NULL DEFAULT NULL,
  `price` SMALLINT(6) NULL DEFAULT NULL,
  `status` VARCHAR(9) NULL DEFAULT NULL,
  `unity` VARCHAR(8) NULL DEFAULT NULL,
  `quantity` SMALLINT(6) NULL DEFAULT NULL,
  `location` VARCHAR(16) NULL DEFAULT NULL,
  `request` TEXT NULL DEFAULT NULL,
  `response` VARCHAR(218) NULL DEFAULT NULL,
  `created` DATETIME NULL DEFAULT NULL,
  `orderId` INT NOT NULL AUTO_INCREMENT,
  `buyer_id` VARCHAR(32) NULL DEFAULT NULL,
  `seller_id` VARCHAR(32) NULL DEFAULT NULL,
  `ProductId` VARCHAR(36) NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `agri`.`Payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agri`.`Payment` (
  `name` VARCHAR(14) NULL DEFAULT NULL,
  `created` DATETIME NULL DEFAULT NULL,
  `payId` INT NOT NULL,
  `product_id` VARCHAR(45) NULL,
  `payment_id` VARCHAR(45) NULL,
  PRIMARY KEY (`payId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `agri`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agri`.`Product` (
  `description` TEXT NULL DEFAULT NULL,
  `image` VARCHAR(43) NULL DEFAULT NULL,
  `quantity` SMALLINT(6) NULL DEFAULT NULL,
  `location` VARCHAR(18) NULL DEFAULT NULL,
  `instock` VARCHAR(36) NULL DEFAULT NULL,
  `vote_total` VARCHAR(2) NULL DEFAULT NULL,
  `vote_ratio` TINYINT(4) NULL DEFAULT NULL,
  `created` DATETIME NULL DEFAULT NULL,
  `pro_id` INT NOT NULL AUTO_INCREMENT,
  `name_id` VARCHAR(32) NULL DEFAULT NULL,
  `owner_id` VARCHAR(32) NULL DEFAULT NULL,
  `updated` VARCHAR(10) NULL DEFAULT NULL,
  `cat_id` VARCHAR(45) NULL,
  `Productcol` VARCHAR(45) NULL,
  PRIMARY KEY (`pro_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `agri`.`Review`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agri`.`Review` (
  `body` VARCHAR(0) NULL DEFAULT NULL,
  `value` VARCHAR(299) NULL DEFAULT NULL,
  `created` DATETIME NULL DEFAULT NULL,
  `rid` INT NOT NULL AUTO_INCREMENT,
  `owner_id` VARCHAR(0) NULL DEFAULT NULL,
  `product_id` VARCHAR(0) NULL DEFAULT NULL,
  PRIMARY KEY (`rid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `agri`.`Category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agri`.`Category` (
  `name` VARCHAR(9) NULL DEFAULT NULL,
  `price` SMALLINT(6) NULL DEFAULT NULL,
  `unity` VARCHAR(8) NULL DEFAULT NULL,
  `created` DATETIME NULL DEFAULT NULL,
  `cat_id` INT NOT NULL AUTO_INCREMENT,
  `updated` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`cat_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `agri`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agri`.`User` (
  `userid` INT NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(88) NULL DEFAULT NULL,
  `is_superuser` TINYINT(4) NULL DEFAULT NULL,
  `username` VARCHAR(11) NULL DEFAULT NULL,
  `first_name` VARCHAR(21) NULL DEFAULT NULL,
  `last_name` VARCHAR(0) NULL DEFAULT NULL,
  `email` VARCHAR(27) NULL DEFAULT NULL,
  `is_staff` TINYINT(4) NULL DEFAULT NULL,
  `phone` VARCHAR(13) NULL DEFAULT NULL,
  `role` VARCHAR(8) NULL DEFAULT NULL,
  `status` VARCHAR(7) NULL DEFAULT NULL,
  `date_joined` DATETIME NULL,
  PRIMARY KEY (`userid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `agri`.`Inquiry`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agri`.`Inquiry` (
  `name` VARCHAR(10) NULL DEFAULT NULL,
  `email` VARCHAR(22) NULL DEFAULT NULL,
  `subject` VARCHAR(14) NULL DEFAULT NULL,
  `body` TEXT NULL DEFAULT NULL,
  `reply` TEXT NULL DEFAULT NULL,
  `attachment` VARCHAR(0) NULL DEFAULT NULL,
  `is_read` TINYINT(4) NULL DEFAULT NULL,
  `status` VARCHAR(8) NULL DEFAULT NULL,
  `created` DATETIME NULL DEFAULT NULL,
  `InqId` INT NOT NULL,
  `sender_id` VARCHAR(36) NULL DEFAULT NULL,
  PRIMARY KEY (`InqId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `agri`.`Message`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agri`.`Message` (
  `name` VARCHAR(17) NULL DEFAULT NULL,
  `email` VARCHAR(22) NULL DEFAULT NULL,
  `subject` VARCHAR(30) NULL DEFAULT NULL,
  `body` VARCHAR(45) NULL DEFAULT NULL,
  `attachment` VARCHAR(0) NULL DEFAULT NULL,
  `is_read` TINYINT(4) NULL DEFAULT NULL,
  `created` DATETIME NULL DEFAULT NULL,
  `mid` INT NOT NULL AUTO_INCREMENT,
  `recipient_id` VARCHAR(32) NULL DEFAULT NULL,
  `sender_id` VARCHAR(36) NULL DEFAULT NULL,
  PRIMARY KEY (`mid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `agri`.`Profile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agri`.`Profile` (
  `name` VARCHAR(21) NULL DEFAULT NULL,
  `email` VARCHAR(27) NULL DEFAULT NULL,
  `born` VARCHAR(0) NULL DEFAULT NULL,
  `username` VARCHAR(11) NULL DEFAULT NULL,
  `location` VARCHAR(18) NULL DEFAULT NULL,
  `bio` TEXT NULL DEFAULT NULL,
  `profile_image` VARCHAR(80) NULL DEFAULT NULL,
  `account` VARCHAR(7) NULL DEFAULT NULL,
  `phone1` VARCHAR(13) NULL DEFAULT NULL,
  `phone2` VARCHAR(13) NULL DEFAULT NULL,
  `created` DATETIME NULL DEFAULT NULL,
  `pid` INT NOT NULL,
  `user_id` TINYINT(4) NULL DEFAULT NULL,
  `updated` VARCHAR(10) NULL DEFAULT NULL,
  `nid` VARCHAR(18) NULL DEFAULT NULL,
  PRIMARY KEY (`pid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `agri`.`Training`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `agri`.`Training` (
  `trainer` VARCHAR(12) NULL DEFAULT NULL,
  `certificate` VARCHAR(57) NULL DEFAULT NULL,
  `completed` DATETIME NULL DEFAULT NULL,
  `link` VARCHAR(18) NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `created` DATETIME NULL DEFAULT NULL,
  `tid` INT NOT NULL AUTO_INCREMENT,
  `owner_id` VARCHAR(32) NULL DEFAULT NULL,
  `updated` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`tid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
