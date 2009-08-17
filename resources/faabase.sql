-- MySQL dump 10.11
--
-- Host: localhost    Database: faa_test
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
-- Table structure for table `acftref`
--

DROP TABLE IF EXISTS `acftref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acftref` (
  `code` varchar(20) NOT NULL,
  `mfrname` varchar(50) default NULL,
  `model` varchar(20) default NULL,
  `typeacft` varchar(20) default NULL,
  `typeeng` varchar(20) default NULL,
  `accat` varchar(20) default NULL,
  `buildcertind` varchar(20) default NULL,
  `noeng` varchar(20) default NULL,
  `noseats` varchar(20) default NULL,
  `acweight` varchar(20) default NULL,
  `speed` varchar(20) default NULL,
  PRIMARY KEY  (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `master`
--

DROP TABLE IF EXISTS `master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master` (
  `NNUMBER` varchar(20) NOT NULL,
  `SERIALNUM` varchar(20) default NULL,
  `MFRMDLCODE` varchar(20) default NULL,
  `ENGMFRMDL` varchar(20) default NULL,
  `YEARMFR` varchar(20) default NULL,
  `TYPEREG` varchar(20) default NULL,
  `NAME` varchar(50) default NULL,
  `STREET` varchar(50) default NULL,
  `STREET2` varchar(50) default NULL,
  `CITY` varchar(20) default NULL,
  `STATE` varchar(20) default NULL,
  `ZIP` varchar(20) default NULL,
  `REGION` varchar(20) default NULL,
  `COUNTY` varchar(20) default NULL,
  `COUNTRY` varchar(20) default NULL,
  `LASTACTIONDATE` varchar(20) default NULL,
  `CERTISSUEDATE` varchar(20) default NULL,
  `CERTIFICATION` varchar(20) default NULL,
  `TYPEAIRCRAFT` varchar(20) default NULL,
  `TYPEENGINE` varchar(20) default NULL,
  `STATUSCODE` varchar(20) default NULL,
  `MODESCODE` varchar(20) default NULL,
  `FRACTOWNER` varchar(20) default NULL,
  `AIRWORTHDATE` varchar(20) default NULL,
  `OTHER1` varchar(50) default NULL,
  `OTHER2` varchar(50) default NULL,
  `OTHER3` varchar(50) default NULL,
  `OTHER4` varchar(50) default NULL,
  `OTHER5` varchar(50) default NULL,
  PRIMARY KEY  (`NNUMBER`)
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

-- Dump completed on 2009-08-03 16:19:28
