CREATE DATABASE  IF NOT EXISTS `wafle_store` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wafle_store`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: wafle_store
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add product category',9,'add_productcategory'),(34,'Can change product category',9,'change_productcategory'),(35,'Can delete product category',9,'delete_productcategory'),(36,'Can view product category',9,'view_productcategory'),(37,'Can add order',10,'add_order'),(38,'Can change order',10,'change_order'),(39,'Can delete order',10,'delete_order'),(40,'Can view order',10,'view_order'),(41,'Can add product visited',11,'add_productvisited'),(42,'Can change product visited',11,'change_productvisited'),(43,'Can delete product visited',11,'delete_productvisited'),(44,'Can view product visited',11,'view_productvisited'),(45,'Can add order product',12,'add_orderproduct'),(46,'Can change order product',12,'change_orderproduct'),(47,'Can delete order product',12,'delete_orderproduct'),(48,'Can view order product',12,'view_orderproduct');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$5J5SjkMobsTxnWQBI67Pbg$FIQs8Rp9/Yo2vo191VLmjozoeHrlcD7GAEh0lFkcNbk=','2021-04-18 00:59:54.931424',1,'wafle','','','ezepeda@wafle.cl',1,1,'2021-04-17 18:46:01.924705');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-04-17 18:47:57.629533','2','admin',3,'',4,1),(2,'2021-04-17 21:07:56.200800','1','Monitors',1,'[{\"added\": {}}]',7,1),(3,'2021-04-17 21:08:41.678906','2','Storage',1,'[{\"added\": {}}]',7,1),(4,'2021-04-17 21:23:26.609875','1','Monitor LG 20MK400H - TN - Led 19.5\" - 1366x768 - VGA - HDMI - Black',1,'[{\"added\": {}}]',8,1),(5,'2021-04-18 01:00:29.684752','1','Monitors',2,'[]',7,1),(6,'2021-04-18 01:00:37.400711','2','Storage',2,'[]',7,1),(7,'2021-04-18 01:00:43.070780','1','Monitor LG 20MK400H - TN - Led 19.5\" - 1366x768 - VGA - HDMI - Black',2,'[]',8,1),(8,'2021-04-18 04:23:13.410124','1','Monitor LG 20MK400H - TN - Led 19.5\" - 1366x768 - VGA - HDMI - Black',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(9,'2021-04-18 04:42:00.444358','1','Monitor LG 20MK400H - TN - Led 19.5\" - 1366x768 - VGA - HDMI - Black',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(10,'2021-04-18 14:39:07.053118','3','Joysticks',1,'[{\"added\": {}}]',7,1),(11,'2021-04-18 14:40:21.487353','2','Microsoft control xbox wireless with cable USB-C 2.7mts',1,'[{\"added\": {}}]',8,1),(12,'2021-04-18 14:50:11.372807','3','Unidad SSD 480GB WD Green M.2 2280, SATA III 6GB/s, Lectura 545 MB/s',1,'[{\"added\": {}}]',8,1),(13,'2021-04-18 15:38:02.668350','4','Processors',1,'[{\"added\": {}}]',7,1),(14,'2021-04-18 15:38:43.757999','5','Memory RAM',1,'[{\"added\": {}}]',7,1),(15,'2021-04-18 15:47:34.608337','4','LG Monitor LED 23.6\" 24L600F-B',1,'[{\"added\": {}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'store','category'),(10,'store','order'),(12,'store','orderproduct'),(8,'store','product'),(9,'store','productcategory'),(11,'store','productvisited');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-04-17 18:44:15.605741'),(2,'auth','0001_initial','2021-04-17 18:44:16.180642'),(3,'admin','0001_initial','2021-04-17 18:44:16.289005'),(4,'admin','0002_logentry_remove_auto_add','2021-04-17 18:44:16.296652'),(5,'admin','0003_logentry_add_action_flag_choices','2021-04-17 18:44:16.304428'),(6,'contenttypes','0002_remove_content_type_name','2021-04-17 18:44:16.383526'),(7,'auth','0002_alter_permission_name_max_length','2021-04-17 18:44:16.422320'),(8,'auth','0003_alter_user_email_max_length','2021-04-17 18:44:16.462340'),(9,'auth','0004_alter_user_username_opts','2021-04-17 18:44:16.468873'),(10,'auth','0005_alter_user_last_login_null','2021-04-17 18:44:16.505049'),(11,'auth','0006_require_contenttypes_0002','2021-04-17 18:44:16.506431'),(12,'auth','0007_alter_validators_add_error_messages','2021-04-17 18:44:16.512259'),(13,'auth','0008_alter_user_username_max_length','2021-04-17 18:44:16.551213'),(14,'auth','0009_alter_user_last_name_max_length','2021-04-17 18:44:16.590647'),(15,'auth','0010_alter_group_name_max_length','2021-04-17 18:44:16.630072'),(16,'auth','0011_update_proxy_permissions','2021-04-17 18:44:16.636739'),(17,'auth','0012_alter_user_first_name_max_length','2021-04-17 18:44:16.676813'),(18,'sessions','0001_initial','2021-04-17 18:44:16.737546'),(19,'store','0001_store','2021-04-17 20:55:14.014861'),(20,'store','0002_store','2021-04-17 21:01:27.237589'),(21,'store','0003_store','2021-04-17 21:06:54.877692'),(22,'store','0004_store','2021-04-17 21:13:34.059607'),(23,'store','0005_store','2021-04-17 21:14:38.327622'),(24,'store','0006_store','2021-04-17 21:22:27.219136'),(25,'store','0007_field_slug_categories_product_tables','2021-04-18 00:59:14.603369'),(26,'store','0008_alter_image_column_product_table','2021-04-18 04:22:40.592730'),(27,'store','0009_alter_image_column_product_table_2','2021-04-18 04:41:16.739439');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ba27m60hkt4d3dxa7e88xl5vikqrbd9c','.eJxVjEEOwiAQRe_C2pDCAAWX7j0DGZhBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4kTgLJU6_W8L84LYDumO7zTLPbV2mJHdFHrTL60z8vBzu30HFXr81W69yBj2W4pUlbZXLirQh5zlh8FicIRhKYALvRgxZGw7WQEkAIQzi_QHmcje8:1lXuwX:VtE3sNzrDE89X681h5eTni0dbEf8drmysu5LRSn5hAA','2021-05-02 00:05:41.401964'),('hvsnokx358d3vy740eq7aw2rg5yfcia9','.eJxVjEEOwiAQRe_C2pDCAAWX7j0DGZhBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4kTgLJU6_W8L84LYDumO7zTLPbV2mJHdFHrTL60z8vBzu30HFXr81W69yBj2W4pUlbZXLirQh5zlh8FicIRhKYALvRgxZGw7WQEkAIQzi_QHmcje8:1lXpym:jFem52HDAfSTMkFU8U4Y--WY4nVckOufGb1owZgoXFI','2021-05-01 18:47:40.081117'),('zmx0ylkod0yr76nje3j8lcd2ouixhy2r','.eJxVjEEOwiAQRe_C2pDCAAWX7j0DGZhBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4kTgLJU6_W8L84LYDumO7zTLPbV2mJHdFHrTL60z8vBzu30HFXr81W69yBj2W4pUlbZXLirQh5zlh8FicIRhKYALvRgxZGw7WQEkAIQzi_QHmcje8:1lXvn0:DXHV8SXQXFPelwbZVNzy-lx8yzhDpPIR366agjdoRmM','2021-05-02 00:59:54.933501');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `subcategory_id` bigint(20) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_category_subcategory_id_cd3db0af_fk_store_category_id` (`subcategory_id`),
  KEY `store_category_slug_2d349264` (`slug`),
  CONSTRAINT `store_category_subcategory_id_cd3db0af_fk_store_category_id` FOREIGN KEY (`subcategory_id`) REFERENCES `store_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (1,'Monitors','Monitors','2021-04-17 21:07:56.200083','2021-04-18 01:00:29.683741',NULL,'monitors'),(2,'Storage','Storage devices','2021-04-17 21:08:41.678396','2021-04-18 01:00:37.399711',NULL,'storage'),(3,'Joysticks','Game controller','2021-04-18 14:39:07.045649','2021-04-18 14:39:07.045677',NULL,'joysticks'),(4,'Processors','CPU Processors','2021-04-18 15:38:02.667642','2021-04-18 15:38:02.667672',NULL,'processors'),(5,'Memory RAM','RAM Modules','2021-04-18 15:38:43.757416','2021-04-18 15:38:43.757446',NULL,'memory-ram');
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `total` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_order_user_id_ae5f7a5f_fk_auth_user_id` (`user_id`),
  CONSTRAINT `store_order_user_id_ae5f7a5f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_orderproduct`
