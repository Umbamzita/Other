-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: sushidb
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
-- Table structure for table `customer_sushis`
--

DROP TABLE IF EXISTS `customer_sushis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_sushis` (
  `order_id` int(10) NOT NULL,
  `sushi` varchar(50) DEFAULT NULL,
  KEY `order_id` (`order_id`),
  KEY `customer_sushis_ibfk_1` (`sushi`),
  CONSTRAINT `customer_sushis_ibfk_1` FOREIGN KEY (`sushi`) REFERENCES `sushis` (`name`) ON UPDATE CASCADE,
  CONSTRAINT `customer_sushis_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_sushis`
--

LOCK TABLES `customer_sushis` WRITE;
/*!40000 ALTER TABLE `customer_sushis` DISABLE KEYS */;
INSERT INTO `customer_sushis` VALUES (1,'Futomaki tuna'),(1,'Nigiri tuna'),(2,'Futomaki vegas'),(2,'Uramaki afrika'),(3,'Futomaki tokio'),(4,'unagi fresh'),(4,'unagi fresh'),(4,'unagi fresh'),(5,'Uramaki chiken fresh'),(6,'Futomaki tuna'),(6,'Nigiri forel'),(6,'Nigiri forel'),(6,'Nigiri forel'),(6,'Nigiri forel'),(6,'Nigiri tuna'),(8,'Futomaki vegas'),(9,'Uramaki green dragon'),(10,'Futomaki kolorado'),(7,'Futomaki kolorado'),(5,'Futomaki tokio'),(2,'Futomaki tokio'),(7,'Osaka maki');
/*!40000 ALTER TABLE `customer_sushis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-04 15:59:24
