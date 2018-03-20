-- MySQL dump 10.13  Distrib 5.7.21, for osx10.13 (x86_64)
--
-- Host: localhost    Database: golf
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `academies`
--

DROP TABLE IF EXISTS `academies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academies`
--

LOCK TABLES `academies` WRITE;
/*!40000 ALTER TABLE `academies` DISABLE KEYS */;
INSERT INTO `academies` VALUES (1,NULL,'2018-03-20 04:13:34','2018-03-20 04:19:15','Massachusetts Institute of Technology','77 Massachusetts Ave, Cambridge, MA 02139, USA'),(2,NULL,'2018-03-20 04:13:51','2018-03-20 04:20:35','Stanford University','450 Serra Mall, Stanford, CA 94305, USA'),(3,NULL,'2018-03-20 04:14:04','2018-03-20 04:21:07','Harvard University','Cambridge, MA 02138, USA'),(4,NULL,'2018-03-20 04:14:13','2018-03-20 04:21:34','University of Cambridge','The Old Schools, Trinity Ln, Cambridge CB2 1TN, UK'),(5,NULL,'2018-03-20 04:14:25','2018-03-20 04:21:56','California Institute of Technology (Caltech)','1200 E California Blvd, Pasadena, CA 91125, USA'),(6,NULL,'2018-03-20 04:14:34','2018-03-20 04:14:34','University of Oxford',''),(7,NULL,'2018-03-20 04:14:42','2018-03-20 04:14:42','UCL (University College London)',''),(8,NULL,'2018-03-20 04:14:50','2018-03-20 04:14:50','ETH Zurich – Swiss Federal Institute of Technology',''),(9,NULL,'2018-03-20 04:15:01','2018-03-20 04:15:01','Imperial College London',''),(10,NULL,'2018-03-20 04:15:14','2018-03-20 04:22:57','University of Chicago','DePaul Art Museum, 935 W Fullerton Ave, Chicago, IL 60614, USA'),(11,NULL,'2018-03-20 04:15:23','2018-03-20 04:15:23','Princeton University',''),(12,NULL,'2018-03-20 04:15:30','2018-03-20 04:15:30','National University of Singapore (NUS)',''),(13,NULL,'2018-03-20 04:15:40','2018-03-20 04:15:40','Nanyang Technological University, Singapore (NTU)',''),(14,NULL,'2018-03-20 04:16:17','2018-03-20 04:16:17','Ecole Polytechnique Fédérale de Lausanne (EPFL)',''),(15,NULL,'2018-03-20 04:16:29','2018-03-20 04:16:29','Yale University',''),(16,NULL,'2018-03-20 04:16:41','2018-03-20 04:16:41','Cornell University',''),(17,NULL,'2018-03-20 04:16:52','2018-03-20 04:16:52','Johns Hopkins University',''),(18,NULL,'2018-03-20 04:17:03','2018-03-20 04:17:03','University of Pennsylvania',''),(19,NULL,'2018-03-20 04:17:13','2018-03-20 04:17:13','University of Edinburgh',''),(20,NULL,'2018-03-20 04:17:23','2018-03-20 04:17:23','Columbia University',''),(21,NULL,'2018-03-20 04:17:33','2018-03-20 04:17:33','King’s College London','');
/*!40000 ALTER TABLE `academies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backups`
--

DROP TABLE IF EXISTS `backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `backups_name_unique` (`name`),
  UNIQUE KEY `backups_file_name_unique` (`file_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backups`
--

LOCK TABLES `backups` WRITE;
/*!40000 ALTER TABLE `backups` DISABLE KEYS */;
/*!40000 ALTER TABLE `backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `academy_id` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `courses_academy_id_foreign` (`academy_id`),
  CONSTRAINT `courses_academy_id_foreign` FOREIGN KEY (`academy_id`) REFERENCES `academies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,NULL,'2018-03-20 04:23:38','2018-03-20 04:30:22','Accounting',4),(2,NULL,'2018-03-20 04:23:49','2018-03-20 04:23:49',' Actuarial Science',1),(3,NULL,'2018-03-20 04:23:57','2018-03-20 04:23:57','Management',1),(4,NULL,'2018-03-20 04:24:39','2018-03-20 04:24:39','Biology',1),(5,NULL,'2018-03-20 04:24:47','2018-03-20 09:31:41','Business Administration',17),(6,NULL,'2018-03-20 04:24:55','2018-03-20 04:24:55','Computer Science',1),(7,NULL,'2018-03-20 04:25:05','2018-03-20 04:25:05','Construction Management',1),(8,NULL,'2018-03-20 04:25:29','2018-03-20 04:25:29','Economics',1),(9,NULL,'2018-03-20 04:25:40','2018-03-20 04:25:40','Political Science',1),(10,NULL,'2018-03-20 04:25:49','2018-03-20 04:25:49','Theater Arts',1),(11,NULL,'2018-03-20 04:25:56','2018-03-20 04:25:56','Visual Arts',1),(12,NULL,'2018-03-20 04:26:03','2018-03-20 04:26:03','Multimedia Journalism',1),(13,NULL,'2018-03-20 04:26:14','2018-03-20 04:26:14','Electrical & Computer Engineering 2+2 Program',1),(14,NULL,'2018-03-20 04:31:27','2018-03-20 04:31:27','History',17);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `departments_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Administration','[]','#000',NULL,'2018-03-20 04:02:30','2018-03-20 04:02:30');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) unsigned NOT NULL DEFAULT '1',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT '0.000',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`),
  KEY `employees_dept_foreign` (`dept`),
  CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Admin','Super Admin','Male','8888888888','','admin@golf.com',1,'Pune','Karve nagar, Pune 411030','About user / biography','2018-03-20','2018-03-20','2018-03-20',0.000,NULL,'2018-03-20 04:02:42','2018-03-20 04:02:42');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `la_configs`
--

DROP TABLE IF EXISTS `la_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `la_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `la_configs`
--

LOCK TABLES `la_configs` WRITE;
/*!40000 ALTER TABLE `la_configs` DISABLE KEYS */;
INSERT INTO `la_configs` VALUES (1,'sitename','','Golf Management','2018-03-20 04:02:31','2018-03-20 04:10:21'),(2,'sitename_part1','','Golf','2018-03-20 04:02:31','2018-03-20 04:10:21'),(3,'sitename_part2','','Management','2018-03-20 04:02:31','2018-03-20 04:10:21'),(4,'sitename_short','','GM','2018-03-20 04:02:31','2018-03-20 04:10:21'),(5,'site_description','','Golf Management is an admin panel for golf.','2018-03-20 04:02:31','2018-03-20 04:10:21'),(6,'sidebar_search','','0','2018-03-20 04:02:31','2018-03-20 04:10:21'),(7,'show_messages','','0','2018-03-20 04:02:31','2018-03-20 04:10:21'),(8,'show_notifications','','0','2018-03-20 04:02:31','2018-03-20 04:10:21'),(9,'show_tasks','','0','2018-03-20 04:02:31','2018-03-20 04:10:21'),(10,'show_rightsidebar','','0','2018-03-20 04:02:31','2018-03-20 04:10:21'),(11,'skin','','skin-white','2018-03-20 04:02:31','2018-03-20 04:10:21'),(12,'layout','','fixed','2018-03-20 04:02:31','2018-03-20 04:10:21'),(13,'default_email','','test@example.com','2018-03-20 04:02:31','2018-03-20 04:10:21');
/*!40000 ALTER TABLE `la_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `la_menus`
--

DROP TABLE IF EXISTS `la_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `la_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `hierarchy` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `la_menus`
--

LOCK TABLES `la_menus` WRITE;
/*!40000 ALTER TABLE `la_menus` DISABLE KEYS */;
INSERT INTO `la_menus` VALUES (2,'Users','users','fa-group','module',0,1,'2018-03-20 04:02:30','2018-03-20 04:05:50'),(6,'Roles','roles','fa-user-plus','module',0,3,'2018-03-20 04:02:30','2018-03-20 04:05:55'),(9,'Academies','academies','fa fa-cube','module',0,2,'2018-03-20 04:04:41','2018-03-20 04:05:55'),(10,'Courses','courses','fa fa-cube','module',0,0,'2018-03-20 04:06:55','2018-03-20 04:06:55'),(11,'Chapters','chapters','fa fa-cube','module',0,0,'2018-03-20 04:07:25','2018-03-20 04:07:25'),(12,'Plans','plans','fa fa-cube','module',0,0,'2018-03-20 04:08:52','2018-03-20 04:08:52'),(13,'Skills','skills','fa fa-cube','module',0,0,'2018-03-20 04:09:39','2018-03-20 04:09:39'),(14,'Messages','messages','fa fa-cube','module',0,0,'2018-03-20 09:35:56','2018-03-20 09:35:56');
/*!40000 ALTER TABLE `la_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `from` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `messages_from_foreign` (`from`),
  CONSTRAINT `messages_from_foreign` FOREIGN KEY (`from`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,NULL,'2018-03-20 09:37:31','2018-03-20 09:37:31','To admin','abcde',2);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_05_26_050000_create_modules_table',1),('2014_05_26_055000_create_module_field_types_table',1),('2014_05_26_060000_create_module_fields_table',1),('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2014_12_01_000000_create_uploads_table',1),('2016_05_26_064006_create_departments_table',1),('2016_05_26_064007_create_employees_table',1),('2016_05_26_064446_create_roles_table',1),('2016_07_05_115343_create_role_user_table',1),('2016_07_06_140637_create_organizations_table',1),('2016_07_07_134058_create_backups_table',1),('2016_07_07_134058_create_menus_table',1),('2016_09_10_163337_create_permissions_table',1),('2016_09_10_163520_create_permission_role_table',1),('2016_09_22_105958_role_module_fields_table',1),('2016_09_22_110008_role_module_table',1),('2016_10_06_115413_create_la_configs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_field_types`
--

DROP TABLE IF EXISTS `module_field_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_field_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_field_types`
--

LOCK TABLES `module_field_types` WRITE;
/*!40000 ALTER TABLE `module_field_types` DISABLE KEYS */;
INSERT INTO `module_field_types` VALUES (1,'Address','2018-03-20 04:02:29','2018-03-20 04:02:29'),(2,'Checkbox','2018-03-20 04:02:29','2018-03-20 04:02:29'),(3,'Currency','2018-03-20 04:02:29','2018-03-20 04:02:29'),(4,'Date','2018-03-20 04:02:29','2018-03-20 04:02:29'),(5,'Datetime','2018-03-20 04:02:29','2018-03-20 04:02:29'),(6,'Decimal','2018-03-20 04:02:29','2018-03-20 04:02:29'),(7,'Dropdown','2018-03-20 04:02:29','2018-03-20 04:02:29'),(8,'Email','2018-03-20 04:02:29','2018-03-20 04:02:29'),(9,'File','2018-03-20 04:02:29','2018-03-20 04:02:29'),(10,'Float','2018-03-20 04:02:29','2018-03-20 04:02:29'),(11,'HTML','2018-03-20 04:02:29','2018-03-20 04:02:29'),(12,'Image','2018-03-20 04:02:29','2018-03-20 04:02:29'),(13,'Integer','2018-03-20 04:02:29','2018-03-20 04:02:29'),(14,'Mobile','2018-03-20 04:02:29','2018-03-20 04:02:29'),(15,'Multiselect','2018-03-20 04:02:29','2018-03-20 04:02:29'),(16,'Name','2018-03-20 04:02:29','2018-03-20 04:02:29'),(17,'Password','2018-03-20 04:02:29','2018-03-20 04:02:29'),(18,'Radio','2018-03-20 04:02:29','2018-03-20 04:02:29'),(19,'String','2018-03-20 04:02:29','2018-03-20 04:02:29'),(20,'Taginput','2018-03-20 04:02:29','2018-03-20 04:02:29'),(21,'Textarea','2018-03-20 04:02:29','2018-03-20 04:02:29'),(22,'TextField','2018-03-20 04:02:29','2018-03-20 04:02:29'),(23,'URL','2018-03-20 04:02:29','2018-03-20 04:02:29'),(24,'Files','2018-03-20 04:02:29','2018-03-20 04:02:29');
/*!40000 ALTER TABLE `module_field_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_fields`
--

DROP TABLE IF EXISTS `module_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) unsigned NOT NULL,
  `field_type` int(10) unsigned NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_fields_module_foreign` (`module`),
  KEY `module_fields_field_type_foreign` (`field_type`),
  CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_fields`
--

LOCK TABLES `module_fields` WRITE;
/*!40000 ALTER TABLE `module_fields` DISABLE KEYS */;
INSERT INTO `module_fields` VALUES (1,'name','Name',1,16,0,'',5,250,1,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(2,'context_id','Context',1,13,0,'0',0,0,0,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(3,'email','Email',1,8,1,'',0,250,0,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(4,'password','Password',1,17,0,'',6,250,1,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(5,'type','User Type',1,7,0,'Employee',0,0,0,'[\"Employee\",\"Client\"]',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(6,'name','Name',2,16,0,'',5,250,1,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(7,'path','Path',2,19,0,'',0,250,0,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(8,'extension','Extension',2,19,0,'',0,20,0,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(9,'caption','Caption',2,19,0,'',0,250,0,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(10,'user_id','Owner',2,7,0,'1',0,0,0,'@users',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(11,'hash','Hash',2,19,0,'',0,250,0,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(12,'public','Is Public',2,2,0,'0',0,0,0,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(13,'name','Name',3,16,1,'',1,250,1,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(14,'tags','Tags',3,20,0,'[]',0,0,0,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(15,'color','Color',3,19,0,'',0,50,1,'',0,'2018-03-20 04:02:29','2018-03-20 04:02:29'),(16,'name','Name',4,16,0,'',5,250,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(17,'designation','Designation',4,19,0,'',0,50,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(18,'gender','Gender',4,18,0,'Male',0,0,1,'[\"Male\",\"Female\"]',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(19,'mobile','Mobile',4,14,0,'',10,20,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(20,'mobile2','Alternative Mobile',4,14,0,'',10,20,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(21,'email','Email',4,8,1,'',5,250,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(22,'dept','Department',4,7,0,'0',0,0,1,'@departments',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(23,'city','City',4,19,0,'',0,50,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(24,'address','Address',4,1,0,'',0,1000,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(25,'about','About',4,19,0,'',0,0,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(26,'date_birth','Date of Birth',4,4,0,'1990-01-01',0,0,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(27,'date_hire','Hiring Date',4,4,0,'date(\'Y-m-d\')',0,0,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(28,'date_left','Resignation Date',4,4,0,'1990-01-01',0,0,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(29,'salary_cur','Current Salary',4,6,0,'0.0',0,2,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(30,'name','Name',5,16,1,'',1,250,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(31,'display_name','Display Name',5,19,0,'',0,250,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(32,'description','Description',5,21,0,'',0,1000,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(33,'parent','Parent Role',5,7,0,'1',0,0,0,'@roles',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(34,'dept','Department',5,7,0,'1',0,0,0,'@departments',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(35,'name','Name',6,16,1,'',5,250,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(36,'email','Email',6,8,1,'',0,250,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(37,'phone','Phone',6,14,0,'',0,20,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(38,'website','Website',6,23,0,'http://',0,250,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(39,'assigned_to','Assigned to',6,7,0,'0',0,0,0,'@employees',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(40,'connect_since','Connected Since',6,4,0,'date(\'Y-m-d\')',0,0,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(41,'address','Address',6,1,0,'',0,1000,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(42,'city','City',6,19,0,'',0,250,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(43,'description','Description',6,21,0,'',0,1000,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(44,'profile_image','Profile Image',6,12,0,'',0,250,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(45,'profile','Company Profile',6,9,0,'',0,250,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(46,'name','Name',7,16,1,'',0,250,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(47,'file_name','File Name',7,19,1,'',0,250,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(48,'backup_size','File Size',7,19,0,'0',0,10,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(49,'name','Name',8,16,1,'',1,250,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(50,'display_name','Display Name',8,19,0,'',0,250,1,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(51,'description','Description',8,21,0,'',0,1000,0,'',0,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(52,'name','Academy Name',9,19,0,'',0,256,1,'',0,'2018-03-20 04:04:35','2018-03-20 04:04:35'),(53,'name','Course Name',10,19,0,'',0,256,1,'',2,'2018-03-20 04:06:51','2018-03-20 09:32:00'),(54,'name','Chapter Name',11,19,0,'',0,256,1,'',0,'2018-03-20 04:07:22','2018-03-20 04:07:22'),(55,'name','Plan Name',12,19,0,'',0,256,1,'',0,'2018-03-20 04:08:49','2018-03-20 04:08:49'),(56,'name`','Skill Name',13,19,0,'',0,256,1,'',0,'2018-03-20 04:09:36','2018-03-20 04:09:36'),(57,'address','Address',9,1,0,'',0,256,0,'',0,'2018-03-20 04:12:59','2018-03-20 04:12:59'),(59,'academy_id','Academy',10,7,0,'',0,0,1,'@academies',1,'2018-03-20 04:29:55','2018-03-20 09:32:10'),(60,'title','Title',14,19,0,'',0,256,1,'',0,'2018-03-20 09:34:52','2018-03-20 09:34:52'),(61,'content','Content',14,11,0,'',0,0,0,'',0,'2018-03-20 09:35:16','2018-03-20 09:39:16'),(62,'from','User',14,7,0,'',0,0,1,'@users',0,'2018-03-20 09:35:44','2018-03-20 09:35:44');
/*!40000 ALTER TABLE `module_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'Users','Users','users','name','User','UsersController','fa-group',1,'2018-03-20 04:02:29','2018-03-20 04:02:31'),(2,'Uploads','Uploads','uploads','name','Upload','UploadsController','fa-files-o',1,'2018-03-20 04:02:29','2018-03-20 04:02:31'),(3,'Departments','Departments','departments','name','Department','DepartmentsController','fa-tags',1,'2018-03-20 04:02:29','2018-03-20 04:02:31'),(4,'Employees','Employees','employees','name','Employee','EmployeesController','fa-group',1,'2018-03-20 04:02:30','2018-03-20 04:02:31'),(5,'Roles','Roles','roles','name','Role','RolesController','fa-user-plus',1,'2018-03-20 04:02:30','2018-03-20 04:02:31'),(6,'Organizations','Organizations','organizations','name','Organization','OrganizationsController','fa-university',1,'2018-03-20 04:02:30','2018-03-20 04:02:31'),(7,'Backups','Backups','backups','name','Backup','BackupsController','fa-hdd-o',1,'2018-03-20 04:02:30','2018-03-20 04:02:31'),(8,'Permissions','Permissions','permissions','name','Permission','PermissionsController','fa-magic',1,'2018-03-20 04:02:30','2018-03-20 04:02:31'),(9,'Academies','Academies','academies','name','Academy','AcademiesController','fa-cube',1,'2018-03-20 04:04:05','2018-03-20 04:04:41'),(10,'Courses','Courses','courses','name','Course','CoursesController','fa-cube',1,'2018-03-20 04:06:35','2018-03-20 04:06:55'),(11,'Chapters','Chapters','chapters','name','Chapter','ChaptersController','fa-cube',1,'2018-03-20 04:07:10','2018-03-20 04:07:25'),(12,'Plans','Plans','plans','name','Plan','PlansController','fa-cube',1,'2018-03-20 04:08:33','2018-03-20 04:08:52'),(13,'Skills','Skills','skills','name`','Skill','SkillsController','fa-cube',1,'2018-03-20 04:09:23','2018-03-20 04:09:39'),(14,'Messages','Messages','messages','title','Message','MessagesController','fa-cube',1,'2018-03-20 09:34:29','2018-03-20 09:35:56');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `assigned_to` int(10) unsigned NOT NULL DEFAULT '1',
  `connect_since` date NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `organizations_name_unique` (`name`),
  UNIQUE KEY `organizations_email_unique` (`email`),
  KEY `organizations_assigned_to_foreign` (`assigned_to`),
  CONSTRAINT `organizations_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'ADMIN_PANEL','Admin Panel','Admin Panel Permission',NULL,'2018-03-20 04:02:31','2018-03-20 04:02:31');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_module`
--

DROP TABLE IF EXISTS `role_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_module_role_id_foreign` (`role_id`),
  KEY `role_module_module_id_foreign` (`module_id`),
  CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_module`
--

LOCK TABLES `role_module` WRITE;
/*!40000 ALTER TABLE `role_module` DISABLE KEYS */;
INSERT INTO `role_module` VALUES (1,1,1,1,1,1,1,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(2,1,2,1,1,1,1,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(3,1,3,1,1,1,1,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(4,1,4,1,1,1,1,'2018-03-20 04:02:30','2018-03-20 04:02:30'),(5,1,5,1,1,1,1,'2018-03-20 04:02:31','2018-03-20 04:02:31'),(6,1,6,1,1,1,1,'2018-03-20 04:02:31','2018-03-20 04:02:31'),(7,1,7,1,1,1,1,'2018-03-20 04:02:31','2018-03-20 04:02:31'),(8,1,8,1,1,1,1,'2018-03-20 04:02:31','2018-03-20 04:02:31'),(9,1,9,1,1,1,1,'2018-03-20 04:04:41','2018-03-20 04:04:41'),(10,1,10,1,1,1,1,'2018-03-20 04:06:55','2018-03-20 04:06:55'),(11,1,11,1,1,1,1,'2018-03-20 04:07:25','2018-03-20 04:07:25'),(12,1,12,1,1,1,1,'2018-03-20 04:08:52','2018-03-20 04:08:52'),(13,1,13,1,1,1,1,'2018-03-20 04:09:39','2018-03-20 04:09:39'),(14,1,14,1,1,1,1,'2018-03-20 09:35:56','2018-03-20 09:35:56');
/*!40000 ALTER TABLE `role_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_module_fields`
--

DROP TABLE IF EXISTS `role_module_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_module_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_module_fields_role_id_foreign` (`role_id`),
  KEY `role_module_fields_field_id_foreign` (`field_id`),
  CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_module_fields`
--

LOCK TABLES `role_module_fields` WRITE;
/*!40000 ALTER TABLE `role_module_fields` DISABLE KEYS */;
INSERT INTO `role_module_fields` VALUES (1,1,1,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(2,1,2,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(3,1,3,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(4,1,4,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(5,1,5,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(6,1,6,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(7,1,7,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(8,1,8,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(9,1,9,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(10,1,10,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(11,1,11,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(12,1,12,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(13,1,13,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(14,1,14,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(15,1,15,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(16,1,16,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(17,1,17,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(18,1,18,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(19,1,19,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(20,1,20,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(21,1,21,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(22,1,22,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(23,1,23,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(24,1,24,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(25,1,25,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(26,1,26,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(27,1,27,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(28,1,28,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(29,1,29,'write','2018-03-20 04:02:30','2018-03-20 04:02:30'),(30,1,30,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(31,1,31,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(32,1,32,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(33,1,33,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(34,1,34,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(35,1,35,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(36,1,36,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(37,1,37,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(38,1,38,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(39,1,39,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(40,1,40,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(41,1,41,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(42,1,42,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(43,1,43,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(44,1,44,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(45,1,45,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(46,1,46,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(47,1,47,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(48,1,48,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(49,1,49,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(50,1,50,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(51,1,51,'write','2018-03-20 04:02:31','2018-03-20 04:02:31'),(52,1,52,'write','2018-03-20 04:04:35','2018-03-20 04:04:35'),(53,1,53,'write','2018-03-20 04:06:52','2018-03-20 04:06:52'),(54,1,54,'write','2018-03-20 04:07:22','2018-03-20 04:07:22'),(55,1,55,'write','2018-03-20 04:08:49','2018-03-20 04:08:49'),(56,1,56,'write','2018-03-20 04:09:36','2018-03-20 04:09:36'),(57,1,57,'write','2018-03-20 04:12:59','2018-03-20 04:12:59'),(59,1,59,'write','2018-03-20 04:29:55','2018-03-20 04:29:55'),(60,1,60,'write','2018-03-20 09:34:52','2018-03-20 09:34:52'),(61,1,61,'write','2018-03-20 09:35:16','2018-03-20 09:35:16'),(62,1,62,'write','2018-03-20 09:35:44','2018-03-20 09:35:44');
/*!40000 ALTER TABLE `role_module_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT '1',
  `dept` int(10) unsigned NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`),
  KEY `roles_parent_foreign` (`parent`),
  KEY `roles_dept_foreign` (`dept`),
  CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'SUPER_ADMIN','Super Admin','Full Access Role',1,1,NULL,'2018-03-20 04:02:30','2018-03-20 04:02:30');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name``` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uploads_user_id_foreign` (`user_id`),
  CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploads`
--

LOCK TABLES `uploads` WRITE;
/*!40000 ALTER TABLE `uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin',1,'admin@golf.com','$2y$10$QfL7TJyUxMpmGoeg5Y.ULeMAUcI.aMFghVpXkU.dPPBw2fIw1JyXO','Employee',NULL,NULL,'2018-03-20 04:02:42','2018-03-20 04:02:42'),(2,'Super Champion',1,'superchampion0521@gmail.com','$2y$10$unALZXRjCBaD7UnGyQaX3e.3oqKyLEteEUA5TUNPkvDF3aNSa5Mde','Client',NULL,NULL,'2018-03-20 09:37:15','2018-03-20 09:37:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-20 17:41:01
