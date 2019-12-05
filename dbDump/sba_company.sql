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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` bigint(20) NOT NULL,
  `board_of_directors` varchar(255) NOT NULL,
  `brief_writeup` longtext NOT NULL,
  `ceo` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `turnover` float NOT NULL,
  `sector_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmumulhrkylrdxsl33736gudi6` (`sector_id`),
  CONSTRAINT `FKmumulhrkylrdxsl33736gudi6` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (18,'Pratima Sheorey, Uttam Agarwal, T S Vijayan','Yes Bank Ltd offers a full-range of client-focused corporate banking services, including working capital finance, specialized corporate finance, trade and transactional services, treasury risk management services, investment banking solutions and liquidity management solutions among others to a highly focused client base. The bank also has a widespread branch network of over 331 branches across 200 cities, with over 420 ATM`s and 2 National Operating Centres in Mumbai and Gurgaon.The business areas of the bank includes:Corporate and Institutional Banking,Business Banking,Corporate Finance,Retail Banking and Investment Banking.','Ravneet Gill','Yes Bank Pvt. Ltd.',15001,8),(108,'Sangita Malik, Sunil Khera, Ashish Suchdeva','Himalya International Ltd offer a variety of mushrooms like White (Agaricus), Crimini (Italian Brown) and Portobello as frozen Buttons, Slices, Dices & de-stemmed Caps. Mushrooms are grown in-house right from composting agro waste and developing spawn to quick processing within hours of picking.Most recently the company has ventured to cover the pure buffalo milk from India, with traditional Italian knowledge of making the real, authentic Mozzarella & Ricotta Cheeses under an Italian expert Raffaele Cioffi.Ethnic sweets and appetizers fall under the companys prepared food line.The company has also created partnerships with local farmers to produce all their raw material reqquirements from vegetables to pure buffalo milk','Man Mohan Malik','Himalaya Food International Ltd Ltd.',15000,10),(109,'Y Siddharth Reddy, Y Varun Reddy, Y Varun Reddy','Country Club (India) Ltd is one of the fastest growing entertainment and leisure conglomerate in India.They are the country`s biggest chain of Family Clubs recognized by the Limca Book of World Records. The company a powerhouse of entertainment ,organizes shows including beauty pageants, Holi, Navarathri, Dasara, Diwali, Christmas, Lodi and New Year regularly and invites celebrities. The company provides facilities like health club, multi-cuisine restaurants, business centre, swimming pool and other facilities. They also provide preferential benefit to members of Country Club and also organise entertainment events on various occasions such as Holi, Navarathri, Dasara, Diwali, Chrisstmas, Lodi and New Year','Y Rajeev Reddy','Country Club Hospitality & Holidays Ltd.',11008,9),(110,'Nikhil Sinha','HCL Infosystems Ltd is Indias premier hardware, services and ICT systems integration company offering a wide spectrum of ICT products that includes Computing, Storage, Networking, Security, Telecom, Imaging and Retail..The company also in the business activities of Distribution, Computer Systems & Other Related Products.','Nikhil Sinha','HCL Infosystems Ltd.',50000,11);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05  0:49:19
