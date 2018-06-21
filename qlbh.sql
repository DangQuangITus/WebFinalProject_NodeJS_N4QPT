-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: qlbh
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `billID` int(11) NOT NULL AUTO_INCREMENT,
  `TenKH` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Addr` varchar(205) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SDT` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Status` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`billID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'Trần Văn Hùng','83, An Dương Vương, P4, Q5','09047383221','2018-05-17 00:00:00','Chưa giao'),(2,'Trần Hạnh','1, Nguyễn Thị Minh Khai, P4, Q5','09047383221','2018-05-11 00:00:00','Chưa giao'),(4,'Nam','Hà nội','0987122829','2001-11-11 00:00:00','Đang giao'),(6,'Lê Văn Nam','Lê Hồng Phong, Phường 4 Quận 5 HCM','0123456','2001-01-31 00:00:00','Đang giao'),(7,'Lê Hoàng Mai','Quận 2','09623523667','2001-05-03 00:00:00','Đã giao');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `CatID` int(11) NOT NULL AUTO_INCREMENT,
  `CatName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`CatID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'loại 1'),(2,'loại 2'),(3,'loại 3'),(4,'loại 4'),(7,'Loại 7'),(8,'undefined');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nsx`
--

DROP TABLE IF EXISTS `nsx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsx` (
  `nsxID` int(11) NOT NULL AUTO_INCREMENT,
  `nsxName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`nsxID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsx`
--

