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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trn_article`
--

LOCK TABLES `trn_article` WRITE;
/*!40000 ALTER TABLE `trn_article` DISABLE KEYS */;
INSERT INTO `trn_article` VALUES (1,'Health Care','ini tes aja','tes tes tes',NULL,NULL,'0000-00-00 00:00:00','admin',NULL,''),(2,'90 Persen Hepatitis B Ditularkan Ibu ke Anak, Bagaimana Mencegahnya? ','Jakarta, CNN Indonesia -- Juru Bicara Kementerian Kesehatan (Kemenkes) Mohammad Syahril mengatakan, mayoritas temuan kasus hepatitis B di Indonesia terjadi akibat penularan dari ibu ke anak. Penularan terjadi baik sejak dalam kandungan, saat proses kelahi','<p><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Jakarta, CNN Indonesia -- Juru Bicara Kementerian Kesehatan (Kemenkes) Mohammad Syahril mengatakan, mayoritas temuan kasus hepatitis B di Indonesia terjadi akibat penularan dari ibu ke anak. Penularan terjadi baik sejak dalam kandungan, saat proses kelahiran, atau bahkan saat menyusui.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">\"Penularan hepatitis B didominasi oleh penularan secara vertikal dari ibu ke anak, mencapai 90-95 persen kasus. Sementara penularan secara horizontal sekitar 5-10 persen kasus,\" kata Syahril, Selasa (16/5).</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"></p><p><img src=\"http://localhost/fihealth/assets/images/news/4b6dd09e-4a53-4f77-9ceb-4d10f8da9563_169.jpg\" style=\"width: 650px;\"><br></p><p><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Lantas bagaimana langkah pencegahan untuk menekan penularan hepatitis B dari ibu ke anak?</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Dokter spesialis obstetri dan ginekologi Muhammad Fadli mengatakan bahwa anak yang lahir dari ibu dengan hepatitis B memiliki risiko 90 persen terinfeksi virus yang sama.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Pilihan Redaksi</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">5 Cara Penularan Penyakit Menular Seksual Tanpa Penetrasi</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Tips Bercinta Aman Tanpa Tertular Sifilis dan PMS Lain</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Wanti-wanti Kemenkes: 90 Persen Hepatitis B Ditularkan Ibu ke Anak</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">\"Jika ibu hamil terdeteksi HBsAg positif atau terkena virus hepatitis B, maka ada kemungkinan anaknya bisa terkena infeksi sekitar 90 persen dari ibu yang terkena hepatitis B,\" ucap Fadli saat dihubungi CNNIndonesia.com, Rabu (17/5).</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Nantinya, bayi yang lahir dari ibu dengan hepatitis akan mendapatkan immunoglobulin atau HBIg dalam waktu 12 jam pertama setelah dilahirkan.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Immunoglobulin sendiri, jelas Fadli, bisa didapat secara gratis dan diambil di puskesmas dengan membawa hasil hepatitis B positif.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Lantas apakah ibu hamil yang terpapar hepatitis B harus melahirkan dengan operasi caesar? Jawabannya adalah tidak.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">\"Ibu dengan hepatitis B tidak harus menjalani operasi caesar. Indikasi untuk melakukan caesar adalah indikasi obstetri, bukan hanya disebabkan oleh hepatitis B saja,\" jelasnya.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Bagi ibu yang melakukan persalinan normal tetap harus dipastikan bahwa prosesnya berjalan dengan lancar dan bayi tidak terpapar oleh darah atau plasenta dari ibu.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">\"Harus dijaga jangan sampai ketubannya pecah lama, ada terkontaminasi darah. Dilakukan banyak tindakan seperti alat bantu persalinan. Jangan sampai kecampur darah dan terpapar darah banyak,\" ucap Fadli.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Sebelumnya, Syahril mengimbau agar pemutusan penularan penyakit hepatitis B di Indonesia dilakukan sedini mungkin. Khusus untuk kasus hepatitis B perlu dilakukan deteksi dini minimal 80 persen ibu hamil diperiksa terintegrasi dengan HIV dan sifilis.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">\"Pemberian vaksin hepatitis B secara lengkap dan tepat dapat menurunkan prevalensi hepatitis B. Tetapi masih terdapat permasalahan yang harus dihadapi, yaitu risiko menjadi sirosis dan hepatoma, serta belum ada pengobatan yang efektif,\" ujar Syahril.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Sementara bayi yang lahir dari ibu yang reaktif HBsAg diberikan vitamin K, HB0, dan HBIg kurang dari 24 jam.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">\"Sebab dengan adanya DDHB beban negara berkurang karena dapat dicegah penularannya,\" lanjut dia.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Baca artikel CNN Indonesia \"90 Persen Hepatitis B Ditularkan Ibu ke Anak, Bagaimana Mencegahnya?\" selengkapnya di sini:&nbsp;</span><a href=\"https://www.cnnindonesia.com/gaya-hidup/20230517195704-255-951033/90-persen-hepatitis-b-ditularkan-ibu-ke-anak-bagaimana-mencegahnya\" style=\"background: transparent; transition: all 200ms linear 0s; -webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(68, 68, 68); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">https://www.cnnindonesia.com/gaya-hidup/20230517195704-255-951033/90-persen-hepatitis-b-ditularkan-ibu-ke-anak-bagaimana-mencegahnya</a><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">.</span><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><br style=\"-webkit-font-smoothing: antialiased; backface-visibility: hidden; color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: CNNSansW04-Regular, Arial, Helvetica, Tahoma; letter-spacing: normal;\">Download Apps CNN Indonesia sekarang https://app.cnnindonesia.com/</span><br></p>',NULL,'admin','2023-05-18 15:53:29',NULL,NULL,''),(3,'Muncul Ruam Merah yang Terasa Kering di Kulit, Tanda Penyakit Apa Dok?  Baca artikel detikHealth, \"Muncul Ruam Merah yang Terasa Kering di Kulit, Tanda Penyakit Apa Dok?\" ','Ruam merah di tangan dapat disebabkan oleh beberapa faktor:\r\n\r\n1. Kontak dengan bahan-bahan tertentu yang dapat mengiritasi atau menyebabkan alergi. Perhatikan apakah ada bahan-bahan yang baru digunakan beberapa minggu terakhir, misalnya sabun cuci tangan','<p><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">Jakarta - Pertanyaan:</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">Halo Dok, saya mau bertanya tentang keluhan pada kulit. Muncul ruam-ruam merah pada tangan saya dan terasa kering.</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">Itu tanda atau gejala dari penyakit apa dan kenapa ya Dok?</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"></p><p><img src=\"http://localhost/fihealth/assets/images/news/ilustrasi-ruam-kulit_169.jpeg\" style=\"width: 700px;\"></p><p><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">Ruam merah di tangan dapat disebabkan oleh beberapa faktor:</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">1. Kontak dengan bahan-bahan tertentu yang dapat mengiritasi atau menyebabkan alergi. Perhatikan apakah ada bahan-bahan yang baru digunakan beberapa minggu terakhir, misalnya sabun cuci tangan, hand sanitizer, sabun badan, lotion, atau berbagai bahan lain. Bila ada, mungkin setelah dihentikan penggunaannya kondisi kulit akan membaik.</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">2. Alergi dengan makanan tertentu atau suasana tertentu, seperti dingin, udara kering, dan lain-lain.</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">3. Kurang hidrasi kulit. Perbaiki hidrasi dengan menggunakan pelembap dan cukupi asupan minum agar kulit tidak kering dan gatal berkurang.</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">4. Beberapa infeksi jamur juga dapat menyebabkan ruam di tangan yang gatal. Apabila ini terjadi, konsultasikan lebih lanjut ke dokter.</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">dr Tiar Marina Octyvani, SpDV</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">Dokter Spesialis Dermatology dan Venereologi</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">Primaya Evasari Hospital</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">Tentang Konsultasi Kesehatan</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">Pembaca detikcom yang memiliki pertanyaan seputar skoliosis, nyeri punggung dan tulang belakang, dapat mengirimkan pertanyaan disertai keterangan nama, usia, dan jenis kelamin melalui form Konsultasi detikHealth, KLIK DI SINI.</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><span style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\">Identitas penanya bisa ditulis terang atau disamarkan, disesuaikan dengan keinginan pembaca. Kerahasiaan identitas dijamin.</span><br style=\"color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; letter-spacing: normal;\"><br></p>',NULL,'admin','2023-05-18 23:00:44',NULL,NULL,''),(4,'Tenaga Kesehatan Jadi Kunci Sukses Imunisasi Ganda','Program yang bertujuan untuk meningkatkan cakupan imunisasi rutin lengkap pada anak yang menurun drastis selama pandemi COVID-19, menaruh harapan kepada kesiapan tenaga kesehatan sebagai garda terdepan pelayanan.\r\n\r\nTenaga kesehatan harus mampu memberikan','<p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Bandung, 18 Mei 2023</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Kementerian Kesehatan mengejar ketertinggalan Imunisasi anak dengan menginisiasi program imunisasi kejar dengan suntikan ganda.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\"><img src=\"http://localhost/fihealth/assets/images/news/gbr_imun.jpeg\" style=\"width: 800px;\"><br></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Program yang bertujuan untuk meningkatkan cakupan imunisasi rutin lengkap pada anak yang menurun drastis selama pandemi COVID-19, menaruh harapan kepada kesiapan tenaga kesehatan sebagai garda terdepan pelayanan.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Tenaga kesehatan harus mampu memberikan edukasi maupun sosialisasi terhadap masyarakat akan pentingnya suntikan Imunisasi ganda. Namun, tantangan yang dihadapi saat ini adalah masih ada tenaga kesehatan yang takut lantaran khawatir terhadap efek samping yang lebih berat.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Hal ini disampaikan Kepala Bidang Pencegahan dan Pengendalian Penyakit Dinas Kesehatan Provinsi Jawa Barat, dr. Rochady Hendra Setya Wibawa disela-sela kunjungan kerja Delegasi Kemenkes Ghana ke Bandung, Jawa Barat, Selasa (17/5).</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">“Biasanya kalau ada suntikan ganda mereka mundur dua minggu, jadi tidak berani diberikan bersamaan karena takut efek samping. Padahal efek samping itu sebenarnya tidak ada, cuman mereka berasumsi sendiri atau self diagnosis,” terangnya, pada Selasa (16/5) di Bandung.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">dr. Rochady menyebut yang terpenting dalam suntikan ganda adalah jenis vaksin yang diberikan lebih dari satu antigen. Misalnya PCV dengan Polio, yang tidak boleh jika jenis vaksin yang diberikan sama.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">“Dari penelitian di beberapa negara, bahkan 3 kali suntikan dalam satu waktu sudah biasa, dan laporan efek sampingnya tidak ada, asal (vaksinnya) berbeda,” ungkapnya.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Di tengah tantangan ini, pihaknya akan melakukan sosialisasi untuk meningkatkan kepercayaan diri tenaga kesehatan. Pemberian imunisasi suntikan ganda aman, tidak menimbulkan efek samping berat dan telah digunakan di berbagai negara.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Terpisah, Direktur Pengelolaan Imunisasi, dr. Prima Yosephine menyebut bahwa memang masih banyak tenaga kesehatan yang ragu atau takut melakukan suntikan imunisasi ganda.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">“Ini yang membuat kami terus-terusan melakukan webinar, ada juga secara langsung turun ke lapangan, paling banyak webinar dengan mengundang seluruh Nakes yang terlibat dalam pelayanan imunisasi, nanti diisi ahli supaya mereka lebih paham dan tidak takut,” kata dr. Prima, Rabu (17/5).</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Pihaknya juga menyadari bahwa proses peyakinan tenaga kesehatan tidaklah mudah, diperlukan waktu serta upaya-upaya komprehensif untuk dapat meningkatkan pengetahuan dan keberanian nakes dalam melakukan imunisasi ganda. Solusi ini perlu diperkuat dengan kolaborasi antara pemerintah pusat dan daerah.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">“Memang tidak mudah, perlu berkali-kali untuk meyakinkan mereka, memutar video, itu salah satu kegiatan kita sambil mendorong dinas untuk ikut meyakinkan mereka,” pungkasnya.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Berita ini disiarkan oleh Biro Komunikasi dan Pelayanan Publik, Kementerian Kesehatan RI. Untuk informasi lebih lanjut dapat menghubungi nomor hotline Halo Kemenkes melalui nomor hotline 1500-567, SMS 081281562620 dan alamat email kontak@kemkes.go.id (MF).</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Kepala Biro Komunikasi dan Pelayanan Publik<br>dr. Siti Nadia Tarmizi, M.Epid</p>','','admin','2023-05-20 15:39:22',NULL,NULL,''),(5,'Indonesia Sampaikan Kesiapan Kolaborasi dalam Pembahasan Isu Kesehatan Presidensi G20 Tahun 2022','Menteri Kesehatan RI, Budi G. Sadikin, menghadiri pertemuan Menteri Kesehatan negara G20 pada tanggal 5-6 September 2021 di Roma, Italia.\r\n\r\nBertempat di Musei Capitolini, Menkes RI berkesempatan menyampaikan sambutan pembukaan dalam kapasitasnya sebagai ','<p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\"><img style=\"width: 800px;\" src=\"http://localhost/fihealth/assets/images/news/Notes_210913_182216_5d1-750x5361.png\"><br></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Jakarta, 13 September 2021</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Menteri Kesehatan RI, Budi G. Sadikin, menghadiri pertemuan Menteri Kesehatan negara G20 pada tanggal 5-6 September 2021 di Roma, Italia.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Bertempat di Musei Capitolini, Menkes RI berkesempatan menyampaikan sambutan pembukaan dalam kapasitasnya sebagai Ketua G20 tahun 2022 untuk sektor kesehatan. Menkes RI menyampaikan bahwa pandemi COVID-19 memperlihatkan kelemahan dan ketimpangan di sistem kesehatan global. Hanya 20% dari pasokan vaksin global yang tersedia untuk negara berkembang, padahal jumlah penduduknya hampir setengah dari populasi dunia, ungkapnya.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Dalam kaitan ini, Menkes RI menyampaikan kesiapan Indonesia untuk menjadi regional hub produksi vaksin dalam memenuhi kebutuhan vaksin global. Khusus terkait presidensi G20 tahun depan, Menkes RI juga mengusulkan perlunya kebijakan dan instrumen global tentang protokol kesehatan serta pooling sumber daya.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">“Indonesia juga akan melanjutkan kerja keras yang telah dibangun oleh Presidensi sebelumnya, Italia dan Saudi Arabia, untuk memastikan dunia yang lebih aman, tangguh dan sehat bagi generasi berikutnya,” tegas Menkes RI.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Pada kesempatan tersebut juga disampaikan keterbukaan terhadap usulan isu kesehatan global yang perlu dibahas pada Presidensi Indonesia serta pentingnya penguatan global health architecture, seperti kebijakan dan instrumen global untuk protokol Kesehatan yang aman dan terstandarisasi secara internasional agar mempermudah perjalanan internasional.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\"><img src=\"https://sehatnegeriku.kemkes.go.id/wp-content/uploads/2021/09/Notes_210913_182151_738-300x199.png\" loading=\"lazy\" width=\"300\" height=\"199\" class=\"alignleft size-medium wp-image-38472\" data-pin-no-hover=\"true\" srcset=\"https://sehatnegeriku.kemkes.go.id/wp-content/uploads/2021/09/Notes_210913_182151_738-300x199.png 300w, https://sehatnegeriku.kemkes.go.id/wp-content/uploads/2021/09/Notes_210913_182151_738-768x511.png 768w, https://sehatnegeriku.kemkes.go.id/wp-content/uploads/2021/09/Notes_210913_182151_738-750x499.png 750w, https://sehatnegeriku.kemkes.go.id/wp-content/uploads/2021/09/Notes_210913_182151_738.png 940w\" sizes=\"(max-width: 300px) 100vw, 300px\" style=\"margin: 5px 20px 20px 0px; padding: 0px; border: 0px; font: inherit; max-width: 100%; height: auto; float: left;\"></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Pertemuan Menteri Kesehatan G20 tahun 2021 mengadopsi Deklarasi Menteri Kesehatan yang berisikan komitmen dalam mengatasi dampak pandemi terhadap pencapaian Sustainable Development Goals (SDG), kesiapan untuk krisis kesehatan di masa depan, dan strategi global untuk meningkatkan akses yang merata terhadap alat diagnostik, obat, dan vaksin serta merekomendasikan penjajakan pembiayaan global dalam mendukung sistem kesehatan global. Hal ini sejalan dengan usulan Indonesia untuk mewujudkan instrumen pooling of global resource.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Dalam pertemuan tersebut Indonesia dan beberapa negara G20 menggarisbawahi peran sentral WHO dalam pengelolaan pandemi di masa depan dan menekankan agar inisiatif penanganan pandemi dapat memberikan nilai tambah tanpa menduplikasi mekanisme yang telah ada.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Selain menghadiri pertemuan tingkat Menteri G20, Menteri Kesehatan juga mengadakan pertemuan dengan beberapa Menteri Kesehatan G20 dan Pimpinan Organisasi Internasional yang hadir di Roma untuk mengucapkan apresiasi terhadap dukungannya kepada Indonesia dan membicarakan terkait kerja sama, seperti pertukaran ahli serta tenaga kesehatan.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Hotline Virus Corona 119 ext 9. Berita ini disiarkan oleh Biro Komunikasi dan Pelayanan Masyarakat, Kementerian Kesehatan RI. Untuk informasi lebih lanjut dapat menghubungi nomor hotline Halo Kemenkes melalui nomor hotline 1500-567, SMS 081281562620, faksimili (021) 5223002, 52921669, dan alamat email kontak@kemkes.go.id (D2)</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">Kepala Biro Komunikasi dan Pelayanan Masyarakat</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-rendering: optimizelegibility; color: rgb(51, 51, 51); letter-spacing: normal;\">drg. Widyawati, MK</p>','http://localhost/fihealth/assets/images/news/Notes_210913_182216_5d1-750x5361.png','admin','2023-05-20 15:44:16',NULL,NULL,'');
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
INSERT INTO `utl_diagnosa_patient` VALUES (1,NULL,'admin','2023-05-21 00:00:00','tes ','tes','tes','fandy','2023-05-21 13:51:18'),(2,2,'admin','2023-05-21 00:00:00','tes','tes','tes','fandy','2023-05-21 13:53:59');
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
INSERT INTO `utl_jadwal_dokter` VALUES (1,'fandy','Sunday','06:00:00','07:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(2,'fandy','Monday','07:00:00','08:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(3,'fandy','Tuesday','08:00:00','09:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(5,'fandy','Wednesday','08:00:00','09:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(6,'fandy','Friday','08:00:00','09:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(7,'fandy','Saturday','08:00:00','09:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(8,'fandy','Thursday','08:00:00','09:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(9,'fandy','Monday','08:00:00','09:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(10,'fandy','Monday','09:00:00','10:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(11,'fandy','Monday','10:00:00','11:00:00','','','0000-00-00 00:00:00',NULL,NULL,''),(12,'fandy','Sunday','07:00:00','07:15:00','\0','','0000-00-00 00:00:00',NULL,NULL,''),(13,'fandy','Thursday','09:00:00','09:30:00','\0','','0000-00-00 00:00:00',NULL,NULL,'');
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
INSERT INTO `utl_user` VALUES ('admin','$2y$10$mfs2CWOcuff7.cQtm1Qq.uVckfLQQjiuehUPmp4QJqN7vjKfxFn0i','Admin Ganteng','Notes_210913_182216_5d1-750x5361.png',1,'\0','','\0','\0','\0','','0000-00-00 00:00:00','admin','2023-05-20 19:00:54',''),('chaniago','$2y$10$2vWqg89Fh6YWYsG.02/VzeZzUrWv4PWawCN9quhkLYv323hBS3iVq','tes',NULL,4,'\0','','\0','\0','\0','','0000-00-00 00:00:00',NULL,NULL,''),('fandy','$2y$10$I0ngjPZgE9V4ivSoo9nDjeoucwGDle0.ZUOTJHbre3oJjK16O.apu','Fandy Chaniago','istockphoto-1197250881-612x612.jpg',2,'\0','','\0','\0','\0','','0000-00-00 00:00:00','fandy','2023-05-21 01:22:55',''),('fatih99@gmail.com','$2y$10$gixhjMg1YR4AHMG0hXQpM.Albq/SjHd353VJc2moA4g3qBGVjP7DO','Muhammad Al Fatih',NULL,4,'\0','\0','\0','\0','\0','','0000-00-00 00:00:00',NULL,NULL,''),('fc99@gmail.com','$2y$10$gixhjMg1YR4AHMG0hXQpM.Albq/SjHd353VJc2moA4g3qBGVjP7DO','Fan CHan',NULL,2,'\0','\0','\0','\0','\0','','0000-00-00 00:00:00',NULL,NULL,''),('user_tes@gmail.com','$2y$10$I0ngjPZgE9V4ivSoo9nDjeoucwGDle0.ZUOTJHbre3oJjK16O.apu','Tes User ',NULL,4,'\0','\0','\0','\0','\0','','0000-00-00 00:00:00',NULL,NULL,'');
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

-- Dump completed on 2023-05-21 22:14:57
