-- MySQL Script created using MySQL Workbench
-- Builds EmpJob table for cartProject database
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
-- Table structure for table `empjob`
--

DROP TABLE IF EXISTS `empjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empjob` (
  `Employee_empId` int(11) NOT NULL,
  `Job_jobId` int(11) NOT NULL,
  PRIMARY KEY (`Employee_empId`,`Job_jobId`),
  KEY `fk_EmpJob_Employee1_idx` (`Employee_empId`),
  KEY `fk_EmpJob_Job1_idx` (`Job_jobId`),
  CONSTRAINT `fk_EmpJob_Employee1` FOREIGN KEY (`Employee_empId`) REFERENCES `employee` (`empId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_EmpJob_Job1` FOREIGN KEY (`Job_jobId`) REFERENCES `job` (`jobId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empjob`
--

LOCK TABLES `empjob` WRITE;
/*!40000 ALTER TABLE `empjob` DISABLE KEYS */;
INSERT INTO `empjob` VALUES (1000,3);
INSERT INTO `empjob` VALUES (1001,1);
INSERT INTO `empjob` VALUES (1002,1);
INSERT INTO `empjob` VALUES (1003,2);
INSERT INTO `empjob` VALUES (1004,2);
INSERT INTO `empjob` VALUES (1005,2);
INSERT INTO `empjob` VALUES (1006,1);
INSERT INTO `empjob` VALUES (1007,2);
INSERT INTO `empjob` VALUES (1008,2);
INSERT INTO `empjob` VALUES (1009,3);
INSERT INTO `empjob` VALUES (1010,2);
INSERT INTO `empjob` VALUES (1011,2);
INSERT INTO `empjob` VALUES (1012,1);
INSERT INTO `empjob` VALUES (1013,2);
INSERT INTO `empjob` VALUES (1014,1);
INSERT INTO `empjob` VALUES (1015,2);
INSERT INTO `empjob` VALUES (1016,1);
INSERT INTO `empjob` VALUES (1017,3);
INSERT INTO `empjob` VALUES (1018,2);
INSERT INTO `empjob` VALUES (1019,2);
INSERT INTO `empjob` VALUES (1020,2);
INSERT INTO `empjob` VALUES (1021,2);
INSERT INTO `empjob` VALUES (1022,1);
INSERT INTO `empjob` VALUES (1023,1);
INSERT INTO `empjob` VALUES (1024,1);
INSERT INTO `empjob` VALUES (1025,2);
INSERT INTO `empjob` VALUES (1026,2);
INSERT INTO `empjob` VALUES (1027,2);
INSERT INTO `empjob` VALUES (1028,1);
INSERT INTO `empjob` VALUES (1029,2);
INSERT INTO `empjob` VALUES (1030,2);
INSERT INTO `empjob` VALUES (1031,2);
INSERT INTO `empjob` VALUES (1032,3);
INSERT INTO `empjob` VALUES (1033,3);
INSERT INTO `empjob` VALUES (1034,2);
INSERT INTO `empjob` VALUES (1035,2);
INSERT INTO `empjob` VALUES (1036,2);
INSERT INTO `empjob` VALUES (1037,1);
INSERT INTO `empjob` VALUES (1038,1);
INSERT INTO `empjob` VALUES (1039,3);
/*!40000 ALTER TABLE `empjob` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
