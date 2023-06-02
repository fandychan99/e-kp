-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: fihealth_db
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `trn_appointment`
--

DROP TABLE IF EXISTS `trn_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trn_appointment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `patient` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slot_id` bigint(20) DEFAULT NULL,
  `date_book` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trn_appointment`
--

LOCK TABLES `trn_appointment` WRITE;
/*!40000 ALTER TABLE `trn_appointment` DISABLE KEYS */;
INSERT INTO `trn_appointment` VALUES (1,'admin','fandy',2,'2023-05-18',2,'admin','2023-05-16 07:08:51',NULL,NULL,''),(2,'admin','fandy',1,'2023-05-21',3,'admin','2023-05-18 22:13:39',NULL,NULL,''),(3,'admin','fandy',8,'2023-05-18',4,'admin','2023-05-18 22:15:29',NULL,NULL,''),(4,'user_tes@gmail.com','fandy',9,'2023-05-22',2,'user_tes@gmail.com','2023-05-18 22:44:09',NULL,NULL,''),(5,'user_tes@gmail.com','fandy',13,'2023-05-18',2,'user_tes@gmail.com','2023-05-18 22:47:05',NULL,NULL,''),(6,'admin','',10,'0000-00-00',1,'admin','2023-05-20 14:50:33',NULL,NULL,''),(7,'admin','fandy',10,'2023-05-22',2,'admin','2023-05-20 15:28:15',NULL,NULL,'');
/*!40000 ALTER TABLE `trn_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trn_article`
--

DROP TABLE IF EXISTS `trn_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trn_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `part_content` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trn_article`
--

LOCK TABLES `trn_article` WRITE;
/*!40000 ALTER TABLE `trn_article` DISABLE KEYS */;
INSERT INTO `trn_article` VALUES (7,'INi untuk Judul','ini untuk highlight','<p><img src=\"http://localhost/fihealth/assets/images/news/ilustrasi-kanker-payudara-7_1691.jpeg\" style=\"width: 800px;\"></p><p><br></p><p><br></p><p>isi berita di sini ya</p><p>jangan di highlight, highlight itu untuk halaman depan, bukan isi artikel</p>','http://localhost/fihealth/assets/images/news/ilustrasi-kanker-payudara-7_1691.jpeg','admin','2023-05-23 19:23:33',NULL,NULL,'');
/*!40000 ALTER TABLE `trn_article` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_add_article` BEFORE INSERT ON `trn_article` FOR EACH ROW BEGIN
	SET NEW.created_date = now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_article` BEFORE UPDATE ON `trn_article` FOR EACH ROW begin
	set new.created_date = old.created_date, new.updated_date = NOW();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `trn_chat`
--

DROP TABLE IF EXISTS `trn_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trn_chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appointment_id` bigint(20) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `chat_text` varchar(1000) DEFAULT NULL,
  `send_date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trn_chat`
--

LOCK TABLES `trn_chat` WRITE;
/*!40000 ALTER TABLE `trn_chat` DISABLE KEYS */;
INSERT INTO `trn_chat` VALUES (3,1,'admin','tes','2023-05-18 02:03:16'),(4,1,'fandy','tes 2','2023-05-18 02:03:22'),(5,1,'fandy','Ada yang bisa saya bantu','2023-05-18 02:19:02'),(6,1,'admin','minta uang dok','2023-05-18 02:19:10'),(7,1,'fandy',' rontok','2023-05-18 02:19:55'),(8,1,'admin','dok','2023-05-18 02:20:06'),(9,1,'admin','sukak mu la ','2023-05-18 02:26:51'),(10,1,'admin','tes lagi bos','2023-05-18 02:27:56'),(11,1,'fandy','apa bos','2023-05-18 02:28:49'),(12,1,'admin','santai la bos','2023-05-18 02:28:56'),(13,1,'admin','ok la bos','2023-05-18 02:29:06'),(14,1,'fandy','epuluh','2023-05-18 02:29:17'),(15,1,'fandy','makan apa kita','2023-05-18 02:29:26'),(16,1,'admin','nasi aja bos ku','2023-05-18 02:29:32'),(17,1,'fandy','mana la enak bos, kasi la lauk sikit','2023-05-18 02:29:45'),(18,1,'admin','tes','2023-05-18 11:11:39'),(19,1,'fandy','testing','2023-05-18 11:11:48'),(20,5,'user_tes@gmail.com','selamat malam dok','2023-05-18 22:56:24'),(21,5,'fandy','selamat malam juga','2023-05-18 22:56:38'),(22,5,'fandy','ada yang bisa saya bantu','2023-05-18 22:56:51'),(23,5,'user_tes@gmail.com','tes','2023-05-18 22:57:20'),(24,2,'fandy','tes','2023-05-21 15:17:50');
/*!40000 ALTER TABLE `trn_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trn_login_history`
--

DROP TABLE IF EXISTS `trn_login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trn_login_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessed_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_success` bit(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trn_login_history`
--

