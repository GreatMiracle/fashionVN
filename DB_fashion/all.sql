use heroku_735f31f04058961;

-- CREATE TABLE `customer` (
--   `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
--   `firstname` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
--   `lastname` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
--   `email` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
--   `password` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
--   PRIMARY KEY (`idcustomer`)
-- ) 
-- INSERT INTO `customer` VALUES (2,'miracle','Steward','miracle@gmail.com','123'),(3,'NguyenTrung','Kien','kien@gmail.com','123');

-- CREATE TABLE `danhmucsanpham` (
--   `madanhmuc` int(11) NOT NULL AUTO_INCREMENT,
--   `tendanhmuc` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   `hinhdanhmuc` text,
--   PRIMARY KEY (`madanhmuc`)
-- )
-- INSERT INTO `danhmucsanpham` VALUES (1,'Áo Sơ Mi','img001'),(2,'Áo Thun','img002'),(3,'Quần Sort','img003'),(4,'Đồ Kiểu','img004'),(5,'Áo Khoác','img005'),(6,'Áo Đôi','img006'),(7,'Áo Sơ Mi Adachi nữ','img007'),(8,'Quần Tây','img008'),(9,'Quần Jean Adachi nam','img009');

-- CREATE TABLE `hoadon` (
--   `mahoadon` int(11) NOT NULL AUTO_INCREMENT,
--   `tenkhachhang` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   `sodt` varchar(12) DEFAULT NULL,
--   `diachigiaohang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   `tinhtrang` bit(1) DEFAULT NULL,
--   `ngaylap` datetime DEFAULT NULL,
--   `hinhthucgiaohang` varchar(45) DEFAULT NULL,
--   `ghichu` text,
--   PRIMARY KEY (`mahoadon`)
-- )
-- INSERT INTO `hoadon` VALUES (5,'Kien Nguyen','0987654321','Giao HÃ ng Táº­n NÆ¡i',_binary '\0','2020-08-01 23:38:35','Giao HÃ ng Táº­n NÆ¡i','Giao HÃ ng Ngay Trong NgÃ y Nha'),(6,'Duc','0987654300','Giao HÃ ng Táº­n NÆ¡i',_binary '\0','2020-08-06 16:23:29','Giao HÃ ng Táº­n NÆ¡i','Giao nhanh há» m cÃ¡i');


-- CREATE TABLE `khuyenmai` (
--   `makhuyenmai` int(11) NOT NULL AUTO_INCREMENT,
--   `tenkhuyenmai` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   `thoigianbatdau` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   `thoigianketthuc` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   `mota` text,
--   `hinhkhuyenmai` text,
--   `giamgia` int(11) DEFAULT NULL,
--   PRIMARY KEY (`makhuyenmai`)
-- )

-- CREATE TABLE `mausanpham` (
--   `mamau` int(11) NOT NULL AUTO_INCREMENT,
--   `tenmau` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   PRIMARY KEY (`mamau`)
-- ) 
-- INSERT INTO `mausanpham` VALUES (1,'xanh '),(2,'đỏ'),(3,'tím '),(4,'vàng'),(5,'nâu '),(6,'đen'),(7,'trắng');

-- CREATE TABLE `chucvu` (
--   `machucvu` int(11) NOT NULL AUTO_INCREMENT,
--   `tenchucvu` varchar(45) DEFAULT NULL,
--   PRIMARY KEY (`machucvu`)
-- ) 
-- INSERT INTO `chucvu` VALUES (1,'nhân viên'),(2,'admin'),(3,'người dùng');

-- CREATE TABLE `nhanvien` (
--   `manhanvien` int(11) NOT NULL AUTO_INCREMENT,
--   `hoten` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   `diachi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   `gioitinh` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   `cmnd` varchar(14) DEFAULT NULL,
--   `machucvu` int(11) DEFAULT NULL,
--   `email` varchar(45) DEFAULT NULL,
--   `tendangnhap` varchar(45) DEFAULT NULL,
--   `password` varchar(45) DEFAULT NULL,
--   `firstname` varchar(45) DEFAULT NULL,
--   `lastname` varchar(45) DEFAULT NULL,
--   PRIMARY KEY (`manhanvien`),
--   KEY `fk_nv_cv_machucvu_idx` (`machucvu`),
--   CONSTRAINT `fk_nv_cv_machucvu` FOREIGN KEY (`machucvu`) REFERENCES `chucvu` (`machucvu`)
-- ) 
-- INSERT INTO `nhanvien` VALUES (1,'Nguyen Trung Kien','Sơn Đồng-Hoài Đức- Hà Nội','nam','66668888',2,'kiennguyen@gmail.com','trungkien','123','nguyentrung','kien'),(2,NULL,NULL,NULL,NULL,NULL,'huynhduc@gmail.com',NULL,'123','Nguyen Trung','Huynh Duc'),(3,NULL,NULL,NULL,NULL,NULL,'miracle@gmail.com',NULL,'123','miracle','Steward'),(6,NULL,NULL,NULL,NULL,NULL,'javaSpring@gmail.com',NULL,'123','java','Spring'),(7,NULL,NULL,NULL,NULL,NULL,'test@gmail.com',NULL,'123','test','test1'),(9,NULL,NULL,NULL,NULL,NULL,'davidkambomoi@gmail.com',NULL,'123','david','kambomoi'),(12,NULL,NULL,NULL,NULL,NULL,'itjava@gmail.com',NULL,'123','IT ','Java');

-- CREATE TABLE `sanpham` (
--   `masanpham` int(11) NOT NULL AUTO_INCREMENT,
--   `madanhmuc` int(11) DEFAULT NULL,
--   `tensanpham` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   `giatien` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   `mota` text,
--   `hinhsanpham` text,
--   `gianhcho` varchar(45) DEFAULT NULL,
--   PRIMARY KEY (`masanpham`),
--   KEY `fk_sp_dm_idx` (`madanhmuc`),
--   CONSTRAINT `fk_sp_dm` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmucsanpham` (`madanhmuc`)
-- ) 
-- INSERT INTO `sanpham` VALUES (1,1,'Sơ Mi Nam No Style TN 002','185','-Thiết kế áo sơ mi kiểu dáng basic , dễ dàng khi di chuyển ','img001.jpg','Nam'),(2,1,'Sơ Mi Nam No Style TN L01','225','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img002.jpg','Nam'),(3,1,'Sơ Mi Nam No Style TD ST01','225','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img003.jpg','Nam'),(4,1,'Sơ Mi Nam No Style TN N03','225','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img004.jpg','Nam'),(5,7,'Sơ Mi Adachi / 0012655','300','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img005.jpg','Nữ'),(6,7,'Sơ Mi Adachi / 0012738','310','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img006.jpg','Nữ'),(7,7,'Sơ Mi Adachi / 0012658','320','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img007.jpg','Nữ'),(8,7,'Sơ Mi Adachi / 0012659','330','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img008.png','Nữ'),(9,7,'Sơ Mi Adachi / 0012660','339','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img009.jpg','Nữ'),(10,9,'Quần Kaki Na / 0013761','275','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img010.jpg','Nam'),(11,9,'Quần Jean Na / 0013760','275','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img011.jpg','Nam'),(12,9,'Quần Kaki Na / 0014768','280','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img012.jpg','Nam'),(13,9,'Quần Jean Na / 0014886','280','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img013.jpg','Nam'),(14,8,'Quần Tây Nam / 0013221','200','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img014.jpg','Nam'),(15,8,'Quần Tây Nam / 0013222','210','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img015.jpg','Nam'),(16,5,'Áo Khoác Nữ / 0012847','400','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img016.jpg','Nữ'),(17,5,'Áo Khoác Nam / 0012848','420','-Thế kế đơn giản và hiện đại với sơ mi tay ngắn đẹp','img017.jpg','Nam');

