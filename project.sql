-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add address',7,'add_address'),(26,'Can change address',7,'change_address'),(27,'Can delete address',7,'delete_address'),(28,'Can view address',7,'view_address'),(29,'Can add customer',8,'add_customer'),(30,'Can change customer',8,'change_customer'),(31,'Can delete customer',8,'delete_customer'),(32,'Can view customer',8,'view_customer'),(33,'Can add product',9,'add_product'),(34,'Can change product',9,'change_product'),(35,'Can delete product',9,'delete_product'),(36,'Can view product',9,'view_product'),(37,'Can add region',10,'add_region'),(38,'Can change region',10,'change_region'),(39,'Can delete region',10,'delete_region'),(40,'Can view region',10,'view_region'),(41,'Can add transaction',11,'add_transaction'),(42,'Can change transaction',11,'change_transaction'),(43,'Can delete transaction',11,'delete_transaction'),(44,'Can view transaction',11,'view_transaction'),(45,'Can add store',12,'add_store'),(46,'Can change store',12,'change_store'),(47,'Can delete store',12,'delete_store'),(48,'Can view store',12,'view_store'),(49,'Can add salesperson',13,'add_salesperson'),(50,'Can change salesperson',13,'change_salesperson'),(51,'Can delete salesperson',13,'delete_salesperson'),(52,'Can view salesperson',13,'view_salesperson');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$ywfuhK9G38I7agO9oXxPyn$iA038DkmOxFq3HxbHXscVdksePDszSz3uBiL/lc34t8=','2021-12-06 23:25:06.852048',1,'anton','','','yug64@pitt.edu',1,1,'2021-12-06 23:24:58.780441'),(2,'pbkdf2_sha256$260000$yk91iI2AteGATtoyP0QjDx$oR9bPMoY2NrSsZEkSg3kYh/AmU/K/wpBsv9EPf9XBko=','2021-12-06 23:29:33.809866',0,'anton_test','','','',0,1,'2021-12-06 23:29:25.343431');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-12-06 23:28:00.951705','1','1 product1',1,'[{\"added\": {}}]',9,1),(2,'2021-12-06 23:28:36.996530','2','2 product2',1,'[{\"added\": {}}]',9,1),(3,'2021-12-06 23:28:53.825983','3','3 product3',1,'[{\"added\": {}}]',9,1);
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
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'login','address'),(8,'login','customer'),(9,'login','product'),(10,'login','region'),(13,'login','salesperson'),(12,'login','store'),(11,'login','transaction'),(6,'sessions','session');
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
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-12-06 23:24:00.488606'),(2,'auth','0001_initial','2021-12-06 23:24:01.705916'),(3,'admin','0001_initial','2021-12-06 23:24:01.985340'),(4,'admin','0002_logentry_remove_auto_add','2021-12-06 23:24:02.006649'),(5,'admin','0003_logentry_add_action_flag_choices','2021-12-06 23:24:02.026659'),(6,'contenttypes','0002_remove_content_type_name','2021-12-06 23:24:02.406362'),(7,'auth','0002_alter_permission_name_max_length','2021-12-06 23:24:02.546625'),(8,'auth','0003_alter_user_email_max_length','2021-12-06 23:24:02.594748'),(9,'auth','0004_alter_user_username_opts','2021-12-06 23:24:02.608689'),(10,'auth','0005_alter_user_last_login_null','2021-12-06 23:24:02.720817'),(11,'auth','0006_require_contenttypes_0002','2021-12-06 23:24:02.732410'),(12,'auth','0007_alter_validators_add_error_messages','2021-12-06 23:24:02.751507'),(13,'auth','0008_alter_user_username_max_length','2021-12-06 23:24:02.872500'),(14,'auth','0009_alter_user_last_name_max_length','2021-12-06 23:24:02.982157'),(15,'auth','0010_alter_group_name_max_length','2021-12-06 23:24:03.010399'),(16,'auth','0011_update_proxy_permissions','2021-12-06 23:24:03.025364'),(17,'auth','0012_alter_user_first_name_max_length','2021-12-06 23:24:03.145975'),(18,'login','0001_initial','2021-12-06 23:24:04.734544'),(19,'sessions','0001_initial','2021-12-06 23:24:04.826939');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('a0sght1uacelclgpqbdw5de2ira0lonk','.eJxVjDsOwjAQBe_iGllgr3-U9JzBWu9ucAA5UpxUiLtDpBTQvpl5L5VxXWpeu8x5ZHVWRh1-t4L0kLYBvmO7TZqmtsxj0Zuid9r1dWJ5Xnb376Bir986ApDFkhAtDGwkCkkkK4GjN84DwcmJQw4liTGITOTDMREnYMLBqvcHCRs5Kg:1muNQL:mXTvjJrFZVBf7lbHi_GZC1x8kumCOkCPzGkZx_j9U2E','2021-12-20 23:29:33.817518');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_address`
--

DROP TABLE IF EXISTS `login_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `zip_code` int DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_address`
--

LOCK TABLES `login_address` WRITE;
/*!40000 ALTER TABLE `login_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_customer`
--

DROP TABLE IF EXISTS `login_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `marriage_status` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `income` varchar(30) DEFAULT NULL,
  `business_category` varchar(30) DEFAULT NULL,
  `company_gross_annual_income` varchar(30) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `user_id_id` int NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `login_customer_user_id_id_34b56ab0_fk_auth_user_id` (`user_id_id`),
  CONSTRAINT `login_customer_user_id_id_34b56ab0_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_customer`
--

LOCK TABLES `login_customer` WRITE;
/*!40000 ALTER TABLE `login_customer` DISABLE KEYS */;
INSERT INTO `login_customer` VALUES (1,'anton_test','f6e5f9465d99486de116ea9cc55b1e92',NULL,NULL,NULL,NULL,NULL,NULL,'Manufacturer','5000k~','business',2);
/*!40000 ALTER TABLE `login_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_product`
--

DROP TABLE IF EXISTS `login_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` int DEFAULT NULL,
  `inventory_amount` int DEFAULT NULL,
  `product_kind` varchar(30) DEFAULT NULL,
  `link_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_product`
--

LOCK TABLES `login_product` WRITE;
/*!40000 ALTER TABLE `login_product` DISABLE KEYS */;
INSERT INTO `login_product` VALUES (1,'product1',520,5,'type1','/static/images/product_1.png'),(2,'product2',610,16,'type2','/static/images/product_2.png'),(3,'product3',120,15,'type3','/static/images/product_3.png');
/*!40000 ALTER TABLE `login_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_region`
--

DROP TABLE IF EXISTS `login_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_region` (
  `region_id` int NOT NULL AUTO_INCREMENT,
  `region_name` varchar(30) DEFAULT NULL,
  `region_manager` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_region`
--

LOCK TABLES `login_region` WRITE;
/*!40000 ALTER TABLE `login_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_salesperson`
--

DROP TABLE IF EXISTS `login_salesperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_salesperson` (
  `salesperson_id` int NOT NULL AUTO_INCREMENT,
  `salary` int DEFAULT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  `job_title` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `salesperson_address_id` int NOT NULL,
  `store_assigned_id` int NOT NULL,
  PRIMARY KEY (`salesperson_id`),
  KEY `login_salesperson_salesperson_address__b67187ed_fk_login_add` (`salesperson_address_id`),
  KEY `login_salesperson_store_assigned_id_327bb3e3_fk_login_sto` (`store_assigned_id`),
  CONSTRAINT `login_salesperson_salesperson_address__b67187ed_fk_login_add` FOREIGN KEY (`salesperson_address_id`) REFERENCES `login_address` (`address_id`),
  CONSTRAINT `login_salesperson_store_assigned_id_327bb3e3_fk_login_sto` FOREIGN KEY (`store_assigned_id`) REFERENCES `login_store` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_salesperson`
--

LOCK TABLES `login_salesperson` WRITE;
/*!40000 ALTER TABLE `login_salesperson` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_salesperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_store`
--

DROP TABLE IF EXISTS `login_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_store` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `manager` varchar(30) DEFAULT NULL,
  `number_of_salespersons` varchar(30) DEFAULT NULL,
  `region_id` int NOT NULL,
  `store_address_id` int NOT NULL,
  PRIMARY KEY (`store_id`),
  KEY `login_store_region_id_e02b129b_fk_login_region_region_id` (`region_id`),
  KEY `login_store_store_address_id_664ca392_fk_login_add` (`store_address_id`),
  CONSTRAINT `login_store_region_id_e02b129b_fk_login_region_region_id` FOREIGN KEY (`region_id`) REFERENCES `login_region` (`region_id`),
  CONSTRAINT `login_store_store_address_id_664ca392_fk_login_add` FOREIGN KEY (`store_address_id`) REFERENCES `login_address` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_store`
--

LOCK TABLES `login_store` WRITE;
/*!40000 ALTER TABLE `login_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_transaction`
--

DROP TABLE IF EXISTS `login_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_transaction` (
  `order_number` int NOT NULL AUTO_INCREMENT,
  `date` varchar(30) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `customer_information_id` int NOT NULL,
  `product_information_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`order_number`),
  KEY `login_transaction_customer_information_186e925c_fk_login_cus` (`customer_information_id`),
  KEY `login_transaction_product_information__a7404ea6_fk_login_pro` (`product_information_id`),
  KEY `login_transaction_user_id_6c790808_fk_auth_user_id` (`user_id`),
  CONSTRAINT `login_transaction_customer_information_186e925c_fk_login_cus` FOREIGN KEY (`customer_information_id`) REFERENCES `login_customer` (`customer_id`),
  CONSTRAINT `login_transaction_product_information__a7404ea6_fk_login_pro` FOREIGN KEY (`product_information_id`) REFERENCES `login_product` (`product_id`),
  CONSTRAINT `login_transaction_user_id_6c790808_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_transaction`
--

LOCK TABLES `login_transaction` WRITE;
/*!40000 ALTER TABLE `login_transaction` DISABLE KEYS */;
INSERT INTO `login_transaction` VALUES (1,'2021-12-06',5,1,1,2),(2,'2021-12-06',4,1,2,2);
/*!40000 ALTER TABLE `login_transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-06 18:51:39
