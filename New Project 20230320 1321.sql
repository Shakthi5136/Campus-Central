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
-- Create schema college
--

CREATE DATABASE IF NOT EXISTS college;
USE college;

--
-- Definition of table `achievement`
--

DROP TABLE IF EXISTS `achievement`;
CREATE TABLE `achievement` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orgmail` varchar(45) DEFAULT NULL,
  `eventname` varchar(45) DEFAULT NULL,
  `collegename` longtext,
  `eventtype` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `prize` varchar(45) DEFAULT NULL,
  `stuname` varchar(45) DEFAULT NULL,
  `stuclgname` longtext,
  `studepartment` varchar(45) DEFAULT NULL,
  `studentmail` varchar(45) DEFAULT NULL,
  `studentimage` longtext,
  `status` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achievement`
--

/*!40000 ALTER TABLE `achievement` DISABLE KEYS */;
INSERT INTO `achievement` (`id`,`orgmail`,`eventname`,`collegename`,`eventtype`,`department`,`prize`,`stuname`,`stuclgname`,`studepartment`,`studentmail`,`studentimage`,`status`,`date`) VALUES 
 (1,'venkat@gmail.com','Yoga','velammal','Limit','ECE','First','ragu','MNSK','ECE','ragu@gmail.com','images.jpg','','18/03/2023'),
 (2,'venkat@gmail.com','Yoga','velammal','Limit','ECE','Second','thiru','AVS','mech','thiru@gmail.com','mobile orderd.jpg','','18/03/2023'),
 (3,'venkat@gmail.com','Yoga','velammal','Limit','ECE','Third','rahul','velammal','CSE','rahul@gmail.com','mobile orderd.jpg','','18/03/2023'),
 (4,'venkat@gmail.com','Yoga','velammal','Limit','ECE','First','ragu','MNSK','mca','vengat@gmail.com','soldlist.jpg','','20/03/2023 ');
/*!40000 ALTER TABLE `achievement` ENABLE KEYS */;


--
-- Definition of table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE `assignment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `staffid` varchar(45) NOT NULL,
  `assignment` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `file` longtext NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` (`id`,`staffid`,`assignment`,`subject`,`file`,`status`) VALUES 
 (1,'cse01','Assignment','oops','Blockchain-Based_Verifiable_Tracking_of_Resellable_Returned_Drugs.pdf','finish');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;


--
-- Definition of table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(45) NOT NULL,
  `file` longtext NOT NULL,
  `depart` varchar(45) NOT NULL,
  `fromu` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `hodstatus` varchar(45) NOT NULL,
  `staffstatus` varchar(45) NOT NULL,
  `stustatus` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`id`,`date`,`file`,`depart`,`fromu`,`status`,`hodstatus`,`staffstatus`,`stustatus`) VALUES 
 (1,'java','sensors-22-08188-v2.pdf','CSE','cse01','Not View','','',''),
 (2,'cv bg bhg','BDCC-06-00101.pdf','CSE','cse01','Not View','','','');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;


--
-- Definition of table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stafid` varchar(45) NOT NULL,
  `stuid` varchar(45) NOT NULL,
  `text` longtext NOT NULL,
  `status1` varchar(45) NOT NULL,
  `status2` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` (`id`,`stafid`,`stuid`,`text`,`status1`,`status2`) VALUES 
 (1,'cse01','16cse113','ax','viewed','Activate'),
 (2,'cse01','16cse113','gvfb','','Activate'),
 (3,'cse01','16cse113','scdvd','','Activate'),
 (4,'cse01','16cse113','jdsh','viewed','student'),
 (5,'cse01','16cse113','cjh','viewed','staff'),
 (6,'cse01','16cse113','gfvn','viewed','student'),
 (7,'cse01','16cse113','ffg','viewed','student'),
 (8,'cse01','16cse113','sdf','viewed','staff'),
 (9,'cse02','16cse113','hrtjh','','student'),
 (10,'cse01','16cse113','ujk,jn','viewed','student'),
 (11,'cse01','16cse113','l,jk,.','viewed','staff'),
 (12,'cse01','16cse113','hu,','viewed','student'),
 (13,'cse01','16cse113','j,l','','staff');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;


--
-- Definition of table `leader`
--

