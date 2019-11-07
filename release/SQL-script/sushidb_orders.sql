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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `deliveryperson_id` int(10) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status_order_id` int(10) NOT NULL,
  `created` datetime DEFAULT NULL,
  `finished` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deliveryperson_id` (`deliveryperson_id`),
  KEY `orders_ibfk_3_idx` (`status_order_id`),
  KEY `orders_ibfk_1` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`deliveryperson_id`) REFERENCES `deliveryperson` (`id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`status_order_id`) REFERENCES `status_order` (`id`) ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'apartment 4',1,7.55,1,'2019-10-29 10:22:01','2019-10-29 10:25:11'),(2,1,'please fast',1,27.10,1,'2019-10-29 10:23:01','2019-10-29 10:30:21'),(3,2,NULL,2,10.35,3,'2019-10-29 10:24:01','2019-10-29 10:25:21'),(4,3,NULL,3,10.30,3,'2019-10-29 10:24:01','2019-10-29 10:25:21'),(5,4,NULL,4,20.00,3,'2019-10-29 10:25:01','2019-10-29 10:27:21'),(6,3,'i\'ll pay cart',4,17.70,4,'2019-10-30 10:22:01','2019-10-30 10:27:21'),(7,2,'please fast',2,18.65,2,'2019-10-30 10:23:01','2019-10-30 10:25:21'),(8,3,NULL,2,10.00,3,'2019-10-30 10:21:01','2019-10-30 10:25:21'),(9,3,NULL,3,8.10,3,'2019-10-30 10:24:01','2019-10-30 10:27:21'),(10,5,NULL,4,7.30,3,'2019-10-30 10:25:01','2019-10-30 10:25:11');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
