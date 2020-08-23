-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: dbfashionvietnam
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
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sanpham` (
  `masanpham` int(11) NOT NULL AUTO_INCREMENT,
  `madanhmuc` int(11) DEFAULT NULL,
  `tensanpham` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `giatien` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mota` text,
  `hinhsanpham` text,
  `gianhcho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`masanpham`),
  KEY `fk_sp_dm_idx` (`madanhmuc`),
  CONSTRAINT `fk_sp_dm` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmucsanpham` (`madanhmuc`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,1,'Sơ Mi Nam No Style TN 002','185','-Thiết kế áo sơ mi kiểu dáng basic , dễ dàng khi di chuyển ','img001.jpg','Nam'),(2,1,'Sơ Mi Nam No Style TN L01','225','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img002.jpg','Nam'),(3,1,'Sơ Mi Nam No Style TD ST01','225','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img003.jpg','Nam'),(4,1,'Sơ Mi Nam No Style TN N03','225','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img004.jpg','Nam'),(5,7,'Sơ Mi Adachi / 0012655','300','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img005.jpg','Nữ'),(6,7,'Sơ Mi Adachi / 0012738','310','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img006.jpg','Nữ'),(7,7,'Sơ Mi Adachi / 0012658','320','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img007.jpg','Nữ'),(8,7,'Sơ Mi Adachi / 0012659','330','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img008.png','Nữ'),(9,7,'Sơ Mi Adachi / 0012660','339','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img009.jpg','Nữ'),(10,9,'Quần Kaki Na / 0013761','275','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img010.jpg','Nam'),(11,9,'Quần Jean Na / 0013760','275','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img011.jpg','Nam'),(12,9,'Quần Kaki Na / 0014768','280','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img012.jpg','Nam'),(13,9,'Quần Jean Na / 0014886','280','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img013.jpg','Nam'),(14,8,'Quần Tây Nam / 0013221','200','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img014.jpg','Nam'),(15,8,'Quần Tây Nam / 0013222','210','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img015.jpg','Nam'),(16,5,'Áo Khoác Nữ / 0012847','400','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img016.jpg','Nữ'),(17,5,'Áo Khoác Nam / 0012848','420','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img017.jpg','Nam');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-09 23:04:58