--

DROP TABLE IF EXISTS `store_orderproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_orderproduct` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_orderproduct_order_id_87a00c28_fk_store_order_id` (`order_id`),
  KEY `store_orderproduct_product_id_1633886a_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_orderproduct_order_id_87a00c28_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  CONSTRAINT `store_orderproduct_product_id_1633886a_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_orderproduct`
--

LOCK TABLES `store_orderproduct` WRITE;
/*!40000 ALTER TABLE `store_orderproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_orderproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `description` longtext,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_product_slug_6de8ee4b` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (1,'Monitor LG 20MK400H - TN - Led 19.5\" - 1366x768 - VGA - HDMI - Black','MT759LGE97','LG','78667','uploads/20MK400H_08032018_Z01.jpg','2021-04-17 21:23:26.606410','2021-04-18 04:42:00.440530','<table class=\"table table-bordered\">\r\n<tbody>\r\n<tr>\r\n<th class=\"bg-webstore fg-webstore\">Característica</th>\r\n<th class=\"bg-webstore fg-webstore\">Valor</th>\r\n</tr>\r\n<tr>\r\n<td>Diagonal de la pantalla</td>\r\n<td>50,8 cm (20\")</td>\r\n</tr>\r\n<tr>\r\n<td>Brillo de la pantalla (típico)</td>\r\n<td>300 cd / m²</td>\r\n</tr>\r\n<tr>\r\n<td>Resolución de la pantalla</td>\r\n<td>1366 x 768 Pixeles</td>\r\n</tr>\r\n<tr>\r\n<td>Relación de aspecto nativa</td>\r\n<td>16:9</td>\r\n</tr>\r\n<tr>\r\n<td>Tiempo de respuesta</td>\r\n<td>2 ms</td>\r\n</tr>\r\n<tr>\r\n<td>Tipo de pantalla</td>\r\n<td>TN</td>\r\n</tr>\r\n<tr>\r\n<td>Tipo HD</td>\r\n<td>WXGA</td>\r\n</tr>\r\n<tr>\r\n<td>Tecnología de visualización</td>\r\n<td>LED</td>\r\n</tr>\r\n<tr>\r\n<td>Forma de la pantalla</td>\r\n<td>Plana</td>\r\n</tr>\r\n<tr>\r\n<td>Razón de contraste (típica)</td>\r\n<td>1000:1</td>\r\n</tr>\r\n<tr>\r\n<td>Máxima velocidad de actualización</td>\r\n<td>60 Hz</td>\r\n</tr>\r\n<tr>\r\n<td>Ángulo de visión, horizontal</td>\r\n<td>170°</td>\r\n</tr>\r\n<tr>\r\n<td>Ángulo de visión, vertical</td>\r\n<td>160°</td>\r\n</tr>\r\n<tr>\r\n<td>Número de colores de la pantalla</td>\r\n<td>16,78 millones de colores</td>\r\n</tr>\r\n<tr>\r\n<td>Superficie de la pantalla</td>\r\n<td>Mate</td>\r\n</tr>\r\n<tr>\r\n<td>Formato de vídeo soportado</td>\r\n<td>1080p</td>\r\n</tr>\r\n<tr>\r\n<td>Nombre comercial de la relación de contraste dinámico</td>\r\n<td>Mega Contrast</td>\r\n</tr>\r\n<tr>\r\n<td>Tamaño de pixel</td>\r\n<td>0,31125 x 0,31125 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Intervalo de escaneado horizontal</td>\r\n<td>30 - 89 kHz</td>\r\n</tr>\r\n<tr>\r\n<td>Intervalo de escaneado vertical</td>\r\n<td>56 - 75 Hz</td>\r\n</tr>\r\n<tr>\r\n<td>Gama de colores</td>\r\n<td>72%</td>\r\n</tr>\r\n<tr>\r\n<td>DDC / CI</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>AMD FreeSync</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Tecnología Flicker free (reduce el parpadeo de la pantalla)</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Certificado Energy Star</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Conformidad EPEAT</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Color del producto</td>\r\n<td>Negro</td>\r\n</tr>\r\n<tr>\r\n<td>Cantidad de puertos VGA (D-Sub)</td>\r\n<td>1</td>\r\n</tr>\r\n<tr>\r\n<td>Entrada de audio</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Salida de auriculares</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Número de puertos HDMI</td>\r\n<td>1</td>\r\n</tr>\r\n<tr>\r\n<td>Salida de audio</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>HDCP</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>montaje VESA</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Interfaz de panel de montaje</td>\r\n<td>100 x 100 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Ajuste de la inclinación</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Ángulo de inclinación</td>\r\n<td>-5 - 20°</td>\r\n</tr>\r\n<tr>\r\n<td>Exhibición en pantalla (OSD)</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Número de lenguajes OSD</td>\r\n<td>18</td>\r\n</tr>\r\n<tr>\r\n<td>Conectar y usar (Plug and Play)</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo energético</td>\r\n<td>27 W</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo de energía (inactivo)</td>\r\n<td>0,3 W</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo de energía (apagado)</td>\r\n<td>0,3 W</td>\r\n</tr>\r\n<tr>\r\n<td>Voltaje de entrada AC</td>\r\n<td>100 - 240 V</td>\r\n</tr>\r\n<tr>\r\n<td>Frecuencia de entrada AC</td>\r\n<td>50 - 60 Hz</td>\r\n</tr>\r\n<tr>\r\n<td>Ancho</td>\r\n<td>625,6 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Profundidad</td>\r\n<td>44 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Altura</td>\r\n<td>375,2 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Peso</td>\r\n<td>4,2 kg</td>\r\n</tr>\r\n<tr>\r\n<td>Ancho del dispositivo (con soporte)</td>\r\n<td>625,6 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Profundidad dispositivo (con soporte)</td>\r\n<td>204,1 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Altura del dispositivo (con soporte)</td>\r\n<td>468,7 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Peso (con soporte)</td>\r\n<td>4,6 kg</td>\r\n</tr>\r\n<tr>\r\n<td>Stand incluido</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Cables incluidos</td>\r\n<td>HDMI</td>\r\n</tr>\r\n<tr>\r\n<td>Manual de usuario</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Ancho del paquete</td>\r\n<td>709 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Profundidad del paquete</td>\r\n<td>459 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Altura del paquete</td>\r\n<td>159 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Peso del paquete</td>\r\n<td>6,1 kg</td>\r\n</tr>\r\n</tbody>\r\n</table>','monitor-lg-20mk400h-tn-led-195-1366x768-vga-hdmi-black'),(2,'Microsoft control xbox wireless with cable USB-C 2.7mts','MM952MSX15','Microsoft','51990','uploads/1V8-00007-200.jpg','2021-04-18 14:40:21.482767','2021-04-18 14:40:21.482794','ControlControl inalámbrico Xbox + cable USB-C\r\n\r\nVive la experiencia del diseño modernizado del control inalámbrico de Xbox, que presenta superficies esculpidas y una geometría refinada\r\npara una mayor comodidad durante el juego. Juega de forma inalámbrica o usa el cable USB-C incluido de 2.7 metros para disfrutar de una\r\nexperiencia de juego con cable. Mantén siempre el objetivo con el pad direccional híbrido y el agarre texturizado en los gatillos, en los botones\r\nsuperiores y en la carcasa trasera.\r\nUsa la aplicación Accesorios de Xbox para reasignar botones y crear perfiles de control personalizados para tus juegos favoritos. Empareja y\r\n\r\nalterna rápidamente con Xbox Series X, Xbox One, PC con Windows 10,celulares o tabletas Android y iOS. Conecta cualquier auricular\r\ncompatible con la entrada de audio de 3.5 mm\r\n\r\nCaracterísticas\r\n<ul>\r\n 	<li><strong>Eleva tu juego</strong>\r\nVive la experiencia del diseño modernizado del control inalámbrico de Xbox, que presenta superficies esculpidas\r\ny una geometría refinada para una mayor comodidad y control con el menor esfuerzo durante el juego.</li>\r\n 	<li><strong>Conéctate y juega</strong>\r\nJuega de forma inalámbrica o usa el cable USB-C incluido de 2.7 metros para disfrutar de una experiencia de juego con cable.</li>\r\n 	<li><strong>Perfiles de control personalizados</strong>\r\nUsa la aplicación Accesorios de Xbox para reasignar botones y crear perfiles de control personalizados para tus juegos favoritos.*\r\nAdemás, conecta cualquier auricular compatible con la entrada de audio de 3.5 mm.*</li>\r\n 	<li><strong>Mantén siempre tu objetivo</strong>\r\nMantén siempre el objetivo con el pad direccional híbrido y el agarre texturizado en los gatillos, en los botones superiores\r\ny en la carcasa trasera.</li>\r\n 	<li>Empareja y alterna fácilmente\r\nEmpareja y alterna rápidamente con Xbox Series X, Xbox One, PC con Windows 10, celulares o tabletas Android y iOS.*</li>\r\n</ul>\r\n&nbsp;','microsoft-control-xbox-wireless-with-cable-usb-c-27mts'),(3,'Unidad SSD 480GB WD Green M.2 2280, SATA III 6GB/s, Lectura 545 MB/s','DH962WDC13','Western Digital','52990','uploads/1550867361415-62335655_3335112772.jpg','2021-04-18 14:50:11.370163','2021-04-18 14:50:11.370187','<table class=\"table table-bordered\">\r\n<tbody>\r\n<tr>\r\n<th class=\"bg-webstore fg-webstore\">Característica</th>\r\n<th class=\"bg-webstore fg-webstore\">Valor</th>\r\n</tr>\r\n<tr>\r\n<td>Factor de forma de disco SSD</td>\r\n<td>M.2</td>\r\n</tr>\r\n<tr>\r\n<td>SDD, capacidad</td>\r\n<td>480 GB</td>\r\n</tr>\r\n<tr>\r\n<td>Interfaz</td>\r\n<td>Serial ATA III</td>\r\n</tr>\r\n<tr>\r\n<td>Tipo de memoria</td>\r\n<td>SLC</td>\r\n</tr>\r\n<tr>\r\n<td>NVMe</td>\r\n<td>No</td>\r\n</tr>\r\n<tr>\r\n<td>Componente para</td>\r\n<td>PC/ordenador portátil</td>\r\n</tr>\r\n<tr>\r\n<td>Velocidad de lectura</td>\r\n<td>545 MB/s</td>\r\n</tr>\r\n<tr>\r\n<td>Velocidad de transferencia de datos</td>\r\n<td>6 Gbit/s</td>\r\n</tr>\r\n<tr>\r\n<td>Tiempo medio entre fallos</td>\r\n<td>1000000 h</td>\r\n</tr>\r\n<tr>\r\n<td>Sistema operativo Windows soportado</td>\r\n<td>Si</td>\r\n</tr>\r\n<tr>\r\n<td>Certificación</td>\r\n<td>FCC, UL, TUV, KC, BSMI, VCCI</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo de energía (lectura)</td>\r\n<td>2,8 W</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo de energía (escritura)</td>\r\n<td>2,8 W</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo de energía (promedio)</td>\r\n<td>0,08 W</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo energético (en suspensión)</td>\r\n<td>0,03 W</td>\r\n</tr>\r\n<tr>\r\n<td>Consumo de potencia DevSlp (modo sueño)</td>\r\n<td>10 mW</td>\r\n</tr>\r\n<tr>\r\n<td>Intervalo de temperatura operativa</td>\r\n<td>0 - 70 °C</td>\r\n</tr>\r\n<tr>\r\n<td>Intervalo de temperatura de almacenaje</td>\r\n<td>-55 - 85 °C</td>\r\n</tr>\r\n<tr>\r\n<td>Vibración operativa</td>\r\n<td>5 G</td>\r\n</tr>\r\n<tr>\r\n<td>Vibración no operativa</td>\r\n<td>4,9 G</td>\r\n</tr>\r\n<tr>\r\n<td>Golpes en funcionamiento</td>\r\n<td>1500 G</td>\r\n</tr>\r\n<tr>\r\n<td>Ancho</td>\r\n<td>80 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Profundidad</td>\r\n<td>22 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Altura</td>\r\n<td>1,5 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Peso</td>\r\n<td>6,52 g</td>\r\n</tr>\r\n<tr>\r\n<td>Color del producto</td>\r\n<td>Negro, Azul</td>\r\n</tr>\r\n<tr>\r\n<td>Interfaces de disco de estado sólido</td>\r\n<td>SATA3</td>\r\n</tr>\r\n<tr>\r\n<td>Tamaño</td>\r\n<td>2.5</td>\r\n</tr>\r\n<tr>\r\n<td>Incluye kit para desktop</td>\r\n<td>No</td>\r\n</tr>\r\n</tbody>\r\n</table>','unidad-ssd-480gb-wd-green-m2-2280-sata-iii-6gbs-lectura-545-mbs'),(4,'LG Monitor LED 23.6\" 24L600F-B','MT000LGE35','LG','247990','uploads/LG_Electronics-44708341-medium_01-mobile.jpg','2021-04-18 15:47:34.606000','2021-04-18 15:47:34.606029','<table class=\"MuiTable-root\">\r\n<tbody class=\"MuiTableBody-root\">\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Descripción</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Monitor LED 23.6\" 24L600F-B</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Producto</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Monitor</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Marca</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">LG</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Modelo</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">24GL600F-B</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Color</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Negro</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Tamaño de la pantalla</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">23.6\"</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Resolucion</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Full HD 1920x1080</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Tecnologia</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">LED</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Entradas USB</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">No</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Smart TV</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">No</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Control Remoto incluido</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">No</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Entradas HDMI</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">2</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Tipo</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Monitor</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Dimensiones</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">55.68 x 41.98 x 18.06 (ancho x profundidad x alto)</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Peso</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">3.7 kg</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">País de origen</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">China</td>\r\n</tr>\r\n<tr class=\"MuiTableRow-root\">\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">Garantía otorgada por el Fabricante</td>\r\n<td class=\"MuiTableCell-root MuiTableCell-body\">1 año</td>\r\n</tr>\r\n</tbody>\r\n</table>','lg-monitor-led-236-24l600f-b');
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product_categories`
--

DROP TABLE IF EXISTS `store_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `store_product_categories_product_id_category_id_fe62df28_uniq` (`product_id`,`category_id`),
  KEY `store_product_catego_category_id_be6ba102_fk_store_cat` (`category_id`),
  CONSTRAINT `store_product_catego_category_id_be6ba102_fk_store_cat` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`),
  CONSTRAINT `store_product_categories_product_id_de429ba1_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product_categories`
--

LOCK TABLES `store_product_categories` WRITE;
/*!40000 ALTER TABLE `store_product_categories` DISABLE KEYS */;
INSERT INTO `store_product_categories` VALUES (1,1,1),(2,2,3),(3,3,2),(4,4,1);
/*!40000 ALTER TABLE `store_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_productvisited`
--

DROP TABLE IF EXISTS `store_productvisited`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_productvisited` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `session` varchar(40) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_productvisited_product_id_4666c33c_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_productvisited_product_id_4666c33c_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_productvisited`
--

LOCK TABLES `store_productvisited` WRITE;
/*!40000 ALTER TABLE `store_productvisited` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_productvisited` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-18 12:25:37
