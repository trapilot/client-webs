-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: hqt_prod
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apps_benefit`
--

DROP TABLE IF EXISTS `apps_benefit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_benefit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT NULL,
  `sorted_as` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_benefit`
--

LOCK TABLES `apps_benefit` WRITE;
/*!40000 ALTER TABLE `apps_benefit` DISABLE KEYS */;
INSERT INTO `apps_benefit` VALUES (1,'AN TOÀN CHUẨN MỰC','Công nghệ bảo vệ đa lớp, đảm bảo an toàn cho mọi thành viên gia đình.','<svg fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z\"></path></svg>',1,1,0,'2026-05-25 17:32:26.421769','2026-05-26 13:47:36.094421'),(2,'VẬN HÀNH ÊM ÁI','Động cơ hiện đại giúp thang di chuyển ổn định, êm nhẹ và hạn chế rung lắc.','<svg fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z\"></path></svg>',1,1,0,'2026-05-25 17:32:38.389836','2026-05-26 13:46:43.758711'),(3,'TIẾT KIỆM ĐIỆN NĂNG','Công nghệ thông minh tối ưu điện năng, giảm chi phí vận hành lâu dài.','<svg fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M13 10V3L4 14h7v7l9-11h-7z\"></path></svg>',1,1,0,'2026-05-25 17:32:48.845161','2026-05-26 13:47:52.053045'),(4,'BẢO HÀNH UY TÍN','Bảo hành lên đến 5 năm, bảo trì tận nơi và hỗ trợ kỹ thuật nhanh chóng.','<svg fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" d=\"M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z\"></path></svg>',1,1,0,'2026-05-25 17:33:03.005659','2026-05-26 13:46:58.347231');
/*!40000 ALTER TABLE `apps_benefit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_portfolio`
--

DROP TABLE IF EXISTS `apps_portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_portfolio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_elevators` int DEFAULT NULL,
  `building_floors` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sorted_as` int unsigned NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT NULL,
  `customer_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_company` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `apps_portfo_categor_31e0ee_idx` (`category_id`),
  KEY `apps_portfo_city_4da0bd_idx` (`city`),
  CONSTRAINT `apps_portfolio_category_id_b8626f0d_fk_apps_portfoliocategory_id` FOREIGN KEY (`category_id`) REFERENCES `apps_portfoliocategory` (`id`),
  CONSTRAINT `apps_portfolio_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_portfolio`
--

