-- MySQL Script created using MySQL Workbench
-- Builds Driver table for cartProject database
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
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver` (
  `EmpJob_Employee_empId` int(11) NOT NULL,
  `EmpJob_Job_jobId` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `positionLength` int(11) NOT NULL,
  PRIMARY KEY (`EmpJob_Employee_empId`,`EmpJob_Job_jobId`),
  CONSTRAINT `fk_Driver_EmpJob1` FOREIGN KEY (`EmpJob_Employee_empId`, `EmpJob_Job_jobId`) REFERENCES `empjob` (`Employee_empId`, `Job_jobId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1003,2,'2012-03-30 00:00:00',72);
INSERT INTO `driver` VALUES (1004,2,'2017-04-15 00:00:00',11);
INSERT INTO `driver` VALUES (1005,2,'2012-08-20 00:00:00',67);
INSERT INTO `driver` VALUES (1007,2,'2013-07-10 00:00:00',56);
INSERT INTO `driver` VALUES (1008,2,'2016-02-04 00:00:00',26);
INSERT INTO `driver` VALUES (1010,2,'2012-08-30 00:00:00',67);
INSERT INTO `driver` VALUES (1011,2,'2013-05-10 00:00:00',58);
INSERT INTO `driver` VALUES (1013,2,'2012-11-15 00:00:00',64);
INSERT INTO `driver` VALUES (1015,2,'2015-08-23 00:00:00',31);
INSERT INTO `driver` VALUES (1018,2,'2012-09-05 00:00:00',66);
INSERT INTO `driver` VALUES (1019,2,'2012-12-26 00:00:00',63);
INSERT INTO `driver` VALUES (1020,2,'2015-02-19 00:00:00',37);
INSERT INTO `driver` VALUES (1021,2,'2016-12-28 00:00:00',15);
INSERT INTO `driver` VALUES (1025,2,'2015-06-18 00:00:00',33);
INSERT INTO `driver` VALUES (1026,2,'2014-07-30 00:00:00',44);
INSERT INTO `driver` VALUES (1027,2,'2016-06-01 00:00:00',22);
INSERT INTO `driver` VALUES (1029,2,'2013-02-17 00:00:00',61);
INSERT INTO `driver` VALUES (1030,2,'2013-03-15 00:00:00',60);
INSERT INTO `driver` VALUES (1031,2,'2013-10-25 00:00:00',53);
INSERT INTO `driver` VALUES (1034,2,'2013-05-12 00:00:00',58);
INSERT INTO `driver` VALUES (1035,2,'2017-03-15 00:00:00',12);
INSERT INTO `driver` VALUES (1036,2,'2017-05-01 00:00:00',11);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
