-- MySQL Script created using MySQL Workbench
-- Builds Employee table for cartProject database
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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `empId` int(11) NOT NULL,
  `User_userId` int(11) NOT NULL,
  `hireDate` datetime NOT NULL,
  PRIMARY KEY (`empId`),
  KEY `fk_Employee_User_idx` (`User_userId`),
  CONSTRAINT `fk_Employee_User` FOREIGN KEY (`User_userId`) REFERENCES `user` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1000,61,'2018-02-21 00:06:00');
INSERT INTO `employee` VALUES (1001,62,'2013-05-04 16:05:00');
INSERT INTO `employee` VALUES (1002,63,'2017-12-26 02:31:00');
INSERT INTO `employee` VALUES (1003,64,'2012-03-17 09:00:00');
INSERT INTO `employee` VALUES (1004,65,'2017-04-13 19:38:00');
INSERT INTO `employee` VALUES (1005,66,'2012-08-13 19:51:00');
INSERT INTO `employee` VALUES (1006,67,'2013-09-18 22:12:00');
INSERT INTO `employee` VALUES (1007,68,'2013-07-03 16:46:00');
INSERT INTO `employee` VALUES (1008,69,'2016-01-30 20:18:00');
INSERT INTO `employee` VALUES (1009,70,'2017-06-13 19:31:00');
INSERT INTO `employee` VALUES (1010,71,'2012-08-22 05:51:00');
INSERT INTO `employee` VALUES (1011,72,'2013-05-09 12:08:00');
INSERT INTO `employee` VALUES (1012,73,'2015-01-17 20:40:00');
INSERT INTO `employee` VALUES (1013,74,'2012-11-04 08:57:00');
INSERT INTO `employee` VALUES (1014,75,'2013-11-12 03:36:00');
INSERT INTO `employee` VALUES (1015,76,'2015-08-12 02:03:00');
INSERT INTO `employee` VALUES (1016,77,'2012-05-03 03:45:00');
INSERT INTO `employee` VALUES (1017,78,'2016-10-30 09:36:00');
INSERT INTO `employee` VALUES (1018,79,'2012-08-31 05:12:00');
INSERT INTO `employee` VALUES (1019,80,'2012-12-17 16:55:00');
INSERT INTO `employee` VALUES (1020,81,'2015-02-17 23:36:00');
INSERT INTO `employee` VALUES (1021,82,'2016-12-22 19:52:00');
INSERT INTO `employee` VALUES (1022,83,'2013-07-23 02:05:00');
INSERT INTO `employee` VALUES (1023,84,'2016-03-17 20:42:00');
INSERT INTO `employee` VALUES (1024,85,'2017-04-22 10:16:00');
INSERT INTO `employee` VALUES (1025,86,'2015-06-14 03:10:00');
INSERT INTO `employee` VALUES (1026,87,'2014-07-24 06:18:00');
INSERT INTO `employee` VALUES (1027,88,'2016-05-13 06:02:00');
INSERT INTO `employee` VALUES (1028,89,'2012-02-08 01:29:00');
INSERT INTO `employee` VALUES (1029,90,'2013-02-16 16:35:00');
INSERT INTO `employee` VALUES (1030,91,'2013-03-07 09:19:00');
INSERT INTO `employee` VALUES (1031,92,'2013-10-21 11:22:00');
INSERT INTO `employee` VALUES (1032,93,'2017-01-14 19:48:00');
INSERT INTO `employee` VALUES (1033,94,'2016-11-02 20:06:00');
INSERT INTO `employee` VALUES (1034,95,'2013-05-06 00:35:00');
INSERT INTO `employee` VALUES (1035,96,'2017-03-13 01:46:00');
INSERT INTO `employee` VALUES (1036,97,'2017-04-30 04:14:00');
INSERT INTO `employee` VALUES (1037,98,'2012-06-20 13:53:00');
INSERT INTO `employee` VALUES (1038,99,'2017-03-22 14:31:00');
INSERT INTO `employee` VALUES (1039,100,'2012-07-01 22:03:00');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