LOCK TABLES `apps_portfolio` WRITE;
/*!40000 ALTER TABLE `apps_portfolio` DISABLE KEYS */;
INSERT INTO `apps_portfolio` VALUES (1,'Vinhomes Grand Park Tower A','vinhomes-grand-park-tower-a','Dự án cung cấp hệ thống thang máy cho khu căn hộ cao cấp tại TP.HCM.','<p>Triển khai hệ thống thang m&aacute;y tốc độ cao cho khu căn hộ hiện đại.</p>','','Nguyễn Xiển, TP. Thủ Đức','Hồ Chí Minh',12,35,'2023-01-15','2024-06-20','completed',1,1,1,'Nguyễn Văn Minh','Vinhomes','Dự án Vinhomes Grand Park','Cung cấp thang máy cho khu căn hộ Vinhomes Grand Park.','thang máy, vinhomes, căn hộ','2026-05-23 06:57:51.473256','2026-05-25 15:29:48.814480',5),(2,'Bệnh Viện Quốc Tế An Phúc','benh-vien-quoc-te-an-phuc','Hệ thống thang bệnh viện đạt tiêu chuẩn vận hành y tế.','<p>Lắp đặt thang tải giường bệnh và thang khách cho bệnh viện quốc tế.</p>','','Quận 7','Hồ Chí Minh',8,15,'2022-03-01','2023-02-10','completed',2,1,1,'Trần Quốc Huy','An Phúc Healthcare','Thang Máy Bệnh Viện An Phúc','Giải pháp thang máy bệnh viện hiện đại.','thang bệnh viện, elevator hospital','2026-05-23 06:57:51.473284','2026-05-23 06:57:51.473407',1),(3,'Nhà Máy GreenTech Bình Dương','nha-may-greentech-binh-duong','Thang tải hàng công nghiệp tải trọng lớn.','<p>Triển khai thang tải hàng cho khu sản xuất công nghệ cao.</p>','','KCN VSIP II','Bình Dương',5,6,'2024-01-10',NULL,'ongoing',3,1,0,'Lê Thanh Sơn','GreenTech Factory','Nhà Máy GreenTech','Dự án thang tải hàng công nghiệp.','thang tải hàng, công nghiệp','2026-05-23 06:57:51.473297','2026-05-23 06:57:51.473418',3),(4,'Trung Tâm Thương Mại Pearl Plaza','trung-tam-thuong-mai-pearl-plaza','Hệ thống thang máy và thang cuốn cho trung tâm thương mại.','<p>Cung cấp giải pháp di chuyển cho khách hàng trong trung tâm thương mại.</p>','','Bình Thạnh','Hồ Chí Minh',14,22,'2021-05-05','2022-08-15','completed',4,1,1,'Phạm Anh Tú','Pearl Retail','Pearl Plaza Elevator Project','Hệ thống thang máy thương mại hiện đại.','thang máy thương mại, mall elevator','2026-05-23 06:57:51.473307','2026-05-23 06:57:51.473428',5),(5,'Trường Đại Học Công Nghệ Việt Nhật','truong-dai-hoc-cong-nghe-viet-nhat','Lắp đặt thang máy cho khu giảng đường và thư viện.','<p>Đảm bảo khả năng tiếp cận và lưu thông trong khuôn viên trường học.</p>','','Hà Nội','Hà Nội',6,12,'2023-07-12','2024-03-18','completed',5,1,0,'Ngô Minh Đức','VJU','Dự Án Đại Học Việt Nhật','Hệ thống thang máy giáo dục.','thang máy trường học','2026-05-23 06:57:51.473320','2026-05-23 06:57:51.473438',3),(6,'UBND Thành Phố Đà Nẵng','ubnd-thanh-pho-da-nang','Nâng cấp hệ thống thang máy cho tòa nhà hành chính.','<p>Dự án cải tạo và thay mới thang máy cho cơ quan hành chính.</p>','','Hải Châu','Đà Nẵng',4,10,'2022-09-01','2023-01-20','completed',6,1,0,'Đặng Quốc Nam','UBND TP Đà Nẵng','UBND Đà Nẵng Elevator Upgrade','Nâng cấp hệ thống thang máy hành chính.','government elevator','2026-05-23 06:57:51.473350','2026-05-23 06:57:51.473448',1),(7,'Khu Căn Hộ Sunrise Riverside','khu-can-ho-sunrise-riverside','Hệ thống thang máy tiết kiệm điện cho khu căn hộ.','<p>Ứng dụng công nghệ inverter tiết kiệm năng lượng.</p>','','Nhà Bè','Hồ Chí Minh',9,28,'2024-04-10',NULL,'ongoing',7,1,1,'Võ Thành Đạt','Sunrise Group','Sunrise Riverside Elevator','Thang máy căn hộ hiện đại.','residential elevator','2026-05-23 06:57:51.473371','2026-05-23 06:57:51.473458',4);
/*!40000 ALTER TABLE `apps_portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_portfolio_products_used`
--

DROP TABLE IF EXISTS `apps_portfolio_products_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_portfolio_products_used` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `portfolio_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apps_portfolio_products__portfolio_id_product_id_bd37970b_uniq` (`portfolio_id`,`product_id`),
  KEY `apps_portfolio_produ_product_id_b82ede88_fk_apps_prod` (`product_id`),
  CONSTRAINT `apps_portfolio_produ_portfolio_id_a08f2755_fk_apps_port` FOREIGN KEY (`portfolio_id`) REFERENCES `apps_portfolio` (`id`),
  CONSTRAINT `apps_portfolio_produ_product_id_b82ede88_fk_apps_prod` FOREIGN KEY (`product_id`) REFERENCES `apps_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_portfolio_products_used`
--

LOCK TABLES `apps_portfolio_products_used` WRITE;
/*!40000 ALTER TABLE `apps_portfolio_products_used` DISABLE KEYS */;
INSERT INTO `apps_portfolio_products_used` VALUES (1,1,2);
/*!40000 ALTER TABLE `apps_portfolio_products_used` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_portfoliocategory`
--

DROP TABLE IF EXISTS `apps_portfoliocategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_portfoliocategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ctx_bg` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctx_color` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `sorted_as` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_portfoliocategory`
--

LOCK TABLES `apps_portfoliocategory` WRITE;
/*!40000 ALTER TABLE `apps_portfoliocategory` DISABLE KEYS */;
INSERT INTO `apps_portfoliocategory` VALUES (1,'Biệt Thự','biet-thu','villa','Thiết kế sang trọng, tầm nhìn 360°, tạo điểm nhấn đẳng cấp cho không gian','',NULL,NULL,1,0,0,'2026-05-23 06:57:51.103942','2026-05-23 06:57:51.104032'),(2,'Khách Sạn','khach-san','hotel','Kiểu dáng hiện đại, tối ưu diện tích, phù hợp với nhiều phong cách kiến trúc','',NULL,NULL,1,0,0,'2026-05-23 06:57:51.103984','2026-05-23 06:57:51.104042'),(3,'Showroom','showroom','showroom','Kết cấu vững chắc, vận hành êm ái, phù hợp công trình cải tạo hoặc nhà thấp','',NULL,NULL,1,0,0,'2026-05-23 06:57:51.103998','2026-05-23 06:57:51.104052'),(4,'Căn Hộ','can-ho','apartment','Giải pháp cho không gian hẹp và cải tạo','',NULL,NULL,1,0,0,'2026-05-23 06:57:51.104009','2026-05-23 06:57:51.104063'),(5,'Nhà Phố','nha-pho','townhouse','Mỗi dự án là một câu chuyện về sự tin tưởng và đẳng cấp','',NULL,NULL,1,0,0,'2026-05-23 06:57:51.104019','2026-05-23 06:57:51.104098');
/*!40000 ALTER TABLE `apps_portfoliocategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_portfoliogallery`
--

DROP TABLE IF EXISTS `apps_portfoliogallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_portfoliogallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sorted_as` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `portfolio_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `apps_portfoliogallery_portfolio_id_db6350e0_fk_apps_portfolio_id` (`portfolio_id`),
  CONSTRAINT `apps_portfoliogallery_portfolio_id_db6350e0_fk_apps_portfolio_id` FOREIGN KEY (`portfolio_id`) REFERENCES `apps_portfolio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_portfoliogallery`
--

LOCK TABLES `apps_portfoliogallery` WRITE;
/*!40000 ALTER TABLE `apps_portfoliogallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `apps_portfoliogallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_product`
--

DROP TABLE IF EXISTS `apps_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int NOT NULL,
  `speed` decimal(3,1) NOT NULL,
  `height` int NOT NULL,
  `power_consumption` int DEFAULT NULL,
  `energy_saving` int DEFAULT NULL,
  `warranty` int DEFAULT NULL,
  `passenger` int NOT NULL,
  `number_stops` int DEFAULT NULL,
  `material` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `door_type` int DEFAULT NULL,
  `base_price` decimal(15,0) DEFAULT NULL,
  `discount_price` decimal(15,0) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_vip` tinyint(1) DEFAULT NULL,
  `is_popular` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `is_bestseller` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT NULL,
  `sorted_as` int unsigned DEFAULT NULL,
  `meta_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_by_id` int DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `code` (`code`),
  KEY `apps_produc_slug_b8a43c_idx` (`slug`),
  KEY `apps_produc_code_b23378_idx` (`code`),
  KEY `apps_produc_categor_90c4d9_idx` (`category_id`),
  KEY `apps_product_created_by_id_17991b16_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `apps_product_category_id_11ee2707_fk_apps_productcategory_id` FOREIGN KEY (`category_id`) REFERENCES `apps_productcategory` (`id`),
  CONSTRAINT `apps_product_created_by_id_17991b16_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `apps_product_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_product`
--

LOCK TABLES `apps_product` WRITE;
/*!40000 ALTER TABLE `apps_product` DISABLE KEYS */;
INSERT INTO `apps_product` VALUES (1,'Thang Máy Bệnh Viện An Phúc','thang-may-tai-benh-vien','TM-BV-ANPHUC','Hệ thống thang máy dành cho bệnh viện đạt tiêu chuẩn vận hành y tế.','<h2>Thang M&aacute;y Gia Đ&igrave;nh L&agrave; G&igrave;? Xu Hướng Sống Hiện Đại Của Nh&agrave; Phố Việt</h2>\r\n\r\n<p><strong>Thang m&aacute;y gia đ&igrave;nh</strong> (Home Lift) l&agrave; d&ograve;ng thang m&aacute;y c&oacute; tải trọng nhỏ v&agrave; vừa (từ 250kg đến 450kg), được nghi&ecirc;n cứu v&agrave; thiết kế chuy&ecirc;n biệt để phục vụ cho c&aacute;c c&ocirc;ng tr&igrave;nh nh&agrave; ở tư nh&acirc;n như nh&agrave; ống, nh&agrave; phố, biệt thự hoặc nh&agrave; cải tạo từ 2 đến 10 tầng.</p>\r\n\r\n<p>Kh&aacute;c với c&aacute;c d&ograve;ng thang m&aacute;y tải kh&aacute;ch cỡ lớn ở c&aacute;c t&ograve;a nh&agrave; trung t&acirc;m thương mại, thang m&aacute;y gia đ&igrave;nh đặt ưu ti&ecirc;n cao nhất v&agrave;o khả năng <strong>tối ưu kh&ocirc;ng gian (k&iacute;ch thước si&ecirc;u gọn), vận h&agrave;nh &ecirc;m &aacute;i tuyệt đối v&agrave; tiết kiệm điện năng tối đa.</strong></p>\r\n\r\n<p><strong>Xu hướng thị trường 2026:</strong> Tại c&aacute;c đ&ocirc; thị lớn như H&agrave; Nội v&agrave; TP.HCM, việc lắp đặt thang m&aacute;y gia đ&igrave;nh kh&ocirc;ng c&ograve;n l&agrave; một m&oacute;n đồ xa xỉ. Khi quỹ đất ng&agrave;y c&agrave;ng thu hẹp, nh&agrave; phố buộc phải x&acirc;y cao tầng; kết hợp với xu hướng gi&agrave; h&oacute;a d&acirc;n số, thang m&aacute;y gia đ&igrave;nh đ&atilde; trở th&agrave;nh một <strong>&quot;mảnh gh&eacute;p bắt buộc&quot;</strong>.</p>\r\n\r\n<hr />\r\n<h2>4 Gi&aacute; Trị Cốt L&otilde;i Biến Thang M&aacute;y Th&agrave;nh &quot;Ti&ecirc;u Chuẩn Mới&quot; Cho Nh&agrave; Phố</h2>\r\n\r\n<ul>\r\n	<li><strong>Chăm s&oacute;c sức khỏe gia đ&igrave;nh trọn vẹn:</strong> Giải quyết nỗi lo đau xương khớp cho người lớn tuổi v&agrave; đảm bảo an to&agrave;n cho trẻ nhỏ, mẹ bầu.</li>\r\n	<li><strong>Gia tăng gi&aacute; trị bất động sản:</strong> Nh&agrave; phố c&oacute; thang m&aacute;y c&oacute; thể tăng gi&aacute; trị 15%&ndash;20% khi chuyển nhượng.</li>\r\n	<li><strong>Giải ph&oacute;ng c&ocirc;ng năng tầng cao:</strong> Khai th&aacute;c hiệu quả tầng 4, 5, rooftop&hellip;</li>\r\n	<li><strong>N&acirc;ng tầm thẩm mỹ nội thất:</strong> Cabin thiết kế đồng bộ với nội thất nh&agrave;.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>Th&ocirc;ng Số Kỹ Thuật Phổ Biến Của C&aacute;c D&ograve;ng Home Lift Thế Hệ Mới</h2>\r\n\r\n<ul>\r\n	<li><strong>Tải trọng:</strong> 250kg &ndash; 450kg.</li>\r\n	<li><strong>Tốc độ:</strong> 0.3 &ndash; 1.0 m/s.</li>\r\n	<li><strong>Độ ồn:</strong> &lt; 45dB.</li>\r\n	<li><strong>Nguồn điện:</strong> 1 pha 220V hoặc 3 pha 380V.</li>\r\n	<li><strong>Hố pit:</strong> tối thiểu 150mm.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>So S&aacute;nh 3 C&ocirc;ng Nghệ Thang M&aacute;y Gia Đ&igrave;nh Phổ Biến Nhất</h2>\r\n\r\n<div>\r\n<table class=\"border border-gray-300 text-black text-sm w-full\">\r\n	<thead>\r\n		<tr>\r\n			<th>Ti&ecirc;u Ch&iacute;</th>\r\n			<th>C&aacute;p K&eacute;o</th>\r\n			<th>Thủy Lực</th>\r\n			<th>Trục V&iacute;t (Mini)</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Cơ chế</td>\r\n			<td>C&aacute;p + đối trọng</td>\r\n			<td>Piston + dầu</td>\r\n			<td>Trục v&iacute;t + b&aacute;nh răng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hố pit</td>\r\n			<td>500&ndash;800mm</td>\r\n			<td>100&ndash;300mm</td>\r\n			<td>~50mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ &ecirc;m</td>\r\n			<td>Tốt</td>\r\n			<td>Rất &ecirc;m</td>\r\n			<td>Ổn định</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chi ph&iacute;</td>\r\n			<td>Hợp l&yacute;</td>\r\n			<td>Trung &ndash; cao</td>\r\n			<td>Cao cấp</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<hr />\r\n<h2>Kinh Nghiệm Thực Tế Khi Triển Khai Cho Nh&agrave; Phố</h2>\r\n\r\n<ul>\r\n	<li><strong>Nh&agrave; x&acirc;y mới:</strong> Chốt thiết kế thang ngay từ đầu.</li>\r\n	<li><strong>Nh&agrave; cải tạo:</strong> Tận dụng giếng trời hoặc thang bộ.</li>\r\n	<li><strong>Tải trọng:</strong> Ưu ti&ecirc;n 350&ndash;450kg nếu c&oacute; xe lăn.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>Bảng Gi&aacute; Chi Ph&iacute; Lắp Đặt Thang M&aacute;y Gia Đ&igrave;nh Trọn G&oacute;i</h2>\r\n\r\n<ul>\r\n	<li><strong>Phổ th&ocirc;ng:</strong> 150 &ndash; 250 triệu VNĐ.</li>\r\n	<li><strong>Trung cấp:</strong> 250 &ndash; 450 triệu VNĐ.</li>\r\n	<li><strong>Cao cấp:</strong> 450 &ndash; 800 triệu VNĐ trở l&ecirc;n.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>3 Sai Lầm Phổ Biến Khiến Gia Chủ &quot;Tiền Mất Tật Mang&quot;</h2>\r\n\r\n<ol>\r\n	<li>Chọn đơn vị gi&aacute; rẻ, k&eacute;m uy t&iacute;n.</li>\r\n	<li>Kh&ocirc;ng t&iacute;nh chi ph&iacute; bảo tr&igrave; định kỳ.</li>\r\n	<li>X&acirc;y hố thang sai kỹ thuật.</li>\r\n</ol>\r\n\r\n<hr />\r\n<h2>Ti&ecirc;u Chuẩn An To&agrave;n 4 Lớp Bảo Vệ</h2>\r\n\r\n<ul>\r\n	<li><strong>ARD:</strong> Tự động cứu hộ khi mất điện.</li>\r\n	<li><strong>Cảm biến cửa:</strong> Chống kẹt vật cản.</li>\r\n	<li><strong>Governor:</strong> Chống rơi cabin.</li>\r\n</ul>','uploads/apps/products/image/123.jpg','',1600,2.5,60,18,35,5,21,15,'Inox sọc nhuyễn chống khuẩn',6,3200000000,2850000000,1,1,1,1,1,'draft',1,1,'Bệnh Viện Quốc Tế An Phúc','Hệ thống thang bệnh viện đạt tiêu chuẩn vận hành y tế.','thang máy tải bệnh viện, thang tải giường bệnh, elevator hospital','2026-05-23 06:57:51.975272','2026-05-26 14:02:52.706731',NULL,3),(2,'Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng','thang-may-gia-dinh-giai-phap-toan-dien-cho-nha-pho','TMGD','Khám phá các giải pháp thang máy gia đình tối ưu diện tích từ 1m², vận hành êm ái, tiết kiệm điện năng. Tư vấn may đo theo kích thước hố thang thực tế, lắp đặt trọn gói nhanh chóng.','<!-- HERO -->\r\n<div class=\"lg:px-8 lg:py-16 max-w-7xl mx-auto px-4 py-12 sm:px-6\">\r\n<div class=\"gap-10 grid lg:grid-cols-2 lg:items-center\">\r\n<div>\r\n<h1>Thang M&aacute;y Gia Đ&igrave;nh - Giải Ph&aacute;p To&agrave;n Diện Cho Nh&agrave; Phố 2&ndash;10 Tầng</h1>\r\n\r\n<p>Giải ph&aacute;p thang m&aacute;y gia đ&igrave;nh tối ưu diện t&iacute;ch, vận h&agrave;nh &ecirc;m &aacute;i, an to&agrave;n cho người lớn tuổi, trẻ nhỏ v&agrave; gia đ&igrave;nh đa thế hệ. Ph&ugrave; hợp nh&agrave; phố, biệt thự, nh&agrave; cải tạo v&agrave; c&ocirc;ng tr&igrave;nh c&oacute; diện t&iacute;ch hạn chế.</p>\r\n\r\n<div class=\"flex flex-col gap-3 mt-8 sm:flex-row\"><a class=\"rounded-xl border border-slate-300 px-6 py-3 text-center font-semibold text-slate-900 transition hover:bg-slate-50\" href=\"#bao-gia\">Xem bảng gi&aacute; tham khảo </a></div>\r\n</div>\r\n\r\n<div class=\"bg-slate-100 p-6 rounded-3xl shadow-sm\">\r\n<div class=\"gap-4 grid sm:grid-cols-2\">\r\n<div class=\"bg-white p-5 rounded-2xl shadow-sm\">\r\n<p>250&ndash;450kg</p>\r\n\r\n<p>Tải trọng phổ biến cho gia đ&igrave;nh</p>\r\n</div>\r\n\r\n<div class=\"bg-white p-5 rounded-2xl shadow-sm\">\r\n<p>2&ndash;10 tầng</p>\r\n\r\n<p>Ph&ugrave; hợp nh&agrave; phố, biệt thự</p>\r\n</div>\r\n\r\n<div class=\"bg-white p-5 rounded-2xl shadow-sm\">\r\n<p>&Ecirc;m &aacute;i</p>\r\n\r\n<p>Tối ưu trải nghiệm di chuyển</p>\r\n</div>\r\n\r\n<div class=\"bg-white p-5 rounded-2xl shadow-sm\">\r\n<p>May đo</p>\r\n\r\n<p>Theo thực tế hố thang từng nh&agrave;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- ANSWER BOX -->\r\n\r\n<div class=\"lg:px-8 max-w-5xl mx-auto px-4 sm:px-6\">\r\n<div class=\"bg-amber-50 border border-amber-200 p-6 rounded-3xl\">\r\n<h2>Thang m&aacute;y gia đ&igrave;nh l&agrave; g&igrave;?</h2>\r\n\r\n<p>Thang m&aacute;y gia đ&igrave;nh l&agrave; d&ograve;ng thang m&aacute;y tải trọng nhỏ, thường từ 250kg đến 450kg, được thiết kế cho nh&agrave; ở tư nh&acirc;n như nh&agrave; phố, nh&agrave; ống, biệt thự hoặc nh&agrave; cải tạo. D&ograve;ng thang n&agrave;y ưu ti&ecirc;n k&iacute;ch thước gọn, vận h&agrave;nh &ecirc;m, tiết kiệm điện v&agrave; đảm bảo an to&agrave;n cho nhu cầu di chuyển hằng ng&agrave;y của gia đ&igrave;nh.</p>\r\n</div>\r\n</div>\r\n<!-- BENEFITS -->\r\n\r\n<div class=\"lg:px-8 max-w-7xl mx-auto px-4 py-14 sm:px-6\">\r\n<div class=\"max-w-3xl\">\r\n<h2>V&igrave; sao thang m&aacute;y gia đ&igrave;nh trở th&agrave;nh ti&ecirc;u chuẩn mới của nh&agrave; phố hiện đại?</h2>\r\n\r\n<p>Khi nh&agrave; phố ng&agrave;y c&agrave;ng x&acirc;y cao tầng, thang m&aacute;y kh&ocirc;ng chỉ l&agrave; thiết bị di chuyển m&agrave; c&ograve;n l&agrave; giải ph&aacute;p n&acirc;ng cao chất lượng sống, tối ưu c&ocirc;ng năng v&agrave; gia tăng gi&aacute; trị sử dụng cho to&agrave;n bộ căn nh&agrave;.</p>\r\n</div>\r\n\r\n<div class=\"gap-5 grid lg:grid-cols-4 md:grid-cols-2 mt-8\">\r\n<div class=\"border border-slate-200 p-5 rounded-2xl\">\r\n<h3>Chăm s&oacute;c gia đ&igrave;nh đa thế hệ</h3>\r\n\r\n<p>Hỗ trợ &ocirc;ng b&agrave;, cha mẹ lớn tuổi, mẹ bầu v&agrave; trẻ nhỏ di chuyển an to&agrave;n giữa c&aacute;c tầng.</p>\r\n</div>\r\n\r\n<div class=\"border border-slate-200 p-5 rounded-2xl\">\r\n<h3>Tối ưu c&ocirc;ng năng tầng cao</h3>\r\n\r\n<p>Gi&uacute;p tầng 4, tầng 5, s&acirc;n thượng, ph&ograve;ng thờ, ph&ograve;ng giặt hoặc rooftop được sử dụng thường xuy&ecirc;n hơn.</p>\r\n</div>\r\n\r\n<div class=\"border border-slate-200 p-5 rounded-2xl\">\r\n<h3>Gia tăng gi&aacute; trị bất động sản</h3>\r\n\r\n<p>Nh&agrave; c&oacute; thang m&aacute;y thường dễ khai th&aacute;c, cho thu&ecirc; hoặc chuyển nhượng hơn, đặc biệt với nh&agrave; phố nhiều tầng.</p>\r\n</div>\r\n\r\n<div class=\"border border-slate-200 p-5 rounded-2xl\">\r\n<h3>N&acirc;ng tầm thẩm mỹ nội thất</h3>\r\n\r\n<p>Cabin c&oacute; thể c&aacute; nh&acirc;n h&oacute;a theo phong c&aacute;ch gỗ, k&iacute;nh, inox, đ&aacute; hoặc thiết kế tối giản hiện đại.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- SPECIFICATIONS -->\r\n\r\n<div class=\"bg-slate-50\">\r\n<div class=\"lg:px-8 max-w-7xl mx-auto px-4 py-14 sm:px-6\">\r\n<h2>Th&ocirc;ng số kỹ thuật phổ biến của thang m&aacute;y gia đ&igrave;nh</h2>\r\n\r\n<div class=\"bg-white border border-slate-200 mt-8 overflow-hidden rounded-2xl\">\r\n<div class=\"overflow-x-auto\">\r\n<table class=\"divide-slate-200 divide-y min-w-full text-sm\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Tải trọng</th>\r\n			<td>250kg, 350kg, 450kg t&ugrave;y số người sử dụng v&agrave; diện t&iacute;ch hố thang</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Tốc độ</th>\r\n			<td>Khoảng 0.3m/s đến 1.0m/s, ph&ugrave; hợp nhu cầu di chuyển trong nh&agrave; ở</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Nguồn điện</th>\r\n			<td>C&oacute; thể sử dụng điện 1 pha 220V hoặc 3 pha 380V t&ugrave;y cấu h&igrave;nh thiết bị</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Hố pit</th>\r\n			<td>T&ugrave;y c&ocirc;ng nghệ thang, c&oacute; d&ograve;ng y&ecirc;u cầu hố pit n&ocirc;ng để ph&ugrave; hợp nh&agrave; cải tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Thiết kế cabin</th>\r\n			<td>Inox, k&iacute;nh, gỗ, đ&aacute;, hoặc phối vật liệu theo phong c&aacute;ch nội thất của gia chủ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- COMPARISON -->\r\n\r\n<div class=\"lg:px-8 max-w-7xl mx-auto px-4 py-14 sm:px-6\">\r\n<h2>So s&aacute;nh c&aacute;c c&ocirc;ng nghệ thang m&aacute;y gia đ&igrave;nh phổ biến</h2>\r\n\r\n<div class=\"border border-slate-200 mt-8 overflow-hidden rounded-2xl\">\r\n<div class=\"overflow-x-auto\">\r\n<table class=\"divide-slate-200 divide-y min-w-full text-sm\">\r\n	<thead>\r\n		<tr>\r\n			<th>Ti&ecirc;u ch&iacute;</th>\r\n			<th>C&aacute;p k&eacute;o</th>\r\n			<th>Thủy lực</th>\r\n			<th>Trục v&iacute;t / Mini</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Cơ chế</td>\r\n			<td>C&aacute;p k&eacute;o v&agrave; đối trọng</td>\r\n			<td>Piston v&agrave; &aacute;p suất dầu</td>\r\n			<td>Trục v&iacute;t v&agrave; b&aacute;nh răng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ưu điểm</td>\r\n			<td>Chi ph&iacute; hợp l&yacute;, phổ biến, dễ bảo tr&igrave;</td>\r\n			<td>&Ecirc;m &aacute;i, ph&ugrave; hợp biệt thự thấp tầng</td>\r\n			<td>Gọn, ph&ugrave; hợp diện t&iacute;ch nhỏ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ph&ugrave; hợp</td>\r\n			<td>Nh&agrave; x&acirc;y mới, c&oacute; hố thang r&otilde; r&agrave;ng</td>\r\n			<td>Nh&agrave; cải tạo, c&ocirc;ng tr&igrave;nh y&ecirc;u cầu vận h&agrave;nh &ecirc;m</td>\r\n			<td>Nh&agrave; nhỏ, căn hộ mini, diện t&iacute;ch hạn chế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chi ph&iacute;</td>\r\n			<td>Tối ưu cho đa số gia đ&igrave;nh</td>\r\n			<td>Trung cấp đến cao cấp</td>\r\n			<td>Thường thuộc ph&acirc;n kh&uacute;c cao cấp</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- EXPERIENCE -->\r\n\r\n<div class=\"bg-slate-50\">\r\n<div class=\"lg:px-8 max-w-7xl mx-auto px-4 py-14 sm:px-6\">\r\n<h2>Kinh nghiệm chọn thang m&aacute;y cho nh&agrave; phố v&agrave; nh&agrave; cải tạo</h2>\r\n\r\n<div class=\"gap-5 grid md:grid-cols-3 mt-8\">\r\n<div class=\"bg-white p-6 rounded-2xl shadow-sm\">\r\n<h3>Nh&agrave; x&acirc;y mới</h3>\r\n\r\n<p>N&ecirc;n chốt phương &aacute;n thang m&aacute;y ngay từ giai đoạn thiết kế kiến tr&uacute;c để tối ưu hố thang, kết cấu, nguồn điện v&agrave; kh&ocirc;ng gian sử dụng.</p>\r\n</div>\r\n\r\n<div class=\"bg-white p-6 rounded-2xl shadow-sm\">\r\n<h3>Nh&agrave; đang ở muốn lắp th&ecirc;m</h3>\r\n\r\n<p>C&oacute; thể khảo s&aacute;t khu vực giếng trời, l&ograve;ng thang bộ hoặc khoảng trống ph&ugrave; hợp. Thang khung th&eacute;p v&aacute;ch k&iacute;nh thường gi&uacute;p giữ &aacute;nh s&aacute;ng tự nhi&ecirc;n tốt hơn.</p>\r\n</div>\r\n\r\n<div class=\"bg-white p-6 rounded-2xl shadow-sm\">\r\n<h3>Gia đ&igrave;nh c&oacute; người d&ugrave;ng xe lăn</h3>\r\n\r\n<p>N&ecirc;n ưu ti&ecirc;n cabin v&agrave; cửa thang đủ rộng, tải trọng từ 350kg trở l&ecirc;n để di chuyển thuận tiện v&agrave; an to&agrave;n hơn.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- PRICE -->\r\n\r\n<div class=\"lg:px-8 max-w-7xl mx-auto px-4 py-14 sm:px-6\" id=\"bao-gia\">\r\n<h2>Gi&aacute; thang m&aacute;y gia đ&igrave;nh tham khảo</h2>\r\n\r\n<p>Chi ph&iacute; lắp đặt thang m&aacute;y gia đ&igrave;nh phụ thuộc v&agrave;o tải trọng, c&ocirc;ng nghệ, số tầng, vật liệu cabin, xuất xứ linh kiện v&agrave; điều kiện thực tế của c&ocirc;ng tr&igrave;nh. Dưới đ&acirc;y l&agrave; mức gi&aacute; tham khảo để gia chủ dễ dự tr&ugrave; ng&acirc;n s&aacute;ch.</p>\r\n\r\n<div class=\"gap-5 grid md:grid-cols-3 mt-8\">\r\n<div class=\"border border-slate-200 p-6 rounded-2xl\">\r\n<p>Ph&acirc;n kh&uacute;c phổ th&ocirc;ng</p>\r\n\r\n<h3>150&ndash;250 triệu</h3>\r\n\r\n<p>Ph&ugrave; hợp nh&agrave; phố th&ocirc;ng thường, ưu ti&ecirc;n c&ocirc;ng năng ổn định v&agrave; chi ph&iacute; bảo tr&igrave; hợp l&yacute;.</p>\r\n</div>\r\n\r\n<div class=\"border-2 border-slate-950 p-6 rounded-2xl\">\r\n<p>Ph&acirc;n kh&uacute;c trung cấp</p>\r\n\r\n<h3>250&ndash;450 triệu</h3>\r\n\r\n<p>Ph&ugrave; hợp gia chủ muốn n&acirc;ng cấp thẩm mỹ cabin, d&ugrave;ng inox m&agrave;u, k&iacute;nh hoặc t&iacute;nh năng th&ocirc;ng minh.</p>\r\n</div>\r\n\r\n<div class=\"border border-slate-200 p-6 rounded-2xl\">\r\n<p>Ph&acirc;n kh&uacute;c cao cấp</p>\r\n\r\n<h3>Từ 450 triệu</h3>\r\n\r\n<p>Ph&ugrave; hợp biệt thự, nh&agrave; phố cao cấp hoặc c&ocirc;ng tr&igrave;nh cần thiết kế ri&ecirc;ng theo phong c&aacute;ch nội thất.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- SAFETY -->\r\n\r\n<div class=\"bg-slate-950 text-white\">\r\n<div class=\"lg:px-8 max-w-7xl mx-auto px-4 py-14 sm:px-6\">\r\n<h2>Ti&ecirc;u chuẩn an to&agrave;n cần c&oacute; ở thang m&aacute;y gia đ&igrave;nh</h2>\r\n\r\n<div class=\"gap-5 grid md:grid-cols-3 mt-8\">\r\n<div class=\"bg-white/10 p-6 rounded-2xl\">\r\n<h3>Cứu hộ tự động ARD</h3>\r\n\r\n<p>Khi mất điện, hệ thống hỗ trợ đưa cabin về tầng gần nhất v&agrave; mở cửa để người d&ugrave;ng ra ngo&agrave;i an to&agrave;n.</p>\r\n</div>\r\n\r\n<div class=\"bg-white/10 p-6 rounded-2xl\">\r\n<h3>Cảm biến cửa an to&agrave;n</h3>\r\n\r\n<p>Ph&aacute;t hiện vật cản tại cửa thang, gi&uacute;p hạn chế t&igrave;nh trạng kẹt tay, ch&acirc;n, đồ vật hoặc th&uacute; cưng.</p>\r\n</div>\r\n\r\n<div class=\"bg-white/10 p-6 rounded-2xl\">\r\n<h3>Bộ khống chế vượt tốc</h3>\r\n\r\n<p>Hỗ trợ kiểm so&aacute;t tốc độ cabin v&agrave; k&iacute;ch hoạt cơ chế an to&agrave;n trong trường hợp thang vận h&agrave;nh bất thường.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- COMMON MISTAKES -->\r\n\r\n<div class=\"lg:px-8 max-w-7xl mx-auto px-4 py-14 sm:px-6\">\r\n<h2>3 sai lầm thường gặp khi lắp thang m&aacute;y gia đ&igrave;nh</h2>\r\n\r\n<div class=\"mt-8 space-y-4\">\r\n<div class=\"border border-slate-200 p-5 rounded-2xl\">\r\n<h3>1. Chọn đơn vị thi c&ocirc;ng chỉ v&igrave; gi&aacute; rẻ</h3>\r\n\r\n<p>Thang m&aacute;y li&ecirc;n quan trực tiếp đến an to&agrave;n sử dụng l&acirc;u d&agrave;i. Gia chủ n&ecirc;n ưu ti&ecirc;n đơn vị c&oacute; hồ sơ kỹ thuật r&otilde; r&agrave;ng, linh kiện minh bạch v&agrave; đội ngũ bảo tr&igrave; ổn định.</p>\r\n</div>\r\n\r\n<div class=\"border border-slate-200 p-5 rounded-2xl\">\r\n<h3>2. Kh&ocirc;ng t&iacute;nh chi ph&iacute; bảo tr&igrave; sau lắp đặt</h3>\r\n\r\n<p>Thang m&aacute;y cần được kiểm tra, vệ sinh v&agrave; bảo dưỡng định kỳ để vận h&agrave;nh &ecirc;m, an to&agrave;n v&agrave; hạn chế lỗi ph&aacute;t sinh.</p>\r\n</div>\r\n\r\n<div class=\"border border-slate-200 p-5 rounded-2xl\">\r\n<h3>3. Tự x&acirc;y hố thang khi chưa c&oacute; bản vẽ kỹ thuật</h3>\r\n\r\n<p>Sai lệch k&iacute;ch thước hố thang c&oacute; thể l&agrave;m ph&aacute;t sinh chi ph&iacute; chỉnh sửa, ảnh hưởng đến ray dẫn hướng, cửa tầng v&agrave; độ ổn định khi vận h&agrave;nh.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- FAQ -->\r\n\r\n<div class=\"bg-slate-50\">\r\n<div class=\"lg:px-8 max-w-5xl mx-auto px-4 py-14 sm:px-6\">\r\n<h2>C&acirc;u hỏi thường gặp về thang m&aacute;y gia đ&igrave;nh</h2>\r\n\r\n<div class=\"mt-8 space-y-4\">\r\n<div class=\"bg-white p-6 rounded-2xl shadow-sm\">\r\n<h3>Thang m&aacute;y gia đ&igrave;nh c&oacute; tốn điện kh&ocirc;ng?</h3>\r\n\r\n<p>Kh&ocirc;ng qu&aacute; tốn điện nếu chọn đ&uacute;ng cấu h&igrave;nh. C&aacute;c d&ograve;ng thang m&aacute;y gia đ&igrave;nh hiện nay thường c&oacute; c&ocirc;ng suất ph&ugrave; hợp với điện sinh hoạt v&agrave; c&oacute; chế độ nghỉ khi kh&ocirc;ng sử dụng. Mức ti&ecirc;u thụ thực tế phụ thuộc v&agrave;o tần suất di chuyển, tải trọng v&agrave; loại động cơ.</p>\r\n</div>\r\n\r\n<div class=\"bg-white p-6 rounded-2xl shadow-sm\">\r\n<h3>Nh&agrave; cải tạo c&oacute; lắp được thang m&aacute;y kh&ocirc;ng?</h3>\r\n\r\n<p>C&oacute;. Với nh&agrave; cải tạo, kỹ sư cần khảo s&aacute;t thực tế để x&aacute;c định vị tr&iacute; ph&ugrave; hợp như giếng trời, l&ograve;ng thang bộ hoặc khoảng trống trong nh&agrave;. Một số d&ograve;ng thang hố pit n&ocirc;ng, khung th&eacute;p v&aacute;ch k&iacute;nh c&oacute; thể ph&ugrave; hợp với c&ocirc;ng tr&igrave;nh đang sử dụng.</p>\r\n</div>\r\n\r\n<div class=\"bg-white p-6 rounded-2xl shadow-sm\">\r\n<h3>Lắp thang m&aacute;y gia đ&igrave;nh mất bao l&acirc;u?</h3>\r\n\r\n<p>Thời gian phụ thuộc v&agrave;o d&ograve;ng thang, t&igrave;nh trạng hố thang v&agrave; tiến độ sản xuất thiết bị. Sau khi hố thang sẵn s&agrave;ng, giai đoạn lắp đặt, c&acirc;n chỉnh v&agrave; kiểm định thường được triển khai theo kế hoạch kỹ thuật cụ thể.</p>\r\n</div>\r\n\r\n<div class=\"bg-white p-6 rounded-2xl shadow-sm\">\r\n<h3>N&ecirc;n chọn thang m&aacute;y tải trọng bao nhi&ecirc;u cho gia đ&igrave;nh?</h3>\r\n\r\n<p>Gia đ&igrave;nh &iacute;t người c&oacute; thể c&acirc;n nhắc tải trọng 250kg&ndash;350kg. Nếu nh&agrave; c&oacute; người lớn tuổi, người d&ugrave;ng xe lăn hoặc cần vận chuyển đồ đạc giữa c&aacute;c tầng, tải trọng 350kg&ndash;450kg sẽ thuận tiện hơn.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- CTA -->\r\n\r\n<div class=\"lg:px-8 max-w-7xl mx-auto px-4 py-14 sm:px-6\" id=\"lien-he\">\r\n<div class=\"bg-amber-100 lg:p-10 p-8 rounded-3xl\">\r\n<div class=\"gap-8 grid lg:grid-cols-2 lg:items-center\">\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>','uploads/apps/products/image/thang_may_gia_dinh_brochure_HQT_500KB.jpg','',400,3.0,3,5,5,5,8,5,'Inox',2,500000000,350000000,1,1,1,1,1,'published',1,0,'Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng','Khám phá các giải pháp thang máy gia đình tối ưu diện tích từ 1m², vận hành êm ái, tiết kiệm điện năng. Tư vấn may đo theo kích thước hố thang thực tế, lắp đặt trọn gói nhanh chóng.','thang máy gia đình','2026-05-23 07:55:52.006129','2026-05-26 07:50:44.042671',1,1),(3,'Thang Máy Thủy Lực HQT Elevator | Êm Ái, Sang Trọng, Tối Ưu Không Gian','thang-may-thuy-luc-hqt-elevator','TMTL-GPHDCNPBT','Thang máy thủy lực HQT Elevator phù hợp cho nhà phố, biệt thự, showroom và công trình cải tạo. Thiết kế sang trọng, vận hành êm ái, không cần phòng máy trên cao, tối ưu không gian lắp đặt.','<section class=\"bg-white text-slate-800\">\r\n  <!-- HERO SECTION -->\r\n  <div class=\"relative overflow-hidden bg-gradient-to-br from-slate-950 via-slate-900 to-slate-800\">\r\n    <div class=\"mx-auto grid max-w-7xl grid-cols-1 items-center gap-10 px-5 py-16 md:grid-cols-2 md:px-8 lg:py-24\">\r\n      <div>\r\n      \r\n        <h1 class=\"text-4xl font-bold leading-tight text-white md:text-5xl\">\r\n          Thang Máy Thủy Lực HQT Elevator\r\n        </h1>\r\n\r\n         <p class=\"mt-4 leading-8 text-slate-700\">\r\n          Thang máy thủy lực HQT Elevator là giải pháp di chuyển sang trọng, an toàn và tối ưu không gian cho nhà phố, biệt thự, showroom, văn phòng thấp tầng và các công trình không phù hợp lắp thang máy truyền thống. Sản phẩm vận hành êm ái, thiết kế linh hoạt, không yêu cầu phòng máy phía trên và dễ dàng đồng bộ với nhiều phong cách kiến trúc cao cấp.\r\n        </p>\r\n\r\n        <div class=\"mt-8 flex flex-col gap-4 sm:flex-row\">\r\n        \r\n        </div>\r\n      </div>\r\n\r\n    \r\n    </div>\r\n  </div>\r\n\r\n  <!-- INTRO -->\r\n  <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n    <div class=\"grid grid-cols-1 gap-10 lg:grid-cols-3\">\r\n      <div class=\"lg:col-span-2\">\r\n        <h2 class=\"text-3xl font-bold text-slate-950\">\r\n          Thang máy thủy lực là gì?\r\n        </h2>\r\n\r\n        <p class=\"mt-5 leading-8 text-slate-700\">\r\n          Thang máy thủy lực là dòng thang máy sử dụng hệ thống piston, xi lanh và bơm thủy lực để nâng hạ cabin. Thay vì dùng đối trọng và hệ thống kéo cáp như một số dòng thang máy truyền thống, thang máy thủy lực hoạt động dựa trên áp lực dầu thủy lực, giúp cabin di chuyển ổn định, nhẹ nhàng và phù hợp với các công trình có chiều cao vừa phải.\r\n        </p>\r\n\r\n        <p class=\"mt-4 leading-8 text-slate-700\">\r\n          Với ưu điểm không cần phòng máy trên cao, yêu cầu hố pit linh hoạt hơn và dễ thiết kế theo nhiều dạng không gian, thang máy thủy lực ngày càng được nhiều gia chủ, kiến trúc sư và chủ đầu tư lựa chọn cho nhà phố, biệt thự, penthouse, showroom hoặc công trình cải tạo.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"rounded-3xl bg-slate-50 p-6 shadow-sm\">\r\n        <h3 class=\"text-xl font-bold text-slate-950\">\r\n          Phù hợp với\r\n        </h3>\r\n        <ul class=\"mt-5 space-y-3 text-slate-700\">\r\n          <li>✓ Nhà phố diện tích hạn chế</li>\r\n          <li>✓ Biệt thự, villa, penthouse</li>\r\n          <li>✓ Công trình cải tạo</li>\r\n          <li>✓ Showroom, văn phòng thấp tầng</li>\r\n          <li>✓ Không gian yêu cầu tính thẩm mỹ cao</li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- BENEFITS -->\r\n  <div class=\"bg-slate-50\">\r\n    <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n      <div class=\"max-w-3xl\">\r\n        <p class=\"text-sm font-semibold uppercase tracking-widest text-red-700\">\r\n          Ưu điểm nổi bật\r\n        </p>\r\n        <h2 class=\"mt-3 text-3xl font-bold text-slate-950\">\r\n          Vì sao nên chọn thang máy thủy lực cho nhà ở và công trình thấp tầng?\r\n        </h2>\r\n      </div>\r\n\r\n      <div class=\"mt-10 grid grid-cols-1 gap-6 md:grid-cols-2 lg:grid-cols-3\">\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">Không cần phòng máy trên cao</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Thang máy thủy lực không yêu cầu xây phòng máy phía trên như nhiều dòng thang truyền thống, giúp giữ nguyên chiều cao kiến trúc, phù hợp với nhà phố, biệt thự hoặc công trình bị giới hạn chiều cao.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">Vận hành êm ái, ổn định</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Cơ chế nâng hạ bằng hệ thống thủy lực giúp cabin di chuyển nhẹ nhàng, giảm rung lắc, mang lại cảm giác thoải mái cho người sử dụng, đặc biệt phù hợp với gia đình có người lớn tuổi và trẻ nhỏ.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">Tối ưu không gian lắp đặt</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Thiết kế linh hoạt giúp thang máy thủy lực dễ dàng bố trí trong nhiều vị trí khác nhau như cạnh cầu thang bộ, giữa giếng trời, khu vực sảnh, bên ngoài nhà hoặc trong không gian cải tạo.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">Tính thẩm mỹ cao</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Cabin có thể tùy chỉnh theo phong cách hiện đại, tối giản, sang trọng hoặc kính trong suốt, giúp thang máy trở thành một phần của kiến trúc nội thất thay vì chỉ là thiết bị di chuyển.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">An toàn khi sử dụng</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Hệ thống được tích hợp các tính năng an toàn như khóa cửa tầng, cảm biến cửa, cứu hộ khẩn cấp, giới hạn hành trình và hệ thống kiểm soát vận hành nhằm đảm bảo an toàn trong quá trình sử dụng.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">Phù hợp công trình cải tạo</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Với yêu cầu xây dựng linh hoạt hơn, thang máy thủy lực là lựa chọn phù hợp cho các công trình đã hoàn thiện nhưng muốn bổ sung thang máy mà không can thiệp quá nhiều vào kết cấu hiện hữu.\r\n          </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- APPLICATION -->\r\n  <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n    <div class=\"grid grid-cols-1 gap-10 lg:grid-cols-2\">\r\n      <div>\r\n        <p class=\"text-sm font-semibold uppercase tracking-widest text-red-700\">\r\n          Ứng dụng thực tế\r\n        </p>\r\n        <h2 class=\"mt-3 text-3xl font-bold text-slate-950\">\r\n          Thang máy thủy lực phù hợp với công trình nào?\r\n        </h2>\r\n\r\n        <p class=\"mt-5 leading-8 text-slate-700\">\r\n          Thang máy thủy lực HQT Elevator phù hợp với các công trình có số tầng vừa phải, cần sự êm ái, an toàn, thẩm mỹ và tối ưu không gian lắp đặt. Đây là lựa chọn lý tưởng cho những công trình yêu cầu cao về trải nghiệm sử dụng nhưng không muốn thay đổi quá nhiều kết cấu kiến trúc.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"grid grid-cols-1 gap-4 sm:grid-cols-2\">\r\n        <div class=\"rounded-2xl border border-slate-200 p-5\">\r\n          <h3 class=\"font-bold text-slate-950\">Nhà phố</h3>\r\n          <p class=\"mt-2 text-sm leading-6 text-slate-600\">\r\n            Phù hợp với nhà có mặt tiền hẹp, chiều cao hạn chế hoặc cần lắp đặt thang trong không gian nhỏ.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-2xl border border-slate-200 p-5\">\r\n          <h3 class=\"font-bold text-slate-950\">Biệt thự</h3>\r\n          <p class=\"mt-2 text-sm leading-6 text-slate-600\">\r\n            Tăng tính tiện nghi, sang trọng và đồng bộ với kiến trúc cao cấp của không gian sống.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-2xl border border-slate-200 p-5\">\r\n          <h3 class=\"font-bold text-slate-950\">Showroom</h3>\r\n          <p class=\"mt-2 text-sm leading-6 text-slate-600\">\r\n            Tạo điểm nhấn hiện đại, hỗ trợ di chuyển giữa các tầng trưng bày một cách thuận tiện.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-2xl border border-slate-200 p-5\">\r\n          <h3 class=\"font-bold text-slate-950\">Công trình cải tạo</h3>\r\n          <p class=\"mt-2 text-sm leading-6 text-slate-600\">\r\n            Dễ tích hợp vào không gian hiện hữu, hạn chế tác động lớn đến kết cấu công trình.\r\n          </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- SPECIFICATIONS -->\r\n  <div class=\"bg-slate-950 text-white\">\r\n    <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n      <div class=\"max-w-3xl\">\r\n        <p class=\"text-sm font-semibold uppercase tracking-widest text-red-400\">\r\n          Thông số tham khảo\r\n        </p>\r\n        <h2 class=\"mt-3 text-3xl font-bold\">\r\n          Cấu hình thang máy thủy lực HQT Elevator\r\n        </h2>\r\n        <p class=\"mt-5 leading-8 text-slate-300\">\r\n          Thông số thực tế sẽ được HQT Elevator khảo sát và đề xuất theo hiện trạng công trình, nhu cầu sử dụng, tải trọng mong muốn và phong cách thiết kế của từng khách hàng.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"mt-10 overflow-hidden rounded-3xl border border-white/10\">\r\n        <table class=\"w-full border-collapse text-left\">\r\n          <tbody class=\"divide-y divide-white/10\">\r\n            <tr>\r\n              <th class=\"w-1/3 bg-white/5 px-5 py-4 font-semibold\">Loại công trình</th>\r\n              <td class=\"px-5 py-4 text-slate-300\">Nhà phố, biệt thự, showroom, văn phòng thấp tầng, công trình cải tạo</td>\r\n            </tr>\r\n            <tr>\r\n              <th class=\"bg-white/5 px-5 py-4 font-semibold\">Tải trọng tham khảo</th>\r\n              <td class=\"px-5 py-4 text-slate-300\">Phụ thuộc nhu cầu sử dụng, thường phù hợp cho gia đình hoặc nhóm người di chuyển mỗi lượt</td>\r\n            </tr>\r\n            <tr>\r\n              <th class=\"bg-white/5 px-5 py-4 font-semibold\">Số điểm dừng</th>\r\n              <td class=\"px-5 py-4 text-slate-300\">Phù hợp công trình thấp tầng, nhà ở dân dụng và biệt thự nhiều tầng</td>\r\n            </tr>\r\n            <tr>\r\n              <th class=\"bg-white/5 px-5 py-4 font-semibold\">Thiết kế cabin</th>\r\n              <td class=\"px-5 py-4 text-slate-300\">Inox, kính, thép sơn tĩnh điện, vật liệu trang trí theo yêu cầu</td>\r\n            </tr>\r\n            <tr>\r\n              <th class=\"bg-white/5 px-5 py-4 font-semibold\">Ưu điểm lắp đặt</th>\r\n              <td class=\"px-5 py-4 text-slate-300\">Không cần phòng máy trên cao, bố trí linh hoạt, phù hợp công trình mới và cải tạo</td>\r\n            </tr>\r\n          </tbody>\r\n        </table>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- COMPARISON -->\r\n  <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n    <div class=\"max-w-3xl\">\r\n      <p class=\"text-sm font-semibold uppercase tracking-widest text-red-700\">\r\n        So sánh giải pháp\r\n      </p>\r\n      <h2 class=\"mt-3 text-3xl font-bold text-slate-950\">\r\n        Khi nào nên chọn thang máy thủy lực?\r\n      </h2>\r\n    </div>\r\n\r\n    <div class=\"mt-10 grid grid-cols-1 gap-6 lg:grid-cols-2\">\r\n      <div class=\"rounded-3xl border border-slate-200 p-6\">\r\n        <h3 class=\"text-xl font-bold text-slate-950\">\r\n          Nên chọn thang máy thủy lực khi\r\n        </h3>\r\n        <ul class=\"mt-5 space-y-3 leading-7 text-slate-700\">\r\n          <li>✓ Công trình không muốn xây phòng máy trên cao.</li>\r\n          <li>✓ Nhà phố hoặc biệt thự có không gian lắp đặt hạn chế.</li>\r\n          <li>✓ Gia chủ ưu tiên vận hành êm ái và trải nghiệm sử dụng thoải mái.</li>\r\n          <li>✓ Công trình cải tạo cần giải pháp lắp đặt linh hoạt.</li>\r\n          <li>✓ Không gian yêu cầu thiết kế thẩm mỹ, sang trọng và đồng bộ nội thất.</li>\r\n        </ul>\r\n      </div>\r\n\r\n      <div class=\"rounded-3xl border border-slate-200 p-6\">\r\n        <h3 class=\"text-xl font-bold text-slate-950\">\r\n          Cần khảo sát kỹ khi\r\n        </h3>\r\n        <ul class=\"mt-5 space-y-3 leading-7 text-slate-700\">\r\n          <li>✓ Công trình có số tầng quá cao hoặc tần suất sử dụng liên tục.</li>\r\n          <li>✓ Vị trí lắp đặt bị giới hạn về kết cấu chịu lực.</li>\r\n          <li>✓ Cần tải trọng lớn hơn nhu cầu sử dụng gia đình thông thường.</li>\r\n          <li>✓ Công trình yêu cầu tốc độ di chuyển cao.</li>\r\n          <li>✓ Chủ đầu tư cần tối ưu chi phí đầu tư ban đầu ở mức thấp nhất.</li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- PROCESS -->\r\n  <div class=\"bg-slate-50\">\r\n    <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n      <div class=\"max-w-3xl\">\r\n        <p class=\"text-sm font-semibold uppercase tracking-widest text-red-700\">\r\n          Quy trình triển khai\r\n        </p>\r\n        <h2 class=\"mt-3 text-3xl font-bold text-slate-950\">\r\n          Quy trình tư vấn & lắp đặt thang máy thủy lực tại HQT Elevator\r\n        </h2>\r\n      </div>\r\n\r\n      <div class=\"mt-10 grid grid-cols-1 gap-6 md:grid-cols-2 lg:grid-cols-4\">\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <span class=\"text-3xl font-bold text-red-700\">01</span>\r\n          <h3 class=\"mt-4 font-bold text-slate-950\">Tiếp nhận nhu cầu</h3>\r\n          <p class=\"mt-3 text-sm leading-6 text-slate-600\">\r\n            HQT Elevator ghi nhận loại công trình, số tầng, vị trí dự kiến, nhu cầu sử dụng và phong cách thiết kế mong muốn.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <span class=\"text-3xl font-bold text-red-700\">02</span>\r\n          <h3 class=\"mt-4 font-bold text-slate-950\">Khảo sát thực tế</h3>\r\n          <p class=\"mt-3 text-sm leading-6 text-slate-600\">\r\n            Đội ngũ kỹ thuật khảo sát hiện trạng, đo đạc kích thước và đánh giá điều kiện lắp đặt để đề xuất phương án phù hợp.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <span class=\"text-3xl font-bold text-red-700\">03</span>\r\n          <h3 class=\"mt-4 font-bold text-slate-950\">Thiết kế giải pháp</h3>\r\n          <p class=\"mt-3 text-sm leading-6 text-slate-600\">\r\n            Tư vấn tải trọng, kích thước cabin, vật liệu hoàn thiện, phương án kỹ thuật và chi phí đầu tư theo từng nhu cầu.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <span class=\"text-3xl font-bold text-red-700\">04</span>\r\n          <h3 class=\"mt-4 font-bold text-slate-950\">Lắp đặt & bàn giao</h3>\r\n          <p class=\"mt-3 text-sm leading-6 text-slate-600\">\r\n            Thực hiện lắp đặt, kiểm tra an toàn, hướng dẫn vận hành và bàn giao thang máy sau khi hoàn tất các bước kiểm định cần thiết.\r\n          </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- FAQ AEO -->\r\n  <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n    <div class=\"max-w-3xl\">\r\n      <p class=\"text-sm font-semibold uppercase tracking-widest text-red-700\">\r\n        Câu hỏi thường gặp\r\n      </p>\r\n      <h2 class=\"mt-3 text-3xl font-bold text-slate-950\">\r\n        FAQ về thang máy thủy lực\r\n      </h2>\r\n      <p class=\"mt-5 leading-8 text-slate-700\">\r\n        Dưới đây là những câu hỏi phổ biến giúp khách hàng hiểu rõ hơn trước khi lựa chọn thang máy thủy lực cho công trình.\r\n      </p>\r\n    </div>\r\n\r\n    <div class=\"mt-10 space-y-4\">\r\n      <details class=\"group rounded-2xl border border-slate-200 p-5\">\r\n        <summary class=\"cursor-pointer list-none font-bold text-slate-950\">\r\n          Thang máy thủy lực có phù hợp với nhà phố không?\r\n        </summary>\r\n        <p class=\"mt-3 leading-7 text-slate-700\">\r\n          Có. Thang máy thủy lực rất phù hợp với nhà phố, đặc biệt là những công trình có diện tích hạn chế, không muốn xây phòng máy phía trên hoặc cần giải pháp lắp đặt linh hoạt.\r\n        </p>\r\n      </details>\r\n\r\n      <details class=\"group rounded-2xl border border-slate-200 p-5\">\r\n        <summary class=\"cursor-pointer list-none font-bold text-slate-950\">\r\n          Thang máy thủy lực có cần phòng máy không?\r\n        </summary>\r\n        <p class=\"mt-3 leading-7 text-slate-700\">\r\n          Thang máy thủy lực thường không cần phòng máy truyền thống phía trên, giúp tối ưu chiều cao công trình và giữ được tính thẩm mỹ cho kiến trúc tổng thể.\r\n        </p>\r\n      </details>\r\n\r\n      <details class=\"group rounded-2xl border border-slate-200 p-5\">\r\n        <summary class=\"cursor-pointer list-none font-bold text-slate-950\">\r\n          Thang máy thủy lực có an toàn không?\r\n        </summary>\r\n        <p class=\"mt-3 leading-7 text-slate-700\">\r\n          Thang máy thủy lực được trang bị nhiều hệ thống an toàn như cảm biến cửa, khóa cửa tầng, hệ thống giới hạn hành trình, cứu hộ khẩn cấp và kiểm soát vận hành nhằm đảm bảo an toàn cho người dùng.\r\n        </p>\r\n      </details>\r\n\r\n      <details class=\"group rounded-2xl border border-slate-200 p-5\">\r\n        <summary class=\"cursor-pointer list-none font-bold text-slate-950\">\r\n          Thang máy thủy lực có phù hợp với biệt thự không?\r\n        </summary>\r\n        <p class=\"mt-3 leading-7 text-slate-700\">\r\n          Có. Với ưu điểm vận hành êm, thiết kế đẹp và dễ tùy chỉnh vật liệu cabin, thang máy thủy lực là lựa chọn phù hợp cho biệt thự, villa và các không gian sống cao cấp.\r\n        </p>\r\n      </details>\r\n\r\n      <details class=\"group rounded-2xl border border-slate-200 p-5\">\r\n        <summary class=\"cursor-pointer list-none font-bold text-slate-950\">\r\n          Giá thang máy thủy lực phụ thuộc vào yếu tố nào?\r\n        </summary>\r\n        <p class=\"mt-3 leading-7 text-slate-700\">\r\n          Giá thang máy thủy lực phụ thuộc vào tải trọng, số điểm dừng, kích thước cabin, vật liệu hoàn thiện, vị trí lắp đặt, hiện trạng công trình và các yêu cầu thiết kế riêng của khách hàng.\r\n        </p>\r\n      </details>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- CTA -->\r\n  <div id=\"tu-van\" class=\"bg-red-700\">\r\n    <div class=\"mx-auto grid max-w-7xl grid-cols-1 items-center gap-8 px-5 py-14 md:grid-cols-2 md:px-8\">\r\n      <div>\r\n        <h2 class=\"text-3xl font-bold text-white\">\r\n          Cần tư vấn thang máy thủy lực cho công trình của bạn?\r\n        </h2>\r\n        <p class=\"mt-4 leading-8 text-red-50\">\r\n          HQT Elevator sẽ khảo sát, tư vấn phương án kỹ thuật, thiết kế cabin và báo giá theo đúng nhu cầu sử dụng, phong cách kiến trúc và hiện trạng công trình.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"flex flex-col gap-4 sm:flex-row md:justify-end\">\r\n        <a href=\"tel:0835947868\" class=\"rounded-xl bg-white px-6 py-4 text-center font-semibold text-red-700 transition hover:bg-slate-100\">\r\n          Gọi tư vấn ngay\r\n        </a>\r\n        <a id=\"bao-gia\" href=\"/lien-he\" class=\"rounded-xl border border-white px-6 py-4 text-center font-semibold text-white transition hover:bg-white hover:text-red-700\">\r\n          Nhận báo giá\r\n        </a>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</section>\r\n\r\n<!-- FAQ Schema SEO/AEO -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\": \"https://schema.org\",\r\n  \"@type\": \"FAQPage\",\r\n  \"mainEntity\": [\r\n    {\r\n      \"@type\": \"Question\",\r\n      \"name\": \"Thang máy thủy lực có phù hợp với nhà phố không?\",\r\n      \"acceptedAnswer\": {\r\n        \"@type\": \"Answer\",\r\n        \"text\": \"Có. Thang máy thủy lực phù hợp với nhà phố, đặc biệt là công trình có diện tích hạn chế, không muốn xây phòng máy phía trên hoặc cần giải pháp lắp đặt linh hoạt.\"\r\n      }\r\n    },\r\n    {\r\n      \"@type\": \"Question\",\r\n      \"name\": \"Thang máy thủy lực có cần phòng máy không?\",\r\n      \"acceptedAnswer\": {\r\n        \"@type\": \"Answer\",\r\n        \"text\": \"Thang máy thủy lực thường không cần phòng máy truyền thống phía trên, giúp tối ưu chiều cao công trình và giữ được tính thẩm mỹ cho kiến trúc tổng thể.\"\r\n      }\r\n    },\r\n    {\r\n      \"@type\": \"Question\",\r\n      \"name\": \"Thang máy thủy lực có an toàn không?\",\r\n      \"acceptedAnswer\": {\r\n        \"@type\": \"Answer\",\r\n        \"text\": \"Thang máy thủy lực được trang bị các hệ thống an toàn như cảm biến cửa, khóa cửa tầng, giới hạn hành trình, cứu hộ khẩn cấp và kiểm soát vận hành.\"\r\n      }\r\n    },\r\n    {\r\n      \"@type\": \"Question\",\r\n      \"name\": \"Giá thang máy thủy lực phụ thuộc vào yếu tố nào?\",\r\n      \"acceptedAnswer\": {\r\n        \"@type\": \"Answer\",\r\n        \"text\": \"Giá thang máy thủy lực phụ thuộc vào tải trọng, số điểm dừng, kích thước cabin, vật liệu hoàn thiện, vị trí lắp đặt, hiện trạng công trình và yêu cầu thiết kế riêng.\"\r\n      }\r\n    }\r\n  ]\r\n}\r\n</script>','uploads/apps/products/image/thang_may_thuy_luc_HQT_500KB.jpg','',500,0.4,3,NULL,NULL,5,8,5,'Kính cường lực cao cấp',2,800000000,500000000,1,0,0,0,0,'published',0,0,'Thang Máy Thủy Lực HQT Elevator | Êm Ái, Sang Trọng, Tối Ưu Không Gian','Thang máy thủy lực HQT Elevator phù hợp cho nhà phố, biệt thự, showroom và công trình cải tạo. Thiết kế sang trọng, vận hành êm ái, không cần phòng máy trên cao, tối ưu không gian lắp đặt.','thang máy thủy lực, thang máy thủy lực gia đình, thang máy thủy lực cho nhà phố, thang máy thủy lực biệt thự, thang máy không phòng máy, thang máy cho công trình cải tạo, thang máy HQT Elevator','2026-05-24 15:14:58.013531','2026-05-24 15:24:44.080578',1,4),(4,'Thang Máy Tải Hàng HQT Elevator | Bền Bỉ, An Toàn, Tối Ưu Vận Chuyển','thang-may-tai-hang-hqt-elevator','TMTH-BBAT','Thang máy tải hàng HQT Elevator phù hợp cho kho xưởng, nhà máy, siêu thị, cửa hàng, nhà hàng và trung tâm phân phối. Thiết kế chắc chắn, tải trọng linh hoạt, vận hành ổn định, tối ưu chi phí nhân công.','<section class=\"bg-white text-slate-800\">\r\n  <!-- INTRO -->\r\n  <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n    <div class=\"grid grid-cols-1 gap-10 lg:grid-cols-3\">\r\n      <div class=\"lg:col-span-2\">\r\n        <h2 class=\"text-3xl font-bold text-slate-950\">\r\n          Thang máy tải hàng là gì?\r\n        </h2>\r\n\r\n        <p class=\"mt-5 leading-8 text-slate-700\">\r\n          Thang máy tải hàng là dòng thang máy được thiết kế chuyên biệt để vận chuyển hàng hóa, nguyên vật liệu, thiết bị, kiện hàng, thực phẩm, linh kiện hoặc sản phẩm giữa các tầng trong công trình. Khác với thang máy chở người, thang máy tải hàng chú trọng đến khả năng chịu tải, độ bền kết cấu, kích thước cabin, độ ổn định khi vận hành và sự phù hợp với đặc thù hàng hóa của từng doanh nghiệp.\r\n        </p>\r\n\r\n        <p class=\"mt-4 leading-8 text-slate-700\">\r\n          Với các công trình như kho xưởng, nhà máy, siêu thị, cửa hàng vật liệu, nhà hàng, khách sạn hoặc trung tâm phân phối, thang máy tải hàng giúp giảm sức lao động thủ công, hạn chế rủi ro trong quá trình vận chuyển và tăng tốc độ luân chuyển hàng hóa. Đây là một trong những hạng mục quan trọng giúp tối ưu quy trình vận hành dài hạn.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"rounded-3xl bg-slate-50 p-6 shadow-sm\">\r\n        <h3 class=\"text-xl font-bold text-slate-950\">\r\n          Phù hợp với\r\n        </h3>\r\n        <ul class=\"mt-5 space-y-3 text-slate-700\">\r\n          <li>✓ Nhà xưởng, kho hàng</li>\r\n          <li>✓ Siêu thị, cửa hàng bán lẻ</li>\r\n          <li>✓ Nhà hàng, khách sạn</li>\r\n          <li>✓ Trung tâm phân phối</li>\r\n          <li>✓ Công trình cần vận chuyển hàng nặng</li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- BENEFITS -->\r\n  <div class=\"bg-slate-50\">\r\n    <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n      <div class=\"max-w-3xl\">\r\n        <p class=\"text-sm font-semibold uppercase tracking-widest text-red-700\">\r\n          Ưu điểm nổi bật\r\n        </p>\r\n        <h2 class=\"mt-3 text-3xl font-bold text-slate-950\">\r\n          Vì sao nên lắp đặt thang máy tải hàng cho công trình?\r\n        </h2>\r\n      </div>\r\n\r\n      <div class=\"mt-10 grid grid-cols-1 gap-6 md:grid-cols-2 lg:grid-cols-3\">\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">Tăng hiệu suất vận chuyển</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Thang máy tải hàng giúp vận chuyển hàng hóa giữa các tầng nhanh hơn, giảm thời gian bốc vác thủ công và hỗ trợ doanh nghiệp xử lý khối lượng hàng lớn trong thời gian ngắn.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">Kết cấu chắc chắn</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Cabin, sàn thang, cửa thang và hệ thống khung được thiết kế theo nhu cầu chịu tải, phù hợp với hàng hóa cồng kềnh, hàng nặng hoặc tần suất sử dụng cao.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">Giảm chi phí nhân công</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Việc sử dụng thang máy tải hàng giúp giảm số lượng nhân sự cần tham gia vận chuyển, hạn chế hao hụt sức lao động và tối ưu chi phí vận hành dài hạn.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">An toàn cho hàng hóa</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Hàng hóa được vận chuyển ổn định bằng cabin chuyên dụng, hạn chế va đập, rơi vỡ hoặc hư hỏng so với phương án vận chuyển thủ công bằng cầu thang bộ.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">Tùy chỉnh theo nhu cầu</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Thang máy tải hàng có thể thiết kế theo tải trọng, kích thước cabin, số điểm dừng, kiểu cửa, vật liệu hoàn thiện và đặc thù vận hành của từng ngành nghề.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">Vận hành ổn định</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Hệ thống được tính toán phù hợp với tần suất sử dụng thực tế, giúp thang hoạt động bền bỉ, ổn định và đáp ứng tốt nhu cầu vận chuyển liên tục trong công trình.\r\n          </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- APPLICATION -->\r\n  <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n    <div class=\"grid grid-cols-1 gap-10 lg:grid-cols-2\">\r\n      <div>\r\n        <p class=\"text-sm font-semibold uppercase tracking-widest text-red-700\">\r\n          Ứng dụng thực tế\r\n        </p>\r\n        <h2 class=\"mt-3 text-3xl font-bold text-slate-950\">\r\n          Thang máy tải hàng phù hợp với công trình nào?\r\n        </h2>\r\n\r\n        <p class=\"mt-5 leading-8 text-slate-700\">\r\n          Thang máy tải hàng HQT Elevator phù hợp với nhiều loại công trình có nhu cầu vận chuyển hàng hóa theo chiều cao. Tùy vào đặc điểm hàng hóa, tải trọng, diện tích mặt bằng và quy trình vận hành, HQT Elevator sẽ tư vấn phương án thiết kế phù hợp để đảm bảo hiệu quả sử dụng, an toàn và tối ưu chi phí đầu tư.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"grid grid-cols-1 gap-4 sm:grid-cols-2\">\r\n        <div class=\"rounded-2xl border border-slate-200 p-5\">\r\n          <h3 class=\"font-bold text-slate-950\">Kho xưởng</h3>\r\n          <p class=\"mt-2 text-sm leading-6 text-slate-600\">\r\n            Hỗ trợ vận chuyển nguyên vật liệu, kiện hàng, linh kiện và sản phẩm giữa các tầng trong nhà xưởng.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-2xl border border-slate-200 p-5\">\r\n          <h3 class=\"font-bold text-slate-950\">Siêu thị, cửa hàng</h3>\r\n          <p class=\"mt-2 text-sm leading-6 text-slate-600\">\r\n            Phù hợp cho việc đưa hàng từ kho lên khu vực trưng bày hoặc vận chuyển hàng hóa giữa các tầng bán hàng.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-2xl border border-slate-200 p-5\">\r\n          <h3 class=\"font-bold text-slate-950\">Nhà hàng, khách sạn</h3>\r\n          <p class=\"mt-2 text-sm leading-6 text-slate-600\">\r\n            Dùng để vận chuyển thực phẩm, đồ dùng, thiết bị, đồ vải hoặc vật tư vận hành nội bộ.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-2xl border border-slate-200 p-5\">\r\n          <h3 class=\"font-bold text-slate-950\">Trung tâm phân phối</h3>\r\n          <p class=\"mt-2 text-sm leading-6 text-slate-600\">\r\n            Hỗ trợ lưu chuyển hàng hóa nhanh, ổn định và đồng bộ với quy trình xuất nhập kho.\r\n          </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- TYPES -->\r\n  <div class=\"bg-slate-950 text-white\">\r\n    <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n      <div class=\"max-w-3xl\">\r\n        <p class=\"text-sm font-semibold uppercase tracking-widest text-red-400\">\r\n          Phân loại sản phẩm\r\n        </p>\r\n        <h2 class=\"mt-3 text-3xl font-bold\">\r\n          Các loại thang máy tải hàng phổ biến\r\n        </h2>\r\n        <p class=\"mt-5 leading-8 text-slate-300\">\r\n          Mỗi công trình có đặc thù vận hành khác nhau, vì vậy thang máy tải hàng cần được lựa chọn theo tải trọng, kích thước hàng hóa, tần suất sử dụng và yêu cầu an toàn thực tế.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"mt-10 grid grid-cols-1 gap-6 md:grid-cols-2 lg:grid-cols-3\">\r\n        <div class=\"rounded-3xl bg-white/5 p-6 ring-1 ring-white/10\">\r\n          <h3 class=\"text-xl font-bold\">Thang tải hàng kho xưởng</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-300\">\r\n            Phù hợp với nhà máy, kho sản xuất, xưởng gia công hoặc công trình có nhu cầu vận chuyển hàng nặng, kiện lớn, pallet hoặc thiết bị.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white/5 p-6 ring-1 ring-white/10\">\r\n          <h3 class=\"text-xl font-bold\">Thang tải thực phẩm</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-300\">\r\n            Phù hợp với nhà hàng, khách sạn, bếp công nghiệp, quán ăn nhiều tầng hoặc khu vực cần vận chuyển thực phẩm, dụng cụ bếp, đồ uống.\r\n          </p>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white/5 p-6 ring-1 ring-white/10\">\r\n          <h3 class=\"text-xl font-bold\">Thang tải hàng kết hợp người</h3>\r\n          <p class=\"mt-3 leading-7 text-slate-300\">\r\n            Áp dụng cho công trình có nhu cầu vừa vận chuyển hàng vừa cần nhân sự đi kèm, yêu cầu thiết kế và tiêu chuẩn an toàn cao hơn.\r\n          </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- SPECIFICATIONS -->\r\n  <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n    <div class=\"max-w-3xl\">\r\n      <p class=\"text-sm font-semibold uppercase tracking-widest text-red-700\">\r\n        Thông số tham khảo\r\n      </p>\r\n      <h2 class=\"mt-3 text-3xl font-bold text-slate-950\">\r\n        Cấu hình thang máy tải hàng HQT Elevator\r\n      </h2>\r\n      <p class=\"mt-5 leading-8 text-slate-700\">\r\n        Thông số thực tế sẽ được HQT Elevator tư vấn sau khi khảo sát hiện trạng công trình, loại hàng hóa, tải trọng mong muốn, số tầng phục vụ và tần suất vận hành.\r\n      </p>\r\n    </div>\r\n\r\n    <div class=\"mt-10 overflow-hidden rounded-3xl border border-slate-200\">\r\n      <table class=\"w-full border-collapse text-left\">\r\n        <tbody class=\"divide-y divide-slate-200\">\r\n          <tr>\r\n            <th class=\"w-1/3 bg-slate-50 px-5 py-4 font-semibold text-slate-950\">Loại công trình</th>\r\n            <td class=\"px-5 py-4 text-slate-700\">Kho hàng, nhà xưởng, siêu thị, cửa hàng, nhà hàng, khách sạn, trung tâm phân phối</td>\r\n          </tr>\r\n          <tr>\r\n            <th class=\"bg-slate-50 px-5 py-4 font-semibold text-slate-950\">Tải trọng</th>\r\n            <td class=\"px-5 py-4 text-slate-700\">Thiết kế linh hoạt theo nhu cầu vận chuyển hàng hóa thực tế của từng công trình</td>\r\n          </tr>\r\n          <tr>\r\n            <th class=\"bg-slate-50 px-5 py-4 font-semibold text-slate-950\">Số điểm dừng</th>\r\n            <td class=\"px-5 py-4 text-slate-700\">Tùy theo số tầng phục vụ và quy trình vận hành hàng hóa</td>\r\n          </tr>\r\n          <tr>\r\n            <th class=\"bg-slate-50 px-5 py-4 font-semibold text-slate-950\">Vật liệu cabin</th>\r\n            <td class=\"px-5 py-4 text-slate-700\">Inox, thép sơn tĩnh điện, sàn chống trượt hoặc vật liệu hoàn thiện theo yêu cầu</td>\r\n          </tr>\r\n          <tr>\r\n            <th class=\"bg-slate-50 px-5 py-4 font-semibold text-slate-950\">Kiểu cửa</th>\r\n            <td class=\"px-5 py-4 text-slate-700\">Cửa mở tay, cửa tự động, cửa lùa hoặc thiết kế theo mặt bằng công trình</td>\r\n          </tr>\r\n          <tr>\r\n            <th class=\"bg-slate-50 px-5 py-4 font-semibold text-slate-950\">Mục tiêu sử dụng</th>\r\n            <td class=\"px-5 py-4 text-slate-700\">Tối ưu vận chuyển hàng hóa, giảm nhân công, tăng an toàn và nâng cao hiệu suất vận hành</td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- SELECTION GUIDE -->\r\n  <div class=\"bg-slate-50\">\r\n    <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n      <div class=\"max-w-3xl\">\r\n        <p class=\"text-sm font-semibold uppercase tracking-widest text-red-700\">\r\n          Tư vấn lựa chọn\r\n        </p>\r\n        <h2 class=\"mt-3 text-3xl font-bold text-slate-950\">\r\n          Khi nào nên chọn thang máy tải hàng?\r\n        </h2>\r\n      </div>\r\n\r\n      <div class=\"mt-10 grid grid-cols-1 gap-6 lg:grid-cols-2\">\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">\r\n            Nên chọn thang máy tải hàng khi\r\n          </h3>\r\n          <ul class=\"mt-5 space-y-3 leading-7 text-slate-700\">\r\n            <li>✓ Công trình thường xuyên vận chuyển hàng hóa giữa các tầng.</li>\r\n            <li>✓ Hàng hóa có kích thước lớn, trọng lượng nặng hoặc số lượng nhiều.</li>\r\n            <li>✓ Doanh nghiệp muốn giảm chi phí bốc vác thủ công.</li>\r\n            <li>✓ Cần hạn chế rủi ro va đập, rơi vỡ hoặc hư hỏng hàng hóa.</li>\r\n            <li>✓ Muốn tăng tốc độ xuất nhập hàng và tối ưu quy trình vận hành.</li>\r\n          </ul>\r\n        </div>\r\n\r\n        <div class=\"rounded-3xl bg-white p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-slate-950\">\r\n            Cần khảo sát kỹ khi\r\n          </h3>\r\n          <ul class=\"mt-5 space-y-3 leading-7 text-slate-700\">\r\n            <li>✓ Công trình có diện tích lắp đặt hạn chế.</li>\r\n            <li>✓ Hàng hóa có tải trọng không ổn định hoặc kích thước thay đổi liên tục.</li>\r\n            <li>✓ Cần vận chuyển hàng đi kèm người vận hành.</li>\r\n            <li>✓ Vị trí lắp đặt liên quan đến khu vực sản xuất, kho lạnh hoặc môi trường đặc thù.</li>\r\n            <li>✓ Công trình cải tạo cần kiểm tra kỹ kết cấu chịu lực.</li>\r\n          </ul>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- PROCESS -->\r\n  <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n    <div class=\"max-w-3xl\">\r\n      <p class=\"text-sm font-semibold uppercase tracking-widest text-red-700\">\r\n        Quy trình triển khai\r\n      </p>\r\n      <h2 class=\"mt-3 text-3xl font-bold text-slate-950\">\r\n        Quy trình tư vấn & lắp đặt thang máy tải hàng tại HQT Elevator\r\n      </h2>\r\n    </div>\r\n\r\n    <div class=\"mt-10 grid grid-cols-1 gap-6 md:grid-cols-2 lg:grid-cols-4\">\r\n      <div class=\"rounded-3xl border border-slate-200 p-6\">\r\n        <span class=\"text-3xl font-bold text-red-700\">01</span>\r\n        <h3 class=\"mt-4 font-bold text-slate-950\">Tiếp nhận nhu cầu</h3>\r\n        <p class=\"mt-3 text-sm leading-6 text-slate-600\">\r\n          Ghi nhận loại hàng hóa, tải trọng dự kiến, số tầng phục vụ, tần suất sử dụng và đặc thù vận hành của công trình.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"rounded-3xl border border-slate-200 p-6\">\r\n        <span class=\"text-3xl font-bold text-red-700\">02</span>\r\n        <h3 class=\"mt-4 font-bold text-slate-950\">Khảo sát mặt bằng</h3>\r\n        <p class=\"mt-3 text-sm leading-6 text-slate-600\">\r\n          Đo đạc vị trí lắp đặt, kiểm tra kết cấu, hướng vận chuyển hàng hóa và điều kiện thi công thực tế.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"rounded-3xl border border-slate-200 p-6\">\r\n        <span class=\"text-3xl font-bold text-red-700\">03</span>\r\n        <h3 class=\"mt-4 font-bold text-slate-950\">Đề xuất phương án</h3>\r\n        <p class=\"mt-3 text-sm leading-6 text-slate-600\">\r\n          Tư vấn tải trọng, kích thước cabin, loại cửa, vật liệu, hệ thống vận hành và báo giá theo nhu cầu thực tế.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"rounded-3xl border border-slate-200 p-6\">\r\n        <span class=\"text-3xl font-bold text-red-700\">04</span>\r\n        <h3 class=\"mt-4 font-bold text-slate-950\">Lắp đặt & bàn giao</h3>\r\n        <p class=\"mt-3 text-sm leading-6 text-slate-600\">\r\n          Thi công lắp đặt, kiểm tra an toàn, chạy thử, hướng dẫn vận hành và bàn giao sau khi hoàn thiện.\r\n        </p>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- FAQ AEO -->\r\n  <div class=\"bg-slate-50\">\r\n    <div class=\"mx-auto max-w-7xl px-5 py-16 md:px-8\">\r\n      <div class=\"max-w-3xl\">\r\n        <p class=\"text-sm font-semibold uppercase tracking-widest text-red-700\">\r\n          Câu hỏi thường gặp\r\n        </p>\r\n        <h2 class=\"mt-3 text-3xl font-bold text-slate-950\">\r\n          FAQ về thang máy tải hàng\r\n        </h2>\r\n        <p class=\"mt-5 leading-8 text-slate-700\">\r\n          Dưới đây là những câu hỏi phổ biến giúp chủ đầu tư, doanh nghiệp và đơn vị vận hành hiểu rõ hơn trước khi lựa chọn thang máy tải hàng.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"mt-10 space-y-4\">\r\n        <details class=\"group rounded-2xl border border-slate-200 bg-white p-5\">\r\n          <summary class=\"cursor-pointer list-none font-bold text-slate-950\">\r\n            Thang máy tải hàng có chở người được không?\r\n          </summary>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Thang máy tải hàng thông thường được thiết kế để vận chuyển hàng hóa. Nếu có nhu cầu người đi kèm hàng, công trình cần được tư vấn dòng thang phù hợp với yêu cầu an toàn cao hơn.\r\n          </p>\r\n        </details>\r\n\r\n        <details class=\"group rounded-2xl border border-slate-200 bg-white p-5\">\r\n          <summary class=\"cursor-pointer list-none font-bold text-slate-950\">\r\n            Thang máy tải hàng phù hợp với tải trọng bao nhiêu?\r\n          </summary>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Tải trọng thang máy tải hàng sẽ được thiết kế theo nhu cầu thực tế của từng công trình, phụ thuộc vào loại hàng hóa, khối lượng vận chuyển mỗi lượt và tần suất sử dụng.\r\n          </p>\r\n        </details>\r\n\r\n        <details class=\"group rounded-2xl border border-slate-200 bg-white p-5\">\r\n          <summary class=\"cursor-pointer list-none font-bold text-slate-950\">\r\n            Giá thang máy tải hàng phụ thuộc vào yếu tố nào?\r\n          </summary>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Giá thang máy tải hàng phụ thuộc vào tải trọng, kích thước cabin, số điểm dừng, loại cửa, vật liệu hoàn thiện, hiện trạng công trình, yêu cầu kỹ thuật và phạm vi lắp đặt.\r\n          </p>\r\n        </details>\r\n\r\n        <details class=\"group rounded-2xl border border-slate-200 bg-white p-5\">\r\n          <summary class=\"cursor-pointer list-none font-bold text-slate-950\">\r\n            Có thể lắp thang máy tải hàng cho công trình đã xây xong không?\r\n          </summary>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Có thể, nhưng cần khảo sát kỹ vị trí lắp đặt, kết cấu chịu lực, hướng vận chuyển và không gian thi công để đề xuất phương án phù hợp với hiện trạng công trình.\r\n          </p>\r\n        </details>\r\n\r\n        <details class=\"group rounded-2xl border border-slate-200 bg-white p-5\">\r\n          <summary class=\"cursor-pointer list-none font-bold text-slate-950\">\r\n            Thang máy tải hàng có cần bảo trì định kỳ không?\r\n          </summary>\r\n          <p class=\"mt-3 leading-7 text-slate-700\">\r\n            Có. Thang máy tải hàng cần được kiểm tra và bảo trì định kỳ để đảm bảo vận hành ổn định, an toàn, hạn chế hư hỏng và kéo dài tuổi thọ thiết bị.\r\n          </p>\r\n        </details>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <!-- CTA -->\r\n  <div id=\"tu-van\" class=\"bg-red-700\">\r\n    <div class=\"mx-auto grid max-w-7xl grid-cols-1 items-center gap-8 px-5 py-14 md:grid-cols-2 md:px-8\">\r\n      <div>\r\n        <h2 class=\"text-3xl font-bold text-white\">\r\n          Cần tư vấn thang máy tải hàng cho kho xưởng, cửa hàng hoặc công trình của bạn?\r\n        </h2>\r\n        <p class=\"mt-4 leading-8 text-red-50\">\r\n          HQT Elevator sẽ khảo sát hiện trạng, tư vấn tải trọng, kích thước cabin, phương án kỹ thuật và báo giá phù hợp với nhu cầu vận chuyển hàng hóa thực tế.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"flex flex-col gap-4 sm:flex-row md:justify-end\">\r\n        <a href=\"tel:0835947868\" class=\"rounded-xl bg-white px-6 py-4 text-center font-semibold text-red-700 transition hover:bg-slate-100\">\r\n          Gọi tư vấn ngay\r\n        </a>\r\n        <a id=\"bao-gia\" href=\"/lien-he\" class=\"rounded-xl border border-white px-6 py-4 text-center font-semibold text-white transition hover:bg-white hover:text-red-700\">\r\n          Nhận báo giá\r\n        </a>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</section>\r\n\r\n<!-- FAQ Schema SEO/AEO -->\r\n<script type=\"application/ld+json\">\r\n{\r\n  \"@context\": \"https://schema.org\",\r\n  \"@type\": \"FAQPage\",\r\n  \"mainEntity\": [\r\n    {\r\n      \"@type\": \"Question\",\r\n      \"name\": \"Thang máy tải hàng có chở người được không?\",\r\n      \"acceptedAnswer\": {\r\n        \"@type\": \"Answer\",\r\n        \"text\": \"Thang máy tải hàng thông thường được thiết kế để vận chuyển hàng hóa. Nếu có nhu cầu người đi kèm hàng, công trình cần được tư vấn dòng thang phù hợp với yêu cầu an toàn cao hơn.\"\r\n      }\r\n    },\r\n    {\r\n      \"@type\": \"Question\",\r\n      \"name\": \"Thang máy tải hàng phù hợp với tải trọng bao nhiêu?\",\r\n      \"acceptedAnswer\": {\r\n        \"@type\": \"Answer\",\r\n        \"text\": \"Tải trọng thang máy tải hàng được thiết kế theo nhu cầu thực tế của từng công trình, phụ thuộc vào loại hàng hóa, khối lượng vận chuyển mỗi lượt và tần suất sử dụng.\"\r\n      }\r\n    },\r\n    {\r\n      \"@type\": \"Question\",\r\n      \"name\": \"Giá thang máy tải hàng phụ thuộc vào yếu tố nào?\",\r\n      \"acceptedAnswer\": {\r\n        \"@type\": \"Answer\",\r\n        \"text\": \"Giá thang máy tải hàng phụ thuộc vào tải trọng, kích thước cabin, số điểm dừng, loại cửa, vật liệu hoàn thiện, hiện trạng công trình, yêu cầu kỹ thuật và phạm vi lắp đặt.\"\r\n      }\r\n    },\r\n    {\r\n      \"@type\": \"Question\",\r\n      \"name\": \"Có thể lắp thang máy tải hàng cho công trình đã xây xong không?\",\r\n      \"acceptedAnswer\": {\r\n        \"@type\": \"Answer\",\r\n        \"text\": \"Có thể, nhưng cần khảo sát kỹ vị trí lắp đặt, kết cấu chịu lực, hướng vận chuyển và không gian thi công để đề xuất phương án phù hợp với hiện trạng công trình.\"\r\n      }\r\n    }\r\n  ]\r\n}\r\n</script>','uploads/apps/products/image/thang_may_tai_hang_brochure_HQT_500KB.jpg','',3000,0.4,3,0,0,0,30,0,'inox cao cấp',2,NULL,NULL,1,0,0,0,0,'published',0,0,'Thang Máy Tải Hàng HQT Elevator | Bền Bỉ, An Toàn, Tối Ưu Vận Chuyển','Thang máy tải hàng HQT Elevator phù hợp cho kho xưởng, nhà máy, siêu thị, cửa hàng, nhà hàng và trung tâm phân phối. Thiết kế chắc chắn, tải trọng linh hoạt, vận hành ổn định, tối ưu chi phí nhân công.','thang máy tải hàng, thang tải hàng, thang máy chở hàng, thang máy tải hàng kho xưởng, thang máy tải hàng nhà máy, thang tải thực phẩm, thang máy tải hàng HQT Elevator','2026-05-25 14:36:20.279906','2026-05-25 15:11:06.436594',1,3);
/*!40000 ALTER TABLE `apps_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_productcategory`
--

DROP TABLE IF EXISTS `apps_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_productcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `sorted_as` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_productcategory`
--

LOCK TABLES `apps_productcategory` WRITE;
/*!40000 ALTER TABLE `apps_productcategory` DISABLE KEYS */;
INSERT INTO `apps_productcategory` VALUES (1,'Thang Máy Gia Đình','thang-may-gia-dinh','TMGD','Thang máy gia đình HQT Elevator được thiết kế dành riêng cho nhà phố, biệt thự và không gian sống hiện đại. Sản phẩm kết hợp giữa tính an toàn, vận hành êm ái, tiết kiệm diện tích và thẩm mỹ sang trọng, giúp nâng tầm tiện nghi sống đồng thời phù hợp với nhiều phong cách kiến trúc gia đình.','','uploads/apps/categories/thang_may_gia_dinh_HQT_500KB_qoIoSI0.jpg',1,0,0,'2026-05-23 06:57:51.762892','2026-05-24 14:56:33.777041'),(2,'Thang Máy Công Cộng','thang-may-cong-cong','TMCC','Thang máy công cộng HQT Elevator được thiết kế dành cho các tòa nhà, văn phòng, trung tâm thương mại và khu vực có mật độ sử dụng cao. Sản phẩm nổi bật với kết cấu bền bỉ, vận hành ổn định, tải trọng linh hoạt và thiết kế hiện đại, mang đến trải nghiệm di chuyển an toàn, tiện nghi và chuyên nghiệp cho mọi công trình.','','uploads/apps/categories/thang_may_cong_cong_HQT_500KB_CasAEX8.jpg',1,0,0,'2026-05-23 06:57:51.762941','2026-05-24 14:56:27.956689'),(3,'Thang Máy Tải Hàng','thang-may-tai-hang','TMTH','Thang máy tải hàng HQT Elevator được thiết kế chuyên dụng cho kho xưởng, nhà máy, cửa hàng, siêu thị và các công trình cần vận chuyển hàng hóa thường xuyên. Sản phẩm có kết cấu chắc chắn, tải trọng linh hoạt, vận hành ổn định và an toàn, giúp tối ưu quy trình lưu chuyển hàng hóa, tiết kiệm thời gian và nâng cao hiệu suất vận hành.','','uploads/apps/categories/thang_may_tai_hang_HQT_500KB_HbX9MCx.jpg',1,0,0,'2026-05-23 06:57:51.762956','2026-05-24 14:56:41.805505'),(4,'Thang Máy Thủy Lực','thang-may-thuy-luc','TMTL','Thang máy thủy lực HQT Elevator là giải pháp di chuyển hiện đại, phù hợp cho nhà phố, biệt thự và các công trình cần tối ưu không gian lắp đặt. Sản phẩm vận hành êm ái, an toàn, không yêu cầu phòng máy truyền thống và dễ dàng tích hợp với nhiều phong cách kiến trúc sang trọng.','','uploads/apps/categories/thang_may_thuy_luc_HQT_500KB_1.jpg',1,0,0,'2026-05-23 06:57:51.762966','2026-05-24 15:07:38.089079');
/*!40000 ALTER TABLE `apps_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_productfaq`
--

DROP TABLE IF EXISTS `apps_productfaq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_productfaq` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `sorted_as` int DEFAULT '0',
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_productfaq_product_id` (`product_id`),
  CONSTRAINT `fk_productfaq_product` FOREIGN KEY (`product_id`) REFERENCES `apps_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_productfaq`
--

LOCK TABLES `apps_productfaq` WRITE;
/*!40000 ALTER TABLE `apps_productfaq` DISABLE KEYS */;
INSERT INTO `apps_productfaq` VALUES (1,'Thang máy có tốn điện không?','Không đáng kể, trung bình 300.000 – 500.000đ/tháng.',NULL,1,0,1),(2,'Thời gian lắp đặt bao lâu?','Khoảng 30–45 ngày sản xuất và 5–7 ngày lắp đặt.',NULL,1,0,1),(3,'Sản phẩm này có nhiều người sử dụng chưa?','Tính tới thời điểm hiện tại sản phẩm được sử dụng cho hơn 100 công trình rồi ạ',NULL,1,0,1);
/*!40000 ALTER TABLE `apps_productfaq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_productfeature`
--

DROP TABLE IF EXISTS `apps_productfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_productfeature` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `sorted_as` int DEFAULT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `apps_productfeature_product_id_5156a140_fk_apps_product_id` (`product_id`),
  CONSTRAINT `apps_productfeature_product_id_5156a140_fk_apps_product_id` FOREIGN KEY (`product_id`) REFERENCES `apps_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_productfeature`
--

LOCK TABLES `apps_productfeature` WRITE;
/*!40000 ALTER TABLE `apps_productfeature` DISABLE KEYS */;
INSERT INTO `apps_productfeature` VALUES (1,'An Toàn Chuẩn Mực','Hệ thống phanh khẩn cấp 3 lớp, cảm biến an toàn toàn diện','fa-solid fa-shield-halved',1,1,1),(2,'Tiết Kiệm Điện','Công nghệ tiết kiệm năng lượng giảm chi phí tới 30%','fa-solid fa-bolt',1,2,1),(3,'Hoạt Động Êm Ái','Thiết kế chống rung toàn bộ, hoạt động hoàn toàn lặng','fa-solid fa-volume-xmark',1,3,1),(4,'Thiết Kế Sang Trọng','Kính tròn cao cấp tạo không gian sống toàn cảnh','fa-solid fa-house',1,4,1),(5,'Dễ Bảo Dưỡng','Linh kiện dễ thay thế, bảo dưỡng đơn giản','fa-solid fa-gear',1,5,1),(6,'Hỗ Trợ 24/7','Đội hỗ trợ kỹ thuật sẵn sàng 24/7','fa-solid fa-headset',1,6,1);
/*!40000 ALTER TABLE `apps_productfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_productgallery`
--

DROP TABLE IF EXISTS `apps_productgallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_productgallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorted_as` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `apps_productgallery_product_id_3995753f_fk_apps_product_id` (`product_id`),
  CONSTRAINT `apps_productgallery_product_id_3995753f_fk_apps_product_id` FOREIGN KEY (`product_id`) REFERENCES `apps_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_productgallery`
--

LOCK TABLES `apps_productgallery` WRITE;
/*!40000 ALTER TABLE `apps_productgallery` DISABLE KEYS */;
INSERT INTO `apps_productgallery` VALUES (1,'uploads/apps/products/galleries/thang-may-gia-dinh--giai-phap-toan-diencho-nha-pho_7.png',0,'2026-05-23 16:32:11.179976',2),(2,'uploads/apps/products/galleries/thang-may-gia-dinh--giai-phap-toan-diencho-nha-pho_3.png',0,'2026-05-23 16:33:17.466303',2),(3,'uploads/apps/products/galleries/thang-may-gia-dinh--giai-phap-toan-diencho-nha-pho_4.png',0,'2026-05-23 16:33:47.599208',2),(4,'uploads/apps/products/galleries/thang-may-gia-dinh--giai-phap-toan-diencho-nha-pho_2.png',0,'2026-05-23 16:33:47.603288',2),(5,'uploads/apps/products/galleries/thang-may-gia-dinh--giai-phap-toan-diencho-nha-pho_5.png',0,'2026-05-23 16:34:10.863395',2),(6,'uploads/apps/products/galleries/thang-may-gia-dinh--giai-phap-toan-diencho-nha-pho_6.png',0,'2026-05-23 16:34:10.868233',2),(7,'uploads/apps/products/galleries/thang-may-gia-dinh--giai-phap-toan-diencho-nha-pho.png',0,'2026-05-23 16:34:18.607597',2),(8,'uploads/apps/products/galleries/123.jpg',0,'2026-05-24 09:28:36.507721',1),(9,'uploads/apps/products/galleries/123_aq17aQp.jpg',0,'2026-05-24 09:28:36.510284',1),(10,'uploads/apps/products/galleries/123_3zalEWV.jpg',0,'2026-05-24 09:28:36.513978',1),(11,'uploads/apps/products/galleries/123_tVz2Iqo.jpg',0,'2026-05-24 09:28:36.516355',1),(12,'uploads/apps/products/galleries/thang_may_tai_hang_HQT_1_500KB.jpg',2,'2026-05-25 15:10:33.767895',4),(13,'uploads/apps/products/galleries/thang_may_tai_hang_HQT_2_500KB.jpg',3,'2026-05-25 15:10:33.771575',4),(14,'uploads/apps/products/galleries/thang_may_tai_hang_HQT_3_500KB.jpg',1,'2026-05-25 15:10:33.773697',4),(15,'uploads/apps/products/galleries/thang_may_tai_hang_HQT_6_500KB.jpg',4,'2026-05-25 15:10:33.778233',4);
/*!40000 ALTER TABLE `apps_productgallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_productreview`
--

DROP TABLE IF EXISTS `apps_productreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_productreview` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `reviewer_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `is_verified` tinyint(1) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `helpful_count` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `apps_produc_product_a23948_idx` (`product_id`),
  KEY `apps_produc_is_appr_6ce936_idx` (`is_approved`),
  CONSTRAINT `apps_productreview_product_id_3a1a79bf_fk_apps_product_id` FOREIGN KEY (`product_id`) REFERENCES `apps_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_productreview`
--

LOCK TABLES `apps_productreview` WRITE;
/*!40000 ALTER TABLE `apps_productreview` DISABLE KEYS */;
/*!40000 ALTER TABLE `apps_productreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_solution`
--

DROP TABLE IF EXISTS `apps_solution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_solution` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `alias` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `icon` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT NULL,
  `sorted_as` int unsigned DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  CONSTRAINT `apps_solution_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_solution`
--

LOCK TABLES `apps_solution` WRITE;
/*!40000 ALTER TABLE `apps_solution` DISABLE KEYS */;
INSERT INTO `apps_solution` VALUES (1,'Nhà phố, biệt thự','Giải pháp cho Biệt thự & Nhà phố xây mới','giai-phap-cho-bit-th-nha-ph-xay-mi','Đồng bộ thiết kế thang máy ngay từ bản vẽ kiến trúc ban đầu. Giúp tối ưu vị trí hố thang, hài hòa tuyệt đối với nội thất và phong thủy của ngôi nhà.','<svg class=\"w-5 h-5 text-gray-300 transition\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6\"></path></svg>','','uploads/apps/products/image/giai-phap-thang_may_nha_pho_biet_thu_653x401_duoi_500kb.jpg',1,1,0,'2026-05-25 17:16:11.662298','2026-05-26 13:58:47.047410'),(2,'Cải tạo, nâng cấp','Lắp đặt thang máy cho nhà cải tạo','lp-djt-thang-may-cho-nha-ci-to','Giải quyết triệt để bài toán không gian hẹp, không cần đào sâu hố pít hay nâng cao tầng trên cùng (OH). Khung thép chịu lực độc lập không phá vỡ kết cấu hiện trạng.','<svg class=\"w-5 h-5 text-gray-300 transition\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z\"></path><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"M15 12a3 3 0 11-6 0 3 3 0 016 0z\"></path></svg>','','uploads/apps/products/image/cai-tao-thang-may-gia-dnh.jpg',1,1,0,'2026-05-25 17:16:40.292011','2026-05-26 13:58:17.391668'),(3,'Người cao tuổi','Giải pháp thang máy an toàn cho gia đình có người cao tuổi','ngi-cao-tui','Hỗ trợ di chuyển nhẹ nhàng giữa các tầng, hạn chế nguy cơ té ngã khi sử dụng cầu thang bộ. Vận hành êm ái, dễ sử dụng, mang lại sự an tâm cho cả gia đình trong sinh hoạt hằng ngày.','<svg class=\"w-5 h-5 text-gray-300 transition\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z\"></path></svg>','','uploads/apps/products/image/không_gian_sống_hiện_đại_và_sang_trọng_under500kb.jpg',1,1,0,'2026-05-25 17:16:58.439515','2026-05-26 13:58:53.170063'),(4,'Thẩm mỹ & phong thủy','Giải pháp thang máy hài hòa thẩm mỹ & phong thủy','thm-m-phong-thy','Thiết kế thang máy như một phần của nội thất tổng thể, giúp nâng tầm không gian sống sang trọng và cân đối phong thủy theo kiến trúc từng ngôi nhà.','<svg class=\"w-5 h-5 text-gray-300 transition\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\"><path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"M5 3v4M3 5h4M6 17v4m-2-2h4m5-16l2.286 6.857L21 12l-5.714 2.143L13 21l-2.286-6.857L5 12l5.714-2.143L13 3z\"></path></svg>','','uploads/apps/products/image/thang-may-gia-dinh-phong-thuy.jpg',1,1,0,'2026-05-25 17:17:20.767667','2026-05-26 13:59:08.649172');
/*!40000 ALTER TABLE `apps_solution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_solutionfeature`
--

DROP TABLE IF EXISTS `apps_solutionfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_solutionfeature` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `sorted_as` int DEFAULT NULL,
  `solution_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `apps_solutionfeature_solution_id_2cb455f7_fk_apps_solution_id` (`solution_id`),
  CONSTRAINT `apps_solutionfeature_solution_id_2cb455f7_fk_apps_solution_id` FOREIGN KEY (`solution_id`) REFERENCES `apps_solution` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_solutionfeature`
--

LOCK TABLES `apps_solutionfeature` WRITE;
/*!40000 ALTER TABLE `apps_solutionfeature` DISABLE KEYS */;
INSERT INTO `apps_solutionfeature` VALUES (1,'Linh hoạt kích thước, tải trọng từ 250kg đến 630kg.',NULL,NULL,1,0,1),(2,'Đa dạng vật liệu cabin: Inox hoa văn, vân gỗ, kính cường lực.',NULL,NULL,1,0,1),(3,'Hố pit siêu nông, chỉ từ 300mm.',NULL,NULL,1,0,2),(4,'Thi công nhanh gọn trong 10 - 15 ngày, hạn chế tiếng ồn.',NULL,NULL,1,0,2),(5,'Trang bị cảm biến an toàn, tự động cứu hộ khi mất điện.',NULL,NULL,1,0,3),(6,'Bảng điều khiển đơn giản, phù hợp cho người lớn tuổi sử dụng.',NULL,NULL,1,0,3),(7,'Tùy chọn màu sắc, vật liệu và ánh sáng theo phong cách nội thất.',NULL,NULL,1,0,4),(8,'Tối ưu vị trí lắp đặt, hướng cửa và kích thước theo phong thủy.',NULL,NULL,1,0,4);
/*!40000 ALTER TABLE `apps_solutionfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'cms_superuser'),(2,'cms_user');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add captcha store',1,'add_captchastore'),(2,'Can change captcha store',1,'change_captchastore'),(3,'Can delete captcha store',1,'delete_captchastore'),(4,'Can view captcha store',1,'view_captchastore'),(5,'Can add kv store',2,'add_kvstore'),(6,'Can change kv store',2,'change_kvstore'),(7,'Can delete kv store',2,'delete_kvstore'),(8,'Can view kv store',2,'view_kvstore'),(9,'Can add log entry',3,'add_logentry'),(10,'Can change log entry',3,'change_logentry'),(11,'Can delete log entry',3,'delete_logentry'),(12,'Can view log entry',3,'view_logentry'),(13,'Can add permission',5,'add_permission'),(14,'Can change permission',5,'change_permission'),(15,'Can delete permission',5,'delete_permission'),(16,'Can view permission',5,'view_permission'),(17,'Can add group',4,'add_group'),(18,'Can change group',4,'change_group'),(19,'Can delete group',4,'delete_group'),(20,'Can view group',4,'view_group'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add content type',7,'add_contenttype'),(26,'Can change content type',7,'change_contenttype'),(27,'Can delete content type',7,'delete_contenttype'),(28,'Can view content type',7,'view_contenttype'),(29,'Can add session',8,'add_session'),(30,'Can change session',8,'change_session'),(31,'Can delete session',8,'delete_session'),(32,'Can view session',8,'view_session'),(33,'Can add Content Page',15,'add_page'),(34,'Can change Content Page',15,'change_page'),(35,'Can delete Content Page',15,'delete_page'),(36,'Can view Content Page',15,'view_page'),(37,'Can add Meta object',13,'add_metaobject'),(38,'Can change Meta object',13,'change_metaobject'),(39,'Can delete Meta object',13,'delete_metaobject'),(40,'Can view Meta object',13,'view_metaobject'),(41,'Can add Website Setting',16,'add_project'),(42,'Can change Website Setting',16,'change_project'),(43,'Can delete Website Setting',16,'delete_project'),(44,'Can view Website Setting',16,'view_project'),(45,'Can add Marketing claim',12,'add_marketingclaim'),(46,'Can change Marketing claim',12,'change_marketingclaim'),(47,'Can delete Marketing claim',12,'delete_marketingclaim'),(48,'Can view Marketing claim',12,'view_marketingclaim'),(49,'Can add Landing Page',11,'add_landing'),(50,'Can change Landing Page',11,'change_landing'),(51,'Can delete Landing Page',11,'delete_landing'),(52,'Can view Landing Page',11,'view_landing'),(53,'Can add Constant',10,'add_constant'),(54,'Can change Constant',10,'change_constant'),(55,'Can delete Constant',10,'delete_constant'),(56,'Can view Constant',10,'view_constant'),(57,'Can add Branch',9,'add_branch'),(58,'Can change Branch',9,'change_branch'),(59,'Can delete Branch',9,'delete_branch'),(60,'Can view Branch',9,'view_branch'),(61,'Can add URL Redirect',17,'add_redirection'),(62,'Can change URL Redirect',17,'change_redirection'),(63,'Can delete URL Redirect',17,'delete_redirection'),(64,'Can view URL Redirect',17,'view_redirection'),(65,'Can add Social network',18,'add_socialnetwork'),(66,'Can change Social network',18,'change_socialnetwork'),(67,'Can delete Social network',18,'delete_socialnetwork'),(68,'Can view Social network',18,'view_socialnetwork'),(69,'Can add Language Translation',19,'add_translation'),(70,'Can change Language Translation',19,'change_translation'),(71,'Can delete Language Translation',19,'delete_translation'),(72,'Can view Language Translation',19,'view_translation'),(73,'Can add Operating hour',14,'add_operatinghour'),(74,'Can change Operating hour',14,'change_operatinghour'),(75,'Can delete Operating hour',14,'delete_operatinghour'),(76,'Can view Operating hour',14,'view_operatinghour'),(77,'Can add Background',21,'add_background'),(78,'Can change Background',21,'change_background'),(79,'Can delete Background',21,'delete_background'),(80,'Can view Background',21,'view_background'),(81,'Can add Article Category',22,'add_category'),(82,'Can change Article Category',22,'change_category'),(83,'Can delete Article Category',22,'delete_category'),(84,'Can view Article Category',22,'view_category'),(85,'Can add FAQ',23,'add_faq'),(86,'Can change FAQ',23,'change_faq'),(87,'Can delete FAQ',23,'delete_faq'),(88,'Can view FAQ',23,'view_faq'),(89,'Can add faq answer',24,'add_faqanswer'),(90,'Can change faq answer',24,'change_faqanswer'),(91,'Can delete faq answer',24,'delete_faqanswer'),(92,'Can view faq answer',24,'view_faqanswer'),(93,'Can add Inner Page Background',25,'add_innerbackground'),(94,'Can change Inner Page Background',25,'change_innerbackground'),(95,'Can delete Inner Page Background',25,'delete_innerbackground'),(96,'Can view Inner Page Background',25,'view_innerbackground'),(97,'Can add Contact Inquiry',26,'add_inquiry'),(98,'Can change Contact Inquiry',26,'change_inquiry'),(99,'Can delete Contact Inquiry',26,'delete_inquiry'),(100,'Can view Contact Inquiry',26,'view_inquiry'),(101,'Can add Partner',27,'add_partner'),(102,'Can change Partner',27,'change_partner'),(103,'Can delete Partner',27,'delete_partner'),(104,'Can view Partner',27,'view_partner'),(105,'Can add Popup Banner',28,'add_popup'),(106,'Can change Popup Banner',28,'change_popup'),(107,'Can delete Popup Banner',28,'delete_popup'),(108,'Can view Popup Banner',28,'view_popup'),(109,'Can add Article Tag',29,'add_tag'),(110,'Can change Article Tag',29,'change_tag'),(111,'Can delete Article Tag',29,'delete_tag'),(112,'Can view Article Tag',29,'view_tag'),(113,'Can add Article',20,'add_article'),(114,'Can change Article',20,'change_article'),(115,'Can delete Article',20,'delete_article'),(116,'Can view Article',20,'view_article'),(117,'Can add Testimonial',30,'add_testimonial'),(118,'Can change Testimonial',30,'change_testimonial'),(119,'Can delete Testimonial',30,'delete_testimonial'),(120,'Can view Testimonial',30,'view_testimonial'),(121,'Can add Department',32,'add_department'),(122,'Can change Department',32,'change_department'),(123,'Can delete Department',32,'delete_department'),(124,'Can view Department',32,'view_department'),(125,'Can add Job',33,'add_job'),(126,'Can change Job',33,'change_job'),(127,'Can delete Job',33,'delete_job'),(128,'Can view Job',33,'view_job'),(129,'Can add Applicant',31,'add_applicant'),(130,'Can change Applicant',31,'change_applicant'),(131,'Can delete Applicant',31,'delete_applicant'),(132,'Can view Applicant',31,'view_applicant'),(133,'Can add Portfolio Category',35,'add_portfoliocategory'),(134,'Can change Portfolio Category',35,'change_portfoliocategory'),(135,'Can delete Portfolio Category',35,'delete_portfoliocategory'),(136,'Can view Portfolio Category',35,'view_portfoliocategory'),(137,'Can add Product Category',38,'add_productcategory'),(138,'Can change Product Category',38,'change_productcategory'),(139,'Can delete Product Category',38,'delete_productcategory'),(140,'Can view Product Category',38,'view_productcategory'),(141,'Can add Portfolio',34,'add_portfolio'),(142,'Can change Portfolio',34,'change_portfolio'),(143,'Can delete Portfolio',34,'delete_portfolio'),(144,'Can view Portfolio',34,'view_portfolio'),(145,'Can add Portfolio Image',36,'add_portfoliogallery'),(146,'Can change Portfolio Image',36,'change_portfoliogallery'),(147,'Can delete Portfolio Image',36,'delete_portfoliogallery'),(148,'Can view Portfolio Image',36,'view_portfoliogallery'),(149,'Can add Product',37,'add_product'),(150,'Can change Product',37,'change_product'),(151,'Can delete Product',37,'delete_product'),(152,'Can view Product',37,'view_product'),(153,'Can add Product Feature',39,'add_productfeature'),(154,'Can change Product Feature',39,'change_productfeature'),(155,'Can delete Product Feature',39,'delete_productfeature'),(156,'Can view Product Feature',39,'view_productfeature'),(157,'Can add Product Gallery',40,'add_productgallery'),(158,'Can change Product Gallery',40,'change_productgallery'),(159,'Can delete Product Gallery',40,'delete_productgallery'),(160,'Can view Product Gallery',40,'view_productgallery'),(161,'Can add Product Review',41,'add_productreview'),(162,'Can change Product Review',41,'change_productreview'),(163,'Can delete Product Review',41,'delete_productreview'),(164,'Can view Product Review',41,'view_productreview'),(165,'Can add Banner',42,'add_banner'),(166,'Can change Banner',42,'change_banner'),(167,'Can delete Banner',42,'delete_banner'),(168,'Can view Banner',42,'view_banner'),(169,'Can add Product FAQ',43,'add_productfaq'),(170,'Can change Product FAQ',43,'change_productfaq'),(171,'Can delete Product FAQ',43,'delete_productfaq'),(172,'Can view Product FAQ',43,'view_productfaq'),(173,'Can add Solution',44,'add_solution'),(174,'Can change Solution',44,'change_solution'),(175,'Can delete Solution',44,'delete_solution'),(176,'Can view Solution',44,'view_solution'),(177,'Can add Solution Feature',45,'add_solutionfeature'),(178,'Can change Solution Feature',45,'change_solutionfeature'),(179,'Can delete Solution Feature',45,'delete_solutionfeature'),(180,'Can view Solution Feature',45,'view_solutionfeature'),(181,'Can add benefit',46,'add_benefit'),(182,'Can change benefit',46,'change_benefit'),(183,'Can delete benefit',46,'delete_benefit'),(184,'Can view benefit',46,'view_benefit');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1200000$zTIxuvZKQJhZWsScd218Ew$gELlLVcQcaaB9a/eQd+xnHTUnM7vL09sua5E5qsSC4g=','2026-05-27 04:17:39.155398',1,'admin','','','admin@example.com',1,1,'2026-05-23 06:57:44.857315');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captcha_captchastore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashkey` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_article`
--

DROP TABLE IF EXISTS `cms_app_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_article` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title_vi` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_vi` longtext COLLATE utf8mb4_unicode_ci,
  `content_vi` longtext COLLATE utf8mb4_unicode_ci,
  `slug_vi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visited_as` int unsigned NOT NULL,
  `sorted_as` int unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `author` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_app_article_project_id_bfe75438_fk_cms_engine_project_id` (`project_id`),
  KEY `cms_app_article_slug_vi_4e12434e` (`slug_vi`),
  CONSTRAINT `cms_app_article_project_id_bfe75438_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `cms_app_article_chk_1` CHECK ((`visited_as` >= 0)),
  CONSTRAINT `cms_app_article_chk_2` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_article`
--

LOCK TABLES `cms_app_article` WRITE;
/*!40000 ALTER TABLE `cms_app_article` DISABLE KEYS */;
INSERT INTO `cms_app_article` VALUES (1,'Giải pháp thang máy an toàn cho công trình hiện đại','Tổng quan các giải pháp an toàn trong hệ thống thang máy.','<!doctype html>\r\n<html lang=\"vi\">\r\n<head>\r\n  <meta charset=\"UTF-8\" />\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n  <title>Giải pháp thang máy an toàn cho công trình hiện đại | HQT Elevator</title>\r\n  <meta name=\"description\" content=\"Tìm hiểu giải pháp thang máy an toàn cho công trình hiện đại: tiêu chuẩn an toàn, thiết bị bảo vệ, cảm biến cửa, cứu hộ tự động, thiết kế hố thang, bảo trì và cách chọn đơn vị lắp đặt uy tín.\" />\r\n  <meta name=\"keywords\" content=\"giải pháp thang máy an toàn, thang máy an toàn, thang máy công trình hiện đại, thang máy gia đình an toàn, lắp đặt thang máy, bảo trì thang máy, HQT Elevator\" />\r\n  <script src=\"https://cdn.tailwindcss.com\"></script>\r\n  <script type=\"application/ld+json\">\r\n  {\r\n    \"@context\": \"https://schema.org\",\r\n    \"@type\": \"FAQPage\",\r\n    \"mainEntity\": [\r\n      {\r\n        \"@type\": \"Question\",\r\n        \"name\": \"Thế nào là giải pháp thang máy an toàn cho công trình hiện đại?\",\r\n        \"acceptedAnswer\": {\r\n          \"@type\": \"Answer\",\r\n          \"text\": \"Giải pháp thang máy an toàn là sự kết hợp giữa thiết kế kỹ thuật đúng chuẩn, thiết bị bảo vệ đa lớp, cảm biến cửa, hệ thống cứu hộ tự động, kiểm định, bảo trì định kỳ và đơn vị lắp đặt có năng lực.\"\r\n        }\r\n      },\r\n      {\r\n        \"@type\": \"Question\",\r\n        \"name\": \"Thang máy hiện đại cần những tính năng an toàn nào?\",\r\n        \"acceptedAnswer\": {\r\n          \"@type\": \"Answer\",\r\n          \"text\": \"Một thang máy hiện đại nên có cảm biến cửa, khóa cửa tầng, bộ khống chế vượt tốc, phanh an toàn, cứu hộ tự động khi mất điện, chuông báo khẩn cấp, liên lạc nội bộ, đèn khẩn cấp và quy trình bảo trì rõ ràng.\"\r\n        }\r\n      },\r\n      {\r\n        \"@type\": \"Question\",\r\n        \"name\": \"Nhà phố và biệt thự nên chọn thang máy an toàn như thế nào?\",\r\n        \"acceptedAnswer\": {\r\n          \"@type\": \"Answer\",\r\n          \"text\": \"Nhà phố và biệt thự nên chọn thang máy phù hợp với kết cấu, tải trọng sử dụng, diện tích hố thang, số tầng, đối tượng sử dụng và dịch vụ bảo trì sau lắp đặt. Với gia đình có người lớn tuổi, nên ưu tiên vận hành êm, cabin dễ thao tác và hệ thống cứu hộ tự động.\"\r\n        }\r\n      }\r\n    ]\r\n  }\r\n  </script>\r\n</head>\r\n<body class=\"bg-neutral-50 text-neutral-800 font-sans leading-relaxed\">\r\n  <article class=\"max-w-5xl mx-auto px-5 py-10 md:py-16\">\r\n    <header class=\"mb-10\">\r\n      <p class=\"text-sm tracking-[0.25em] uppercase text-red-700 font-semibold mb-4\">HQT Elevator</p>\r\n      <p class=\"text-lg text-neutral-600 max-w-3xl\">\r\n        Trong các công trình hiện đại, thang máy không chỉ là phương tiện di chuyển giữa các tầng mà còn là một phần quan trọng của kiến trúc, tiện nghi và giá trị sống. Một hệ thang máy an toàn cần được tính toán từ thiết kế, lựa chọn thiết bị, thi công, kiểm định đến bảo trì lâu dài.\r\n      </p>\r\n    </header>\r\n\r\n    <section class=\"bg-white border border-neutral-200 rounded-2xl p-6 md:p-8 shadow-sm mb-10\">\r\n      <h2 class=\"text-2xl md:text-3xl font-bold text-neutral-950 mb-4\">Tóm tắt nhanh: Thang máy an toàn cần những gì?</h2>\r\n      <p class=\"mb-4\">\r\n        Một giải pháp thang máy an toàn cho công trình hiện đại không chỉ nằm ở việc chọn thương hiệu nổi tiếng hay cabin đẹp. Đó là một hệ thống tổng thể bao gồm thiết kế hố thang đúng kỹ thuật, thiết bị đạt tiêu chuẩn, cảm biến bảo vệ đa lớp, hệ thống cứu hộ tự động, quy trình lắp đặt chuẩn, kiểm định trước khi vận hành và bảo trì định kỳ trong suốt vòng đời sử dụng.\r\n      </p>\r\n      <p>\r\n        Với nhà phố, biệt thự, khách sạn mini, văn phòng, shophouse hoặc công trình cải tạo, yếu tố an toàn càng cần được ưu tiên vì người dùng có thể bao gồm trẻ nhỏ, người lớn tuổi, người khuyết tật hoặc khách hàng chưa quen sử dụng thang máy. Chọn đúng giải pháp ngay từ đầu giúp công trình vận hành ổn định, hạn chế rủi ro và tối ưu chi phí lâu dài.\r\n      </p>\r\n    </section>\r\n\r\n    <nav class=\"bg-neutral-950 text-white rounded-2xl p-6 md:p-8 mb-12\">\r\n      <h2 class=\"text-xl font-bold mb-4\">Mục lục bài viết</h2>\r\n      <ol class=\"grid md:grid-cols-2 gap-3 list-decimal list-inside text-neutral-200\">\r\n        <li><a class=\"hover:text-red-300\" href=\"#vai-tro\">Vai trò của thang máy an toàn trong công trình hiện đại</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#tieu-chuan\">Các tiêu chí đánh giá thang máy an toàn</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#thiet-bi\">Hệ thống thiết bị an toàn cần có</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#thiet-ke\">Thiết kế hố thang và cabin an toàn</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#lap-dat\">Thi công, lắp đặt và kiểm định</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#bao-tri\">Bảo trì thang máy định kỳ</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#cong-trinh\">Giải pháp theo từng loại công trình</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#lua-chon\">Cách chọn đơn vị thang máy uy tín</a></li>\r\n      </ol>\r\n    </nav>\r\n\r\n    <section id=\"vai-tro\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Vai trò của thang máy an toàn trong công trình hiện đại</h2>\r\n      <p class=\"mb-4\">\r\n        Công trình hiện đại ngày nay không chỉ yêu cầu đẹp về kiến trúc mà còn phải thuận tiện, an toàn và bền vững trong quá trình sử dụng. Thang máy là thiết bị có tần suất vận hành lặp lại mỗi ngày, liên quan trực tiếp đến con người, kết cấu công trình và hệ thống điện. Vì vậy, an toàn thang máy không phải là một hạng mục phụ, mà là tiêu chí cốt lõi cần được đặt lên hàng đầu.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Đối với nhà phố và biệt thự, thang máy giúp người lớn tuổi di chuyển nhẹ nhàng giữa các tầng, hạn chế nguy cơ té ngã khi sử dụng cầu thang bộ. Đối với công trình thương mại như văn phòng, showroom, khách sạn mini hoặc shophouse, thang máy an toàn giúp tăng trải nghiệm khách hàng, giảm rủi ro vận hành và thể hiện sự chuyên nghiệp của chủ đầu tư.\r\n      </p>\r\n      <p>\r\n        Một hệ thống thang máy được đầu tư đúng cách sẽ mang lại ba giá trị lớn: an tâm cho người sử dụng, ổn định cho công trình và tiết kiệm chi phí bảo trì sửa chữa về lâu dài. Ngược lại, nếu chọn thang máy chỉ dựa trên giá rẻ, bỏ qua tiêu chuẩn kỹ thuật hoặc dùng đơn vị lắp đặt thiếu năng lực, công trình có thể đối mặt với nhiều rủi ro như rung lắc, kẹt cửa, lỗi điều khiển, dừng tầng không chính xác hoặc phát sinh chi phí sửa chữa liên tục.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"tieu-chuan\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Các tiêu chí đánh giá một thang máy an toàn</h2>\r\n      <p class=\"mb-4\">\r\n        Để đánh giá một hệ thang máy có an toàn hay không, gia chủ và chủ đầu tư không nên chỉ nhìn vào vẻ ngoài của cabin. Một cabin đẹp chưa chắc đồng nghĩa với một hệ thống an toàn. Điều quan trọng nằm ở thiết kế kỹ thuật phía sau, chất lượng thiết bị, quy trình lắp đặt và năng lực bảo trì.\r\n      </p>\r\n      <div class=\"grid md:grid-cols-2 gap-5 my-8\">\r\n        <div class=\"bg-white border border-neutral-200 rounded-2xl p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">1. Thiết bị đạt chuẩn</h3>\r\n          <p>Máy kéo, tủ điều khiển, rail dẫn hướng, cáp tải, bộ giới hạn tốc độ, phanh an toàn, cửa tầng và hệ thống điện cần được lựa chọn đồng bộ, có nguồn gốc rõ ràng và phù hợp với tải trọng công trình.</p>\r\n        </div>\r\n        <div class=\"bg-white border border-neutral-200 rounded-2xl p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">2. Thiết kế đúng công năng</h3>\r\n          <p>Thang máy cần được thiết kế theo số tầng, mật độ sử dụng, đối tượng sử dụng, diện tích hố thang, chiều cao tầng trên cùng và điều kiện thi công thực tế.</p>\r\n        </div>\r\n        <div class=\"bg-white border border-neutral-200 rounded-2xl p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">3. Lắp đặt đúng kỹ thuật</h3>\r\n          <p>Quá trình lắp đặt cần được thực hiện bởi đội ngũ có chuyên môn, tuân thủ bản vẽ kỹ thuật, kiểm tra từng hạng mục trước khi chạy thử và nghiệm thu.</p>\r\n        </div>\r\n        <div class=\"bg-white border border-neutral-200 rounded-2xl p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">4. Bảo trì định kỳ</h3>\r\n          <p>Dù thiết bị tốt đến đâu, thang máy vẫn cần bảo trì đều đặn để phát hiện sớm hao mòn, lỗi kỹ thuật và đảm bảo hệ thống luôn vận hành ổn định.</p>\r\n        </div>\r\n      </div>\r\n      <p>\r\n        Một giải pháp an toàn đúng nghĩa là giải pháp kiểm soát rủi ro từ trước khi rủi ro xảy ra. Điều này đòi hỏi đơn vị thang máy phải tư vấn trung thực, khảo sát kỹ lưỡng và không cắt giảm những thiết bị bảo vệ quan trọng chỉ để giảm giá bán ban đầu.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"thiet-bi\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Hệ thống thiết bị an toàn cần có trong thang máy hiện đại</h2>\r\n      <p class=\"mb-4\">\r\n        Thang máy hiện đại được cấu thành từ nhiều lớp bảo vệ khác nhau. Mỗi thiết bị đảm nhiệm một vai trò riêng, nhưng khi kết hợp lại sẽ tạo thành hệ thống an toàn tổng thể cho người sử dụng.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">Cảm biến cửa thang máy</h3>\r\n      <p class=\"mb-4\">\r\n        Cảm biến cửa là lớp bảo vệ rất quan trọng, giúp nhận diện vật cản khi cửa cabin đóng lại. Với gia đình có trẻ nhỏ, người lớn tuổi hoặc công trình có nhiều khách sử dụng, cảm biến cửa giúp hạn chế nguy cơ va chạm, kẹt tay, kẹt đồ hoặc đóng cửa khi người dùng chưa bước vào hoàn toàn.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">Khóa cửa tầng</h3>\r\n      <p class=\"mb-4\">\r\n        Khóa cửa tầng đảm bảo cửa tầng chỉ mở khi cabin dừng đúng vị trí. Đây là một trong những thiết bị an toàn quan trọng nhất của thang máy. Nếu hệ thống khóa cửa tầng hoạt động không ổn định, rủi ro cho người sử dụng sẽ tăng cao. Vì vậy, thiết bị này cần được kiểm tra thường xuyên trong quá trình bảo trì.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">Bộ khống chế vượt tốc và phanh an toàn</h3>\r\n      <p class=\"mb-4\">\r\n        Bộ khống chế vượt tốc có nhiệm vụ phát hiện khi cabin di chuyển vượt quá tốc độ cho phép. Khi có bất thường, hệ thống phanh an toàn sẽ kích hoạt để giữ cabin trên rail dẫn hướng. Đây là lớp bảo vệ quan trọng giúp giảm thiểu rủi ro trong các tình huống kỹ thuật nghiêm trọng.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">Cứu hộ tự động khi mất điện</h3>\r\n      <p class=\"mb-4\">\r\n        Hệ thống cứu hộ tự động giúp đưa cabin về tầng gần nhất và mở cửa trong trường hợp mất điện đột ngột. Với thang máy gia đình, đây là tính năng rất cần thiết vì người sử dụng có thể là trẻ em, người cao tuổi hoặc người không có kinh nghiệm xử lý tình huống khẩn cấp.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">Chuông báo khẩn cấp, đèn khẩn cấp và liên lạc nội bộ</h3>\r\n      <p>\r\n        Trong trường hợp thang dừng bất thường, người bên trong cabin cần có phương tiện để gọi hỗ trợ. Chuông báo, đèn khẩn cấp và hệ thống liên lạc nội bộ giúp người dùng giữ bình tĩnh, liên hệ với bên ngoài và chờ đội kỹ thuật xử lý đúng quy trình.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"thiet-ke\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Thiết kế hố thang, cabin và không gian sử dụng an toàn</h2>\r\n      <p class=\"mb-4\">\r\n        An toàn thang máy bắt đầu từ bản vẽ kiến trúc. Nếu công trình được thiết kế hố thang đúng ngay từ đầu, quá trình lắp đặt sẽ thuận lợi hơn, thiết bị vận hành ổn định hơn và giảm nguy cơ phải sửa chữa kết cấu sau này. Với nhà xây mới, chủ đầu tư nên làm việc với đơn vị thang máy ngay từ giai đoạn thiết kế để xác định vị trí hố thang, kích thước cabin, hố pít, OH, tải trọng và phương án cấp điện.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Với nhà cải tạo, yếu tố an toàn càng cần được khảo sát kỹ. Không phải vị trí nào trong nhà cũng phù hợp để lắp thang máy. Đơn vị thi công cần đánh giá khả năng chịu lực, kết cấu hiện trạng, không gian vận chuyển thiết bị, khoảng cách với cầu thang bộ, giếng trời và ảnh hưởng đến sinh hoạt của gia đình trong quá trình thi công.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Cabin cũng cần được thiết kế phù hợp với người sử dụng. Với gia đình có người lớn tuổi, nên có tay vịn chắc chắn, sàn chống trượt, ánh sáng dễ chịu, bảng điều khiển rõ ràng và độ cao nút bấm thuận tiện. Với công trình thương mại, cabin cần chịu được tần suất sử dụng cao, dễ vệ sinh và có vật liệu bền bỉ.\r\n      </p>\r\n      <div class=\"bg-red-50 border-l-4 border-red-700 p-5 rounded-r-xl\">\r\n        <p class=\"font-semibold text-neutral-950\">Gợi ý quan trọng:</p>\r\n        <p>Không nên chờ đến khi xây gần xong mới tìm đơn vị thang máy. Việc đưa thang máy vào kế hoạch từ đầu giúp tối ưu chi phí, tránh sai lệch kích thước và đảm bảo an toàn kết cấu.</p>\r\n      </div>\r\n    </section>\r\n\r\n    <section id=\"lap-dat\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Thi công, lắp đặt và kiểm định: Ba bước không thể xem nhẹ</h2>\r\n      <p class=\"mb-4\">\r\n        Một bộ thang máy tốt vẫn có thể vận hành không ổn định nếu lắp đặt sai kỹ thuật. Vì vậy, thi công và lắp đặt là giai đoạn quyết định trực tiếp đến độ an toàn của hệ thống. Các hạng mục như lắp rail dẫn hướng, căn chỉnh cửa tầng, lắp máy kéo, đấu nối tủ điều khiển, kiểm tra cáp tải, cài đặt thông số vận hành và chạy thử đều cần được thực hiện chính xác.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Trong công trình hiện đại, đặc biệt là nhà phố và biệt thự có yêu cầu thẩm mỹ cao, đội ngũ lắp đặt còn phải phối hợp tốt với các bên nội thất, điện nước, xây dựng và kiến trúc. Nếu phối hợp kém, công trình có thể phát sinh lỗi như lệch cửa tầng, thiếu khoảng kỹ thuật, khó bảo trì hoặc ảnh hưởng đến hoàn thiện nội thất.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Sau lắp đặt, thang máy cần được chạy thử, kiểm tra tải, kiểm tra cứu hộ, kiểm tra cảm biến, kiểm tra cửa tầng và hoàn tất các thủ tục nghiệm thu, kiểm định theo quy định trước khi đưa vào sử dụng. Đây là bước quan trọng để xác nhận hệ thống đáp ứng yêu cầu an toàn vận hành.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"bao-tri\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Bảo trì thang máy định kỳ để duy trì an toàn lâu dài</h2>\r\n      <p class=\"mb-4\">\r\n        Thang máy là thiết bị cơ điện vận hành liên tục, vì vậy sau khi bàn giao, bảo trì định kỳ là yếu tố bắt buộc để duy trì an toàn. Trong quá trình sử dụng, các chi tiết như cáp, rail, cửa tầng, cảm biến, phanh, tủ điện, đèn cabin, nút bấm và hệ thống cứu hộ có thể bị hao mòn hoặc lệch chỉnh. Nếu không kiểm tra thường xuyên, lỗi nhỏ có thể trở thành lỗi lớn.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Một quy trình bảo trì chuyên nghiệp cần có lịch kiểm tra rõ ràng, biên bản sau mỗi lần bảo trì, danh sách hạng mục đã kiểm tra và khuyến nghị xử lý nếu phát hiện bất thường. Với công trình có tần suất sử dụng cao, chủ đầu tư nên chọn gói bảo trì phù hợp thay vì chỉ gọi kỹ thuật khi thang đã gặp sự cố.\r\n      </p>\r\n      <div class=\"grid md:grid-cols-3 gap-5 my-8\">\r\n        <div class=\"bg-white border border-neutral-200 rounded-2xl p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">Kiểm tra cơ khí</h3>\r\n          <p>Rail, cáp, puly, cửa tầng, cabin, phanh và các chi tiết chuyển động cần được theo dõi định kỳ.</p>\r\n        </div>\r\n        <div class=\"bg-white border border-neutral-200 rounded-2xl p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">Kiểm tra điện</h3>\r\n          <p>Tủ điều khiển, tín hiệu gọi tầng, cảm biến, hệ thống cứu hộ và nguồn điện cần được kiểm tra ổn định.</p>\r\n        </div>\r\n        <div class=\"bg-white border border-neutral-200 rounded-2xl p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">Kiểm tra trải nghiệm</h3>\r\n          <p>Độ êm, tiếng ồn, độ chính xác khi dừng tầng, tốc độ đóng mở cửa và ánh sáng cabin cần được đánh giá.</p>\r\n        </div>\r\n      </div>\r\n      <p>\r\n        Bảo trì không chỉ là sửa chữa. Bảo trì đúng nghĩa là phòng ngừa sự cố, kéo dài tuổi thọ thiết bị và giữ cho người sử dụng luôn an tâm trong mỗi lần di chuyển.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"cong-trinh\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Giải pháp thang máy an toàn theo từng loại công trình hiện đại</h2>\r\n      <p class=\"mb-4\">\r\n        Mỗi loại công trình có đặc điểm sử dụng khác nhau, vì vậy giải pháp thang máy cũng cần được thiết kế riêng. Không nên dùng một cấu hình chung cho mọi công trình, vì điều này có thể gây lãng phí hoặc không đáp ứng đủ nhu cầu an toàn thực tế.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">Nhà phố hiện đại</h3>\r\n      <p class=\"mb-4\">\r\n        Nhà phố thường có diện tích hạn chế, chiều ngang nhỏ và mật độ xây dựng cao. Giải pháp phù hợp là thang máy tiết kiệm diện tích, vận hành êm, không ảnh hưởng quá nhiều đến sinh hoạt gia đình. Vị trí lắp đặt có thể là giữa cầu thang bộ, cạnh giếng trời hoặc khu vực cuối nhà tùy hiện trạng.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">Biệt thự và villa</h3>\r\n      <p class=\"mb-4\">\r\n        Với biệt thự, thang máy không chỉ cần an toàn mà còn phải sang trọng, hài hòa với nội thất và kiến trúc tổng thể. Cabin có thể sử dụng inox cao cấp, kính, đá, gỗ, đèn trang trí hoặc phong cách tối giản. Tuy nhiên, dù thiết kế đẹp đến đâu, hệ thống an toàn vẫn phải được ưu tiên trước thẩm mỹ.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">Công trình cải tạo</h3>\r\n      <p class=\"mb-4\">\r\n        Công trình cải tạo thường gặp khó khăn về hố pít, chiều cao OH và khả năng can thiệp kết cấu. Do đó, cần khảo sát kỹ để chọn thang máy khung thép, thang kính, thang thủy lực hoặc thang có yêu cầu xây dựng linh hoạt. Mục tiêu là lắp đặt an toàn nhưng hạn chế phá vỡ kết cấu hiện trạng.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">Khách sạn mini, văn phòng và shophouse</h3>\r\n      <p>\r\n        Những công trình này có tần suất sử dụng cao hơn nhà ở thông thường. Vì vậy, cần ưu tiên tải trọng phù hợp, cửa thang bền, cabin dễ vệ sinh, hệ điều khiển ổn định và gói bảo trì phản hồi nhanh. An toàn trong nhóm công trình này không chỉ bảo vệ người dùng mà còn ảnh hưởng đến uy tín kinh doanh.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"lua-chon\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Cách chọn đơn vị cung cấp giải pháp thang máy an toàn</h2>\r\n      <p class=\"mb-4\">\r\n        Một đơn vị thang máy uy tín không chỉ bán thiết bị, mà phải có khả năng tư vấn giải pháp tổng thể. Từ khảo sát, thiết kế, báo giá, thi công, kiểm định, bàn giao đến bảo trì, mọi bước đều cần rõ ràng và có trách nhiệm. Gia chủ nên ưu tiên những đơn vị có kinh nghiệm thực tế, đội ngũ kỹ thuật riêng, quy trình minh bạch và cam kết bảo hành cụ thể.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Khi làm việc với nhà cung cấp, bạn nên yêu cầu tư vấn rõ về tải trọng, kích thước cabin, công nghệ vận hành, thiết bị an toàn, thời gian thi công, chính sách bảo hành, lịch bảo trì và chi phí phát sinh nếu có. Một báo giá rẻ nhưng thiếu thông tin kỹ thuật có thể tiềm ẩn nhiều rủi ro trong tương lai.\r\n      </p>\r\n      <p>\r\n        Đặc biệt, với công trình hiện đại có yêu cầu thẩm mỹ cao, đơn vị thang máy cần phối hợp tốt với kiến trúc sư và đội nội thất để đảm bảo thang không chỉ an toàn mà còn đẹp, đồng bộ và nâng tầm không gian sống.\r\n      </p>\r\n    </section>\r\n\r\n    <section class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Bảng checklist giải pháp thang máy an toàn</h2>\r\n      <div class=\"overflow-x-auto rounded-2xl border border-neutral-200 bg-white shadow-sm\">\r\n        <table class=\"w-full text-left text-sm md:text-base\">\r\n          <thead class=\"bg-neutral-950 text-white\">\r\n            <tr>\r\n              <th class=\"p-4\">Hạng mục</th>\r\n              <th class=\"p-4\">Cần kiểm tra</th>\r\n              <th class=\"p-4\">Mục tiêu an toàn</th>\r\n            </tr>\r\n          </thead>\r\n          <tbody class=\"divide-y divide-neutral-200\">\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Thiết kế</td>\r\n              <td class=\"p-4\">Vị trí hố thang, kích thước, tải trọng, hố pít, OH</td>\r\n              <td class=\"p-4\">Đảm bảo phù hợp kết cấu và nhu cầu sử dụng</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Thiết bị</td>\r\n              <td class=\"p-4\">Máy kéo, tủ điều khiển, cáp, rail, cảm biến, phanh</td>\r\n              <td class=\"p-4\">Vận hành ổn định, bảo vệ đa lớp</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Lắp đặt</td>\r\n              <td class=\"p-4\">Căn chỉnh rail, cửa tầng, đấu nối điện, chạy thử</td>\r\n              <td class=\"p-4\">Giảm lỗi kỹ thuật và rung lắc khi vận hành</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Kiểm định</td>\r\n              <td class=\"p-4\">Kiểm tra tải, cứu hộ, cảm biến, cửa, phanh</td>\r\n              <td class=\"p-4\">Đủ điều kiện đưa vào sử dụng</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Bảo trì</td>\r\n              <td class=\"p-4\">Lịch bảo trì, biên bản, phản hồi sự cố, thay thế linh kiện</td>\r\n              <td class=\"p-4\">Duy trì an toàn trong suốt vòng đời thang</td>\r\n            </tr>\r\n          </tbody>\r\n        </table>\r\n      </div>\r\n    </section>\r\n\r\n    <section class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Câu hỏi thường gặp về giải pháp thang máy an toàn</h2>\r\n      <div class=\"space-y-4\">\r\n        <details class=\"bg-white border border-neutral-200 rounded-xl p-5 shadow-sm\">\r\n          <summary class=\"font-bold cursor-pointer text-neutral-950\">Thang máy gia đình có an toàn cho người lớn tuổi không?</summary>\r\n          <p class=\"mt-3 text-neutral-700\">Có, nếu thang được thiết kế và lắp đặt đúng chuẩn. Gia đình có người lớn tuổi nên ưu tiên cabin vận hành êm, có tay vịn, sàn chống trượt, bảng điều khiển dễ nhìn và hệ thống cứu hộ tự động khi mất điện.</p>\r\n        </details>\r\n        <details class=\"bg-white border border-neutral-200 rounded-xl p-5 shadow-sm\">\r\n          <summary class=\"font-bold cursor-pointer text-neutral-950\">Công trình cải tạo có lắp thang máy an toàn được không?</summary>\r\n          <p class=\"mt-3 text-neutral-700\">Có. Tuy nhiên cần khảo sát kỹ hiện trạng để chọn giải pháp phù hợp như thang khung thép, thang kính, thang thủy lực hoặc thang có yêu cầu hố pít thấp. Việc khảo sát giúp hạn chế ảnh hưởng đến kết cấu cũ.</p>\r\n        </details>\r\n        <details class=\"bg-white border border-neutral-200 rounded-xl p-5 shadow-sm\">\r\n          <summary class=\"font-bold cursor-pointer text-neutral-950\">Bao lâu nên bảo trì thang máy một lần?</summary>\r\n          <p class=\"mt-3 text-neutral-700\">Tần suất bảo trì phụ thuộc vào loại thang và mức độ sử dụng. Với thang máy gia đình, nên duy trì lịch bảo trì định kỳ theo khuyến nghị của đơn vị cung cấp. Công trình sử dụng nhiều cần kiểm tra thường xuyên hơn.</p>\r\n        </details>\r\n        <details class=\"bg-white border border-neutral-200 rounded-xl p-5 shadow-sm\">\r\n          <summary class=\"font-bold cursor-pointer text-neutral-950\">Có nên chọn thang máy giá rẻ không?</summary>\r\n          <p class=\"mt-3 text-neutral-700\">Không nên chỉ chọn theo giá rẻ. Thang máy là thiết bị liên quan trực tiếp đến an toàn con người. Gia chủ nên đánh giá đồng thời thiết bị, năng lực lắp đặt, chính sách bảo hành, bảo trì và uy tín của đơn vị cung cấp.</p>\r\n        </details>\r\n      </div>\r\n    </section>\r\n\r\n    <section class=\"bg-gradient-to-br from-neutral-950 to-neutral-800 text-white rounded-3xl p-7 md:p-10\">\r\n      <h2 class=\"text-3xl font-bold mb-4\">Kết luận: An toàn là nền tảng của mọi công trình hiện đại</h2>\r\n      <p class=\"mb-4 text-neutral-200\">\r\n        Một công trình hiện đại không thể thiếu sự an toàn trong từng chi tiết vận hành. Với thang máy, an toàn không chỉ đến từ thiết bị tốt mà còn đến từ thiết kế đúng, lắp đặt chuẩn, kiểm định đầy đủ và bảo trì nghiêm túc. Đây là khoản đầu tư dài hạn cho sự an tâm của gia đình, khách hàng và giá trị bền vững của công trình.\r\n      </p>\r\n      <p class=\"mb-6 text-neutral-200\">\r\n        Nếu bạn đang xây mới, cải tạo nhà phố, hoàn thiện biệt thự hoặc đầu tư công trình thương mại, hãy lựa chọn giải pháp thang máy phù hợp ngay từ giai đoạn đầu. Một quyết định đúng hôm nay sẽ giúp công trình vận hành an toàn, êm ái và bền bỉ trong nhiều năm sau.\r\n      </p>\r\n      <a href=\"#\" class=\"inline-flex items-center justify-center rounded-full bg-red-700 px-6 py-3 font-semibold text-white hover:bg-red-800 transition\">\r\n        Nhận tư vấn giải pháp thang máy an toàn\r\n      </a>\r\n    </section>\r\n  </article>\r\n</body>\r\n</html>','giai-phap-thang-may-an-toan-cho-cong-trinh-hien-ai','','uploads/cms/articles/images/giai_phap_thang_may_an_toan_duoi_500kb.jpg',25,0,1,'Admin','2026-05-26','2026-05-23 06:57:53.425915','2026-05-26 14:34:23.527349',1),(2,'Các loại thang máy gia đình phổ biến 2026 | HQT Elevato','Việc hiểu rõ từng loại thang máy sẽ giúp gia chủ chọn đúng giải pháp: an toàn, phù hợp diện tích, tối ưu chi phí và hài hòa với thẩm mỹ tổng thể của ngôi nhà.','<!doctype html>\r\n<html lang=\"vi\">\r\n<head>\r\n  <meta charset=\"UTF-8\" />\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n  <title>Các loại thang máy gia đình phổ biến hiện nay | HQT Elevator</title>\r\n  <meta name=\"description\" content=\"Tìm hiểu các loại thang máy gia đình phổ biến: thang máy thủy lực, trục vít, cáp kéo, chân không, thang kính, thang liên doanh, nhập khẩu nguyên chiếc và cách chọn phù hợp cho nhà phố, biệt thự, cải tạo.\" />\r\n  <script src=\"https://cdn.tailwindcss.com\"></script>\r\n  <script type=\"application/ld+json\">\r\n  {\r\n    \"@context\": \"https://schema.org\",\r\n    \"@type\": \"FAQPage\",\r\n    \"mainEntity\": [\r\n      {\r\n        \"@type\": \"Question\",\r\n        \"name\": \"Có những loại thang máy gia đình nào phổ biến?\",\r\n        \"acceptedAnswer\": {\r\n          \"@type\": \"Answer\",\r\n          \"text\": \"Các loại thang máy gia đình phổ biến gồm thang máy cáp kéo, thang thủy lực, thang trục vít, thang chân không, thang kính, thang máy liên doanh và thang máy nhập khẩu nguyên chiếc. Mỗi loại phù hợp với nhu cầu, diện tích và ngân sách khác nhau.\"\r\n        }\r\n      },\r\n      {\r\n        \"@type\": \"Question\",\r\n        \"name\": \"Nhà cải tạo nên chọn loại thang máy nào?\",\r\n        \"acceptedAnswer\": {\r\n          \"@type\": \"Answer\",\r\n          \"text\": \"Nhà cải tạo thường phù hợp với thang máy trục vít, thủy lực, thang khung thép kính hoặc các dòng thang không cần hố pít sâu và không yêu cầu phòng máy lớn.\"\r\n        }\r\n      },\r\n      {\r\n        \"@type\": \"Question\",\r\n        \"name\": \"Thang máy gia đình loại nào tiết kiệm diện tích?\",\r\n        \"acceptedAnswer\": {\r\n          \"@type\": \"Answer\",\r\n          \"text\": \"Các dòng thang máy trục vít, thủy lực mini, thang kính khung thép và một số mẫu thang nhập khẩu nguyên chiếc thường tối ưu diện tích tốt, phù hợp nhà phố nhỏ hoặc biệt thự cải tạo.\"\r\n        }\r\n      }\r\n    ]\r\n  }\r\n  </script>\r\n</head>\r\n<body class=\"bg-neutral-50 text-neutral-800 font-sans leading-relaxed\">\r\n  <article class=\"max-w-5xl mx-auto px-5 py-10 md:py-16\">\r\n    <header class=\"mb-10\">\r\n      <p class=\"text-sm tracking-[0.25em] uppercase text-red-700 font-semibold mb-4\">HQT Elevator</p>\r\n      <h1 class=\"text-3xl md:text-5xl font-bold text-neutral-950 leading-tight mb-5\">\r\n        Các loại thang máy gia đình phổ biến hiện nay: Nên chọn loại nào cho nhà phố, biệt thự và công trình cải tạo?\r\n      </h1>\r\n      <p class=\"text-lg text-neutral-600 max-w-3xl\">\r\n        Thang máy gia đình không chỉ là thiết bị di chuyển giữa các tầng, mà còn là một phần của kiến trúc sống hiện đại. Việc hiểu rõ từng loại thang máy sẽ giúp gia chủ chọn đúng giải pháp: an toàn, phù hợp diện tích, tối ưu chi phí và hài hòa với thẩm mỹ tổng thể của ngôi nhà.\r\n      </p>\r\n    </header>\r\n\r\n    <section class=\"bg-white border border-neutral-200 rounded-2xl p-6 md:p-8 shadow-sm mb-10\">\r\n      <h2 class=\"text-2xl font-bold text-neutral-950 mb-4\">Tóm tắt nhanh cho người cần chọn thang máy gia đình</h2>\r\n      <p class=\"mb-4\">\r\n        Nếu bạn đang xây mới nhà phố hoặc biệt thự, thang máy cáp kéo, thủy lực hoặc nhập khẩu nguyên chiếc là những lựa chọn đáng cân nhắc vì có thể đồng bộ ngay từ bản vẽ kiến trúc. Nếu nhà đã hoàn thiện và cần cải tạo, các dòng thang máy trục vít, thủy lực mini, khung thép kính hoặc thang không yêu cầu hố pít sâu sẽ linh hoạt hơn. Với gia đình có người lớn tuổi, yếu tố quan trọng nhất không phải chỉ là giá, mà là độ êm, độ an toàn, kích thước cabin, tay vịn, hệ thống cứu hộ và dịch vụ bảo trì dài hạn.\r\n      </p>\r\n      <p>\r\n        Bài viết này sẽ phân tích các loại thang máy gia đình phổ biến theo công nghệ vận hành, xuất xứ, kiểu thiết kế và tình huống sử dụng thực tế để giúp bạn có cái nhìn đầy đủ trước khi đầu tư.\r\n      </p>\r\n    </section>\r\n\r\n    <nav class=\"bg-neutral-950 text-white rounded-2xl p-6 md:p-8 mb-12\">\r\n      <h2 class=\"text-xl font-bold mb-4\">Mục lục bài viết</h2>\r\n      <ol class=\"grid md:grid-cols-2 gap-3 list-decimal list-inside text-neutral-200\">\r\n        <li><a class=\"hover:text-red-300\" href=\"#tong-quan\">Thang máy gia đình là gì?</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#cap-keo\">Thang máy gia đình cáp kéo</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#thuy-luc\">Thang máy thủy lực</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#truc-vit\">Thang máy trục vít</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#chan-khong\">Thang máy chân không</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#thang-kinh\">Thang máy kính</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#xuat-xu\">Thang liên doanh và nhập khẩu</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#cach-chon\">Cách chọn loại thang phù hợp</a></li>\r\n      </ol>\r\n    </nav>\r\n\r\n    <section id=\"tong-quan\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Thang máy gia đình là gì?</h2>\r\n      <p class=\"mb-4\">\r\n        Thang máy gia đình là dòng thang máy được thiết kế cho nhà ở riêng lẻ như nhà phố, biệt thự, villa, shophouse hoặc công trình cải tạo có số tầng vừa phải. Khác với thang máy thương mại trong chung cư, khách sạn hay trung tâm thương mại, thang máy gia đình thường có tải trọng nhỏ hơn, tần suất sử dụng thấp hơn, kích thước cabin linh hoạt hơn và yêu cầu cao về sự hài hòa với không gian nội thất.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Một thang máy gia đình tốt cần đáp ứng bốn yếu tố cốt lõi: an toàn, vận hành êm, tiết kiệm diện tích và dễ bảo trì. Ngoài ra, với các công trình cao cấp, yếu tố thẩm mỹ cũng rất quan trọng. Cabin, cửa tầng, vật liệu inox, kính, đèn, tay vịn, sàn đá hoặc hoa văn trang trí đều ảnh hưởng trực tiếp đến cảm nhận sang trọng của ngôi nhà.\r\n      </p>\r\n      <p>\r\n        Khi tìm hiểu các loại thang máy gia đình, gia chủ không nên chỉ hỏi “giá bao nhiêu”, mà cần đặt câu hỏi đúng hơn: loại thang nào phù hợp với kết cấu nhà, nhu cầu sử dụng, độ tuổi thành viên, ngân sách đầu tư và khả năng bảo trì lâu dài?\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"cap-keo\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">1. Thang máy gia đình cáp kéo</h2>\r\n      <p class=\"mb-4\">\r\n        Thang máy cáp kéo là loại thang phổ biến nhất hiện nay, hoạt động dựa trên hệ thống máy kéo, cáp tải, đối trọng và tủ điều khiển. Đây là công nghệ đã được sử dụng rộng rãi trong nhiều phân khúc công trình, từ nhà ở dân dụng đến cao ốc thương mại. Với thang máy gia đình, dòng cáp kéo thường được lựa chọn khi công trình xây mới có thể bố trí sẵn hố thang, hố pít và chiều cao tầng trên cùng phù hợp.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Ưu điểm lớn của thang cáp kéo là vận hành ổn định, tốc độ tốt, tải trọng đa dạng và dễ tùy biến nội thất cabin. Gia chủ có thể chọn inox sọc nhuyễn, inox gương, inox vàng, inox đồng, cabin kính hoặc cabin hoa văn tùy theo phong cách kiến trúc. Ngoài ra, vì đây là công nghệ phổ biến nên việc bảo trì, thay thế linh kiện và kiểm tra kỹ thuật thường thuận tiện hơn.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Tuy nhiên, thang máy cáp kéo thường yêu cầu điều kiện xây dựng rõ ràng hơn so với một số dòng thang mini. Tùy thiết kế, thang có thể cần hố pít sâu, chiều cao OH đạt chuẩn và không gian kỹ thuật hợp lý. Vì vậy, loại thang này phù hợp nhất với nhà xây mới, nhà phố nhiều tầng, biệt thự hoặc công trình có sự phối hợp sớm giữa chủ nhà, kiến trúc sư và đơn vị thang máy.\r\n      </p>\r\n      <div class=\"bg-red-50 border-l-4 border-red-700 p-5 rounded-r-xl\">\r\n        <p class=\"font-semibold text-neutral-950\">Phù hợp với:</p>\r\n        <p>Nhà phố xây mới, biệt thự, shophouse, công trình cần giải pháp ổn định, dễ bảo trì và có nhiều lựa chọn về thiết kế cabin.</p>\r\n      </div>\r\n    </section>\r\n\r\n    <section id=\"thuy-luc\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">2. Thang máy gia đình thủy lực</h2>\r\n      <p class=\"mb-4\">\r\n        Thang máy thủy lực vận hành bằng hệ thống piston, xi lanh và bơm thủy lực. Khi hoạt động, dầu thủy lực tạo áp lực đẩy cabin di chuyển lên xuống. Đây là dòng thang được nhiều gia đình lựa chọn cho biệt thự, nhà cải tạo hoặc không gian cần sự êm ái, sang trọng và linh hoạt về kết cấu.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Điểm mạnh của thang thủy lực là vận hành êm, ít rung, không nhất thiết phải dùng hệ đối trọng như thang cáp kéo truyền thống. Một số mẫu có thể giảm yêu cầu về chiều cao tầng trên cùng, phù hợp hơn với những công trình bị giới hạn không gian kỹ thuật. Thiết kế thang thủy lực cũng thường tạo cảm giác cao cấp, đặc biệt khi kết hợp với vách kính, khung thép sơn tĩnh điện hoặc cabin phong cách tối giản.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Nhược điểm của thang thủy lực là chi phí đầu tư thường cao hơn một số dòng phổ thông. Ngoài ra, hệ thống dầu, bơm và piston cần được kiểm tra định kỳ để đảm bảo vận hành ổn định. Với gia đình ưu tiên trải nghiệm êm ái, tính thẩm mỹ và sự phù hợp cho nhà ở cao cấp, thang thủy lực là một lựa chọn đáng cân nhắc.\r\n      </p>\r\n      <div class=\"bg-neutral-100 border border-neutral-200 rounded-xl p-5\">\r\n        <p class=\"font-semibold text-neutral-950\">Phù hợp với:</p>\r\n        <p>Biệt thự, villa, nhà cải tạo, gia đình cần thang vận hành êm, đẹp, ít ảnh hưởng đến kết cấu hiện trạng.</p>\r\n      </div>\r\n    </section>\r\n\r\n    <section id=\"truc-vit\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">3. Thang máy gia đình trục vít</h2>\r\n      <p class=\"mb-4\">\r\n        Thang máy trục vít là dòng thang hoạt động dựa trên cơ cấu motor kết hợp trục vít và đai ốc. Khi motor quay, cabin di chuyển theo phương thẳng đứng thông qua hệ truyền động trục vít. Đây là loại thang được nhắc đến nhiều trong các công trình nhà cải tạo, nhà phố diện tích nhỏ hoặc không gian không thể xây hố thang theo tiêu chuẩn truyền thống.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Ưu điểm nổi bật của thang trục vít là tiết kiệm diện tích, không cần hố pít sâu, không yêu cầu phòng máy lớn và có thể lắp đặt trong nhiều vị trí như cạnh cầu thang bộ, giếng trời hoặc khoảng thông tầng. Thang thường có thiết kế kính bao quanh, tạo cảm giác nhẹ, hiện đại và không làm không gian bị bí.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Tuy vậy, thang trục vít thường có tốc độ di chuyển chậm hơn thang cáp kéo. Tải trọng và kích thước cabin cũng có giới hạn nhất định. Vì vậy, loại thang này phù hợp với gia đình ít người, nhà từ 2 đến 5 tầng, ưu tiên sự gọn gàng, an toàn và lắp đặt nhanh hơn là tốc độ cao.\r\n      </p>\r\n      <div class=\"bg-red-50 border-l-4 border-red-700 p-5 rounded-r-xl\">\r\n        <p class=\"font-semibold text-neutral-950\">Phù hợp với:</p>\r\n        <p>Nhà cải tạo, nhà phố nhỏ, gia đình có người lớn tuổi, công trình cần thang máy không đào sâu hố pít hoặc không nâng cao OH.</p>\r\n      </div>\r\n    </section>\r\n\r\n    <section id=\"chan-khong\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">4. Thang máy chân không</h2>\r\n      <p class=\"mb-4\">\r\n        Thang máy chân không là loại thang có thiết kế dạng ống trụ, hoạt động dựa trên sự chênh lệch áp suất không khí để nâng hạ cabin. Đây là dòng thang khá đặc biệt, thường được quan tâm bởi những gia chủ thích công nghệ mới, kiểu dáng khác biệt và không gian lắp đặt nhỏ gọn.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Điểm mạnh của thang chân không là thiết kế độc đáo, không cần hố pít sâu, không cần phòng máy và có thể trở thành điểm nhấn trong nội thất. Với hình dáng trụ tròn trong suốt, loại thang này phù hợp với những không gian muốn tạo cảm giác hiện đại, tương lai và khác biệt so với cabin thang máy truyền thống.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Tuy nhiên, thang chân không có giới hạn về tải trọng, kích thước cabin và khả năng tùy biến nội thất. Chi phí đầu tư cũng có thể cao tùy thương hiệu và nguồn gốc nhập khẩu. Loại thang này phù hợp hơn với nhu cầu cá nhân hoặc gia đình ít người, không phù hợp nếu cần cabin rộng cho xe lăn lớn hoặc vận chuyển đồ thường xuyên.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"thang-kinh\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">5. Thang máy kính cho gia đình</h2>\r\n      <p class=\"mb-4\">\r\n        Thang máy kính không phải là một công nghệ vận hành riêng, mà là cách phân loại theo vật liệu và phong cách thiết kế. Một thang máy kính có thể dùng công nghệ cáp kéo, thủy lực hoặc trục vít. Điểm nhận diện chính là vách cabin, cửa hoặc hố thang sử dụng kính cường lực, kết hợp cùng khung thép, inox hoặc nhôm cao cấp.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Dòng thang này được yêu thích trong nhà phố hiện đại, biệt thự, villa và các công trình muốn giữ ánh sáng tự nhiên. Thay vì tạo cảm giác nặng nề như hố thang bê tông kín, thang kính giúp không gian thoáng hơn, sang hơn và có tính trình diễn cao. Khi đặt gần giếng trời, cầu thang bộ hoặc phòng khách, thang máy kính có thể trở thành điểm nhấn kiến trúc rất nổi bật.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Gia chủ cần lưu ý chất lượng kính, độ an toàn của khung, độ kín khít, khả năng chống rung và phương án vệ sinh định kỳ. Với nhà có người lớn tuổi hoặc trẻ nhỏ, nên chọn thiết kế tay vịn, sàn chống trượt, đèn cabin dịu mắt và bảng gọi tầng dễ thao tác.\r\n      </p>\r\n      <div class=\"bg-neutral-100 border border-neutral-200 rounded-xl p-5\">\r\n        <p class=\"font-semibold text-neutral-950\">Phù hợp với:</p>\r\n        <p>Nhà phố hiện đại, biệt thự, công trình có giếng trời, gia chủ yêu thích phong cách sang trọng, thoáng sáng và cao cấp.</p>\r\n      </div>\r\n    </section>\r\n\r\n    <section id=\"xuat-xu\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">6. Thang máy gia đình liên doanh và nhập khẩu nguyên chiếc</h2>\r\n      <p class=\"mb-4\">\r\n        Ngoài phân loại theo công nghệ, thị trường còn phân loại thang máy gia đình theo nguồn gốc sản xuất: thang máy liên doanh và thang máy nhập khẩu nguyên chiếc. Đây là yếu tố ảnh hưởng lớn đến giá, thời gian sản xuất, mức độ tùy biến và cảm nhận thương hiệu.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">Thang máy gia đình liên doanh</h3>\r\n      <p class=\"mb-4\">\r\n        Thang máy liên doanh thường sử dụng một số thiết bị chính nhập khẩu như máy kéo, tủ điều khiển, rail, cửa tầng hoặc linh kiện an toàn, trong khi phần cabin và một số cấu kiện được gia công trong nước. Ưu điểm là chi phí hợp lý, thời gian sản xuất nhanh, dễ tùy chỉnh kích thước theo thực tế công trình và thuận tiện khi bảo trì.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Dòng thang này phù hợp với nhiều gia đình Việt vì có thể cân bằng giữa ngân sách và nhu cầu sử dụng. Tuy nhiên, chất lượng phụ thuộc nhiều vào năng lực thiết kế, gia công, lắp đặt và bảo trì của đơn vị cung cấp. Vì vậy, gia chủ nên chọn thương hiệu có hồ sơ năng lực rõ ràng, hợp đồng minh bạch, chính sách bảo hành cụ thể và đội ngũ kỹ thuật chuyên nghiệp.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">Thang máy gia đình nhập khẩu nguyên chiếc</h3>\r\n      <p class=\"mb-4\">\r\n        Thang máy nhập khẩu nguyên chiếc là dòng thang được sản xuất đồng bộ tại nước ngoài, sau đó nhập về Việt Nam theo bộ hoàn chỉnh. Ưu điểm là thiết kế đồng nhất, chất lượng hoàn thiện cao, công nghệ ổn định và phù hợp với phân khúc khách hàng yêu cầu sự sang trọng, chuẩn mực và khác biệt.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Nhược điểm là chi phí đầu tư cao hơn, thời gian đặt hàng có thể lâu hơn và khả năng tùy biến kích thước đôi khi không linh hoạt bằng thang liên doanh. Dòng này phù hợp với biệt thự, villa, nhà phố cao cấp hoặc gia chủ muốn đầu tư một hệ thang máy mang tính lâu dài, thẩm mỹ và thương hiệu rõ ràng.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"cach-chon\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Cách chọn loại thang máy gia đình phù hợp</h2>\r\n      <p class=\"mb-4\">\r\n        Để chọn đúng loại thang máy gia đình, gia chủ nên bắt đầu từ hiện trạng công trình. Nếu nhà đang trong giai đoạn thiết kế bản vẽ, hãy làm việc sớm với đơn vị thang máy để tối ưu vị trí hố thang, kích thước cabin, hố pít, chiều cao OH và đường điện. Việc đồng bộ ngay từ đầu giúp tránh sửa chữa tốn kém và đảm bảo thang hài hòa với kiến trúc.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Nếu nhà đã xây xong hoặc cần cải tạo, hãy ưu tiên các giải pháp ít can thiệp kết cấu như thang khung thép, thang kính, thang trục vít hoặc thủy lực mini. Trong trường hợp này, khảo sát thực tế là bước bắt buộc. Đơn vị chuyên nghiệp cần đo đạc chính xác, đánh giá nền móng, vị trí cầu thang bộ, giếng trời, khả năng vận chuyển thiết bị và phương án thi công an toàn trong nhà đang ở.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Với gia đình có người cao tuổi, nên ưu tiên thang vận hành êm, cabin đủ rộng, bảng điều khiển dễ nhìn, có tay vịn, đèn sáng dịu và hệ thống cứu hộ tự động khi mất điện. Với gia đình có trẻ nhỏ, cần chú ý cảm biến cửa, khóa an toàn, chuông báo, camera hoặc các tính năng giám sát nếu cần.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Về ngân sách, gia chủ không nên chỉ tính chi phí mua ban đầu. Một thang máy gia đình còn có chi phí bảo trì, kiểm định, điện năng, thay thế linh kiện và dịch vụ sau bán hàng. Loại thang rẻ nhất chưa chắc là lựa chọn tiết kiệm nhất nếu vận hành thiếu ổn định hoặc khó bảo trì về sau.\r\n      </p>\r\n    </section>\r\n\r\n    <section class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Bảng so sánh nhanh các loại thang máy gia đình</h2>\r\n      <div class=\"overflow-x-auto rounded-2xl border border-neutral-200 bg-white shadow-sm\">\r\n        <table class=\"w-full text-left text-sm md:text-base\">\r\n          <thead class=\"bg-neutral-950 text-white\">\r\n            <tr>\r\n              <th class=\"p-4\">Loại thang</th>\r\n              <th class=\"p-4\">Ưu điểm chính</th>\r\n              <th class=\"p-4\">Phù hợp với</th>\r\n            </tr>\r\n          </thead>\r\n          <tbody class=\"divide-y divide-neutral-200\">\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Cáp kéo</td>\r\n              <td class=\"p-4\">Ổn định, phổ biến, dễ bảo trì, nhiều lựa chọn cabin</td>\r\n              <td class=\"p-4\">Nhà xây mới, nhà phố, biệt thự</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Thủy lực</td>\r\n              <td class=\"p-4\">Êm ái, sang trọng, linh hoạt cho công trình cao cấp</td>\r\n              <td class=\"p-4\">Biệt thự, villa, nhà cải tạo</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Trục vít</td>\r\n              <td class=\"p-4\">Gọn, ít yêu cầu hố pít, dễ lắp cho nhà cải tạo</td>\r\n              <td class=\"p-4\">Nhà nhỏ, nhà đã hoàn thiện, gia đình ít người</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Chân không</td>\r\n              <td class=\"p-4\">Thiết kế độc đáo, không cần phòng máy, tiết kiệm diện tích</td>\r\n              <td class=\"p-4\">Không gian nhỏ, nhu cầu cá nhân, nhà hiện đại</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Thang kính</td>\r\n              <td class=\"p-4\">Đẹp, thoáng, tăng tính thẩm mỹ cho nội thất</td>\r\n              <td class=\"p-4\">Nhà phố hiện đại, biệt thự, giếng trời</td>\r\n            </tr>\r\n          </tbody>\r\n        </table>\r\n      </div>\r\n    </section>\r\n\r\n    <section class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Câu hỏi thường gặp về các loại thang máy gia đình</h2>\r\n      <div class=\"space-y-4\">\r\n        <details class=\"bg-white border border-neutral-200 rounded-xl p-5 shadow-sm\">\r\n          <summary class=\"font-bold cursor-pointer text-neutral-950\">Loại thang máy gia đình nào tốt nhất?</summary>\r\n          <p class=\"mt-3 text-neutral-700\">Không có một loại thang tốt nhất cho mọi công trình. Thang tốt nhất là thang phù hợp với diện tích, kết cấu nhà, nhu cầu sử dụng, ngân sách và khả năng bảo trì lâu dài. Nhà xây mới có thể chọn thang cáp kéo hoặc nhập khẩu. Nhà cải tạo có thể ưu tiên thang trục vít, thủy lực hoặc khung thép kính.</p>\r\n        </details>\r\n        <details class=\"bg-white border border-neutral-200 rounded-xl p-5 shadow-sm\">\r\n          <summary class=\"font-bold cursor-pointer text-neutral-950\">Nhà phố nhỏ có lắp được thang máy không?</summary>\r\n          <p class=\"mt-3 text-neutral-700\">Có. Với nhà phố nhỏ, đơn vị kỹ thuật có thể khảo sát các vị trí như lòng cầu thang bộ, giếng trời, cuối nhà hoặc khu vực thông tầng. Các dòng thang mini, thang trục vít, thủy lực hoặc khung thép kính thường phù hợp hơn khi diện tích hạn chế.</p>\r\n        </details>\r\n        <details class=\"bg-white border border-neutral-200 rounded-xl p-5 shadow-sm\">\r\n          <summary class=\"font-bold cursor-pointer text-neutral-950\">Thang máy gia đình có tốn điện không?</summary>\r\n          <p class=\"mt-3 text-neutral-700\">Mức tiêu thụ điện phụ thuộc vào công nghệ, tải trọng, tần suất sử dụng và cấu hình thiết bị. Với gia đình sử dụng thông thường, chi phí điện thường không quá lớn nếu chọn đúng công suất và bảo trì định kỳ.</p>\r\n        </details>\r\n        <details class=\"bg-white border border-neutral-200 rounded-xl p-5 shadow-sm\">\r\n          <summary class=\"font-bold cursor-pointer text-neutral-950\">Nên chọn thang máy liên doanh hay nhập khẩu?</summary>\r\n          <p class=\"mt-3 text-neutral-700\">Thang liên doanh phù hợp với gia đình muốn tối ưu chi phí, dễ tùy biến kích thước và bảo trì thuận tiện. Thang nhập khẩu phù hợp với công trình cao cấp, ưu tiên thiết kế đồng bộ, công nghệ hoàn thiện và trải nghiệm thương hiệu.</p>\r\n        </details>\r\n      </div>\r\n    </section>\r\n\r\n    <section class=\"bg-gradient-to-br from-neutral-950 to-neutral-800 text-white rounded-3xl p-7 md:p-10\">\r\n      <h2 class=\"text-3xl font-bold mb-4\">Kết luận: Chọn thang máy gia đình cần đúng từ bản vẽ đầu tiên</h2>\r\n      <p class=\"mb-4 text-neutral-200\">\r\n        Các loại thang máy gia đình hiện nay rất đa dạng, từ cáp kéo, thủy lực, trục vít, chân không đến thang kính, thang liên doanh và thang nhập khẩu nguyên chiếc. Mỗi loại đều có ưu điểm riêng, nhưng hiệu quả thực tế phụ thuộc vào việc chọn đúng theo công trình và được lắp đặt bởi đơn vị có chuyên môn.\r\n      </p>\r\n      <p class=\"mb-6 text-neutral-200\">\r\n        Với nhà xây mới, hãy đưa thang máy vào kế hoạch ngay từ giai đoạn thiết kế kiến trúc. Với nhà cải tạo, hãy ưu tiên khảo sát kỹ hiện trạng trước khi chốt phương án. Một lựa chọn đúng không chỉ giúp gia đình di chuyển thuận tiện hơn, mà còn nâng tầm giá trị sống, đảm bảo an toàn cho người thân và tăng tính sang trọng cho toàn bộ không gian nhà ở.\r\n      </p>\r\n      <a href=\"#\" class=\"inline-flex items-center justify-center rounded-full bg-red-700 px-6 py-3 font-semibold text-white hover:bg-red-800 transition\">\r\n        Nhận tư vấn loại thang phù hợp cho ngôi nhà của bạn\r\n      </a>\r\n    </section>\r\n  </article>\r\n</body>\r\n</html>','cac-loai-thang-may-gia-dinh-pho-bien-2026','','uploads/cms/articles/images/hinh_banner_cac_loai_thang_may_duoi_500kb.jpg',22,1,1,'Admin','2026-05-26','2026-05-23 06:57:54.324272','2026-05-26 14:24:17.099801',1),(3,'Bảo trì thang máy đúng chuẩn kỹ thuật: Quy trình, lợi ích và lưu ý quan trọng','Bảo trì thang máy đúng chuẩn kỹ thuật là quá trình kiểm tra, vệ sinh, căn chỉnh, thử nghiệm và đánh giá toàn bộ hệ thống thang máy theo quy trình chuyên môn nhằm đảm bảo thiết bị vận hành an toàn, ổn định và bền bỉ.','<!doctype html>\r\n<html lang=\"vi\">\r\n<head>\r\n  <meta charset=\"UTF-8\" />\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n  <title>Bảo trì thang máy đúng chuẩn kỹ thuật: Quy trình, lợi ích và lưu ý quan trọng | HQT Elevator</title>\r\n  <meta name=\"description\" content=\"Tìm hiểu bảo trì thang máy đúng chuẩn kỹ thuật: quy trình kiểm tra, tần suất bảo trì, các hạng mục cần theo dõi, dấu hiệu cần gọi kỹ thuật và cách chọn đơn vị bảo trì thang máy uy tín.\" />\r\n  <meta name=\"keywords\" content=\"bảo trì thang máy, bảo trì thang máy đúng chuẩn kỹ thuật, bảo dưỡng thang máy, quy trình bảo trì thang máy, bảo trì thang máy gia đình, bảo trì thang máy định kỳ, HQT Elevator\" />\r\n  <script src=\"https://cdn.tailwindcss.com\"></script>\r\n  <script type=\"application/ld+json\">\r\n  {\r\n    \"@context\": \"https://schema.org\",\r\n    \"@type\": \"FAQPage\",\r\n    \"mainEntity\": [\r\n      {\r\n        \"@type\": \"Question\",\r\n        \"name\": \"Bảo trì thang máy đúng chuẩn kỹ thuật là gì?\",\r\n        \"acceptedAnswer\": {\r\n          \"@type\": \"Answer\",\r\n          \"text\": \"Bảo trì thang máy đúng chuẩn kỹ thuật là quá trình kiểm tra, vệ sinh, căn chỉnh, thử nghiệm và đánh giá toàn bộ hệ thống thang máy theo quy trình chuyên môn nhằm đảm bảo thiết bị vận hành an toàn, ổn định và bền bỉ.\"\r\n        }\r\n      },\r\n      {\r\n        \"@type\": \"Question\",\r\n        \"name\": \"Bao lâu nên bảo trì thang máy một lần?\",\r\n        \"acceptedAnswer\": {\r\n          \"@type\": \"Answer\",\r\n          \"text\": \"Tần suất bảo trì phụ thuộc vào loại thang, tần suất sử dụng và khuyến nghị của đơn vị cung cấp. Thang máy gia đình thường cần kiểm tra định kỳ theo lịch bảo trì, trong khi công trình có tần suất sử dụng cao nên bảo trì thường xuyên hơn.\"\r\n        }\r\n      },\r\n      {\r\n        \"@type\": \"Question\",\r\n        \"name\": \"Dấu hiệu nào cho thấy thang máy cần được bảo trì ngay?\",\r\n        \"acceptedAnswer\": {\r\n          \"@type\": \"Answer\",\r\n          \"text\": \"Các dấu hiệu cần gọi kỹ thuật gồm thang rung lắc, phát ra tiếng ồn bất thường, cửa đóng mở chậm, dừng tầng lệch, nút bấm không nhạy, cabin có mùi khét, đèn chập chờn hoặc thang thường xuyên báo lỗi.\"\r\n        }\r\n      }\r\n    ]\r\n  }\r\n  </script>\r\n</head>\r\n<body class=\"bg-neutral-50 text-neutral-800 font-sans leading-relaxed\">\r\n  <article class=\"max-w-5xl mx-auto px-5 py-10 md:py-16\">\r\n    <header class=\"mb-10\">\r\n      <p class=\"text-sm tracking-[0.25em] uppercase text-red-700 font-semibold mb-4\">HQT Elevator</p>\r\n    \r\n      <p class=\"text-lg text-neutral-600 max-w-3xl\">\r\n        Thang máy là thiết bị vận hành hằng ngày, liên quan trực tiếp đến an toàn của con người và giá trị công trình. Vì vậy, bảo trì thang máy đúng chuẩn kỹ thuật không chỉ là việc kiểm tra định kỳ, mà là giải pháp phòng ngừa rủi ro, kéo dài tuổi thọ thiết bị và duy trì trải nghiệm di chuyển êm ái, ổn định.\r\n      </p>\r\n    </header>\r\n\r\n    <section class=\"bg-white border border-neutral-200 rounded-2xl p-6 md:p-8 shadow-sm mb-10\">\r\n      <h2 class=\"text-2xl md:text-3xl font-bold text-neutral-950 mb-4\">Tóm tắt nhanh: Vì sao phải bảo trì thang máy định kỳ?</h2>\r\n      <p class=\"mb-4\">\r\n        Bảo trì thang máy định kỳ giúp phát hiện sớm các lỗi kỹ thuật trước khi trở thành sự cố nghiêm trọng. Trong quá trình vận hành, các bộ phận như cửa tầng, cảm biến, cáp tải, rail dẫn hướng, phanh, tủ điều khiển, nút bấm, đèn cabin và hệ thống cứu hộ có thể bị hao mòn, lệch chỉnh hoặc bám bụi. Nếu không kiểm tra đúng cách, thang có thể xuất hiện tình trạng rung lắc, dừng tầng không chính xác, đóng mở cửa bất thường hoặc báo lỗi liên tục.\r\n      </p>\r\n      <p>\r\n        Một quy trình bảo trì đúng chuẩn cần có kỹ thuật viên chuyên môn, danh sách hạng mục kiểm tra rõ ràng, biên bản sau mỗi lần bảo trì, khuyến nghị xử lý minh bạch và khả năng phản hồi nhanh khi có sự cố. Đây là nền tảng giúp thang máy vận hành an toàn, bền bỉ và tiết kiệm chi phí sửa chữa lâu dài.\r\n      </p>\r\n    </section>\r\n\r\n    <nav class=\"bg-neutral-950 text-white rounded-2xl p-6 md:p-8 mb-12\">\r\n      <h2 class=\"text-xl font-bold mb-4\">Mục lục bài viết</h2>\r\n      <ol class=\"grid md:grid-cols-2 gap-3 list-decimal list-inside text-neutral-200\">\r\n        <li><a class=\"hover:text-red-300\" href=\"#khai-niem\">Bảo trì thang máy đúng chuẩn kỹ thuật là gì?</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#ly-do\">Vì sao bảo trì thang máy là bắt buộc?</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#quy-trinh\">Quy trình bảo trì thang máy tiêu chuẩn</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#hang-muc\">Các hạng mục cần kiểm tra khi bảo trì</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#tan-suat\">Tần suất bảo trì thang máy phù hợp</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#dau-hieu\">Dấu hiệu cần gọi kỹ thuật ngay</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#loi-ich\">Lợi ích của bảo trì thang máy chuyên nghiệp</a></li>\r\n        <li><a class=\"hover:text-red-300\" href=\"#don-vi\">Cách chọn đơn vị bảo trì uy tín</a></li>\r\n      </ol>\r\n    </nav>\r\n\r\n    <section id=\"khai-niem\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Bảo trì thang máy đúng chuẩn kỹ thuật là gì?</h2>\r\n      <p class=\"mb-4\">\r\n        Bảo trì thang máy đúng chuẩn kỹ thuật là quá trình kiểm tra, vệ sinh, căn chỉnh, thử nghiệm và đánh giá toàn bộ hệ thống thang máy theo quy trình chuyên môn. Mục tiêu của bảo trì không chỉ là làm cho thang tiếp tục chạy, mà là đảm bảo thang vận hành an toàn, êm ái, chính xác và ổn định trong điều kiện sử dụng thực tế.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Một hệ thống thang máy bao gồm nhiều thành phần cơ khí, điện, điều khiển và an toàn. Khi thang hoạt động mỗi ngày, các bộ phận chuyển động sẽ chịu ma sát, rung động, thay đổi tải trọng và ảnh hưởng từ môi trường xung quanh. Dù là thang máy gia đình, thang máy văn phòng, thang máy khách sạn hay thang máy trong công trình thương mại, việc bảo trì vẫn cần được thực hiện đều đặn.\r\n      </p>\r\n      <p>\r\n        Bảo trì đúng chuẩn khác với sửa chữa khi hỏng. Sửa chữa thường xảy ra sau khi thang đã phát sinh lỗi. Còn bảo trì là hành động chủ động nhằm phòng ngừa lỗi từ sớm. Vì vậy, một công trình hiện đại không nên xem bảo trì là chi phí phụ, mà nên xem đây là một phần bắt buộc trong kế hoạch vận hành thang máy lâu dài.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"ly-do\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Vì sao bảo trì thang máy là bắt buộc?</h2>\r\n      <p class=\"mb-4\">\r\n        Thang máy là thiết bị liên quan trực tiếp đến an toàn con người. Mỗi lần thang vận hành là một chuỗi hoạt động phối hợp giữa máy kéo, tủ điều khiển, hệ thống cửa, cảm biến, cáp, rail, phanh và cabin. Chỉ cần một bộ phận hoạt động không ổn định, trải nghiệm sử dụng có thể bị ảnh hưởng, thậm chí dẫn đến sự cố không mong muốn.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Đối với thang máy gia đình, người sử dụng thường là người thân trong nhà, bao gồm trẻ nhỏ và người lớn tuổi. Đây là nhóm cần được bảo vệ kỹ hơn vì khả năng xử lý tình huống khẩn cấp có thể hạn chế. Một hệ thống được bảo trì tốt sẽ giúp gia đình yên tâm hơn khi sử dụng thang hằng ngày.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Đối với công trình kinh doanh như khách sạn mini, văn phòng, showroom, shophouse hoặc tòa nhà dịch vụ, thang máy còn ảnh hưởng trực tiếp đến trải nghiệm khách hàng. Thang máy thường xuyên lỗi, kẹt cửa, phát tiếng ồn hoặc dừng tầng thiếu chính xác có thể làm giảm uy tín của công trình. Vì vậy, bảo trì không chỉ là yêu cầu kỹ thuật mà còn là yếu tố bảo vệ hình ảnh thương hiệu.\r\n      </p>\r\n      <div class=\"bg-red-50 border-l-4 border-red-700 p-5 rounded-r-xl\">\r\n        <p class=\"font-semibold text-neutral-950\">Điểm cần nhớ:</p>\r\n        <p>Bảo trì thang máy không phải là việc “có cũng được, không cũng được”. Đây là hoạt động cần thiết để duy trì an toàn, hạn chế rủi ro và bảo vệ giá trị đầu tư của công trình.</p>\r\n      </div>\r\n    </section>\r\n\r\n    <section id=\"quy-trinh\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Quy trình bảo trì thang máy đúng chuẩn kỹ thuật</h2>\r\n      <p class=\"mb-4\">\r\n        Một quy trình bảo trì chuyên nghiệp cần được thực hiện theo từng bước rõ ràng. Việc kiểm tra cảm tính hoặc chỉ quan sát bên ngoài cabin là không đủ. Kỹ thuật viên cần đánh giá toàn diện cả hệ thống cơ khí, điện, điều khiển, an toàn và trải nghiệm vận hành.\r\n      </p>\r\n      <div class=\"grid md:grid-cols-2 gap-5 my-8\">\r\n        <div class=\"bg-white border border-neutral-200 rounded-2xl p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">Bước 1: Kiểm tra tổng quan</h3>\r\n          <p>Kỹ thuật viên ghi nhận tình trạng vận hành, lắng nghe phản hồi của người dùng, kiểm tra cabin, cửa tầng, bảng gọi tầng và các dấu hiệu bất thường bên ngoài.</p>\r\n        </div>\r\n        <div class=\"bg-white border border-neutral-200 rounded-2xl p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">Bước 2: Kiểm tra phòng máy hoặc khu vực kỹ thuật</h3>\r\n          <p>Máy kéo, tủ điều khiển, bộ khống chế tốc độ, hệ thống điện và các đầu nối cần được kiểm tra để đảm bảo không có dấu hiệu quá nhiệt, lỏng dây hoặc báo lỗi.</p>\r\n        </div>\r\n        <div class=\"bg-white border border-neutral-200 rounded-2xl p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">Bước 3: Kiểm tra hố thang</h3>\r\n          <p>Rail dẫn hướng, cáp tải, puly, công tắc giới hạn, cảm biến, đáy hố pít và các chi tiết chuyển động cần được vệ sinh, quan sát và căn chỉnh nếu cần.</p>\r\n        </div>\r\n        <div class=\"bg-white border border-neutral-200 rounded-2xl p-6 shadow-sm\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">Bước 4: Chạy thử và nghiệm thu</h3>\r\n          <p>Thang được chạy thử nhiều lượt để kiểm tra độ êm, tiếng ồn, độ chính xác khi dừng tầng, tốc độ đóng mở cửa và khả năng phản hồi của hệ thống an toàn.</p>\r\n        </div>\r\n      </div>\r\n      <p>\r\n        Sau khi hoàn tất, đơn vị bảo trì cần lập biên bản ghi rõ các hạng mục đã kiểm tra, tình trạng thiết bị, lỗi phát hiện nếu có và khuyến nghị xử lý. Biên bản này giúp chủ nhà hoặc ban quản lý theo dõi lịch sử vận hành của thang, từ đó có kế hoạch sửa chữa hoặc thay thế linh kiện đúng thời điểm.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"hang-muc\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Các hạng mục quan trọng cần kiểm tra khi bảo trì thang máy</h2>\r\n      <p class=\"mb-4\">\r\n        Bảo trì thang máy đúng chuẩn cần bao phủ nhiều nhóm hạng mục. Mỗi nhóm giữ một vai trò riêng trong quá trình vận hành. Việc bỏ sót một chi tiết nhỏ cũng có thể làm giảm độ ổn định của toàn hệ thống.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">1. Hệ thống cửa tầng và cửa cabin</h3>\r\n      <p class=\"mb-4\">\r\n        Cửa thang là khu vực người dùng tiếp xúc nhiều nhất. Trong quá trình bảo trì, kỹ thuật viên cần kiểm tra tốc độ đóng mở cửa, cảm biến an toàn, ray cửa, con lăn, khóa cửa tầng và độ kín khít. Nếu cửa đóng mở chậm, phát tiếng kêu hoặc cảm biến phản hồi kém, cần xử lý ngay để tránh nguy cơ kẹt cửa hoặc gián đoạn vận hành.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">2. Máy kéo, cáp tải và puly</h3>\r\n      <p class=\"mb-4\">\r\n        Đây là nhóm thiết bị chịu trách nhiệm chính trong việc nâng hạ cabin. Kỹ thuật viên cần kiểm tra độ mòn, độ căng cáp, tình trạng puly, âm thanh khi vận hành và các dấu hiệu rung bất thường. Với thang sử dụng lâu năm, việc theo dõi hao mòn cáp và bộ phận truyền động là rất quan trọng để đảm bảo an toàn.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">3. Tủ điều khiển và hệ thống điện</h3>\r\n      <p class=\"mb-4\">\r\n        Tủ điều khiển là “bộ não” của thang máy. Trong quá trình bảo trì, cần kiểm tra bo mạch, contactor, biến tần, dây dẫn, đầu nối, quạt làm mát và các mã lỗi lưu trong hệ thống. Các dấu hiệu như mùi khét, quá nhiệt, chập chờn tín hiệu hoặc thang phản hồi chậm cần được xử lý nghiêm túc.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">4. Rail dẫn hướng, shoe dẫn hướng và cabin</h3>\r\n      <p class=\"mb-4\">\r\n        Rail dẫn hướng ảnh hưởng trực tiếp đến độ êm khi thang di chuyển. Nếu rail bị lệch, bám bụi hoặc shoe dẫn hướng bị mòn, cabin có thể rung, lắc hoặc phát tiếng ồn. Việc vệ sinh, bôi trơn đúng vị trí và căn chỉnh định kỳ giúp thang vận hành ổn định hơn.\r\n      </p>\r\n      <h3 class=\"text-2xl font-bold text-neutral-950 mt-8 mb-4\">5. Hệ thống an toàn và cứu hộ</h3>\r\n      <p>\r\n        Các thiết bị như phanh an toàn, bộ khống chế vượt tốc, công tắc giới hạn, chuông báo khẩn cấp, đèn khẩn cấp, liên lạc nội bộ và cứu hộ tự động cần được kiểm tra thường xuyên. Đây là những lớp bảo vệ quan trọng trong trường hợp thang gặp sự cố hoặc mất điện đột ngột.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"tan-suat\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Tần suất bảo trì thang máy bao lâu là hợp lý?</h2>\r\n      <p class=\"mb-4\">\r\n        Tần suất bảo trì phụ thuộc vào loại thang, tuổi thọ thiết bị, tần suất sử dụng, môi trường vận hành và khuyến nghị từ đơn vị cung cấp. Không nên áp dụng một lịch bảo trì chung cho mọi công trình. Thang máy gia đình sử dụng ít người sẽ khác với thang máy khách sạn, văn phòng hoặc công trình thương mại có lưu lượng cao.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Với thang máy gia đình, lịch bảo trì định kỳ cần được duy trì đều đặn để kiểm tra các bộ phận an toàn, cửa tầng, hệ thống điện và độ êm khi vận hành. Với công trình kinh doanh, tần suất kiểm tra nên dày hơn vì thang hoạt động nhiều lượt mỗi ngày. Nếu thang đã sử dụng lâu năm, việc bảo trì càng cần được thực hiện kỹ để phát hiện hao mòn linh kiện.\r\n      </p>\r\n      <div class=\"overflow-x-auto rounded-2xl border border-neutral-200 bg-white shadow-sm my-8\">\r\n        <table class=\"w-full text-left text-sm md:text-base\">\r\n          <thead class=\"bg-neutral-950 text-white\">\r\n            <tr>\r\n              <th class=\"p-4\">Loại công trình</th>\r\n              <th class=\"p-4\">Đặc điểm sử dụng</th>\r\n              <th class=\"p-4\">Khuyến nghị bảo trì</th>\r\n            </tr>\r\n          </thead>\r\n          <tbody class=\"divide-y divide-neutral-200\">\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Nhà phố, biệt thự</td>\r\n              <td class=\"p-4\">Tần suất vừa phải, chủ yếu phục vụ gia đình</td>\r\n              <td class=\"p-4\">Duy trì bảo trì định kỳ theo lịch của đơn vị kỹ thuật</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Khách sạn mini, homestay</td>\r\n              <td class=\"p-4\">Nhiều khách sử dụng, tần suất thay đổi theo mùa</td>\r\n              <td class=\"p-4\">Nên kiểm tra thường xuyên hơn để tránh gián đoạn kinh doanh</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Văn phòng, showroom</td>\r\n              <td class=\"p-4\">Sử dụng liên tục trong giờ làm việc</td>\r\n              <td class=\"p-4\">Cần theo dõi cửa, cảm biến, tủ điện và độ chính xác dừng tầng</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Công trình lâu năm</td>\r\n              <td class=\"p-4\">Thiết bị có thể hao mòn theo thời gian</td>\r\n              <td class=\"p-4\">Cần kiểm tra sâu và lên kế hoạch thay thế linh kiện khi cần</td>\r\n            </tr>\r\n          </tbody>\r\n        </table>\r\n      </div>\r\n      <p>\r\n        Điều quan trọng không chỉ là bảo trì bao lâu một lần, mà là mỗi lần bảo trì có được thực hiện đầy đủ hay không. Một lần kiểm tra sơ sài không thể thay thế cho quy trình bảo trì kỹ thuật đúng chuẩn.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"dau-hieu\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Dấu hiệu cho thấy thang máy cần được bảo trì ngay</h2>\r\n      <p class=\"mb-4\">\r\n        Ngoài lịch bảo trì định kỳ, người sử dụng cần chú ý các dấu hiệu bất thường trong quá trình vận hành. Khi phát hiện những biểu hiện dưới đây, không nên tiếp tục sử dụng thang một cách chủ quan mà cần liên hệ đơn vị kỹ thuật để kiểm tra.\r\n      </p>\r\n      <div class=\"grid md:grid-cols-2 gap-5 my-8\">\r\n        <div class=\"bg-red-50 border border-red-100 rounded-2xl p-6\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">Dấu hiệu về chuyển động</h3>\r\n          <p>Thang rung lắc, giật nhẹ khi khởi động hoặc dừng tầng, di chuyển không êm, phát tiếng ma sát hoặc tiếng va đập bất thường.</p>\r\n        </div>\r\n        <div class=\"bg-red-50 border border-red-100 rounded-2xl p-6\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">Dấu hiệu về cửa</h3>\r\n          <p>Cửa đóng mở chậm, bị kẹt, phát tiếng kêu, cảm biến phản hồi chậm hoặc cửa không đóng mở đúng quy trình.</p>\r\n        </div>\r\n        <div class=\"bg-red-50 border border-red-100 rounded-2xl p-6\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">Dấu hiệu về điện</h3>\r\n          <p>Bảng điều khiển chập chờn, nút bấm không nhạy, đèn cabin nhấp nháy, thang báo lỗi hoặc có mùi khét từ khu vực kỹ thuật.</p>\r\n        </div>\r\n        <div class=\"bg-red-50 border border-red-100 rounded-2xl p-6\">\r\n          <h3 class=\"text-xl font-bold text-neutral-950 mb-3\">Dấu hiệu về vận hành</h3>\r\n          <p>Thang dừng lệch tầng, phản hồi lệnh chậm, thường xuyên dừng bất thường hoặc mất nhiều thời gian để khởi động lại.</p>\r\n        </div>\r\n      </div>\r\n      <p>\r\n        Khi thang máy có dấu hiệu bất thường, tuyệt đối không tự ý mở cửa tầng, can thiệp vào tủ điện hoặc sửa chữa nếu không có chuyên môn. Việc xử lý sai cách có thể làm lỗi nghiêm trọng hơn và gây nguy hiểm cho người sử dụng.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"loi-ich\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Lợi ích của bảo trì thang máy chuyên nghiệp</h2>\r\n      <p class=\"mb-4\">\r\n        Bảo trì thang máy chuyên nghiệp mang lại nhiều lợi ích hơn việc xử lý sự cố đơn lẻ. Trước hết, bảo trì giúp nâng cao an toàn cho người sử dụng. Khi các thiết bị bảo vệ được kiểm tra đều đặn, khả năng phát hiện sớm lỗi kỹ thuật sẽ cao hơn, từ đó giảm nguy cơ sự cố bất ngờ.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Thứ hai, bảo trì giúp thang vận hành êm ái và ổn định hơn. Những lỗi nhỏ như cửa đóng mở lệch, rail bám bụi, shoe mòn hoặc cảm biến kém nhạy có thể làm trải nghiệm sử dụng giảm đi rõ rệt. Khi được căn chỉnh đúng lúc, thang sẽ di chuyển mượt hơn, ít tiếng ồn hơn và tạo cảm giác an tâm hơn cho người dùng.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Thứ ba, bảo trì giúp tiết kiệm chi phí dài hạn. Một lỗi nhỏ nếu được phát hiện sớm có thể xử lý với chi phí thấp. Nhưng nếu để kéo dài, lỗi đó có thể ảnh hưởng đến nhiều bộ phận khác và làm chi phí sửa chữa tăng cao. Vì vậy, bảo trì định kỳ là cách quản lý chi phí thông minh cho cả gia đình và chủ đầu tư.\r\n      </p>\r\n      <p>\r\n        Cuối cùng, bảo trì giúp kéo dài tuổi thọ thang máy và bảo vệ giá trị công trình. Một hệ thang máy vận hành ổn định, sạch sẽ, ít lỗi và được chăm sóc đúng cách sẽ góp phần nâng cao chất lượng sống cũng như hình ảnh chuyên nghiệp của công trình.\r\n      </p>\r\n    </section>\r\n\r\n    <section id=\"don-vi\" class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Cách chọn đơn vị bảo trì thang máy uy tín</h2>\r\n      <p class=\"mb-4\">\r\n        Chọn đơn vị bảo trì uy tín là yếu tố quan trọng không kém việc chọn thiết bị ban đầu. Một đơn vị tốt cần có đội ngũ kỹ thuật được đào tạo, quy trình kiểm tra rõ ràng, phản hồi nhanh khi có sự cố và khả năng cung cấp linh kiện phù hợp. Chủ nhà hoặc chủ đầu tư nên tránh chọn dịch vụ bảo trì chỉ dựa trên giá rẻ, vì chi phí thấp có thể đi kèm với quy trình sơ sài hoặc thiếu trách nhiệm sau bảo trì.\r\n      </p>\r\n      <p class=\"mb-4\">\r\n        Khi ký hợp đồng bảo trì, cần làm rõ phạm vi công việc, tần suất kiểm tra, thời gian phản hồi, hạng mục miễn phí, chi phí thay thế linh kiện, hình thức báo cáo và trách nhiệm trong trường hợp phát sinh sự cố. Một đơn vị chuyên nghiệp sẽ luôn minh bạch về tình trạng thiết bị và tư vấn phương án xử lý phù hợp thay vì chỉ báo thay thế linh kiện không rõ lý do.\r\n      </p>\r\n      <div class=\"bg-neutral-100 border border-neutral-200 rounded-2xl p-6 md:p-8 my-8\">\r\n        <h3 class=\"text-2xl font-bold text-neutral-950 mb-4\">Checklist chọn đơn vị bảo trì</h3>\r\n        <ul class=\"space-y-3 list-disc list-inside text-neutral-700\">\r\n          <li>Có đội ngũ kỹ thuật chuyên môn và kinh nghiệm thực tế.</li>\r\n          <li>Có quy trình bảo trì rõ ràng, không kiểm tra qua loa.</li>\r\n          <li>Có biên bản sau mỗi lần bảo trì.</li>\r\n          <li>Có khả năng phản hồi nhanh khi thang gặp sự cố.</li>\r\n          <li>Có chính sách linh kiện, bảo hành và chi phí minh bạch.</li>\r\n          <li>Tư vấn trung thực, ưu tiên an toàn thay vì chỉ bán thêm dịch vụ.</li>\r\n        </ul>\r\n      </div>\r\n      <p>\r\n        Với thang máy gia đình, đơn vị bảo trì càng cần có thái độ cẩn trọng vì thiết bị phục vụ trực tiếp cho sinh hoạt hằng ngày của các thành viên trong nhà. Với công trình thương mại, tốc độ phản hồi và khả năng xử lý sự cố nhanh là yếu tố rất quan trọng để tránh gián đoạn hoạt động kinh doanh.\r\n      </p>\r\n    </section>\r\n\r\n    <section class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Bảng checklist bảo trì thang máy đúng chuẩn kỹ thuật</h2>\r\n      <div class=\"overflow-x-auto rounded-2xl border border-neutral-200 bg-white shadow-sm\">\r\n        <table class=\"w-full text-left text-sm md:text-base\">\r\n          <thead class=\"bg-neutral-950 text-white\">\r\n            <tr>\r\n              <th class=\"p-4\">Nhóm hạng mục</th>\r\n              <th class=\"p-4\">Nội dung kiểm tra</th>\r\n              <th class=\"p-4\">Mục tiêu</th>\r\n            </tr>\r\n          </thead>\r\n          <tbody class=\"divide-y divide-neutral-200\">\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Cửa thang</td>\r\n              <td class=\"p-4\">Cảm biến, khóa cửa tầng, ray cửa, con lăn, tốc độ đóng mở</td>\r\n              <td class=\"p-4\">Đảm bảo cửa vận hành an toàn, hạn chế kẹt cửa</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Cơ khí</td>\r\n              <td class=\"p-4\">Máy kéo, cáp tải, puly, rail, shoe dẫn hướng, phanh</td>\r\n              <td class=\"p-4\">Duy trì độ êm, độ bền và ổn định khi vận hành</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Điện điều khiển</td>\r\n              <td class=\"p-4\">Tủ điều khiển, biến tần, bo mạch, dây dẫn, đầu nối, mã lỗi</td>\r\n              <td class=\"p-4\">Đảm bảo hệ thống phản hồi chính xác và an toàn</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Cabin</td>\r\n              <td class=\"p-4\">Đèn, quạt, nút bấm, bảng hiển thị, tay vịn, sàn cabin</td>\r\n              <td class=\"p-4\">Tối ưu trải nghiệm sử dụng và sự tiện nghi</td>\r\n            </tr>\r\n            <tr>\r\n              <td class=\"p-4 font-semibold\">Cứu hộ</td>\r\n              <td class=\"p-4\">Chuông báo, đèn khẩn cấp, liên lạc nội bộ, cứu hộ tự động</td>\r\n              <td class=\"p-4\">Đảm bảo khả năng xử lý khi có sự cố hoặc mất điện</td>\r\n            </tr>\r\n          </tbody>\r\n        </table>\r\n      </div>\r\n    </section>\r\n\r\n    <section class=\"mb-12\">\r\n      <h2 class=\"text-3xl font-bold text-neutral-950 mb-5\">Câu hỏi thường gặp về bảo trì thang máy</h2>\r\n      <div class=\"space-y-4\">\r\n        <details class=\"bg-white border border-neutral-200 rounded-xl p-5 shadow-sm\">\r\n          <summary class=\"font-bold cursor-pointer text-neutral-950\">Bảo trì thang máy có bắt buộc không?</summary>\r\n          <p class=\"mt-3 text-neutral-700\">Có. Bảo trì giúp duy trì an toàn, phát hiện sớm lỗi kỹ thuật và đảm bảo thang vận hành ổn định. Đây là hoạt động cần thiết trong suốt quá trình sử dụng thang máy.</p>\r\n        </details>\r\n        <details class=\"bg-white border border-neutral-200 rounded-xl p-5 shadow-sm\">\r\n          <summary class=\"font-bold cursor-pointer text-neutral-950\">Bảo trì thang máy mất bao lâu?</summary>\r\n          <p class=\"mt-3 text-neutral-700\">Thời gian bảo trì phụ thuộc vào loại thang, số tầng, tình trạng thiết bị và phạm vi kiểm tra. Một lần bảo trì đúng chuẩn cần đủ thời gian để kỹ thuật viên kiểm tra cả phần cơ khí, điện, cửa, cabin và hệ thống an toàn.</p>\r\n        </details>\r\n        <details class=\"bg-white border border-neutral-200 rounded-xl p-5 shadow-sm\">\r\n          <summary class=\"font-bold cursor-pointer text-neutral-950\">Thang máy mới lắp có cần bảo trì không?</summary>\r\n          <p class=\"mt-3 text-neutral-700\">Có. Thang mới lắp vẫn cần bảo trì định kỳ để theo dõi quá trình vận hành ban đầu, căn chỉnh các chi tiết nếu cần và đảm bảo hệ thống luôn hoạt động ổn định.</p>\r\n        </details>\r\n        <details class=\"bg-white border border-neutral-200 rounded-xl p-5 shadow-sm\">\r\n          <summary class=\"font-bold cursor-pointer text-neutral-950\">Có nên tự vệ sinh hoặc sửa thang máy không?</summary>\r\n          <p class=\"mt-3 text-neutral-700\">Người dùng chỉ nên vệ sinh bề mặt cabin, tay vịn hoặc sàn thang theo hướng dẫn. Không nên tự mở tủ điện, cửa tầng, hố thang hoặc can thiệp kỹ thuật nếu không có chuyên môn.</p>\r\n        </details>\r\n      </div>\r\n    </section>\r\n\r\n    <section class=\"bg-gradient-to-br from-neutral-950 to-neutral-800 text-white rounded-3xl p-7 md:p-10\">\r\n      <h2 class=\"text-3xl font-bold mb-4\">Kết luận: Bảo trì đúng chuẩn là nền tảng của một hệ thang máy an toàn</h2>\r\n      <p class=\"mb-4 text-neutral-200\">\r\n        Bảo trì thang máy đúng chuẩn kỹ thuật là yếu tố không thể thiếu để duy trì an toàn, độ bền và hiệu suất vận hành. Một hệ thang máy dù hiện đại đến đâu cũng cần được kiểm tra định kỳ, căn chỉnh đúng cách và theo dõi tình trạng thiết bị trong suốt vòng đời sử dụng.\r\n      </p>\r\n      <p class=\"mb-6 text-neutral-200\">\r\n        Với nhà phố, biệt thự, công trình cải tạo, khách sạn mini hay văn phòng hiện đại, bảo trì chuyên nghiệp giúp người dùng an tâm hơn, giảm nguy cơ sự cố và tiết kiệm chi phí sửa chữa dài hạn. Đầu tư vào bảo trì không chỉ là bảo vệ thiết bị, mà còn là bảo vệ con người và giá trị của toàn bộ công trình.\r\n      </p>\r\n      <a href=\"#\" class=\"inline-flex items-center justify-center rounded-full bg-red-700 px-6 py-3 font-semibold text-white hover:bg-red-800 transition\">\r\n        Nhận tư vấn gói bảo trì thang máy phù hợp\r\n      </a>\r\n    </section>\r\n  </article>\r\n</body>\r\n</html>','bao-tri-thang-may-dung-chuan-ky-thuat','','uploads/cms/articles/images/bao_tri_thang_may_dung_chuan_duoi_500kb.jpg',20,0,1,'Admin',NULL,'2026-05-23 06:57:55.008417','2026-05-26 14:45:50.623893',1);
/*!40000 ALTER TABLE `cms_app_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_article_categories`
--

DROP TABLE IF EXISTS `cms_app_article_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_article_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `article_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_app_article_categories_article_id_category_id_8a975dd2_uniq` (`article_id`,`category_id`),
  KEY `cms_app_article_cate_category_id_519590a1_fk_cms_app_c` (`category_id`),
  CONSTRAINT `cms_app_article_cate_article_id_ea68c469_fk_cms_app_a` FOREIGN KEY (`article_id`) REFERENCES `cms_app_article` (`id`),
  CONSTRAINT `cms_app_article_cate_category_id_519590a1_fk_cms_app_c` FOREIGN KEY (`category_id`) REFERENCES `cms_app_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_article_categories`
--

LOCK TABLES `cms_app_article_categories` WRITE;
/*!40000 ALTER TABLE `cms_app_article_categories` DISABLE KEYS */;
INSERT INTO `cms_app_article_categories` VALUES (2,1,5),(5,2,2),(6,3,2);
/*!40000 ALTER TABLE `cms_app_article_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_article_tags`
--

DROP TABLE IF EXISTS `cms_app_article_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_article_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `article_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_app_article_tags_article_id_tag_id_78a4c7c3_uniq` (`article_id`,`tag_id`),
  KEY `cms_app_article_tags_tag_id_cbc810b0_fk_cms_app_tag_id` (`tag_id`),
  CONSTRAINT `cms_app_article_tags_article_id_f1a51e57_fk_cms_app_article_id` FOREIGN KEY (`article_id`) REFERENCES `cms_app_article` (`id`),
  CONSTRAINT `cms_app_article_tags_tag_id_cbc810b0_fk_cms_app_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `cms_app_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_article_tags`
--

LOCK TABLES `cms_app_article_tags` WRITE;
/*!40000 ALTER TABLE `cms_app_article_tags` DISABLE KEYS */;
INSERT INTO `cms_app_article_tags` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(11,3,3);
/*!40000 ALTER TABLE `cms_app_article_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_background`
--

DROP TABLE IF EXISTS `cms_app_background`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_background` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_vi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sorted_as` int unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `offer_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_vi` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_vi` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_vi` longtext COLLATE utf8mb4_unicode_ci,
  `link_vi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text_vi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_from` datetime(6) DEFAULT NULL,
  `published_to` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `page_id` bigint DEFAULT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_app_background_project_id_a6fe5774_fk_cms_engine_project_id` (`project_id`),
  KEY `cms_app_background_page_id_0f193450` (`page_id`),
  CONSTRAINT `cms_app_background_page_id_0f193450_fk_cms_engine_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_engine_page` (`id`),
  CONSTRAINT `cms_app_background_project_id_a6fe5774_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `cms_app_background_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_background`
--

LOCK TABLES `cms_app_background` WRITE;
/*!40000 ALTER TABLE `cms_app_background` DISABLE KEYS */;
INSERT INTO `cms_app_background` VALUES (2,'uploads/cms/backgrounds/background-home.avif',0,1,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'2026-05-24 11:37:46.636433','2026-05-24 11:37:59.357264',1,1);
/*!40000 ALTER TABLE `cms_app_background` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_category`
--

DROP TABLE IF EXISTS `cms_app_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_vi` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_vi` longtext COLLATE utf8mb4_unicode_ci,
  `content_vi` longtext COLLATE utf8mb4_unicode_ci,
  `value` int DEFAULT NULL,
  `sorted_as` int unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `page_id` bigint DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_app_category_parent_id_7553529d_fk_cms_app_category_id` (`parent_id`),
  KEY `cms_app_category_project_id_d03bbc6e_fk_cms_engine_project_id` (`project_id`),
  KEY `cms_app_category_page_id_56a84811` (`page_id`),
  CONSTRAINT `cms_app_category_page_id_56a84811_fk_cms_engine_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_engine_page` (`id`),
  CONSTRAINT `cms_app_category_parent_id_7553529d_fk_cms_app_category_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_app_category` (`id`),
  CONSTRAINT `cms_app_category_project_id_d03bbc6e_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `cms_app_category_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_category`
--

LOCK TABLES `cms_app_category` WRITE;
/*!40000 ALTER TABLE `cms_app_category` DISABLE KEYS */;
INSERT INTO `cms_app_category` VALUES (1,'cam-nang','','',NULL,NULL,'Cẩm Nang',NULL,NULL,0,0,1,1,'2026-05-23 06:57:49.586170','2026-05-23 06:57:49.586309',NULL,NULL,1),(2,'kien-thuc','','',NULL,NULL,'Kiến Thức',NULL,NULL,0,0,1,1,'2026-05-23 06:57:49.586223','2026-05-23 06:57:49.586327',NULL,NULL,1),(3,'xu-huong','','',NULL,NULL,'Xu Hướng',NULL,NULL,0,0,1,1,'2026-05-23 06:57:49.586245','2026-05-23 06:57:49.586343',NULL,NULL,1),(4,'huong-dan','','',NULL,NULL,'Hướng Dẫn',NULL,NULL,0,0,1,1,'2026-05-23 06:57:49.586273','2026-05-23 06:57:49.586359',NULL,NULL,1),(5,'cong-nghe','','',NULL,NULL,'Công Nghệ',NULL,NULL,0,0,1,1,'2026-05-23 06:57:49.586289','2026-05-23 06:57:49.586375',NULL,NULL,1);
/*!40000 ALTER TABLE `cms_app_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_faq`
--

DROP TABLE IF EXISTS `cms_app_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_faq` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_vi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visited_as` int unsigned NOT NULL,
  `sorted_as` int unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_app_faq_project_id_6c56fcc2_fk_cms_engine_project_id` (`project_id`),
  KEY `cms_app_faq_category_6d95742d` (`category`),
  CONSTRAINT `cms_app_faq_project_id_6c56fcc2_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `cms_app_faq_chk_1` CHECK ((`visited_as` >= 0)),
  CONSTRAINT `cms_app_faq_chk_2` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_faq`
--

LOCK TABLES `cms_app_faq` WRITE;
/*!40000 ALTER TABLE `cms_app_faq` DISABLE KEYS */;
INSERT INTO `cms_app_faq` VALUES (1,'Thang máy của HQT có an toàn không?',NULL,0,0,1,'2026-05-23 06:57:50.578902','2026-05-23 06:57:50.579185',1),(2,'Chi phí lắp đặt một thang máy bao nhiêu?',NULL,0,0,1,'2026-05-23 06:57:50.579013','2026-05-23 06:57:50.579204',1),(3,'Thang máy tiêu thụ điện bao nhiêu?',NULL,0,0,1,'2026-05-23 06:57:50.579040','2026-05-23 06:57:50.579222',1),(4,'Bảo dưỡng định kỳ bao lâu một lần?',NULL,0,0,1,'2026-05-23 06:57:50.579060','2026-05-23 06:57:50.579240',1),(5,'Thang máy bị mắc kẹt phải làm gì?',NULL,0,0,1,'2026-05-23 06:57:50.579103','2026-05-23 06:57:50.579257',1),(6,'Có thể nâng cấp thang máy cũ không?',NULL,0,0,1,'2026-05-23 06:57:50.579125','2026-05-23 06:57:50.579275',1),(7,'Thang máy có bảo hành bao lâu?',NULL,0,0,1,'2026-05-23 06:57:50.579144','2026-05-23 06:57:50.579292',1),(8,'HQT có chứng chỉ gì?',NULL,0,0,1,'2026-05-23 06:57:50.579162','2026-05-23 06:57:50.579309',1);
/*!40000 ALTER TABLE `cms_app_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_faqanswer`
--

DROP TABLE IF EXISTS `cms_app_faqanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_faqanswer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `answer_vi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sorted_as` int unsigned NOT NULL,
  `faq_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_app_faqanswer_faq_id_6923bd8d_fk_cms_app_faq_id` (`faq_id`),
  CONSTRAINT `cms_app_faqanswer_faq_id_6923bd8d_fk_cms_app_faq_id` FOREIGN KEY (`faq_id`) REFERENCES `cms_app_faq` (`id`),
  CONSTRAINT `cms_app_faqanswer_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_faqanswer`
--

LOCK TABLES `cms_app_faqanswer` WRITE;
/*!40000 ALTER TABLE `cms_app_faqanswer` DISABLE KEYS */;
INSERT INTO `cms_app_faqanswer` VALUES (1,'\n    <p class=\"text-gray-700\">\n        Có, thang máy HQT tuân theo tất cả các tiêu chuẩn an toàn quốc tế và Nhật Bản. Chúng tôi có:\n    </p>\n    <ul class=\"list-disc list-inside space-y-1 mt-3 text-gray-700 text-sm\">\n        <li>Hệ thống phanh khẩn cấp 3 lớp</li>\n        <li>Cảm biến an toàn toàn diện</li>\n        <li>Kiểm định định kỳ bởi cơ quan chức năng</li>\n        <li>Bảo hành 5 năm với dịch vụ bảo dưỡng</li>\n    </ul>\n    ',0,1),(2,'\n    <p class=\"text-gray-700 mb-3\">\n        Chi phí lắp đặt tùy thuộc vào nhiều yếu tố:\n    </p>\n    <ul class=\"space-y-2 text-gray-700 text-sm\">\n        <li><strong>Loại sản phẩm:</strong> Kính tròn, thủy lực, cáp kéo... từ 300 - 800 triệu đồng</li>\n        <li><strong>Chiều cao công trình:</strong> Càng cao chi phí càng tăng</li>\n        <li><strong>Vị trí địa lý:</strong> Ảnh hưởng vận chuyển và thi công</li>\n        <li><strong>Yêu cầu kỹ thuật:</strong> Thiết kế riêng, cabin cao cấp</li>\n    </ul>\n    <p class=\"text-gray-700 text-sm mt-3\">\n        <strong>Chúng tôi cung cấp báo giá miễn phí sau khi khảo sát thực tế.</strong>\n    </p>\n    ',0,2),(3,'\n    <p class=\"text-gray-700 mb-3\">\n        Thang máy HQT sử dụng công nghệ tiết kiệm điện:\n    </p>\n    <ul class=\"space-y-2 text-gray-700 text-sm\">\n        <li><strong>Nhà ở thấp tầng:</strong> 100 - 150 kWh/tháng</li>\n        <li><strong>Tòa nhà trung tầng:</strong> 400 - 600 kWh/tháng</li>\n        <li><strong>Chi phí trung bình:</strong> 300.000 - 500.000 VNĐ/tháng</li>\n    </ul>\n    <p class=\"text-gray-700 text-sm mt-3\">\n        Tích hợp chế độ ECO và hệ thống tái tạo năng lượng.\n    </p>\n    ',0,3),(4,'\n    <p class=\"text-gray-700 mb-3\">\n        Lịch bảo dưỡng tiêu chuẩn:\n    </p>\n    <ul class=\"space-y-2 text-gray-700 text-sm\">\n        <li><strong>Nhà ở:</strong> 1 lần / 3 tháng</li>\n        <li><strong>Công trình công cộng:</strong> 2 - 4 lần / tháng</li>\n        <li><strong>Miễn phí:</strong> 3 tháng đầu sau lắp đặt</li>\n    </ul>\n    <p class=\"text-gray-700 text-sm mt-3\">\n        Bảo dưỡng định kỳ giúp tăng tuổi thọ và giảm rủi ro vận hành.\n    </p>\n    ',0,4),(5,'\n    <p class=\"text-gray-700 mb-3\">\n        Nếu gặp sự cố, hãy làm theo các bước:\n    </p>\n    <ol class=\"list-decimal list-inside space-y-2 text-gray-700 text-sm\">\n        <li>Giữ bình tĩnh, không hoảng loạn</li>\n        <li>Nhấn nút khẩn cấp trong cabin</li>\n        <li>Liên hệ hotline hỗ trợ 24/7</li>\n        <li>Chờ đội kỹ thuật đến xử lý (thường &lt; 1 giờ)</li>\n    </ol>\n    <p class=\"text-gray-700 text-sm mt-3\">\n        Hệ thống cứu hộ tự động sẽ kích hoạt nếu mất điện.\n    </p>\n    ',0,5),(6,'\n    <p class=\"text-gray-700 mb-3\">\n        Có, chúng tôi cung cấp dịch vụ nâng cấp toàn diện:\n    </p>\n    <ul class=\"space-y-2 text-gray-700 text-sm\">\n        <li>Thay thế motor, bộ điều khiển, cảm biến</li>\n        <li>Nâng cấp hệ thống an toàn mới</li>\n        <li>Cải tạo cabin và nội thất</li>\n        <li>Giảm tiêu thụ điện năng đến 30%</li>\n    </ul>\n    <p class=\"text-gray-700 text-sm mt-3\">\n        <strong>Giải pháp tiết kiệm hơn so với lắp mới hoàn toàn.</strong>\n    </p>\n    ',0,6),(7,'\n    <p class=\"text-gray-700 mb-3\">\n        Chính sách bảo hành:\n    </p>\n    <ul class=\"space-y-2 text-gray-700 text-sm\">\n        <li><strong>Bảo hành thiết bị:</strong> 5 năm</li>\n        <li><strong>Hệ thống điều khiển:</strong> 10 năm</li>\n        <li><strong>Bảo dưỡng miễn phí:</strong> 2 lần/năm (3 năm đầu)</li>\n        <li><strong>Linh kiện:</strong> Thay thế miễn phí nếu lỗi kỹ thuật</li>\n    </ul>\n    ',0,7),(8,'\n    <p class=\"text-gray-700 mb-3\">\n        Các chứng nhận đạt chuẩn quốc tế:\n    </p>\n    <ul class=\"space-y-2 text-gray-700 text-sm\">\n        <li>ISO 9001: Quản lý chất lượng</li>\n        <li>ISO 14001: Môi trường</li>\n        <li>EN81: Tiêu chuẩn an toàn châu Âu</li>\n        <li>Tiêu chuẩn Nhật Bản JIS</li>\n    </ul>\n    ',0,8);
/*!40000 ALTER TABLE `cms_app_faqanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_innerbackground`
--

DROP TABLE IF EXISTS `cms_app_innerbackground`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_innerbackground` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title_vi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_vi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sorted_as` int unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `description_vi` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `page_id` bigint DEFAULT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_app_innerbackgro_project_id_8567ec9d_fk_cms_engin` (`project_id`),
  KEY `cms_app_innerbackground_page_id_b406ac18` (`page_id`),
  CONSTRAINT `cms_app_innerbackgro_project_id_8567ec9d_fk_cms_engin` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `cms_app_innerbackground_page_id_b406ac18_fk_cms_engine_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_engine_page` (`id`),
  CONSTRAINT `cms_app_innerbackground_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_innerbackground`
--

LOCK TABLES `cms_app_innerbackground` WRITE;
/*!40000 ALTER TABLE `cms_app_innerbackground` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_app_innerbackground` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_inquiry`
--

DROP TABLE IF EXISTS `cms_app_inquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_inquiry` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `subject` longtext COLLATE utf8mb4_unicode_ci,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_app_inquiry_project_id_39755ca5_fk_cms_engine_project_id` (`project_id`),
  CONSTRAINT `cms_app_inquiry_project_id_39755ca5_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_inquiry`
--

LOCK TABLES `cms_app_inquiry` WRITE;
/*!40000 ALTER TABLE `cms_app_inquiry` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_app_inquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_partner`
--

DROP TABLE IF EXISTS `cms_app_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_partner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visited_as` int unsigned NOT NULL,
  `sorted_as` int unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_app_partner_project_id_64837287_fk_cms_engine_project_id` (`project_id`),
  CONSTRAINT `cms_app_partner_project_id_64837287_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `cms_app_partner_chk_1` CHECK ((`visited_as` >= 0)),
  CONSTRAINT `cms_app_partner_chk_2` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_partner`
--

LOCK TABLES `cms_app_partner` WRITE;
/*!40000 ALTER TABLE `cms_app_partner` DISABLE KEYS */;
INSERT INTO `cms_app_partner` VALUES (1,'Mitsubishi','',NULL,0,0,1,1,'2026-05-23 06:57:50.327893','2026-05-23 06:57:50.328003',1),(2,'Fuji','',NULL,0,0,1,1,'2026-05-23 06:57:50.327932','2026-05-23 06:57:50.328013',1),(3,'Hitachi','',NULL,0,0,1,1,'2026-05-23 06:57:50.327946','2026-05-23 06:57:50.328024',1),(4,'Hyundai','',NULL,0,0,1,1,'2026-05-23 06:57:50.327958','2026-05-23 06:57:50.328034',1),(5,'Thyssenkrupp','',NULL,0,0,1,1,'2026-05-23 06:57:50.327968','2026-05-23 06:57:50.328044',1),(6,'Schneider Electric','',NULL,0,0,1,1,'2026-05-23 06:57:50.327979','2026-05-23 06:57:50.328054',1),(7,'Panasonic','',NULL,0,0,1,1,'2026-05-23 06:57:50.327990','2026-05-23 06:57:50.328065',1);
/*!40000 ALTER TABLE `cms_app_partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_popup`
--

DROP TABLE IF EXISTS `cms_app_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_popup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title_vi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_vi` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_vi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_external_vi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_vi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_background` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_newsletter` tinyint(1) NOT NULL,
  `published_from` date DEFAULT NULL,
  `published_to` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `page_id` bigint DEFAULT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_app_popup_project_id_6417f129_fk_cms_engine_project_id` (`project_id`),
  KEY `cms_app_popup_page_id_0cb69e7f` (`page_id`),
  CONSTRAINT `cms_app_popup_page_id_0cb69e7f_fk_cms_engine_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_engine_page` (`id`),
  CONSTRAINT `cms_app_popup_project_id_6417f129_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_popup`
--

LOCK TABLES `cms_app_popup` WRITE;
/*!40000 ALTER TABLE `cms_app_popup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_app_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_tag`
--

DROP TABLE IF EXISTS `cms_app_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_vi` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctx_bg` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctx_color` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorted_as` int unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_app_tag_project_id_24786ef0_fk_cms_engine_project_id` (`project_id`),
  CONSTRAINT `cms_app_tag_project_id_24786ef0_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `cms_app_tag_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_tag`
--

LOCK TABLES `cms_app_tag` WRITE;
/*!40000 ALTER TABLE `cms_app_tag` DISABLE KEYS */;
INSERT INTO `cms_app_tag` VALUES (1,'thang-may','','Thang Máy',NULL,NULL,0,1,'2026-05-23 06:57:49.869035','2026-05-23 06:57:49.869132',1),(2,'khong-gian','','Không Gian',NULL,NULL,0,1,'2026-05-23 06:57:49.869092','2026-05-23 06:57:49.869144',1),(3,'an-toan','','An Toàn',NULL,NULL,0,1,'2026-05-23 06:57:49.869107','2026-05-23 06:57:49.869155',1),(4,'tiet-kiem-dien','','Tiết Kiệm Điện',NULL,NULL,0,1,'2026-05-23 06:57:49.869118','2026-05-23 06:57:49.869165',1);
/*!40000 ALTER TABLE `cms_app_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_app_testimonial`
--

DROP TABLE IF EXISTS `cms_app_testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_app_testimonial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `sorted_as` int unsigned NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_app_testimonial_project_id_b116c17c_fk_cms_engine_project_id` (`project_id`),
  CONSTRAINT `cms_app_testimonial_project_id_b116c17c_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `cms_app_testimonial_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_app_testimonial`
--

LOCK TABLES `cms_app_testimonial` WRITE;
/*!40000 ALTER TABLE `cms_app_testimonial` DISABLE KEYS */;
INSERT INTO `cms_app_testimonial` VALUES (1,'Lê Hoàng Yến','Kỹ Sư','',NULL,'Giá hơi cao nhưng dùng HQT Elevator thì gia đình rất yên tâm, an toàn và đáng tiền',4,1,1,0,'2026-05-23 06:57:50.127736','2026-05-23 06:57:50.127798',1),(2,'Nguyễn Thành Đạt','Kế Toán','',NULL,'Chi phí hợp lý so với chất lượng, gia đình tôi rất yên tâm khi sử dụng HQT Elevator',3,1,1,0,'2026-05-23 06:57:50.127773','2026-05-23 06:57:50.127827',1),(3,'Trương Quốc Cường','Bác Sỹ','',NULL,'Làm hồ sơ thủ tục và lắp đặt nhanh gọn.',4,1,1,0,'2026-05-23 06:57:50.127786','2026-05-23 06:57:50.127838',1);
/*!40000 ALTER TABLE `cms_app_testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_banner`
--

DROP TABLE IF EXISTS `cms_engine_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_banner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `status_vi` tinyint(1) NOT NULL DEFAULT '1',
  `image_vi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_vi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subheading_vi` text COLLATE utf8mb4_unicode_ci,
  `description_vi` text COLLATE utf8mb4_unicode_ci,
  `button_text_vi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `unpublished_at` timestamp NULL DEFAULT NULL,
  `sorted_as` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `page_id` bigint DEFAULT NULL,
  `project_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_engine_banner_page_id_idx` (`page_id`),
  KEY `cms_engine_banner_project_id_idx` (`project_id`),
  KEY `cms_engine_banner_status_vi_idx` (`status_vi`),
  KEY `cms_engine_banner_type_idx` (`type`),
  KEY `cms_engine_banner_sorted_as_idx` (`sorted_as`),
  CONSTRAINT `cms_engine_banner_page_id_fk` FOREIGN KEY (`page_id`) REFERENCES `cms_engine_page` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cms_engine_banner_project_id_fk` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_banner`
--

LOCK TABLES `cms_engine_banner` WRITE;
/*!40000 ALTER TABLE `cms_engine_banner` DISABLE KEYS */;
INSERT INTO `cms_engine_banner` VALUES (1,1,1,'uploads/cms/banners/images/background-home.avif','',NULL,NULL,'','',NULL,NULL,NULL,NULL,0,'2026-05-25 15:20:22','2026-05-25 15:20:22',1,1);
/*!40000 ALTER TABLE `cms_engine_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_branch`
--

DROP TABLE IF EXISTS `cms_engine_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_branch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_vi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_vi` longtext COLLATE utf8mb4_unicode_ci,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `geolat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `geolng` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `geozm` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorted_as` int unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  `icon_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_svg` longtext COLLATE utf8mb4_unicode_ci,
  `icon_text` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cms_engine_branch_project_id_31278aee_fk_cms_engine_project_id` (`project_id`),
  CONSTRAINT `cms_engine_branch_project_id_31278aee_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `cms_engine_branch_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_branch`
--

LOCK TABLES `cms_engine_branch` WRITE;
/*!40000 ALTER TABLE `cms_engine_branch` DISABLE KEYS */;
INSERT INTO `cms_engine_branch` VALUES (1,'Vinhomes Ocean Park 3, Xã Nghĩa Trụ, Hưng Yên','Vịnh Thiên Đường 7 căn 67 Vinhomes Ocean Park 3, Xã Nghĩa Trụ, Hưng Yên','','thangmayhqt@gmail.com','0835947868',NULL,'20.9538792','105.978242','17','',0,1,'2026-05-23 06:57:47.791562','2026-05-24 14:47:19.414276',1,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `cms_engine_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_constant`
--

DROP TABLE IF EXISTS `cms_engine_constant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_constant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_engine_constant_project_id_b36fbfaa_fk_cms_engine_project_id` (`project_id`),
  CONSTRAINT `cms_engine_constant_project_id_b36fbfaa_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_constant`
--

LOCK TABLES `cms_engine_constant` WRITE;
/*!40000 ALTER TABLE `cms_engine_constant` DISABLE KEYS */;
INSERT INTO `cms_engine_constant` VALUES (1,'GOOGLE_TAG_MANAGER','STR','','2026-05-23 06:57:48.142100','2026-05-23 06:57:48.142196',1),(2,'ENABLE_POPUP_NEWSLETTER','BOOL','0','2026-05-23 06:57:48.142138','2026-05-23 06:57:48.142207',1),(3,'TEAM_TECH_EMAIL','STR','thangmayhqt@gmail.com','2026-05-23 06:57:48.142151','2026-05-23 06:57:48.142218',1),(4,'TEAM_TECH_PHONE','STR','0835947868','2026-05-23 06:57:48.142162','2026-05-23 15:36:12.051800',1),(5,'TEAM_HR_EMAIL','STR','thangmayhqt@gmail.com','2026-05-23 06:57:48.142173','2026-05-23 06:57:48.142239',1),(6,'TEAM_HR_PHONE','STR','0835947868','2026-05-23 06:57:48.142184','2026-05-23 15:36:12.054781',1),(7,'INFO_YEAR_EXP','STR','1000','2026-05-27 04:49:04.307063','2026-05-27 04:49:04.307097',1),(8,'INFO_PORTFOLIO_EXP','STR','2000','2026-05-27 04:49:04.308386','2026-05-27 04:49:04.308413',1),(9,'INFO_CUSTOMER_EXP','STR','100','2026-05-27 04:49:04.309421','2026-05-27 04:49:04.309445',1),(10,'INFO_SUPPORT_EXP','STR','24/7','2026-05-27 04:49:04.333995','2026-05-27 04:49:04.334031',1);
/*!40000 ALTER TABLE `cms_engine_constant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_highlight`
--

DROP TABLE IF EXISTS `cms_engine_highlight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_highlight` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_vi` longtext COLLATE utf8mb4_unicode_ci,
  `button_text_vi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_text` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_svg` longtext COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `sorted_as` int NOT NULL DEFAULT '0',
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `page_id` bigint DEFAULT NULL,
  `project_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_highlight_page_id` (`page_id`),
  KEY `idx_highlight_project_id` (`project_id`),
  KEY `idx_highlight_sorted_as` (`sorted_as`),
  KEY `idx_highlight_is_active` (`is_active`),
  KEY `idx_highlight_created_at` (`created_at`),
  CONSTRAINT `fk_highlight_page` FOREIGN KEY (`page_id`) REFERENCES `cms_engine_page` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_highlight_project` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_highlight`
--

LOCK TABLES `cms_engine_highlight` WRITE;
/*!40000 ALTER TABLE `cms_engine_highlight` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_engine_highlight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_landing`
--

DROP TABLE IF EXISTS `cms_engine_landing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_landing` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url_vi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroud_header` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `backgroud_footer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_vi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_vi` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link_vi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text_vi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html_vi` longtext COLLATE utf8mb4_unicode_ci,
  `taxes_vi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_vi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `policies_vi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unsubscribe_vi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `concerns_vi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_vi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specials_vi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `published_from` datetime(6) DEFAULT NULL,
  `published_to` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_engine_landing_project_id_5014dc6d_fk_cms_engine_project_id` (`project_id`),
  KEY `cms_engine_landing_url_vi_da53eca2` (`url_vi`),
  CONSTRAINT `cms_engine_landing_project_id_5014dc6d_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_landing`
--

LOCK TABLES `cms_engine_landing` WRITE;
/*!40000 ALTER TABLE `cms_engine_landing` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_engine_landing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_marketingclaim`
--

DROP TABLE IF EXISTS `cms_engine_marketingclaim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_marketingclaim` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_vi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_vi` longtext COLLATE utf8mb4_unicode_ci,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link_vi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text_vi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorted_as` int unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_engine_marketing_project_id_7c156257_fk_cms_engin` (`project_id`),
  CONSTRAINT `cms_engine_marketing_project_id_7c156257_fk_cms_engin` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `cms_engine_marketingclaim_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_marketingclaim`
--

LOCK TABLES `cms_engine_marketingclaim` WRITE;
/*!40000 ALTER TABLE `cms_engine_marketingclaim` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_engine_marketingclaim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_metaobject`
--

DROP TABLE IF EXISTS `cms_engine_metaobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_metaobject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `object` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_engine_metaobject_page_id_aba5d160_fk_cms_engine_page_id` (`page_id`),
  CONSTRAINT `cms_engine_metaobject_page_id_aba5d160_fk_cms_engine_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_engine_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_metaobject`
--

LOCK TABLES `cms_engine_metaobject` WRITE;
/*!40000 ALTER TABLE `cms_engine_metaobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_engine_metaobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_operatinghour`
--

DROP TABLE IF EXISTS `cms_engine_operatinghour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_operatinghour` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `weekday` int NOT NULL,
  `hour_from` time(6) NOT NULL,
  `hour_to` time(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_engine_operatinghour_weekday_hour_from_hour_to_2f4f7010_uniq` (`weekday`,`hour_from`,`hour_to`),
  KEY `cms_engine_operating_project_id_49894fbd_fk_cms_engin` (`project_id`),
  CONSTRAINT `cms_engine_operating_project_id_49894fbd_fk_cms_engin` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_operatinghour`
--

LOCK TABLES `cms_engine_operatinghour` WRITE;
/*!40000 ALTER TABLE `cms_engine_operatinghour` DISABLE KEYS */;
INSERT INTO `cms_engine_operatinghour` VALUES (1,1,'08:00:00.000000','18:00:00.000000','2026-05-23 06:57:48.392686','2026-05-23 06:57:48.392764',1),(2,2,'08:00:00.000000','18:00:00.000000','2026-05-23 06:57:48.392711','2026-05-23 06:57:48.392774',1),(3,3,'08:00:00.000000','18:00:00.000000','2026-05-23 06:57:48.392722','2026-05-23 06:57:48.392784',1),(4,4,'08:00:00.000000','18:00:00.000000','2026-05-23 06:57:48.392732','2026-05-23 06:57:48.392794',1),(5,5,'08:00:00.000000','18:00:00.000000','2026-05-23 06:57:48.392742','2026-05-23 06:57:48.392803',1),(6,6,'08:00:00.000000','12:00:00.000000','2026-05-23 06:57:48.392752','2026-05-23 06:57:48.392812',1);
/*!40000 ALTER TABLE `cms_engine_operatinghour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_page`
--

DROP TABLE IF EXISTS `cms_engine_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_page` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_index` tinyint(1) NOT NULL DEFAULT '1',
  `is_follow` tinyint(1) NOT NULL DEFAULT '1',
  `is_external` tinyint(1) NOT NULL,
  `is_internal` tinyint(1) NOT NULL,
  `is_ssl` tinyint(1) NOT NULL,
  `is_home` tinyint(1) NOT NULL,
  `is_top_menu` tinyint(1) NOT NULL,
  `top_menu_row` int DEFAULT NULL,
  `top_menu_col` int DEFAULT NULL,
  `is_sub_menu` tinyint(1) NOT NULL,
  `sub_menu_row` int DEFAULT NULL,
  `sub_menu_col` int DEFAULT NULL,
  `reversed_as` int NOT NULL,
  `name_vi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_vi` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_vi` longtext COLLATE utf8mb4_unicode_ci,
  `view` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cache_context` tinyint(1) NOT NULL,
  `h1_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h2_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h3_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changefreq` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `project_id` bigint NOT NULL,
  `meta_schema` longtext COLLATE utf8mb4_unicode_ci,
  `meta_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_engine_page_project_id_8f4a8ebb_fk_cms_engine_project_id` (`project_id`),
  KEY `cms_engine_page_parent_id_765287e4_fk_cms_engine_page_id` (`parent_id`),
  CONSTRAINT `cms_engine_page_parent_id_765287e4_fk_cms_engine_page_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_engine_page` (`id`),
  CONSTRAINT `cms_engine_page_project_id_8f4a8ebb_fk_cms_engine_project_id` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_page`
--

LOCK TABLES `cms_engine_page` WRITE;
/*!40000 ALTER TABLE `cms_engine_page` DISABLE KEYS */;
INSERT INTO `cms_engine_page` VALUES (1,'home','',1,1,1,0,0,1,1,1,1,1,0,0,0,0,'Trang Chủ','trang-chu/','Trang Chủ',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/home.html\")','project.context.default_processors.home',0,'NÂNG TẦM<br />KHÔNG GIAN SỐNG','Giải pháp thang máy gia đình cao cấp<br />chuẩn Nhật Bản - An toàn, đẳng cấp,<br />thêm giá trị cho ngôi nhà',NULL,'monthly','0.5','2026-05-23 06:57:48.644696','2026-05-26 06:14:48.166832',NULL,1,'','website'),(2,'products','',1,1,1,0,0,1,0,1,1,2,0,0,0,0,'Sản Phẩm','san-pham/','Sản Phẩm',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/products.html\")','project.context.default_processors.products',0,'Bộ Sưu Tập Sản Phẩm Thang Máy','Khám phá đầy đủ các giải pháp thang máy gia đình và công cộng từ HQT Elevator',NULL,'monthly','0.5','2026-05-23 06:57:48.644733','2026-05-26 06:14:53.158453',NULL,1,'','website'),(3,'services','',0,1,1,0,0,1,0,0,0,0,0,0,0,0,'Dịch Vụ','dich-vu/','Dịch Vụ',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/services.html\")',NULL,0,'Dịch Vụ Toàn Diện','Từ lắp đặt, bảo dưỡng đến sửa chữa - HQT Elevator luôn sẵn sàng phục vụ 24/7',NULL,'monthly','0.5','2026-05-23 06:57:48.644745','2026-05-26 06:16:09.148285',NULL,1,'','website'),(4,'portfolios','',1,1,1,0,0,1,0,1,1,4,0,0,0,0,'Dự Án','du-an/','Dự Án',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/portfolios.html\")','project.context.default_processors.portfolios',0,'Dự Án Thực Tế','Hàng trăm công trình thành công trên toàn quốc, từ nhà phố đến tòa nhà cao tầng',NULL,'monthly','0.5','2026-05-23 06:57:48.644756','2026-05-26 06:15:03.312591',NULL,1,'','website'),(5,'solutions','',1,1,1,0,0,1,0,1,1,3,0,0,0,0,'Giải Pháp','giai-phap/','Giải Pháp',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/solutions.html\")','project.context.default_processors.solutions',0,'Giải Pháp Thang Máy Toàn Diện','HQT Elevator cung cấp giải pháp tối ưu cho mọi loại công trình và nhu cầu',NULL,'monthly','0.5','2026-05-23 06:57:48.644766','2026-05-26 06:14:58.891995',NULL,1,'','website'),(6,'support','',0,1,1,0,0,1,0,1,1,6,0,0,0,0,'Hỗ Trợ','ho-tro/','Hỗ Trợ',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/support.html\")','project.context.default_processors.support',0,'Trung Tâm Hỗ Trợ','Câu trả lời cho tất cả câu hỏi về thang máy và dịch vụ của chúng tôi',NULL,'monthly','0.5','2026-05-23 06:57:48.644776','2026-05-26 06:16:04.618504',NULL,1,'','website'),(7,'contact','',1,1,1,0,0,1,0,1,1,7,0,0,0,0,'Liên Hệ','lien-he/','Liên Hệ',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/contact.html\")',NULL,0,'Liên Hệ Với Chúng Tôi','Chúng tôi luôn sẵn sàng lắng nghe và hỗ trợ bạn trong mọi nhu cầu',NULL,'monthly','0.5','2026-05-23 06:57:48.644786','2026-05-26 06:15:18.304338',NULL,1,'','website'),(8,'guide','',1,1,1,0,0,1,0,0,0,0,1,1,2,0,'Hướng Dẫn Sử Dụng','huong-dan-su-dung/','Hướng Dẫn Sử Dụng',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/guide.html\")',NULL,0,'Hướng Dẫn Sử Dụng Thang Máy','Hướng dẫn chi tiết và an toàn sử dụng thang máy HQT Elevator',NULL,'monthly','0.5','2026-05-23 06:57:48.644796','2026-05-26 06:15:22.506765',NULL,1,'','website'),(9,'guarantee','',1,1,1,0,0,1,0,0,0,0,1,2,2,0,'Bảo Hành','bao-hanh/','Bảo Hành',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/guarantee.html\")',NULL,0,'Dịch Vụ Sửa Chữa Thang Máy','Sửa chữa nhanh chóng, chuyên nghiệp với bảo hành 12 tháng',NULL,'monthly','0.5','2026-05-23 06:57:48.644806','2026-05-26 06:15:31.649836',NULL,1,'','website'),(10,'maintenance','',1,1,1,0,0,1,0,0,0,0,1,3,2,0,'Bảo Dưỡng','bao-duong/','Bảo Dưỡng',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/maintenance.html\")',NULL,0,'Bảo Dưỡng Thang Máy','Dịch vụ bảo dưỡng định kỳ để đảm bảo thang máy hoạt động an toàn và hiệu quả',NULL,'monthly','0.5','2026-05-23 06:57:48.644815','2026-05-26 06:15:37.509033',NULL,1,'','website'),(11,'about','',1,1,1,0,0,1,0,0,0,0,1,1,3,0,'Giới Thiệu','gioi-thieu/','Giới Thiệu',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/about.html\")',NULL,0,'Về HQT Elevator','Hơn 20 năm cung cấp giải pháp thang máy chất lượng cao cho khách hàng Việt Nam',NULL,'monthly','0.5','2026-05-23 06:57:48.644825','2026-05-26 06:15:27.150389',NULL,1,'','website'),(12,'articles','',1,1,1,0,0,1,0,1,1,5,1,2,3,0,'Tin Tức','tin-tuc/','Tin Tức',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/articles.html\")','project.context.default_processors.articles',0,'Tin Tức & Blog','Cập nhật thông tin, mẹo sử dụng, và những câu chuyện thành công từ HQT Elevator',NULL,'monthly','0.5','2026-05-23 06:57:48.644835','2026-05-27 05:03:38.907453',NULL,1,'','website'),(13,'recruitment','',1,1,1,0,0,1,0,0,0,0,1,3,3,0,'Tuyển Dụng','tuyen-dung/','Tuyển Dụng',NULL,NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/recruitment.html\")','project.context.default_processors.recruitment',0,'Thông Tin Tuyển Dụng','Gia nhập đội ngũ kỹ sư & chuyên gia thang máy hàng đầu Việt Nam',NULL,'monthly','0.5','2026-05-23 06:57:48.644845','2026-05-26 06:15:54.558633',NULL,1,'','website'),(14,'category','',1,1,1,0,1,1,0,0,0,0,0,0,0,0,'Danh Mục Sản Phẩm','danh-muc/(?P<slug>[-\\w]+)/','{{category.name}}','{{category.description}}',NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/category.html\")','project.context.default_processors.category',0,NULL,NULL,NULL,'monthly','0.5','2026-05-23 06:57:49.325885','2026-05-26 06:15:59.802634',NULL,1,'','website'),(15,'product','',1,1,1,0,1,1,0,0,0,0,0,0,0,0,'Sản Phẩm','san-pham/(?P<slug>[-\\w]+)/','{{product.name}}','{{product.description}}',NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/product.html\")','project.context.default_processors.product',0,NULL,NULL,NULL,'monthly','0.5','2026-05-23 06:57:49.325926','2026-05-26 07:46:20.895649',2,1,'<script type=\"application/ld+json\">\r\n{\r\n  \"@context\": \"https://schema.org/\",\r\n  \"@type\": \"Product\",\r\n  \"name\": \"{{ product.name }}\",\r\n  \"image\": [\r\n    \"{{ product.image.url }}\",\r\n  ],\r\n  \"description\": \"{{ product.description }}\",\r\n  \"sku\": \"{{ product.code }}\",\r\n  \"brand\": {\r\n    \"@type\": \"Category\",\r\n    \"name\": \"{{ product.category.name }}\"\r\n  },\r\n  \"manufacturer\": {\r\n    \"@type\": \"Organization\",\r\n    \"name\": \"{{ project.name }}\"\r\n  }\r\n}\r\n</script>','website'),(16,'portfolio','',1,1,1,0,1,1,0,0,0,0,0,0,0,0,'Dự Án','du-an/(?P<slug>[-\\w]+)/','{{portfolio.name}}','{{portfolio.description}}',NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/portfolio.html\")','project.context.default_processors.portfolio',0,NULL,NULL,NULL,'monthly','0.5','2026-05-23 06:57:49.325940','2026-05-26 06:16:18.189762',4,1,'','website'),(17,'article','',1,1,1,0,1,1,0,0,0,0,0,0,0,0,'Tin Tức','tin-tuc/(?P<slug>[-\\w]+)/','{{article.title}}','{{article.description}}',NULL,NULL,NULL,'','CmsEngineView.as_view(template_name=\"default/article.html\")','project.context.default_processors.article',0,NULL,NULL,NULL,'monthly','0.5','2026-05-23 06:57:49.325951','2026-05-26 06:16:22.555956',12,1,'','website');
/*!40000 ALTER TABLE `cms_engine_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_project`
--

DROP TABLE IF EXISTS `cms_engine_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_project` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan_vi` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_text` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_type` int NOT NULL,
  `domain_vi` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_ssl` tinyint(1) DEFAULT NULL,
  `sitemap_extension` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_robots` longtext COLLATE utf8mb4_unicode_ci,
  `image404` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageLogo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imageFavicon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `cms_engine_project_created_by_id_ec931f72_fk_auth_user_id` (`created_by_id`),
  KEY `cms_engine_project_updated_by_id_baec5d6a_fk_auth_user_id` (`updated_by_id`),
  CONSTRAINT `cms_engine_project_created_by_id_ec931f72_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_engine_project_updated_by_id_baec5d6a_fk_auth_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_project`
--

LOCK TABLES `cms_engine_project` WRITE;
/*!40000 ALTER TABLE `cms_engine_project` DISABLE KEYS */;
INSERT INTO `cms_engine_project` VALUES (1,'HQT_ELEVATOR','HQT ELEVATOR','ECOMMERCE','HQT Elevator - Thương hiệu thang máy gia đình chuẩn Nhật Bản, nâng tầm an toàn, tiện nghi và đẳng cấp cho mọi không gian.','vi',0,'thangmayhqt.com',1,'project.apps.sitemap.extension','','','uploads/cms/project/logo_tach_nen.png','uploads/cms/project/logo_too.png','2026-05-23 06:57:47.730239','2026-05-27 04:49:04.303228',1,1);
/*!40000 ALTER TABLE `cms_engine_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_redirection`
--

DROP TABLE IF EXISTS `cms_engine_redirection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_redirection` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `old_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_engine_redirecti_project_id_f5507ad8_fk_cms_engin` (`project_id`),
  CONSTRAINT `cms_engine_redirecti_project_id_f5507ad8_fk_cms_engin` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_redirection`
--

LOCK TABLES `cms_engine_redirection` WRITE;
/*!40000 ALTER TABLE `cms_engine_redirection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_engine_redirection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_socialnetwork`
--

DROP TABLE IF EXISTS `cms_engine_socialnetwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_socialnetwork` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `sorted_as` int unsigned NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `project_id` bigint NOT NULL,
  `icon_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_svg` longtext COLLATE utf8mb4_unicode_ci,
  `icon_text` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_engine_socialnet_project_id_22de5a82_fk_cms_engin` (`project_id`),
  CONSTRAINT `cms_engine_socialnet_project_id_22de5a82_fk_cms_engin` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `cms_engine_socialnetwork_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_socialnetwork`
--

LOCK TABLES `cms_engine_socialnetwork` WRITE;
/*!40000 ALTER TABLE `cms_engine_socialnetwork` DISABLE KEYS */;
INSERT INTO `cms_engine_socialnetwork` VALUES (1,'Facebook',NULL,1,1,'2026-05-23 06:57:47.875245','2026-05-26 14:41:17.381439',1,'fab fa-facebook-f','',NULL),(2,'Youtube',NULL,1,0,'2026-05-23 06:57:47.875306','2026-05-26 06:08:50.180845',1,'fab fa-youtube','','▶'),(3,'Tiktok',NULL,1,0,'2026-05-23 06:57:47.875323','2026-05-26 06:09:40.277100',1,'fab fa-tiktok','','♪'),(4,'Zalo',NULL,1,0,'2026-05-23 06:57:47.875335','2026-05-26 06:09:40.280795',1,'fab fa-zalo','','Z'),(5,'LinkedIn',NULL,1,0,'2026-05-23 06:57:47.875346','2026-05-26 06:09:40.282252',1,'fab fa-linkedin-in','','in');
/*!40000 ALTER TABLE `cms_engine_socialnetwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_engine_translation`
--

DROP TABLE IF EXISTS `cms_engine_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_engine_translation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `identifier` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_vi` longtext COLLATE utf8mb4_unicode_ci,
  `exists` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `page_id` bigint DEFAULT NULL,
  `project_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_engine_translati_project_id_387a9131_fk_cms_engin` (`project_id`),
  KEY `cms_engine_translation_page_id_85eca30c` (`page_id`),
  CONSTRAINT `cms_engine_translati_project_id_387a9131_fk_cms_engin` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `cms_engine_translation_page_id_85eca30c_fk_cms_engine_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_engine_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_engine_translation`
--

LOCK TABLES `cms_engine_translation` WRITE;
/*!40000 ALTER TABLE `cms_engine_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_engine_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_sql_history`
--

DROP TABLE IF EXISTS `custom_sql_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_sql_history` (
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_sql_history`
--

LOCK TABLES `custom_sql_history` WRITE;
/*!40000 ALTER TABLE `custom_sql_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_sql_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2026-05-23 07:55:52.278104','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',1,'[{\"added\": {}}]',37,1),(2,'2026-05-23 08:22:17.493920','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(3,'2026-05-23 15:14:40.264472','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(4,'2026-05-23 15:17:04.838480','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(5,'2026-05-23 15:18:08.991451','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(6,'2026-05-23 15:20:02.230348','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(7,'2026-05-23 15:22:41.031388','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(8,'2026-05-23 15:27:02.943928','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(9,'2026-05-23 15:27:06.392343','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(10,'2026-05-23 15:32:06.153934','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(11,'2026-05-23 15:32:24.249556','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(12,'2026-05-23 15:32:49.714548','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(13,'2026-05-23 15:33:23.333543','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(14,'2026-05-23 15:33:42.472849','2','Thang Máy Gia Đình Toàn Diện | Giải Pháp Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(15,'2026-05-23 15:36:12.059069','1','HQT_ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Image logo\"]}}, {\"changed\": {\"name\": \"Constant\", \"object\": \"HQT_ELEVATOR-TEAM_TECH_PHONE\", \"fields\": [\"Value\"]}}, {\"changed\": {\"name\": \"Constant\", \"object\": \"HQT_ELEVATOR-TEAM_HR_PHONE\", \"fields\": [\"Value\"]}}, {\"changed\": {\"name\": \"Social network\", \"object\": \"(Facebook)\", \"fields\": [\"Order\"]}}]',16,1),(16,'2026-05-23 15:44:26.933456','6','Hỗ Trợ',2,'[{\"changed\": {\"fields\": [\"T\\u00ean\", \"Meta title\"]}}]',15,1),(17,'2026-05-23 15:46:04.592107','5','Giải Pháp',2,'[{\"changed\": {\"fields\": [\"Menu Column\"]}}]',15,1),(18,'2026-05-23 15:46:15.487592','12','Tin Tức',2,'[{\"changed\": {\"fields\": [\"Menu Column\", \"Menu Column\"]}}]',15,1),(19,'2026-05-23 15:49:00.200601','6','Hỗ Trợ',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',15,1),(20,'2026-05-23 16:11:58.183615','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]',37,1),(21,'2026-05-23 16:13:53.544361','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',37,1),(22,'2026-05-23 16:32:11.195961','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-23 16:32:11.179976+00:00\"}}]',37,1),(23,'2026-05-23 16:32:30.136493','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',37,1),(24,'2026-05-23 16:33:17.475173','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-23 16:33:17.466303+00:00\"}}]',37,1),(25,'2026-05-23 16:33:47.606284','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-23 16:33:47.599208+00:00\"}}, {\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-23 16:33:47.603288+00:00\"}}]',37,1),(26,'2026-05-23 16:34:10.872994','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-23 16:34:10.863395+00:00\"}}, {\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-23 16:34:10.868233+00:00\"}}]',37,1),(27,'2026-05-23 16:34:18.609205','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-23 16:34:18.607597+00:00\"}}]',37,1),(28,'2026-05-23 16:40:36.740854','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(29,'2026-05-23 16:40:45.496352','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(30,'2026-05-23 16:41:09.420885','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(31,'2026-05-23 16:41:34.776931','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(32,'2026-05-23 16:42:44.778419','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(33,'2026-05-23 16:42:59.955616','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(34,'2026-05-23 16:44:23.612983','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Featured\", \"Content\"]}}]',37,1),(35,'2026-05-23 16:45:30.365686','1','HQT_ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Image logo\"]}}]',16,1),(36,'2026-05-23 16:45:42.825099','1','HQT_ELEVATOR',2,'[]',16,1),(37,'2026-05-24 06:26:21.173085','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"changed\": {\"fields\": [\"Content\"]}}, {\"added\": {\"name\": \"Product FAQ\", \"object\": \"Thang M\\u00e1y B\\u1ec7nh Vi\\u1ec7n An Ph\\u00fac - Thang m\\u00e1y gia \\u0111\\u00ecnh c\\u00f3 t\\u1ed1n \\u0111i\\u1ec7n kh\\u00f4ng?\"}}, {\"added\": {\"name\": \"Product FAQ\", \"object\": \"Thang M\\u00e1y B\\u1ec7nh Vi\\u1ec7n An Ph\\u00fac - Th\\u1eddi gian l\\u1eafp \\u0111\\u1eb7t bao l\\u00e2u?\"}}]',37,1),(38,'2026-05-24 06:26:57.812354','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"changed\": {\"name\": \"Product FAQ\", \"object\": \"Thang M\\u00e1y B\\u1ec7nh Vi\\u1ec7n An Ph\\u00fac - Thang m\\u00e1y c\\u00f3 t\\u1ed1n \\u0111i\\u1ec7n kh\\u00f4ng?\", \"fields\": [\"Question\"]}}]',37,1),(39,'2026-05-24 09:28:36.518895','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}, {\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-24 09:28:36.507721+00:00\"}}, {\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-24 09:28:36.510284+00:00\"}}, {\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-24 09:28:36.513978+00:00\"}}, {\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-24 09:28:36.516355+00:00\"}}]',37,1),(40,'2026-05-24 09:29:19.642668','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"changed\": {\"fields\": [\"Gi\\u00e1 Gi\\u1ea3m\"]}}]',37,1),(41,'2026-05-24 09:29:32.362396','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"changed\": {\"fields\": [\"Gi\\u00e1 Gi\\u1ea3m\"]}}]',37,1),(42,'2026-05-24 09:31:51.754299','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"added\": {\"name\": \"Product FAQ\", \"object\": \"Thang M\\u00e1y B\\u1ec7nh Vi\\u1ec7n An Ph\\u00fac - S\\u1ea3n ph\\u1ea9m n\\u00e0y c\\u00f3 nhi\\u1ec1u ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng ch\\u01b0a?\"}}]',37,1),(43,'2026-05-24 11:37:46.641806','2','Background object (2)',1,'[{\"added\": {}}]',21,1),(44,'2026-05-24 11:37:59.362277','2','Background object (2)',2,'[{\"changed\": {\"fields\": [\"Page\"]}}]',21,1),(45,'2026-05-24 14:03:22.158793','1','Thang Máy Gia Đình',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',38,1),(46,'2026-05-24 14:15:49.789411','2','Thang Máy Công Cộng',2,'[{\"changed\": {\"fields\": [\"Image\", \"Description\"]}}]',38,1),(47,'2026-05-24 14:15:51.313281','2','Thang Máy Công Cộng',2,'[]',38,1),(48,'2026-05-24 14:18:05.879095','1','Thang Máy Gia Đình',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',38,1),(49,'2026-05-24 14:34:27.499099','3','Thang Máy Tải Hàng',2,'[{\"changed\": {\"fields\": [\"Image\", \"Description\"]}}]',38,1),(50,'2026-05-24 14:47:19.416198','1','HQT_ELEVATOR',2,'[{\"changed\": {\"name\": \"Branch\", \"object\": \"Vinhomes Ocean Park 3, X\\u00e3 Ngh\\u0129a Tr\\u1ee5, H\\u01b0ng Y\\u00ean\", \"fields\": [\"Phone\"]}}]',16,1),(51,'2026-05-24 14:51:11.326637','2','Thang Máy Công Cộng',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',38,1),(52,'2026-05-24 14:51:22.882577','1','Thang Máy Gia Đình',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',38,1),(53,'2026-05-24 14:52:36.293461','3','Thang Máy Tải Hàng',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',38,1),(54,'2026-05-24 14:52:41.818696','4','Thang Máy Thủy Lực',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',38,1),(55,'2026-05-24 14:56:27.959220','2','Thang Máy Công Cộng',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',38,1),(56,'2026-05-24 14:56:33.779521','1','Thang Máy Gia Đình',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',38,1),(57,'2026-05-24 14:56:41.807623','3','Thang Máy Tải Hàng',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',38,1),(58,'2026-05-24 15:01:41.931257','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Thumbnail\", \"Content\"]}}]',37,1),(59,'2026-05-24 15:04:11.239765','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(60,'2026-05-24 15:05:33.858728','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(61,'2026-05-24 15:07:38.091981','4','Thang Máy Thủy Lực',2,'[{\"changed\": {\"fields\": [\"Image\", \"Description\"]}}]',38,1),(62,'2026-05-24 15:14:58.018368','3','Thang Máy Thủy Lực HQT Elevator | Êm Ái, Sang Trọng, Tối Ưu Không Gian',1,'[{\"added\": {}}]',37,1),(63,'2026-05-24 15:15:36.630147','3','Thang Máy Thủy Lực HQT Elevator | Êm Ái, Sang Trọng, Tối Ưu Không Gian',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(64,'2026-05-24 15:16:39.134095','3','Thang Máy Thủy Lực HQT Elevator | Êm Ái, Sang Trọng, Tối Ưu Không Gian',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(65,'2026-05-24 15:19:55.475551','3','Thang Máy Thủy Lực HQT Elevator | Êm Ái, Sang Trọng, Tối Ưu Không Gian',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(66,'2026-05-24 15:23:08.250926','3','Thang Máy Thủy Lực HQT Elevator | Êm Ái, Sang Trọng, Tối Ưu Không Gian',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(67,'2026-05-24 15:24:25.516082','3','Thang Máy Thủy Lực HQT Elevator | Êm Ái, Sang Trọng, Tối Ưu Không Gian',2,'[{\"changed\": {\"fields\": [\"Description\", \"Content\"]}}]',37,1),(68,'2026-05-24 15:24:44.086926','3','Thang Máy Thủy Lực HQT Elevator | Êm Ái, Sang Trọng, Tối Ưu Không Gian',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(69,'2026-05-25 10:09:05.855887','1','Trang Chủ',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(70,'2026-05-25 10:09:10.666114','2','Sản Phẩm',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(71,'2026-05-25 10:09:15.948256','5','Giải Pháp',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(72,'2026-05-25 10:09:23.559204','4','Dự Án',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(73,'2026-05-25 10:09:27.582255','12','Tin Tức',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(74,'2026-05-25 10:09:32.589933','7','Liên Hệ',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(75,'2026-05-25 10:09:37.630509','8','Hướng Dẫn Sử Dụng',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(76,'2026-05-25 10:09:46.399541','11','Giới Thiệu',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(77,'2026-05-25 10:09:51.447232','9','Bảo Hành',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(78,'2026-05-25 10:09:55.512854','10','Bảo Dưỡng',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(79,'2026-05-25 10:10:00.731242','13','Tuyển Dụng',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(80,'2026-05-25 10:10:05.462823','13','Tuyển Dụng',2,'[]',15,1),(81,'2026-05-25 10:10:16.422143','14','Danh Mục Sản Phẩm',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(82,'2026-05-25 10:10:23.694214','6','Hỗ Trợ',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(83,'2026-05-25 10:10:27.704222','3','Dịch Vụ',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(84,'2026-05-25 10:10:32.606369','15','Sản Phẩm => Sản Phẩm',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(85,'2026-05-25 10:10:37.015626','16','Dự Án => Dự Án',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(86,'2026-05-25 10:10:40.780450','17','Tin Tức => Tin Tức',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',15,1),(87,'2026-05-25 12:22:41.814500','1','HQT_ELEVATOR',2,'[{\"changed\": {\"fields\": [\"SSL\"]}}]',16,1),(88,'2026-05-25 14:09:30.505415','1','HQT_ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Image logo\"]}}]',16,1),(89,'2026-05-25 14:09:55.842724','1','HQT_ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Image favicon\"]}}]',16,1),(90,'2026-05-25 14:15:43.851920','1','HQT_ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Image favicon\"]}}]',16,1),(91,'2026-05-25 14:28:05.159252','1','HQT_ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Image logo\"]}}]',16,1),(92,'2026-05-25 14:29:33.399365','1','HQT_ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Image logo\", \"Image favicon\"]}}]',16,1),(93,'2026-05-25 14:36:20.325902','4','Thang Máy Tải Hàng HQT Elevator | Bền Bỉ, An Toàn, Tối Ưu Vận Chuyển',1,'[{\"added\": {}}]',37,1),(94,'2026-05-25 15:00:37.107434','4','Thang Máy Tải Hàng HQT Elevator | Bền Bỉ, An Toàn, Tối Ưu Vận Chuyển',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(95,'2026-05-25 15:01:17.368787','4','Thang Máy Tải Hàng HQT Elevator | Bền Bỉ, An Toàn, Tối Ưu Vận Chuyển',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(96,'2026-05-25 15:10:33.780295','4','Thang Máy Tải Hàng HQT Elevator | Bền Bỉ, An Toàn, Tối Ưu Vận Chuyển',2,'[{\"changed\": {\"fields\": [\"Thumbnail\", \"Content\"]}}, {\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-25 15:10:33.767895+00:00\"}}, {\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-25 15:10:33.771575+00:00\"}}, {\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-25 15:10:33.773697+00:00\"}}, {\"added\": {\"name\": \"Product Gallery\", \"object\": \"H\\u00ecnh \\u1ea3nh - 2026-05-25 15:10:33.778233+00:00\"}}]',37,1),(97,'2026-05-25 15:11:06.441991','4','Thang Máy Tải Hàng HQT Elevator | Bền Bỉ, An Toàn, Tối Ưu Vận Chuyển',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',37,1),(98,'2026-05-25 15:14:15.040053','1','HQT_ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Image logo\", \"Image favicon\"]}}]',16,1),(99,'2026-05-25 15:20:21.724669','1','1 - None',1,'[{\"added\": {}}]',42,1),(100,'2026-05-25 15:29:48.823509','1','Vinhomes Grand Park Tower A',2,'[{\"changed\": {\"fields\": [\"Content\", \"S\\u1ea3n Ph\\u1ea9m S\\u1eed D\\u1ee5ng\"]}}]',34,1),(101,'2026-05-25 15:48:59.037982','1','HQT_ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Image favicon\"]}}]',16,1),(102,'2026-05-25 17:15:06.943440','5','Giải Pháp',2,'[{\"changed\": {\"fields\": [\"Context\"]}}]',15,1),(103,'2026-05-25 17:16:11.671948','1','Giải pháp cho Biệt thự & Nhà phố xây mới',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Solution Feature\", \"object\": \"Gi\\u1ea3i ph\\u00e1p cho Bi\\u1ec7t th\\u1ef1 & Nh\\u00e0 ph\\u1ed1 x\\u00e2y m\\u1edbi - Linh ho\\u1ea1t k\\u00edch th\\u01b0\\u1edbc, t\\u1ea3i tr\\u1ecdng t\\u1eeb 250kg \\u0111\\u1ebfn 630kg.\"}}, {\"added\": {\"name\": \"Solution Feature\", \"object\": \"Gi\\u1ea3i ph\\u00e1p cho Bi\\u1ec7t th\\u1ef1 & Nh\\u00e0 ph\\u1ed1 x\\u00e2y m\\u1edbi - \\u0110a d\\u1ea1ng v\\u1eadt li\\u1ec7u cabin: Inox hoa v\\u0103n, v\\u00e2n g\\u1ed7, k\\u00ednh c\\u01b0\\u1eddng l\\u1ef1c.\"}}]',44,1),(104,'2026-05-25 17:16:40.296978','2','Lắp đặt thang máy cho nhà cải tạo',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Solution Feature\", \"object\": \"L\\u1eafp \\u0111\\u1eb7t thang m\\u00e1y cho nh\\u00e0 c\\u1ea3i t\\u1ea1o - H\\u1ed1 pit si\\u00eau n\\u00f4ng, ch\\u1ec9 t\\u1eeb 300mm.\"}}, {\"added\": {\"name\": \"Solution Feature\", \"object\": \"L\\u1eafp \\u0111\\u1eb7t thang m\\u00e1y cho nh\\u00e0 c\\u1ea3i t\\u1ea1o - Thi c\\u00f4ng nhanh g\\u1ecdn trong 10 - 15 ng\\u00e0y, h\\u1ea1n ch\\u1ebf ti\\u1ebfng \\u1ed3n.\"}}]',44,1),(105,'2026-05-25 17:16:58.440813','3','Người cao tuổi',1,'[{\"added\": {}}]',44,1),(106,'2026-05-25 17:17:20.771223','4','Thẩm mỹ & phong thủy',1,'[{\"added\": {}}]',44,1),(107,'2026-05-25 17:17:25.586212','3','Người cao tuổi',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',44,1),(108,'2026-05-25 17:32:26.423846','1','AN TOÀN CHUẨN MỰC',1,'[{\"added\": {}}]',46,1),(109,'2026-05-25 17:32:38.392589','2','VẬN HÀNH ÊM ÁI',1,'[{\"added\": {}}]',46,1),(110,'2026-05-25 17:32:48.846306','3','TIẾT KIỆM ĐIỆN NĂNG',1,'[{\"added\": {}}]',46,1),(111,'2026-05-25 17:33:03.007519','4','BẢO HÀNH UY TÍN',1,'[{\"added\": {}}]',46,1),(112,'2026-05-25 17:33:21.023109','4','BẢO HÀNH UY TÍN',2,'[{\"changed\": {\"fields\": [\"Featured\"]}}]',46,1),(113,'2026-05-25 17:33:26.878664','4','BẢO HÀNH UY TÍN',2,'[{\"changed\": {\"fields\": [\"Featured\"]}}]',46,1),(114,'2026-05-26 06:08:50.185369','1','HQT_ELEVATOR',2,'[{\"changed\": {\"name\": \"Social network\", \"object\": \"(Youtube)\", \"fields\": [\"Code\", \"Text\"]}}]',16,1),(115,'2026-05-26 06:09:40.285299','1','HQT_ELEVATOR',2,'[{\"changed\": {\"name\": \"Social network\", \"object\": \"(Tiktok)\", \"fields\": [\"Code\", \"Text\"]}}, {\"changed\": {\"name\": \"Social network\", \"object\": \"(Zalo)\", \"fields\": [\"Code\", \"Text\"]}}, {\"changed\": {\"name\": \"Social network\", \"object\": \"(LinkedIn)\", \"fields\": [\"Code\", \"Text\"]}}]',16,1),(116,'2026-05-26 06:10:19.980669','1','HQT_ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Extension sitemap\"]}}]',16,1),(117,'2026-05-26 06:11:34.014870','1','HQT_ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Extension sitemap\"]}}]',16,1),(118,'2026-05-26 06:14:48.171683','1','Trang Chủ',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(119,'2026-05-26 06:14:53.163210','2','Sản Phẩm',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(120,'2026-05-26 06:14:58.895778','5','Giải Pháp',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(121,'2026-05-26 06:15:03.316944','4','Dự Án',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(122,'2026-05-26 06:15:07.595447','12','Tin Tức',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(123,'2026-05-26 06:15:18.309087','7','Liên Hệ',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(124,'2026-05-26 06:15:22.511698','8','Hướng Dẫn Sử Dụng',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(125,'2026-05-26 06:15:27.154127','11','Giới Thiệu',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(126,'2026-05-26 06:15:31.653834','9','Bảo Hành',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(127,'2026-05-26 06:15:37.512959','10','Bảo Dưỡng',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(128,'2026-05-26 06:15:54.572151','13','Tuyển Dụng',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(129,'2026-05-26 06:15:59.807424','14','Danh Mục Sản Phẩm',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(130,'2026-05-26 06:16:04.624425','6','Hỗ Trợ',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(131,'2026-05-26 06:16:09.152308','3','Dịch Vụ',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(132,'2026-05-26 06:16:13.726429','15','Sản Phẩm => Sản Phẩm',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(133,'2026-05-26 06:16:18.193296','16','Dự Án => Dự Án',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(134,'2026-05-26 06:16:22.559843','17','Tin Tức => Tin Tức',2,'[{\"changed\": {\"fields\": [\"Meta Type\"]}}]',15,1),(135,'2026-05-26 06:18:47.061520','3','Giải pháp thang máy an toàn cho gia đình có người cao tuổi',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}, {\"added\": {\"name\": \"Solution Feature\", \"object\": \"Gi\\u1ea3i ph\\u00e1p thang m\\u00e1y an to\\u00e0n cho gia \\u0111\\u00ecnh c\\u00f3 ng\\u01b0\\u1eddi cao tu\\u1ed5i - Trang b\\u1ecb c\\u1ea3m bi\\u1ebfn an to\\u00e0n, t\\u1ef1 \\u0111\\u1ed9ng c\\u1ee9u h\\u1ed9 khi m\\u1ea5t \\u0111i\\u1ec7n.\"}}, {\"added\": {\"name\": \"Solution Feature\", \"object\": \"Gi\\u1ea3i ph\\u00e1p thang m\\u00e1y an to\\u00e0n cho gia \\u0111\\u00ecnh c\\u00f3 ng\\u01b0\\u1eddi cao tu\\u1ed5i - B\\u1ea3ng \\u0111i\\u1ec1u khi\\u1ec3n \\u0111\\u01a1n gi\\u1ea3n, ph\\u00f9 h\\u1ee3p cho ng\\u01b0\\u1eddi l\\u1edbn tu\\u1ed5i s\\u1eed d\\u1ee5ng.\"}}]',44,1),(136,'2026-05-26 06:19:13.098045','4','Giải pháp thang máy hài hòa thẩm mỹ & phong thủy',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}, {\"added\": {\"name\": \"Solution Feature\", \"object\": \"Gi\\u1ea3i ph\\u00e1p thang m\\u00e1y h\\u00e0i h\\u00f2a th\\u1ea9m m\\u1ef9 & phong th\\u1ee7y - T\\u00f9y ch\\u1ecdn m\\u00e0u s\\u1eafc, v\\u1eadt li\\u1ec7u v\\u00e0 \\u00e1nh s\\u00e1ng theo phong c\\u00e1ch n\\u1ed9i th\\u1ea5t.\"}}, {\"added\": {\"name\": \"Solution Feature\", \"object\": \"Gi\\u1ea3i ph\\u00e1p thang m\\u00e1y h\\u00e0i h\\u00f2a th\\u1ea9m m\\u1ef9 & phong th\\u1ee7y - T\\u1ed1i \\u01b0u v\\u1ecb tr\\u00ed l\\u1eafp \\u0111\\u1eb7t, h\\u01b0\\u1edbng c\\u1eeda v\\u00e0 k\\u00edch th\\u01b0\\u1edbc theo phong th\\u1ee7y.\"}}]',44,1),(137,'2026-05-26 06:20:25.266557','2','Lắp đặt thang máy cho nhà cải tạo',2,'[{\"changed\": {\"fields\": [\"Featured\"]}}]',44,1),(138,'2026-05-26 06:58:04.289944','1','HQT ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',16,1),(139,'2026-05-26 07:46:20.901163','15','Sản Phẩm => Sản Phẩm',2,'[{\"changed\": {\"fields\": [\"Meta Schema\"]}}]',15,1),(140,'2026-05-26 07:50:44.058153','2','Thang Máy Gia Đình | Giải Pháp Toàn Diện Cho Nhà Phố 2 – 10 Tầng',2,'[{\"changed\": {\"fields\": [\"Slug\", \"Content\"]}}]',37,1),(141,'2026-05-26 07:54:51.739221','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',37,1),(142,'2026-05-26 07:57:31.428713','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"changed\": {\"fields\": [\"Keywords\"]}}]',37,1),(143,'2026-05-26 13:46:23.021398','1','AN TOÀN CHUẨN MỰC',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',46,1),(144,'2026-05-26 13:46:43.763664','2','VẬN HÀNH ÊM ÁI',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',46,1),(145,'2026-05-26 13:46:51.050059','3','TIẾT KIỆM ĐIỆN NĂNG',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',46,1),(146,'2026-05-26 13:46:58.349077','4','BẢO HÀNH UY TÍN',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',46,1),(147,'2026-05-26 13:47:20.522554','1','AN TOÀN CHUẨN MỰC',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',46,1),(148,'2026-05-26 13:47:36.095820','1','AN TOÀN CHUẨN MỰC',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',46,1),(149,'2026-05-26 13:47:52.054513','3','TIẾT KIỆM ĐIỆN NĂNG',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',46,1),(150,'2026-05-26 13:58:17.395018','2','Lắp đặt thang máy cho nhà cải tạo',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',44,1),(151,'2026-05-26 13:58:47.049656','1','Giải pháp cho Biệt thự & Nhà phố xây mới',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',44,1),(152,'2026-05-26 13:58:53.172260','3','Giải pháp thang máy an toàn cho gia đình có người cao tuổi',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',44,1),(153,'2026-05-26 13:59:08.651794','4','Giải pháp thang máy hài hòa thẩm mỹ & phong thủy',2,'[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]',44,1),(154,'2026-05-26 14:01:52.112391','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',37,1),(155,'2026-05-26 14:02:09.603804','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',37,1),(156,'2026-05-26 14:02:20.453974','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"changed\": {\"fields\": [\"Featured\"]}}]',37,1),(157,'2026-05-26 14:02:52.712021','1','Thang Máy Bệnh Viện An Phúc',2,'[{\"changed\": {\"fields\": [\"Status\", \"Featured\"]}}]',37,1),(158,'2026-05-26 14:11:10.253144','2','Xu hướng công nghệ thang máy 2026',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',20,1),(159,'2026-05-26 14:22:22.336398','1','HQT ELEVATOR',2,'[{\"changed\": {\"fields\": [\"Extension sitemap\"]}}]',16,1),(160,'2026-05-26 14:22:58.322256','2','Các loại thang máy gia đình phổ biến 2026 | HQT Elevato',2,'[{\"changed\": {\"fields\": [\"Article Categories\", \"Article Tags\", \"Image\", \"Publish\", \"Order\", \"Title\", \"Slug\", \"T\\u00f3m t\\u1eaft\", \"Content\"]}}]',20,1),(161,'2026-05-26 14:23:26.012960','2','Các loại thang máy gia đình phổ biến 2026 | HQT Elevato',2,'[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]',20,1),(162,'2026-05-26 14:24:17.108614','2','Các loại thang máy gia đình phổ biến 2026 | HQT Elevato',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',20,1),(163,'2026-05-26 14:27:24.517991','1','HQT ELEVATOR',2,'[]',16,1),(164,'2026-05-26 14:33:48.523572','1','Giải pháp thang máy an toàn cho công trình hiện đại',2,'[{\"changed\": {\"fields\": [\"Article Categories\", \"Image\", \"Publish\", \"Content\"]}}]',20,1),(165,'2026-05-26 14:34:23.848628','1','Giải pháp thang máy an toàn cho công trình hiện đại',2,'[{\"changed\": {\"fields\": [\"View Count\", \"Content\"]}}]',20,1),(166,'2026-05-26 14:40:23.997305','1','HQT ELEVATOR',2,'[{\"changed\": {\"name\": \"Social network\", \"object\": \"(Facebook)\", \"fields\": [\"Code\"]}}]',16,1),(167,'2026-05-26 14:41:17.383675','1','HQT ELEVATOR',2,'[{\"changed\": {\"name\": \"Social network\", \"object\": \"(Facebook)\", \"fields\": [\"Code\"]}}]',16,1),(168,'2026-05-26 14:45:50.643548','3','Bảo trì thang máy đúng chuẩn kỹ thuật: Quy trình, lợi ích và lưu ý quan trọng',2,'[{\"changed\": {\"fields\": [\"Article Categories\", \"Article Tags\", \"Image\", \"Title\", \"Slug\", \"T\\u00f3m t\\u1eaft\", \"Content\"]}}]',20,1),(169,'2026-05-27 04:49:04.336096','1','HQT ELEVATOR',2,'[{\"added\": {\"name\": \"Constant\", \"object\": \"HQT_ELEVATOR-INFO_YEAR_EXP\"}}, {\"added\": {\"name\": \"Constant\", \"object\": \"HQT_ELEVATOR-INFO_PORTFOLIO_EXP\"}}, {\"added\": {\"name\": \"Constant\", \"object\": \"HQT_ELEVATOR-INFO_CUSTOMER_EXP\"}}, {\"added\": {\"name\": \"Constant\", \"object\": \"HQT_ELEVATOR-INFO_SUPPORT_EXP\"}}]',16,1),(170,'2026-05-27 05:03:38.912315','12','Tin Tức',2,'[{\"changed\": {\"fields\": [\"Menu Column\"]}}]',15,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'admin','logentry'),(46,'apps','benefit'),(34,'apps','portfolio'),(35,'apps','portfoliocategory'),(36,'apps','portfoliogallery'),(37,'apps','product'),(38,'apps','productcategory'),(43,'apps','productfaq'),(39,'apps','productfeature'),(40,'apps','productgallery'),(41,'apps','productreview'),(44,'apps','solution'),(45,'apps','solutionfeature'),(4,'auth','group'),(5,'auth','permission'),(6,'auth','user'),(1,'captcha','captchastore'),(20,'cms_app','article'),(21,'cms_app','background'),(22,'cms_app','category'),(23,'cms_app','faq'),(24,'cms_app','faqanswer'),(25,'cms_app','innerbackground'),(26,'cms_app','inquiry'),(27,'cms_app','partner'),(28,'cms_app','popup'),(29,'cms_app','tag'),(30,'cms_app','testimonial'),(42,'cms_engine','banner'),(9,'cms_engine','branch'),(10,'cms_engine','constant'),(47,'cms_engine','highlight'),(11,'cms_engine','landing'),(12,'cms_engine','marketingclaim'),(13,'cms_engine','metaobject'),(14,'cms_engine','operatinghour'),(15,'cms_engine','page'),(16,'cms_engine','project'),(17,'cms_engine','redirection'),(18,'cms_engine','socialnetwork'),(19,'cms_engine','translation'),(7,'contenttypes','contenttype'),(31,'recruitment_engine','applicant'),(32,'recruitment_engine','department'),(33,'recruitment_engine','job'),(8,'sessions','session'),(2,'thumbnail','kvstore');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-05-23 06:51:22.416024'),(2,'auth','0001_initial','2026-05-23 06:52:09.196230'),(3,'admin','0001_initial','2026-05-23 06:52:17.714178'),(4,'admin','0002_logentry_remove_auto_add','2026-05-23 06:52:17.884032'),(5,'admin','0003_logentry_add_action_flag_choices','2026-05-23 06:52:18.066450'),(6,'apps','0001_initial','2026-05-23 06:53:15.099145'),(7,'contenttypes','0002_remove_content_type_name','2026-05-23 06:53:20.214089'),(8,'auth','0002_alter_permission_name_max_length','2026-05-23 06:53:23.811643'),(9,'auth','0003_alter_user_email_max_length','2026-05-23 06:53:24.934435'),(10,'auth','0004_alter_user_username_opts','2026-05-23 06:53:25.232162'),(11,'auth','0005_alter_user_last_login_null','2026-05-23 06:53:28.090843'),(12,'auth','0006_require_contenttypes_0002','2026-05-23 06:53:28.503678'),(13,'auth','0007_alter_validators_add_error_messages','2026-05-23 06:53:28.800059'),(14,'auth','0008_alter_user_username_max_length','2026-05-23 06:53:32.488532'),(15,'auth','0009_alter_user_last_name_max_length','2026-05-23 06:53:36.766723'),(16,'auth','0010_alter_group_name_max_length','2026-05-23 06:53:37.257294'),(17,'auth','0011_update_proxy_permissions','2026-05-23 06:53:37.404051'),(18,'auth','0012_alter_user_first_name_max_length','2026-05-23 06:53:42.240805'),(19,'captcha','0001_initial','2026-05-23 06:53:43.363672'),(20,'captcha','0002_alter_captchastore_id','2026-05-23 06:53:43.457975'),(21,'cms_engine','0001_initial','2026-05-23 06:54:58.641842'),(22,'cms_app','0001_initial','2026-05-23 06:57:15.923007'),(23,'recruitment_engine','0001_initial','2026-05-23 06:57:40.710859'),(24,'sessions','0001_initial','2026-05-23 06:57:42.778997'),(25,'thumbnail','0001_initial','2026-05-23 06:57:44.596676'),(26,'apps','0002_solution_solutionfeature','2026-05-25 17:13:29.340578'),(27,'apps','0003_benefit','2026-05-25 17:32:14.590074');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2kms22gyjbtsjdc61l8na7j1stdsgbna','.eJxVjEEOwiAQRe_C2hCYNggu3XsGMgwzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jlNVFWXX63RLSk-sO8gPrvWlqdZmnpHdFH7TrW8v8uh7u30HBXr61RxjIsxMhsuDYCAf2noIDJywAYsxIYBNZn2FI2YicrQs-ZRwhBPX-AAGPOHA:1wRLvU:2QYw8BAcn8-BgVuDHaYTUHV0dxHLj9iVngVTsTpFfSQ','2026-06-08 03:24:24.637334'),('55mcw5y14yism0jnpb15nr8ozeuewngj','.eJxVjEEOwiAQRe_C2hCYNggu3XsGMgwzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jlNVFWXX63RLSk-sO8gPrvWlqdZmnpHdFH7TrW8v8uh7u30HBXr61RxjIsxMhsuDYCAf2noIDJywAYsxIYBNZn2FI2YicrQs-ZRwhBPX-AAGPOHA:1wQgt6:UrQzbVfdWgCTbrsWzO-8i8oz8tSvkJJBFl6Zpx66nIY','2026-06-06 07:35:12.144082'),('68g8rgnc40z39hjw3r9t7pab5fmqp17n','.eJxVjEEOwiAQRe_C2hCYNggu3XsGMgwzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jlNVFWXX63RLSk-sO8gPrvWlqdZmnpHdFH7TrW8v8uh7u30HBXr61RxjIsxMhsuDYCAf2noIDJywAYsxIYBNZn2FI2YicrQs-ZRwhBPX-AAGPOHA:1wQgpy:ZkzqfC_QlqVCHDEGYX_4EsFKcx8OF7-9g2xXbTRIPfY','2026-06-06 07:31:58.397139'),('bfbwd75e3qcrfm0pn17aoxbxl6zocark','.eJxVjEEOwiAQRe_C2hCYNggu3XsGMgwzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jlNVFWXX63RLSk-sO8gPrvWlqdZmnpHdFH7TrW8v8uh7u30HBXr61RxjIsxMhsuDYCAf2noIDJywAYsxIYBNZn2FI2YicrQs-ZRwhBPX-AAGPOHA:1wR287:EKNJD8sKuvf3Nluo-Gsa6BZbNcirMe9-6WNkyB-5R18','2026-06-07 06:16:07.860100'),('cnjid7ve2ix1f3tbq8i1yd13uzaesnqj','.eJxVjEEOwiAQRe_C2hCYNggu3XsGMgwzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jlNVFWXX63RLSk-sO8gPrvWlqdZmnpHdFH7TrW8v8uh7u30HBXr61RxjIsxMhsuDYCAf2noIDJywAYsxIYBNZn2FI2YicrQs-ZRwhBPX-AAGPOHA:1wRips:cwLt0WTIRfluFw_fwGqm6bAVyxgstzEkVGjzGv6VSZs','2026-06-09 03:52:08.565039'),('curdterzei05nqa13v5kun5o445jx4a2','.eJxVjEEOwiAQRe_C2hCYNggu3XsGMgwzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jlNVFWXX63RLSk-sO8gPrvWlqdZmnpHdFH7TrW8v8uh7u30HBXr61RxjIsxMhsuDYCAf2noIDJywAYsxIYBNZn2FI2YicrQs-ZRwhBPX-AAGPOHA:1wQnjs:DBkYnohr_F4kF2ywB3WHE0RwtCPOY8ToNiiZkPow5aY','2026-06-06 14:54:08.698970'),('dyn68ez9f5rcbpdc2angz6rjj0is1728','.eJxVjEEOwiAQRe_C2hCYNggu3XsGMgwzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jlNVFWXX63RLSk-sO8gPrvWlqdZmnpHdFH7TrW8v8uh7u30HBXr61RxjIsxMhsuDYCAf2noIDJywAYsxIYBNZn2FI2YicrQs-ZRwhBPX-AAGPOHA:1wRYsE:TqI0NufyuUCCjijPYZlQaTtoUvynybTz8icumZRMv8A','2026-06-08 17:13:54.945623'),('hecier9dmpnnp7eov7v9gjgki9ih524n','.eJxVjEEOwiAQRe_C2hCYNggu3XsGMgwzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jlNVFWXX63RLSk-sO8gPrvWlqdZmnpHdFH7TrW8v8uh7u30HBXr61RxjIsxMhsuDYCAf2noIDJywAYsxIYBNZn2FI2YicrQs-ZRwhBPX-AAGPOHA:1wR55y:zRLASi3o84d2xfA4gBcaruIKZ82yx2GRH5dclTZe5eE','2026-06-07 09:26:06.634931'),('ik24y6xhdqkt0vucoeuzyzjmppkpjuny','.eJxVjEEOwiAQRe_C2hCYNggu3XsGMgwzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jlNVFWXX63RLSk-sO8gPrvWlqdZmnpHdFH7TrW8v8uh7u30HBXr61RxjIsxMhsuDYCAf2noIDJywAYsxIYBNZn2FI2YicrQs-ZRwhBPX-AAGPOHA:1wQnyi:kjSB6Sn2hGlT0u82BxQw4f5kEertehb_uQpGaKuwfjo','2026-06-06 15:09:28.754926'),('k5m0dwpidz99g42p90y42btz5o5j3dn1','.eJxVjEEOwiAQRe_C2hCYNggu3XsGMgwzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jlNVFWXX63RLSk-sO8gPrvWlqdZmnpHdFH7TrW8v8uh7u30HBXr61RxjIsxMhsuDYCAf2noIDJywAYsxIYBNZn2FI2YicrQs-ZRwhBPX-AAGPOHA:1wRSEY:wvYkZFPN90NwQgumDHUazNCvGuCTSIxJ5huUey2qXuE','2026-06-08 10:08:30.466584'),('s1scn5dprjkqfabmheyyx7vr0s7kzj64','.eJxVjEEOwiAQRe_C2hCYNggu3XsGMgwzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jlNVFWXX63RLSk-sO8gPrvWlqdZmnpHdFH7TrW8v8uh7u30HBXr61RxjIsxMhsuDYCAf2noIDJywAYsxIYBNZn2FI2YicrQs-ZRwhBPX-AAGPOHA:1wRLvV:In_5uTMCZY_IHdFxkUKjDVPo-lgcLeYI8EvAFR6eQ2Q','2026-06-08 03:24:25.578304'),('vumarkrlhkth3nr69xo73t0an7ej46c0','.eJxVjEEOwiAQRe_C2hCYNggu3XsGMgwzUjWQlHbVeHdt0oVu_3vvbyriupS4dp7jlNVFWXX63RLSk-sO8gPrvWlqdZmnpHdFH7TrW8v8uh7u30HBXr61RxjIsxMhsuDYCAf2noIDJywAYsxIYBNZn2FI2YicrQs-ZRwhBPX-AAGPOHA:1wS5i7:0ToGTfl-JkoTutXaHAG9altkD6WmX29LkV28kRcVmLE','2026-06-10 04:17:39.280762');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruitment_engine_applicant`
--

DROP TABLE IF EXISTS `recruitment_engine_applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recruitment_engine_applicant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `job_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recruitment_engine_a_job_id_bf46b565_fk_recruitme` (`job_id`),
  CONSTRAINT `recruitment_engine_a_job_id_bf46b565_fk_recruitme` FOREIGN KEY (`job_id`) REFERENCES `recruitment_engine_job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruitment_engine_applicant`
--

LOCK TABLES `recruitment_engine_applicant` WRITE;
/*!40000 ALTER TABLE `recruitment_engine_applicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `recruitment_engine_applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruitment_engine_department`
--

DROP TABLE IF EXISTS `recruitment_engine_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recruitment_engine_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_vi` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_vi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_vi` longtext COLLATE utf8mb4_unicode_ci,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorted_as` int unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `project_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `recruitment_engine_d_project_id_36d7621f_fk_cms_engin` (`project_id`),
  KEY `recruitment_engine_department_branch_id_9729f657` (`branch_id`),
  CONSTRAINT `recruitment_engine_d_branch_id_9729f657_fk_cms_engin` FOREIGN KEY (`branch_id`) REFERENCES `cms_engine_branch` (`id`),
  CONSTRAINT `recruitment_engine_d_project_id_36d7621f_fk_cms_engin` FOREIGN KEY (`project_id`) REFERENCES `cms_engine_project` (`id`),
  CONSTRAINT `recruitment_engine_department_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruitment_engine_department`
--

LOCK TABLES `recruitment_engine_department` WRITE;
/*!40000 ALTER TABLE `recruitment_engine_department` DISABLE KEYS */;
INSERT INTO `recruitment_engine_department` VALUES (1,'engineering_installation','Kỹ thuật - Lắp đặt',NULL,NULL,NULL,NULL,0,1,'2026-05-23 06:57:52.674680','2026-05-23 06:57:52.674757',1,1),(2,'business_sales','Kinh doanh - Bán hàng',NULL,NULL,NULL,NULL,0,1,'2026-05-23 06:57:52.674732','2026-05-23 06:57:52.674767',1,1),(3,'support_warranty','CSKH - Bảo hành',NULL,NULL,NULL,NULL,0,1,'2026-05-23 06:57:52.674744','2026-05-23 06:57:52.674777',1,1);
/*!40000 ALTER TABLE `recruitment_engine_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruitment_engine_job`
--

DROP TABLE IF EXISTS `recruitment_engine_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recruitment_engine_job` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_vi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_vi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_vi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_vi` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_vi` longtext COLLATE utf8mb4_unicode_ci,
  `requirement_vi` longtext COLLATE utf8mb4_unicode_ci,
  `benefit_vi` longtext COLLATE utf8mb4_unicode_ci,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_from` datetime(6) DEFAULT NULL,
  `published_to` datetime(6) DEFAULT NULL,
  `sorted_as` int unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `branch_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recruitment_engine_j_branch_id_3b613327_fk_cms_engin` (`branch_id`),
  KEY `recruitment_engine_job_department_id_5baadadf` (`department_id`),
  CONSTRAINT `recruitment_engine_j_branch_id_3b613327_fk_cms_engin` FOREIGN KEY (`branch_id`) REFERENCES `cms_engine_branch` (`id`),
  CONSTRAINT `recruitment_engine_j_department_id_5baadadf_fk_recruitme` FOREIGN KEY (`department_id`) REFERENCES `recruitment_engine_department` (`id`),
  CONSTRAINT `recruitment_engine_job_chk_1` CHECK ((`sorted_as` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruitment_engine_job`
--

LOCK TABLES `recruitment_engine_job` WRITE;
/*!40000 ALTER TABLE `recruitment_engine_job` DISABLE KEYS */;
INSERT INTO `recruitment_engine_job` VALUES (1,'full_time','onsite','Kỹ Sư Lắp Đặt Thang Máy',NULL,NULL,'Thi công, lắp đặt hệ thống thang máy tại công trình',NULL,NULL,NULL,'',NULL,'2026-06-30 00:00:00.000000',0,0,'2026-05-23 06:57:53.076511','2026-05-23 06:57:53.076553',1,1),(2,'full_time','onsite','Chuyên Viên Tư Vấn Dự Án (Sales B2B)',NULL,NULL,'Tư vấn giải pháp thang máy cho khách hàng doanh nghiệp',NULL,NULL,NULL,'',NULL,'2026-06-15 00:00:00.000000',0,0,'2026-05-23 06:57:53.076529','2026-05-23 06:57:53.076564',1,2),(3,'full_time','onsite','Kỹ Thuật Viên Bảo Trì Thang Máy',NULL,NULL,'Bảo trì, xử lý sự cố thang máy theo ca/lưu động',NULL,NULL,NULL,'',NULL,'2026-06-15 00:00:00.000000',0,0,'2026-05-23 06:57:53.076540','2026-05-23 06:57:53.076574',1,3);
/*!40000 ALTER TABLE `recruitment_engine_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbnail_kvstore`
--

DROP TABLE IF EXISTS `thumbnail_kvstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thumbnail_kvstore` (
  `key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbnail_kvstore`
--

LOCK TABLES `thumbnail_kvstore` WRITE;
/*!40000 ALTER TABLE `thumbnail_kvstore` DISABLE KEYS */;
INSERT INTO `thumbnail_kvstore` VALUES ('sorl-thumbnail||image||0763c97c3b31935e519c54d9f9ef89cf','{\"name\": \"cache/71/02/7102c715b92c0a7304447399510c6157.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [16, 16]}'),('sorl-thumbnail||image||2d04bf4776b59fe7d3f306ae1720f6aa','{\"name\": \"uploads/cms/project/thang-may-gia-dinh--giai-phap-toan-diencho-nha-pho_1.png\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [1000, 1000]}'),('sorl-thumbnail||image||5678349be0a26628adf528aa3d0123e2','{\"name\": \"uploads/cms/backgrounds/background-home.avif\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [1920, 1280]}'),('sorl-thumbnail||image||5d8bfab9514c6a696b905172f3df02e7','{\"name\": \"uploads/cms/project/LOGO.png\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [1000, 1000]}'),('sorl-thumbnail||image||6bc9a02b4acc7bf29f78ba415df6aed4','{\"name\": \"cache/d7/03/d70339f1782c6893e3336da76d042241.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [100, 40]}'),('sorl-thumbnail||image||73ac09955c801271ed5e0c1efc4bacfe','{\"name\": \"cache/ad/81/ad8186f19a4f9fb950b9e270671425fc.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [16, 16]}'),('sorl-thumbnail||image||85d6558246ea587f6c6a4fe651958522','{\"name\": \"cache/96/6c/966c449bb97ddecf014f7629b633218a.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [100, 100]}'),('sorl-thumbnail||image||913a6f2de63f31ad82e2174233ce9b71','{\"name\": \"uploads/cms/project/Gemini_Generated_Image_6pkt186pkt186pkt.png\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [1024, 1024]}'),('sorl-thumbnail||image||a2f5d2587b8033a7d6b114b235b1ddd5','{\"name\": \"uploads/cms/project/logo_tach_nen_DJNzxWX.png\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [1000, 1000]}'),('sorl-thumbnail||image||adff0c6ac85d35669fafcce543b63cc8','{\"name\": \"cache/97/af/97af41ed5936a599a03dc0584685ecce.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [100, 40]}'),('sorl-thumbnail||image||b458bf02d87063153532ca7d858f3d12','{\"name\": \"cache/94/80/948033998983cb0e8832909476106f53.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [100, 40]}'),('sorl-thumbnail||image||b58bdcb9fd7b03ab14678ce9b085d04e','{\"name\": \"uploads/cms/project/logo_tach_nen.png\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [1000, 1000]}'),('sorl-thumbnail||image||b68175717578a9705aff6eebb7b857e9','{\"name\": \"cache/57/a8/57a8e33ddc112824785dae74b968a9f7.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [16, 16]}'),('sorl-thumbnail||image||ba4ec3a6e140ccb17610f8282d77cae8','{\"name\": \"cache/4d/3f/4d3f2c16fda110be1b8d2b17779a0687.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [120, 80]}'),('sorl-thumbnail||image||bfbaa622b55c15febb8e02280ee79a7f','{\"name\": \"cache/89/32/89328c49726707143c502a1faceeb732.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [16, 16]}'),('sorl-thumbnail||image||c964bad684658937d00299be64f7ca0a','{\"name\": \"uploads/cms/project/logo_to.png\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [1000, 1000]}'),('sorl-thumbnail||image||ca2b4b4c7d91d542d5efaad0a6cb0ab9','{\"name\": \"uploads/cms/project/thang-may-gia-dinh--giai-phap-toan-diencho-nha-pho_1_reg4d84.png\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [1000, 1000]}'),('sorl-thumbnail||image||cfe744d3fbd5f9c05241838b6a9b18dc','{\"name\": \"uploads/cms/project/logo_thang_may_hqt.png\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [1000, 1000]}'),('sorl-thumbnail||image||d111cc34f009f098a8142559b3f06701','{\"name\": \"cache/42/f4/42f499bae03c5f69b06de67759ccdae2.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [100, 40]}'),('sorl-thumbnail||image||d79e33b17a788c078ada58980d6a9bbd','{\"name\": \"uploads/cms/project/logo_to_y473RW2.png\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [1000, 1000]}'),('sorl-thumbnail||image||e4d88ea6c02f15e348e3c1a1ff8a0fdf','{\"name\": \"cache/77/18/7718da48cfb50df79e9e80c082dafab6.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [100, 40]}'),('sorl-thumbnail||image||f3f84b26877b2ce6f696306a8e62179e','{\"name\": \"cache/44/40/44407c7527b515c2dfee888a27c37bbe.jpg\", \"storage\": \"django.core.files.storage.filesystem.FileSystemStorage\", \"size\": [72, 72]}'),('sorl-thumbnail||thumbnails||2d04bf4776b59fe7d3f306ae1720f6aa','[\"e4d88ea6c02f15e348e3c1a1ff8a0fdf\"]'),('sorl-thumbnail||thumbnails||5678349be0a26628adf528aa3d0123e2','[\"ba4ec3a6e140ccb17610f8282d77cae8\"]'),('sorl-thumbnail||thumbnails||5d8bfab9514c6a696b905172f3df02e7','[\"b68175717578a9705aff6eebb7b857e9\"]'),('sorl-thumbnail||thumbnails||913a6f2de63f31ad82e2174233ce9b71','[\"b458bf02d87063153532ca7d858f3d12\"]'),('sorl-thumbnail||thumbnails||a2f5d2587b8033a7d6b114b235b1ddd5','[\"0763c97c3b31935e519c54d9f9ef89cf\"]'),('sorl-thumbnail||thumbnails||b58bdcb9fd7b03ab14678ce9b085d04e','[\"d111cc34f009f098a8142559b3f06701\", \"f3f84b26877b2ce6f696306a8e62179e\", \"85d6558246ea587f6c6a4fe651958522\"]'),('sorl-thumbnail||thumbnails||c964bad684658937d00299be64f7ca0a','[\"6bc9a02b4acc7bf29f78ba415df6aed4\"]'),('sorl-thumbnail||thumbnails||ca2b4b4c7d91d542d5efaad0a6cb0ab9','[\"bfbaa622b55c15febb8e02280ee79a7f\"]'),('sorl-thumbnail||thumbnails||cfe744d3fbd5f9c05241838b6a9b18dc','[\"adff0c6ac85d35669fafcce543b63cc8\"]'),('sorl-thumbnail||thumbnails||d79e33b17a788c078ada58980d6a9bbd','[\"73ac09955c801271ed5e0c1efc4bacfe\"]');
/*!40000 ALTER TABLE `thumbnail_kvstore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-27 14:17:45
