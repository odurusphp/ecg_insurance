/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.21-log : Database - health_devices
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `company_products` */

DROP TABLE IF EXISTS `company_products`;

CREATE TABLE `company_products` (
  `productid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `company_products` */

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
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `products` */

insert  into `products`(`productid`,`productname`,`quantity`,`datesupplied`,`catid`,`vid`,`description`,`costprice`,`saleprice`,`productcode`,`userid`) values (6,'HP Laptop',3,'2019-10-25',10,4,'Off  cool quality','100.00','200.00',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
