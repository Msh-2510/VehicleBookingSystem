/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - booking
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`booking` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `booking`;

/*Table structure for table `bus` */

DROP TABLE IF EXISTS `bus`;

CREATE TABLE `bus` (
  `number` varchar(30) DEFAULT NULL,
  `company` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `fee` decimal(10,0) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bus` */

insert  into `bus`(`number`,`company`,`model`,`fee`,`date`,`status`) values ('b01','tata','minibus','20000','2022-06-13','available');

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `number` varchar(30) NOT NULL,
  `company` char(40) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `fee` decimal(10,0) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `car` */

insert  into `car`(`number`,`company`,`model`,`fee`,`date`,`status`) values ('c01','marutisuzuki','swift','2000','2022-06-13','available'),('c02','marutisuzuki','baleno','2600','2022-06-14','available');

/*Table structure for table `driver` */

DROP TABLE IF EXISTS `driver`;

CREATE TABLE `driver` (
  `name` char(30) NOT NULL,
  `phone` decimal(10,0) NOT NULL,
  `address` varchar(30) NOT NULL,
  `number` varchar(30) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `driver` */

insert  into `driver`(`name`,`phone`,`address`,`number`,`date`) values ('rdj','7865328990','sitapur','c01','2002-06-13');

/*Table structure for table `driver1` */

DROP TABLE IF EXISTS `driver1`;

CREATE TABLE `driver1` (
  `name` char(30) DEFAULT NULL,
  `phone` decimal(10,0) DEFAULT NULL,
  `address` char(30) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `driver1` */

insert  into `driver1`(`name`,`phone`,`address`,`number`,`date`) values ('rahul','5678902345','stp','b01','2022-06-13');

/*Table structure for table `employe` */

DROP TABLE IF EXISTS `employe`;

CREATE TABLE `employe` (
  `eid` varchar(30) DEFAULT NULL,
  `name` char(30) DEFAULT NULL,
  `phone` decimal(10,0) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employe` */

insert  into `employe`(`eid`,`name`,`phone`,`address`,`date`) values ('e01','ajay','7890345612','lko','2022-06-13');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `name` varchar(30) NOT NULL,
  `password` decimal(10,0) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`name`,`password`) values ('admin','67890');

/*Table structure for table `passenger` */

DROP TABLE IF EXISTS `passenger`;

CREATE TABLE `passenger` (
  `name` char(30) NOT NULL,
  `phone` decimal(10,0) NOT NULL,
  `source` char(30) NOT NULL,
  `destination` char(30) NOT NULL,
  `cdate` date NOT NULL,
  `rdate` date NOT NULL,
  `number` varchar(30) NOT NULL,
  `status` char(30) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `passenger` */

/*Table structure for table `passenger1` */

DROP TABLE IF EXISTS `passenger1`;

CREATE TABLE `passenger1` (
  `name` char(30) DEFAULT NULL,
  `phone` decimal(10,0) DEFAULT NULL,
  `source` char(30) DEFAULT NULL,
  `destination` char(30) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `rdate` date DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `status` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `passenger1` */

/*Table structure for table `rbus` */

DROP TABLE IF EXISTS `rbus`;

CREATE TABLE `rbus` (
  `name` varchar(30) DEFAULT NULL,
  `rdate` date DEFAULT NULL,
  `delay` varchar(30) DEFAULT NULL,
  `fine` decimal(10,0) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `status` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rbus` */

insert  into `rbus`(`name`,`rdate`,`delay`,`fine`,`number`,`status`) values ('bravo','2022-06-14','no','0','b01','available');

/*Table structure for table `rcar` */

DROP TABLE IF EXISTS `rcar`;

CREATE TABLE `rcar` (
  `name` varchar(30) DEFAULT NULL,
  `rdate` date DEFAULT NULL,
  `delay` varchar(30) DEFAULT NULL,
  `fine` decimal(10,0) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `status` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rcar` */

insert  into `rcar`(`name`,`rdate`,`delay`,`fine`,`number`,`status`) values ('sam','2022-06-14','no','0','c01','available'),('karan','2022-06-15','no','0','c02','available');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