DROP TABLE IF EXISTS `leader`;
CREATE TABLE `leader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `enroll` varchar(45) NOT NULL,
  `depart` varchar(45) DEFAULT NULL,
  `mark` varchar(45) DEFAULT NULL,
  `image` longtext,
  `status1` varchar(45) DEFAULT NULL,
  `status2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leader`
--

/*!40000 ALTER TABLE `leader` DISABLE KEYS */;
INSERT INTO `leader` (`id`,`name`,`enroll`,`depart`,`mark`,`image`,`status1`,`status2`) VALUES 
 (1,'ram','16cse113','CSE','9.5','images.jpg','',''),
 (2,'ram','16CSE112','CSE','9.0','shophome.jpg','','');
/*!40000 ALTER TABLE `leader` ENABLE KEYS */;


--
-- Definition of table `principal`
--

DROP TABLE IF EXISTS `principal`;
CREATE TABLE `principal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(45) NOT NULL,
  `file` longtext NOT NULL,
  `depart` varchar(45) NOT NULL,
  `fromu` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `hodstatus` varchar(45) NOT NULL,
  `staffstatus` varchar(45) NOT NULL,
  `stustatus` varchar(45) NOT NULL,
  `hodcse` varchar(45) NOT NULL,
  `hodece` varchar(45) NOT NULL,
  `hodit` varchar(45) NOT NULL,
  `staffcse` varchar(45) NOT NULL,
  `staffece` varchar(45) NOT NULL,
  `staffit` varchar(45) NOT NULL,
  `hodcsetime` varchar(45) NOT NULL,
  `hodecetime` varchar(45) NOT NULL,
  `hodittime` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `principal`
--

/*!40000 ALTER TABLE `principal` DISABLE KEYS */;
INSERT INTO `principal` (`id`,`date`,`file`,`depart`,`fromu`,`status`,`hodstatus`,`staffstatus`,`stustatus`,`hodcse`,`hodece`,`hodit`,`staffcse`,`staffece`,`staffit`,`hodcsetime`,`hodecetime`,`hodittime`) VALUES 
 (1,'2022-11-11','conf_PDA.pdf','Staff','principal','viewed','viewed','staff','student','','','','','','','time','time','time'),
 (2,'2022-11-10','sample txt (10).pdf','CSE','principal','viewed','viewed','staff','student','yes','','','yes','','','time','time','time'),
 (3,'2022-11-11','conf_PDA.pdf','CSE','principal','viewed','viewed','staff','student','yes','','','yes','','','time','time','time'),
 (4,'2022-11-29','conf_PDA.pdf','CSE','principal','staff view','viewed','staff','student','yes','','','yes','','','time','time','time'),
 (5,'2023-01-12','18032030077_Saurabh Kumar Sharma_FinalProjectReport - SAURABH SHARMA.pdf','Hod','principal','Not View','hod','staff','student','','','','','','','time','time','time'),
 (6,'java','BDCC-06-00101.pdf','CSE','cse01','Not View','hod','staff','student','','','','','','','time','time','time'),
 (7,'2023-03-10','sensors-22-08188-v2.pdf','CSE','principal','staff view','viewed','staff','student','yes','','','yes','','','time','time','time');
/*!40000 ALTER TABLE `principal` ENABLE KEYS */;


--
-- Definition of table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `studid` varchar(45) DEFAULT NULL,
  `projtitle` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `review` varchar(45) DEFAULT NULL,
  `stafid` varchar(45) DEFAULT NULL,
  `mark` varchar(45) DEFAULT NULL,
  `totalmark` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `dept` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` (`id`,`studid`,`projtitle`,`filename`,`review`,`stafid`,`mark`,`totalmark`,`status`,`dept`) VALUES 
 (1,'16cse113','OIU','BDCC-06-00101.pdf','1st Review','cse01','60','100','Mark Updated','CSE');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;


--
-- Definition of table `staffcircular`
--

DROP TABLE IF EXISTS `staffcircular`;
CREATE TABLE `staffcircular` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(45) NOT NULL,
  `file` longtext NOT NULL,
  `depart` varchar(45) NOT NULL,
  `fromu` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `hodstatus` varchar(45) NOT NULL,
  `staffstatus` varchar(45) NOT NULL,
  `stustatus` varchar(45) NOT NULL,
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffcircular`
--

/*!40000 ALTER TABLE `staffcircular` DISABLE KEYS */;
INSERT INTO `staffcircular` (`id`,`date`,`file`,`depart`,`fromu`,`status`,`hodstatus`,`staffstatus`,`stustatus`) VALUES 
 (1,'dfxvb','BDCC-06-00101 (2).pdf','CSE','cse01','Not View','','','');
