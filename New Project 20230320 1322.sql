-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema collegeevent
--

CREATE DATABASE IF NOT EXISTS collegeevent;
USE collegeevent;

--
-- Definition of table `colmanreg`
--

DROP TABLE IF EXISTS `colmanreg`;
CREATE TABLE `colmanreg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(45) DEFAULT NULL,
  `cemail` varchar(45) NOT NULL,
  `cphone` varchar(45) DEFAULT NULL,
  `caddress` longtext,
  `pass` varchar(45) DEFAULT NULL,
  `cpass` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`cemail`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colmanreg`
--

/*!40000 ALTER TABLE `colmanreg` DISABLE KEYS */;
INSERT INTO `colmanreg` (`id`,`cname`,`cemail`,`cphone`,`caddress`,`pass`,`cpass`,`status`) VALUES 
 (5,'velammal','velammal@gmail.com','9942316794','111','111','madurai','Accepted'),
 (6,'velammal','venkat@gmail.com','9942316794','111','111','drfgdf','Accepted'),
 (7,'velammal','venkat@gmail.com','9942316794','111','111','rsdgrsdg',''),
 (8,'velammal','thala@gmail.com','1234567890','cse02','thala','CSE','');
/*!40000 ALTER TABLE `colmanreg` ENABLE KEYS */;


--
-- Definition of table `freeapplyevent`
--

