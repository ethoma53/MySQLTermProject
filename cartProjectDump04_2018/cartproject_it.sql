-- MySQL Script created using MySQL Workbench
-- Builds IT table for cartProject database
-- Group ER(R) ITCS 6160 Spring 2018
-- Authors: Lizzy Thomas, Rachel Pullen, Richard Alaimo
-- Thursday, April 5th 2018 (Project Deliverable 3)
-- Model: New Model    Version: 1.0

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cartproject
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.29-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `it`
--

DROP TABLE IF EXISTS `it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it` (
  `EmpJob_Employee_empId` int(11) NOT NULL,
  `EmpJob_Job_jobId` int(11) NOT NULL,
  `startDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `positionLength` int(11) NOT NULL,
  PRIMARY KEY (`EmpJob_Employee_empId`,`EmpJob_Job_jobId`),
  CONSTRAINT `fk_IT_EmpJob1` FOREIGN KEY (`EmpJob_Employee_empId`, `EmpJob_Job_jobId`) REFERENCES `empjob` (`Employee_empId`, `Job_jobId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `it`
--

LOCK TABLES `it` WRITE;
/*!40000 ALTER TABLE `it` DISABLE KEYS */;
INSERT INTO `it` VALUES (1000,3,'2018-02-24 00:00:00',1);
INSERT INTO `it` VALUES (1009,3,'2017-06-15 00:00:00',9);
INSERT INTO `it` VALUES (1017,3,'2016-11-02 00:00:00',17);
INSERT INTO `it` VALUES (1032,3,'2017-01-16 00:00:00',14);
INSERT INTO `it` VALUES (1033,3,'2016-11-05 00:00:00',16);
INSERT INTO `it` VALUES (1039,3,'2012-07-02 00:00:00',69);
/*!40000 ALTER TABLE `it` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
