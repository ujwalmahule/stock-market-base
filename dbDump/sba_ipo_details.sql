CREATE DATABASE  IF NOT EXISTS `sba` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sba`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sba
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ipo_details`
--

DROP TABLE IF EXISTS `ipo_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipo_details` (
  `id` bigint(20) NOT NULL,
  `open_date` datetime NOT NULL,
  `price` float NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `total_shares` int(11) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `exchange_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKek03rhtf07rhluv1kles21w4r` (`company_id`),
  KEY `FKicuvpno08x573c054b1fqdm1w` (`exchange_id`),
  CONSTRAINT `FKek03rhtf07rhluv1kles21w4r` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKicuvpno08x573c054b1fqdm1w` FOREIGN KEY (`exchange_id`) REFERENCES `stock_exchange` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipo_details`
--

LOCK TABLES `ipo_details` WRITE;
/*!40000 ALTER TABLE `ipo_details` DISABLE KEYS */;
INSERT INTO `ipo_details` VALUES (20,'1970-01-16 00:00:00',150,NULL,1258888,18,14),(104,'2019-11-13 00:00:00',123,'',123,18,102),(105,'2019-11-13 00:00:00',123,'',123233,18,14),(106,'2019-10-01 00:00:00',123,'',12334,18,14),(107,'2019-11-19 00:00:00',123,'AAAA rating',3332,18,14),(2272,'2019-12-10 00:00:00',123,'',2234,110,14);
/*!40000 ALTER TABLE `ipo_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05  0:49:16
