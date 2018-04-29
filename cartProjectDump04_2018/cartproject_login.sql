-- MySQL Script created using MySQL Workbench
-- Builds login table for cartProject database
-- Group ER(R) ITCS 6160 Spring 2018
-- Authors: Lizzy Thomas, Rachel Pullen, Richard Alaimo
-- Thursday, April 28th 2018 (Project Deliverable 2)
-- Model: New Model    Version: 1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `User_userId` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY(User_userId),
  CONSTRAINT `fk_Login_User`
    FOREIGN KEY (`User_userId`)
    REFERENCES `cartProject`.`User` (`userId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'nisi.sem@mollisDuissit.org','b6f1a5e51c7e6b6f814652d7983f9fae','user');
INSERT INTO `login` VALUES (2,'magna.Duis@auctornon.net','fa1081686a5d5447e45108c2c6a6d995','user');
INSERT INTO `login` VALUES (3,'ante.iaculis@bibendumfermentum.edu','99e8cf01386e195a45765ba644118ebd','user');
INSERT INTO `login` VALUES (4,'ipsum.Suspendisse.sagittis@aptent.com','19354dc585d0c89282203b9da7d75ba1','user');
INSERT INTO `login` VALUES (5,'montes.nascetur@NullamenimSed.ca','ce590e5f1e4fb0d6b262a0ed1e9dd638','user');
INSERT INTO `login` VALUES (6,'suscipit@dictumeleifend.com','84ee918a41548b1aa8e847e0de940d6b','user');
INSERT INTO `login` VALUES (7,'ac.mattis@Curabiturvel.com','e8774bce1a580110a53b1f7ff3ca4ca7','user');
INSERT INTO `login` VALUES (8,'quis@idmagnaet.net','2a8c63517d513a43dbc35b023f5c837a','user');
INSERT INTO `login` VALUES (9,'ullamcorper@Maecenas.ca','ce81df40390c827a23c7d53dbd530c81','user');
INSERT INTO `login` VALUES (10,'purus.Nullam@necurna.ca','49dbd551baf69430145e494270edb8d9','user');
INSERT INTO `login` VALUES (11,'gravida.molestie@libero.co.uk','a9bc8ebf2b7999891834910bd95ff37b','user');
INSERT INTO `login` VALUES (12,'Duis.elementum.dui@infaucibus.org','cac1b97036b268b1b4f0126ac1ff3a04','user');
INSERT INTO `login` VALUES (13,'cursus.non@loremsemperauctor.com','005f270dac0cebe8c4aa3ad94b52ac1c','user');
INSERT INTO `login` VALUES (14,'vitae.semper@fermentumconvallisligula.edu','328e475a1e2aab3a118cf399ac224fbe','user');
INSERT INTO `login` VALUES (15,'tincidunt@egetipsum.com','d9a8d9c6d837be90e8c8b6424d4b7f74','user');
INSERT INTO `login` VALUES (16,'accumsan@velitSedmalesuada.edu','9b63d6f2f7d57ffad9273e309e6d694a','user');
INSERT INTO `login` VALUES (17,'venenatis.a.magna@Donecfeugiat.co.uk','92ffa8ecc12e6ed1f24da64530e94ac8','user');
INSERT INTO `login` VALUES (18,'molestie.orci@sempertellus.net','2e0a5935ed6f6b9ec54cf67f8d63624b','user');
INSERT INTO `login` VALUES (19,'ut.cursus.luctus@Morbinon.net','8d9e9d8ffa7446e46267f3558e556e97','user');
INSERT INTO `login` VALUES (20,'Vivamus.rhoncus@egestas.net','8c187e32f664fe5987f8eccbbcd2c8b8','user');
INSERT INTO `login` VALUES (21,'Phasellus@magnaLoremipsum.ca','80d4d3c4fdf72cdd8b2b5ec876c6ad0d','user');
INSERT INTO `login` VALUES (22,'lectus.rutrum@Ut.co.uk','6553f77a87e936384dee611da9ff2f73','user');
INSERT INTO `login` VALUES (23,'dictum@consequatlectussit.edu','0033fa853ac11dd040f204b630c35e30','user');
INSERT INTO `login` VALUES (24,'Sed.nunc.est@eu.co.uk','d3440caf7d6782005d620978aa8fb679','user');
INSERT INTO `login` VALUES (25,'volutpat.ornare.facilisis@erosnon.edu','ebc6cee0712e4759067cc4019ee9a94e','user');
INSERT INTO `login` VALUES (26,'a.auctor.non@fringillaporttitorvulputate.ca','b22ce0e2c32bbbf5f1c02350af9da994','user');
INSERT INTO `login` VALUES (27,'sodales.at@erat.org','c6a3a7785da8fbd09a635b71b96f39df','user');
INSERT INTO `login` VALUES (28,'nunc.In@lacusEtiambibendum.ca','1ea7f0f4ac0b009cc8eb4e92f6def136','user');
INSERT INTO `login` VALUES (29,'risus.varius@elitpharetra.co.uk','510c64a7277061ca2cd25c9df65fb6a0','user');
INSERT INTO `login` VALUES (30,'ullamcorper@commodohendrerit.org','2c6771e8b33aa083539ffa651183de5b','user');
INSERT INTO `login` VALUES (31,'fringilla.Donec.feugiat@lacinia.net','8cc581bb5971b08dfed20600ac46e5fa','user');
INSERT INTO `login` VALUES (32,'malesuada.vel.venenatis@ametnulla.com','48e6e3c40d979afe0803d4763217fdd0','user');
INSERT INTO `login` VALUES (33,'accumsan.neque.et@nonegestasa.co.uk','43c81e79e74cd21a3e12fb652703718b','user');
INSERT INTO `login` VALUES (34,'Nullam@eratnonummyultricies.ca','84cf6662180b822deb41674102f85825','user');
INSERT INTO `login` VALUES (35,'tempus.risus.Donec@sollicitudin.ca','6eca6e032c6a795fb1908814fbf293ff','user');
INSERT INTO `login` VALUES (36,'augue.malesuada@velpedeblandit.ca','24b3818f3868337f54309e2b59a79787','user');
INSERT INTO `login` VALUES (37,'primis.in@molestietellusAenean.ca','eaf9897fca72f3c0add234116b858135','user');
INSERT INTO `login` VALUES (38,'rutrum.urna@nuncInat.co.uk','8697173de081bfca44e9efb1b45aca74','user');
INSERT INTO `login` VALUES (39,'vestibulum.Mauris.magna@consectetuermauris.ed','49958f9b3ea43911dd59ebc5f8ce7bcb','user');
INSERT INTO `login` VALUES (40,'convallis.ligula@posuere.edu','ef178f65caad9ea93db6e099721005b5','user');
INSERT INTO `login` VALUES (41,'Cras.convallis.convallis@temporest.co.uk','e8d9e4de397a172b61204c35e64389b4','user');
INSERT INTO `login` VALUES (42,'elit@Sedpharetrafelis.org','9309328d00cfd852227de9f0ca9b9a0b','user');
INSERT INTO `login` VALUES (43,'ut.aliquam.iaculis@Cras.ca','0a165ca37a1a29bb5b785e21d9d13b7b','user');
INSERT INTO `login` VALUES (44,'arcu.Morbi@vitae.ca','58c2fc0affa01272a52f8bded6c3f010','user');
INSERT INTO `login` VALUES (45,'feugiat.metus@fames.edu','b7be3cc59238f2aac96ba9b591304b5a','user');
INSERT INTO `login` VALUES (46,'eu@tempuseu.edu','f9f2a5f7e4f1eb8a0b33dbb9a941d8b4','user');
INSERT INTO `login` VALUES (47,'Lorem@ultricies.net','8c7f4de800edc503ef732e383b669a86','user');
INSERT INTO `login` VALUES (48,'Aliquam.nisl.Nulla@pharetranibhAliquam.co.uk','494198dc836404c2f15ab7750943b77d','user');
INSERT INTO `login` VALUES (49,'amet@orci.net','f5bd58bf3973defa2f5c68a72868cd13','user');
INSERT INTO `login` VALUES (50,'laoreet.lectus@Maurisnondui.co.uk','0a6037e2677879c84ea5e6b3938cd678','user');
INSERT INTO `login` VALUES (51,'eget.dictum@dui.co.uk','6ecaafd57728b1e450cab85603b9abed','user');
INSERT INTO `login` VALUES (52,'aliquam.arcu.Aliquam@anteipsum.edu','e35a4e5ed0e3584d80deffa6c1bd5f9b','user');
INSERT INTO `login` VALUES (53,'a.magna@sedsemegestas.net','52ce914693115f3715bc5b4b2261603d','user');
INSERT INTO `login` VALUES (54,'ad.litora@mauriselit.com','7b266deead78beb3af57451a458c6773','user');
INSERT INTO `login` VALUES (55,'placerat@ornarefacilisiseget.org','11216038c0b8a84cef9e2b96f558b1de','user');
INSERT INTO `login` VALUES (56,'risus.quis@dictum.net','667b0f768e831a10cc9dcc1781751bac','user');
INSERT INTO `login` VALUES (57,'varius.ultrices.mauris@habitantmorbitristique','9518ec3c3eb5d4b15ec4cbe8dc894b2c','user');
INSERT INTO `login` VALUES (58,'posuere.cubilia@Class.co.uk','75a7be5d310293235aad8a9afa3ddb95','user');
INSERT INTO `login` VALUES (59,'mus.Proin@lacuspedesagittis.edu','dcd047f0a68c4ffadac91b262248f4ce','user');
INSERT INTO `login` VALUES (60,'molestie.sodales@urna.org','7ce72a534c41e6110e71579650f10cbc','user');
INSERT INTO `login` VALUES (61,'Etiam.bibendum@Fuscealiquam.com','6c42edc0d8ccda37602807fd33b3a128','user');
INSERT INTO `login` VALUES (62,'egestas.Aliquam.fringilla@congueturpisIn.ca','4932d56a21961b1028fee69fa192387d','user');
INSERT INTO `login` VALUES (63,'Proin@acrisus.co.uk','22c7e424678612cccb4bea422d54831a','user');
INSERT INTO `login` VALUES (64,'quis@libero.ca','197f0918d994bcceda10e9850e3529ba','user');
INSERT INTO `login` VALUES (65,'vitae.nibh@tortordictum.co.uk','68f11a098d405c689b975feed7236148','user');
INSERT INTO `login` VALUES (66,'arcu.Vestibulum.ut@sem.org','5ac1b0b0996b860358d7d9f2656a47f6','user');
INSERT INTO `login` VALUES (67,'velit@luctus.org','5c89f2e08de72ca2b694b36f35d90e1f','user');
INSERT INTO `login` VALUES (68,'Suspendisse.tristique.neque@ornaresagittisfel','3b7776efd06c2a9bb2f2234c9fd8fbfc','user');
INSERT INTO `login` VALUES (69,'Phasellus.ornare.Fusce@maurisSuspendisse.co.u','6eee013d46444bb9a48db3c44bce4ad6','user');
INSERT INTO `login` VALUES (70,'parturient@eu.com','e0b611afc4ba7cf3284ca0772c462cdb','user');
INSERT INTO `login` VALUES (71,'nulla.Donec.non@Phasellusliberomauris.com','927b0ed041fa4a01095b7a46d6d62adc','user');
INSERT INTO `login` VALUES (72,'semper@velit.co.uk','4347694a243eee9b06d415bae0cfca5d','user');
INSERT INTO `login` VALUES (73,'Aliquam.gravida.mauris@sollicitudinorcisem.ca','e759661c05dc0c0d31858276d8d98eaf','user');
INSERT INTO `login` VALUES (74,'turpis.Aliquam@Crasegetnisi.co.uk','4703bf38c9ff21030a8ded380dcf6722','user');
INSERT INTO `login` VALUES (75,'Quisque@a.edu','cf3a080e77cc73d77a28d22e332a4b7f','user');
INSERT INTO `login` VALUES (76,'vitae.aliquet@dignissimmagnaa.net','bcfae5337d1e1bd03ab0dcf6f7f35ee5','user');
INSERT INTO `login` VALUES (77,'rutrum.Fusce@ultrices.com','9bb3f38ad65e68051b559e1b8a76760b','user');
INSERT INTO `login` VALUES (78,'Duis@eleifend.org','42714ab0bf657bbef589b7adc3747f6f','user');
INSERT INTO `login` VALUES (79,'purus.Nullam@placeratvelit.edu','c9d5ab0a520df730a063028287fdff8a','user');
INSERT INTO `login` VALUES (80,'In.ornare@anuncIn.edu','c8bb52dbd7d4ab8878592d59e3a0b37d','user');
INSERT INTO `login` VALUES (81,'feugiat@Aliquamnisl.net','b740d6a34c1e23a4b7c127fcd7f8f51a','user');
INSERT INTO `login` VALUES (82,'Nam@ametrisus.co.uk','45f6377346586d3b43f160956be4951f','user');
INSERT INTO `login` VALUES (83,'massa.Suspendisse@vestibulummassa.edu','dfa35d35d580e3609a0c1d377876624a','user');
INSERT INTO `login` VALUES (84,'primis.in.faucibus@parturient.edu','0f5d848a3bb77921ebface059bfca4f5','user');
INSERT INTO `login` VALUES (85,'nec@justo.ca','3ecc05df65e3d43f2cf855468bb6e60e','user');
INSERT INTO `login` VALUES (86,'eu@Nunc.edu','c0747167fb4c3690d927bab715e17a00','user');
INSERT INTO `login` VALUES (87,'Cum@euultricessit.edu','aa99b55731ac166e434abcfc51078814','user');
INSERT INTO `login` VALUES (88,'ut@nectellus.net','b524f8b02e0a701ef77e4109fb03d38c','user');
INSERT INTO `login` VALUES (89,'tellus@arcuAliquamultrices.org','798a3b3f56fac6d3ec4c55972dda2de2','user');
INSERT INTO `login` VALUES (90,'rutrum.justo@veliteusem.ca','e8bde3f9bd038a61a7d9c572e3df4345','user');
INSERT INTO `login` VALUES (91,'posuere.cubilia.Curae@dolor.net','742aa410af58513e33266e5766520ef3','user');
INSERT INTO `login` VALUES (92,'Integer.id@Suspendisseseddolor.ca','f2bd527393f33a3739353c78426ea83b','user');
INSERT INTO `login` VALUES (93,'nisl@aduiCras.co.uk','a154d04fb17aa7a21d50047bbd362c7b','user');
INSERT INTO `login` VALUES (94,'magna.Cras@vestibulumloremsit.co.uk','bd816719aaf7efd667b9fe72bc075dfc','user');
INSERT INTO `login` VALUES (95,'vel.arcu.eu@justo.net','4cca4c7f43505ba7841414ca577c836e','user');
INSERT INTO `login` VALUES (96,'Phasellus.dapibus@ametorciUt.com','858f30b2fc556292a1fba99799f06495','user');
INSERT INTO `login` VALUES (97,'Pellentesque@cursus.ca','7d1c9b6ffaba34e114da795b1b003be3','user');
INSERT INTO `login` VALUES (98,'scelerisque@nibhPhasellusnulla.com','56867b8373e38204d6bc2ec923e511a6','user');
INSERT INTO `login` VALUES (99,'Donec.egestas.Aliquam@Duisrisusodio.net','3421e3c2a191ef246fcd468a10b93757','user');
INSERT INTO `login` VALUES (100,'egestas.ligula@fringilla.com','3f6b743aabdb4001940b3b24b46c942b','user');
INSERT INTO `login` VALUES (101,'ethoma53@uncc.edu','81dc9bdb52d04dc20036dbd8313ed055','admin');
INSERT INTO `login` VALUES (102,'ralaimo@uncc.edu','81dc9bdb52d04dc20036dbd8313ed055','admin');
INSERT INTO `login` VALUES (103,'rpullen@uncc.edu','81dc9bdb52d04dc20036dbd8313ed055','admin');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28  9:54:55
