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
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `cartProject`.`User` (
  `userId` INT NOT NULL AUTO_INCREMENT,
  `lastName` VARCHAR(45) NOT NULL,
  `firstName` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phoneNumber` VARCHAR(16) NOT NULL,
  `password` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`userId`))
ENGINE = InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Dillard','Zachery',41,'nisi.sem@mollisDuissit.org','(907) 769-7064','b6f1a5e51c7e6b6f814652d7983f9fae','user');
INSERT INTO `user` VALUES (2,'Barber','Piper',56,'magna.Duis@auctornon.net','(605) 469-1764','fa1081686a5d5447e45108c2c6a6d995','user');
INSERT INTO `user` VALUES (3,'Bruce','Zachery',34,'ante.iaculis@bibendumfermentum.edu','(960) 195-4931','99e8cf01386e195a45765ba644118ebd','user');
INSERT INTO `user` VALUES (4,'Pena','Shelley',61,'ipsum.Suspendisse.sagittis@aptent.com','(786) 710-7404','19354dc585d0c89282203b9da7d75ba1','user');
INSERT INTO `user` VALUES (5,'Matthews','Reuben',27,'montes.nascetur@NullamenimSed.ca','(908) 609-6279','ce590e5f1e4fb0d6b262a0ed1e9dd638','user');
INSERT INTO `user` VALUES (6,'Grimes','Robert',24,'suscipit@dictumeleifend.com','(566) 882-7313','84ee918a41548b1aa8e847e0de940d6b','user');
INSERT INTO `user` VALUES (7,'Mullen','Graham',49,'ac.mattis@Curabiturvel.com','(769) 850-7836','e8774bce1a580110a53b1f7ff3ca4ca7','user');
INSERT INTO `user` VALUES (8,'Mcintyre','Laura',22,'quis@idmagnaet.net','(379) 430-1105','2a8c63517d513a43dbc35b023f5c837a','user');
INSERT INTO `user` VALUES (9,'Everett','Abdul',46,'ullamcorper@Maecenas.ca','(162) 825-8316','ce81df40390c827a23c7d53dbd530c81','user');
INSERT INTO `user` VALUES (10,'Mosley','Ishmael',34,'purus.Nullam@necurna.ca','(848) 658-3335','49dbd551baf69430145e494270edb8d9','user');
INSERT INTO `user` VALUES (11,'Parker','Evan',58,'gravida.molestie@libero.co.uk','(374) 799-8466','a9bc8ebf2b7999891834910bd95ff37b','user');
INSERT INTO `user` VALUES (12,'Trevino','Idona',56,'Duis.elementum.dui@infaucibus.org','(736) 305-1842','cac1b97036b268b1b4f0126ac1ff3a04','user');
INSERT INTO `user` VALUES (13,'Cross','Halla',41,'cursus.non@loremsemperauctor.com','(971) 728-9788','005f270dac0cebe8c4aa3ad94b52ac1c','user');
INSERT INTO `user` VALUES (14,'Silva','Wynne',58,'vitae.semper@fermentumconvallisligula.edu','(748) 602-4822','328e475a1e2aab3a118cf399ac224fbe','user');
INSERT INTO `user` VALUES (15,'Warren','Kevin',69,'tincidunt@egetipsum.com','(237) 917-3583','d9a8d9c6d837be90e8c8b6424d4b7f74','user');
INSERT INTO `user` VALUES (16,'Wolfe','Cameran',67,'accumsan@velitSedmalesuada.edu','(224) 618-4495','9b63d6f2f7d57ffad9273e309e6d694a','user');
INSERT INTO `user` VALUES (17,'Soto','Octavia',35,'venenatis.a.magna@Donecfeugiat.co.uk','(362) 708-8343','92ffa8ecc12e6ed1f24da64530e94ac8','user');
INSERT INTO `user` VALUES (18,'Mason','Chadwick',49,'molestie.orci@sempertellus.net','(972) 735-0228','2e0a5935ed6f6b9ec54cf67f8d63624b','user');
INSERT INTO `user` VALUES (19,'Joseph','Vernon',57,'ut.cursus.luctus@Morbinon.net','(896) 730-6234','8d9e9d8ffa7446e46267f3558e556e97','user');
INSERT INTO `user` VALUES (20,'Long','Gary',58,'Vivamus.rhoncus@egestas.net','(356) 835-9078','8c187e32f664fe5987f8eccbbcd2c8b8','user');
INSERT INTO `user` VALUES (21,'Velasquez','Vladimir',39,'Phasellus@magnaLoremipsum.ca','(457) 446-4585','80d4d3c4fdf72cdd8b2b5ec876c6ad0d','user');
INSERT INTO `user` VALUES (22,'Aguirre','Echo',39,'lectus.rutrum@Ut.co.uk','(303) 128-4482','6553f77a87e936384dee611da9ff2f73','user');
INSERT INTO `user` VALUES (23,'William','Uriah',23,'dictum@consequatlectussit.edu','(384) 497-0290','0033fa853ac11dd040f204b630c35e30','user');
INSERT INTO `user` VALUES (24,'Mercado','Bradley',19,'Sed.nunc.est@eu.co.uk','(339) 166-9067','d3440caf7d6782005d620978aa8fb679','user');
INSERT INTO `user` VALUES (25,'Petty','Emi',25,'volutpat.ornare.facilisis@erosnon.edu','(545) 924-6671','ebc6cee0712e4759067cc4019ee9a94e','user');
INSERT INTO `user` VALUES (26,'Waller','Aladdin',23,'a.auctor.non@fringillaporttitorvulputate.ca','(834) 720-8080','b22ce0e2c32bbbf5f1c02350af9da994','user');
INSERT INTO `user` VALUES (27,'Lee','Darius',23,'sodales.at@erat.org','(289) 875-7943','c6a3a7785da8fbd09a635b71b96f39df','user');
INSERT INTO `user` VALUES (28,'Castillo','Kalia',24,'nunc.In@lacusEtiambibendum.ca','(233) 436-3031','1ea7f0f4ac0b009cc8eb4e92f6def136','user');
INSERT INTO `user` VALUES (29,'Macdonald','Fulton',20,'risus.varius@elitpharetra.co.uk','(743) 752-3753','510c64a7277061ca2cd25c9df65fb6a0','user');
INSERT INTO `user` VALUES (30,'Lyons','Rashad',19,'ullamcorper@commodohendrerit.org','(642) 752-9257','2c6771e8b33aa083539ffa651183de5b','user');
INSERT INTO `user` VALUES (31,'Russo','Octavius',18,'fringilla.Donec.feugiat@lacinia.net','(374) 175-0106','8cc581bb5971b08dfed20600ac46e5fa','user');
INSERT INTO `user` VALUES (32,'Clarke','Kim',25,'malesuada.vel.venenatis@ametnulla.com','(123) 427-2738','48e6e3c40d979afe0803d4763217fdd0','user');
INSERT INTO `user` VALUES (33,'Meyer','Clementine',36,'accumsan.neque.et@nonegestasa.co.uk','(549) 513-8313','43c81e79e74cd21a3e12fb652703718b','user');
INSERT INTO `user` VALUES (34,'Barry','Camden',67,'Nullam@eratnonummyultricies.ca','(282) 637-0259','84cf6662180b822deb41674102f85825','user');
INSERT INTO `user` VALUES (35,'Morgan','Cole',33,'tempus.risus.Donec@sollicitudin.ca','(895) 795-2358','6eca6e032c6a795fb1908814fbf293ff','user');
INSERT INTO `user` VALUES (36,'Johnston','Walker',23,'augue.malesuada@velpedeblandit.ca','(569) 247-5532','24b3818f3868337f54309e2b59a79787','user');
INSERT INTO `user` VALUES (37,'Dawson','Cruz',59,'primis.in@molestietellusAenean.ca','(325) 531-6135','eaf9897fca72f3c0add234116b858135','user');
INSERT INTO `user` VALUES (38,'Walls','Gary',69,'rutrum.urna@nuncInat.co.uk','(331) 735-5962','8697173de081bfca44e9efb1b45aca74','user');
INSERT INTO `user` VALUES (39,'Noel','Duncan',18,'vestibulum.Mauris.magna@consectetuermauris.ed','(336) 174-1964','49958f9b3ea43911dd59ebc5f8ce7bcb','user');
INSERT INTO `user` VALUES (40,'Jensen','Kato',42,'convallis.ligula@posuere.edu','(671) 714-4622','ef178f65caad9ea93db6e099721005b5','user');
INSERT INTO `user` VALUES (41,'Combs','Cassandra',57,'Cras.convallis.convallis@temporest.co.uk','(560) 155-2480','e8d9e4de397a172b61204c35e64389b4','user');
INSERT INTO `user` VALUES (42,'Sheppard','Tana',40,'elit@Sedpharetrafelis.org','(894) 261-8005','9309328d00cfd852227de9f0ca9b9a0b','user');
INSERT INTO `user` VALUES (43,'Sosa','Brian',67,'ut.aliquam.iaculis@Cras.ca','(961) 739-1950','0a165ca37a1a29bb5b785e21d9d13b7b','user');
INSERT INTO `user` VALUES (44,'Clements','Patrick',43,'arcu.Morbi@vitae.ca','(411) 406-3691','58c2fc0affa01272a52f8bded6c3f010','user');
INSERT INTO `user` VALUES (45,'Moon','Kamal',70,'feugiat.metus@fames.edu','(788) 746-1631','b7be3cc59238f2aac96ba9b591304b5a','user');
INSERT INTO `user` VALUES (46,'Curry','Kamal',27,'eu@tempuseu.edu','(476) 921-4741','f9f2a5f7e4f1eb8a0b33dbb9a941d8b4','user');
INSERT INTO `user` VALUES (47,'Crane','Jarrod',35,'Lorem@ultricies.net','(647) 200-7640','8c7f4de800edc503ef732e383b669a86','user');
INSERT INTO `user` VALUES (48,'Gilliam','Eden',34,'Aliquam.nisl.Nulla@pharetranibhAliquam.co.uk','(453) 833-6284','494198dc836404c2f15ab7750943b77d','user');
INSERT INTO `user` VALUES (49,'Leach','Fallon',60,'amet@orci.net','(477) 423-9799','f5bd58bf3973defa2f5c68a72868cd13','user');
INSERT INTO `user` VALUES (50,'Beach','Minerva',54,'laoreet.lectus@Maurisnondui.co.uk','(742) 323-1105','0a6037e2677879c84ea5e6b3938cd678','user');
INSERT INTO `user` VALUES (51,'Hurley','Emerson',20,'eget.dictum@dui.co.uk','(431) 318-0840','6ecaafd57728b1e450cab85603b9abed','user');
INSERT INTO `user` VALUES (52,'Cooke','Reuben',21,'aliquam.arcu.Aliquam@anteipsum.edu','(632) 728-9961','e35a4e5ed0e3584d80deffa6c1bd5f9b','user');
INSERT INTO `user` VALUES (53,'Hayes','Madison',37,'a.magna@sedsemegestas.net','(667) 501-3877','52ce914693115f3715bc5b4b2261603d','user');
INSERT INTO `user` VALUES (54,'Bryant','Neville',68,'ad.litora@mauriselit.com','(385) 101-0349','7b266deead78beb3af57451a458c6773','user');
INSERT INTO `user` VALUES (55,'Mcfadden','Gloria',34,'placerat@ornarefacilisiseget.org','(367) 572-0679','11216038c0b8a84cef9e2b96f558b1de','user');
INSERT INTO `user` VALUES (56,'Mcpherson','Josiah',28,'risus.quis@dictum.net','(307) 613-9523','667b0f768e831a10cc9dcc1781751bac','user');
INSERT INTO `user` VALUES (57,'Holt','Lucian',44,'varius.ultrices.mauris@habitantmorbitristique','(214) 519-5657','9518ec3c3eb5d4b15ec4cbe8dc894b2c','user');
INSERT INTO `user` VALUES (58,'Mclaughlin','Jessamine',26,'posuere.cubilia@Class.co.uk','(234) 631-1033','75a7be5d310293235aad8a9afa3ddb95','user');
INSERT INTO `user` VALUES (59,'Bush','Isadora',64,'mus.Proin@lacuspedesagittis.edu','(520) 259-5996','dcd047f0a68c4ffadac91b262248f4ce','user');
INSERT INTO `user` VALUES (60,'Moody','Xavier',36,'molestie.sodales@urna.org','(125) 988-2793','7ce72a534c41e6110e71579650f10cbc','user');
INSERT INTO `user` VALUES (61,'Conway','Ulysses',22,'Etiam.bibendum@Fuscealiquam.com','(793) 707-0810','6c42edc0d8ccda37602807fd33b3a128','user');
INSERT INTO `user` VALUES (62,'Lucas','Walter',21,'egestas.Aliquam.fringilla@congueturpisIn.ca','(910) 646-1219','4932d56a21961b1028fee69fa192387d','user');
INSERT INTO `user` VALUES (63,'Pearson','Nayda',25,'Proin@acrisus.co.uk','(195) 830-1454','22c7e424678612cccb4bea422d54831a','user');
INSERT INTO `user` VALUES (64,'Rivas','Vance',22,'quis@libero.ca','(325) 847-0982','197f0918d994bcceda10e9850e3529ba','user');
INSERT INTO `user` VALUES (65,'Fox','Cara',21,'vitae.nibh@tortordictum.co.uk','(803) 762-2353','68f11a098d405c689b975feed7236148','user');
INSERT INTO `user` VALUES (66,'Barton','Isaac',22,'arcu.Vestibulum.ut@sem.org','(310) 782-1825','5ac1b0b0996b860358d7d9f2656a47f6','user');
INSERT INTO `user` VALUES (67,'Charles','Cally',25,'velit@luctus.org','(248) 462-3968','5c89f2e08de72ca2b694b36f35d90e1f','user');
INSERT INTO `user` VALUES (68,'Winters','Shelby',21,'Suspendisse.tristique.neque@ornaresagittisfel','(677) 831-4935','3b7776efd06c2a9bb2f2234c9fd8fbfc','user');
INSERT INTO `user` VALUES (69,'Noel','Kerry',18,'Phasellus.ornare.Fusce@maurisSuspendisse.co.u','(320) 451-1301','6eee013d46444bb9a48db3c44bce4ad6','user');
INSERT INTO `user` VALUES (70,'Mcgee','Lionel',18,'parturient@eu.com','(848) 496-1341','e0b611afc4ba7cf3284ca0772c462cdb','user');
INSERT INTO `user` VALUES (71,'Mckee','Chelsea',18,'nulla.Donec.non@Phasellusliberomauris.com','(684) 423-9516','927b0ed041fa4a01095b7a46d6d62adc','user');
INSERT INTO `user` VALUES (72,'Talley','Jasper',23,'semper@velit.co.uk','(198) 192-0501','4347694a243eee9b06d415bae0cfca5d','user');
INSERT INTO `user` VALUES (73,'Conrad','Serina',25,'Aliquam.gravida.mauris@sollicitudinorcisem.ca','(877) 634-7374','e759661c05dc0c0d31858276d8d98eaf','user');
INSERT INTO `user` VALUES (74,'Higgins','Casey',23,'turpis.Aliquam@Crasegetnisi.co.uk','(786) 670-4376','4703bf38c9ff21030a8ded380dcf6722','user');
INSERT INTO `user` VALUES (75,'Richmond','Micah',25,'Quisque@a.edu','(656) 827-3851','cf3a080e77cc73d77a28d22e332a4b7f','user');
INSERT INTO `user` VALUES (76,'Yates','Micah',21,'vitae.aliquet@dignissimmagnaa.net','(469) 102-1945','bcfae5337d1e1bd03ab0dcf6f7f35ee5','user');
INSERT INTO `user` VALUES (77,'Bradford','Zena',25,'rutrum.Fusce@ultrices.com','(583) 824-0503','9bb3f38ad65e68051b559e1b8a76760b','user');
INSERT INTO `user` VALUES (78,'Parker','Ruth',18,'Duis@eleifend.org','(118) 326-8786','42714ab0bf657bbef589b7adc3747f6f','user');
INSERT INTO `user` VALUES (79,'Schmidt','Rudyard',22,'purus.Nullam@placeratvelit.edu','(976) 632-9097','c9d5ab0a520df730a063028287fdff8a','user');
INSERT INTO `user` VALUES (80,'Lloyd','Mallory',19,'In.ornare@anuncIn.edu','(222) 100-9256','c8bb52dbd7d4ab8878592d59e3a0b37d','user');
INSERT INTO `user` VALUES (81,'Hutchinson','Kibo',21,'feugiat@Aliquamnisl.net','(213) 265-6016','b740d6a34c1e23a4b7c127fcd7f8f51a','user');
INSERT INTO `user` VALUES (82,'Williams','Stephen',19,'Nam@ametrisus.co.uk','(190) 612-0603','45f6377346586d3b43f160956be4951f','user');
INSERT INTO `user` VALUES (83,'Keith','Rose',23,'massa.Suspendisse@vestibulummassa.edu','(773) 944-5776','dfa35d35d580e3609a0c1d377876624a','user');
INSERT INTO `user` VALUES (84,'Barnett','Wayne',22,'primis.in.faucibus@parturient.edu','(502) 869-0308','0f5d848a3bb77921ebface059bfca4f5','user');
INSERT INTO `user` VALUES (85,'King','Alden',24,'nec@justo.ca','(717) 184-8711','3ecc05df65e3d43f2cf855468bb6e60e','user');
INSERT INTO `user` VALUES (86,'Kramer','Coby',24,'eu@Nunc.edu','(386) 973-9754','c0747167fb4c3690d927bab715e17a00','user');
INSERT INTO `user` VALUES (87,'Puckett','Graiden',40,'Cum@euultricessit.edu','(861) 486-0548','aa99b55731ac166e434abcfc51078814','user');
INSERT INTO `user` VALUES (88,'Mathis','Felix',21,'ut@nectellus.net','(416) 345-3432','b524f8b02e0a701ef77e4109fb03d38c','user');
INSERT INTO `user` VALUES (89,'Burns','Phelan',19,'tellus@arcuAliquamultrices.org','(688) 413-9297','798a3b3f56fac6d3ec4c55972dda2de2','user');
INSERT INTO `user` VALUES (90,'French','Angelica',19,'rutrum.justo@veliteusem.ca','(204) 127-1791','e8bde3f9bd038a61a7d9c572e3df4345','user');
INSERT INTO `user` VALUES (91,'Kim','Dolan',22,'posuere.cubilia.Curae@dolor.net','(258) 457-0085','742aa410af58513e33266e5766520ef3','user');
INSERT INTO `user` VALUES (92,'Conway','Leslie',24,'Integer.id@Suspendisseseddolor.ca','(406) 710-4917','f2bd527393f33a3739353c78426ea83b','user');
INSERT INTO `user` VALUES (93,'Vincent','Castor',22,'nisl@aduiCras.co.uk','(181) 958-5032','a154d04fb17aa7a21d50047bbd362c7b','user');
INSERT INTO `user` VALUES (94,'Shepherd','Stella',22,'magna.Cras@vestibulumloremsit.co.uk','(365) 768-4149','bd816719aaf7efd667b9fe72bc075dfc','user');
INSERT INTO `user` VALUES (95,'Lyons','Barrett',23,'vel.arcu.eu@justo.net','(971) 999-2611','4cca4c7f43505ba7841414ca577c836e','user');
INSERT INTO `user` VALUES (96,'Lloyd','Grady',21,'Phasellus.dapibus@ametorciUt.com','(578) 224-4324','858f30b2fc556292a1fba99799f06495','user');
INSERT INTO `user` VALUES (97,'Talley','Jacob',18,'Pellentesque@cursus.ca','(185) 375-2590','7d1c9b6ffaba34e114da795b1b003be3','user');
INSERT INTO `user` VALUES (98,'Buckley','Adrian',18,'scelerisque@nibhPhasellusnulla.com','(172) 345-1650','56867b8373e38204d6bc2ec923e511a6','user');
INSERT INTO `user` VALUES (99,'Henderson','Len',64,'Donec.egestas.Aliquam@Duisrisusodio.net','(499) 311-2241','3421e3c2a191ef246fcd468a10b93757','user');
INSERT INTO `user` VALUES (100,'Hewitt','Fritz',43,'egestas.ligula@fringilla.com','(835) 279-5490','3f6b743aabdb4001940b3b24b46c942b','user');
INSERT INTO `user` VALUES (101,'Thomas','Lizzy',24,'ethoma53@uncc.edu','(704) 555-5555','81dc9bdb52d04dc20036dbd8313ed055','admin');
INSERT INTO `user` VALUES (102,'Alaimo','Richard',24,'ralaimo@uncc.edu','(704) 222-2222','81dc9bdb52d04dc20036dbd8313ed055','admin');
INSERT INTO `user` VALUES (103,'Pullen','Rachel',24,'rpullen@uncc.edu','(704) 333-3333','81dc9bdb52d04dc20036dbd8313ed055','admin');
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
