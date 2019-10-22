-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ohealth
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `transactiontab`
--

DROP TABLE IF EXISTS `transactiontab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactiontab` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tdate` date DEFAULT NULL,
  `mdate` date DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `showtime` varchar(45) DEFAULT NULL,
  `sitid` varchar(150) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `bill` int(11) DEFAULT NULL,
  `totalsit` int(11) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactiontab`
--

LOCK TABLES `transactiontab` WRITE;
/*!40000 ALTER TABLE `transactiontab` DISABLE KEYS */;
INSERT INTO `transactiontab` VALUES (2,'2018-08-27','2018-08-31','Ahad','4:30 PM','17','a',800,1,'01911807199','2'),(3,'2018-08-27','2018-08-31','Ahad','4:30 PM','1,2','a',1600,2,'01911807199','2'),(4,'2018-08-27','2018-08-31','Ahad','4:30 PM','13','a',800,1,'01911807199','2'),(5,'2018-08-27','2018-09-01','AIK','7:30 PM','2','a',1000,1,'01911807199','1');
/*!40000 ALTER TABLE `transactiontab` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-27 15:25:01
