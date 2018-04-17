-- MySQL Script created using MySQL Workbench
-- Builds cartProject schema
-- Group ER(R) ITCS 6160 Spring 2018
-- Authors: Lizzy Thomas, Rachel Pullen, Richard Alaimo
-- Thursday, April 5th 2018 (Project Deliverable 3)
-- Model: New Model    Version: 1.0

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema cartProject
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cartProject` DEFAULT CHARACTER SET utf8 ;
USE `cartProject` ;

-- -----------------------------------------------------
-- Table `cartProject`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`User` (
  `userId` INT NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `firstName` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phoneNumber` VARCHAR(16) NOT NULL,
  PRIMARY KEY (`userId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartProject`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`Employee` (
  `empId` INT NOT NULL,
  `User_userId` INT NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `firstName` VARCHAR(45) NOT NULL,
  `hireDate` DATETIME NOT NULL,
  PRIMARY KEY (`empId`),
  INDEX `fk_Employee_User_idx` (`User_userId` ASC),
  CONSTRAINT `fk_Employee_User`
    FOREIGN KEY (`User_userId`)
    REFERENCES `cartProject`.`User` (`userId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartProject`.`Job`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`Job` (
  `jobId` INT NOT NULL,
  `jobName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`jobId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartProject`.`Application`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`Application` (
  `appId` INT NOT NULL,
  `User_userId` INT NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `Job_jobId` INT NOT NULL,
  `dateApplied` DATETIME NOT NULL,
  PRIMARY KEY (`appId`),
  INDEX `fk_Application_User1_idx` (`User_userId` ASC),
  INDEX `fk_Application_Job1_idx` (`Job_jobId` ASC),
  CONSTRAINT `fk_Application_User1`
    FOREIGN KEY (`User_userId`)
    REFERENCES `cartProject`.`User` (`userId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Application_Job1`
    FOREIGN KEY (`Job_jobId`)
    REFERENCES `cartProject`.`Job` (`jobId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartProject`.`EmpJob`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`EmpJob` (
  `Employee_empId` INT NOT NULL,
  `Job_jobId` INT NOT NULL,
  INDEX `fk_EmpJob_Employee1_idx` (`Employee_empId` ASC),
  INDEX `fk_EmpJob_Job1_idx` (`Job_jobId` ASC),
  PRIMARY KEY (`Employee_empId`, `Job_jobId`),
  CONSTRAINT `fk_EmpJob_Employee1`
    FOREIGN KEY (`Employee_empId`)
    REFERENCES `cartProject`.`Employee` (`empId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_EmpJob_Job1`
    FOREIGN KEY (`Job_jobId`)
    REFERENCES `cartProject`.`Job` (`jobId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartProject`.`Driver`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`Driver` (
  `EmpJob_Employee_empId` INT NOT NULL,
  `EmpJob_Job_jobId` INT NOT NULL,
  `startDate` DATETIME NOT NULL,
  `positionLength` INT NOT NULL,
  PRIMARY KEY (`EmpJob_Employee_empId`, `EmpJob_Job_jobId`),
  CONSTRAINT `fk_Driver_EmpJob1`
    FOREIGN KEY (`EmpJob_Employee_empId` , `EmpJob_Job_jobId`)
    REFERENCES `cartProject`.`EmpJob` (`Employee_empId` , `Job_jobId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartProject`.`Mechanic`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`Mechanic` (
  `EmpJob_Employee_empId` INT NOT NULL,
  `EmpJob_Job_jobId` INT NOT NULL,
  `certified` TINYINT NOT NULL,
  `startDate` DATETIME NOT NULL,
  `positionLength` INT NOT NULL,
  PRIMARY KEY (`EmpJob_Employee_empId`, `EmpJob_Job_jobId`),
  CONSTRAINT `fk_Mechanic_EmpJob1`
    FOREIGN KEY (`EmpJob_Employee_empId` , `EmpJob_Job_jobId`)
    REFERENCES `cartProject`.`EmpJob` (`Employee_empId` , `Job_jobId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `cartProject`.`IT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`IT` (
  `EmpJob_Employee_empId` INT NOT NULL,
  `EmpJob_Job_jobId` INT NOT NULL,
  `startDate` DATETIME NOT NULL,
  `positionLength` INT NOT NULL,
  PRIMARY KEY (`EmpJob_Employee_empId`, `EmpJob_Job_jobId`),
  CONSTRAINT `fk_IT_EmpJob1`
    FOREIGN KEY (`EmpJob_Employee_empId` , `EmpJob_Job_jobId`)
    REFERENCES `cartProject`.`EmpJob` (`Employee_empId` , `Job_jobId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `cartProject`.`Archive`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`Archive` (
  `appId` INT NOT NULL,
  `userId` INT NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `jobId` INT NOT NULL,
  `dateApplied` DATETIME NOT NULL,
  `decisionDate` DATETIME NOT NULL,
  PRIMARY KEY (`appId`))
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;