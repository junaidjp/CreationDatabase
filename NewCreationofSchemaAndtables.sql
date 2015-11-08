-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bankofdanish
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bankofdanish
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bankofdanish` DEFAULT CHARACTER SET utf8 ;
USE `bankofdanish` ;

-- -----------------------------------------------------
-- Table `bankofdanish`.`account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bankofdanish`.`account` (
  `Id` INT(11) NOT NULL COMMENT '',
  `Name` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  `FirstAccountType` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `SecondAccountType` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `AccountNumberOne` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `AccountNumberTwo` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `LoanType` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `LoanAmount` INT(50) NULL DEFAULT NULL COMMENT '',
  `stockKey` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`Id`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `bankofdanish`.`accountinfo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bankofdanish`.`accountinfo` (
  `accountNo` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `accountType` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `balance` FLOAT NULL DEFAULT NULL COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bankofdanish`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bankofdanish`.`address` (
  `streetname` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `zipcode` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `state` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `City` VARCHAR(255) NULL DEFAULT NULL COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bankofdanish`.`bank`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bankofdanish`.`bank` (
  `bankId` INT(11) NOT NULL COMMENT '',
  `bankName` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `bankType` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `locatiomn` VARCHAR(200) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`bankId`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bankofdanish`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bankofdanish`.`customer` (
  `customerName` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `phone` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `ssn` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `address` VARCHAR(255) NULL DEFAULT NULL COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bankofdanish`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bankofdanish`.`employee` (
  `employeeName` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `empId` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `ssn` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `designatin` VARCHAR(255) NULL DEFAULT NULL COMMENT '',
  `daysOff` INT(40) NULL DEFAULT NULL COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bankofdanish`.`stock`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bankofdanish`.`stock` (
  `StockId` INT(11) NOT NULL COMMENT '',
  `StockName` VARCHAR(6) NULL DEFAULT NULL COMMENT '',
  `StockDescription` VARCHAR(50) NULL DEFAULT NULL COMMENT '',
  `StockQuantity` INT(10) NULL DEFAULT NULL COMMENT '',
  `StartingPrice` FLOAT NULL DEFAULT NULL COMMENT '',
  `EndingPRice` FLOAT NULL DEFAULT NULL COMMENT '',
  `stockKey` VARCHAR(25) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`StockId`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `bankofdanish`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bankofdanish`.`user` (
  `id` VARCHAR(6) NULL DEFAULT NULL COMMENT '',
  `username` VARCHAR(20) NULL DEFAULT NULL COMMENT '',
  `password` VARCHAR(20) NULL DEFAULT NULL COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
