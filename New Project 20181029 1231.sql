-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema tolet
--

CREATE DATABASE IF NOT EXISTS tolet;
USE tolet;

--
-- Definition of table `flatdetails`
--

DROP TABLE IF EXISTS `flatdetails`;
CREATE TABLE `flatdetails` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `floor_no` int(10) unsigned default NULL,
  `flat_size` int(10) unsigned default NULL,
  `bad_room` int(10) unsigned default NULL,
  `bathroom` int(10) unsigned default NULL,
  `drowingroom` varchar(3) default NULL,
  `diningroom` varchar(3) default NULL,
  `balcony` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flatdetails`
--

/*!40000 ALTER TABLE `flatdetails` DISABLE KEYS */;
INSERT INTO `flatdetails` (`id`,`name`,`location`,`address`,`contact`,`floor_no`,`flat_size`,`bad_room`,`bathroom`,`drowingroom`,`diningroom`,`balcony`) VALUES 
 (1,'flat','dhaka','46/a mohakhali dhaka','0198837474',5,1200,3,2,'1','1','2'),
 (2,'flat','narayangonj','476/a badda dhaka','0192837464',5,1000,3,2,'yes','yes','2'),
 (3,'flat','dhaka','476/a badda dhaka','0192837464',5,1000,3,2,'yes','yes','2'),
 (4,'flat','dhaka','476/a badda dhaka','0192837464',5,1000,3,2,'yes','yes','2'),
 (5,'flat','dhaka','127/c , mohammodpur ,dhaka ,1212','019384775',4,1000,3,2,'yes','yes','2'),
 (6,'Flat','Narayangonj','56/a nalua road narayangonj','64263',3,3256,2,1,'yes','yes','1'),
 (7,'dkfk','Rangpur','fskfj','8746',2,2356,3,2,'yes','no','2'),
 (8,'kfhgkh','Coxsbazar','fglj','fgdfjg',3,231,2,1,'yes','to','1'),
 (9,'fd','Dhaka','fgd','dfg',3,345,2,2,'1','1','235345');
/*!40000 ALTER TABLE `flatdetails` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
