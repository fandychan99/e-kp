-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ekp_db
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
-- Table structure for table `trn_bimbingan`
--

DROP TABLE IF EXISTS `trn_bimbingan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trn_bimbingan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kp` int(11) DEFAULT NULL,
  `tanggal_bimbingan` date DEFAULT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trn_bimbingan`
--

LOCK TABLES `trn_bimbingan` WRITE;
/*!40000 ALTER TABLE `trn_bimbingan` DISABLE KEYS */;
INSERT INTO `trn_bimbingan` VALUES (1,1,'2023-06-03','ok','koordinator','2023-06-03 17:08:05'),(2,1,'2023-06-03','okasd','koordinator','2023-06-03 17:08:24'),(4,3,'2023-06-03','ok','111.11.2205','2023-06-03 17:30:34'),(5,5,'2023-07-04','Persiapkan Laporan dengan detail','111.11.2206','2023-06-04 02:49:35');
/*!40000 ALTER TABLE `trn_bimbingan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trn_kerja_praktek`
--

DROP TABLE IF EXISTS `trn_kerja_praktek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trn_kerja_praktek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lokasi` varchar(255) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `keterangan` longtext DEFAULT NULL,
  `status` enum('Diajukan','Diterima','Ditolak') DEFAULT NULL,
  `cek_koordinator_by` varchar(255) DEFAULT NULL,
  `komentar_koordinator` longtext DEFAULT NULL,
  `dosen_pembimbing` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_seminar` enum('Belum Diajukan','Diajukan Seminar','Seminar Disetujui','Seminar Ditolak','') DEFAULT 'Belum Diajukan',
  `tanggal_seminar` date DEFAULT NULL,
  `komentar_dosen_pembimbing` longtext DEFAULT NULL,
  `nilai_akhir` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trn_kerja_praktek`
--

LOCK TABLES `trn_kerja_praktek` WRITE;
/*!40000 ALTER TABLE `trn_kerja_praktek` DISABLE KEYS */;
INSERT INTO `trn_kerja_praktek` VALUES (1,'km','2023-06-03','2023-06-30','tes','Diterima',NULL,NULL,'111.11.2205','Seminar Disetujui','2023-06-30','ok',NULL,'koordinator','2023-06-03 00:00:00',NULL,NULL),(2,'PT Tes ','2023-06-04','2023-07-09','tes','Ditolak','koordinator','Gak Betul ini',NULL,'Belum Diajukan',NULL,NULL,NULL,'koordinator','2023-06-03 00:00:00',NULL,NULL),(3,'PT. ABC','2023-06-01','2023-06-30','Tes','Diterima',NULL,NULL,'111.11.2205','Seminar Disetujui','2023-06-17','OK','A','0011','2023-06-03 00:00:00',NULL,NULL),(5,'PT Serba bisa','2023-07-01','2023-09-30','Magang untuk tugas KP','Diterima',NULL,NULL,'111.11.2206','Seminar Disetujui','2023-10-05','','A','0011','2023-06-04 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `trn_kerja_praktek` ENABLE KEYS */;
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
-- Table structure for table `utl_jurusan`
--

DROP TABLE IF EXISTS `utl_jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_jurusan` (
  `id` varchar(5) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_jurusan`
--

