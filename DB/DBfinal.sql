/*
SQLyog Ultimate v9.01 
MySQL - 5.0.22-community-nt : Database - publicauditing
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`publicauditing` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `publicauditing`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(30) default NULL,
  `password` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('sen','sen');

/*Table structure for table `auditorreg` */

DROP TABLE IF EXISTS `auditorreg`;

CREATE TABLE `auditorreg` (
  `userid` varchar(30) default NULL,
  `username` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `email` varchar(40) default NULL,
  `mobileno` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auditorreg` */

insert  into `auditorreg`(`userid`,`username`,`password`,`email`,`mobileno`) values ('1','guru','guru','java@pantechmail.com','789446464'),('11','mano','mano','infosentamil@gmail.com','1234567890');

/*Table structure for table `dataownerreg` */

DROP TABLE IF EXISTS `dataownerreg`;

CREATE TABLE `dataownerreg` (
  `username` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `email` varchar(30) default NULL,
  `productkey` varchar(20) default NULL,
  `Filename` varchar(10000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dataownerreg` */

insert  into `dataownerreg`(`username`,`password`,`email`,`productkey`,`Filename`) values ('james','james','java@pantechmail.com','TheBestSecretKey',NULL);

/*Table structure for table `gender` */

DROP TABLE IF EXISTS `gender`;

CREATE TABLE `gender` (
  `Gender` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gender` */

insert  into `gender`(`Gender`) values ('Male'),('Female');

/*Table structure for table `ownerprofile` */

DROP TABLE IF EXISTS `ownerprofile`;

CREATE TABLE `ownerprofile` (
  `username` varchar(35) default NULL,
  `filename` varchar(700) NOT NULL,
  `checksum` varchar(100) default NULL,
  PRIMARY KEY  (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ownerprofile` */

insert  into `ownerprofile`(`username`,`filename`,`checksum`) values ('james','14.jpg','fc6182914d6b9803dc88d329154417884c420add'),('james','5.jpg','125cb4266df1bad48d5fa86fc85b1e380fcc14c4'),('james','login.jpg','f3b5e384d4bd978945ea818337516787f920c99c');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `username` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `dob` varchar(20) default NULL,
  `gender` varchar(20) default NULL,
  `age` varchar(20) default NULL,
  `groupname` varchar(30) default NULL,
  `email` varchar(50) default NULL,
  `mobile` varchar(10) default NULL,
  `city` varchar(40) default NULL,
  `state` varchar(30) default NULL,
  `nation` varchar(30) default NULL,
  `filename` varchar(10000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`username`,`password`,`dob`,`gender`,`age`,`groupname`,`email`,`mobile`,`city`,`state`,`nation`,`filename`) values ('tamil','tamil','2,February,2011','Male','25','james','java@pantechmail.com','1234567890','chennai','Tamilnadu','indian',NULL),('java','java','1,March,2012','Male','87','james','pvathre@gmail.com','676776','jhjghj','hjhg','jhgj',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
