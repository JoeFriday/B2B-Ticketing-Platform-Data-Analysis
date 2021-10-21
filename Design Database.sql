-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`reseller_branch`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`reseller_branch` (
  `reseller_branch_id` INT NOT NULL,
  `location` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`reseller_branch_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`reseller`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`reseller` (
  `reseller_id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`reseller_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`venue_organizer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`venue_organizer` (
  `organizer_id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`organizer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `customer_id` INT NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `phone` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sales_channel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sales_channel` (
  `channel_id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`channel_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`event` (
  `event_id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`event_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ticket` (
  `ticket_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `channel_id` INT NOT NULL,
  `event_id` INT NOT NULL,
  `reseller_id` INT NULL,
  `branch_id` INT NULL,
  `organizer_id` INT NULL,
  `purchase_date` DATE NOT NULL,
  `price_per_ticket` FLOAT(5,2) NOT NULL,
  `quantity` INT NOT NULL,
  `commission_rate` DECIMAL(3,3) NULL,
  PRIMARY KEY (`ticket_id`, `customer_id`, `channel_id`, `event_id`),
  UNIQUE INDEX `commission_rate_UNIQUE` (`commission_rate` ASC) VISIBLE,
  INDEX `fk_ticket_reseller_branch_idx` (`branch_id` ASC) VISIBLE,
  UNIQUE INDEX `reseller_branch_reseller_branch_id_UNIQUE` (`branch_id` ASC) VISIBLE,
  INDEX `fk_ticket_reseller1_idx` (`reseller_id` ASC) VISIBLE,
  UNIQUE INDEX `reseller_reseller_id_UNIQUE` (`reseller_id` ASC) VISIBLE,
  INDEX `fk_ticket_venue_organizer1_idx` (`organizer_id` ASC) VISIBLE,
  UNIQUE INDEX `venue_organizer_organizer_id_UNIQUE` (`organizer_id` ASC) VISIBLE,
  INDEX `fk_ticket_customer1_idx` (`customer_id` ASC) VISIBLE,
  INDEX `fk_ticket_sales_channel1_idx` (`channel_id` ASC) VISIBLE,
  INDEX `fk_ticket_event1_idx` (`event_id` ASC) VISIBLE,
  CONSTRAINT `fk_ticket_reseller_branch`
    FOREIGN KEY (`branch_id`)
    REFERENCES `mydb`.`reseller_branch` (`reseller_branch_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ticket_reseller1`
    FOREIGN KEY (`reseller_id`)
    REFERENCES `mydb`.`reseller` (`reseller_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ticket_venue_organizer1`
    FOREIGN KEY (`organizer_id`)
    REFERENCES `mydb`.`venue_organizer` (`organizer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ticket_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `mydb`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ticket_sales_channel1`
    FOREIGN KEY (`channel_id`)
    REFERENCES `mydb`.`sales_channel` (`channel_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ticket_event1`
    FOREIGN KEY (`event_id`)
    REFERENCES `mydb`.`event` (`event_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
