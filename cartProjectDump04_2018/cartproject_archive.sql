-- MySQL Script created using MySQL Workbench
-- Builds Archive table for cartProject database
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
-- Table structure for table `archive`
--

DROP TABLE IF EXISTS `archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archive` (
  `appId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  `jobId` int(11) NOT NULL,
  `dateApplied` datetime NOT NULL,
  `decisionDate` datetime NOT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive`
--

LOCK TABLES `archive` WRITE;
/*!40000 ALTER TABLE `archive` DISABLE KEYS */;
INSERT INTO `archive` VALUES (1,61,' accepted ',3,'2018-02-01 16:06:00','2018-02-18 13:06:00');
INSERT INTO `archive` VALUES (2,62,' accepted ',1,'2013-04-15 19:05:00','2013-04-28 17:05:00');
INSERT INTO `archive` VALUES (3,63,' accepted ',1,'2017-12-09 20:31:00','2017-12-14 14:31:00');
INSERT INTO `archive` VALUES (4,64,' accepted ',2,'2012-02-27 11:00:00','2012-03-01 09:00:00');
INSERT INTO `archive` VALUES (5,65,' accepted ',2,'2017-04-01 20:01:00','2017-04-10 20:40:00');
INSERT INTO `archive` VALUES (6,66,' accepted ',2,'2012-07-26 15:51:00','2012-08-09 19:51:00');
INSERT INTO `archive` VALUES (7,67,' accepted ',1,'2013-08-30 14:12:00','2013-09-05 17:12:00');
INSERT INTO `archive` VALUES (8,68,' accepted ',2,'2013-06-28 17:01:00','2013-07-01 17:46:00');
INSERT INTO `archive` VALUES (9,69,' accepted ',2,'2016-01-02 16:18:00','2016-01-15 14:18:00');
INSERT INTO `archive` VALUES (10,70,' accepted ',3,'2017-05-29 18:31:00','2017-06-01 16:31:00');
INSERT INTO `archive` VALUES (11,71,' accepted ',2,'2012-08-01 11:51:00','2012-08-10 14:51:00');
INSERT INTO `archive` VALUES (12,72,' accepted ',2,'2013-04-04 18:06:00','2013-05-01 12:08:00');
INSERT INTO `archive` VALUES (13,73,' accepted ',1,'2015-01-07 20:15:00','2015-01-09 20:40:00');
INSERT INTO `archive` VALUES (14,74,' accepted ',2,'2012-10-14 08:57:00','2012-11-01 10:57:00');
INSERT INTO `archive` VALUES (15,75,' accepted ',1,'2013-11-01 18:36:00','2013-11-03 14:36:00');
INSERT INTO `archive` VALUES (16,76,' accepted ',2,'2015-07-25 14:03:00','2015-08-04 15:03:00');
INSERT INTO `archive` VALUES (17,77,' accepted ',1,'2012-04-13 15:07:00','2012-04-28 15:45:00');
INSERT INTO `archive` VALUES (18,78,' accepted ',3,'2016-10-23 10:29:00','2016-10-30 09:36:00');
INSERT INTO `archive` VALUES (19,79,' accepted ',2,'2012-08-05 18:19:00','2012-08-19 05:12:00');
INSERT INTO `archive` VALUES (20,80,' accepted ',2,'2012-12-02 14:55:00','2012-12-07 17:55:00');
INSERT INTO `archive` VALUES (21,81,' accepted ',2,'2015-02-01 09:37:00','2015-02-11 09:36:00');
INSERT INTO `archive` VALUES (22,82,' accepted ',2,'2016-12-06 16:59:00','2016-12-22 19:52:00');
INSERT INTO `archive` VALUES (23,83,' accepted ',1,'2013-07-06 18:05:00','2013-07-18 14:05:00');
INSERT INTO `archive` VALUES (24,84,' accepted ',1,'2016-03-10 08:42:00','2016-03-12 20:42:00');
INSERT INTO `archive` VALUES (25,85,' accepted ',1,'2017-04-19 11:29:00','2017-04-21 11:26:00');
INSERT INTO `archive` VALUES (26,86,' accepted ',2,'2015-06-07 13:10:00','2015-06-10 15:10:00');
INSERT INTO `archive` VALUES (27,87,' accepted ',2,'2014-07-05 21:18:00','2014-07-20 18:18:00');
INSERT INTO `archive` VALUES (28,88,' accepted ',2,'2016-05-01 21:42:00','2016-05-02 09:02:00');
INSERT INTO `archive` VALUES (29,89,' accepted ',1,'2012-02-02 09:25:00','2012-02-08 01:29:00');
INSERT INTO `archive` VALUES (30,90,' accepted ',2,'2013-01-31 17:35:00','2013-02-09 19:35:00');
INSERT INTO `archive` VALUES (31,91,' accepted ',2,'2013-02-22 08:19:00','2013-03-02 10:19:00');
INSERT INTO `archive` VALUES (32,92,' accepted ',2,'2013-10-05 07:25:00','2013-10-12 11:05:00');
INSERT INTO `archive` VALUES (33,93,' accepted ',3,'2016-12-27 07:48:00','2017-01-04 07:48:00');
INSERT INTO `archive` VALUES (34,94,' accepted ',3,'2016-10-07 16:06:00','2016-10-26 16:06:00');
INSERT INTO `archive` VALUES (35,95,' accepted ',2,'2013-04-16 16:35:00','2013-05-01 13:35:00');
INSERT INTO `archive` VALUES (36,96,' accepted ',2,'2017-03-02 13:00:00','2017-03-06 13:52:00');
INSERT INTO `archive` VALUES (37,97,' accepted ',2,'2017-04-21 18:20:00','2017-04-29 14:40:00');
INSERT INTO `archive` VALUES (38,98,' accepted ',1,'2012-05-24 20:18:00','2012-06-01 17:58:00');
INSERT INTO `archive` VALUES (39,99,' accepted ',1,'2017-02-19 14:30:00','2017-03-01 14:30:00');
INSERT INTO `archive` VALUES (40,100,' accepted ',3,'2012-06-19 22:03:00','2012-07-01 22:03:00');
INSERT INTO `archive` VALUES (102,2,' rejected',3,'2017-11-12 05:28:00','2017-11-26 05:28:00');
INSERT INTO `archive` VALUES (103,3,' rejected',2,'2018-12-26 11:52:00','2016-12-31 11:52:00');
INSERT INTO `archive` VALUES (104,4,' rejected',1,'2018-09-11 07:46:00','2012-09-29 07:46:00');
/*!40000 ALTER TABLE `archive` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
