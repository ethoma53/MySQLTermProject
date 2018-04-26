-- MySQL Script created using MySQL Workbench
-- Builds Application table for cartProject database
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
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `appId` int(11) NOT NULL,
  `User_userId` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  `Job_jobId` int(11) NOT NULL,
  `dateApplied` datetime NOT NULL,
  `decisionDate` DATETIME,
  PRIMARY KEY (`appId`),
  KEY `fk_Application_User1_idx` (`User_userId`),
  KEY `fk_Application_Job1_idx` (`Job_jobId`),
  CONSTRAINT `fk_Application_Job1` FOREIGN KEY (`Job_jobId`) REFERENCES `job` (`jobId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Application_User1` FOREIGN KEY (`User_userId`) REFERENCES `user` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (101,1,' pending ',1,'2017-08-16 06:15:26');
INSERT INTO `application` VALUES (105,90,'not opened ',3,'2017-09-11 10:52:14');
INSERT INTO `application` VALUES (106,26,' accepted ',1,'2018-06-06 00:02:19');
INSERT INTO `application` VALUES (107,75,' pending ',2,'2018-09-04 21:34:35');
INSERT INTO `application` VALUES (108,64,' accepted ',1,'2017-04-20 18:10:51');
INSERT INTO `application` VALUES (109,21,' pending ',3,'2018-10-15 09:01:02');
INSERT INTO `application` VALUES (110,18,'not opened ',2,'2018-03-19 14:25:08');
INSERT INTO `application` VALUES (111,35,' pending ',2,'2017-11-11 21:15:18');
INSERT INTO `application` VALUES (112,3,' rejected',1,'2018-03-03 10:20:48');
INSERT INTO `application` VALUES (113,37,' pending ',1,'2019-04-02 20:01:34');
INSERT INTO `application` VALUES (114,33,' accepted ',2,'2018-05-17 23:23:43');
INSERT INTO `application` VALUES (115,15,' accepted ',1,'2018-03-17 15:43:28');
INSERT INTO `application` VALUES (116,16,'not opened ',3,'2018-11-04 09:50:48');
INSERT INTO `application` VALUES (117,17,' rejected',1,'2018-06-27 23:40:56');
INSERT INTO `application` VALUES (118,18,' accepted ',1,'2018-10-14 12:45:50');
INSERT INTO `application` VALUES (119,19,' pending ',3,'2017-10-25 23:42:08');
INSERT INTO `application` VALUES (120,20,'not opened ',3,'2018-01-04 08:40:06');
INSERT INTO `application` VALUES (121,21,' rejected',1,'2017-11-30 01:49:39');
INSERT INTO `application` VALUES (122,22,'not opened ',2,'2017-04-16 00:54:40');
INSERT INTO `application` VALUES (123,45,' accepted ',2,'2018-03-21 20:40:45');
INSERT INTO `application` VALUES (124,46,' accepted ',3,'2017-08-05 22:00:33');
INSERT INTO `application` VALUES (125,47,'not opened ',1,'2018-04-18 18:16:31');
INSERT INTO `application` VALUES (126,48,'not opened ',2,'2018-11-14 04:30:46');
INSERT INTO `application` VALUES (127,49,'not opened ',3,'2017-11-26 20:31:22');
INSERT INTO `application` VALUES (128,50,' accepted ',1,'2019-03-31 19:31:06');
INSERT INTO `application` VALUES (129,51,'not opened ',2,'2017-06-11 07:36:44');
INSERT INTO `application` VALUES (130,52,' accepted ',3,'2019-02-15 19:11:32');
INSERT INTO `application` VALUES (131,53,' accepted ',3,'2017-11-04 08:17:37');
INSERT INTO `application` VALUES (132,54,' pending ',1,'2017-12-23 16:54:01');
INSERT INTO `application` VALUES (133,55,' pending ',2,'2019-03-20 11:42:47');
INSERT INTO `application` VALUES (134,56,' accepted ',3,'2018-05-21 03:19:21');
INSERT INTO `application` VALUES (135,57,'not opened ',1,'2018-02-09 07:22:31');
INSERT INTO `application` VALUES (136,58,'not opened ',2,'2018-12-10 20:13:31');
INSERT INTO `application` VALUES (137,59,' rejected',2,'2018-03-02 19:59:41');
INSERT INTO `application` VALUES (138,60,' rejected',3,'2017-12-19 10:10:25');
INSERT INTO `application` VALUES (139,38,' accepted ',1,'2018-07-25 00:42:43');
INSERT INTO `application` VALUES (140,39,' accepted ',1,'2018-03-31 20:21:51');
INSERT INTO `application` VALUES (141,40,' accepted ',3,'2018-05-21 19:34:10');
INSERT INTO `application` VALUES (142,41,' accepted ',2,'2018-08-07 14:09:42');
INSERT INTO `application` VALUES (143,42,'not opened ',2,'2019-01-27 03:56:07');
INSERT INTO `application` VALUES (144,43,' accepted ',2,'2017-10-25 09:15:39');
INSERT INTO `application` VALUES (145,44,'not opened ',3,'2019-01-10 08:49:30');
INSERT INTO `application` VALUES (146,6,' rejected',2,'2018-10-21 03:51:20');
INSERT INTO `application` VALUES (147,8,' pending ',2,'2017-12-23 19:15:59');
INSERT INTO `application` VALUES (148,15,' pending ',3,'2017-04-06 21:54:00');
INSERT INTO `application` VALUES (149,55,' accepted ',1,'2018-04-19 17:13:22');
INSERT INTO `application` VALUES (150,2,' accepted ',1,'2019-01-15 05:14:28');
INSERT INTO `application` VALUES (151,1,' accepted ',3,'2018-05-14 02:09:59');
INSERT INTO `application` VALUES (152,30,' rejected',3,'2018-01-01 14:45:58');
INSERT INTO `application` VALUES (153,25,' rejected',3,'2017-05-11 07:58:13');
INSERT INTO `application` VALUES (154,44,' accepted ',1,'2018-10-08 15:14:22');
INSERT INTO `application` VALUES (155,3,' accepted ',3,'2018-04-13 14:55:17');
INSERT INTO `application` VALUES (156,5,'not opened ',1,'2017-04-06 11:05:07');
INSERT INTO `application` VALUES (157,6,' pending ',3,'2018-07-03 10:05:49');
INSERT INTO `application` VALUES (158,7,' rejected',3,'2017-08-29 16:39:02');
INSERT INTO `application` VALUES (159,8,'not opened ',1,'2019-02-26 13:43:44');
INSERT INTO `application` VALUES (160,9,' pending ',2,'2018-11-24 07:27:56');
INSERT INTO `application` VALUES (161,10,'not opened ',2,'2017-09-24 16:02:25');
INSERT INTO `application` VALUES (162,11,' accepted ',1,'2018-11-13 17:25:07');
INSERT INTO `application` VALUES (163,12,'not opened ',1,'2017-12-11 04:53:44');
INSERT INTO `application` VALUES (164,13,' pending ',3,'2019-03-26 16:19:57');
INSERT INTO `application` VALUES (165,14,' accepted ',2,'2017-10-09 17:52:39');
INSERT INTO `application` VALUES (166,81,' pending ',1,'2019-03-22 01:33:58');
INSERT INTO `application` VALUES (167,82,' accepted ',3,'2018-11-17 04:06:32');
INSERT INTO `application` VALUES (168,83,'not opened ',3,'2018-08-24 13:42:59');
INSERT INTO `application` VALUES (169,84,' pending ',2,'2017-11-30 05:06:50');
INSERT INTO `application` VALUES (170,85,' accepted ',3,'2017-09-01 21:27:56');
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