-- CREATE TABLE `sizesanpham` (
--   `masize` int(11) NOT NULL AUTO_INCREMENT,
--   `size` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
--   PRIMARY KEY (`masize`)
-- ) 
-- INSERT INTO `sizesanpham` VALUES (1,'XL'),(2,'L'),(3,'M'),(4,'S');

use heroku_735f31f04058961;

-- CREATE TABLE `chitietsanpham` (
--   `machitietsanpham` int(11) NOT NULL AUTO_INCREMENT,
--   `masanpham` int(11) DEFAULT NULL,
--   `masize` int(11) DEFAULT NULL,
--   `mamau` int(11) DEFAULT NULL,
--   `soluong` int(11) DEFAULT NULL,
--   `ngaynhap` date DEFAULT NULL,
--   PRIMARY KEY (`machitietsanpham`),
--   KEY `fk_ctsp_mau_idx` (`mamau`),
--   KEY `fk_ctsp_size_idx` (`masize`),
--   KEY `fk_ctsp_sp_idx` (`masanpham`),
--   CONSTRAINT `fk_ctsp_mau` FOREIGN KEY (`mamau`) REFERENCES `mausanpham` (`mamau`),
--   CONSTRAINT `fk_ctsp_size` FOREIGN KEY (`masize`) REFERENCES `sizesanpham` (`masize`),
--   CONSTRAINT `fk_ctsp_sp` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`)
-- ) 
-- INSERT INTO `chitietsanpham` VALUES (29,1,1,6,5,'2020-07-20'),(30,1,1,7,10,'2020-07-20'),(31,1,4,1,15,'2020-07-15'),(32,2,3,2,20,'2020-07-10'),(33,2,2,3,20,'2020-07-05'),(34,3,1,4,30,'2020-07-10'),(35,3,2,5,10,'2020-07-01'),(36,3,3,6,20,'2020-06-27'),(37,4,2,7,15,'2020-06-18'),(38,4,4,6,20,'2020-06-10'),(39,4,3,5,15,'2020-06-05'),(40,5,4,4,5,'2020-06-11'),(41,5,1,3,25,'2020-05-19'),(42,5,1,2,15,'2020-05-05');

-- CREATE TABLE `chitietkhuyenmai` (
--   `makhuyenmai` int(11) NOT NULL,
--   `masanpham` int(11) NOT NULL,
--   PRIMARY KEY (`makhuyenmai`,`masanpham`),
--   KEY `fk_ctkm_sp_idx` (`masanpham`),
--   CONSTRAINT `fk_ctkm_km` FOREIGN KEY (`makhuyenmai`) REFERENCES `khuyenmai` (`makhuyenmai`),
--   CONSTRAINT `fk_ctkm_sp` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`)
-- ) 

-- CREATE TABLE `chitiethoadon` (
--   `mahoadon` int(11) NOT NULL,
--   `machitietsanpham` int(11) NOT NULL,
--   `soluong` int(11) DEFAULT NULL,
--   `giatien` int(11) DEFAULT NULL,
--   PRIMARY KEY (`mahoadon`,`machitietsanpham`),
--   KEY `fk_cthd_ctsp_idx` (`machitietsanpham`),
--   CONSTRAINT `fk_cthd_ctsp` FOREIGN KEY (`machitietsanpham`) REFERENCES `chitietsanpham` (`machitietsanpham`),
--   CONSTRAINT `fk_cthd_hd` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`)
-- ) 
-- INSERT INTO `chitiethoadon` VALUES (5,29,1,185),(5,33,1,225),(5,36,1,225),(6,31,4,185),(6,33,4,225);