LOCK TABLES `utl_jurusan` WRITE;
/*!40000 ALTER TABLE `utl_jurusan` DISABLE KEYS */;
INSERT INTO `utl_jurusan` VALUES ('AKT','AKUNTING TERAPAN'),('SIF','SISTEM INFORMASI'),('TIF','TEKNIK INFORMATIKA');
/*!40000 ALTER TABLE `utl_jurusan` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_menu`
--

LOCK TABLES `utl_menu` WRITE;
/*!40000 ALTER TABLE `utl_menu` DISABLE KEYS */;
INSERT INTO `utl_menu` VALUES (1,'Utility','#','bi bi-gear','',10,1,0,'\0',NULL,NULL,NULL,NULL,NULL),(2,'Manajemen User','C_User',NULL,'\0',1,2,1,'\0',NULL,NULL,NULL,NULL,NULL),(5,'Akses Menu','C_Menu_Access',NULL,'\0',4,2,1,'\0',NULL,NULL,NULL,NULL,NULL),(10,'Profil','C_Profile','bx bx-user','\0',1,1,0,'\0',NULL,NULL,NULL,NULL,NULL),(17,'Database Dosen','C_Dosen',NULL,'\0',1,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Database Mahasiswa','C_Mahasiswa',NULL,'\0',1,2,1,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Kerja Praktek','C_Kerja_Praktek','bi bi-briefcase','\0',2,1,0,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Bimbingan','C_Bimbingan','bi bi-book','\0',3,1,0,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Daftar Seminar','C_Seminar','bi bi-globe2','\0',4,1,0,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Hasil Kerja Praktek','C_Hasil_Kerja','bi bi-inboxes-fill','\0',5,1,0,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_menu_access`
--

LOCK TABLES `utl_menu_access` WRITE;
/*!40000 ALTER TABLE `utl_menu_access` DISABLE KEYS */;
INSERT INTO `utl_menu_access` VALUES (258,1,1,'','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(259,5,1,'','','\0','\0','\0','0','0000-00-00 00:00:00','0'),(260,17,1,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(261,18,1,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(262,10,1,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(263,26,1,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(264,30,1,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(265,33,1,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(266,34,1,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(271,10,2,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(272,26,2,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(273,30,2,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(274,33,2,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(275,34,2,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(276,10,4,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(277,26,4,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(278,30,4,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(279,33,4,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0'),(280,34,4,'\0','\0','\0','\0','\0','0','0000-00-00 00:00:00','0');
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
INSERT INTO `utl_role` VALUES (1,'System Administrator','Berkuasa Penuh Atas Aplikasi',NULL,NULL,NULL,NULL,NULL),(2,'Dosen','Docter',NULL,NULL,NULL,NULL,NULL),(4,'Mahasiswa','patient',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `utl_role` ENABLE KEYS */;
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
INSERT INTO `utl_user` VALUES ('0011','$2y$10$6bS0rcJ4CA24gEGbOJAaoud1heiCNeEk4.DbF865W9N5OoHQeWcAq','Fatih An Nas','1.jpg',4,'\0','\0','\0','\0','\0','','0000-00-00 00:00:00','0011','2023-06-04 01:28:06',''),('0012','$2y$10$KvODBMvc1Ajv5wdxTC/l2.xeW0kZ7RHdCnpT9Wfl/Ob/JKKIz7ijW','','Screenshot_(1).png',4,'\0','\0','\0','\0','\0','','0000-00-00 00:00:00','0012','2023-06-04 07:54:51',''),('111.11.2205','$2y$10$5nyOdRj.0iJXdAVTm7zJke7v863Xo6b05deAMxGZqDgPRZ4nTY1eW','Fandy Chaniago 2','scott-graham-5fNmWej4tAA-unsplash.jpg',2,'\0','\0','\0','\0','\0','','0000-00-00 00:00:00','111.11.2205','2023-06-04 01:34:33',''),('111.11.2206','$2y$10$wqaddr.hBnnlJEsj2bOP0eJ5RgQ8Akj5sqhEaCFeDycgEJZvjEFYy','Sudarman',NULL,2,'\0','\0','\0','\0','\0','','0000-00-00 00:00:00',NULL,NULL,''),('koordinator','$2y$10$wqaddr.hBnnlJEsj2bOP0eJ5RgQ8Akj5sqhEaCFeDycgEJZvjEFYy','Koordinator Ganteng 23','11.jpg',1,'\0','','\0','\0','\0','','0000-00-00 00:00:00','koordinator','2023-06-04 01:47:19','');
/*!40000 ALTER TABLE `utl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utl_user_dosen`
--

DROP TABLE IF EXISTS `utl_user_dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_user_dosen` (
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `born` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `study` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `unik_nip` (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_user_dosen`
--

LOCK TABLES `utl_user_dosen` WRITE;
/*!40000 ALTER TABLE `utl_user_dosen` DISABLE KEYS */;
INSERT INTO `utl_user_dosen` VALUES ('111.11.2205','Fandy Chaniago 2','111.11.2205','Man','2023-06-03','res','aerofanz99@gmail.com','0822','S1','S1','koordinator','2023-06-03 02:15:19',NULL,NULL,''),('111.11.2206','Sudarman','111.11.2206','Man','1889-06-11','tes','tes@gmail.com','8998','S1','S1','koordinator','2023-06-03 19:29:50',NULL,NULL,''),('koordinator','Koordinator Ganteng 23','111.212.12','Man','1889-06-11','tes','tes@gmail.com','8998123','S32','Doctor','koordinator','0000-00-00 00:00:00',NULL,NULL,'');
/*!40000 ALTER TABLE `utl_user_dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utl_user_mahasiswa`
--

DROP TABLE IF EXISTS `utl_user_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utl_user_mahasiswa` (
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `born` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `unik_nim` (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utl_user_mahasiswa`
--

LOCK TABLES `utl_user_mahasiswa` WRITE;
/*!40000 ALTER TABLE `utl_user_mahasiswa` DISABLE KEYS */;
INSERT INTO `utl_user_mahasiswa` VALUES ('0011','Fatih An Nas','0011','Man','2005-06-01','tes ok','TIF','tes@gmail.com','8998','koordinator','2023-06-03 14:20:22',NULL,NULL,''),('0012','Rohim','0012','Laki - Laki','2007-05-04','tes','','tes@gmail.com','8998','koordinator','2023-06-04 01:53:11',NULL,NULL,'');
/*!40000 ALTER TABLE `utl_user_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_kerja_praktek`
--

DROP TABLE IF EXISTS `vw_kerja_praktek`;
/*!50001 DROP VIEW IF EXISTS `vw_kerja_praktek`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_kerja_praktek` (
  `id` tinyint NOT NULL,
  `lokasi` tinyint NOT NULL,
  `tgl_mulai` tinyint NOT NULL,
  `tgl_akhir` tinyint NOT NULL,
  `keterangan` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `cek_koordinator_by` tinyint NOT NULL,
  `komentar_koordinator` tinyint NOT NULL,
  `dosen_pembimbing` tinyint NOT NULL,
  `status_seminar` tinyint NOT NULL,
  `tanggal_seminar` tinyint NOT NULL,
  `komentar_dosen_pembimbing` tinyint NOT NULL,
  `nilai_akhir` tinyint NOT NULL,
  `created_by` tinyint NOT NULL,
  `created_date` tinyint NOT NULL,
  `updated_by` tinyint NOT NULL,
  `updated_date` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `dosen_name` tinyint NOT NULL,
  `tot_bimbingan` tinyint NOT NULL
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
-- Temporary table structure for view `vw_user_dosen`
--

DROP TABLE IF EXISTS `vw_user_dosen`;
/*!50001 DROP VIEW IF EXISTS `vw_user_dosen`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_user_dosen` (
  `user_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `nip` tinyint NOT NULL,
  `sex` tinyint NOT NULL,
  `born` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `phone` tinyint NOT NULL,
  `study` tinyint NOT NULL,
  `gelar` tinyint NOT NULL,
  `created_by` tinyint NOT NULL,
  `created_date` tinyint NOT NULL,
  `updated_by` tinyint NOT NULL,
  `updated_date` tinyint NOT NULL,
  `ip` tinyint NOT NULL,
  `image` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_user_mahasiswa`
--

DROP TABLE IF EXISTS `vw_user_mahasiswa`;
/*!50001 DROP VIEW IF EXISTS `vw_user_mahasiswa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_user_mahasiswa` (
  `user_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `nim` tinyint NOT NULL,
  `sex` tinyint NOT NULL,
  `born` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `jurusan` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `phone` tinyint NOT NULL,
  `created_by` tinyint NOT NULL,
  `created_date` tinyint NOT NULL,
  `updated_by` tinyint NOT NULL,
  `updated_date` tinyint NOT NULL,
  `ip` tinyint NOT NULL,
  `image` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_kerja_praktek`
--

/*!50001 DROP TABLE IF EXISTS `vw_kerja_praktek`*/;
/*!50001 DROP VIEW IF EXISTS `vw_kerja_praktek`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_kerja_praktek` AS with tkp as (select count(`trn_bimbingan`.`id`) AS `total_bimbingan`,`trn_bimbingan`.`id_kp` AS `id_kp` from `trn_bimbingan` group by `trn_bimbingan`.`id_kp`)select `a`.`id` AS `id`,`a`.`lokasi` AS `lokasi`,`a`.`tgl_mulai` AS `tgl_mulai`,`a`.`tgl_akhir` AS `tgl_akhir`,`a`.`keterangan` AS `keterangan`,`a`.`status` AS `status`,`a`.`cek_koordinator_by` AS `cek_koordinator_by`,`a`.`komentar_koordinator` AS `komentar_koordinator`,`a`.`dosen_pembimbing` AS `dosen_pembimbing`,`a`.`status_seminar` AS `status_seminar`,`a`.`tanggal_seminar` AS `tanggal_seminar`,`a`.`komentar_dosen_pembimbing` AS `komentar_dosen_pembimbing`,`a`.`nilai_akhir` AS `nilai_akhir`,`a`.`created_by` AS `created_by`,`a`.`created_date` AS `created_date`,`a`.`updated_by` AS `updated_by`,`a`.`updated_date` AS `updated_date`,`b`.`name` AS `name`,`c`.`name` AS `dosen_name`,ifnull(`d`.`total_bimbingan`,0) AS `tot_bimbingan` from (((`trn_kerja_praktek` `a` left join `vw_user` `b` on(`a`.`created_by` = `b`.`user_id`)) left join `vw_user` `c` on(`a`.`dosen_pembimbing` = `c`.`user_id`)) left join `tkp` `d` on(`a`.`id` = `d`.`id_kp`)) */;
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
-- Final view structure for view `vw_user_dosen`
--

/*!50001 DROP TABLE IF EXISTS `vw_user_dosen`*/;
/*!50001 DROP VIEW IF EXISTS `vw_user_dosen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_user_dosen` AS select `a`.`user_id` AS `user_id`,`a`.`name` AS `name`,`a`.`nip` AS `nip`,`a`.`sex` AS `sex`,`a`.`born` AS `born`,`a`.`address` AS `address`,`a`.`email` AS `email`,`a`.`phone` AS `phone`,`a`.`study` AS `study`,`a`.`gelar` AS `gelar`,`a`.`created_by` AS `created_by`,`a`.`created_date` AS `created_date`,`a`.`updated_by` AS `updated_by`,`a`.`updated_date` AS `updated_date`,`a`.`ip` AS `ip`,`b`.`image` AS `image` from (`utl_user_dosen` `a` left join `utl_user` `b` on(`a`.`user_id` = `b`.`user_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_user_mahasiswa`
--

/*!50001 DROP TABLE IF EXISTS `vw_user_mahasiswa`*/;
/*!50001 DROP VIEW IF EXISTS `vw_user_mahasiswa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_user_mahasiswa` AS select `a`.`user_id` AS `user_id`,`a`.`name` AS `name`,`a`.`nim` AS `nim`,`a`.`sex` AS `sex`,`a`.`born` AS `born`,`a`.`address` AS `address`,`a`.`jurusan` AS `jurusan`,`a`.`email` AS `email`,`a`.`phone` AS `phone`,`a`.`created_by` AS `created_by`,`a`.`created_date` AS `created_date`,`a`.`updated_by` AS `updated_by`,`a`.`updated_date` AS `updated_date`,`a`.`ip` AS `ip`,`b`.`image` AS `image` from (`utl_user_mahasiswa` `a` left join `utl_user` `b` on(`a`.`user_id` = `b`.`user_id`)) */;
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

-- Dump completed on 2023-06-04 15:54:38