LOCK TABLES `trn_login_history` WRITE;
/*!40000 ALTER TABLE `trn_login_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_login_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trn_toko`
--

DROP TABLE IF EXISTS `trn_toko`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trn_toko` (
  `id` int(11) NOT NULL,
  `toko_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longtitude` double DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trn_toko`
--

LOCK TABLES `trn_toko` WRITE;
/*!40000 ALTER TABLE `trn_toko` DISABLE KEYS */;
/*!40000 ALTER TABLE `trn_toko` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utl_diagnosa_patient`
--

DROP TABLE IF EXISTS `utl_diagnosa_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_diagnosa_patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_appointment` int(11) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `date_consul` datetime DEFAULT NULL,
  `diagnose` longtext DEFAULT NULL,
  `recipe` longtext DEFAULT NULL,
  `therapy` longtext DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `craeted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_diagnosa_patient`
--

LOCK TABLES `utl_diagnosa_patient` WRITE;
/*!40000 ALTER TABLE `utl_diagnosa_patient` DISABLE KEYS */;
INSERT INTO `utl_diagnosa_patient` VALUES (1,2,'admin','2023-05-21 00:00:00','tes ','tes','tes','fandy','2023-05-21 13:51:18'),(2,2,'admin','2023-05-21 00:00:00','tes','tes','tes','fandy','2023-05-21 13:53:59');
/*!40000 ALTER TABLE `utl_diagnosa_patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `diagnosa_after_insert` AFTER INSERT ON `utl_diagnosa_patient` FOR EACH ROW BEGIN
	UPDATE trn_appointment SET `status` = 3 where id = NEW.id_appointment;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `utl_jadwal_dokter`
--

DROP TABLE IF EXISTS `utl_jadwal_dokter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_jadwal_dokter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `doctor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_jadwal_dokter`
--

LOCK TABLES `utl_jadwal_dokter` WRITE;
/*!40000 ALTER TABLE `utl_jadwal_dokter` DISABLE KEYS */;
INSERT INTO `utl_jadwal_dokter` VALUES (1,'fandy','Sunday','06:00:00','07:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(2,'fandy','Monday','07:00:00','08:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(3,'fandy','Tuesday','08:00:00','09:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(5,'fandy','Wednesday','08:00:00','09:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(6,'fandy','Friday','08:00:00','09:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(8,'fandy','Thursday','08:00:00','09:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(9,'fandy','Monday','08:00:00','09:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(10,'fandy','Monday','09:00:00','10:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(11,'fandy','Monday','10:00:00','11:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(12,'fandy','Sunday','07:00:00','07:39:00','\0','','0000-00-00 00:00:00',NULL,NULL,'');
/*!40000 ALTER TABLE `utl_jadwal_dokter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utl_menu`
--

DROP TABLE IF EXISTS `utl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `have_child` bit(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `is_maintenance` bit(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_menu`
--

LOCK TABLES `utl_menu` WRITE;
/*!40000 ALTER TABLE `utl_menu` DISABLE KEYS */;
INSERT INTO `utl_menu` VALUES (1,'Utility','#','bi bi-gear','',10,1,0,'\0',NULL,NULL,NULL,NULL,NULL),(2,'Management User','C_User',NULL,'\0',1,2,1,'\0',NULL,NULL,NULL,NULL,NULL),(5,'Access Menu','C_Menu_Access',NULL,'\0',4,2,1,'\0',NULL,NULL,NULL,NULL,NULL),(10,'Profile','C_Profile','bx bx-user','\0',1,1,0,'\0',NULL,NULL,NULL,NULL,NULL),(11,'Appointment','C_Appointment','fadeIn animated bx bx-book-add','\0',3,1,0,'\0',NULL,NULL,NULL,NULL,NULL),(13,'Chats / Consultation','C_Chat','bi bi-chat','\0',4,1,0,'\0',NULL,NULL,NULL,NULL,NULL),(14,'Article','C_Article','bi bi-newspaper','\0',5,1,0,'\0',NULL,NULL,NULL,NULL,NULL),(15,'Schedule Doctor','C_Schedule','bi bi-calendar','\0',2,1,0,'\0',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `utl_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utl_menu_access`
--

DROP TABLE IF EXISTS `utl_menu_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_menu_access` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `add_mode` bit(1) NOT NULL DEFAULT b'0',
  `edit_mode` bit(1) NOT NULL DEFAULT b'0',
  `delete_mode` bit(1) NOT NULL DEFAULT b'0',
  `pdf_mode` bit(1) NOT NULL DEFAULT b'0',
  `excel_mode` bit(1) NOT NULL DEFAULT b'0',
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `macces_menu_id` (`menu_id`) USING BTREE,
  KEY `macces_role_id` (`role_id`) USING BTREE,
  CONSTRAINT `utl_menu_access_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `utl_menu` (`id`) ON DELETE CASCADE,
  CONSTRAINT `utl_menu_access_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `utl_role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_menu_access`
--

LOCK TABLES `utl_menu_access` WRITE;
/*!40000 ALTER TABLE `utl_menu_access` DISABLE KEYS */;
INSERT INTO `utl_menu_access` VALUES (192,10,4,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(193,11,4,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(194,13,4,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(195,14,4,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(197,1,1,'','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(198,2,1,'','','\0','\0','\0','0','0000-00-00 00:00:00','0'),(199,5,1,'','','\0','\0','\0','0','0000-00-00 00:00:00','0'),(200,10,1,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(201,11,1,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(202,13,1,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(203,14,1,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(212,1,2,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(213,15,2,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(214,10,2,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(215,11,2,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(216,13,2,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(217,14,2,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0');
/*!40000 ALTER TABLE `utl_menu_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utl_role`
--

DROP TABLE IF EXISTS `utl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_role`
--

LOCK TABLES `utl_role` WRITE;
/*!40000 ALTER TABLE `utl_role` DISABLE KEYS */;
INSERT INTO `utl_role` VALUES (1,'System Administrator','Berkuasa Penuh Atas Aplikasi',NULL,NULL,NULL,NULL,NULL),(2,'Doctor','Docter',NULL,NULL,NULL,NULL,NULL),(4,'Patient','patient',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `utl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utl_spesialis_doctor`
--

DROP TABLE IF EXISTS `utl_spesialis_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_spesialis_doctor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string` varchar(255) DEFAULT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'0',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_spesialis_doctor`
--

LOCK TABLES `utl_spesialis_doctor` WRITE;
/*!40000 ALTER TABLE `utl_spesialis_doctor` DISABLE KEYS */;
INSERT INTO `utl_spesialis_doctor` VALUES (1,'Dokter Umum','','','0000-00-00 00:00:00',NULL,NULL,''),(2,'Dokter Anak','','','0000-00-00 00:00:00',NULL,NULL,''),(3,'Dokter Bedah','','','0000-00-00 00:00:00',NULL,NULL,''),(4,'Dokter Mata','','','0000-00-00 00:00:00',NULL,NULL,''),(5,'Dokter Kandungan','','','0000-00-00 00:00:00',NULL,NULL,''),(6,'Dokter Jantung','','','0000-00-00 00:00:00',NULL,NULL,'');
/*!40000 ALTER TABLE `utl_spesialis_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utl_user`
--

DROP TABLE IF EXISTS `utl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_user` (
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `android_access` bit(1) NOT NULL DEFAULT b'0',
  `web_access` bit(1) NOT NULL DEFAULT b'1',
  `secure_ask` bit(1) NOT NULL DEFAULT b'0',
  `is_locked` bit(1) NOT NULL DEFAULT b'0',
  `is_nonactive` bit(1) NOT NULL DEFAULT b'0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_user`
--

LOCK TABLES `utl_user` WRITE;
/*!40000 ALTER TABLE `utl_user` DISABLE KEYS */;
INSERT INTO `utl_user` VALUES ('admin','$2y$10$mfs2CWOcuff7.cQtm1Qq.uVckfLQQjiuehUPmp4QJqN7vjKfxFn0i','Admin Ganteng','Notes_210913_182216_5d1-750x5361.png',1,'\0','','\0','\0','\0','','0000-00-00 00:00:00','admin','2023-05-20 19:00:54',''),('chaniago','$2y$10$2vWqg89Fh6YWYsG.02/VzeZzUrWv4PWawCN9quhkLYv323hBS3iVq','tes',NULL,4,'\0','','\0','\0','\0','','0000-00-00 00:00:00',NULL,NULL,''),('fandy','$2y$10$I0ngjPZgE9V4ivSoo9nDjeoucwGDle0.ZUOTJHbre3oJjK16O.apu','Fandy Chaniago 2','istockphoto-1197250881-612x612.jpg',2,'\0','','\0','\0','\0','','0000-00-00 00:00:00','admin','2023-05-21 01:22:55',''),('fatih99@gmail.com','$2y$10$gixhjMg1YR4AHMG0hXQpM.Albq/SjHd353VJc2moA4g3qBGVjP7DO','Muhammad Al Fatih',NULL,4,'\0','\0','\0','\0','\0','','0000-00-00 00:00:00',NULL,NULL,''),('fc99@gmail.com','$2y$10$gixhjMg1YR4AHMG0hXQpM.Albq/SjHd353VJc2moA4g3qBGVjP7DO','Fan CHan',NULL,2,'\0','\0','\0','\0','\0','','0000-00-00 00:00:00',NULL,NULL,'');
/*!40000 ALTER TABLE `utl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utl_user_doctor`
--

DROP TABLE IF EXISTS `utl_user_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_user_doctor` (
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spesialist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_study` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `str` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gelar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_work` int(11) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_user_doctor`
--

LOCK TABLES `utl_user_doctor` WRITE;
/*!40000 ALTER TABLE `utl_user_doctor` DISABLE KEYS */;
INSERT INTO `utl_user_doctor` VALUES ('fandy','1','S2  UI Jakartayar','1213213','Dokter Coba Coba','S. PA',0,'','0000-00-00 00:00:00',NULL,NULL,''),('fc99@gmail.com','','',NULL,'','',NULL,'','0000-00-00 00:00:00',NULL,NULL,'');
/*!40000 ALTER TABLE `utl_user_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utl_user_patient`
--

DROP TABLE IF EXISTS `utl_user_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_user_patient` (
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `born` date NOT NULL,
  `weight` decimal(18,2) NOT NULL,
  `height` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bloodpressure` decimal(18,2) NOT NULL DEFAULT 1.00,
  `heartrate` decimal(18,2) NOT NULL DEFAULT 0.00,
  `cholesterol` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bloodglucose` decimal(18,2) NOT NULL DEFAULT 0.00,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_user_patient`
--

LOCK TABLES `utl_user_patient` WRITE;
/*!40000 ALTER TABLE `utl_user_patient` DISABLE KEYS */;
INSERT INTO `utl_user_patient` VALUES ('admin','Man','1989-06-22',86.00,178.00,110.00,70.00,12.00,15.00,'','0000-00-00 00:00:00',NULL,'2023-05-20 17:58:02',''),('fatih99@gmail.com','Man','1997-01-08',180.00,190.00,1.00,0.00,0.00,0.00,'','0000-00-00 00:00:00',NULL,'2023-05-18 20:52:50',''),('user_tes@gmail.com','Man','2006-01-04',80.00,170.00,56.00,80.00,12.00,13.00,'','2023-05-18 22:34:25',NULL,'2023-05-18 22:42:32','');
/*!40000 ALTER TABLE `utl_user_patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bef_insert_userpa` BEFORE INSERT ON `utl_user_patient` FOR EACH ROW BEGIN
	SET NEW.created_date = now();
	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bef_update_userpa` BEFORE UPDATE ON `utl_user_patient` FOR EACH ROW BEGIN
	SET NEW.updated_date = now();
	SET NEW.created_date = OLD.created_date;
	
	INSERT INTO utl_user_patient_history(user_id, sex, born, weight, height, bloodpressure, heartrate, cholesterol, bloodglucose, created_by, created_date) VALUES (new.user_id, new.sex, new.born, new.weight, new.height, new.bloodpressure, new.heartrate, new.cholesterol, new.bloodglucose, new.created_by, now());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `utl_user_patient_history`
--

DROP TABLE IF EXISTS `utl_user_patient_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_user_patient_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `born` date NOT NULL,
  `weight` decimal(18,2) NOT NULL,
  `height` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bloodpressure` decimal(18,2) NOT NULL DEFAULT 1.00,
  `heartrate` decimal(18,2) NOT NULL DEFAULT 0.00,
  `cholesterol` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bloodglucose` decimal(18,2) NOT NULL DEFAULT 0.00,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_user_patient_history`
--

LOCK TABLES `utl_user_patient_history` WRITE;
/*!40000 ALTER TABLE `utl_user_patient_history` DISABLE KEYS */;
INSERT INTO `utl_user_patient_history` VALUES (1,'admin','Man','1989-06-22',86.00,178.00,120.00,70.00,12.00,15.00,'','2023-05-18 22:34:25',''),(2,'fatih99@gmail.com','Man','1997-01-08',180.00,190.00,1.00,0.00,0.00,0.00,'','2023-05-18 22:34:25',''),(3,'user_tes@gmail.com','Man','2006-01-04',80.00,170.00,56.00,80.00,12.00,13.00,'','2023-05-18 22:34:25',''),(4,'admin','Man','1989-06-22',86.00,178.00,110.00,70.00,12.00,15.00,'','2023-05-20 17:58:02','');
/*!40000 ALTER TABLE `utl_user_patient_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_appointment_doctor`
--

DROP TABLE IF EXISTS `vw_appointment_doctor`;
/*!50001 DROP VIEW IF EXISTS `vw_appointment_doctor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_appointment_doctor` (
  `id` tinyint NOT NULL,
  `patient` tinyint NOT NULL,
  `doctor` tinyint NOT NULL,
  `slot_id` tinyint NOT NULL,
  `created_date` tinyint NOT NULL,
  `date_book` tinyint NOT NULL,
  `time_start` tinyint NOT NULL,
  `time_end` tinyint NOT NULL,
  `days` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `NAME` tinyint NOT NULL,
  `role_id` tinyint NOT NULL,
  `spesialist` tinyint NOT NULL,
  `spesialist_name` tinyint NOT NULL,
  `last_study` tinyint NOT NULL,
  `about` tinyint NOT NULL,
  `jadwal` tinyint NOT NULL,
  `gelar` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_appointment_patient`
--

DROP TABLE IF EXISTS `vw_appointment_patient`;
/*!50001 DROP VIEW IF EXISTS `vw_appointment_patient`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_appointment_patient` (
  `id` tinyint NOT NULL,
  `patient` tinyint NOT NULL,
  `doctor` tinyint NOT NULL,
  `slot_id` tinyint NOT NULL,
  `created_date` tinyint NOT NULL,
  `date_book` tinyint NOT NULL,
  `time_start` tinyint NOT NULL,
  `time_end` tinyint NOT NULL,
  `days` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `NAME` tinyint NOT NULL,
  `role_id` tinyint NOT NULL,
  `born` tinyint NOT NULL,
  `weight` tinyint NOT NULL,
  `height` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_day_doctor`
--

DROP TABLE IF EXISTS `vw_day_doctor`;
/*!50001 DROP VIEW IF EXISTS `vw_day_doctor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_day_doctor` (
  `day` tinyint NOT NULL,
  `tgl` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_diagnosa`
--

DROP TABLE IF EXISTS `vw_diagnosa`;
/*!50001 DROP VIEW IF EXISTS `vw_diagnosa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_diagnosa` (
  `id` tinyint NOT NULL,
  `id_appointment` tinyint NOT NULL,
  `userid` tinyint NOT NULL,
  `date_consul` tinyint NOT NULL,
  `diagnose` tinyint NOT NULL,
  `recipe` tinyint NOT NULL,
  `therapy` tinyint NOT NULL,
  `created_by` tinyint NOT NULL,
  `craeted_date` tinyint NOT NULL,
  `nama_dokter` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_user`
--

DROP TABLE IF EXISTS `vw_user`;
/*!50001 DROP VIEW IF EXISTS `vw_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_user` (
  `user_id` tinyint NOT NULL,
  `password` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `role_id` tinyint NOT NULL,
  `android_access` tinyint NOT NULL,
  `web_access` tinyint NOT NULL,
  `secure_ask` tinyint NOT NULL,
  `is_locked` tinyint NOT NULL,
  `is_nonactive` tinyint NOT NULL,
  `created_by` tinyint NOT NULL,
  `created_date` tinyint NOT NULL,
  `updated_by` tinyint NOT NULL,
  `updated_date` tinyint NOT NULL,
  `ip` tinyint NOT NULL,
  `role` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_user_doctor`
--

DROP TABLE IF EXISTS `vw_user_doctor`;
/*!50001 DROP VIEW IF EXISTS `vw_user_doctor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_user_doctor` (
  `user_id` tinyint NOT NULL,
  `NAME` tinyint NOT NULL,
  `role_id` tinyint NOT NULL,
  `spesialist` tinyint NOT NULL,
  `spesialist_name` tinyint NOT NULL,
  `last_study` tinyint NOT NULL,
  `about` tinyint NOT NULL,
  `jadwal` tinyint NOT NULL,
  `gelar` tinyint NOT NULL,
  `str` tinyint NOT NULL,
  `image` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_user_patient`
--

DROP TABLE IF EXISTS `vw_user_patient`;
/*!50001 DROP VIEW IF EXISTS `vw_user_patient`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_user_patient` (
  `user_id` tinyint NOT NULL,
  `sex` tinyint NOT NULL,
  `NAME` tinyint NOT NULL,
  `role_id` tinyint NOT NULL,
  `born` tinyint NOT NULL,
  `weight` tinyint NOT NULL,
  `height` tinyint NOT NULL,
  `bloodglucose` tinyint NOT NULL,
  `bloodpressure` tinyint NOT NULL,
  `cholesterol` tinyint NOT NULL,
  `heartrate` tinyint NOT NULL,
  `image` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_appointment_doctor`
--

/*!50001 DROP TABLE IF EXISTS `vw_appointment_doctor`*/;
/*!50001 DROP VIEW IF EXISTS `vw_appointment_doctor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_appointment_doctor` AS select `a`.`id` AS `id`,`a`.`patient` AS `patient`,`a`.`doctor` AS `doctor`,`a`.`slot_id` AS `slot_id`,`a`.`created_date` AS `created_date`,`a`.`date_book` AS `date_book`,`c`.`time_start` AS `time_start`,`c`.`time_end` AS `time_end`,dayname(`a`.`date_book`) AS `days`,`a`.`status` AS `status`,`b`.`user_id` AS `user_id`,`b`.`NAME` AS `NAME`,`b`.`role_id` AS `role_id`,`b`.`spesialist` AS `spesialist`,`b`.`spesialist_name` AS `spesialist_name`,`b`.`last_study` AS `last_study`,`b`.`about` AS `about`,`b`.`jadwal` AS `jadwal`,`b`.`gelar` AS `gelar` from ((`trn_appointment` `a` join `vw_user_doctor` `b` on(`a`.`doctor` = `b`.`user_id`)) join `utl_jadwal_dokter` `c` on(`a`.`slot_id` = `c`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_appointment_patient`
--

/*!50001 DROP TABLE IF EXISTS `vw_appointment_patient`*/;
/*!50001 DROP VIEW IF EXISTS `vw_appointment_patient`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_appointment_patient` AS select `a`.`id` AS `id`,`a`.`patient` AS `patient`,`a`.`doctor` AS `doctor`,`a`.`slot_id` AS `slot_id`,`a`.`created_date` AS `created_date`,`a`.`date_book` AS `date_book`,`c`.`time_start` AS `time_start`,`c`.`time_end` AS `time_end`,dayname(`a`.`date_book`) AS `days`,`a`.`status` AS `status`,`b`.`user_id` AS `user_id`,`b`.`NAME` AS `NAME`,`b`.`role_id` AS `role_id`,`b`.`born` AS `born`,`b`.`weight` AS `weight`,`b`.`height` AS `height` from ((`trn_appointment` `a` join `vw_user_patient` `b` on(`a`.`patient` = `b`.`user_id`)) join `utl_jadwal_dokter` `c` on(`a`.`slot_id` = `c`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_day_doctor`
--

/*!50001 DROP TABLE IF EXISTS `vw_day_doctor`*/;
/*!50001 DROP VIEW IF EXISTS `vw_day_doctor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_day_doctor` AS select dayname(current_timestamp()) AS `day`,date_format(current_timestamp(),'%Y-%m-%d') AS `tgl` union all select dayname(current_timestamp() + interval 1 day) AS `DAYNAME(DATE_ADD(NOW(), INTERVAL 1 DAY))`,date_format(current_timestamp() + interval 1 day,'%Y-%m-%d') AS `DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 1 DAY), '%Y-%m-%d')` union all select dayname(current_timestamp() + interval 2 day) AS `DAYNAME(DATE_ADD(NOW(), INTERVAL 2 DAY))`,date_format(current_timestamp() + interval 2 day,'%Y-%m-%d') AS `DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 2 DAY), '%Y-%m-%d')` union all select dayname(current_timestamp() + interval 3 day) AS `DAYNAME(DATE_ADD(NOW(), INTERVAL 3 DAY))`,date_format(current_timestamp() + interval 3 day,'%Y-%m-%d') AS `DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 3 DAY), '%Y-%m-%d')` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_diagnosa`
--

/*!50001 DROP TABLE IF EXISTS `vw_diagnosa`*/;
/*!50001 DROP VIEW IF EXISTS `vw_diagnosa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_diagnosa` AS select `a`.`id` AS `id`,`a`.`id_appointment` AS `id_appointment`,`a`.`userid` AS `userid`,`a`.`date_consul` AS `date_consul`,`a`.`diagnose` AS `diagnose`,`a`.`recipe` AS `recipe`,`a`.`therapy` AS `therapy`,`a`.`created_by` AS `created_by`,`a`.`craeted_date` AS `craeted_date`,concat('Dr. ',`b`.`NAME`,' , ',`b`.`gelar`) AS `nama_dokter` from (`utl_diagnosa_patient` `a` join `vw_user_doctor` `b` on(`a`.`created_by` = `b`.`user_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_user`
--

/*!50001 DROP TABLE IF EXISTS `vw_user`*/;
/*!50001 DROP VIEW IF EXISTS `vw_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_user` AS select `a`.`user_id` AS `user_id`,`a`.`password` AS `password`,`a`.`name` AS `name`,`a`.`role_id` AS `role_id`,`a`.`android_access` AS `android_access`,`a`.`web_access` AS `web_access`,`a`.`secure_ask` AS `secure_ask`,`a`.`is_locked` AS `is_locked`,`a`.`is_nonactive` AS `is_nonactive`,`a`.`created_by` AS `created_by`,`a`.`created_date` AS `created_date`,`a`.`updated_by` AS `updated_by`,`a`.`updated_date` AS `updated_date`,`a`.`ip` AS `ip`,`b`.`role` AS `role` from (`utl_user` `a` join `utl_role` `b`) where `a`.`role_id` = `b`.`role_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_user_doctor`
--

/*!50001 DROP TABLE IF EXISTS `vw_user_doctor`*/;
/*!50001 DROP VIEW IF EXISTS `vw_user_doctor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_user_doctor` AS with jadwal_dokter as (select `utl_jadwal_dokter`.`doctor` AS `doctor`,`utl_jadwal_dokter`.`day` AS `day` from `utl_jadwal_dokter` group by `utl_jadwal_dokter`.`doctor`,`utl_jadwal_dokter`.`day` order by `utl_jadwal_dokter`.`day`), jadwal_praktek as (select `jadwal_dokter`.`doctor` AS `doctor`,group_concat(`jadwal_dokter`.`day` separator ',') AS `jadwal` from `jadwal_dokter` group by `jadwal_dokter`.`doctor`)select `a`.`user_id` AS `user_id`,`a`.`name` AS `NAME`,`a`.`role_id` AS `role_id`,`b`.`spesialist` AS `spesialist`,`c`.`string` AS `spesialist_name`,`b`.`last_study` AS `last_study`,`b`.`about` AS `about`,`d`.`jadwal` AS `jadwal`,`b`.`gelar` AS `gelar`,`b`.`str` AS `str`,`a`.`image` AS `image` from (((`utl_user` `a` join `utl_user_doctor` `b` on(`a`.`user_id` = `b`.`user_id`)) left join `utl_spesialis_doctor` `c` on(`b`.`spesialist` = `c`.`id`)) left join `jadwal_praktek` `d` on(`a`.`user_id` = `d`.`doctor`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_user_patient`
--

/*!50001 DROP TABLE IF EXISTS `vw_user_patient`*/;
/*!50001 DROP VIEW IF EXISTS `vw_user_patient`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_user_patient` AS select `a`.`user_id` AS `user_id`,`b`.`sex` AS `sex`,`a`.`name` AS `NAME`,`a`.`role_id` AS `role_id`,`b`.`born` AS `born`,`b`.`weight` AS `weight`,`b`.`height` AS `height`,`b`.`bloodglucose` AS `bloodglucose`,`b`.`bloodpressure` AS `bloodpressure`,`b`.`cholesterol` AS `cholesterol`,`b`.`heartrate` AS `heartrate`,`a`.`image` AS `image` from (`utl_user` `a` join `utl_user_patient` `b` on(`a`.`user_id` = `b`.`user_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-24  4:45:05
