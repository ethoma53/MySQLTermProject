-- MySQL Script created using MySQL Workbench
-- Builds cartProject database
-- Group ER(R) ITCS 6160 Spring 2018
-- Authors: Lizzy Thomas, Rachel Pullen, Richard Alaimo
-- Thursday, April 5th 2018 (Project Deliverable 2)
-- Model: New Model    Version: 1.0


SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema cartProject
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cartProject` DEFAULT CHARACTER SET utf8 ;
USE `cartProject` ;

-- -----------------------------------------------------
-- Table `cartProject`.`User`
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- Table `cartProject`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`Employee` (
  `empId` INT NOT NULL,
  `User_userId` INT NOT NULL,
  `hireDate` DATETIME NOT NULL,
  PRIMARY KEY (`empId`),
  INDEX `fk_Employee_User_idx` (`User_userId` ASC),
  CONSTRAINT `fk_Employee_User`
    FOREIGN KEY (`User_userId`)
    REFERENCES `cartProject`.`User` (`userId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartProject`.`Job`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`Job` (
  `jobId` INT NOT NULL,
  `jobName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`jobId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartProject`.`Application`
-- -----------------------------------------------------
CREATE TABLE `application` (
  `appId` int(11) NOT NULL AUTO_INCREMENT,
  `User_userId` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  `Job_jobId` int(11) NOT NULL,
  `dateApplied` datetime NOT NULL,
  `decisionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `fk_Application_User1_idx` (`User_userId`),
  KEY `fk_Application_Job1_idx` (`Job_jobId`),
  CONSTRAINT `fk_Application_Job1` FOREIGN KEY (`Job_jobId`) REFERENCES `job` (`jobId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Application_User1` FOREIGN KEY (`User_userId`) REFERENCES `user` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE Application AUTO_INCREMENT = 171; -- did this because of way initial data was structured. should just be auto from 1

-- -----------------------------------------------------
-- Table `cartProject`.`EmpJob`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`EmpJob` (
  `Employee_empId` INT NOT NULL,
  `Job_jobId` INT NOT NULL,
  INDEX `fk_EmpJob_Employee1_idx` (`Employee_empId` ASC),
  INDEX `fk_EmpJob_Job1_idx` (`Job_jobId` ASC),
  PRIMARY KEY (`Employee_empId`, `Job_jobId`),
  CONSTRAINT `fk_EmpJob_Employee1`
    FOREIGN KEY (`Employee_empId`)
    REFERENCES `cartProject`.`Employee` (`empId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_EmpJob_Job1`
    FOREIGN KEY (`Job_jobId`)
    REFERENCES `cartProject`.`Job` (`jobId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartProject`.`Driver`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`Driver` (
  `EmpJob_Employee_empId` INT NOT NULL,
  `EmpJob_Job_jobId` INT NOT NULL,
  `startDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `positionLength` INT NOT NULL,
  PRIMARY KEY (`EmpJob_Employee_empId`, `EmpJob_Job_jobId`),
  CONSTRAINT `fk_Driver_EmpJob1`
    FOREIGN KEY (`EmpJob_Employee_empId` , `EmpJob_Job_jobId`)
    REFERENCES `cartProject`.`EmpJob` (`Employee_empId` , `Job_jobId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartProject`.`Mechanic`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`Mechanic` (
  `EmpJob_Employee_empId` INT NOT NULL,
  `EmpJob_Job_jobId` INT NOT NULL,
  `certified` TINYINT NOT NULL,
  `startDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `positionLength` INT NOT NULL,
  PRIMARY KEY (`EmpJob_Employee_empId`, `EmpJob_Job_jobId`),
  CONSTRAINT `fk_Mechanic_EmpJob1`
    FOREIGN KEY (`EmpJob_Employee_empId` , `EmpJob_Job_jobId`)
    REFERENCES `cartProject`.`EmpJob` (`Employee_empId` , `Job_jobId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `cartProject`.`IT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`IT` (
  `EmpJob_Employee_empId` INT NOT NULL,
  `EmpJob_Job_jobId` INT NOT NULL,
  `startDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `positionLength` INT NOT NULL,
  PRIMARY KEY (`EmpJob_Employee_empId`, `EmpJob_Job_jobId`),
  CONSTRAINT `fk_IT_EmpJob1`
    FOREIGN KEY (`EmpJob_Employee_empId` , `EmpJob_Job_jobId`)
    REFERENCES `cartProject`.`EmpJob` (`Employee_empId` , `Job_jobId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `cartProject`.`Archive`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cartProject`.`Archive` (
  `appId` INT NOT NULL,
  `userId` INT NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `jobId` INT NOT NULL,
  `dateApplied` DATETIME NOT NULL,
  `decisionDate` DATETIME NOT NULL,
  PRIMARY KEY (`appId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cartProject`.`login`
-- -----------------------------------------------------

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

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- -----------------------------------------------------
-- Values `cartProject`.`User`
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- Values `cartProject`.`Job`
-- -----------------------------------------------------
LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'Mechanic');
INSERT INTO `job` VALUES (2,'Driver');
INSERT INTO `job` VALUES (3,'IT');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

-- -----------------------------------------------------
-- Values `cartProject`.`Employee`
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- Values `cartProject`.`EmpJob`
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- Values `cartProject`.`Application`
-- -----------------------------------------------------
LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (101,1,' pending ',1,'2017-08-16 06:15:26',NULL);
INSERT INTO `application` VALUES (105,90,'not opened ',3,'2017-09-11 10:52:14',NULL);
INSERT INTO `application` VALUES (106,26,' accepted ',1,'2018-06-06 00:02:19','2018-06-13 00:02:19');
INSERT INTO `application` VALUES (107,75,' pending ',2,'2018-09-04 21:34:35',NULL);
INSERT INTO `application` VALUES (108,64,' accepted ',1,'2017-04-20 18:10:51','2017-04-27 18:10:51');
INSERT INTO `application` VALUES (109,21,' pending ',3,'2018-10-15 09:01:02',NULL);
INSERT INTO `application` VALUES (110,18,'not opened ',2,'2018-03-19 14:25:08',NULL);
INSERT INTO `application` VALUES (111,35,' pending ',2,'2017-11-11 21:15:18',NULL);
INSERT INTO `application` VALUES (112,3,' rejected',1,'2018-03-03 10:20:48','2018-03-10 10:20:48');
INSERT INTO `application` VALUES (113,37,' pending ',1,'2019-04-02 20:01:34',NULL);
INSERT INTO `application` VALUES (114,33,' accepted ',2,'2018-05-17 23:23:43','2018-05-24 23:23:43');
INSERT INTO `application` VALUES (115,15,' accepted ',1,'2018-03-17 15:43:28','2018-03-24 15:43:28');
INSERT INTO `application` VALUES (116,16,'not opened ',3,'2018-11-04 09:50:48',NULL);
INSERT INTO `application` VALUES (117,17,' rejected',1,'2018-06-27 23:40:56','2018-07-04 23:40:56');
INSERT INTO `application` VALUES (118,18,' accepted ',1,'2018-10-14 12:45:50','2018-10-21 12:45:50');
INSERT INTO `application` VALUES (119,19,' pending ',3,'2017-10-25 23:42:08',NULL);
INSERT INTO `application` VALUES (120,20,'not opened ',3,'2018-01-04 08:40:06',NULL);
INSERT INTO `application` VALUES (121,21,' rejected',1,'2017-11-30 01:49:39','2017-12-07 01:49:39');
INSERT INTO `application` VALUES (122,22,'not opened ',2,'2017-04-16 00:54:40',NULL);
INSERT INTO `application` VALUES (123,45,' accepted ',2,'2018-03-21 20:40:45','2018-03-28 20:40:45');
INSERT INTO `application` VALUES (124,46,' accepted ',3,'2017-08-05 22:00:33','2017-08-12 22:00:33');
INSERT INTO `application` VALUES (125,47,'not opened ',1,'2018-04-18 18:16:31',NULL);
INSERT INTO `application` VALUES (126,48,'not opened ',2,'2018-11-14 04:30:46',NULL);
INSERT INTO `application` VALUES (127,49,'not opened ',3,'2017-11-26 20:31:22',NULL);
INSERT INTO `application` VALUES (128,50,' accepted ',1,'2019-03-31 19:31:06','2019-04-07 19:31:06');
INSERT INTO `application` VALUES (129,51,'not opened ',2,'2017-06-11 07:36:44',NULL);
INSERT INTO `application` VALUES (130,52,' accepted ',3,'2019-02-15 19:11:32','2019-02-22 19:11:32');
INSERT INTO `application` VALUES (131,53,' accepted ',3,'2017-11-04 08:17:37','2017-11-11 08:17:37');
INSERT INTO `application` VALUES (132,54,' pending ',1,'2017-12-23 16:54:01',NULL);
INSERT INTO `application` VALUES (133,55,' pending ',2,'2019-03-20 11:42:47',NULL);
INSERT INTO `application` VALUES (134,56,' accepted ',3,'2018-05-21 03:19:21','2018-05-28 03:19:21');
INSERT INTO `application` VALUES (135,57,'not opened ',1,'2018-02-09 07:22:31',NULL);
INSERT INTO `application` VALUES (136,58,'not opened ',2,'2018-12-10 20:13:31',NULL);
INSERT INTO `application` VALUES (137,59,' rejected',2,'2018-03-02 19:59:41','2018-03-09 19:59:41');
INSERT INTO `application` VALUES (138,60,' rejected',3,'2017-12-19 10:10:25','2017-12-26 10:10:25');
INSERT INTO `application` VALUES (139,38,' accepted ',1,'2018-07-25 00:42:43','2018-08-01 00:42:43');
INSERT INTO `application` VALUES (140,39,' accepted ',1,'2018-03-31 20:21:51','2018-04-07 20:21:51');
INSERT INTO `application` VALUES (141,40,' accepted ',3,'2018-05-21 19:34:10','2018-05-28 19:34:10');
INSERT INTO `application` VALUES (142,41,' accepted ',2,'2018-08-07 14:09:42','2018-08-14 14:09:42');
INSERT INTO `application` VALUES (143,42,'not opened ',2,'2019-01-27 03:56:07',NULL);
INSERT INTO `application` VALUES (144,43,' accepted ',2,'2017-10-25 09:15:39','2017-11-01 09:15:39');
INSERT INTO `application` VALUES (145,44,'not opened ',3,'2019-01-10 08:49:30',NULL);
INSERT INTO `application` VALUES (146,6,' rejected',2,'2018-10-21 03:51:20','2018-10-28 03:51:20');
INSERT INTO `application` VALUES (147,8,' pending ',2,'2017-12-23 19:15:59',NULL);
INSERT INTO `application` VALUES (148,15,' pending ',3,'2017-04-06 21:54:00',NULL);
INSERT INTO `application` VALUES (149,55,' accepted ',1,'2018-04-19 17:13:22','2018-04-26 17:13:22');
INSERT INTO `application` VALUES (150,2,' accepted ',1,'2019-01-15 05:14:28','2019-01-22 05:14:28');
INSERT INTO `application` VALUES (151,1,' accepted ',3,'2018-05-14 02:09:59','2018-05-21 02:09:59');
INSERT INTO `application` VALUES (152,30,' rejected',3,'2018-01-01 14:45:58','2018-01-08 14:45:58');
INSERT INTO `application` VALUES (153,25,' rejected',3,'2017-05-11 07:58:13','2017-05-18 07:58:13');
INSERT INTO `application` VALUES (154,44,' accepted ',1,'2018-10-08 15:14:22','2018-10-15 15:14:22');
INSERT INTO `application` VALUES (155,3,' accepted ',3,'2018-04-13 14:55:17','2018-04-20 14:55:17');
INSERT INTO `application` VALUES (156,5,'not opened ',1,'2017-04-06 11:05:07',NULL);
INSERT INTO `application` VALUES (157,6,' pending ',3,'2018-07-03 10:05:49',NULL);
INSERT INTO `application` VALUES (158,7,' rejected',3,'2017-08-29 16:39:02','2017-09-05 16:39:02');
INSERT INTO `application` VALUES (159,8,'not opened ',1,'2019-02-26 13:43:44',NULL);
INSERT INTO `application` VALUES (160,9,' pending ',2,'2018-11-24 07:27:56',NULL);
INSERT INTO `application` VALUES (161,10,'not opened ',2,'2017-09-24 16:02:25',NULL);
INSERT INTO `application` VALUES (162,11,' accepted ',1,'2018-11-13 17:25:07','2018-11-20 17:25:07');
INSERT INTO `application` VALUES (163,12,'not opened ',1,'2017-12-11 04:53:44',NULL);
INSERT INTO `application` VALUES (164,13,' pending ',3,'2019-03-26 16:19:57',NULL);
INSERT INTO `application` VALUES (165,14,' accepted ',2,'2017-10-09 17:52:39','2017-10-16 17:52:39');
INSERT INTO `application` VALUES (166,81,' pending ',1,'2019-03-22 01:33:58',NULL);
INSERT INTO `application` VALUES (167,82,' accepted ',3,'2018-11-17 04:06:32','2018-11-24 04:06:32');
INSERT INTO `application` VALUES (168,83,'not opened ',3,'2018-08-24 13:42:59',NULL);
INSERT INTO `application` VALUES (169,84,' pending ',2,'2017-11-30 05:06:50',NULL);
INSERT INTO `application` VALUES (170,85,' accepted ',3,'2017-09-01 21:27:56','2017-09-08 21:27:56');
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

-- -----------------------------------------------------
-- Values `cartProject`.`Archive`
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- Values `cartProject`.`Driver`
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- Values `cartProject`.`Mechanic`
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- Values `cartProject`.`IT`
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- Values `cartProject`.`login`
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- Events `cartProject`
-- -----------------------------------------------------

/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `archivec` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `archivec` ON SCHEDULE EVERY 3 DAY STARTS '2018-04-10 09:11:30' ON COMPLETION NOT PRESERVE ENABLE DO CALL archiveApplications() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

-- -----------------------------------------------------
-- Routines `cartProject`
-- -----------------------------------------------------
/*!50003 DROP PROCEDURE IF EXISTS `archiveApplications` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `archiveApplications`()
BEGIN
		INSERT INTO archive
        SELECT * FROM application
        WHERE status = 'rejected' OR 'accepted';
        
        DELETE FROM application
        WHERE status = 'rejected' OR 'accepted';
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


