CREATE
DATABASE  IF NOT EXISTS `db_english_center` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE
`db_english_center`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: db_english_center
-- ------------------------------------------------------
-- Server version	9.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache`
(
    `key`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value`      mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `expiration` int                                                           NOT NULL,
    PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK
TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks`
(
    `key`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `owner`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `expiration` int                                                           NOT NULL,
    PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK
TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `count`      int                                                           NOT NULL DEFAULT '0',
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK
TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories`
VALUES (1, 'Kiến thức và kinh nghiệm', 'kien-thuc-va-kinh-nghiem-1', 5, '2025-07-21 03:53:45', '2025-07-21 03:53:45'),
       (2, 'Tin tức', 'tin-tuc-2', 6, '2025-08-04 09:57:45', '2025-08-04 09:57:45');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `address`    longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone`      varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `hotline`    varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email`      varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `zalo`       varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `facebook`   varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK
TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact`
VALUES (1,
        '[{\"address\":\"AU L\\u1ea1ng Giang: S\\u1ed1 50.51 khu HDB, t\\u1ed5 d\\u00e2n ph\\u1ed1 To\\u00e0n M\\u1ef9, x\\u00e3 L\\u1ea1ng Giang, t\\u1ec9nh B\\u1eafc Giang.\",\"googlemap\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3715.481839542269!2d106.22817431051976!3d21.370924280283436!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31356bc73070c9b3%3A0x7d43afddc5504ba1!2zQ8O0bmcgVHkgVE5ISCBN4buZdCBUaMOgbmggVmnDqm4gVMawIFbhuqVuIFbDoCBYw6J5IEThu7FuZyBUb8OgbiBN4bu5!5e0!3m2!1svi!2s!4v1754303261818!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"},{\"address\":\"AU B\\u1eafc Giang: T\\u1ea7ng 1, nh\\u00e0 B, k\\u00ed t\\u00fac x\\u00e1 sinh vi\\u00ean, \\u0111\\u01b0\\u1eddng Ho\\u00e0ng V\\u0103n Th\\u1ee5, ph\\u01b0\\u1eddng B\\u1eafc Giang, t\\u1ec9nh B\\u1eafc Giang\",\"googlemap\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3717.6938145474705!2d106.21017691051715!3d21.283584280348666!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31356da5c23132b3%3A0xb9acbbfb694a6a4a!2zS8O9IHTDumMgeMOhIFNpbmggdmnDqm4gQuG6r2MgR2lhbmc!5e0!3m2!1svi!2s!4v1754303286922!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"}]',
        '0979798426', '0979798426 - 0868234966', 'aubacgiang@gmail.com', '0962435369', 'https://web.facebook.com',
        '2025-08-04 01:54:47', '2025-08-04 10:28:35');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers`
