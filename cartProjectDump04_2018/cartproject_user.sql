-- MySQL Script created using MySQL Workbench
-- Builds User table for cartProject database
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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phoneNumber` varchar(16) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Dillard','Zachery',41,'nisi.sem@mollisDuissit.org','(907) 769-7064');
INSERT INTO `user` VALUES (2,'Barber','Piper',56,'magna.Duis@auctornon.net','(605) 469-1764');
INSERT INTO `user` VALUES (3,'Bruce','Zachery',34,'ante.iaculis@bibendumfermentum.edu','(960) 195-4931');
INSERT INTO `user` VALUES (4,'Pena','Shelley',61,'ipsum.Suspendisse.sagittis@aptent.com','(786) 710-7404');
INSERT INTO `user` VALUES (5,'Matthews','Reuben',27,'montes.nascetur@NullamenimSed.ca','(908) 609-6279');
INSERT INTO `user` VALUES (6,'Grimes','Robert',24,'suscipit@dictumeleifend.com','(566) 882-7313');
INSERT INTO `user` VALUES (7,'Mullen','Graham',49,'ac.mattis@Curabiturvel.com','(769) 850-7836');
INSERT INTO `user` VALUES (8,'Mcintyre','Laura',22,'quis@idmagnaet.net','(379) 430-1105');
INSERT INTO `user` VALUES (9,'Everett','Abdul',46,'ullamcorper@Maecenas.ca','(162) 825-8316');
INSERT INTO `user` VALUES (10,'Mosley','Ishmael',34,'purus.Nullam@necurna.ca','(848) 658-3335');
INSERT INTO `user` VALUES (11,'Parker','Evan',58,'gravida.molestie@libero.co.uk','(374) 799-8466');
INSERT INTO `user` VALUES (12,'Trevino','Idona',56,'Duis.elementum.dui@infaucibus.org','(736) 305-1842');
INSERT INTO `user` VALUES (13,'Cross','Halla',41,'cursus.non@loremsemperauctor.com','(971) 728-9788');
INSERT INTO `user` VALUES (14,'Silva','Wynne',58,'vitae.semper@fermentumconvallisligula.edu','(748) 602-4822');
INSERT INTO `user` VALUES (15,'Warren','Kevin',69,'tincidunt@egetipsum.com','(237) 917-3583');
INSERT INTO `user` VALUES (16,'Wolfe','Cameran',67,'accumsan@velitSedmalesuada.edu','(224) 618-4495');
INSERT INTO `user` VALUES (17,'Soto','Octavia',35,'venenatis.a.magna@Donecfeugiat.co.uk','(362) 708-8343');
INSERT INTO `user` VALUES (18,'Mason','Chadwick',49,'molestie.orci@sempertellus.net','(972) 735-0228');
INSERT INTO `user` VALUES (19,'Joseph','Vernon',57,'ut.cursus.luctus@Morbinon.net','(896) 730-6234');
INSERT INTO `user` VALUES (20,'Long','Gary',58,'Vivamus.rhoncus@egestas.net','(356) 835-9078');
INSERT INTO `user` VALUES (21,'Velasquez','Vladimir',39,'Phasellus@magnaLoremipsum.ca','(457) 446-4585');
INSERT INTO `user` VALUES (22,'Aguirre','Echo',39,'lectus.rutrum@Ut.co.uk','(303) 128-4482');
INSERT INTO `user` VALUES (23,'William','Uriah',23,'dictum@consequatlectussit.edu','(384) 497-0290');
INSERT INTO `user` VALUES (24,'Mercado','Bradley',19,'Sed.nunc.est@eu.co.uk','(339) 166-9067');
INSERT INTO `user` VALUES (25,'Petty','Emi',25,'volutpat.ornare.facilisis@erosnon.edu','(545) 924-6671');
INSERT INTO `user` VALUES (26,'Waller','Aladdin',23,'a.auctor.non@fringillaporttitorvulputate.ca','(834) 720-8080');
INSERT INTO `user` VALUES (27,'Lee','Darius',23,'sodales.at@erat.org','(289) 875-7943');
INSERT INTO `user` VALUES (28,'Castillo','Kalia',24,'nunc.In@lacusEtiambibendum.ca','(233) 436-3031');
INSERT INTO `user` VALUES (29,'Macdonald','Fulton',20,'risus.varius@elitpharetra.co.uk','(743) 752-3753');
INSERT INTO `user` VALUES (30,'Lyons','Rashad',19,'ullamcorper@commodohendrerit.org','(642) 752-9257');
INSERT INTO `user` VALUES (31,'Russo','Octavius',18,'fringilla.Donec.feugiat@lacinia.net','(374) 175-0106');
INSERT INTO `user` VALUES (32,'Clarke','Kim',25,'malesuada.vel.venenatis@ametnulla.com','(123) 427-2738');
INSERT INTO `user` VALUES (33,'Meyer','Clementine',36,'accumsan.neque.et@nonegestasa.co.uk','(549) 513-8313');
INSERT INTO `user` VALUES (34,'Barry','Camden',67,'Nullam@eratnonummyultricies.ca','(282) 637-0259');
INSERT INTO `user` VALUES (35,'Morgan','Cole',33,'tempus.risus.Donec@sollicitudin.ca','(895) 795-2358');
INSERT INTO `user` VALUES (36,'Johnston','Walker',23,'augue.malesuada@velpedeblandit.ca','(569) 247-5532');
INSERT INTO `user` VALUES (37,'Dawson','Cruz',59,'primis.in@molestietellusAenean.ca','(325) 531-6135');
INSERT INTO `user` VALUES (38,'Walls','Gary',69,'rutrum.urna@nuncInat.co.uk','(331) 735-5962');
INSERT INTO `user` VALUES (39,'Noel','Duncan',18,'vestibulum.Mauris.magna@consectetuermauris.ed','(336) 174-1964');
INSERT INTO `user` VALUES (40,'Jensen','Kato',42,'convallis.ligula@posuere.edu','(671) 714-4622');
INSERT INTO `user` VALUES (41,'Combs','Cassandra',57,'Cras.convallis.convallis@temporest.co.uk','(560) 155-2480');
INSERT INTO `user` VALUES (42,'Sheppard','Tana',40,'elit@Sedpharetrafelis.org','(894) 261-8005');
INSERT INTO `user` VALUES (43,'Sosa','Brian',67,'ut.aliquam.iaculis@Cras.ca','(961) 739-1950');
INSERT INTO `user` VALUES (44,'Clements','Patrick',43,'arcu.Morbi@vitae.ca','(411) 406-3691');
INSERT INTO `user` VALUES (45,'Moon','Kamal',70,'feugiat.metus@fames.edu','(788) 746-1631');
INSERT INTO `user` VALUES (46,'Curry','Kamal',27,'eu@tempuseu.edu','(476) 921-4741');
INSERT INTO `user` VALUES (47,'Crane','Jarrod',35,'Lorem@ultricies.net','(647) 200-7640');
INSERT INTO `user` VALUES (48,'Gilliam','Eden',34,'Aliquam.nisl.Nulla@pharetranibhAliquam.co.uk','(453) 833-6284');
INSERT INTO `user` VALUES (49,'Leach','Fallon',60,'amet@orci.net','(477) 423-9799');
INSERT INTO `user` VALUES (50,'Beach','Minerva',54,'laoreet.lectus@Maurisnondui.co.uk','(742) 323-1105');
INSERT INTO `user` VALUES (51,'Hurley','Emerson',20,'eget.dictum@dui.co.uk','(431) 318-0840');
INSERT INTO `user` VALUES (52,'Cooke','Reuben',21,'aliquam.arcu.Aliquam@anteipsum.edu','(632) 728-9961');
INSERT INTO `user` VALUES (53,'Hayes','Madison',37,'a.magna@sedsemegestas.net','(667) 501-3877');
INSERT INTO `user` VALUES (54,'Bryant','Neville',68,'ad.litora@mauriselit.com','(385) 101-0349');
INSERT INTO `user` VALUES (55,'Mcfadden','Gloria',34,'placerat@ornarefacilisiseget.org','(367) 572-0679');
INSERT INTO `user` VALUES (56,'Mcpherson','Josiah',28,'risus.quis@dictum.net','(307) 613-9523');
INSERT INTO `user` VALUES (57,'Holt','Lucian',44,'varius.ultrices.mauris@habitantmorbitristique','(214) 519-5657');
INSERT INTO `user` VALUES (58,'Mclaughlin','Jessamine',26,'posuere.cubilia@Class.co.uk','(234) 631-1033');
INSERT INTO `user` VALUES (59,'Bush','Isadora',64,'mus.Proin@lacuspedesagittis.edu','(520) 259-5996');
INSERT INTO `user` VALUES (60,'Moody','Xavier',36,'molestie.sodales@urna.org','(125) 988-2793');
INSERT INTO `user` VALUES (61,'Conway','Ulysses',22,'Etiam.bibendum@Fuscealiquam.com','(793) 707-0810');
INSERT INTO `user` VALUES (62,'Lucas','Walter',21,'egestas.Aliquam.fringilla@congueturpisIn.ca','(910) 646-1219');
INSERT INTO `user` VALUES (63,'Pearson','Nayda',25,'Proin@acrisus.co.uk','(195) 830-1454');
INSERT INTO `user` VALUES (64,'Rivas','Vance',22,'quis@libero.ca','(325) 847-0982');
INSERT INTO `user` VALUES (65,'Fox','Cara',21,'vitae.nibh@tortordictum.co.uk','(803) 762-2353');
INSERT INTO `user` VALUES (66,'Barton','Isaac',22,'arcu.Vestibulum.ut@sem.org','(310) 782-1825');
INSERT INTO `user` VALUES (67,'Charles','Cally',25,'velit@luctus.org','(248) 462-3968');
INSERT INTO `user` VALUES (68,'Winters','Shelby',21,'Suspendisse.tristique.neque@ornaresagittisfel','(677) 831-4935');
INSERT INTO `user` VALUES (69,'Noel','Kerry',18,'Phasellus.ornare.Fusce@maurisSuspendisse.co.u','(320) 451-1301');
INSERT INTO `user` VALUES (70,'Mcgee','Lionel',18,'parturient@eu.com','(848) 496-1341');
INSERT INTO `user` VALUES (71,'Mckee','Chelsea',18,'nulla.Donec.non@Phasellusliberomauris.com','(684) 423-9516');
INSERT INTO `user` VALUES (72,'Talley','Jasper',23,'semper@velit.co.uk','(198) 192-0501');
INSERT INTO `user` VALUES (73,'Conrad','Serina',25,'Aliquam.gravida.mauris@sollicitudinorcisem.ca','(877) 634-7374');
INSERT INTO `user` VALUES (74,'Higgins','Casey',23,'turpis.Aliquam@Crasegetnisi.co.uk','(786) 670-4376');
INSERT INTO `user` VALUES (75,'Richmond','Micah',25,'Quisque@a.edu','(656) 827-3851');
INSERT INTO `user` VALUES (76,'Yates','Micah',21,'vitae.aliquet@dignissimmagnaa.net','(469) 102-1945');
INSERT INTO `user` VALUES (77,'Bradford','Zena',25,'rutrum.Fusce@ultrices.com','(583) 824-0503');
INSERT INTO `user` VALUES (78,'Parker','Ruth',18,'Duis@eleifend.org','(118) 326-8786');
INSERT INTO `user` VALUES (79,'Schmidt','Rudyard',22,'purus.Nullam@placeratvelit.edu','(976) 632-9097');
INSERT INTO `user` VALUES (80,'Lloyd','Mallory',19,'In.ornare@anuncIn.edu','(222) 100-9256');
INSERT INTO `user` VALUES (81,'Hutchinson','Kibo',21,'feugiat@Aliquamnisl.net','(213) 265-6016');
INSERT INTO `user` VALUES (82,'Williams','Stephen',19,'Nam@ametrisus.co.uk','(190) 612-0603');
INSERT INTO `user` VALUES (83,'Keith','Rose',23,'massa.Suspendisse@vestibulummassa.edu','(773) 944-5776');
INSERT INTO `user` VALUES (84,'Barnett','Wayne',22,'primis.in.faucibus@parturient.edu','(502) 869-0308');
INSERT INTO `user` VALUES (85,'King','Alden',24,'nec@justo.ca','(717) 184-8711');
INSERT INTO `user` VALUES (86,'Kramer','Coby',24,'eu@Nunc.edu','(386) 973-9754');
INSERT INTO `user` VALUES (87,'Puckett','Graiden',40,'Cum@euultricessit.edu','(861) 486-0548');
INSERT INTO `user` VALUES (88,'Mathis','Felix',21,'ut@nectellus.net','(416) 345-3432');
INSERT INTO `user` VALUES (89,'Burns','Phelan',19,'tellus@arcuAliquamultrices.org','(688) 413-9297');
INSERT INTO `user` VALUES (90,'French','Angelica',19,'rutrum.justo@veliteusem.ca','(204) 127-1791');
INSERT INTO `user` VALUES (91,'Kim','Dolan',22,'posuere.cubilia.Curae@dolor.net','(258) 457-0085');
INSERT INTO `user` VALUES (92,'Conway','Leslie',24,'Integer.id@Suspendisseseddolor.ca','(406) 710-4917');
INSERT INTO `user` VALUES (93,'Vincent','Castor',22,'nisl@aduiCras.co.uk','(181) 958-5032');
INSERT INTO `user` VALUES (94,'Shepherd','Stella',22,'magna.Cras@vestibulumloremsit.co.uk','(365) 768-4149');
INSERT INTO `user` VALUES (95,'Lyons','Barrett',23,'vel.arcu.eu@justo.net','(971) 999-2611');
INSERT INTO `user` VALUES (96,'Lloyd','Grady',21,'Phasellus.dapibus@ametorciUt.com','(578) 224-4324');
INSERT INTO `user` VALUES (97,'Talley','Jacob',18,'Pellentesque@cursus.ca','(185) 375-2590');
INSERT INTO `user` VALUES (98,'Buckley','Adrian',18,'scelerisque@nibhPhasellusnulla.com','(172) 345-1650');
INSERT INTO `user` VALUES (99,'Henderson','Len',64,'Donec.egestas.Aliquam@Duisrisusodio.net','(499) 311-2241');
INSERT INTO `user` VALUES (100,'Hewitt','Fritz',43,'egestas.ligula@fringilla.com','(835) 279-5490');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