/*!40000 ALTER TABLE `staffcircular` ENABLE KEYS */;


--
-- Definition of table `staffreg`
--

DROP TABLE IF EXISTS `staffreg`;
CREATE TABLE `staffreg` (
  `stafid` varchar(45) NOT NULL,
  `staffname` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `contactno` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `staffstatus` varchar(45) NOT NULL,
  `fileviewtime` varchar(145) NOT NULL,
  PRIMARY KEY (`stafid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffreg`
--

/*!40000 ALTER TABLE `staffreg` DISABLE KEYS */;
INSERT INTO `staffreg` (`stafid`,`staffname`,`department`,`contactno`,`status`,`staffstatus`,`fileviewtime`) VALUES 
 ('cse01','venkat','CSE','8907890789','Activate','yes','10/03/2023 13:51:38'),
 ('cse02','thala','CSE','1234567890','Activate','','');
/*!40000 ALTER TABLE `staffreg` ENABLE KEYS */;


--
-- Definition of table `studentreg`
--

DROP TABLE IF EXISTS `studentreg`;
CREATE TABLE `studentreg` (
  `studeid` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `parantno` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `counsellor` varchar(45) DEFAULT NULL,
  `cid` varchar(45) DEFAULT NULL,
  `studstatus` varchar(45) NOT NULL,
  `fileviewtime` varchar(145) NOT NULL,
  PRIMARY KEY (`studeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentreg`
--

/*!40000 ALTER TABLE `studentreg` DISABLE KEYS */;
INSERT INTO `studentreg` (`studeid`,`name`,`department`,`parantno`,`status`,`counsellor`,`cid`,`studstatus`,`fileviewtime`) VALUES 
 ('16cse113','thalapathi','CSE','9089089089','Activate',NULL,NULL,'stud','time'),
 ('16cse114','venkat','CSE','9756438756','Activate','','','stud','time'),
 ('venkat','venkat','CSE','9756438756','Activate','','','stud','time');
/*!40000 ALTER TABLE `studentreg` ENABLE KEYS */;


--
-- Definition of table `studfiletrack`
--

DROP TABLE IF EXISTS `studfiletrack`;
CREATE TABLE `studfiletrack` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stid` varchar(45) NOT NULL,
  `stdept` varchar(45) NOT NULL,
  `file` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `time` varchar(145) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studfiletrack`
--

/*!40000 ALTER TABLE `studfiletrack` DISABLE KEYS */;
INSERT INTO `studfiletrack` (`id`,`stid`,`stdept`,`file`,`status`,`time`) VALUES 
 (8,'16cse113','CSE','sample txt (10).pdf','yes','10/11/2022 12:37:20'),
 (11,'16cse113','CSE','conf_PDA.pdf','yes','10/11/2022 12:40:30'),
 (12,'16cse113','CSE','conf_PDA.pdf','yes','29/11/2022 11:26:58'),
 (13,'16cse113','CSE','sensors-22-08188-v2.pdf','yes','10/03/2023 13:45:28'),
 (14,'16cse113','CSE','sensors-22-08188-v2.pdf','yes','10/03/2023 13:46:19');
/*!40000 ALTER TABLE `studfiletrack` ENABLE KEYS */;


--
-- Definition of table `testpaper`
--

DROP TABLE IF EXISTS `testpaper`;
CREATE TABLE `testpaper` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `studid` varchar(45) DEFAULT NULL,
  `staffid` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `desciption` varchar(45) DEFAULT NULL,
  `quesname` longtext,
  `anspaper` longtext,
  `getmark` varchar(45) DEFAULT NULL,
  `totalmark` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testpaper`
--

/*!40000 ALTER TABLE `testpaper` DISABLE KEYS */;
INSERT INTO `testpaper` (`id`,`studid`,`staffid`,`subject`,`desciption`,`quesname`,`anspaper`,`getmark`,`totalmark`,`status`) VALUES 
 (1,'16cse113','cse01','oops','Assignment','Blockchain-Based_Verifiable_Tracking_of_Resellable_Returned_Drugs.pdf','Tracking_Buggy_Files_New_Efficient_Adaptive_Bug_Localization_Algorithm.pdf','60','100','Mark Updated');
/*!40000 ALTER TABLE `testpaper` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