(
    `id`                 bigint unsigned NOT NULL AUTO_INCREMENT,
    `training_id`        bigint unsigned DEFAULT NULL,
    `full_name_parent`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone`              varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
    `email`              varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
    `full_name_children` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status`             enum('pending','confirmed','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
    `date_of_birth`      date                                                          NOT NULL,
    `address`            text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `note`               longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at`         timestamp NULL DEFAULT NULL,
    `updated_at`         timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY                  `customers_training_id_foreign` (`training_id`),
    CONSTRAINT `customers_training_id_foreign` FOREIGN KEY (`training_id`) REFERENCES `trainings` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK
TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `priority`   int                                                          NOT NULL DEFAULT '99',
    `name`       varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `src`        text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK
TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `uuid`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `queue`      text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `payload`    longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `exception`  longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `failed_at`  timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK
TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `home_page`
--

DROP TABLE IF EXISTS `home_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_page`
(
    `id`            bigint unsigned NOT NULL AUTO_INCREMENT,
    `banners`       text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `stats`         text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `fags`          text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `images`        text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `link_youtubes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at`    timestamp NULL DEFAULT NULL,
    `updated_at`    timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_page`
--

LOCK
TABLES `home_page` WRITE;
/*!40000 ALTER TABLE `home_page` DISABLE KEYS */;
INSERT INTO `home_page`
VALUES (1,
        '{\"title\":\"Kh\\u01a1i d\\u1eady ti\\u1ec1m n\\u0103ng, v\\u1eefng b\\u01b0\\u1edbc t\\u01b0\\u01a1ng lai c\\u00f9ng AU English\",\"description\":\"M\\u00f4i tr\\u01b0\\u1eddng h\\u1ecdc t\\u1eadp chu\\u1ea9n qu\\u1ed1c t\\u1ebf, gi\\u00fap con t\\u1ef1 tin giao ti\\u1ebfp v\\u00e0 chinh ph\\u1ee5c c\\u00e1c k\\u1ef3 thi.\",\"images\":[\"\\/userfiles\\/images\\/home\\/ANH%20TRANG%20CHU.jpg\",\"\\/userfiles\\/images\\/home\\/491417692_1256480809817417_4821618544474045259_n.jpg\",\"\\/userfiles\\/images\\/home\\/DSC04324.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT0512.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4278.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4246.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4176.jpg\",\"\\/userfiles\\/images\\/home\\/z5581456363302_b57dac4162e102d9e48ad685e3c2334b.jpg\",\"\\/userfiles\\/images\\/home\\/z5581592846335_1c090589e126117b71c3760cf42f7908.jpg\"]}',
        '[{\"value\":\"10\",\"description\":\"N\\u0103m kinh nghi\\u1ec7m\",\"images\":\"\\/userfiles\\/images\\/home\\/10%20n%C4%83m%20kinh%20nghi%E1%BB%87m%20.JPG\"},{\"value\":\"30\",\"description\":\"Gi\\u00e1o vi\\u00ean \\u01b0u t\\u00fa\",\"images\":\"\\/userfiles\\/images\\/home\\/Gi%C3%A1o%20vi%C3%AAn%20%C6%B0u%20t%C3%BA.JPG\"}]',
        '[{\"question\":\"Trung t\\u00e2m c\\u00f3 l\\u1edbp h\\u1ecdc th\\u1eed mi\\u1ec5n ph\\u00ed kh\\u00f4ng?\",\"answer\":\"C\\u00f3, ch\\u00fang t\\u00f4i c\\u00f3 c\\u00e1c bu\\u1ed5i h\\u1ecdc th\\u1eed \\u0111\\u1ecbnh k\\u1ef3. Vui l\\u00f2ng \\u0111\\u1ec3 l\\u1ea1i th\\u00f4ng tin \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n l\\u1ecbch h\\u1ecdc g\\u1ea7n nh\\u1ea5t.\"},{\"question\":\"L\\u1ed9 tr\\u00ecnh h\\u1ecdc cho b\\u00e9 \\u0111\\u01b0\\u1ee3c x\\u00e2y d\\u1ef1ng nh\\u01b0 th\\u1ebf n\\u00e0o?\",\"answer\":\"M\\u1ed7i h\\u1ecdc vi\\u00ean s\\u1ebd \\u0111\\u01b0\\u1ee3c ki\\u1ec3m tra \\u0111\\u1ea7u v\\u00e0o v\\u00e0 t\\u01b0 v\\u1ea5n l\\u1ed9 tr\\u00ecnh c\\u00e1 nh\\u00e2n h\\u00f3a \\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o hi\\u1ec7u qu\\u1ea3 h\\u1ecdc t\\u1eadp t\\u1ed1t nh\\u1ea5t.\"},{\"question\":\"\\u0110\\u1ed9i ng\\u0169 gi\\u00e1o vi\\u00ean c\\u1ee7a trung t\\u00e2m c\\u00f3 tr\\u00ecnh \\u0111\\u1ed9 nh\\u01b0 th\\u1ebf n\\u00e0o?\",\"answer\":\"100% gi\\u00e1o vi\\u00ean t\\u1ea1i AU English c\\u00f3 b\\u1eb1ng c\\u1ea5p s\\u01b0 ph\\u1ea1m, ch\\u1ee9ng ch\\u1ec9 gi\\u1ea3ng d\\u1ea1y qu\\u1ed1c t\\u1ebf (TESOL\\/IELTS) v\\u00e0 nhi\\u1ec1u n\\u0103m kinh nghi\\u1ec7m.\"}]',
        '[\"\\/userfiles\\/images\\/home\\/491417692_1256480809817417_4821618544474045259_n.jpg\",\"\\/userfiles\\/images\\/home\\/ANH%20TRANG%20CHU.jpg\",\"\\/userfiles\\/images\\/home\\/DSC04324.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT0512.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4027.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4176.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4246.jpg\",\"\\/userfiles\\/images\\/home\\/R5AT4278.jpg\",\"\\/userfiles\\/images\\/home\\/z5581456363302_b57dac4162e102d9e48ad685e3c2334b.jpg\",\"\\/userfiles\\/images\\/home\\/z5581592846335_1c090589e126117b71c3760cf42f7908.jpg\"]',
        '[\"https:\\/\\/www.youtube.com\\/watch?v=MjD-vIFhkOU\",\"https:\\/\\/www.youtube.com\\/watch?v=MeBtmLRtUoQ\",\"https:\\/\\/www.youtube.com\\/watch?v=IlAw2WBLlxg\",\"https:\\/\\/www.youtube.com\\/watch?v=-ru1Qs4PNeA\"]',
        '2025-08-04 01:54:47', '2025-08-06 14:44:48');
/*!40000 ALTER TABLE `home_page` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches`
(
    `id`             varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name`           varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `total_jobs`     int                                                           NOT NULL,
    `pending_jobs`   int                                                           NOT NULL,
    `failed_jobs`    int                                                           NOT NULL,
    `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `options`        mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `cancelled_at`   int DEFAULT NULL,
    `created_at`     int                                                           NOT NULL,
    `finished_at`    int DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK
TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs`
(
    `id`           bigint unsigned NOT NULL AUTO_INCREMENT,
    `queue`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `payload`      longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `attempts`     tinyint unsigned NOT NULL,
    `reserved_at`  int unsigned DEFAULT NULL,
    `available_at` int unsigned NOT NULL,
    `created_at`   int unsigned NOT NULL,
    PRIMARY KEY (`id`),
    KEY            `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK
TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `url`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `priority`   int                                                           DEFAULT '0',
    `parent_id`  bigint unsigned DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY          `menus_parent_id_foreign` (`parent_id`),
    CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK
TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus`
VALUES (2, 'Tin tức & Sự kiện', '/news', 2, NULL, '2025-07-27 14:09:34', '2025-07-28 02:21:26'),
       (3, 'Chương trình học', '/training', 3, NULL, '2025-07-27 14:10:00', '2025-07-28 02:22:26'),
       (7, 'Tiếng Anh Mẫu giáo', '/training/tieng-anh-mau-giao-3-6-tuoi-1', 1, 3, '2025-07-27 14:23:40',
        '2025-08-04 10:04:35'),
       (8, 'Tiếng Anh Tiểu học', '/training/tieng-anh-tieu-hoc-6-11-tuoi-2', 2, 3, '2025-07-27 14:25:13',
        '2025-08-04 10:04:53'),
       (9, 'Tiếng Anh THCS', '/training/tieng-anh-thcs-11-13-tuoi-3', 3, 3, '2025-07-27 14:25:36',
        '2025-08-04 10:05:07'),
       (10, 'Kiến thức và kinh nghiệm', '/category/kien-thuc-va-kinh-nghiem-1', 1, 2, '2025-07-27 14:26:06',
        '2025-08-04 10:04:17'),
       (11, 'Tin tức', '/category/tin-tuc-2', 2, 2, '2025-08-04 10:03:30', '2025-08-04 10:03:54'),
       (12, 'Chương trình Bán Trú hè', '/training/chuong-trinh-ban-tru-he-4', 4, 3, '2025-08-04 10:05:37',
        '2025-08-04 10:05:37'),
       (13, 'Tiếng Anh Doanh Nghiệp', '/training/tieng-anh-doanh-nghiep-5', 5, 3, '2025-08-04 10:06:03',
        '2025-08-04 10:06:03');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations`
(
    `id`        int unsigned NOT NULL AUTO_INCREMENT,
    `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `batch`     int                                                           NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK
TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations`
VALUES (1, '0001_01_01_000000_create_users_table', 1),
       (2, '0001_01_01_000001_create_cache_table', 1),
       (3, '0001_01_01_000002_create_jobs_table', 1),
       (4, '2025_03_26_142803_create_kingexpressbus_schemas', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news`
(
    `id`          bigint unsigned NOT NULL AUTO_INCREMENT,
    `slug`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `title`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `excerpt`     text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `thumbnail`   varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `author`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `view`        int                                                           NOT NULL DEFAULT '0',
    `category_id` bigint unsigned NOT NULL,
    `content`     longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at`  timestamp NULL DEFAULT NULL,
    `updated_at`  timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `news_slug_unique` (`slug`),
    KEY           `news_category_id_foreign` (`category_id`),
    CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK
TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news`
VALUES (1, 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-1', 'Bí quyết giúp con học tiếng Anh tại nhà',
        'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
        '/userfiles/images/R5AT3841.jpg', 'Admin', 1456, 1,
        '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
        '2025-07-21 03:53:45', '2025-07-21 05:41:02'),
       (4, 'dua-con-den-hoc-tai-trung-tam-phu-huynh-can-lam-gi-de-khong-tien-mat-tat-mang-4',
        'Đưa con đến học tại trung tâm: Phụ huynh cần làm gì để không \"tiền mất tật mang\"?',
        'Giữa bối cảnh thị trường trung tâm Anh ngữ đầy biến động với nhiều vụ việc \"lùm xùm\", việc lựa chọn một nơi học tập uy tín cho con trở thành bài toán khó. Trước khi đặt bút ký vào hợp đồng và đóng những khoản tiền lớn, phụ huynh cần trang bị kiến thức, trở thành người tiêu dùng thông thái để bảo vệ quyền lợi của chính mình và đảm bảo tương lai học tập của con.',
        '/userfiles/images/R5AT4032.jpg', 'Admin', 0, 2,
        '<p>Việc đầu tư cho con học tiếng Anh là một quyết định quan trọng, nhưng nó cũng đi kèm với không ít rủi ro nếu phụ huynh không tìm hiểu kỹ lưỡng. Sau hàng loạt vụ việc các trung tâm lớn như Apax Leaders sụp đổ, hay các cơ sở nhỏ hơn \"ôm\" tiền học phí bỏ trốn, bài học về sự cẩn trọng chưa bao giờ cũ. Dưới đây là những bước phụ huynh cần thực hiện để đưa ra quyết định sáng suốt.</p><p><strong>1. Kiểm tra kỹ lưỡng thông tin pháp lý và lịch sử hoạt động:</strong></p><p><strong>Giấy phép hoạt động:</strong> Yêu cầu trung tâm cung cấp giấy phép thành lập và giấy phép hoạt động đào tạo ngoại ngữ do Sở Giáo dục và Đào tạo cấp. Đây là yếu tố pháp lý cơ bản nhất để đảm bảo trung tâm hoạt động hợp pháp.</p><p><strong>Lịch sử và \"phốt\":</strong> Đừng chỉ nghe tư vấn viên nói. Hãy chủ động tìm kiếm tên trung tâm trên Google, các hội nhóm phụ huynh trên mạng xã hội (Facebook, Zalo). Các từ khóa tìm kiếm như \"[Tên trung tâm] + lừa đảo\", \"[Tên trung tâm] + có tốt không\", \"review [Tên trung tâm]\" sẽ cho bạn một cái nhìn đa chiều về lịch sử hoạt động và những phản ánh (nếu có) từ các phụ huynh khác.</p><p><strong>2. Đánh giá chất lượng thực tế, không chỉ tin vào quảng cáo:</strong></p><p><strong>Học thử:</strong> Luôn yêu cầu cho con tham gia một buổi học thử. Đây là cách tốt nhất để đánh giá phương pháp giảng dạy, sự tương tác của giáo viên với học sinh và xem con bạn có thực sự hứng thú với môi trường học đó không.</p><p><strong>Chất lượng giáo viên:</strong> Tìm hiểu kỹ về đội ngũ giáo viên. Họ là người Việt Nam hay người nước ngoài? Bằng cấp của họ là gì (TESOL, CELTA,...)? Kinh nghiệm giảng dạy ra sao? Một trung tâm uy tín sẽ không ngần ngại công khai thông tin này.</p><p><strong>Cơ sở vật chất:</strong> Hãy dành thời gian tham quan trực tiếp cơ sở vật chất, từ phòng học, thư viện đến các trang thiết bị hỗ trợ và đặc biệt là công tác phòng cháy chữa cháy.</p><p><strong>3. Minh bạch về tài chính và hợp đồng:</strong></p><p><strong>Hợp đồng rõ ràng:</strong> Đọc kỹ từng điều khoản trong hợp đồng. Chú ý đến lộ trình học, số buổi học, chính sách bảo lưu, chuyển lớp và đặc biệt là điều khoản hoàn phí. Hãy hỏi rõ: \"Trong trường hợp nào tôi sẽ được hoàn lại học phí và thủ tục ra sao?\". Mọi cam kết (như \"cam kết đầu ra\") phải được ghi rõ trong hợp đồng, không chỉ là lời hứa miệng.</p><p><strong>Cảnh giác với ưu đãi \"khủng\":</strong> Các gói học dài hạn với chiết khấu sâu (đóng 2-3 năm học phí một lần) có thể rất hấp dẫn, nhưng cũng tiềm ẩn rủi ro cao nhất nếu trung tâm gặp vấn đề về tài chính. Hãy cân nhắc đóng học phí theo từng khóa ngắn hạn để giảm thiểu rủi ro.</p><p>Việc trang bị đầy đủ thông tin và giữ một cái đầu \"lạnh\" sẽ giúp phụ huynh tránh được những cạm bẫy, đảm bảo rằng số tiền đầu tư cho giáo dục của con được đặt đúng chỗ, mang lại hiệu quả thực sự thay vì những phiền phức không đáng có.</p>',
        '2025-08-04 10:02:02', '2025-08-04 10:02:02'),
       (5, 'dua-con-den-hoc-tai-trung-tam-phu-huynh-can-lam-gi-de-khong-tien-mat-tat-mang-5',
        'Đưa con đến học tại trung tâm: Phụ huynh cần làm gì để không \"tiền mất tật mang\"? - 2',
        'Giữa bối cảnh thị trường trung tâm Anh ngữ đầy biến động với nhiều vụ việc \"lùm xùm\", việc lựa chọn một nơi học tập uy tín cho con trở thành bài toán khó. Trước khi đặt bút ký vào hợp đồng và đóng những khoản tiền lớn, phụ huynh cần trang bị kiến thức, trở thành người tiêu dùng thông thái để bảo vệ quyền lợi của chính mình và đảm bảo tương lai học tập của con.',
        '/userfiles/images/R5AT4032.jpg', 'Admin', 0, 2,
        '<p>Việc đầu tư cho con học tiếng Anh là một quyết định quan trọng, nhưng nó cũng đi kèm với không ít rủi ro nếu phụ huynh không tìm hiểu kỹ lưỡng. Sau hàng loạt vụ việc các trung tâm lớn như Apax Leaders sụp đổ, hay các cơ sở nhỏ hơn \"ôm\" tiền học phí bỏ trốn, bài học về sự cẩn trọng chưa bao giờ cũ. Dưới đây là những bước phụ huynh cần thực hiện để đưa ra quyết định sáng suốt.</p><p><strong>1. Kiểm tra kỹ lưỡng thông tin pháp lý và lịch sử hoạt động:</strong></p><p><strong>Giấy phép hoạt động:</strong> Yêu cầu trung tâm cung cấp giấy phép thành lập và giấy phép hoạt động đào tạo ngoại ngữ do Sở Giáo dục và Đào tạo cấp. Đây là yếu tố pháp lý cơ bản nhất để đảm bảo trung tâm hoạt động hợp pháp.</p><p><strong>Lịch sử và \"phốt\":</strong> Đừng chỉ nghe tư vấn viên nói. Hãy chủ động tìm kiếm tên trung tâm trên Google, các hội nhóm phụ huynh trên mạng xã hội (Facebook, Zalo). Các từ khóa tìm kiếm như \"[Tên trung tâm] + lừa đảo\", \"[Tên trung tâm] + có tốt không\", \"review [Tên trung tâm]\" sẽ cho bạn một cái nhìn đa chiều về lịch sử hoạt động và những phản ánh (nếu có) từ các phụ huynh khác.</p><p><strong>2. Đánh giá chất lượng thực tế, không chỉ tin vào quảng cáo:</strong></p><p><strong>Học thử:</strong> Luôn yêu cầu cho con tham gia một buổi học thử. Đây là cách tốt nhất để đánh giá phương pháp giảng dạy, sự tương tác của giáo viên với học sinh và xem con bạn có thực sự hứng thú với môi trường học đó không.</p><p><strong>Chất lượng giáo viên:</strong> Tìm hiểu kỹ về đội ngũ giáo viên. Họ là người Việt Nam hay người nước ngoài? Bằng cấp của họ là gì (TESOL, CELTA,...)? Kinh nghiệm giảng dạy ra sao? Một trung tâm uy tín sẽ không ngần ngại công khai thông tin này.</p><p><strong>Cơ sở vật chất:</strong> Hãy dành thời gian tham quan trực tiếp cơ sở vật chất, từ phòng học, thư viện đến các trang thiết bị hỗ trợ và đặc biệt là công tác phòng cháy chữa cháy.</p><p><strong>3. Minh bạch về tài chính và hợp đồng:</strong></p><p><strong>Hợp đồng rõ ràng:</strong> Đọc kỹ từng điều khoản trong hợp đồng. Chú ý đến lộ trình học, số buổi học, chính sách bảo lưu, chuyển lớp và đặc biệt là điều khoản hoàn phí. Hãy hỏi rõ: \"Trong trường hợp nào tôi sẽ được hoàn lại học phí và thủ tục ra sao?\". Mọi cam kết (như \"cam kết đầu ra\") phải được ghi rõ trong hợp đồng, không chỉ là lời hứa miệng.</p><p><strong>Cảnh giác với ưu đãi \"khủng\":</strong> Các gói học dài hạn với chiết khấu sâu (đóng 2-3 năm học phí một lần) có thể rất hấp dẫn, nhưng cũng tiềm ẩn rủi ro cao nhất nếu trung tâm gặp vấn đề về tài chính. Hãy cân nhắc đóng học phí theo từng khóa ngắn hạn để giảm thiểu rủi ro.</p><p>Việc trang bị đầy đủ thông tin và giữ một cái đầu \"lạnh\" sẽ giúp phụ huynh tránh được những cạm bẫy, đảm bảo rằng số tiền đầu tư cho giáo dục của con được đặt đúng chỗ, mang lại hiệu quả thực sự thay vì những phiền phức không đáng có.</p>',
        '2025-08-04 10:02:02', '2025-08-04 10:02:02'),
       (6, 'dua-con-den-hoc-tai-trung-tam-phu-huynh-can-lam-gi-de-khong-tien-mat-tat-mang-6',
        'Đưa con đến học tại trung tâm: Phụ huynh cần làm gì để không \"tiền mất tật mang\"? - 3',
        'Giữa bối cảnh thị trường trung tâm Anh ngữ đầy biến động với nhiều vụ việc \"lùm xùm\", việc lựa chọn một nơi học tập uy tín cho con trở thành bài toán khó. Trước khi đặt bút ký vào hợp đồng và đóng những khoản tiền lớn, phụ huynh cần trang bị kiến thức, trở thành người tiêu dùng thông thái để bảo vệ quyền lợi của chính mình và đảm bảo tương lai học tập của con.',
        '/userfiles/images/R5AT4032.jpg', 'Admin', 0, 2,
        '<p>Việc đầu tư cho con học tiếng Anh là một quyết định quan trọng, nhưng nó cũng đi kèm với không ít rủi ro nếu phụ huynh không tìm hiểu kỹ lưỡng. Sau hàng loạt vụ việc các trung tâm lớn như Apax Leaders sụp đổ, hay các cơ sở nhỏ hơn \"ôm\" tiền học phí bỏ trốn, bài học về sự cẩn trọng chưa bao giờ cũ. Dưới đây là những bước phụ huynh cần thực hiện để đưa ra quyết định sáng suốt.</p><p><strong>1. Kiểm tra kỹ lưỡng thông tin pháp lý và lịch sử hoạt động:</strong></p><p><strong>Giấy phép hoạt động:</strong> Yêu cầu trung tâm cung cấp giấy phép thành lập và giấy phép hoạt động đào tạo ngoại ngữ do Sở Giáo dục và Đào tạo cấp. Đây là yếu tố pháp lý cơ bản nhất để đảm bảo trung tâm hoạt động hợp pháp.</p><p><strong>Lịch sử và \"phốt\":</strong> Đừng chỉ nghe tư vấn viên nói. Hãy chủ động tìm kiếm tên trung tâm trên Google, các hội nhóm phụ huynh trên mạng xã hội (Facebook, Zalo). Các từ khóa tìm kiếm như \"[Tên trung tâm] + lừa đảo\", \"[Tên trung tâm] + có tốt không\", \"review [Tên trung tâm]\" sẽ cho bạn một cái nhìn đa chiều về lịch sử hoạt động và những phản ánh (nếu có) từ các phụ huynh khác.</p><p><strong>2. Đánh giá chất lượng thực tế, không chỉ tin vào quảng cáo:</strong></p><p><strong>Học thử:</strong> Luôn yêu cầu cho con tham gia một buổi học thử. Đây là cách tốt nhất để đánh giá phương pháp giảng dạy, sự tương tác của giáo viên với học sinh và xem con bạn có thực sự hứng thú với môi trường học đó không.</p><p><strong>Chất lượng giáo viên:</strong> Tìm hiểu kỹ về đội ngũ giáo viên. Họ là người Việt Nam hay người nước ngoài? Bằng cấp của họ là gì (TESOL, CELTA,...)? Kinh nghiệm giảng dạy ra sao? Một trung tâm uy tín sẽ không ngần ngại công khai thông tin này.</p><p><strong>Cơ sở vật chất:</strong> Hãy dành thời gian tham quan trực tiếp cơ sở vật chất, từ phòng học, thư viện đến các trang thiết bị hỗ trợ và đặc biệt là công tác phòng cháy chữa cháy.</p><p><strong>3. Minh bạch về tài chính và hợp đồng:</strong></p><p><strong>Hợp đồng rõ ràng:</strong> Đọc kỹ từng điều khoản trong hợp đồng. Chú ý đến lộ trình học, số buổi học, chính sách bảo lưu, chuyển lớp và đặc biệt là điều khoản hoàn phí. Hãy hỏi rõ: \"Trong trường hợp nào tôi sẽ được hoàn lại học phí và thủ tục ra sao?\". Mọi cam kết (như \"cam kết đầu ra\") phải được ghi rõ trong hợp đồng, không chỉ là lời hứa miệng.</p><p><strong>Cảnh giác với ưu đãi \"khủng\":</strong> Các gói học dài hạn với chiết khấu sâu (đóng 2-3 năm học phí một lần) có thể rất hấp dẫn, nhưng cũng tiềm ẩn rủi ro cao nhất nếu trung tâm gặp vấn đề về tài chính. Hãy cân nhắc đóng học phí theo từng khóa ngắn hạn để giảm thiểu rủi ro.</p><p>Việc trang bị đầy đủ thông tin và giữ một cái đầu \"lạnh\" sẽ giúp phụ huynh tránh được những cạm bẫy, đảm bảo rằng số tiền đầu tư cho giáo dục của con được đặt đúng chỗ, mang lại hiệu quả thực sự thay vì những phiền phức không đáng có.</p>',
        '2025-08-04 10:02:02', '2025-08-04 10:02:02'),
       (7, 'dua-con-den-hoc-tai-trung-tam-phu-huynh-can-lam-gi-de-khong-tien-mat-tat-mang-7',
        'Đưa con đến học tại trung tâm: Phụ huynh cần làm gì để không \"tiền mất tật mang\"? - 4',
        'Giữa bối cảnh thị trường trung tâm Anh ngữ đầy biến động với nhiều vụ việc \"lùm xùm\", việc lựa chọn một nơi học tập uy tín cho con trở thành bài toán khó. Trước khi đặt bút ký vào hợp đồng và đóng những khoản tiền lớn, phụ huynh cần trang bị kiến thức, trở thành người tiêu dùng thông thái để bảo vệ quyền lợi của chính mình và đảm bảo tương lai học tập của con.',
        '/userfiles/images/R5AT4032.jpg', 'Admin', 0, 2,
        '<p>Việc đầu tư cho con học tiếng Anh là một quyết định quan trọng, nhưng nó cũng đi kèm với không ít rủi ro nếu phụ huynh không tìm hiểu kỹ lưỡng. Sau hàng loạt vụ việc các trung tâm lớn như Apax Leaders sụp đổ, hay các cơ sở nhỏ hơn \"ôm\" tiền học phí bỏ trốn, bài học về sự cẩn trọng chưa bao giờ cũ. Dưới đây là những bước phụ huynh cần thực hiện để đưa ra quyết định sáng suốt.</p><p><strong>1. Kiểm tra kỹ lưỡng thông tin pháp lý và lịch sử hoạt động:</strong></p><p><strong>Giấy phép hoạt động:</strong> Yêu cầu trung tâm cung cấp giấy phép thành lập và giấy phép hoạt động đào tạo ngoại ngữ do Sở Giáo dục và Đào tạo cấp. Đây là yếu tố pháp lý cơ bản nhất để đảm bảo trung tâm hoạt động hợp pháp.</p><p><strong>Lịch sử và \"phốt\":</strong> Đừng chỉ nghe tư vấn viên nói. Hãy chủ động tìm kiếm tên trung tâm trên Google, các hội nhóm phụ huynh trên mạng xã hội (Facebook, Zalo). Các từ khóa tìm kiếm như \"[Tên trung tâm] + lừa đảo\", \"[Tên trung tâm] + có tốt không\", \"review [Tên trung tâm]\" sẽ cho bạn một cái nhìn đa chiều về lịch sử hoạt động và những phản ánh (nếu có) từ các phụ huynh khác.</p><p><strong>2. Đánh giá chất lượng thực tế, không chỉ tin vào quảng cáo:</strong></p><p><strong>Học thử:</strong> Luôn yêu cầu cho con tham gia một buổi học thử. Đây là cách tốt nhất để đánh giá phương pháp giảng dạy, sự tương tác của giáo viên với học sinh và xem con bạn có thực sự hứng thú với môi trường học đó không.</p><p><strong>Chất lượng giáo viên:</strong> Tìm hiểu kỹ về đội ngũ giáo viên. Họ là người Việt Nam hay người nước ngoài? Bằng cấp của họ là gì (TESOL, CELTA,...)? Kinh nghiệm giảng dạy ra sao? Một trung tâm uy tín sẽ không ngần ngại công khai thông tin này.</p><p><strong>Cơ sở vật chất:</strong> Hãy dành thời gian tham quan trực tiếp cơ sở vật chất, từ phòng học, thư viện đến các trang thiết bị hỗ trợ và đặc biệt là công tác phòng cháy chữa cháy.</p><p><strong>3. Minh bạch về tài chính và hợp đồng:</strong></p><p><strong>Hợp đồng rõ ràng:</strong> Đọc kỹ từng điều khoản trong hợp đồng. Chú ý đến lộ trình học, số buổi học, chính sách bảo lưu, chuyển lớp và đặc biệt là điều khoản hoàn phí. Hãy hỏi rõ: \"Trong trường hợp nào tôi sẽ được hoàn lại học phí và thủ tục ra sao?\". Mọi cam kết (như \"cam kết đầu ra\") phải được ghi rõ trong hợp đồng, không chỉ là lời hứa miệng.</p><p><strong>Cảnh giác với ưu đãi \"khủng\":</strong> Các gói học dài hạn với chiết khấu sâu (đóng 2-3 năm học phí một lần) có thể rất hấp dẫn, nhưng cũng tiềm ẩn rủi ro cao nhất nếu trung tâm gặp vấn đề về tài chính. Hãy cân nhắc đóng học phí theo từng khóa ngắn hạn để giảm thiểu rủi ro.</p><p>Việc trang bị đầy đủ thông tin và giữ một cái đầu \"lạnh\" sẽ giúp phụ huynh tránh được những cạm bẫy, đảm bảo rằng số tiền đầu tư cho giáo dục của con được đặt đúng chỗ, mang lại hiệu quả thực sự thay vì những phiền phức không đáng có.</p>',
        '2025-08-04 10:02:02', '2025-08-04 10:02:02'),
       (8, 'dua-con-den-hoc-tai-trung-tam-phu-huynh-can-lam-gi-de-khong-tien-mat-tat-mang-8',
        'Đưa con đến học tại trung tâm: Phụ huynh cần làm gì để không \"tiền mất tật mang\"? - 5',
        'Giữa bối cảnh thị trường trung tâm Anh ngữ đầy biến động với nhiều vụ việc \"lùm xùm\", việc lựa chọn một nơi học tập uy tín cho con trở thành bài toán khó. Trước khi đặt bút ký vào hợp đồng và đóng những khoản tiền lớn, phụ huynh cần trang bị kiến thức, trở thành người tiêu dùng thông thái để bảo vệ quyền lợi của chính mình và đảm bảo tương lai học tập của con.',
        '/userfiles/images/R5AT4032.jpg', 'Admin', 0, 2,
        '<p>Việc đầu tư cho con học tiếng Anh là một quyết định quan trọng, nhưng nó cũng đi kèm với không ít rủi ro nếu phụ huynh không tìm hiểu kỹ lưỡng. Sau hàng loạt vụ việc các trung tâm lớn như Apax Leaders sụp đổ, hay các cơ sở nhỏ hơn \"ôm\" tiền học phí bỏ trốn, bài học về sự cẩn trọng chưa bao giờ cũ. Dưới đây là những bước phụ huynh cần thực hiện để đưa ra quyết định sáng suốt.</p><p><strong>1. Kiểm tra kỹ lưỡng thông tin pháp lý và lịch sử hoạt động:</strong></p><p><strong>Giấy phép hoạt động:</strong> Yêu cầu trung tâm cung cấp giấy phép thành lập và giấy phép hoạt động đào tạo ngoại ngữ do Sở Giáo dục và Đào tạo cấp. Đây là yếu tố pháp lý cơ bản nhất để đảm bảo trung tâm hoạt động hợp pháp.</p><p><strong>Lịch sử và \"phốt\":</strong> Đừng chỉ nghe tư vấn viên nói. Hãy chủ động tìm kiếm tên trung tâm trên Google, các hội nhóm phụ huynh trên mạng xã hội (Facebook, Zalo). Các từ khóa tìm kiếm như \"[Tên trung tâm] + lừa đảo\", \"[Tên trung tâm] + có tốt không\", \"review [Tên trung tâm]\" sẽ cho bạn một cái nhìn đa chiều về lịch sử hoạt động và những phản ánh (nếu có) từ các phụ huynh khác.</p><p><strong>2. Đánh giá chất lượng thực tế, không chỉ tin vào quảng cáo:</strong></p><p><strong>Học thử:</strong> Luôn yêu cầu cho con tham gia một buổi học thử. Đây là cách tốt nhất để đánh giá phương pháp giảng dạy, sự tương tác của giáo viên với học sinh và xem con bạn có thực sự hứng thú với môi trường học đó không.</p><p><strong>Chất lượng giáo viên:</strong> Tìm hiểu kỹ về đội ngũ giáo viên. Họ là người Việt Nam hay người nước ngoài? Bằng cấp của họ là gì (TESOL, CELTA,...)? Kinh nghiệm giảng dạy ra sao? Một trung tâm uy tín sẽ không ngần ngại công khai thông tin này.</p><p><strong>Cơ sở vật chất:</strong> Hãy dành thời gian tham quan trực tiếp cơ sở vật chất, từ phòng học, thư viện đến các trang thiết bị hỗ trợ và đặc biệt là công tác phòng cháy chữa cháy.</p><p><strong>3. Minh bạch về tài chính và hợp đồng:</strong></p><p><strong>Hợp đồng rõ ràng:</strong> Đọc kỹ từng điều khoản trong hợp đồng. Chú ý đến lộ trình học, số buổi học, chính sách bảo lưu, chuyển lớp và đặc biệt là điều khoản hoàn phí. Hãy hỏi rõ: \"Trong trường hợp nào tôi sẽ được hoàn lại học phí và thủ tục ra sao?\". Mọi cam kết (như \"cam kết đầu ra\") phải được ghi rõ trong hợp đồng, không chỉ là lời hứa miệng.</p><p><strong>Cảnh giác với ưu đãi \"khủng\":</strong> Các gói học dài hạn với chiết khấu sâu (đóng 2-3 năm học phí một lần) có thể rất hấp dẫn, nhưng cũng tiềm ẩn rủi ro cao nhất nếu trung tâm gặp vấn đề về tài chính. Hãy cân nhắc đóng học phí theo từng khóa ngắn hạn để giảm thiểu rủi ro.</p><p>Việc trang bị đầy đủ thông tin và giữ một cái đầu \"lạnh\" sẽ giúp phụ huynh tránh được những cạm bẫy, đảm bảo rằng số tiền đầu tư cho giáo dục của con được đặt đúng chỗ, mang lại hiệu quả thực sự thay vì những phiền phức không đáng có.</p>',
        '2025-08-04 10:02:02', '2025-08-04 10:02:02'),
       (9, 'dua-con-den-hoc-tai-trung-tam-phu-huynh-can-lam-gi-de-khong-tien-mat-tat-mang-9',
        'Đưa con đến học tại trung tâm: Phụ huynh cần làm gì để không \"tiền mất tật mang\"? - 6',
        'Giữa bối cảnh thị trường trung tâm Anh ngữ đầy biến động với nhiều vụ việc \"lùm xùm\", việc lựa chọn một nơi học tập uy tín cho con trở thành bài toán khó. Trước khi đặt bút ký vào hợp đồng và đóng những khoản tiền lớn, phụ huynh cần trang bị kiến thức, trở thành người tiêu dùng thông thái để bảo vệ quyền lợi của chính mình và đảm bảo tương lai học tập của con.',
        '/userfiles/images/R5AT4032.jpg', 'Admin', 0, 2,
        '<p>Việc đầu tư cho con học tiếng Anh là một quyết định quan trọng, nhưng nó cũng đi kèm với không ít rủi ro nếu phụ huynh không tìm hiểu kỹ lưỡng. Sau hàng loạt vụ việc các trung tâm lớn như Apax Leaders sụp đổ, hay các cơ sở nhỏ hơn \"ôm\" tiền học phí bỏ trốn, bài học về sự cẩn trọng chưa bao giờ cũ. Dưới đây là những bước phụ huynh cần thực hiện để đưa ra quyết định sáng suốt.</p><p><strong>1. Kiểm tra kỹ lưỡng thông tin pháp lý và lịch sử hoạt động:</strong></p><p><strong>Giấy phép hoạt động:</strong> Yêu cầu trung tâm cung cấp giấy phép thành lập và giấy phép hoạt động đào tạo ngoại ngữ do Sở Giáo dục và Đào tạo cấp. Đây là yếu tố pháp lý cơ bản nhất để đảm bảo trung tâm hoạt động hợp pháp.</p><p><strong>Lịch sử và \"phốt\":</strong> Đừng chỉ nghe tư vấn viên nói. Hãy chủ động tìm kiếm tên trung tâm trên Google, các hội nhóm phụ huynh trên mạng xã hội (Facebook, Zalo). Các từ khóa tìm kiếm như \"[Tên trung tâm] + lừa đảo\", \"[Tên trung tâm] + có tốt không\", \"review [Tên trung tâm]\" sẽ cho bạn một cái nhìn đa chiều về lịch sử hoạt động và những phản ánh (nếu có) từ các phụ huynh khác.</p><p><strong>2. Đánh giá chất lượng thực tế, không chỉ tin vào quảng cáo:</strong></p><p><strong>Học thử:</strong> Luôn yêu cầu cho con tham gia một buổi học thử. Đây là cách tốt nhất để đánh giá phương pháp giảng dạy, sự tương tác của giáo viên với học sinh và xem con bạn có thực sự hứng thú với môi trường học đó không.</p><p><strong>Chất lượng giáo viên:</strong> Tìm hiểu kỹ về đội ngũ giáo viên. Họ là người Việt Nam hay người nước ngoài? Bằng cấp của họ là gì (TESOL, CELTA,...)? Kinh nghiệm giảng dạy ra sao? Một trung tâm uy tín sẽ không ngần ngại công khai thông tin này.</p><p><strong>Cơ sở vật chất:</strong> Hãy dành thời gian tham quan trực tiếp cơ sở vật chất, từ phòng học, thư viện đến các trang thiết bị hỗ trợ và đặc biệt là công tác phòng cháy chữa cháy.</p><p><strong>3. Minh bạch về tài chính và hợp đồng:</strong></p><p><strong>Hợp đồng rõ ràng:</strong> Đọc kỹ từng điều khoản trong hợp đồng. Chú ý đến lộ trình học, số buổi học, chính sách bảo lưu, chuyển lớp và đặc biệt là điều khoản hoàn phí. Hãy hỏi rõ: \"Trong trường hợp nào tôi sẽ được hoàn lại học phí và thủ tục ra sao?\". Mọi cam kết (như \"cam kết đầu ra\") phải được ghi rõ trong hợp đồng, không chỉ là lời hứa miệng.</p><p><strong>Cảnh giác với ưu đãi \"khủng\":</strong> Các gói học dài hạn với chiết khấu sâu (đóng 2-3 năm học phí một lần) có thể rất hấp dẫn, nhưng cũng tiềm ẩn rủi ro cao nhất nếu trung tâm gặp vấn đề về tài chính. Hãy cân nhắc đóng học phí theo từng khóa ngắn hạn để giảm thiểu rủi ro.</p><p>Việc trang bị đầy đủ thông tin và giữ một cái đầu \"lạnh\" sẽ giúp phụ huynh tránh được những cạm bẫy, đảm bảo rằng số tiền đầu tư cho giáo dục của con được đặt đúng chỗ, mang lại hiệu quả thực sự thay vì những phiền phức không đáng có.</p>',
        '2025-08-04 10:02:02', '2025-08-04 10:02:02'),
       (10, 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-10', 'Bí quyết giúp con học tiếng Anh tại nhà 2',
        'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
        '/userfiles/images/R5AT3841.jpg', 'Admin', 1456, 1,
        '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
        '2025-07-21 03:53:45', '2025-07-21 05:41:02'),
       (11, 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-11', 'Bí quyết giúp con học tiếng Anh tại nhà 3',
        'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
        '/userfiles/images/R5AT3841.jpg', 'Admin', 1456, 1,
        '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
        '2025-07-21 03:53:45', '2025-07-21 05:41:02'),
       (12, 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-12', 'Bí quyết giúp con học tiếng Anh tại nhà 4',
        'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
        '/userfiles/images/R5AT3841.jpg', 'Admin', 1456, 1,
        '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
        '2025-07-21 03:53:45', '2025-07-21 05:41:02'),
       (13, 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-13', 'Bí quyết giúp con học tiếng Anh tại nhà 5',
        'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
        '/userfiles/images/R5AT3841.jpg', 'Admin', 1456, 1,
        '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
        '2025-07-21 03:53:45', '2025-07-21 05:41:02');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `parents_corner`
--

DROP TABLE IF EXISTS `parents_corner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents_corner`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `priority`   int                                                           NOT NULL DEFAULT '99',
    `slug`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `image`      longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `rate`       text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `name`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `describe`   varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
    `content`    longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `parents_corner_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents_corner`
--

LOCK
TABLES `parents_corner` WRITE;
/*!40000 ALTER TABLE `parents_corner` DISABLE KEYS */;
INSERT INTO `parents_corner`
VALUES (1, 1, 'phu-huynh-tra-dan-chuong-0', '/userfiles/images/R5AT4198.jpg',
        'Sau khi cho con học tại trung tâm con tôi đã tự tin hơn trước rất nhiều!', 'Phụ huynh Trà Đan Chương',
        'Phụ huynh bé Phúc',
        '<p>Sau một khóa học tại AU, bé nhà mình đã mạnh dạn hơn rất nhiều. Trước đây con rất nhát, không dám nói tiếng Anh, nhưng giờ con có thể tự tin giới thiệu bản thân và hát các bài hát tiếng Anh. Các thầy cô rất nhiệt tình và kiên nhẫn, phương pháp học qua trò chơi thực sự hiệu quả.</p>',
        '2025-07-21 03:53:45', '2025-07-21 05:44:12'),
       (2, 2, 'phu-huynh-anh-tiep-chinh-vy-1', '/userfiles/images/R5AT4200.jpg',
        'Chương trình học bài bản, con tiến bộ rõ rệt.', 'Phụ huynh Anh. Tiếp Chính Vỹ', 'Phụ huynh bé Vũ',
        'Tôi rất hài lòng với lộ trình học tập tại trung tâm. Con không chỉ được học với giáo viên bản xứ mà còn được củng cố ngữ pháp thường xuyên. Điểm số trên lớp của con đã cải thiện đáng kể, và quan trọng nhất là con tìm thấy niềm yêu thích với môn tiếng Anh.',
        '2025-07-21 03:53:45', '2025-07-21 03:53:45'),
       (3, 3, 'phu-huynh-lo-trung-2', '/userfiles/images/R5AT4202.jpg', 'Trung tâm chuyên nghiệp, giáo viên tận tâm.',
        'Phụ huynh Lò Trung', 'Phụ huynh bé Khương',
        'Điều tôi ấn tượng nhất là sự chuyên nghiệp và tận tâm của đội ngũ AU. Từ giáo viên đến các bạn trợ giảng đều rất quan tâm đến từng học viên. Trung tâm thường xuyên cập nhật tình hình học tập của con, giúp tôi nắm bắt được sự tiến bộ và phối hợp cùng nhà trường để hỗ trợ con tốt nhất.',
        '2025-07-21 03:53:45', '2025-07-21 03:53:45');
/*!40000 ALTER TABLE `parents_corner` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens`
(
    `email`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `token`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK
TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions`
(
    `id`            varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `user_id`       bigint unsigned DEFAULT NULL,
    `ip_address`    varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `user_agent`    text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `payload`       longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `last_activity` int                                                           NOT NULL,
    PRIMARY KEY (`id`),
    KEY             `sessions_user_id_index` (`user_id`),
    KEY             `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK
TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions`
VALUES ('1Q1sLNsklTxfgTkj0ACZF1Z3JrHzTGQrZvbDK16p', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUndKcWlNU1diQWVtVjQyOEpxNEpxVUd5ZTlmU3pRYnUwNU5icGgwUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492500),
       ('38lg9FIXMHCUvtJdqrRO01UmmOaXTSm4AH4sgE98', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFUzcDFrVnAyRE5RTDNkN3dWTXpVN25zTlJ5RVJsTll4UlBFaDNWTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754493902),
       ('3CpZPVesZaI3DKc1MXqk4Vtvou1CzbGHMSHknirb', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzlOOWltVWxzQWgxSERkdXdVd3dEYkd0OUdwelZMM2R6bnhydkNWWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492222),
       ('3Wp5rOXmDTNMqmGTsTJpWwed5O103eqZsEzaDvQz', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTFjRndRM2Nnc01vT1kxQ0hYNW1qWkdld3lqSDdnOHNxclVOalVjMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491519),
       ('4ldX3p3Jkt1HU42QCBWyd90K6WJDLOP4KNrHIvlx', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNk9CSW1JdTdraUwxZGRqUHY2anJPR3cxc1JPaW1GR0ZBcE5pR1JnUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491526),
       ('5kKyJYkdrDFgzpFTf67luNVPFZujvBPaVlcashT8', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWNEdHpXOUg2VldBTDB4QmlTeW1HQThiS1Znak9HYjVEdWVYeVdWYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754494035),
       ('64RJAq401b2yrY2kKZFO4Od8hMW0L48w9fBDBJhb', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQllJZW1CejhaclhraEFiRnNPYVRkRFlLQ3A1ZndtMHgyNGZ2Y2E2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491528),
       ('6MXlt9DYtJBoui7vl34qr2WEu2HRMHoF7pfIE8ez', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUtUdjhGd043VHplM0FLak0xV3FpeVlNTzZIQWtjbDBxMVhFVUFHWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492121),
       ('7T6RIfBBSyTUrlb4atDNO3U9lOyqnIZnNcuR8Ezc', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHBiWWpQNE14MWZ4eXBQckp3dEJBd3ZiYVNXcHZJZGF2dVEwUDdrTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491218),
       ('7Yet4AZ5MfCNX7h2hi54XTQhWJRTouSARfsdSngf', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXhrWDdVbkpiOUxoQ3k4OFJ5Q2k5R3FWVHZZRjhEYjdpYTJhUXl1RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492491),
       ('7zyTeXRb29zirqL44E98i4WwGWYx3SipIWNaTL8B', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRW5ZY2ExUmVXZ1VRMHlVNExvOGdLOFEzTldoRFF3REhDaEs1T25ISCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492230),
       ('8yCWXGcWK3lWKgVHzJQlPgKBh2i5mNOjRR1YZZoh', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1pPVnFlaWlHb3lhY3FyNDVMZzZMbnhiVUo4aUxzdnNJOVRoaWZFMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754494035),
       ('9s6LPBshFWwo8fu87IymI3ISTRdsYDuW2fSYhOgM', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2luUkVMWk9SQ1lpU2NNdUJ0a3BBQTBLRlB2cXRveDgyNTl0R3RJMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492117),
       ('b0PfoW9ooglvoEeHjw9UltafNNcXOtQOpzFVWMP2', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmRZVmxsZjJXaUxZTTBtdXA3bFhENlZaQU1DR1hXYTd0Nks0RTk2NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0yJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754493037),
       ('B5w0mm7PbEwqEv8odGbCKBq0YDSW9fgquntFFFh3', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1RicWJ5enhidkR3UGQ0V1NiZGE2NTZuSEJqRmt0NHFzeTFkeTlmaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754493996),
       ('Bbh55RDEMTeNuJ2YggbJqrvkLK5ZGocX2IqamWrG', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUlOT2U4dENnNlB4RjZrVGdRdmFOS0RBQk1ZdUpjV2c2dUxQcFZXTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491490),
       ('BwbDfJcTIzgeOME4EUoFCwWvnvZwAZdD4aPIe8Y1', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlJsRVNhNnZNeHl4ckN6MHB1TlB5R1A1dERub2kxanZhbUlVV3NocyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754491154),
       ('c7eFidnlCCFn7BY7MzeveeBbeKek5pyniKgUNjKH', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHg2U3JPaTR3YlhLVTF4MHhXdFZHdjNqVzJSYXNHOWp5YUprUWQ2RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492110),
       ('cdRhbKKjak3z88EreYO6AmGrYb3BFIKAep9S7Zkq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczRkYzhYT2NJY2xwTVVwU0luek9XcDB5cVZKQnF5bzF4UEhoQlRLaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492114),
       ('cGw867MN0DLqq1LQU9lRgfv65r5woEzY7WuxO0f5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjkweVVObTJHTFVnanJ5ZFdkNm95UVlPMlp2QjhCdnFNOXMwMGxNNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754494035),
       ('cPb9w93nxpbiyVisPqCXKwztXoIpq561nFGAELg5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3lvcDNDa25jcEk0MVBjVWhGdzBhMUhDVVVWcTBuOW9EYTZMVEZKVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754493996),
       ('Ctx3phyirsOWvJM6d1j8UJtS0sSu6EvVZoyzV1Ep', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOElpWVNhQTJyOWZVNUMxSVpOaVBadGdkVXc4VExnekpnWVdteGNyWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754493902),
       ('cwv6s7idLv075D74q7ZLEq6oqB0DbkjqGbfmX0Gl', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0VJQ3hOYm1EcENsdFlNckk0RHluU2xsakpIZHB4bDh0d0R6aDBqbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754493996),
       ('dtAGjdBZ6JiiVjYBYYq5mKS8pMqga1FkDNRXmdcc', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidThPMXhkMldUenFWeG14anh6WjFiaThwQW45QTFuZDZlWkN2V1U3VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754491218),
       ('EL4NlmGJM4rwMeTnpo0JnwkVERLyl7VfK4EglEr5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjVlNjlTS0dpSUY3STMwSUxwOVZpWktKU1prMUxaYkk2aTNTZXBwMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492230),
       ('eQJVFwp0umsIjwYjmDLGhrmjFBhKTBjmSpK8cdgd', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm5FSXhjREU4S3E0YVNzMzhSOUkydVhnNXhvOEdXS0JENXZCZVVhMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754492117),
       ('ETvwAnG54BuC0s9MIPDNYL8y9QWMT8ANk0X6msPC', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkR5MXloMlFCWHV5aDA0WldVNE1STkljRUZqQnlxNXJtNHFWNm42WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491218),
       ('EUN1dlxIdAksc7GxOFf0242lzHgv01xxPs1M8JmY', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlhXemVMRnlsY1YyWlRiZnpNVVRKRGpDTktsUU15c2R1ZFNGcHBscSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492121),
       ('FEOrEosRF6nobAfqnYDrUdMqvTdA8zg26hvDItIR', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTc3dzVqbEVNd2dXWE5IbVozWHIyTnlTVEhDdkJ2U2NuMHZ6U0drSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492500),
       ('ffnucBXoTMPX5a3gblcSifDPmUSmWad3bHvDeB5V', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnlaVnNTdWx0ZktlUDdzdmRJN3ZWdHYxRXV1c0Z4WVdQeXV0dlY4VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754492114),
       ('FkidjOgloBVeUlNgBvGVYo2OCDM6AvZlZUdQ0eH5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUhUY1p2aE1iMlNUQ2hHQVlZdzUycXV5bmNQTG1Cdm05M055ZGRJNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491302),
       ('fRdBncmEiewoeus3yF2I3jMkAQnYmeGVdgjtT3R5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEF2YWVBRDdTd0ZZOXkzaVM1U3ZrMXE3ZjNyeldBZXNXSEc0eHVjQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754492458),
       ('GaqRFj9Ph6rDIvGQyYDS1A2uZGEaCkvl3V3MqLmC', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0w2c0pYbTRJQkg2TXNRNWVRbXBva2tKalg2N1hlZ0pFYU1EMkE1TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754494186),
       ('gs2oGYYH0Vqk7Sp0Eey1F4If09LRY2Hsr3rjOiWu', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXdOeDIzazNaYWxxeExpejMzOEF1cWR5d1hmakxDb2FjZVFpMGZDcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492458),
       ('GT5sraqzVk83oUTduryKxYHhsbzAvPtkqjvYTVOz', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEZ4aDZWcDVkU3cxQ1l3S2lGN2NuYUF5M0lLRkREdUZYdE5HeTMzRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492121),
       ('hE2bG2RYIg9aM4bCft0LEzNOC2Ic3k2x9zGDy6Ry', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkxjU0ZkQmFkamp3ajc5aUZnU3dKUHh0ekUyQVYxckJrM2JIT0QxNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491302),
       ('HG3cx71EA1saNFLti1tQdiquemlgazjPenmdqoM3', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFBUU2RPczlVUFc1SnZ5WmhJMGNLZWJqRm10aDFUSE9JQzZ1dmlEZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492500),
       ('hGTTmAVx05IcpytPqBusVFkOo8ohrg7nWGNmswhV', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnFmVklWRWE3ejNLb3hOTVlSYXFENGc5TEJrb2xXdmg2SG84aXdiTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491155),
       ('hO8nSiC4JgJaucdzVt4q5jUGCZxw9gEQgV1PsgNq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWxiMnVWZGlNOGdlQXliSXd4RWFBQ0hQdEpKQ0ZMYmdkRDBIWWxyeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491898),
       ('hPFrWgpsAjSQU4qdUVoBbm2kSekOvkFBd0gAatq7', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXhpemFINTdGRHZQVmVSd3g5STZkcng3SmRMd2lNUzAwMWUzenJxaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492495),
       ('HpS7LDpYkjZtD4867McPSTMwJLTKQhmhRAdmHunZ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoia29EdUx6aHF5eFNDNWN6ZTRJRW92UGhaRzV1NnJLa0dYZElGSU9QaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491166),
       ('HRHk78gAKfejJGMXZJL6jioEl2hgXmNyzBbMRLJJ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWtWaTFORlRzaTNPUVVWRnhNWmNFTXlMdmdtdm1BbUFweU1UbUVpSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492499),
       ('HwL24ZPb2xolvdPG0405WppC4JSnBmKiFAQ0PgOR', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHM0c3NNaTVocDJ5ZGhHM1pTSkFmUE9WUW9sY2VzM0dEdlRKUzlOMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491154),
       ('hyEj1GsZV5WLcypy0X1vDAAmDKti5vaELVtiq7C7', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWV3YjRPZ0hHTEVzTDJoQ3ZRQkFwcW1VbXk3c291R2lhclRtV1JReSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491218),
       ('IBwzuNbDMWEt3hKagdmgcKmH9Yc5D6rCKxAbT9p5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjlzMlp0NHBnZlFPUFFxZlUydFBrWTJQZ1hsRW9kdzJZSm1MQ25HaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492454),
       ('ie1CI5YvbgSoAzarGf1niBZpoHz3bW6BEkQtimvf', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnIyMnpKSEE2bmlvdXplOU9yTTNaa05TTThjSWhZbGJMcUNRYXlqYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491302),
       ('ieUC8DG2aAwghMfyDqWnpaljIXNOz3kqlkaDw6SE', 1, '127.0.0.1',
        'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36',
        'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia0h2bEhOQ0FWNFoxZkFZVkJObEhEN2xJeXJSUmtQemRjdkR1Z3F6WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi90cmFpbmluZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',
        1754492893),
       ('ilOvKId6Qr0y5LCyWeCwaqq3z39subE3AkAFtF6G', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXlieVoyOFBKa2hhaUZFN2VXa01EcVRmdldXTnlPbHdoblZnaUxhWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491523),
       ('JCrE955R7jX9VelaNYNrwpwYyMqKcYZcZySa49X0', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzgwdmM5SHVCaHhOSkNGNkxsVXRvMXlGbTNyWlk5eXU4cVczVDRDQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491155),
       ('jqiS5o4QubFFPMVJixSU3mbr8MVbKL4jAALmCn8u', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYU9idlZhZG5PcGxPUFlwNlJnOEhUSDlJUExMcERlRVJXYVV1RnByUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491901),
       ('jRXp8zL36bBzJgRgmT4jfMjto2nlYwrBOzAeUgqE', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVB1cm1iVURYOWVCQVFkVTQ1Vm5mMTcwZVJwOENFRmtiOXpWUE1LSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754491302),
       ('kgNIAnucyIbWZ8FMrQrmOuRW7nJa4aIQP5v8UMOT', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFZkM2ZJT1dHcmR1OEwwSXNTTXN5VzBicUwySHNuTkhxQkpIR1RJYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754493996),
       ('kN5LzBmXkCsEb5vf0f3IdRgd0qu6imYVLGVQikG5', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjRzUXV3ekFGODk2b2pMVEE5ZXBMNERrVk5FU1RsbXNCQW9mRWphSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754491210),
       ('kTgOwBrkqpaumOWyzWK9JfI2xRPEkONl30J4vAZn', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0VCbTdqa0Y5Q2pTY2Y4V2sxV1FQWWs3bUt6ZGNPNDVkeUttMGNTcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754491490),
       ('Kzn4G6sGrDKlDcwCRuUJsqFX6ixk1jRb7gJDN2Ad', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHoza1YwOHFxZ2dFSm5MR3FjYXVDcno5M1UxQVB5ZG80TUltZ1dlQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491218),
       ('LbyZhHZzGqxcAiRQQZ9OMAfijRl8CCRsyBUkvIWa', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkkzaHRZckVhOXFZYUZ0c2dsQ1pzMHZLQWlsOG0xQVNRUmVnMXBQRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754493075),
       ('M2QI3ljl5oDIxRE2aHfh7Kx6uxTFs0o3B54l1Oen', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXNSVFJVdzMyeE1OS0wxWjk3SkNJUGZURjlaeUI5VEM3d2RLM2xwOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491528),
       ('m7WTz5hyLV6bG0fhtXojGtSA9rxETBYv4AWv2H6X', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3d4N2Fkd1NVZjRmTXZhRDdXeW95V2s0OTBiUzRzY1owWnZZamVPWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492230),
       ('mckjYqNP0WqFrsTTJwp3yeVNrYcYelrf2vKjdawo', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3dWTmw1cndVTld2YUFOSWM4Q3d6QzNoQUZYUFFyZkVGWGx6M2FpZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491210),
       ('MyIV55GB9QOSiST8EWXfkn4mkjWAKHk5ZmxFrOOr', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoianJFVHY1cEI4aWlDR0VkM0RGSk5ZRnprNHlNbVlqVDdOaG1VblA3cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvY2h1b25nLXRyaW5oLWJhbi10cnUtaGUtNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754493042),
       ('NOJpiQfOKUYfhMWL2UbrxgwQTf1OulvlfemCpf5c', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczJCRTFqWUphUVNQY0NHSlpldmlyWW94bEI3RWcxM2dURmM3WGx2VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491155),
       ('O1QKiA4Hofbq54euW3INhDP7sP1Qnaig1wcBhwnO', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFl0a28zWmdJZmM4eXlYTEQ5ZDFkeE91cUh1aWtIaGc0T1dGZWxERSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvcmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754492498),
       ('ouRRkveNFpUHUf64Ut0w0yiBIwiDsrY464kYV0Ps', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjk5UHpmR1N6ZjI1dmRVWlN5aHhDdGpuTVFUZzhNcTQ3c3QyaGxxcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754491155),
       ('p3Jw1N7gDEvjfepXfZw5gEAN9p9KoSDJ7hVco1gl', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3hKbkhZNDBUdUdxd05SaDM5VTRld1BIcE5xd1BLMVZnR2F3aFdQVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754493035),
       ('PjC7pCmAGPuqDxY8sDdMgSioy228yN16DNoq8Sto', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXg2WFhQalJBU3NrMEh2UDBrRGRqYWZKNzhEWmg5R2wweWluRnlCbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491302),
       ('PoDLBx8ADlBsoLEd49MRjuJNOqNmmSjRSBCfUx4x', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnh5dm14UjBBakxrdTd1MUpVdDRFbW1qU2VrZFFEVXdmREZrVFZ5ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492228),
       ('pwRw3NoffkKQrc5ibJ9dNs3OzgYE514GKxSJHsYq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRm9Rb3N1TU1KM0hVc3RlYmhqME5iZUU1RThKYXhVT0VVYUR2UHFpYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754492117),
       ('QFWVUsPdEkhL7eTw2SgrScw8iZV2CUzump40l3Nh', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDJQS28weHZhdW43WkZFQ0RGNGZvWVNuOWlNVVJZdVFMUzJNRnBwVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491210),
       ('QOH7mhYCEoTN6MAABDUiv0hg6Z2JLtRmpHLaEu9h', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3NnVG9ZZHZpWHROOFVWWk54T29VQ0txM0E1bkVSRG1TSE12TXA4ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491155),
       ('QQMhGA6DsT22WTAlYGJrsHOzXxoqQ7ENScmij2pf', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidk9Id1FsWFBDUVBET0NGNUtpeDR0Skl0aWZlQkIzbGlOUkFnQzJ5ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754492227),
       ('qyx5rJ8PoTHPIEFW75Ni0zY7fI0by2O1pZ1g25Kk', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFB6dVlZblBqZWlKbjQ5OE5ZWGVaaHNRb1dzVFVVWG9sbERPWlVwcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491155),
       ('RbvDXkJWAhQC9PlWsAZscYhSX2vtm66hIks3yEZQ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXF1QWlVRmt5OG1zMUtLMWpQbTlPeEd6c1ZseUhMRE5iY1lIZjJvYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491155),
       ('rDzBe0w38IQO691GIQeEl9VLK68JIwjpkaQf3ImT', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUtCZWN6SVZFYzVOdXJFMXVCdFY0a1Y1NUdLdlEwMTYzUlZsU2hkTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492226),
       ('rkVcx9SgMTkkoUNtYOTiFd2FCrqU4wHbPe7Tnejz', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmpvUEtCNjFzeHVUeU5YVGY5cHZ6c0NsYXoyS1Q5UVduM2tBZTljUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491528),
       ('rZ7BJR3g7Ng8w4iMDioEjGD2ob65vIuHAcHyOCyG', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0FaTXpzSGE0anRGaUVIQms2TDY1bnRtRDZhWGdUNzBXa0RRcWJQbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491523),
       ('rzmnRCoEiJsW2bINePmwEljW1S84dlA8wTHPUzQ8', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0phZXlTbDhKa29QZ01iRFFrN1R1eVVpTWJmY3BKaVJXeTg2dE1yNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491523),
       ('sb2BhSF0hyVr7oHS4maIkoqx1o1Wps833cAKcZw6', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYW0ybDV2eUFXdEhaMzNBNmp2QXhxUmRtYU53aVNTV3hSY1RtRWplOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492117),
       ('SGIe0iKElbth0oUXNcIGZOhpl89XcDBRQhjUbkS0', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoib054WjMwRENleXFsRE82SmtQQXkzZXVzMVpBalpzQk9wN0NBdWJnVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491901),
       ('siFh43SCNTpKG6EkOx4CxEae5mLwGj7ohWtXNwws', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnRrNDl5RFowTm1zMXV6SDRLV1VlbERiWW1CMVVoN29IQzQxdzVtVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754494035),
       ('sOu2GSFc1rIoPWjsHFinY81zdIWPQ8WkV8h3SzUp', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmxrM3pvZ1BabFdOQ0JNTktpRHprSUJMZllFMlpwSzZSRFZCcGJGeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491166),
       ('Sv5aQ8MzF2ZdNNffg2utMfbkUnGqokqb0sGAH0X7', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm4xS2R3cWN4ZW9sOHdTS1h1WnpIQmVPN1QzeWJkUUNRQ3AxdHB0WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492458),
       ('t2qDmytrRt4o5IReDG3kqNSJbAgRDoEghi0x9onW', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3BpeUlBc0FZbjdTeE51ZDkyaHdnVWdtd0U3dlA2cW1HNGtLazNlWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492114),
       ('T9BRu7k8yboiR4ZIuyx9Njs5Ed4nuAUjy2zC8M0w', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2lFcnlJSjNnVWx4c3lmRlFlSjhWRFhYV1dJckE2cVJJMVI3R1c4cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754494424),
       ('tED7UVnrFIfuskI6jdlrjUeHxRDn3ZeKGeTKh7xQ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoic210dGZ6MHNQWmRJU09ieEFtQnc1RGo2bFp4TjRHbXJ0M2xNUUNCNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbmV3cz9wYWdlPTEmcGFnZVNpemU9MTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492498),
       ('tOdphkXGyEaBiKM8Xcv2bl4Gr6UuoNrWQVVStrdb', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWFxTTJrMHFLN2ZQVzhpOXlrTDNUQ3R1SE1kZGl2UHhOenlXY3czbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491490),
       ('uDyNDPPGCf0J6H4f7QeutJxNvzs5UPrzqFURUte2', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYk1JY0RhQk8zRndZSzR1WGdic3Zlb0RiR3M1amprdFVTeWhkaFBPSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754493042),
       ('uPUeatfZTTtbsyINcCsuEo0f7mO932ByKc5N5lmb', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRThEY2REQjFKTk5PZm1XYzJqb0l0SlMxU3R0THUzdUtEamxabUl5SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491490),
       ('us4wtjHrPL6TqFMB194nEZvYLzTvcaIW9eoMAB6I', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXRmWFJ5bjIxRW5zcWJvRjVnUm9GRlJlWFBMbUVlRnM2UGk5Y21HTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491490),
       ('uwUVfHb1cqf2Bzp5JwNDWshAK9HYZlsAT6mKYYZv', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmQxclNDd2RpcGF6NWxMWVEwbUhSSXBrSlhLbmtYN1V0UjdZM0Y0eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754491162),
       ('VHLHFB23ZZNtXpGtYnwQMDgO5GDSKXsORJ3JZuQr', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQU5rSUZwQjFHT3RGQjFxd2RseU9xTGFjNHlFdjdqZ056ZnVNalgybSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbWVudXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491210),
       ('vLe4lAjldEZ8cjrqaa6E2GxQBAIG8hhZLeBvmQ8h', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHk3WDVjM0xnYU5ZQXNTQUFSOUd5ZGoyMHRyajJnaU92b0ZHdkdMbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvZG9jdW1lbnRzP3BhZ2VTaXplPTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492227),
       ('vNX7Gs0m9anVbazJOrWkGdpT62NsfB4oxrCK1ILx', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTVGcTRGZVpvRFZxMVpxSTc1cG9xTlBZU05kaEFMNHdyeDIzNFlEYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492222),
       ('vuwcn5MLuhgVpKJMBncq7zAgufPb21o1PHaMQkqt', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWtMS0VQc1NPbUl4Y29jWTdGb2RQb0loSWZuQzBSSGZRbm51Q29abCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491210),
       ('VWYFVEaQzxCwgyu7YTvgJUS5siZ8Dng93zBK3YQG', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclZnODR1Y2hlcUZ6b2o2SXhRVXNwU1RtTHpIbEprV3BtYVFVbVhDbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754492458),
       ('W42jUHbEEe1FNdL8pgVxA20dCkrSVFbkGqiCQ6IJ', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYU1icHpVS0FxZ1B4RG1qVTQ2UGRPSUxTNW5IM2lpNm1KT1o2bjRtSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754494186),
       ('WCYbI2lTBRTZYKkFlUsbLUEo8KaSKIWV1Z4cGGQO', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSW9oVlBLNTZsc21SQmZRZ3NEd1JWdEF1RElnYlJJMHBHejZ0Y0RrVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492220),
       ('xChD7GQAtAO62KyUoXR7vCVrnRsZXPuvVojloLoO', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUlkOFhibXp3alJRZU1ZV3pFOGhkc25vSlZkUHNCRVg2QjBpY0d0dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754493902),
       ('xFV3LOU9UM96VAfOSw4oPWDzkguLoZ4isFprxybc', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzdlVkdMczNyMWg5VUFBdUNDWUw0VDc5MDZmcW85ZkRRUXBDUWN1NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754493902),
       ('xRPyWoaz1zkgsUgf7d9pdL27nH93a8hwN7FRUT3v', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2J4MEEwN0lKZFBRemhzY1QwRlo2ZTkwTGNseUI0YWJsbGpndTV0cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmcvY2h1b25nLXRyaW5oLWJhbi10cnUtaGUtNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754493032),
       ('yc8GNRZn2L6nk5rpByyBsOCYOY0f6MR9WAaWuwwI', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFVpb0k0TWhGeHlxY3FMRm9tYmcwcUxUejExaXVBR2VySEJlUnFWTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0zJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754493039),
       ('yCmSsNW9GLWcYbHHMh3lkApOPGfqJSY6RgLREKqA', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEVidHpKUzgydWxIdTdKa2lCajZyUndIOGtUNGg5NTZ5ZExicHZOViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492229),
       ('yEaxjNqkbxAIjco6sBwE98E7YMzOdilk3pudAcaB', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWW1CWnl2ZWtsT0ZhNWNMODd2QVVBaFF0TGM5Yk53cWJsNWRZOU55aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754494186),
       ('yEeR91hG2fU9XDRNkAxrRsuanTUjHrcmnD9rjVVK', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmptM2UwRGFQMW9vYm5QcHo2dXYzY1o0WG96bHY4NFJBOTV2RkxiMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkva25vd2xlZGdlLW5ld3M/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754492227),
       ('ymstA8u0Q0WhwcBMWYQRmMBlGS1Iaf1LXvmBomZY', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczFuOEdaTUlzZWVybHdKb1ZNaVpKZTIydXk0bkRKNkl5eGg1dzdSNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491166),
       ('YoOM3bGGg6xnFSvyp7rceisBaWPePc9Qg9hdje4g', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlpLaHYzbmFXN3FzNExYQjhaSWdieGxXaW9WT2Z1SmdPVGZtcmlkTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491155),
       ('yoROxtSSvIAkJ1l9RbztzTrCRnjOB5PGEiKA9ZvC', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkxpQlJ4MHB3ejlBZ291YVJKV2pMeXNhWXFHYmN3ckZjWUtTVWozdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754493032),
       ('yRetcA6WwspSsyBDypfZ80RLda7QqNdQGil2zwUP', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1V1bkVhRUMwWDBLWDJWOGc1N0I3ZzNjVERrVHFhWExvZEZBSWZrRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcGFyZW50cy1jb3JuZXI/cGFnZVNpemU9NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',
        1754494035),
       ('z1QBrkGEAFmuisnqqvD0iGvB7B6AQJ3GzZQ0Sgpz', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjBOWGIzS0J5SWdEaTdTMTlTVVZWbDFuaHZFdnpXSEFWNkI1amJFNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdHJhaW5pbmc/cGFnZT0xJnBhZ2VTaXplPTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491901),
       ('z7S7lJzBOD3KfZnHgmLzjEZRn93VL77Iq7Plgefw', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGxmUFBkc2k5a2dmTHBTTXhGTmdJWlg2TUFQTTJ5WDBrMUxHWXIwSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754494035),
       ('ZaRan6Ugfk2orjPW4niKXFy7waoGCwD36BjTXCFq', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGhEZXZ6M2kwNjhFdHkxRkhrVGpVcFAyMzYyQlRsS2ZDaDFSbFl0NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492227),
       ('zmYYUR7wKhfrnQN15U8hQ3jN0JPUAxTPR3zS9X1e', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3VnZGRDeUZGRVRQRXRFYkc3MEFaUmROemRSTkNLOEJiUlNYVG5MRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvaG9tZXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754492222),
       ('ZpqQewKKBsr6AQaMSf4OC1bqZoBuUYSWUqTSohkh', NULL, '127.0.0.1', 'node',
        'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUNOQ0xadnNUaGhFRmx1S1Q2NFBXNG1iZ1R3cXB6ajVkUVN0eWVieiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdGVhY2hlcnM/cGFnZT0xJnBhZ2VTaXplPTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',
        1754491521);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers`
(
    `id`             bigint unsigned NOT NULL AUTO_INCREMENT,
    `priority`       int                                                           NOT NULL DEFAULT '99',
    `full_name`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `role`           varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `qualifications` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `avatar`         varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `slug`           varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `facebook`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email`          varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci  NOT NULL,
    `description`    longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at`     timestamp NULL DEFAULT NULL,
    `updated_at`     timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `teachers_slug_unique` (`slug`),
    UNIQUE KEY `teachers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK
TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers`
VALUES (1, 1, 'Thầy giáo JASON TYLER REILLY', 'Quốc tịch Mỹ',
        'Trình độ: Cử nhân khoa học giáo dục Đại Học Wisconsin - Madison - Mỹ, Chứng chỉ giảng dạy Quốc tế tại Đại Học Wisconsin - Madison, Gần 10 năm kinh nghiệm giảng dạy các độ tuổi mầm non và tiểu học',
        '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-38-18.png', 'thay-giao-jason-tyler-reilly-1',
        'https://facebook.com/auenglish', 'chu.kiem@example.net',
        '<h3>Kinh nghiệm giảng dạy</h3><p>Với hơn 5 năm kinh nghiệm giảng dạy, thầy/cô đã giúp đỡ hàng trăm học viên cải thiện trình độ tiếng Anh và đạt được mục tiêu học tập. Phương pháp giảng dạy tập trung vào sự tương tác và truyền cảm hứng cho học viên.</p>',
        '2025-07-21 03:53:45', '2025-07-27 15:41:35'),
       (2, 2, 'Thầy giáo ELLIS JOHN WARD', 'Quốc tịch Anh',
        'Trình độ: Cử nhân sư phạm Ngôn Ngữ Anh tại Đại học Leicester Anh Quốc, Chứng chỉ giảng dạy Quốc tế tại Anh Quốc',
        '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-42-24.png', 'thay-giao-ellis-john-ward-2',
        'https://facebook.com/auenglish', 'nghia.khau@example.org',
        '<h3>Kinh nghiệm giảng dạy</h3><p>Với hơn 5 năm kinh nghiệm giảng dạy, thầy/cô đã giúp đỡ hàng trăm học viên cải thiện trình độ tiếng Anh và đạt được mục tiêu học tập. Phương pháp giảng dạy tập trung vào sự tương tác và truyền cảm hứng cho học viên.</p>',
        '2025-07-21 03:53:45', '2025-07-27 15:43:43'),
       (3, 3, 'Thầy giáo JACOB ADAM MCDONNELL', 'Quốc tịch Anh',
        'Trình độ: Thạc sĩ kĩ thuật chuyên nghành hàng không - Anh Quốc, Chứng chỉ giảng dạy Quốc tế tại Anh Quốc',
        '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-44-00.png', 'thay-giao-jacob-adam-mcdonnell-3',
        'https://facebook.com/auenglish', 'thy68@example.org',
        '<h3>Kinh nghiệm giảng dạy</h3><p>Với hơn 5 năm kinh nghiệm giảng dạy, thầy/cô đã giúp đỡ hàng trăm học viên cải thiện trình độ tiếng Anh và đạt được mục tiêu học tập. Phương pháp giảng dạy tập trung vào sự tương tác và truyền cảm hứng cho học viên.</p>',
        '2025-07-21 03:53:45', '2025-07-27 15:44:41'),
       (4, 4, 'Thầy giáo Jai Kattenberg', 'Quốc tịch Úc',
        'Trình độ: Cử nhân nghệ thuật Đại học Griffith -Úc , Chứng chỉ giảng dạy Quốc tế , Kinh nghiệm dạy các độ tuổi: 3 năm dạy các độ tuổi mầm non - tiểu học - THCS',
        '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-45-43.png', 'thay-giao-jai-kattenberg-4',
        'https://facebook.com/auenglish', 'aubacgiang@gmail.com', NULL, '2025-07-27 15:47:11', '2025-07-27 15:47:11');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `trainings`
--

DROP TABLE IF EXISTS `trainings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainings`
(
    `id`                  bigint unsigned NOT NULL AUTO_INCREMENT,
    `priority`            int                                                           NOT NULL DEFAULT '99',
    `slug`                varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `title`               varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `age`                 varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description`         longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `thumbnail`           varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `outcome`             varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `method`              varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `content`             longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `images`              text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `youtube_review_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at`          timestamp NULL DEFAULT NULL,
    `updated_at`          timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `trainings_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainings`
--

LOCK
TABLES `trainings` WRITE;
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
INSERT INTO `trainings`
VALUES (1, 1, 'tieng-anh-mau-giao-3-6-tuoi-1', 'Tiếng Anh Mẫu giáo (3 - 6 tuổi)', '3 - 6 tuổi',
        'Khóa học tiếng Anh mẫu giáo tại AU giúp trẻ 3-6 tuổi phát triển kỹ năng nghe - nói và phản xạ ngôn ngữ tự nhiên thông qua phương pháp ngữ âm 5 cấp độ cùng các hoạt động vui nhộn như bài hát và trò chơi.',
        '/userfiles/images/course/z5581456363302_b57dac4162e102d9e48ad685e3c2334b.jpg',
        'Phát âm đúng theo phương pháp ngữ âm quốc tế | Nhận biết và đánh vần lưu loát | Giao tiếp tự tin ngay từ những năm đầu học | Phát triển kỹ năng đọc và viết từ sớm',
        'Phương pháp giảng dạy tập trung vào ngữ âm và giao tiếp, giúp trẻ 3–6 tuổi phát âm chuẩn, phản xạ nhanh và sử dụng tiếng Anh tự nhiên thông qua bài hát, trò chơi và hoạt động tương tác.',
        '<ol><li>Tập trung đặc biệt vào khả năng nghe – nói, giúp con phản xạ nhanh với ngôn ngữ và phát âm chuẩn bản xứ từ nhỏ. Tiếng Anh mẫu giáo của AU là chương trình ngữ âm tiếng Anh 5 cấp độ, phù hợp với trẻ từ 3 đến 6 tuổi. Chương trình giúp trẻ làm quen và thành thạo 44 âm trong tiếng Anh thông qua các hoạt động tương tác như bài hát, trò chơi và câu đố.</li><li>Chương trình sử dụng hình ảnh sinh động, trò chơi, bài hát và hoạt động tương tác, giúp trẻ học tập một cách vui vẻ và hiệu quả. Qua mỗi cấp độ, trẻ dần phát triển kỹ năng ngôn ngữ và tự tin sử dụng tiếng Anh trong giao tiếp hàng ngày.</li><li>Chương trình giúp trẻ tiếp cận tiếng Anh một cách tự nhiên thông qua phương pháp ngữ âm hiện đại. Trẻ sẽ được làm quen với âm chữ cái, ghép vần và phát âm chuẩn ngay từ những năm đầu đời, tạo nền tảng vững chắc cho kỹ năng đọc và viết.</li></ol>',
        '[\"\\/userfiles\\/images\\/course\\/m%C3%A2m%20non%201.jpg\",\"\\/userfiles\\/images\\/course\\/mn%203.jpg\",\"\\/userfiles\\/images\\/course\\/mn4.jpg\",\"\\/userfiles\\/images\\/course\\/mn5.jpg\",\"\\/userfiles\\/images\\/course\\/z5581456363302_b57dac4162e102d9e48ad685e3c2334b.jpg\"]',
        'https://www.youtube.com/watch?v=MjD-vIFhkOU', '2025-07-21 03:53:45', '2025-08-04 09:13:33'),
       (2, 2, 'tieng-anh-tieu-hoc-6-11-tuoi-2', 'Tiếng Anh Tiểu học (6 - 11 tuổi)', '6 - 11 tuổi',
        'Giúp học sinh Tiểu học phát triển vững chắc kỹ năng giao tiếp tiếng Anh, tư duy ngôn ngữ và khả năng học thuật theo chuẩn quốc tế. Khóa học hướng tới việc xây dựng nền tảng ngôn ngữ lâu dài, đồng thời cải thiện điểm số và sự tự tin trong chương trình học chính khóa.',
        '/userfiles/images/course/ti%E1%BA%BBu%20hoc%202.jpg',
        'Lộ trình học tập bài bản với 100% giáo viên nước ngoài. Rèn luyện kỹ năng sống, tư duy phản xạ và khả năng sử dụng tiếng Anh trong thực tế một cách tự nhiên và hiệu quả.',
        'Tập trung phát triển kỹ năng giao tiếp thực tế qua 100% giáo viên bản ngữ, kết hợp chương trình học thuật chuẩn Cambridge và lộ trình cá nhân hóa theo năng lực từng học sinh.',
        '<p><strong>100% HỌC VỚI GIÁO VIÊN NƯỚC NGOÀI:</strong> Chương trình tập trung vào phát triển kỹ năng giao tiếp thực tế, giúp con tự tin nói tiếng Anh ngay từ những buổi học đầu tiên. Với sự hướng dẫn của giáo viên bản xứ và trợ giảng tận tâm, con sẽ được thực hành phát âm chuẩn, học cách diễn đạt suy nghĩ mạch lạc và thể hiện bản thân bằng tiếng Anh một cách tự nhiên nhất.</p><p><strong>CHƯƠNG TRÌNH HỌC TẬP TÍCH HỢP:</strong> Tại AU, các con được học song song theo lộ trình tiếng Anh học thuật bài bản, bám sát khung chương trình Cambridge do Nhà xuất bản Đại học Oxford phát triển. Bên cạnh đó, AU đặc biệt chú trọng hỗ trợ học sinh nâng cao kết quả học tập tại trường thông qua các buổi học ngữ pháp bổ trợ miễn phí, giúp củng cố kiến thức, cải thiện điểm số và tăng sự tự tin trong lớp học chính khóa.</p><p><strong>LỘ TRÌNH CÁ NHÂN HÓA và HỆ THỐNG HỌC LIỆU TOÀN DIỆN:</strong> Với lộ trình cá nhân hóa theo khả năng của con và hệ thống đánh giá kép. Con được điều chỉnh kịp thời nhờ được đánh giá liên tục. Bố mẹ biết chính xác con đang ở đâu, mạnh gì – yếu gì qua báo cáo chi tiết định kỳ. Hệ thống giao bài tập online trên nền tảng trực tuyến của nhà xuất bản đại học Oxford giúp con hào hứng và tiến bộ nhanh trong học tập.</p>',
        '[\"\\/userfiles\\/images\\/course\\/Ti%E1%BB%83u%20h%E1%BB%8Dc%201.jpg\",\"\\/userfiles\\/images\\/course\\/ti%E1%BA%BBu%20hoc%202.jpg\",\"\\/userfiles\\/images\\/course\\/tieu%20hoc%203.jpg\"]',
        'https://www.youtube.com/watch?v=MeBtmLRtUoQ', '2025-07-21 03:53:45', '2025-08-04 09:22:11'),
       (3, 3, 'tieng-anh-thcs-11-13-tuoi-3', 'Tiếng Anh THCS (11 - 13 tuổi)', '11 - 13 tuổi',
        'Lộ trình học tiếng Anh tại AU dành cho học sinh THCS được thiết kế bài bản, giúp xây nền tảng ngôn ngữ vững chắc và phát triển toàn diện 4 kỹ năng. Học sinh được làm quen sớm với tư duy và cấu trúc bài thi IELTS, sẵn sàng chinh phục mục tiêu ngay từ cấp 3.',
        '/userfiles/images/course/thcs/z6761734186314_db682a9e2e4ab2bb8af1aaa5c6c2b34c.jpg',
        'Giúp học sinh THCS phát triển toàn diện năng lực tiếng Anh học thuật, đạt trình độ B1–B2 theo khung CEFR, và sẵn sàng bước vào lộ trình luyện thi IELTS hiệu quả ở bậc THPT.',
        'Xây dựng nền tảng ngôn ngữ vững chắc, phát triển toàn diện 4 kỹ năng và lồng ghép chiến lược làm bài IELTS từ sớm. Chương trình theo chuẩn Cambridge với đánh giá liên tục, cùng giáo viên nước ngoài hỗ trợ luyện phản xạ giao tiếp và tư duy tiếng Anh.',
        '<p>Giai đoạn học THCS (từ lớp 6 đến lớp 9) là thời điểm quan trọng để học sinh xây dựng nền tảng tiếng Anh vững chắc, chuẩn bị cho các mục tiêu học thuật cao hơn như IELTS ở cấp 3. Tại AU Bắc Giang, chương trình học dành cho học sinh THCS được thiết kế với định hướng tối đa hoá năng lực, phát triển đều cả về kiến thức, kỹ năng và tư duy ngôn ngữ.</p><p><strong>Xây nền tảng học thuật vững chắc:</strong> Hệ thống từ vựng – ngữ pháp – phát âm được củng cố sâu, giúp học sinh hiểu rõ bản chất ngôn ngữ và ứng dụng thành thạo.</p><p><strong>Phát triển toàn diện 4 kỹ năng (Nghe – Nói – Đọc – Viết):</strong> Thông qua các chủ đề học thuật và tình huống thực tế, học sinh được rèn luyện đầy đủ kỹ năng, tạo nền tảng chuyển tiếp mượt mà lên chương trình IELTS.</p><p><strong>Lồng ghép chiến lược làm bài IELTS từ sớm:</strong> Các dạng bài đọc hiểu, viết luận và kỹ năng phản xạ được giới thiệu từng bước, giúp học sinh làm quen dần với cách tư duy và cấu trúc bài thi.</p><p><strong>Học tập theo cấp độ Cambridge – Chuẩn hoá trình độ:</strong> Chương trình học được thiết kế theo hệ thống CEFR (A2–B1–B2), giúp học sinh xác định rõ mục tiêu và theo dõi được tiến độ phát triển của bản thân.</p><p><strong>Luyện phản xạ giao tiếp – Tư duy tiếng Anh:</strong> Giáo viên nước ngoài đồng hành trong các buổi speaking chuyên biệt, giúp học sinh tự tin nói tiếng Anh và tư duy bằng tiếng Anh ngay từ giai đoạn THCS.</p><p><strong>Theo dõi sát sao – Phản hồi kịp thời:</strong> Mỗi học sinh đều được theo dõi tiến độ cá nhân, nhận phản hồi thường xuyên từ giáo viên để kịp thời điều chỉnh phương pháp học phù hợp.</p>',
        '[\"\\/userfiles\\/images\\/course\\/thcs\\/z6761734186314_db682a9e2e4ab2bb8af1aaa5c6c2b34c.jpg\",\"\\/userfiles\\/images\\/course\\/thcs\\/z6784471826211_e9e3bab4247f70ef66e47731efde9c3e.jpg\",\"\\/userfiles\\/images\\/course\\/thcs\\/z6784471845994_a4e1a26b2d683e634c271bd65f4650f1.jpg\",\"\\/userfiles\\/images\\/course\\/thcs\\/z6834235330215_2c619a699a939bf64de1c3358088d62c.jpg\"]',
        'https://www.youtube.com/watch?v=2', '2025-07-21 03:53:45', '2025-08-04 09:25:21'),
       (4, 4, 'chuong-trinh-ban-tru-he-4', 'Chương trình Bán Trú hè', '3 - 13 tuổi',
        'Chương trình Bán trú hè AU mang đến môi trường “du học tại chỗ” với hơn 20 giờ học tiếng Anh/tuần cùng giáo viên bản ngữ, kết hợp đa dạng hoạt động ngoại khóa, kỹ năng, nghệ thuật và môn văn hóa. Trẻ được học trong không gian hiện đại, an toàn tuyệt đối, phụ huynh có thể theo dõi mọi hoạt động hằng ngày.',
        '/userfiles/images/course/bantruhe/z6675687609743_ee84a441e35f88d27e6ce27c424ff573.jpg',
        'Tự tin sử dụng tiếng anh để giao tiếp. Phát triển toàn diện cả về kiến thức học thuật, kỹ năng sống và thể chất, hình thành tư duy sáng tạo, tinh thần hợp tác và sẵn sàng cho năm học mới với nền tảng vững chắc.',
        'Tạo môi trường “du học tại chỗ” với hơn 20 giờ tiếng Anh/tuần cùng 100% giáo viên bản ngữ, kết hợp học tập và sinh hoạt hoàn toàn bằng tiếng Anh.',
        '<p>Mô hình “<strong>du học tại chỗ</strong>”: Thời lượng sử dụng Tiếng Anh với giáo viên bản ngữ trên 20 tiếng 1 tuần thông qua: các giờ học tiếng Anh hàng ngày, vui chơi sinh hoạt bằng Tiếng Anh, các trải nghiệm hàng tuần cũng bằng Tiếng Anh để các con được \"tắm\" trong ngôn ngữ một cách tự nhiên như người bản xứ.</p><p><strong>Cơ sở vật chất khang trang hiện đại</strong>: Không gian rộng lên đến hàng ngàn m2 với khu sinh hoạt chung, thư viện, sân chơi thể thao và khu vực ngoài trời.</p><p><strong>Chương trình đào tạo đa dạng và tiên tiến</strong>: Ngoài tiếng Anh chuyên sâu, các con tham gia các lớp năng khiếu (cầu lông, nhảy, Yoga, vẽ), kỹ năng sống và các môn văn hoá (Toán, Văn).</p><p><strong>Hoạt động ngoại khóa đa dạng:</strong> Các chuyến dã ngoại, thăm quan, hoạt động xã hội, từ thiện, khoá tu được hướng dẫn bằng tiếng Anh.</p><p><strong>Dự án thực hành sáng tạo hàng tuần: </strong>Tham gia các dự án khoa học, nghệ thuật, văn hóa để khuyến khích tư duy sáng tạo và kỹ năng làm việc nhóm.</p><p><strong>An ninh và liên lạc:</strong> Hệ thống camera cho phép phụ huynh theo dõi, kèm sổ liên lạc điện tử cập nhật tiến trình học tập.</p>',
        '[\"\\/userfiles\\/images\\/course\\/bantruhe\\/R5AT0507.jpg\",\"\\/userfiles\\/images\\/course\\/bantruhe\\/R5AT0534.jpg\",\"\\/userfiles\\/images\\/course\\/bantruhe\\/z6675687609743_ee84a441e35f88d27e6ce27c424ff573.jpg\",\"\\/userfiles\\/images\\/course\\/bantruhe\\/z6811120022873_92c391d365ca803a583c9d2196b3f559.jpg\",\"\\/userfiles\\/images\\/course\\/bantruhe\\/z6841060234506_221c56f16ec5311af07f14ec5849a8bf.jpg\"]',
        'https://www.youtube.com/watch?v=IlAw2WBLlxg', '2025-08-04 09:38:32', '2025-08-06 15:08:13'),
       (5, 5, 'tieng-anh-doanh-nghiep-5', 'Tiếng Anh Doanh Nghiệp', 'Người đi làm',
        'Khóa học chất lượng cao, giúp người đi làm nâng cao khả năng giao tiếp Tiếng Anh, phục vụ cho nhu cầu làm việc và hợp tác quốc tế.',
        '/userfiles/images/course/doanhnghiep/490451643_1257623563036475_4296857575183842521_n.jpg',
        'Nâng cao khả năng giao tiếp trong môi trường làm việc quốc tế, tự tin sử dụng tiếng Anh trong các tình huống chuyên môn như thuyết trình, họp, viết email, và đàm phán.',
        'Tập trung vào chương trình đào tạo cá nhân hóa, nâng cao kỹ năng giao tiếp tiếng Anh chuyên nghiệp phù hợp môi trường quốc tế và yêu cầu doanh nghiệp.',
        '<p><strong>TỰ HÀO KHI ĐƯỢC CHỌN LÀ ĐƠN VỊ CHO CÁC CHUYÊN GIA NGƯỜI HÀN QUỐC&nbsp;</strong></p><p>&nbsp;</p><p style=\"text-align:justify;\">AU Bắc Giang vô cùng vinh dự và tự hào khi được Công ty TNHH Hana Micron Vina (Hàn Quốc), một trong những Công ty lớn và uy tín của Hàn Quốc, chọn làm đối tác đào tạo Tiếng Anh cho các CHUYÊN GIA đến từ HÀN QUỐC. Đây không chỉ là một dấu mốc quan trọng, mà còn là minh chứng rõ ràng cho chất lượng giảng dạy và sự tận tâm của đội ngũ giáo viên tại trung tâm.&nbsp;</p><p style=\"text-align:justify;\">&nbsp;</p><p style=\"text-align:justify;\">Việc được Hana Micron Vina tin tưởng và giao phó nhiệm vụ đào tạo Tiếng Anh cho các chuyên gia không chỉ khẳng định uy tín của Trung tâm trong lĩnh vực đào tạo, mà còn là cơ hội để chúng tôi góp phần phát triển kỹ năng ngôn ngữ cho những người đang làm việc trong môi trường quốc tế. Đây cũng là minh chứng cho sự cam kết của trung tâm trong việc đáp ứng những yêu cầu khắt khe nhất từ phía đối tác doanh nghiệp.&nbsp;</p><p style=\"text-align:justify;\">&nbsp;</p><p style=\"text-align:justify;\">Với đội ngũ giáo viên giàu kinh nghiệm, phương pháp giảng dạy hiệu quả và chương trình học được thiết kế riêng biệt, AU Bắc Giang cam kết mang đến những khóa học chất lượng cao, giúp người đi làm nâng cao khả năng giao tiếp Tiếng Anh, phục vụ cho nhu cầu làm việc và hợp tác quốc tế.</p>',
        '[\"\\/userfiles\\/images\\/course\\/doanhnghiep\\/490451643_1257623563036475_4296857575183842521_n.jpg\",\"\\/userfiles\\/images\\/course\\/doanhnghiep\\/490591983_1257623613036470_1438223622612507161_n.jpg\",\"\\/userfiles\\/images\\/course\\/doanhnghiep\\/491279359_1257623556369809_6607203990488324089_n.jpg\"]',
        '', '2025-08-04 09:49:35', '2025-08-04 09:56:32');
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users`
(
    `id`                bigint unsigned NOT NULL AUTO_INCREMENT,
    `name`              varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email`             varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email_verified_at` timestamp NULL DEFAULT NULL,
    `password`          varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token`    varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at`        timestamp NULL DEFAULT NULL,
    `updated_at`        timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK
TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users`
VALUES (1, 'root', 'root@gmail.com', NULL, '$2y$12$mRctHCuGjzuVn2DrIXLtm.LPsqC./pnoZN3A3BHh/rxgR1lNTkWxi',
        'rB7bVF443il2gYRdNDzHZF4A22CUMfx8xEhCvERsv5ZstGTkIQqDTUUQRX8f', NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK
TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-06 22:37:23
