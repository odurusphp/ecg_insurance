/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.21-log : Database - health_devices
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
  `keyid` int(11) NOT NULL AUTO_INCREMENT,
  `apikey` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`keyid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `apikeys` */

insert  into `apikeys`(`keyid`,`apikey`) values (1,'acdNCRFr'),(2,'tWUkNgCm');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

/*Data for the table `company` */

insert  into `company`(`cmid`,`companyname`,`email`,`telephone`,`address`,`nature_of_business`,`date_created`,`location`,`city`,`country`,`street`,`postalcode`) values (17,'Prince Online Odurus','princeonline@yahoo.com','02242322111',NULL,NULL,'2019-10-14',NULL,'Accra','Ghana','32 Oys street','00233');

/*Table structure for table `company_users` */

DROP TABLE IF EXISTS `company_users`;

CREATE TABLE `company_users` (
  `users_uid` int(11) DEFAULT NULL,
  `cmid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `company_users` */

insert  into `company_users`(`users_uid`,`cmid`) values (11,17);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `product_categories` */

insert  into `product_categories`(`catid`,`category`,`userid`) values (5,'Computers',2),(6,'Sundries',2),(7,'Metal works',2);

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
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `products` */

insert  into `products`(`productid`,`productname`,`quantity`,`datesupplied`,`catid`,`vid`,`description`,`costprice`,`saleprice`) values (1,'Laptops',100,'2019-10-15',7,2,'New Stock','19.90',NULL),(2,'Mouse',100,'2019-10-15',7,2,'New Stock','19.90','20.90'),(3,'Laptops',100,'2019-10-15',7,2,'New Stock','19.90','20.90'),(4,'Laptops',100,'2019-10-15',7,2,'New Stock','19.90','20.90');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(24) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `roles` */

insert  into `roles`(`roleid`,`role`,`description`) values (1,'Administrator','Administrator'),(2,'Company-Administrator','Company Administrator'),(3,'Company-User','Company Users');

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

insert  into `user_reset_status`(`uid`,`status`) values (2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1);

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

insert  into `user_roles`(`users_uid`,`roles_roleid`) values (2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`uid`,`email`,`password`,`firstname`,`lastname`,`status`) values (2,'prince@getinnotized.com.uk','e10adc3949ba59abbe56e057f20f883e','prince','Oduro',NULL),(3,'prince@geti56nnotized.com','NULL','Prince','Oduro',NULL),(4,'prince@getinnotiz344ed.com','NULL','Prince','Oduro',NULL),(5,'prince@getinnotized.com','NULL','Prince','Oduro',NULL),(6,'odurusphp@gmmail.com','NULL','prince','Oduro',NULL),(7,'odur900usphp@gmail.com','NULL','prince','Oduro',NULL),(8,'oduruspoohp@gmail.com','NULL','prince','Oduro',NULL),(9,'odurus000php@gmail.com','NULL','prince','Oduro',NULL),(10,'odurusphp@gmail.com','NULL','prince','Oduro',NULL),(11,'odurusphp@gmail.com,uk','NULL','prince','Oduro',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `vendors` */

insert  into `vendors`(`vid`,`vendorname`,`email`,`telephone`,`street`,`city`,`country`,`postalcode`,`date_ceated`) values (1,'James Vendor','princeonline@yahoo.com','02242322111','32 Oys street','Accra','Ghana','00233',NULL),(2,'Prince Vendor','princeonline@yahoo.com','02242322111','32 Oys street','Accra','Ghana','00233',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
