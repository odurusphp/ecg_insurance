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

/*Table structure for table `apikeys` */

DROP TABLE IF EXISTS `apikeys`;

CREATE TABLE `apikeys` (
  `keyid` int(11) NOT NULL AUTO_INCREMENT,
  `apikey` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`keyid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `apikeys` */

insert  into `apikeys`(`keyid`,`apikey`) values (1,'acdNCRFr'),(2,'tWUkNgCm');

/*Table structure for table `assigned_companies` */

DROP TABLE IF EXISTS `assigned_companies`;

CREATE TABLE `assigned_companies` (
  `assigner` int(11) DEFAULT NULL,
  `assignee` int(11) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `assid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`assid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `assigned_companies` */

insert  into `assigned_companies`(`assigner`,`assignee`,`date_created`,`assid`) values (52,53,NULL,2);

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `cmid` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(90) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `telephone` varchar(90) DEFAULT NULL,
  `address` varchar(90) DEFAULT NULL,
  `nature_of_business` varchar(90) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `location` varchar(90) DEFAULT NULL,
  `city` varchar(90) DEFAULT NULL,
  `country` varchar(90) DEFAULT NULL,
  `street` varchar(90) DEFAULT NULL,
  `postalcode` varchar(90) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `customertype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cmid`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

/*Data for the table `company` */

insert  into `company`(`cmid`,`companyname`,`email`,`telephone`,`address`,`nature_of_business`,`date_created`,`location`,`city`,`country`,`street`,`postalcode`,`type`,`status`,`customertype`) values (52,'Praxis für Dr. Huber für Allgemeinmedizin','prax@test.com','090032889393',NULL,NULL,'2020-05-25',NULL,'Munich','Germany','Munich Street','45636272',NULL,NULL,'Customer'),(53,'Gemeindschaftspraxis Dr. Schmitt & Dr. Haselbaum','nem@test.com','045578292924',NULL,NULL,'2020-05-25',NULL,'Munich','Germany','Munich Street','4673',NULL,NULL,'Distributor'),(54,'Hausarzt Dr. Meyer','mvz@ttest.com','+562788299379',NULL,NULL,'2020-05-25',NULL,'Berlin','Germany','Berlin Street','45636272',NULL,NULL,NULL);

/*Table structure for table `company_products` */

DROP TABLE IF EXISTS `company_products`;

CREATE TABLE `company_products` (
  `productid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `company_products` */

/*Table structure for table `company_users` */

DROP TABLE IF EXISTS `company_users`;

CREATE TABLE `company_users` (
  `users_uid` int(11) DEFAULT NULL,
  `cmid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `company_users` */

insert  into `company_users`(`users_uid`,`cmid`) values (74,54);

/*Table structure for table `deleted_users` */

DROP TABLE IF EXISTS `deleted_users`;

CREATE TABLE `deleted_users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `dateofdeletion` datetime DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `deleted_users` */

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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;

/*Data for the table `dummytable` */

insert  into `dummytable`(`dmid`,`name`,`quantity`,`type`,`code`,`price`) values (129,'Einmal-Nierenschalen, Zellstoff, grau. VPE 300 Stück',1,'Pckg.','Art-Nr. 1873',NULL),(130,'Handelsware: Ärzterolle Rollicell, 59 cm x 100 m 2lg, weiss, 9 Ro.',2,'Rolle','Art-Nr. 3019',NULL),(131,'Handelsware: Ärzterolle Rollicell, 39 cm x 50 m 2lg, weiss, 9 Ro.',2,'Rolle','Art-Nr. 3020',NULL),(132,'BBraun SUSI Chirurgische Pinzette, steril, 20 Stk., 1x2 Zähne, 120mm',1,'Stück','Art-Nr.1606',NULL),(133,'BBraun SUSI Scharfer Löffel, 18cm, Einmalgebrauch, 20 Stk.',1,'Stück','Art-Nr.1614',NULL),(134,'Medi-Müll Kanülenbox 2,5 Liter',10,'Stück','Art-Nr.201630',NULL),(135,'Handelsware: Gigasept Instru AF 2L Instrumentendesinfektion und Reiniging',1,'Stück','Art-Nr.201966',NULL),(136,'Sentina Chirurgische Schere spitz / spitz gerade 13,00 cm, 25 Stk.',1,'Stück','Art-Nr.202016',NULL),(137,'Fripa Papierhandtücher 25x23cm, 2-lagig, weiß, Interfalz - 3.000 Stück/ Karton',1,'Karton','Art-Nr.202525',NULL),(138,'ROGG System Vliestücher, 3Rollen á100 Blatt, 32 cm x 30 cm',1,'Karton','Art-Nr.203529',NULL),(139,'ROGG Händedesinfektionsgel, 500ml',2,'Stück','Art-Nr.9603',NULL),(140,'ROGG Schnelldesinfektion AFQ, 5L (ohne Alkohol)',2,'Stück','Art-Nr.97273',NULL),(141,'  Sharpsafe Abwurfbehälter 0,3 L für Arztkoffer',1,'Stück','HW-1200004175.1',NULL),(142,'ROGG Tape,weiß, 3,75 cm x 10 m',4,'Stück','PZN-00063259',NULL),(143,'Lohmann Sentina Ambidextrous Gr. 6-7 (S) Latexhandschuh',1,'Pckg.','PZN-00816919',NULL),(144,'Lohmann Sentina Ambidextrous Gr. 7-8 (M) Latexhandschuhe',3,'Pckg.','PZN-00816925',NULL),(145,'ROGG Zellstoff-Vlies-Kompresse 10 cm x 10 m',1,'Stück','PZN-01539250',NULL),(146,'ROGGmed 5cm x7,2 cm',1,'Pckg.','PZN-01581513',NULL),(147,'ROGGmed 10cm x 8cm',1,'Pckg.','PZN-01581536',NULL),(148,'Sterican-Kanülen Gr. 1  20G  0,90 x 40 mm  gelb',4,'Pckg.','PZN-02050798',NULL),(149,'Sterican-Kanülen Gr. 14  23G  0,6 x 30 mm  blau',2,'Pckg.','PZN-02050829',NULL),(150,'Sterican-Kanülen Gr. 18  26G  0,45 x 25 mm  braun',3,'Pckg.','PZN-02050858',NULL),(151,'BBraun Injekt Einmalspritzen 2 ml. Luer-Steck-Ansatz   100 Stück',10,'Pckg.','PZN-02057895',NULL),(152,'BBraun Injekt Einmalspritzen 5ml. Luer-Steck-Ansatz   100 Stück',10,'Pckg.','PZN-02057903',NULL),(153,'Sterican-Kanülen 20G x 2 3/4  0,90 x 70 mm  gelb.',1,'Pckg.','PZN-02057984',NULL),(154,'ROGG Händedesinfektion, 500ml',4,'Stück','PZN-02152033',NULL),(155,'ROGG Waschlotion, 500ml',4,'Stück','PZN-02153587',NULL),(156,'Sterican-Kanüle 23G x 2 3/8   0,60 x 60 mm blau',4,'Pckg.','PZN-02359107',NULL),(157,'Einweg-Hautklammerentferner,AP 20, steril',1,'Pckg.','PZN-02759114',NULL),(158,'Lohmann Lomatuell H 10 x 10 cm, 10 Stück/Pckg',2,'Pckg.','PZN-03275602',NULL),(159,'ROGG Idealbinde ohne Cellophan, 10 cm x 5 m',20,'Stück','PZN-03438599',NULL),(160,'ROGG Mull- Kompressen, 7,5 cm x 7,5cm, 100 Stk.',2,'Pckg.','PZN-03439015',NULL),(161,'ROGG Zellstofftupfer, 4 cm x 5 cm, 2 x 500 Stk.',2,'Btl.','PZN-03439015',NULL),(162,'ROGG STERIWUND, Sterile Kompressen, 10 cm x10 cm, 25x2',2,'Pckg.','PZN-03439191',NULL),(163,'ROGGHAFT Color, 8cm x 20m, blau, 1 Stk.',2,'Stück','PZN-03654825',NULL),(164,'ROGG Elastische Pflasterbinde, 10 cm x 4,5 m, 1 Stk.',10,'Stück','PZN-03791692',NULL),(165,'ROGG Schnelldesinfektion AF, 5L',1,'Stück','PZN-03791700',NULL),(166,'ROGG-System-Spender',1,'Stück','PZN-03791700',NULL),(167,'ROGG Cast Zinkleimbinde, 8 cm x 7 m, 1 Stk.',2,'Karton','PZN-04078401',NULL),(168,'ROGGHAFT, 8cm x 20m, weiß, 1 Stk.',2,'Stück','PZN-04492313',NULL),(169,'ROGG Trikotschlauchverband 1,5cm Finger + Zehen',1,'Pckg.','PZN-04976229',NULL),(170,'ROGG Trikotschlauchverband, 6 cm x 20 m',1,'Stück','PZN-04976258',NULL),(171,'Frotteeschlauch weiß 15-35cm (S)',1,'Pckg.','PZN-05963045',NULL),(172,'ROGG Injektionspflaster, 4 cm x 2 cm, 500 Stk.',4,'Pckg.','PZN-05984716',NULL),(173,'Lohmann Raucodrape Abdecktuch 45 x 75 cm, steril. 120Stück',2,'Pckg.','PZN-06161951',NULL),(174,'Servoson Ultraschallgel 5 liter, Cubitainer, farblos',1,'Stück','PZN-06161951',NULL),(175,'ROGG Stretch 15cm x 10cm, 10m',2,'Pckg.','PZN-07150429',NULL),(176,'ROGG Synthetik-Wattebinde 20cm x 3m',8,'Pckg.','PZN-07232802',NULL),(177,'ROGGmed wasserfest 5cm x 7,2cm',1,'Pckg.','PZN-07619116',NULL),(178,'ROGGHAFT Color, 8cm x 20m, rot, 1 Stk.',2,'Stück','PZN-08419595',NULL),(179,'Handelsware: Urgostrips 75x3mm AP 50x5 ster. Wundnahtstreifen weiss',1,'Stück','PZN-08437073',NULL),(180,'Lohmann Cellacast Longette 10 cm x 38cm',5,'Pckg.','PZN-08471673',NULL),(181,'Lohmann Cellacast Longette 12,5 cm x 76cm.',5,'Pckg.','PZN-08471704',NULL),(182,'ROGGELAST, 6 cm x 4 m, ohne Cellophan, 100 Stk.',3,'Karton','PZN-08500802',NULL),(183,'ROGGELAST, 8 cm x 4 m, ohne Cellophan, 100 Stk.',3,'Karton','PZN-08500819',NULL),(184,'ROGGELAST, 10 cm x 4 m, ohne Cellophan, 20 Stk.',3,'Pckg.','PZN-08601294',NULL),(185,'ROGGELAST, 10 cm x 4 m, ohne Cellophan, 50 Stk.',3,'Pckg.','PZN-12639150',NULL),(186,'Bayha Skalpellklingen Nr.18, AP 100, für Griff Nr. 4',1,'Stück','Servo-I10104',NULL);

/*Table structure for table `frameworkjobs` */

DROP TABLE IF EXISTS `frameworkjobs`;

CREATE TABLE `frameworkjobs` (
  `jobid` int(11) NOT NULL AUTO_INCREMENT,
  `jobname` varchar(45) NOT NULL,
  `jobmethod` varchar(45) NOT NULL,
  `lastrun` timestamp NULL DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `queuewait` tinyint(4) DEFAULT NULL,
  `frequencyminutes` int(11) DEFAULT NULL,
  `numtoprocess` int(11) DEFAULT NULL,
  `batchsize` int(11) DEFAULT NULL,
  `processed` int(11) DEFAULT NULL,
  `lastprocessed` int(11) DEFAULT NULL,
  `lasttimestamp` timestamp NULL DEFAULT NULL,
  `exitmessage` varchar(45) DEFAULT NULL,
  `queuedata` text,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `frameworkjobs` */

/*Table structure for table `logcategories` */

DROP TABLE IF EXISTS `logcategories`;

CREATE TABLE `logcategories` (
  `logcategory` varchar(32) NOT NULL,
  PRIMARY KEY (`logcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `logcategories` */

/*Table structure for table `product_categories` */

DROP TABLE IF EXISTS `product_categories`;

CREATE TABLE `product_categories` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(90) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

/*Data for the table `product_categories` */

insert  into `product_categories`(`catid`,`category`,`userid`) values (28,'unknown',14);

/*Table structure for table `producthistory` */

DROP TABLE IF EXISTS `producthistory`;

CREATE TABLE `producthistory` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `historydate` date DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `description` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `producthistory` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `products` */

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(24) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `roles` */

insert  into `roles`(`roleid`,`role`,`description`) values (1,'Administrator','Administrator'),(2,'Company-Administrator','Company Administrator'),(3,'Company-User','Company Users'),(4,'Merchants','Merchants'),(5,'Distributors','Distributors');

/*Table structure for table `systemlog` */

DROP TABLE IF EXISTS `systemlog`;

CREATE TABLE `systemlog` (
  `idsystemlog` int(11) NOT NULL AUTO_INCREMENT,
  `logcategory` varchar(32) NOT NULL DEFAULT 'information',
  `user` varchar(90) NOT NULL DEFAULT 'unknown - error?',
  `logmessage` varchar(1024) NOT NULL,
  `diagnostic` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idsystemlog`),
  KEY `enforce_cats_idx` (`logcategory`),
  CONSTRAINT `enforce_cat` FOREIGN KEY (`logcategory`) REFERENCES `logcategories` (`logcategory`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `systemlog` */

/*Table structure for table `user_reset_status` */

DROP TABLE IF EXISTS `user_reset_status`;

CREATE TABLE `user_reset_status` (
  `uid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_reset_status` */

insert  into `user_reset_status`(`uid`,`status`) values (74,2),(75,1),(76,1),(77,1);

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `users_uid` int(11) NOT NULL,
  `roles_roleid` int(11) NOT NULL,
  PRIMARY KEY (`users_uid`,`roles_roleid`),
  KEY `fk_user_roles_roles1_idx` (`roles_roleid`),
  CONSTRAINT `fk_user_roles_roles1` FOREIGN KEY (`roles_roleid`) REFERENCES `roles` (`roleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_roles_users1` FOREIGN KEY (`users_uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_roles` */

insert  into `user_roles`(`users_uid`,`roles_roleid`) values (14,1),(17,1),(75,1),(76,1),(74,2),(77,2);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(80) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `firstname` varchar(24) DEFAULT NULL,
  `lastname` varchar(24) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `telephone2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid_UNIQUE` (`uid`),
  UNIQUE KEY `username_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`uid`,`email`,`password`,`firstname`,`lastname`,`status`,`telephone`,`telephone2`) values (14,'princeo@getinnotized.com','e10adc3949ba59abbe56e057f20f883e','Prince','Oduro',NULL,NULL,NULL),(17,'s.hemel@rogg-verbandstoffe.de','a899ac79ed79c3d24e8701604e1bfaa5','Stefan','Hemel',NULL,NULL,NULL),(74,'odurusphp@gmail.com','e10adc3949ba59abbe56e057f20f883e','Nana','Yaw',NULL,NULL,NULL),(75,'prince@getinnotized.com','NULL','Prince','Oduro',NULL,'0940403003',NULL),(76,'prince3@getinnotized.com','NULL','Prince','Oduro',NULL,'0940403003',NULL),(77,'prince93@getinnotized.com','NULL','Prince','Oduro',NULL,'0940403003',NULL);

/*Table structure for table `vendors` */

DROP TABLE IF EXISTS `vendors`;

CREATE TABLE `vendors` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `vendorname` varchar(90) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `telephone` varchar(90) DEFAULT NULL,
  `street` varchar(90) DEFAULT NULL,
  `city` varchar(90) DEFAULT NULL,
  `country` varchar(90) DEFAULT NULL,
  `postalcode` varchar(90) DEFAULT NULL,
  `date_ceated` date DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `vendors` */

insert  into `vendors`(`vid`,`vendorname`,`email`,`telephone`,`street`,`city`,`country`,`postalcode`,`date_ceated`) values (13,'unknown','dem@demograph.com','099009','Cares','Dera','Cambodia','214',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