DROP TABLE IF EXISTS `freeapplyevent`;
CREATE TABLE `freeapplyevent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `college` varchar(45) DEFAULT NULL,
  `degree` varchar(45) DEFAULT NULL,
  `depart` varchar(45) DEFAULT NULL,
  `admissionyear` varchar(45) DEFAULT NULL,
  `roll` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `cpass` varchar(45) DEFAULT NULL,
  `hoppy` varchar(45) DEFAULT NULL,
  `eventname` varchar(45) DEFAULT NULL,
  `eventtype` varchar(45) DEFAULT NULL,
  `organ` varchar(45) DEFAULT NULL,
  `sdate` varchar(45) DEFAULT NULL,
  `filename` longtext,
  `filecontent` longtext,
  `filesize` longtext,
  `filetype` longtext,
  `encrypt` longtext,
  `decrypt` longtext,
  `eventlimit` varchar(45) DEFAULT NULL,
  `regfees` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `freeapplyevent`
--

/*!40000 ALTER TABLE `freeapplyevent` DISABLE KEYS */;
INSERT INTO `freeapplyevent` (`id`,`fname`,`lname`,`email`,`college`,`degree`,`depart`,`admissionyear`,`roll`,`dob`,`gender`,`pass`,`cpass`,`hoppy`,`eventname`,`eventtype`,`organ`,`sdate`,`filename`,`filecontent`,`filesize`,`filetype`,`encrypt`,`decrypt`,`eventlimit`,`regfees`,`payment`,`status`) VALUES 
 (41,'vengadesh','R','dhina@gmail.com','velammal','BE','CE','2020','91765337846','2022-05-11','male','111','111','Car','FREE','YODHAYA534','VELAMMAL@GMAIL.COM','2022-05-26','Untitled Diagram-Page-11.drawio.png','','50047','image/png',NULL,'','HOW','are','are','Accepted'),
 (42,'vengadesh','R','venkat@gmail.com','velammal','BE','EEE','2022','91765337846','2023-03-01','male','111','111','Car','LIMIT','YOGA','VENKAT@GMAIL.COM','2023-03-15','images (1).jpg','','3641','image/jpeg',NULL,'','150','HELLO','HELLO','Accepted'),
 (43,'vengadesh','R','venkat@gmail.com','panimalar','BE','EEE','2020','91765337846','2000-03-17','male','111','111','Car','LIMIT','YOGA','VENKAT@GMAIL.COM','2023-03-15','images (1).jpg','','3641','image/jpeg',NULL,'','149','HELLO','HELLO','Not Approved'),
 (44,'vengadesh','R','venkat@gmail.com','thiyagarajar','BE','EEE','2020','91765337846','2023-03-18','male','111','111','Car','FREE','YODHAYA534','VENKAT@GMAIL.COM','2023-03-19','shophome.jpg','','85886','image/jpeg',NULL,'','HOW','are','are','Accepted'),
 (45,'mani','syed','thala@gmail.com','thiyagarajar','B-Tech','EEE','2020','91765337846','2023-02-17','male','111','111','Car','LIMIT','HOMDEK2K22','VENKAT@GMAIL.COM','2023-03-24','images.jpg','','8539','image/jpeg',NULL,'','50','HELLO','HELLO','Accepted');
/*!40000 ALTER TABLE `freeapplyevent` ENABLE KEYS */;


--
-- Definition of table `freeevent`
--

DROP TABLE IF EXISTS `freeevent`;
CREATE TABLE `freeevent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdate` varchar(45) DEFAULT NULL,
  `college` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `organiser` varchar(45) DEFAULT NULL,
  `sdate` varchar(45) DEFAULT NULL,
  `edate` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `description` longtext,
  `tech` varchar(45) DEFAULT NULL,
  `nontech` varchar(45) DEFAULT NULL,
  `depat` varchar(45) DEFAULT NULL,
  `conper1` varchar(45) DEFAULT NULL,
  `connum1` varchar(45) DEFAULT NULL,
  `conper2` varchar(45) DEFAULT NULL,
  `connum2` varchar(45) DEFAULT NULL,
  `ldate` varchar(45) DEFAULT NULL,
  `regfees` varchar(45) DEFAULT NULL,
  `pic` varchar(45) DEFAULT NULL,
  `Etype` varchar(45) DEFAULT NULL,
  `Eventname` varchar(45) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `freeevent`
--

/*!40000 ALTER TABLE `freeevent` DISABLE KEYS */;
INSERT INTO `freeevent` (`id`,`cdate`,`college`,`email`,`address`,`category`,`organiser`,`sdate`,`edate`,`mobile`,`city`,`state`,`description`,`tech`,`nontech`,`depat`,`conper1`,`connum1`,`conper2`,`connum2`,`ldate`,`regfees`,`pic`,`Etype`,`Eventname`,`token`,`status`) VALUES 
 (17,'2022-05-14','velammal@gmail.com','velammal','madurai','fest','velammal@gmail.com','2022-05-18','2022-05-20','9988774455','chennai','TN','participate all the students.',' Paper presentation','Water Rocketry','CSE','dhina','Vengat','99878774455','9988554411','2022-05-17','Free','Untitled Diagram-Page-10.drawio.png','Free','food fest','150','Approved'),
 (18,'2022-05-16','velammal@gmail.com','velammal','madurai','project','velammal@gmail.com','2022-05-26','2022-05-28','9888778888','chennai','tamilnadu','gtrg',' Project presentation','None','MECH','sandy','thalapathy','9568525556','8784527212','2022-05-24','Free','ER.png','Free','yodhaya534','no limit','Approved'),
 (19,'2023-03-15','venkat@gmail.com','velammal','madurai','project','venkat@gmail.com','2023-03-15','2023-03-15','7867848877','madurai','tamilnadu','dsafees',' Paper presentation','None','CSE','hari','thalapathy','7325456577','7876575676','2023-03-18','Free','shophome.jpg','Free','yodhaya534','150','Approved'),
 (20,'2023-03-19','venkat@gmail.com','velammal','madurai','project','venkat@gmail.com','2023-03-19','2023-03-19','7867848877','madurai','tamilnadu','dsafees',' Paper presentation','None','CSE','hari','thalapathy','7325456577','7876575676','2023-03-18','Free','shophome.jpg','Free','yodhaya534','150','Approved'),
 (21,'2023-03-19','venkat@gmail.com','velammal','madurai','fest','venkat@gmail.com','2023-03-17','2023-03-16','7867848877','madurai','tamilnadu','wgrfb',' Project presentation','None','ECE','Dhina','Vengat','96858978756','7576776757','2023-03-19','Free','images.jpg','Limit','Yoga','148','Approved'),
 (22,'2023-03-24','venkat@gmail.com','velammal','madurai','project implementation','venkat@gmail.com','2023-03-24','2023-03-24','7867848877','madurai','tamilnadu','drgfh',' Project presentation','None','CSE','paul','sandy','646385463','896645634','2023-03-23','Free','the-mobile-shop-header-resizzled-scaled.jpg','Limit','homdek2k22','49','Approved');
/*!40000 ALTER TABLE `freeevent` ENABLE KEYS */;


--
-- Definition of table `stureg`
--

DROP TABLE IF EXISTS `stureg`;
CREATE TABLE `stureg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL DEFAULT '',
  `phone` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `cpass` varchar(45) DEFAULT NULL,
  `college` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stureg`
--

/*!40000 ALTER TABLE `stureg` DISABLE KEYS */;
INSERT INTO `stureg` (`id`,`name`,`email`,`phone`,`pass`,`cpass`,`college`,`status`) VALUES 
 (9,'paul dhina','dhina@gmail.com','9756438756','111','111','panimalar',''),
 (10,'venkat@gmail.com','thala@gmail.com','9756438756','123','123','velammal',''),
 (11,'venkat','venkat@gmail.com','9756438756','16cse114','CSE','velammal',''),
 (12,'venkat','venkat@gmail.com','9756438756','16cse114','CSE','velammal','');
/*!40000 ALTER TABLE `stureg` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
