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

/*Table structure for table `assigned_companies` */

DROP TABLE IF EXISTS `assigned_companies`;

CREATE TABLE `assigned_companies` (
  `assigner` int(11) DEFAULT NULL,
  `assignee` int(11) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `assid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`assid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