LOCK TABLES `nsx` WRITE;
/*!40000 ALTER TABLE `nsx` DISABLE KEYS */;
INSERT INTO `nsx` VALUES (1,'DELL'),(2,'ASUS'),(3,'APPLE'),(4,'LENOVO'),(5,'ACER'),(9,'SXM');
/*!40000 ALTER TABLE `nsx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ProID` int(11) NOT NULL AUTO_INCREMENT,
  `ProName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProDec` text COLLATE utf8_unicode_ci,
  `CatID` int(11) DEFAULT NULL,
  `nsxID` int(11) DEFAULT NULL,
  `ProPrice` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProAddr` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProDateIn` datetime DEFAULT NULL,
  `NumSale` int(11) DEFAULT NULL,
  `NumWatch` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Laptop Dell Inspiron 3567','Dell Inspiron 3567 i5 7200U là phiên bản máy tính xách tay phục vụ cho người dùng làm trong các ngành nghề thuộc phân khúc đồ họa  - kỹ thuật.',1,1,'15000000đ','Hàn Quốc','2018-04-10 00:00:00',0,0),(2,'Laptop Asus X405UA','Laptop Asus X405UA i3 7100U sự kết hợp hoàn hảo giữa vẻ đẹp hoàn mỹ và hiệu năng',2,2,'20000000đ','Nhật Bản','2018-02-11 00:00:00',11,12),(3,'Laptop Asus X510UA i3','Asus X510UA sở hữu cấu hình i3 thế hệ 7 ổn định cùng một thiết kế ấn tượng. Đây là sự lựa chọn thích hợp cho phân khúc người dùng là học sinh - sinh viên, dân văn phòng.',2,2,'21000000đ','Hàn Quốc','2018-05-21 00:00:00',0,0),(4,'Laptop Asus TP410UA i3','Asus TP410UA i3 7100U là một kiểu máy tính lai có thiết kế đẹp, tiện lợi và nhiều tính năng nổi trội cùng một mức giá vừa phải. Đây sẽ là sự lựa chọn rất tuyệt vời cho người dùng cần nhiều thao tác tích hợp trong một thiết bị nhỏ gọn.',2,2,'13190000đ','Nhật Bản','2000-11-11 00:00:00',5,21),(5,'Laptop Asus S510UA i5','Laptop Asus S510UA i5 bản nâng cấp hết sức giá trị với chip xử lý thế hệ thứ 8 mới nhất của Intel cho hiệu năng vượt trội, đáp ứng tốt cho bạn trong các nhu cầu làm việc, học tập, giải trí hằng ngày.',3,1,'21000000đ','Hàn Quốc','2018-05-22 00:00:00',9,11),(6,'Laptop Asus X510UQ i7','Tiếp tục nâng cấp cấu hình từ mẫu laptop \"Mỏng nhẹ - Thời trang\" kết hợp \"Đồ họa - Kỹ thuật\" Asus X510UQ i5 8250U, mẫu Asus X510UQ i7 8550U ra đời mang đến sự lựa chọn hoàn hảo hơn cho người dùng.',1,2,'17000000đ','Hàn','2018-05-26 00:00:00',0,0),(7,'Laptop Asus S510UQ i5','Asus S510UQ i5 8250U thuộc phân khúc laptop mỏng nhẹ - thời trang với thiết kế kết hợp chất liệu kim loại, kiểu dáng bắt mắt. Máy còn trang bị cấu hình khá mạnh có thể sử dụng được các phần mềm về đồ họa hoặc chơi game ở mức độ cơ bản.',3,2,'21000000đ','Hàn Quốc','2018-05-26 00:00:00',0,4),(8,'Laptop Asus S510UQ i5','Asus S510UQ i5 8250U thuộc phân khúc laptop mỏng nhẹ - thời trang với thiết kế kết hợp chất liệu kim loại, kiểu dáng bắt mắt. Máy còn trang bị cấu hình khá mạnh có thể sử dụng được các phần mềm về đồ họa hoặc chơi game ở mức độ cơ bản.',1,2,'17200000đ','Nhật Bản','2018-05-22 00:00:00',33,37),(9,'Laptop Asus UX430UA i5','Asus UX430UA là mẫu máy tính kết hợp giữa sự mỏng nhẹ - thời trang và một cấu hình mạnh mẽ. Đây là lựa chọn hoàn hảo cho nhiều nhu cầu sử dụng của người dùng.',1,2,'25000000đ','Mỹ','2018-05-26 00:00:00',0,4),(10,'Laptop Asus S510UQ i5','Asus S510UQ i5 8250U thuộc phân khúc laptop mỏng nhẹ - thời trang với thiết kế kết hợp chất liệu kim loại, kiểu dáng bắt mắt. Máy còn trang bị cấu hình khá mạnh có thể sử dụng được các phần mềm về đồ họa hoặc chơi game ở mức độ cơ bản.',4,2,'16500000đ','Hàn Quốc','2018-05-22 00:00:00',22,55),(11,'Laptop Asus A540UP i5','Asus A540UP i5 7200U là phiên bản máy có cấu hình core i5 cao hơn và đặc biệt trang bị card đồ họa rời.Với chip Core i5 KabyLake thế hệ thứ 7, đi kèm đó là card đồ họa rời AMD Radeon R5 M420 sử dụng riêng RAM 2 GB nên cho khả năng xử lý hình ảnh vượt trội hơn hẳn.',4,2,'30000000đ','Mỹ','2018-05-22 00:00:00',0,0),(12,'Laptop Asus A541UA i3','Asus A541UA i3 7100U là phiên bản máy có cấu hình nhẹ hơn, trang bị màn hình Full HD và màn hình lớn lên đến 15.6 inch.',3,2,'10990000đ','Nhật Bản','2018-05-22 00:00:00',4,6),(13,'Laptop Asus X441NA ','Asus X441NA N4200 là sự lựa chọn giá tốt phù hợp với học sinh - sinh viên hoặc người dùng làm việc văn phòng, giải trí nhẹ.\r\nCấu hình Intel Pentium - Giá mềm',1,2,'10000000đ','Hàn Quốc','2018-05-22 00:00:00',0,0),(14,'Laptop Dell Inspiron 3567 i3','Dell Inspiron 3567 màu sắc sang trọng  hướng đến các đối tượng doanh nhân, học sinh, sinh viên. Vỏ được làm bằng nhựa nhám bao bọc giúp cho máy hạn chế được bụi bẩn, trầy xước cũng như chịu va chạm tốt trong quá trình sử dụng. Máy có trọng lượng tương đối nhẹ, vì vậy chúng ta có thể mang theo bên mình khi làm việc ngoài các không gian khác.',3,1,'15000000đ','Hàn Quốc','2018-05-22 00:00:00',0,0),(15,'Laptop Dell Vostro 3468','Dell Vostro 3468 i3 7100U là phiên bản rút gọn cấu hình cơ bản nhất nhưng vẫn được trang bị chip xử lý thế hệ mới nhất, bảo mật vân tay cùng ổ cứng HDD lên đến 1 TB.',3,1,'16400000đ','Mỹ','2018-05-24 00:00:00',13,25),(16,'Laptop Dell Inspiron 5567 i5','Dell Inspiron 5567 i5 7200U là phiên bản nâng cấp với RAM 4 GB cùng card màn hình rời AMD hỗ trợ lên đến 2 GB, là chiếc laptop thích hợp dành cho việc giải trí.',4,1,'21350000đ','Hàn Quốc','2018-05-29 00:00:00',1,2),(17,'Laptop Dell Vostro 3568 i7','Dell Vostro 3568 i7 7500U có cấu hình rất mạnh cùng tính năng cảm biến vân tay giúp bảo vệ máy bạn tốt hơn.',1,1,'18490000đ','Nhật Bản','2018-05-27 00:00:00',8,22),(18,'Laptop Dell Inspiron 5570 i5','Bộ sản phẩm chuẩn: Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc. Dell Inspiron 5570 là một trong những dòng laptop đầu tiên của năm nay được Dell trang bị cấu hình mới với dòng chip Intel KabyLake Refresh vượt trội về mặt hiệu năng so với những thế hệ trước.',2,1,'22000000đ','Mỹ','2018-05-22 00:00:00',0,0),(19,'Laptop Dell Vostro 5568 i5','Dell Vostro 5568 i5 7200U là phiên bản với màn hình lớn hơn 15.6 inch so với Vostro 5468 cùng một cấu hình mạnh mẽ bên trong.',1,1,'17990000đ','Hàn Quốc','2018-05-22 00:00:00',5,7),(20,'Laptop Dell Inspiron 5468 i5','Dell Inspiron 5468 i5 7200U là chiếc laptop tập trung vào khả năng xử lý hình ảnh đồ họa 3D cho game thủ hay những người làm công việc thiết kế. Tích hợp card đồ họa rời xử lý hình ảnh AMD Radeon R7 M440',2,1,'15999000đ','Mỹ','2018-05-22 00:00:00',0,0),(21,'Laptop Dell Vostro 3469 i5 ','Dell Vostro 3468 i5 7200U là phiên bản rút gọn được trang bị chip xử lý thế hệ mới nhất, bảo mật vân tay cùng ổ cứng HDD lên đến 1 TB.',1,1,'14999000đ','Nhật Bản','2018-05-22 00:00:00',0,0),(22,'Laptop Apple Macbook Air MQD32SA','Macbook Air MQD32SA/A i5 5350U với thiết kế vỏ nhôm nguyên khối Unibody rất đẹp, chắc chắn và sang trọng. Macbook Air là một chiếc laptop siêu mỏng nhẹ, hiệu năng ổn định mượt mà, thời lượng pin cực lâu, phục vụ tốt cho nhu cầu làm việc lẫn giải trí.',1,3,'28000000đ','Mỹ','2018-05-22 00:00:00',34,55),(23,'Laptop Apple Macbook Air MQD42SA','Macbook Air MQD42SA/A i5 5350U với thiết kế vỏ nhôm nguyên khối Unibody rất đẹp, chắc chắn và sang trọng. Máy siêu mỏng và siêu nhẹ, hiệu năng ổn định mượt mà, thời lượng pin cực lâu, phục vụ tốt cho nhu cầu làm việc lẫn giải trí.',2,3,'33000000đ','Mỹ','2018-05-27 00:00:00',0,4),(24,'Laptop Apple Macbook Pro MPXR2SA','Apple Macbook Pro MPXR2SA/A i5 là dòng sản phẩm cao cấp với thiết kế kim loại nguyên khối, chip i5 thế hệ thứ 7 và dùng ổ SSD dung lượng 128 GB mang đến sự bền bỉ và mạnh mẽ khi sử dụng.',1,3,'29900000đ','Mỹ','2018-05-22 00:00:00',32,44),(25,'Laptop Apple Macbook 12\" MNYK2SA','Apple Macbook 12\" MNYK2SA/A (2017) là một thiết bị sẽ phù hợp với những người làm công việc văn phòng, không yêu cầu một thiết bị quá mạnh mẽ nhưng nhỏ gọn, dễ dàng di chuyển cùng một thời gian sử dụng pin ấn tượng.',1,3,'32990000đ','Mỹ','2018-05-24 00:00:00',7,9),(26,'Laptop Apple Macbook 12\" MNYF2SA','Phiên bản Macbook 12 inch (2017) ra mắt và có thiết kế không thay đổi so với chiếc máy anh em tiền nhiệm 2016. Đây vẫn là chiếc laptop có thiết kế nhỏ gọn, kiểu dáng rất sang trọng và nổi bật từ thương hiệu \"táo khuyết\".',1,3,'35000000đ','Mỹ','2018-05-23 00:00:00',23,23),(27,'Laptop Apple Macbook Pro MPXT2SA','Apple Macbook Pro MPXT2SA/A i5 7360U là dòng sản phẩm đẳng cấp, sang trọng với thiết kế kim loại nguyên khối, chip i5 thế hệ thứ 7 và dùng ổ SSD mang lại nhiều tính năng tiện ích cho người dùng. Máy phù hợp với người dùng cần một chiếc laptop để làm đồ hoạ, kỹ thuật hay giải trí, học tập.',3,3,'38000000đ','Mỹ','2018-05-22 00:00:00',0,2),(28,'Laptop Apple Macbook Pro Touch MPXV2SA','Apple Macbook Pro đã được rất nhiều người dùng yêu thích và tin dùng và giờ đây với phiên bản được trang bị Touch Bar cùng cảm biến vân tay độc đáo thì Macbook Pro Touch MPXV2SA/A i5 chắc chắn sẽ lại tạo nên cơn sốt trên thị trường.',1,3,'44000000đ','Mỹ','2018-05-21 00:00:00',9,14),(29,'Laptop Apple Macbook Pro Touch MPTR2SA','Nếu nhắc đến các siêu phẩm máy tính xách tay thì không thể bỏ qua được cái tên Apple - Macbook. Đặc biệt các sản phẩm thuộc dòng Pro như Macbook Pro Touch MPTR2SA/A i7 thì càng rất được nhiều người dùng quan tâm đến một chiếc laptop làm đồ hoạ tốt, làm việc mượt mà',2,3,'54000000đ','Mỹ','2018-05-22 00:00:00',0,0),(30,'Laptop Lenovo Ideapad 110','Lenovo Ideapad 110 14IBR N3710 là chiếc laptop đơn giản và cơ bản hỗ trợ bạn công việc nhẹ nhàng và giải trí hằng ngày.\r\nLenovo Ideapad 110 14IBR N3710 có thiết kế không khác nhiều so với phiên bản trước, máy vẫn làm chất liệu vỏ nhựa, có độ dày 22.9 mm và trọng lượng 2 kg.',2,4,'12000000đ','Nhật Bản','2018-05-22 00:00:00',0,2),(31,'Laptop Lenovo Yoga 520 i3','Máy tính xách tay Lenovo IdeaPad Yoga 520 là mẫu máy tính thuộc dòng phân khúc mỏng nhẹ của Lenovo. Máy có thiết kế hiện đại cùng một cấu hình thế hệ mới và với giá thành khá hợp lý, phù hợp với nhu cầu giải trí hay làm việc.',3,4,'13990000đ','Hàn Quốc','2018-05-27 00:00:00',21,34),(32,'Laptop Lenovo IdeaPad 710S','Lenovo IdeaPad 710S được trang bị cấu hình chip xử lý Intel Core i7 Kaby Lake thế hệ thứ 7, xung nhịp 2.70 GHz, RAM DDR3 8 GB. Với cấu hình này máy có thể đáp ứng tốt các nhu cầu sử dụng của người dùng.',1,4,'26000000đ','Nhật Bản','2018-05-22 00:00:00',0,2),(33,'Laptop Acer Aspire E5','Laptop Acer Aspire E5 475 33WT i3 6006U là sự lựa chọn đáng giá với cấu hình tốt so với nhiều đối thủ khác trong cùng phân khúc. Phù hợp với người dùng cần một chiếc laptop để học tập, làm việc.',3,5,'16900000đ','Hàn Quốc','2018-05-22 00:00:00',16,22),(34,'Laptop Acer Aspire ES1','Acer Aspire ES1 432 C3C9 N3350 là sản phẩm phổ thông với giá thành thấp, dễ tiếp cận đến người dùng. Máy có hiệu năng sử dụng đơn giản phù hợp để học tập, làm việc hay giải trí.',1,5,'22900000đ','Hàn Quốc','2018-05-22 00:00:00',0,1),(35,'Laptop Acer Aspire A315 51','Laptop Acer Aspire A315 51 39DJ là mẫu máy tính tầm trung trang bị chip Intel Core i3 Kabylake (thế hệ 7) hoạt động rất ổn định và có một thiết kế mang đậm chất mạnh mẽ, tinh tế.',1,5,'14500000đ','Hàn Quốc','2018-05-22 00:00:00',7,8);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcate`
--

DROP TABLE IF EXISTS `productcate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcate` (
  `CatID` int(11) NOT NULL AUTO_INCREMENT,
  `CatName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`CatID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcate`
--

LOCK TABLES `productcate` WRITE;
/*!40000 ALTER TABLE `productcate` DISABLE KEYS */;
INSERT INTO `productcate` VALUES (1,'Học tập văn phòng'),(2,'Cao cấp sang trọng'),(3,'Chơi game'),(4,'Đồ họa kĩ thuật'),(8,'Loại 8'),(11,'Đây là loại mới'),(16,'Loại 16'),(17,'loại mới');
/*!40000 ALTER TABLE `productcate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `ProID` int(11) NOT NULL AUTO_INCREMENT,
  `ProName` varchar(95) DEFAULT NULL,
  `CatID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ProID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'SP dien thoai',1),(2,'SP 2',2),(3,'SP 3',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-21 11:06:22