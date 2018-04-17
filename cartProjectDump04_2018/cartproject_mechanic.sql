-- MySQL Script created using MySQL Workbench
-- Builds Mechanic table for cartProject database
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
-- Table structure for table `mechanic`
--

DROP TABLE IF EXISTS `mechanic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mechanic` (
  `EmpJob_Employee_empId` int(11) NOT NULL,
  `EmpJob_Job_jobId` int(11) NOT NULL,
  `certified` tinyint(4) NOT NULL,
  `startDate` datetime NOT NULL,
  `positionLength` int(11) NOT NULL,
  PRIMARY KEY (`EmpJob_Employee_empId`,`EmpJob_Job_jobId`),
  CONSTRAINT `fk_Mechanic_EmpJob1` FOREIGN KEY (`EmpJob_Employee_empId`, `EmpJob_Job_jobId`) REFERENCES `empjob` (`Employee_empId`, `Job_jobId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic`
--

LOCK TABLES `mechanic` WRITE;
/*!40000 ALTER TABLE `mechanic` DISABLE KEYS */;
INSERT INTO `mechanic` VALUES (1001,1,0,'2013-05-10 00:00:00',58);
INSERT INTO `mechanic` VALUES (1002,1,0,'2017-12-30 00:00:00',3);
INSERT INTO `mechanic` VALUES (1006,1,1,'2013-09-25 00:00:00',54);
INSERT INTO `mechanic` VALUES (1012,1,0,'2015-01-21 00:00:00',38);
INSERT INTO `mechanic` VALUES (1014,1,1,'2013-11-19 00:00:00',52);
INSERT INTO `mechanic` VALUES (1016,1,1,'2012-05-08 00:00:00',70);
INSERT INTO `mechanic` VALUES (1022,1,0,'2013-07-24 00:00:00',56);
INSERT INTO `mechanic` VALUES (1023,1,0,'2016-03-28 00:00:00',24);
INSERT INTO `mechanic` VALUES (1024,1,0,'2017-04-23 00:00:00',11);
INSERT INTO `mechanic` VALUES (1028,1,1,'2012-02-10 00:00:00',73);
INSERT INTO `mechanic` VALUES (1037,1,1,'2012-06-24 00:00:00',69);
INSERT INTO `mechanic` VALUES (1038,1,1,'2017-03-23 00:00:00',12);
/*!40000 ALTER TABLE `mechanic` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
