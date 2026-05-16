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
-- Table structure for table `safety_security_medical`
--

DROP TABLE IF EXISTS `safety_security_medical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `safety_security_medical` (
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
-- Dumping data for table `safety_security_medical`
--

LOCK TABLES `safety_security_medical` WRITE;
/*!40000 ALTER TABLE `safety_security_medical` DISABLE KEYS */;
INSERT INTO `safety_security_medical` VALUES (1,'Fire Safety Equipment','Fire Extinguisher','SafePro','FE101','SS001','Safety India','ABC Dry Powder Type',3500.00,20,'Piece',18.00,'Available','2026-05-15 17:10:19'),(2,'Security Systems','CCTV Camera','Hikvision','CC202','SS002','SecureTech','1080P HD Camera',4200.00,15,'Piece',18.00,'Available','2026-05-15 17:10:19'),(3,'First Aid & Medical Equipment','First Aid Kit','Medicare','FA303','SS003','Medical Suppliers','Basic emergency medical kit',950.00,25,'Kit',18.00,'Available','2026-05-15 17:10:19'),(4,'Hygiene & Sanitary Products','Sanitary Napkin Pack','Whisper','SN404','SS004','HealthCare Distributors','Pack of 20 pads',120.00,60,'Pack',18.00,'Available','2026-05-15 17:10:19'),(5,'Personal Protective Equipment (PPE)','Safety Helmet','Karam','SH505','SS005','Industrial Safety','Construction safety helmet',650.00,40,'Piece',18.00,'Available','2026-05-15 17:10:19');
/*!40000 ALTER TABLE `safety_security_medical` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-16 20:16:00
