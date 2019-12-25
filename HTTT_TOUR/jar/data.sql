-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: httt
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
  `slNguoiLon` int(255) DEFAULT NULL COMMENT 'Số lượng',
  `slTreNho` int(255) DEFAULT NULL COMMENT 'Số lượng',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Ghi chú',
  `date` date DEFAULT NULL COMMENT 'Ngày khởi hành',
  `id_tour` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user` (`id_customer`),
  CONSTRAINT `fk_tour1` FOREIGN KEY (`id_customer`) REFERENCES `tour` (`id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`id_customer`) REFERENCES `user_db` (`user_id`)
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
-- Table structure for table `paytour`
--

DROP TABLE IF EXISTS `paytour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `paytour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_bookTour` int(11) NOT NULL,
  `cus_name` varchar(255) NOT NULL,
  `cus_email` varchar(255) NOT NULL,
  `cus_phone` varchar(255) NOT NULL,
  `cus_address` varchar(255) NOT NULL,
  `trangThai` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tour` (`id_bookTour`),
  CONSTRAINT `fk_tour` FOREIGN KEY (`id_bookTour`) REFERENCES `booktour` (`id`)
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
-- Table structure for table `role_db`
--

DROP TABLE IF EXISTS `role_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_db` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_db`
--

LOCK TABLES `role_db` WRITE;
/*!40000 ALTER TABLE `role_db` DISABLE KEYS */;
INSERT INTO `role_db` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `role_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_tour` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `customer seat` int(255) DEFAULT NULL,
  `vehicle` varchar(255) DEFAULT NULL,
  `price` double(20,1) DEFAULT NULL,
  `price_treEm` double NOT NULL,
  `dateStart` date NOT NULL,
  `luotTruyCap` int(11) DEFAULT NULL,
  `timeTour` varchar(255) DEFAULT NULL,
  `tourName` varchar(255) DEFAULT NULL,
  `diemDen` varchar(255) DEFAULT NULL,
  `diemXuatPhat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'images/image4.jpg','- Tham quan thác Dambri - ngọn thác hùng vĩ tại cao nguyên Bảo Lộc ',10,'Đi về bằng xe',3379000.0,1690000,'2019-01-01',10,'4 ngày 3 đêm','DU LỊCH ĐÀ LẠT','Đà Lạt','TP. Hồ Chí Minh'),(2,'images/image5.jpg','- Chiêm ngưỡng Bãi biển cát trắng Cà Ná - một trong những bãi biển đẹp nổi tiếng của miền Trung',12,'Đi về bằng xe',3879000.0,2195000,'2019-01-01',12,'4 ngày 3 đêm','DU LỊCH NHA TRANG','Nha Trang','TP. Hồ Chí Minh'),(3,'images/image6.jpg','- Trải nghiệm “Cáp treo 3 dây vượt biển dài nhất thế giới tại Hòn Thơm”  với tổng chiều dài 7.899.9m,thời gian di chuyển 15 phút ',20,'Hàng không Vietjet Air',5179000.0,4039000,'2019-01-01',10,'3 ngày 2 đêm','DU LỊCH PHÚ QUỐC','Phú Quốc','TP. Hồ Chí Minh'),(4,'images/image8.jpg','- Trải nghiệm dịch vụ 5 sao cao cấp tại The Grand Ho Tram Strip ',12,'Đi về bằng xe',2279000.0,1600000,'2019-01-01',15,'2 ngày 1 đêm','DU LỊCH TẠI HỒ TRÀM','Hồ Tràm','TP. Hồ Chí Minh'),(5,'images/image7.jpg','- Viếng Thiền Viện Trúc Lâm Hộ Quốc ngôi chùa đẹp và lớn nhất đảo ngọc',15,'Hàng không Vietjet',4679000.0,3539000,'2019-01-01',10,'3 ngày 2 đêm','DU LỊCH PHÚ QUỐC','Phú Quốc','TP. Hồ Chí Minh'),(6,'images/image9.jpg','- Tham quan làng cổ Đường Lâm với cây đa, bến nước, mái đình, ... đặc trưng của vùng nông thôn Bắc Bộ.',20,'Hàng không Vietjet Air',7939000.0,5650000,'2019-01-01',10,'4 ngày 3 đêm','DU LỊCH HÀ NỘI ','Hà Nội - Hạ Long - Ninh Bình','TP. Hồ Chí Minh'),(7,'images/intour2.jpg','- Thăm Cao nguyên đá Đồng Văn - Công viên địa chất toàn cầu. ',10,'Hàng không Vietjet',9379000.0,5898000,'2019-01-01',12,'6 ngày 5 đêm','DU LỊCH HÀ GIANG ','Đông Bắc','TP. Hồ Chí Minh'),(8,'images/intour4.jpg','- Tham quan thác Dambri - ngọn thác hùng vĩ tại cao nguyên Bảo Lộc ',20,'Đi về bằng xe',3379000.0,1690000,'2019-01-01',10,'4 ngày 3 đêm','DU LỊCH ĐÀ LẠT ','Đà Lạt','TP. Hồ Chí Minh'),(9,'images/intour5.jpg','- Chiêm ngưỡng vẻ đẹp của Bãi biển cát trắng Cà Ná ',12,'Đi về bằng xe',4239000.0,2230000,'2019-01-01',12,'4 ngày 3 đêm','DU LỊCH NHA TRANG ','Nha Trang','TP. Hồ Chí Minh'),(10,'images/intour6.jpg','- Đến Mỹ Tho thưởng thức trái cây theo mùa, nghe nhạc tài tử Nam Bộ',20,'Đi về bằng xe',3679000.0,1840000,'2019-01-01',10,'4 ngày 3 đêm','DU LỊCH MỸ THO ','Miền Tây - ĐBSCL','TP. Hồ Chí Minh');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_db`
--

DROP TABLE IF EXISTS `user_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_db` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_fullname` varchar(50) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_db_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role_db` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_db`
--

LOCK TABLES `user_db` WRITE;
/*!40000 ALTER TABLE `user_db` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'httt'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-25 15:41:30
