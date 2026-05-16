CREATE DATABASE  IF NOT EXISTS `college_store_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `college_store_db`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: college_store_db
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `computer_it_networking`
--

DROP TABLE IF EXISTS `computer_it_networking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computer_it_networking` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `subcategory` varchar(150) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `model_number` varchar(100) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `supplier_name` varchar(150) DEFAULT NULL,
  `specification` text,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `unit` varchar(50) NOT NULL,
  `gst_percent` decimal(5,2) DEFAULT '18.00',
  `product_status` enum('Available','Out of Stock','Damaged') DEFAULT 'Available',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `barcode` (`barcode`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computer_it_networking`
--

LOCK TABLES `computer_it_networking` WRITE;
/*!40000 ALTER TABLE `computer_it_networking` DISABLE KEYS */;
INSERT INTO `computer_it_networking` VALUES (1,'Computer Hardware','Desktop Computer','Dell','Optiplex 7010','IT001','Dell Store','i5, 16GB RAM, 512GB SSD',55000.00,25,'Piece',18.00,'Available','2026-05-15 16:02:10'),(2,'Networking Equipment','WiFi Router','TP-Link','AX1500','IT002','NetWorld','Dual Band Router',4500.00,18,'Piece',18.00,'Available','2026-05-15 16:02:10'),(3,'IT Accessories','Wireless Mouse','Logitech','M235','IT003','Tech Accessories','USB Wireless Mouse',850.00,50,'Piece',18.00,'Available','2026-05-15 16:02:10'),(4,'Server & Storage Equipment','NAS Storage','Synology','DS220+','IT004','Server Tech','2-Bay NAS',32000.00,5,'Piece',18.00,'Available','2026-05-15 16:02:10'),(5,'Smart Classroom Equipment','Projector','Epson','EB-X06','IT005','AV Solutions','3600 Lumens Projector',42000.00,8,'Piece',18.00,'Available','2026-05-15 16:02:10');
/*!40000 ALTER TABLE `computer_it_networking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-16 20:15:59
