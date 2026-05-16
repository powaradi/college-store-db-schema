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
-- Table structure for table `engineering_lab_workshop`
--

DROP TABLE IF EXISTS `engineering_lab_workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engineering_lab_workshop` (
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
-- Dumping data for table `engineering_lab_workshop`
--

LOCK TABLES `engineering_lab_workshop` WRITE;
/*!40000 ALTER TABLE `engineering_lab_workshop` DISABLE KEYS */;
INSERT INTO `engineering_lab_workshop` VALUES (1,'Mechanical Workshop Tools','Hammer','Taparia','HM101','EL001','Workshop Store','Steel hammer',450.00,35,'Piece',18.00,'Available','2026-05-15 16:02:10'),(2,'Mechanical Machines','Lathe Machine','Lakshmi','LM550','EL002','Industrial Machines','Heavy duty lathe',250000.00,2,'Piece',18.00,'Available','2026-05-15 16:02:10'),(3,'Physics Lab Equipment','Vernier Caliper','Mitutoyo','VC200','EL003','Physics Supplies','0-150mm caliper',1500.00,20,'Piece',18.00,'Available','2026-05-15 16:02:10'),(4,'Chemistry Lab Equipment','Beaker Set','Borosil','BK500','EL004','Chem Labs','Glass beaker set',1200.00,25,'Set',18.00,'Available','2026-05-15 16:02:10'),(5,'Civil Survey Equipment','Theodolite','Topcon','TH900','EL005','Survey India','Digital theodolite',65000.00,3,'Piece',18.00,'Available','2026-05-15 16:02:10');
/*!40000 ALTER TABLE `engineering_lab_workshop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-16 20:15:58
