/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.26-log : Database - health_devices
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`health_devices` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `health_devices`;

/*Table structure for table `dummytable` */

DROP TABLE IF EXISTS `dummytable`;

CREATE TABLE `dummytable` (
  `dmid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`dmid`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

/*Data for the table `dummytable` */

insert  into `dummytable`(`dmid`,`name`,`quantity`,`type`,`code`,`price`) values (1,'ROGG Zellstofftupfer 4 cm x 5 cm, (2 Rollen à 500 Tupfer/Beutel)',15,'Btl.','1105',NULL),(2,'ROGG Zellstoff-Vlies-Kompressen 10 m x 10cm',20,'Stück','1173',NULL),(3,'ROGG Injektionspflaster Textil 4 cm x 2 cm, VPE 500 Stück',10,'Pckg.','1318',NULL),(4,'ROGG-Synthetik-Wattebinden  6 cm x 3 m   (3mm stark)',5,'Stück','1320',NULL),(5,'ROGG-Synthetik-Wattebinden  8 cm x 3 m   (3mm stark)',5,'Stück','1324',NULL),(6,'ROGG-Synthetik-Wattebinden 10 cm x 3 m (3mm stark)',2,'Stück','1321',NULL),(7,'Krepp-Papierbinden  6 cm VPE 20 Stück',1,'Pckg.','1425',NULL),(8,'Krepp-Papierbinden  8 cm VPE 20 Stück',5,'Pckg.','1426',NULL),(9,'ROGGHAFT-CREPP 20 m x 6 cm weiß Kohäsive, elastische Fixierbinde',6,'Stück','1481',NULL),(10,'ROGGHAFT-CREPP 20 m x 8 cm weiß Kohäsive, elastische Fixierbinde',6,'Stück','1482',NULL),(11,'ROGGHAFT-CREPP 20 m x 10 cm weiß Kohäsive, elastische Fixierbinde',6,'Stück','1483',NULL),(12,'ROGG-Silk 9 m x 1,25 cm ,weiß',10,'Stück','1629',NULL),(13,'ROGG-Silk 9 m x 2.5 cm ,weiß, VPE 12 Stk',15,'Pckg.','1631',NULL),(14,'ROGG-Plast 9 m x 1,25 cm',3,'Stück','1652',NULL),(15,'Einmal-Nierenschalen, Zellstoff, grau. VPE 1 Stück',25,'Stück','1873',NULL),(16,'Toilettenpapier Tissue Premium 3-lagig, 8 x 250 Blatt/Pckg.',6,'Pckg.','2022',NULL),(17,'ROGG-Tape weiß 10m x 3,75cm AP 12 Roll/Kt.',2,'Karton','2119',NULL),(18,'Rollicell, Liegenabdeckung Ärztekrepp 59 cm x 50 m, 2-lagig',20,'Pckg.','3019',NULL),(19,'ROGG-Trikotschlauchverb.Gr.1 20m x 1.5 cm Finger u. Zehen',1,'Stück','5020',NULL),(20,'ROGG-Trikotschlauchverb. Gr.2 20m x 2,5cm - geschiente Finger + Zehen',1,'Stück','5021',NULL),(21,'ROGG-Trikotschlauchverb.Gr.3 20m x 4 cm Hand, Kinderarm',1,'Stück','5022',NULL),(22,'ROGG-Trikotschlauchverb.Gr.4 20m x 6 cm. Hand, Arm, Fuß, Unterschenkel',1,'Stück','5023',NULL),(23,'ROGG-Trikotschlauchverb.Gr.5 20m x 8 cm. Oberschenkel, kl. Kopf',1,'Stück','5024',NULL),(24,'ROGG-Trikotschlauchverb.Gr.6 20m x 10 cm. Oberschenkel, gr. Kopf',1,'Stück','5025',NULL),(25,'ROGG- Händedesinfektionsgel 500 ml',10,'Pckg.','9603',NULL),(26,'ROGG Hautdesinfektion 1 Liter Spenderfl. HBV-inaktivierend lt. Gutachten',25,'Pckg.','9702',NULL),(27,'Handsprühkopf zur 1 Liter-Flasche',2,'Stück','9732',NULL),(28,'ROGG Desinfektionstücher AF Q alkoholfrei 100 Tücher/Dose',1,'Pckg.','9743',NULL),(29,'ROGGMED steriler Wundverband 5 x 7,2 cm, VPE 100 Stück',15,'Pckg.','13121',NULL),(30,'ROGGMED steriler Wundverband 10 cm x 8 cm, VPE 50 Stück',10,'Pckg.','13122',NULL),(31,'ROGGMED steriler Wundverband 15 x 10 cm VPE 50 Stück',5,'Pckg.','13125',NULL),(32,'ROGG-Cast Zinkleimbinde 10 cmx 5 m,  VPE 20 Stück, elastisch',20,'Stück','13510',NULL),(33,'ROGG-Cast Zinkleimbinde 10 cm x 7 m,  VPE 20 Stück, elastisch',20,'Stück','13710',NULL),(34,'ROGG Idealbinde 5 m x 6 cm o. DIN ohne cello',10,'Pckg.','15741',NULL),(35,'ROGG Idealbinde 5 m x 8 cm o. DIN ohne cello',15,'Pckg.','15751',NULL),(36,'ROGG Idealbinde 5 m x 10 cm o. DIN ohne cello',15,'Pckg.','15761',NULL),(37,'ROGG Acrylbinde 8cm, gedehnt 2,5 m. Klebebinde für empfindliche Haut',2,'Stück','16722',NULL),(38,'Urgo Kühlspray Dose 300ml FCKW-frei',6,'Stück','16931',NULL),(39,'BBraun Injekt Einmalspritzen 2 ml. Luer-Steck-Ansatz',4,'Pckg.','30050',NULL),(40,'BBraun Injekt Einmalspritzen 5ml. Luer-Steck-Ansatz',4,'Pckg.','30051',NULL),(41,'BBraun Injekt Einmalspritzen 10ml. Luer-Steck-Ansatz',17,'Pckg.','30061',NULL),(42,'Kanülenbox gelb  5 l mit Deckel',10,'Stück','30078',NULL),(43,'Vinyl 2000PF UH unsteril small  puderfrei',1,'Pckg.','45040',NULL),(44,'Vinyl 2000PF UH unsteril medium puderfrei',1,'Pckg.','45041',NULL),(45,'Vinyl 2000PF UH unsteril large puderfrei',1,'Pckg.','45042',NULL),(46,'ROGG-Cast Zinkleimbinde 10 cm x 10 m, VPE 20 Stück, elastisch',20,'Stück','131010',NULL),(47,'3M Precise E.-Hautklammerentferner  VPE 10 Stück',2,'Pckg.','167115',NULL),(48,'Fadenziehmesser aus Edelstahl lang 110 mm - 100 + 2 Stück',1,'Pckg.','189036',NULL),(49,'Nitril NextGen Blau  U.-Handschuhe PF latexfrei, unsteril, puderfrei Gr. M  (100 Stck.)',1,'Pckg.','200139',NULL),(50,'Nitril NextGen Blau  U.-Handschuhe PF latexfrei, unsteril, puderfrei Gr.L (100 Stck.)',1,'Pckg.','200140',NULL),(51,'Ethiparat-Handschuhe, unsteril, latexfrei, mittel, VPE 100 Stück',6,'Pckg.','200520',NULL),(52,'Ethiparat-Handschuhe, unsteril, latexfrei, groß, VPE 100 Stück',6,'Pckg.','200765',NULL),(53,'Kanülenbox 2,5 Liter',42,'Stück','201630',NULL),(54,'Sonogel Ultraschallgel  250 ml',8,'Stück','201704',NULL),(55,'Scholz Standard Pinzette anatomisch feine Spitze 145 mm VPE 25 Stück',4,'Pckg.','202025',NULL),(56,'Scholz Adson Pinzette chirurgisch 1x2 Zähne, 120 mm VPE 25 Stück',2,'Pckg.','202028',NULL),(57,'Fripa Papierhandtücher 25x23cm, 2-lagig, weiß, Interfalz - 3.000 Stück/ Karton',8,'Karton','202525',NULL),(58,'Reflexhammer nach Buck 18 cm',1,'Stück','204038',NULL),(59,'Omnifix F Tuberkulinspritze 1ml m.Kanüle0,50x16mm - 25Gx5/8   100 Stck.',1,'Pckg.','300305',NULL),(60,'Sterican-Kanüle 23G x 2 3/8   0,60 x 60 mm blau. Neuraltherapie',5,'Pckg.','300358',NULL),(61,'Sterican-Kanülen Gr. 1  20G  0,90 x 40 mm  gelb',13,'Pckg.','300361',NULL),(62,'Sterican-Kanülen Gr. 20  27G 0,4x20 mm  grau',1,'Pckg.','300372',NULL),(63,'Sterican-Kanülen Gr. 17  24G   0,55 x 25 mm  viol.',13,'Stück','300373',NULL),(64,'ROGG-Polycast blau 5cm x 3,6m - VPE 10 St.',4,'Pckg.','3512105',NULL),(65,'ROGG-Polycast blau 7,5cm x 3,6m - VPE 10St.',4,'Pckg.','3512108',NULL),(66,'ROGG-Polycast blau 10cm x 3,6m - VPE 10 St.',2,'Pckg.','3512110',NULL),(67,'Lohmann Lomatuell H 10 x 10 cm, 10 St./Pckg.steriler, nicht wundhaftender Gittertüll',1,'Stück','40101010',NULL),(68,'ROGGHAFT-CREPP 4 m x 6 cm weiß Kohäsive, elastische Fixierbinde',1,'Stück','14406',NULL),(69,'ROGGHAFT-CREPP 4 m x 8 cm weiß Kohäsive, elastische Fixierbinde',1,'Stück','14408',NULL);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(90) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `datesupplied` date DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  `vid` int(11) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `costprice` decimal(10,2) DEFAULT NULL,
  `saleprice` decimal(10,2) DEFAULT NULL,
  `productcode` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `threshold` int(11) DEFAULT NULL,
  `size` varchar(90) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4;

/*Data for the table `products` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
