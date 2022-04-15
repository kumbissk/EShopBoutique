-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Linux (x86_64)
--
-- Host: 10.73.2.133    Database: pantheon
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_pantheon_heartbeat`
--

DROP TABLE IF EXISTS `_pantheon_heartbeat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_pantheon_heartbeat` (
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `actor` varchar(64) NOT NULL,
  PRIMARY KEY (`actor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_pantheon_heartbeat`
--

LOCK TABLES `_pantheon_heartbeat` WRITE;
/*!40000 ALTER TABLE `_pantheon_heartbeat` DISABLE KEYS */;
INSERT INTO `_pantheon_heartbeat` VALUES ('2022-04-14 18:35:58','resurrection');
/*!40000 ALTER TABLE `_pantheon_heartbeat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_pt_heartbeat`
--

DROP TABLE IF EXISTS `_pt_heartbeat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_pt_heartbeat` (
  `ts` varchar(26) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `position` bigint(20) unsigned DEFAULT NULL,
  `relay_master_log_file` varchar(255) DEFAULT NULL,
  `exec_master_log_pos` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_pt_heartbeat`
--

LOCK TABLES `_pt_heartbeat` WRITE;
/*!40000 ALTER TABLE `_pt_heartbeat` DISABLE KEYS */;
