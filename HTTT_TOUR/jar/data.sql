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
  `trang_thai` tinyint(4) DEFAULT NULL,
  `cus_name` varchar(255) DEFAULT NULL,
  `cus_address` varchar(255) DEFAULT NULL,
  `cus_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user` (`id_customer`),
  CONSTRAINT `fk_tour1` FOREIGN KEY (`id_customer`) REFERENCES `tour` (`id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`id_customer`) REFERENCES `user_db` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booktour`
--

LOCK TABLES `booktour` WRITE;
/*!40000 ALTER TABLE `booktour` DISABLE KEYS */;
INSERT INTO `booktour` VALUES (1,2,3,'','2019-12-25',4,9,0,'zxczxczxc','zxczxczxc','0949630817'),(2,2,3,'','2019-12-25',4,9,0,'zxczxczxc','zxczxczxc','0949630817'),(3,2,2,'','2019-12-25',4,9,0,'zxczxc','zxczxc','0949630817');
/*!40000 ALTER TABLE `booktour` ENABLE KEYS */;
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
  `description` longtext,
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
INSERT INTO `tour` VALUES (1,'images/image4.jpg','Tham quan thác Dambri - ngọn thác hùng vĩ tại cao nguyên Bảo Lộc.Tham quan Khu Du Lịch Trang Trại Rau và Hoa, nằm trải rộng cả một thung lũng với bốn bề là rau và hoa đẹp tuyệt vời.Viếng Linh Ẩn tự, ngôi chùa với tượng Phật Di Lặc lớn nhất tỉnh Lâm Đồng.',10,'Đi về bằng xe',3379000.0,1690000,'2019-01-01',10,'4 ngày 3 đêm','DU LỊCH ĐÀ LẠT','Đà Lạt','TP. Hồ Chí Minh'),(2,'images/image5.jpg','- Chiêm ngưỡng Bãi biển cát trắng Cà Ná - một trong những bãi biển đẹp nổi tiếng của miền Trung.Tham quan Viện hải dương Nha Trang ,viếng tháp Bà Ponagar, một trong những quần thể kiến trúc, nghệ thuật Chăm tuyệt đẹp.Tắm biển Dốc Lết - Một trong những bãi biển êm, đẹp, nổi tiếng của tỉnh Khánh Hòa.',12,'Đi về bằng xe',3879000.0,2195000,'2019-01-01',12,'4 ngày 3 đêm','DU LỊCH NHA TRANG','Nha Trang','TP. Hồ Chí Minh'),(3,'images/image6.jpg','- Trải nghiệm “Cáp treo 3 dây vượt biển dài nhất thế giới tại Hòn Thơm”  với tổng chiều dài 7.899.9m,thời gian di chuyển 15 phút. Tham quan suối Tranh - quý khách có thể đi dạo trong rừng, thư giãn, tắm suối.',20,'Hàng không Vietjet Air',5179000.0,4039000,'2019-01-01',10,'3 ngày 2 đêm','DU LỊCH PHÚ QUỐC','Phú Quốc','TP. Hồ Chí Minh'),(4,'images/image8.jpg','- Trải nghiệm dịch vụ 5 sao cao cấp tại The Grand Ho Tram Strip.Nghỉ ngơi thư giãn và tự do tắm biển tại bãi biển riêng của The Grand Ho Tram Strip. ',12,'Đi về bằng xe',2279000.0,1600000,'2019-01-01',15,'2 ngày 1 đêm','DU LỊCH TẠI HỒ TRÀM','Hồ Tràm','TP. Hồ Chí Minh'),(5,'images/image7.jpg','- Viếng Thiền Viện Trúc Lâm Hộ Quốc ngôi chùa đẹp và lớn nhất đảo ngọc.Tắm biển Bãi Sao (hoặc bãi Ông Lang) - một trong những bãi biển đẹp nhất tại Phú Quốc.',15,'Hàng không Vietjet',4679000.0,3539000,'2019-01-01',10,'3 ngày 2 đêm','DU LỊCH PHÚ QUỐC','Phú Quốc','TP. Hồ Chí Minh'),(6,'images/image9.jpg','- Tham quan làng cổ Đường Lâm với cây đa, bến nước, mái đình, ... đặc trưng của vùng nông thôn Bắc Bộ.Tham quan Khu du lịch Tràng An - nơi có cảnh quan ngoạn mục với hệ thống sông, suối đan xen nối dài chảy tràn trong các thung lũng.Viếng chùa Tam Chúc - quần thể khu tâm linh được kỳ vọng là lớn nhất thế giới khi hoàn thành vào năm 2048. Lên thuyền du ngoạn vịnh Hạ Long - một trong 7 kỳ quan thiên nhiên mới của thế giới.',20,'Hàng không Vietjet Air',7939000.0,5650000,'2019-01-01',10,'4 ngày 3 đêm','DU LỊCH HÀ NỘI ','Hà Nội - Hạ Long - Ninh Bình','TP. Hồ Chí Minh'),(7,'images/intour2.jpg','- Thăm Cao nguyên đá Đồng Văn - Công viên địa chất toàn cầu.Thỏa sức ngắm nhìn những vườn hoa tam giác mạch đương nở rộ.Chinh phục Cột cờ Lũng Cú - nơi đánh dấu điểm địa đầu cực Bắc của Việt Nam. Chiêm ngưỡng cảnh sắc đầy hùng vĩ và thơ mộng của thác Bản Giốc - một trong bốn thác nước là đường biên giới tự nhiên giữa các quốc gia lớn nhất thế giới. ',10,'Hàng không Vietjet',9379000.0,5898000,'2019-01-01',12,'6 ngày 5 đêm','DU LỊCH HÀ GIANG ','Đông Bắc','TP. Hồ Chí Minh'),(8,'images/intour4.jpg','- Tham quan thác Dambri - ngọn thác hùng vĩ tại cao nguyên Bảo Lộc ',20,'Đi về bằng xe',3379000.0,1690000,'2019-01-01',10,'4 ngày 3 đêm','DU LỊCH ĐÀ LẠT ','Đà Lạt','TP. Hồ Chí Minh'),(9,'images/intour5.jpg','- Chiêm ngưỡng vẻ đẹp của Bãi biển cát trắng Cà Ná. Tham quan khu du lịch Sỏi Island .Tham quan Làng Yến Mai Sinh để tận mắt chiêm ngưỡng hang Yến, tìm hiểu quá trình chim Yến làm tổ... ',12,'Đi về bằng xe',4239000.0,2230000,'2019-01-01',12,'4 ngày 3 đêm','DU LỊCH NHA TRANG ','Nha Trang','TP. Hồ Chí Minh'),(10,'images/intour6.jpg','- Đến Mỹ Tho thưởng thức trái cây theo mùa, nghe nhạc tài tử Nam Bộ. Một Tour hot trong năm mới mà bạn nên đi đến đây.',20,'Đi về bằng xe',3679000.0,1840000,'2019-01-01',10,'4 ngày 3 đêm','DU LỊCH MỸ THO ','Miền Tây - ĐBSCL','TP. Hồ Chí Minh');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_db`
--

LOCK TABLES `user_db` WRITE;
/*!40000 ALTER TABLE `user_db` DISABLE KEYS */;
INSERT INTO `user_db` VALUES (9,'ltn','123',NULL,2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_db` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-25 20:03:07
