-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: pttk
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booktour`
--

DROP TABLE IF EXISTS `booktour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booktour` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'Số thự tự',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Tên Tour',
  `quantity` int(255) DEFAULT NULL COMMENT 'Số lượng',
  `describle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Mô tả Tour',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Ghi chú',
  `date` datetime DEFAULT NULL COMMENT 'Ngày khởi hành',
  `id_custormer` varchar(255) NOT NULL COMMENT 'Mã khách hàng',
  PRIMARY KEY (`id`),
  KEY `fk_cus` (`id_custormer`),
  CONSTRAINT `fk_cus` FOREIGN KEY (`id_custormer`) REFERENCES `custormer` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktour`
--

LOCK TABLES `booktour` WRITE;
/*!40000 ALTER TABLE `booktour` DISABLE KEYS */;
/*!40000 ALTER TABLE `booktour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custormer`
--

DROP TABLE IF EXISTS `custormer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `custormer` (
  `userID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Mã khách hàng',
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Tên đầy đủ',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Email khách hàng',
  `phoneNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Số điện thoại',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Giới tính',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Địa chỉ',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custormer`
--

LOCK TABLES `custormer` WRITE;
/*!40000 ALTER TABLE `custormer` DISABLE KEYS */;
/*!40000 ALTER TABLE `custormer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paytour`
--

DROP TABLE IF EXISTS `paytour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `paytour` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `decription` varchar(255) DEFAULT NULL,
  `id_BookTOur` int(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tour` (`id_BookTOur`),
  CONSTRAINT `fk_tour` FOREIGN KEY (`id_BookTOur`) REFERENCES `booktour` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytour`
--

LOCK TABLES `paytour` WRITE;
/*!40000 ALTER TABLE `paytour` DISABLE KEYS */;
/*!40000 ALTER TABLE `paytour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tour` (
  `id` varchar(255) NOT NULL,
  `img_tour` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `customer seat` int(255) DEFAULT NULL,
  `vehicle` varchar(255) DEFAULT NULL,
  `price` double(20,1) DEFAULT NULL,
  `id_tour` int(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tou` (`id_tour`),
  CONSTRAINT `fk_tou` FOREIGN KEY (`id_tour`) REFERENCES `booktour` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-24 20:15:25
