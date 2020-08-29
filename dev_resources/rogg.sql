/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.21-log : Database - rogg
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `apikeys` */

DROP TABLE IF EXISTS `apikeys`;

CREATE TABLE `apikeys` (
  `apid` int(11) NOT NULL AUTO_INCREMENT,
  `apikey` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`apid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `apikeys` */

insert  into `apikeys`(`apid`,`apikey`) values (1,'5c5433c85fbf2');

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
  PRIMARY KEY (`cmid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

/*Data for the table `company` */

insert  into `company`(`cmid`,`companyname`,`email`,`telephone`,`address`,`nature_of_business`,`date_created`,`location`,`city`,`country`,`street`,`postalcode`) values (5,'Prince Online Company','odurusphpod@gmail.com','803002','Accra',NULL,'2019-05-08','Ghana',NULL,NULL,NULL,NULL),(7,'Nana XYZ Company','odurusphpusa@gmail.com','894032','Pillar 5',NULL,'2019-05-09','Accra',NULL,NULL,NULL,NULL),(8,'Randy and Co','odurus000php@gmail.com','02458930023','Accra Ghana',NULL,'2019-05-15','Greater Accra',NULL,NULL,NULL,NULL),(9,'Yohann Company','odurusphp004@gmail.com','74993002','box 467288',NULL,'2019-05-15','Accra',NULL,NULL,NULL,NULL),(10,'Beeham Company','odurusphp009@gmail.com','02657839202','Pillar 2 Ghana',NULL,'2019-05-21','02434232','Accra','Ghana (Gaana)','Paradise',NULL),(11,'Beehams Company','odurusphpyth@gmail.com','02657839202','GHana',NULL,'2019-05-22','02434232','Accra','Ghana (Gaana)','Paradise',NULL),(15,'GetInnotized Limited','odurusphp@git.com','02657839202','Accra',NULL,'2019-05-24','00233','Pillar 2','Germany (Deutschland)','Paradise',NULL),(16,'Cassandra Company','cassierandy@gmail.com','902930201',NULL,NULL,'2019-06-14','00233','Accra','Ghana (Gaana)','Pillar, street 1011',NULL);

/*Table structure for table `company_users` */

DROP TABLE IF EXISTS `company_users`;

CREATE TABLE `company_users` (
  `users_uid` int(11) DEFAULT NULL,
  `cmid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `company_users` */

insert  into `company_users`(`users_uid`,`cmid`) values (11,5),(12,5),(13,5),(16,7),(17,5),(18,9),(19,9),(25,5),(27,5),(29,10),(30,10),(33,5),(35,5),(36,5);

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `cid` int(11) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `firstname` varchar(90) DEFAULT NULL,
  `lastname` varchar(90) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `company` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `customers` */

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

/*Table structure for table `job_descriptions` */

DROP TABLE IF EXISTS `job_descriptions`;

CREATE TABLE `job_descriptions` (
  `jbid` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(90) DEFAULT NULL,
  `position` varchar(90) DEFAULT NULL,
  `carrier_history` varchar(90) DEFAULT NULL,
  `Level_of_education` varchar(90) DEFAULT NULL,
  `general_mamagement_experience` varchar(90) DEFAULT NULL,
  `consulting_experience` varchar(90) DEFAULT NULL,
  `growth_experience` varchar(90) DEFAULT NULL,
  `sales_experience` varchar(90) DEFAULT NULL,
  `hustler_attitude` varchar(90) DEFAULT NULL,
  `chances_of_move` varchar(90) DEFAULT NULL,
  `rocket_experience` varchar(90) DEFAULT NULL,
  `international_experience` varchar(90) DEFAULT NULL,
  `analytical_skills` varchar(90) DEFAULT NULL,
  `online_marketing_experience` varchar(90) DEFAULT NULL,
  `corporate_experience` varchar(90) DEFAULT NULL,
  `scrappy` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`jbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `job_descriptions` */

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(24) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `roles` */

insert  into `roles`(`roleid`,`role`,`description`) values (1,'Administrator','Administrator'),(2,'Customer_Administrator','Client account'),(3,'Customer_User','Users of Custpomers');

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

insert  into `user_roles`(`users_uid`,`roles_roleid`) values (5,1),(28,1),(31,1),(34,1),(37,1),(38,1),(39,1),(41,1),(42,1),(43,1),(11,2),(16,2),(18,2),(25,2),(27,2),(29,2),(33,2),(12,3),(13,3),(17,3),(19,3),(30,3),(35,3),(36,3);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(80) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `firstname` varchar(24) DEFAULT NULL,
  `lastname` varchar(24) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid_UNIQUE` (`uid`),
  UNIQUE KEY `username_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`uid`,`email`,`password`,`firstname`,`lastname`,`status`) values (5,'prince@getinnotized.com','e10adc3949ba59abbe56e057f20f883e','Prince','Odurooppp',0),(11,'customer@customer.com','e10adc3949ba59abbe56e057f20f883e','Nana','Oduro',NULL),(12,'apraku@ap.com','e10adc3949ba59abbe56e057f20f883e','Kofi','Apraku',NULL),(13,'kwasifori@yahoo.com',NULL,'Nana','Kwasi Ofori',NULL),(16,'customer3@customer.com','e10adc3949ba59abbe56e057f20f883e','Ananias','Inkoom',NULL),(17,'oduruspohp@gmail.com','e10adc3949ba59abbe56e057f20f883e','Kwame','Asona',NULL),(18,'odurusphp001@gmail.com','e10adc3949ba59abbe56e057f20f883e','Willaim','Sowah',NULL),(19,'bryan@getinnotized.com',NULL,'Bryan','Donald',NULL),(25,'abeb@gmail.com',NULL,'Abebs','Asare Sami',NULL),(27,'adum110101@gmail.com',NULL,'Kwame ','Oduro',NULL),(28,'asare@getinnotized.com',NULL,'Kwame ','Asare',NULL),(29,'oduru@gmail.com','e10adc3949ba59abbe56e057f20f883e','Kwasi','Twum',NULL),(30,'odurusph0p@gmail.com','e10adc3949ba59abbe56e057f20f883e','Randy ','Okai',NULL),(31,'odurusphp04@gmail.com','e10adc3949ba59abbe56e057f20f883e','Ata','Ofori',NULL),(33,'odurusphp007@gmail.com',NULL,'Kwame ','Ofori Asiakwa',NULL),(34,'odurusphp009@gmail.com',NULL,'Isaac','asare@getinnotized.com',NULL),(35,'odurusphpo@gmail.com',NULL,'Randy ','Okinae',NULL),(36,'abanga@gmail.com',NULL,'Kofi','Abanga',NULL),(37,'abeb@yahoos.com',NULL,'Randy ','Asare',NULL),(38,'odurusphp@gmail.com','e10adc3949ba59abbe56e057f20f883e','Martin','Oduro',NULL),(39,'eand@rand.com',NULL,'Randy ','Ofori',NULL),(41,'abeb@yahoo.com',NULL,'Kwame ','Twum',NULL),(42,'asare22111@getinnotized.com',NULL,'Attio mo','Ansah',NULL),(43,'barima@yahoo.com',NULL,'Ntim','Barima',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
