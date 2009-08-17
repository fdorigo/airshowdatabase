-- MySQL dump 10.11
--
-- Host: localhost    Database: AIRPLANE
-- ------------------------------------------------------
-- Server version	5.0.83

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Record`
--

DROP TABLE IF EXISTS `Record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Record` (
  `nnumber` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) default NULL,
  `addressone` varchar(50) default NULL,
  `addresstwo` varchar(50) default NULL,
  `addresscity` varchar(50) default NULL,
  `addressstate` varchar(50) default NULL,
  `addresszip` varchar(50) default NULL,
  `primaryphone` varchar(50) default NULL,
  `secondaryphone` varchar(50) default NULL,
  `emailaddress` varchar(50) default NULL,
  `arrivaldate` varchar(50) default NULL,
  `airplanemodel` varchar(50) default NULL,
  `airplanemake` varchar(50) default NULL,
  `manufactureyear` varchar(50) default NULL,
  `airplanecolor` varchar(50) default NULL,
  `numberofoccupants` varchar(50) default NULL,
  `homebase` varchar(50) default NULL,
  `needjudging` tinyint(1) default NULL,
  `judged` tinyint(1) default '0',
  PRIMARY KEY  (`nnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `airplanescore`
--

DROP TABLE IF EXISTS `airplanescore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airplanescore` (
  `nnumber` varchar(20) NOT NULL,
  `cat11` varchar(20) default NULL,
  `cat12` varchar(20) default NULL,
  `cat13` varchar(20) default NULL,
  `cat14` varchar(20) default NULL,
  `cat15` varchar(20) default NULL,
  `cat21` varchar(20) default NULL,
  `cat22` varchar(20) default NULL,
  `cat23` varchar(20) default NULL,
  `cat24` varchar(20) default NULL,
  `cat25` varchar(20) default NULL,
  `cat31` varchar(20) default NULL,
  `cat32` varchar(20) default NULL,
  `cat33` varchar(20) default NULL,
  `cat34` varchar(20) default NULL,
  `cat35` varchar(20) default NULL,
  `c1` smallint(6) default '0',
  `c2` smallint(6) default '0',
  `c3` smallint(6) default '0',
  `c4` smallint(6) default '0',
  `c5` smallint(6) default '0',
  `overall` smallint(6) default '0',
  PRIMARY KEY  (`nnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-08-03 16:20:35
