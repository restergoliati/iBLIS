-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: iblis
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facilities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (1,'Bwaila Hospital','2015-11-06 07:51:09','2015-11-06 07:51:09'),(2,'Kawale Health Centre','2015-11-06 07:51:23','2016-03-01 13:40:21'),(3,'Dowa District Hospital','2015-11-06 07:51:38','2015-11-06 07:51:38'),(4,'Light House','2015-11-06 07:51:56','2016-03-01 13:32:47'),(5,'Dedza District Hospital','2016-03-01 13:31:13','2016-03-01 13:31:13'),(6,'Ntcheu District Hospital','2016-03-01 13:31:37','2016-03-01 13:31:37'),(7,'Kasungu District Hospital','2016-03-01 13:31:44','2016-03-01 13:31:44'),(8,'Mchinji District Hospital','2016-03-01 13:31:52','2016-03-01 13:31:52'),(9,'Nkhotakota District Hospital','2016-03-01 13:32:03','2016-03-01 13:32:03'),(10,'Ntchisi District Hospital','2016-03-01 13:32:15','2016-03-01 13:32:15'),(11,'Salima District Hospital','2016-03-01 13:32:24','2016-03-01 13:32:24'),(12,'Baylor COM','2016-03-01 13:32:59','2016-03-01 13:33:11'),(13,'Chitipa District Hospital','2016-03-01 13:33:27','2016-03-01 13:33:27'),(14,'Karonga District Hospital','2016-03-01 13:33:34','2016-03-01 13:33:34'),(15,'Mzimba District Hospital','2016-03-01 13:33:40','2016-03-01 13:33:49'),(16,'Mzuzu Central Hospital','2016-03-01 13:34:10','2016-03-01 13:34:10'),(17,'Nkhatabay District Hospital','2016-03-01 13:34:31','2016-03-01 13:34:31'),(18,'Rumphi District Hospital','2016-03-01 13:34:54','2016-03-01 13:34:54'),(19,'Balaka District Hospital','2016-03-01 13:35:07','2016-03-01 13:35:07'),(20,'Chikwawa District Hospital','2016-03-01 13:35:17','2016-03-01 13:35:17'),(21,'Chiradzulo District Hospital','2016-03-01 13:35:48','2016-03-01 13:35:48'),(22,'Machinga District Hospital','2016-03-01 13:36:03','2016-03-01 13:36:03'),(23,'Mulanje District Hospital','2016-03-01 13:36:16','2016-03-01 13:36:16'),(24,'Mwanza District Hospital','2016-03-01 13:36:29','2016-03-01 13:36:29'),(25,'Nsanje District Hospital','2016-03-01 13:36:36','2016-03-01 13:36:36'),(26,'QECH','2016-03-01 13:36:49','2016-03-01 13:36:49'),(27,'Thyolo District Hospital','2016-03-01 13:37:31','2016-03-01 13:37:31'),(28,'ZCH','2016-03-01 13:37:46','2016-03-01 13:37:46'),(29,'Kamuzu Barracks','2016-03-01 13:38:26','2016-03-01 13:38:35'),(30,'Maula Prison','2016-03-01 13:38:49','2016-03-01 13:38:49');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wards`
--

DROP TABLE IF EXISTS `wards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wards`
--

LOCK TABLES `wards` WRITE;
/*!40000 ALTER TABLE `wards` DISABLE KEYS */;
INSERT INTO `wards` VALUES (1,'CWC','2015-11-03 11:36:20','2016-03-01 13:06:47'),(2,'CW HDU','2015-11-03 12:32:37','2016-03-01 13:17:12'),(3,'CWB','2015-11-03 12:32:47','2016-03-01 13:06:36'),(4,'OPD 2','2015-11-04 10:00:57','2015-11-04 10:00:57'),(5,'Facilities','2015-11-04 10:09:30','2015-11-04 10:09:30'),(6,'OPD 1','2015-11-05 19:58:10','2015-11-05 19:58:10'),(7,'CWA','2015-11-06 07:50:05','2016-03-01 13:06:23'),(8,'Facilities','2016-01-26 10:55:32','2016-01-26 10:55:32'),(9,'Theatre','2016-03-01 12:50:08','2016-03-01 12:50:08'),(10,'Dialysis Unit','2016-03-01 12:50:19','2016-03-01 12:50:19'),(11,'ICU','2016-03-01 12:50:43','2016-03-01 12:50:43'),(12,'1A','2016-03-01 12:50:53','2016-03-01 12:50:53'),(13,'1B','2016-03-01 12:50:58','2016-03-01 12:50:58'),(14,'2A','2016-03-01 12:51:03','2016-03-01 12:51:03'),(15,'2B','2016-03-01 12:51:07','2016-03-01 12:51:07'),(16,'Oncology','2016-03-01 12:51:16','2016-03-01 12:51:16'),(17,'3A','2016-03-01 12:53:28','2016-03-01 12:53:28'),(18,'3B','2016-03-01 12:53:33','2016-03-01 12:53:33'),(19,'4A','2016-03-01 13:01:02','2016-03-01 13:01:02'),(20,'4B','2016-03-01 13:01:15','2016-03-01 13:01:15'),(21,'CWA EZ','2016-03-01 13:07:37','2016-03-01 13:16:59'),(22,'CW Red Zone','2016-03-01 13:08:11','2016-03-01 13:16:30'),(23,'Skin','2016-03-01 13:08:19','2016-03-01 13:08:19'),(24,'CSSD','2016-03-01 13:08:32','2016-03-01 13:08:32'),(25,'Dental','2016-03-01 13:08:44','2016-03-01 13:08:44'),(26,'Eye','2016-03-01 13:08:48','2016-03-01 13:08:48'),(27,'Under 5 Clinic','2016-03-01 13:09:21','2016-03-01 13:09:21'),(29,'7B','2016-03-01 13:12:29','2016-03-01 13:12:29'),(30,'7C','2016-03-01 13:12:33','2016-03-01 13:12:33'),(31,'Mortuary','2016-03-01 13:13:03','2016-03-01 13:13:03'),(32,'ENT Clinic','2016-03-01 13:13:19','2016-03-01 13:17:35'),(33,'Anesthesia','2016-03-01 13:13:51','2016-03-01 13:13:51'),(34,'Casulty','2016-03-01 13:14:25','2016-03-01 13:14:25'),(35,'EM OPD','2016-03-01 13:15:18','2016-03-01 13:15:18'),(36,'EM LW','2016-03-01 13:15:40','2016-03-01 13:18:11'),(37,'EM HDU','2016-03-01 13:16:01','2016-03-01 13:16:01'),(38,'EM THEATRE','2016-03-01 13:18:33','2016-03-01 13:18:33'),(39,'EM Nursery','2016-03-01 13:19:01','2016-03-01 13:19:01'),(40,'GYNAE','2016-03-01 13:19:20','2016-03-01 13:19:20'),(41,'ANC','2016-03-01 13:19:44','2016-03-01 13:19:44'),(42,'PNW','2016-03-01 13:20:17','2016-03-01 13:20:17'),(43,'Paying Ward','2016-03-01 13:20:26','2016-03-01 13:20:26'),(44,'MSS','2016-03-01 13:20:47','2016-03-01 13:20:47'),(45,'HDU','2016-03-01 13:21:19','2016-03-01 13:21:19');
/*!40000 ALTER TABLE `wards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit_types`
--

DROP TABLE IF EXISTS `visit_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visit_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit_types`
--

LOCK TABLES `visit_types` WRITE;
/*!40000 ALTER TABLE `visit_types` DISABLE KEYS */;
INSERT INTO `visit_types` VALUES (2,'In Patient','2015-11-03 11:05:21','2015-11-03 11:05:21'),(13,'Out Patient','2015-11-03 14:22:16','2015-11-03 14:22:16'),(15,'Referral','2015-11-04 10:01:45','2015-11-04 10:01:45');
/*!40000 ALTER TABLE `visit_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visittype_wards`
--

DROP TABLE IF EXISTS `visittype_wards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visittype_wards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `visit_type_id` int(10) unsigned NOT NULL,
  `ward_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visittype_wards_visit_type_id_foreign` (`visit_type_id`),
  KEY `visittype_wards_ward_id_foreign` (`ward_id`),
  CONSTRAINT `visittype_wards_visit_type_id_foreign` FOREIGN KEY (`visit_type_id`) REFERENCES `visit_types` (`id`),
  CONSTRAINT `visittype_wards_ward_id_foreign` FOREIGN KEY (`ward_id`) REFERENCES `wards` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visittype_wards`
--

LOCK TABLES `visittype_wards` WRITE;
/*!40000 ALTER TABLE `visittype_wards` DISABLE KEYS */;
INSERT INTO `visittype_wards` VALUES (50,15,5),(61,2,12),(62,2,13),(63,2,14),(64,2,15),(65,2,17),(66,2,18),(67,2,19),(68,2,20),(69,2,33),(70,2,34),(71,2,24),(72,2,2),(73,2,22),(74,2,7),(75,2,21),(76,2,3),(77,2,1),(78,2,10),(79,2,36),(80,2,39),(81,2,38),(82,2,40),(83,2,45),(84,2,11),(85,2,31),(86,2,44),(87,2,16),(88,2,43),(89,2,42),(90,2,9),(91,13,29),(92,13,30),(93,13,41),(94,13,25),(95,13,35),(96,13,32),(97,13,26),(98,13,6),(99,13,4),(100,13,23),(101,13,27);
/*!40000 ALTER TABLE `visittype_wards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_types`
--

DROP TABLE IF EXISTS `test_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test_category_id` int(10) unsigned NOT NULL,
  `targetTAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderable_test` int(11) DEFAULT NULL,
  `prevalence_threshold` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accredited` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `test_types_test_category_id_foreign` (`test_category_id`),
  CONSTRAINT `test_types_test_category_id_foreign` FOREIGN KEY (`test_category_id`) REFERENCES `test_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_types`
--

LOCK TABLES `test_types` WRITE;
/*!40000 ALTER TABLE `test_types` DISABLE KEYS */;
INSERT INTO `test_types` VALUES (1,'TB Microscopic Exam','',2,'20 min',NULL,'',NULL,'2016-03-01 14:48:47','2015-11-03 13:49:09','2016-03-01 14:48:47'),(2,'GeneXpert','',2,'6 hrs',NULL,'',NULL,'2016-03-01 15:36:36','2015-11-04 08:59:00','2016-03-01 15:36:36'),(3,'Gram Stain','',2,'1 hr',1,'',NULL,NULL,'2015-11-05 12:29:16','2016-03-01 14:25:22'),(4,'Culture & Sensitivity','',2,'7 days',1,'',NULL,NULL,'2015-11-06 05:24:20','2015-12-09 14:52:03'),(5,'Cell Count','',2,'1 hr',1,'',NULL,NULL,'2015-11-06 07:30:59','2016-03-01 14:01:33'),(6,'India Ink','',2,'1 hr',1,'',NULL,NULL,'2015-11-06 07:32:32','2016-03-01 14:27:05'),(7,'Differential','',2,'1 hr',1,'',NULL,NULL,'2015-11-06 07:43:01','2016-03-01 14:13:17'),(8,'ZN Stain','',2,'30 min',1,'',NULL,NULL,'2015-11-12 21:43:18','2015-11-12 21:43:18'),(9,'Wet prep','',2,'30 min',NULL,'',NULL,'2016-03-01 15:23:07','2015-11-12 21:45:55','2016-03-01 15:23:07'),(10,'TB Tests','',2,'5 hrs',1,'',NULL,NULL,'2015-11-12 21:54:38','2016-03-01 14:48:32'),(11,'Urine Macroscopy','',1,'30 min',1,'',NULL,NULL,'2015-12-10 07:59:44','2015-12-10 11:11:59'),(12,'Urine Microscopy','',1,'30 min',1,'',NULL,NULL,'2015-12-10 08:06:20','2015-12-10 11:11:51'),(13,'Urine Chemistries','',1,'30 min',1,'',NULL,NULL,'2015-12-10 08:59:57','2015-12-10 11:12:09'),(14,'Stool Analysis','',1,'30 min',1,'',NULL,NULL,'2015-12-10 09:17:47','2015-12-10 09:17:47'),(15,'Malaria Screening','',1,'30 min',1,'',NULL,NULL,'2015-12-10 09:32:24','2015-12-10 09:32:24'),(16,'Blood Parasites Screen','',1,'1 hr',1,'',NULL,NULL,'2015-12-10 09:33:58','2016-03-01 13:55:44'),(17,'Semen Analysis','',1,'30 min',1,'',NULL,NULL,'2015-12-10 09:41:45','2015-12-10 09:41:45'),(18,'HVS analysis','',1,'30 min',1,'',NULL,NULL,'2015-12-10 09:48:54','2015-12-22 08:56:48'),(19,'Syphilis Test','',4,'30 min',1,'',NULL,NULL,'2015-12-22 07:32:17','2015-12-22 07:32:30'),(20,'Hepatitis B Test','',4,'30 min',1,'',NULL,NULL,'2015-12-22 07:35:48','2015-12-22 07:35:48'),(21,'Hepatitis C Test','',4,'30 min',1,'',NULL,NULL,'2015-12-22 07:37:11','2015-12-22 07:37:11'),(22,'Rheumatoid Factor Test','',4,'30 min',NULL,'',NULL,NULL,'2015-12-22 07:39:16','2016-03-01 14:32:45'),(23,'Cryptococcus Antigen Test','',4,'30 min',NULL,'',NULL,NULL,'2015-12-22 07:42:07','2016-03-01 14:07:39'),(24,'Anti Streptolysis O','',4,'30 min',NULL,'',NULL,NULL,'2015-12-22 08:48:24','2016-03-01 13:54:42'),(25,'C-reactive protein','',4,'30 min',1,'',NULL,NULL,'2015-12-22 08:56:26','2015-12-22 08:56:26'),(26,'Measles','',4,'1 wk',1,'',NULL,NULL,'2015-12-22 09:00:58','2016-03-01 14:32:29'),(27,'Rubella','',4,'1 wk',1,'',NULL,NULL,'2015-12-22 09:03:08','2016-03-01 14:33:18'),(28,'CD4','',8,'30 min',1,'',NULL,NULL,'2015-12-22 09:14:27','2015-12-22 09:14:27'),(29,'ABO Blood Grouping','',5,'30 min',1,'',NULL,NULL,'2015-12-22 10:20:21','2015-12-22 12:55:31'),(30,'Cross-match','',5,'1 hr',1,'',NULL,NULL,'2015-12-22 10:40:01','2016-03-01 14:06:27'),(31,'Transfusion Outcome','',5,'30 min',NULL,'',NULL,'2016-03-01 14:52:32','2015-12-22 10:44:26','2016-03-01 14:52:32'),(32,'Liver Function Tests','',7,'2 hrs',1,'',NULL,NULL,'2016-02-03 13:17:37','2016-03-01 14:29:15'),(33,'Renal Function Test','',7,'2 hrs',1,'',NULL,NULL,'2016-02-03 13:45:15','2016-03-01 14:58:49'),(34,'Lipogram','',7,'2 hrs',1,'',NULL,NULL,'2016-02-03 13:56:21','2016-03-01 14:28:01'),(35,'FBC','',3,'2 hrs',1,'',NULL,NULL,'2016-02-26 08:07:18','2016-03-01 14:22:56'),(36,'Electrolytes','',7,'2 hrs',1,'',NULL,NULL,'2016-03-01 08:01:00','2016-03-01 14:18:26'),(37,'Enzymes','',7,'30 min',1,'',NULL,NULL,'2016-03-01 08:08:26','2016-03-01 08:08:26'),(38,'Glucose','',7,'2 hrs',1,'',NULL,NULL,'2016-03-01 15:05:08','2016-03-01 15:05:08'),(39,'Prothrombin Time','',3,'2 hrs',1,'',NULL,NULL,'2016-03-04 14:35:22','2016-03-04 14:35:22'),(40,'APTT','',3,'2 hrs',1,'',NULL,NULL,'2016-03-04 14:37:14','2016-03-04 14:37:14'),(41,'INR','',3,'2 hrs',1,'',NULL,NULL,'2016-03-04 14:38:39','2016-03-04 14:38:39'),(42,'ESR','',3,'2 hrs',1,'',NULL,NULL,'2016-03-04 14:41:30','2016-03-04 14:41:30'),(43,'Sickling Screen','',3,'24hrs',1,'',NULL,NULL,'2016-03-04 14:42:54','2016-03-04 14:42:54'),(44,'Pregnancy Test','',4,'30 min',1,'',NULL,NULL,'2016-03-04 14:44:10','2016-03-04 14:44:10'),(45,'Manual Differential & Cell Morphology','',3,'48 hrs',1,'',NULL,NULL,'2016-03-04 15:08:01','2016-03-04 15:08:01');
/*!40000 ALTER TABLE `test_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_statuses`
--

DROP TABLE IF EXISTS `test_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_statuses` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `test_phase_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test_statuses_test_phase_id_foreign` (`test_phase_id`),
  CONSTRAINT `test_statuses_test_phase_id_foreign` FOREIGN KEY (`test_phase_id`) REFERENCES `test_phases` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_statuses`
--

LOCK TABLES `test_statuses` WRITE;
/*!40000 ALTER TABLE `test_statuses` DISABLE KEYS */;
INSERT INTO `test_statuses` VALUES (1,'not-received',1),(2,'pending',1),(3,'started',2),(4,'completed',3),(5,'verified',3),(6,'voided',2),(7,'not-done',2);
/*!40000 ALTER TABLE `test_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testtype_specimentypes`
--

DROP TABLE IF EXISTS `testtype_specimentypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testtype_specimentypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_type_id` int(10) unsigned NOT NULL,
  `specimen_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `testtype_specimentypes_test_type_id_specimen_type_id_unique` (`test_type_id`,`specimen_type_id`),
  KEY `testtype_specimentypes_specimen_type_id_foreign` (`specimen_type_id`),
  CONSTRAINT `testtype_specimentypes_specimen_type_id_foreign` FOREIGN KEY (`specimen_type_id`) REFERENCES `specimen_types` (`id`),
  CONSTRAINT `testtype_specimentypes_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testtype_specimentypes`
--

LOCK TABLES `testtype_specimentypes` WRITE;
/*!40000 ALTER TABLE `testtype_specimentypes` DISABLE KEYS */;
INSERT INTO `testtype_specimentypes` VALUES (310,1,1),(441,2,1),(464,3,1),(457,3,2),(455,3,3),(462,3,4),(454,3,5),(460,3,6),(461,3,7),(458,3,8),(456,3,9),(463,3,10),(465,3,11),(466,3,12),(459,3,13),(386,4,1),(379,4,2),(377,4,3),(384,4,4),(376,4,5),(382,4,6),(383,4,7),(380,4,8),(378,4,9),(385,4,10),(387,4,11),(388,4,12),(381,4,13),(468,5,2),(472,5,4),(467,5,5),(470,5,6),(471,5,7),(469,5,13),(413,6,2),(394,7,1),(390,7,2),(393,7,4),(389,7,5),(391,7,6),(392,7,7),(436,8,2),(440,8,4),(435,8,5),(438,8,6),(439,8,7),(437,8,13),(433,9,8),(432,9,9),(424,10,1),(264,11,12),(263,12,12),(428,13,12),(422,14,11),(416,15,3),(367,16,3),(429,17,15),(434,18,8),(423,19,3),(293,20,3),(295,21,3),(419,22,3),(375,23,3),(366,24,3),(368,25,3),(418,26,3),(420,27,3),(395,28,3),(297,29,3),(374,30,3),(288,31,3),(415,32,3),(425,33,3),(414,34,3),(473,35,3),(396,36,3),(397,37,3),(427,38,3),(474,39,3),(475,40,3),(476,41,3),(477,42,3),(478,43,3),(479,44,12),(480,45,3);
/*!40000 ALTER TABLE `testtype_specimentypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testtype_measures`
--

DROP TABLE IF EXISTS `testtype_measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testtype_measures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_type_id` int(10) unsigned NOT NULL,
  `measure_id` int(10) unsigned NOT NULL,
  `ordering` tinyint(4) DEFAULT NULL,
  `nesting` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `testtype_measures_test_type_id_measure_id_unique` (`test_type_id`,`measure_id`),
  KEY `testtype_measures_measure_id_foreign` (`measure_id`),
  CONSTRAINT `testtype_measures_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  CONSTRAINT `testtype_measures_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=727 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testtype_measures`
--

LOCK TABLES `testtype_measures` WRITE;
/*!40000 ALTER TABLE `testtype_measures` DISABLE KEYS */;
INSERT INTO `testtype_measures` VALUES (226,12,76,NULL,NULL),(227,12,77,NULL,NULL),(228,12,78,NULL,NULL),(229,12,79,NULL,NULL),(230,12,80,NULL,NULL),(231,12,81,NULL,NULL),(232,12,82,NULL,NULL),(233,11,74,NULL,NULL),(234,11,75,NULL,NULL),(299,31,132,NULL,NULL),(309,20,115,NULL,NULL),(311,21,116,NULL,NULL),(318,29,125,NULL,NULL),(349,1,52,NULL,NULL),(522,24,119,NULL,NULL),(523,16,99,NULL,NULL),(524,25,120,NULL,NULL),(527,30,126,NULL,NULL),(528,30,127,NULL,NULL),(529,30,128,NULL,NULL),(530,30,129,NULL,NULL),(531,30,130,NULL,NULL),(532,30,131,NULL,NULL),(533,23,118,NULL,NULL),(534,4,60,NULL,NULL),(535,7,65,NULL,NULL),(536,7,66,NULL,NULL),(537,7,73,NULL,NULL),(538,28,124,NULL,NULL),(539,28,177,NULL,NULL),(540,28,178,NULL,NULL),(541,28,179,NULL,NULL),(542,28,180,NULL,NULL),(543,36,185,NULL,NULL),(544,36,186,NULL,NULL),(545,36,187,NULL,NULL),(546,37,188,NULL,NULL),(547,37,189,NULL,NULL),(548,37,190,NULL,NULL),(549,37,191,NULL,NULL),(550,37,192,NULL,NULL),(551,37,193,NULL,NULL),(552,37,194,NULL,NULL),(553,37,195,NULL,NULL),(554,37,196,NULL,NULL),(555,37,197,NULL,NULL),(556,37,198,NULL,NULL),(557,37,199,NULL,NULL),(558,37,200,NULL,NULL),(594,6,63,NULL,NULL),(595,34,145,NULL,NULL),(596,34,146,NULL,NULL),(597,32,133,NULL,NULL),(598,32,134,NULL,NULL),(599,32,135,NULL,NULL),(600,32,136,NULL,NULL),(601,32,137,NULL,NULL),(602,32,138,NULL,NULL),(603,32,139,NULL,NULL),(604,32,140,NULL,NULL),(605,32,141,NULL,NULL),(606,15,96,NULL,NULL),(607,15,97,NULL,NULL),(608,15,98,NULL,NULL),(610,26,121,NULL,NULL),(611,22,117,NULL,NULL),(612,27,122,NULL,NULL),(620,14,93,NULL,NULL),(621,14,94,NULL,NULL),(622,14,95,NULL,NULL),(623,19,112,NULL,NULL),(624,19,113,NULL,NULL),(625,19,114,NULL,NULL),(626,10,201,NULL,NULL),(627,10,202,NULL,NULL),(628,10,203,NULL,NULL),(629,10,72,NULL,NULL),(630,33,142,NULL,NULL),(631,33,143,NULL,NULL),(633,38,204,NULL,NULL),(634,13,83,NULL,NULL),(635,13,84,NULL,NULL),(636,13,85,NULL,NULL),(637,13,87,NULL,NULL),(638,13,88,NULL,NULL),(639,13,89,NULL,NULL),(640,13,90,NULL,NULL),(641,13,91,NULL,NULL),(642,13,92,NULL,NULL),(643,17,100,NULL,NULL),(644,17,101,NULL,NULL),(645,17,102,NULL,NULL),(646,17,103,NULL,NULL),(647,17,104,NULL,NULL),(648,17,105,NULL,NULL),(649,17,106,NULL,NULL),(655,9,70,NULL,NULL),(656,9,71,NULL,NULL),(657,18,107,NULL,NULL),(658,18,108,NULL,NULL),(659,18,109,NULL,NULL),(660,18,110,NULL,NULL),(661,18,111,NULL,NULL),(662,8,69,NULL,NULL),(663,2,58,NULL,NULL),(664,2,184,NULL,NULL),(668,3,59,NULL,NULL),(669,3,67,NULL,NULL),(670,3,68,NULL,NULL),(671,5,61,NULL,NULL),(672,5,62,NULL,NULL),(673,35,169,NULL,NULL),(674,35,147,NULL,NULL),(675,35,148,NULL,NULL),(676,35,149,NULL,NULL),(677,35,150,NULL,NULL),(678,35,151,NULL,NULL),(679,35,152,NULL,NULL),(680,35,153,NULL,NULL),(681,35,154,NULL,NULL),(682,35,155,NULL,NULL),(683,35,156,NULL,NULL),(684,35,157,NULL,NULL),(685,35,158,NULL,NULL),(686,35,159,NULL,NULL),(687,35,160,NULL,NULL),(688,35,161,NULL,NULL),(689,35,162,NULL,NULL),(690,35,163,NULL,NULL),(691,35,164,NULL,NULL),(692,35,165,NULL,NULL),(693,35,166,NULL,NULL),(694,35,167,NULL,NULL),(695,35,168,NULL,NULL),(696,35,170,NULL,NULL),(697,35,171,NULL,NULL),(698,35,172,NULL,NULL),(699,35,173,NULL,NULL),(700,35,174,NULL,NULL),(701,35,175,NULL,NULL),(702,35,176,NULL,NULL),(703,39,205,NULL,NULL),(704,40,206,NULL,NULL),(705,41,207,NULL,NULL),(706,42,208,NULL,NULL),(707,43,209,NULL,NULL),(708,44,210,NULL,NULL),(709,45,211,NULL,NULL),(710,45,212,NULL,NULL),(711,45,213,NULL,NULL),(712,45,214,NULL,NULL),(713,45,215,NULL,NULL),(714,45,216,NULL,NULL),(715,45,217,NULL,NULL),(716,45,218,NULL,NULL),(717,45,219,NULL,NULL),(718,45,220,NULL,NULL),(719,45,221,NULL,NULL),(720,45,222,NULL,NULL),(721,45,223,NULL,NULL),(722,45,224,NULL,NULL),(723,45,225,NULL,NULL),(724,45,226,NULL,NULL),(725,45,227,NULL,NULL),(726,45,228,NULL,NULL);
/*!40000 ALTER TABLE `testtype_measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testtype_organisms`
--

DROP TABLE IF EXISTS `testtype_organisms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testtype_organisms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_type_id` int(10) unsigned NOT NULL,
  `organism_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `testtype_organisms_test_type_id_organism_id_unique` (`test_type_id`,`organism_id`),
  KEY `testtype_organisms_organism_id_foreign` (`organism_id`),
  CONSTRAINT `testtype_organisms_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`),
  CONSTRAINT `testtype_organisms_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testtype_organisms`
--

LOCK TABLES `testtype_organisms` WRITE;
/*!40000 ALTER TABLE `testtype_organisms` DISABLE KEYS */;
INSERT INTO `testtype_organisms` VALUES (93,4,12,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38'),(94,4,6,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38'),(95,4,1,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38'),(96,4,5,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38'),(97,4,13,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38'),(98,4,11,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38'),(99,4,4,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38'),(100,4,9,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38'),(101,4,8,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38'),(102,4,10,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38'),(103,4,7,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38'),(104,4,2,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38'),(105,4,3,NULL,'2016-03-01 14:11:38','2016-03-01 14:11:38');
/*!40000 ALTER TABLE `testtype_organisms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_categories`
--

DROP TABLE IF EXISTS `test_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `test_categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_categories`
--

LOCK TABLES `test_categories` WRITE;
/*!40000 ALTER TABLE `test_categories` DISABLE KEYS */;
INSERT INTO `test_categories` VALUES (1,'Parasitology','',NULL,'2015-11-03 11:05:20','2015-11-17 17:29:56'),(2,'Microbiology','',NULL,'2015-11-03 11:05:20','2015-11-17 17:29:41'),(3,'Haematology','',NULL,'2015-11-03 11:05:20','2015-11-17 17:30:35'),(4,'Serology','',NULL,'2015-11-03 11:05:20','2015-11-17 17:30:56'),(5,'Blood Bank','',NULL,'2015-11-03 11:05:20','2015-11-17 17:30:08'),(6,'Lab Reception','',NULL,'2015-11-04 09:34:28','2015-11-17 17:30:45'),(7,'Biochemistry','',NULL,'2015-11-04 09:37:13','2015-11-17 17:29:22'),(8,'Flow Cytometry','',NULL,'2015-11-04 09:37:25','2015-11-17 17:30:25');
/*!40000 ALTER TABLE `test_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specimen_types`
--

DROP TABLE IF EXISTS `specimen_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specimen_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimen_types`
--

LOCK TABLES `specimen_types` WRITE;
/*!40000 ALTER TABLE `specimen_types` DISABLE KEYS */;
INSERT INTO `specimen_types` VALUES (1,'Sputum','',NULL,'2015-11-03 13:48:09','2015-11-03 13:48:09'),(2,'CSF','',NULL,'2015-11-04 08:34:37','2015-11-04 08:34:37'),(3,'Blood','',NULL,'2015-11-04 08:34:49','2015-11-04 08:34:49'),(4,'Pleural Fluid','',NULL,'2015-11-04 09:42:58','2015-11-04 09:42:58'),(5,'Ascitic Fluid','',NULL,'2015-11-04 09:43:07','2015-11-04 09:43:07'),(6,'Pericardial Fluid','',NULL,'2015-11-04 09:43:16','2015-11-04 09:43:16'),(7,'Peritoneal Fluid','',NULL,'2015-11-04 09:43:32','2015-11-04 09:43:32'),(8,'HVS','',NULL,'2015-11-04 09:43:53','2015-11-04 09:43:53'),(9,'Cervical Swab','',NULL,'2015-11-04 09:44:01','2015-11-04 09:44:01'),(10,'Pus','',NULL,'2015-11-04 09:44:08','2015-11-04 09:44:08'),(11,'Stool','',NULL,'2015-11-04 09:44:21','2015-11-04 09:44:21'),(12,'Urine','',NULL,'2015-11-04 09:44:32','2015-11-04 09:44:32'),(13,'Other','',NULL,'2015-11-04 09:44:46','2015-11-04 09:44:46'),(15,'Semen','',NULL,'2016-03-01 07:09:38','2016-03-01 15:20:12');
/*!40000 ALTER TABLE `specimen_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specimen_statuses`
--

DROP TABLE IF EXISTS `specimen_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specimen_statuses` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimen_statuses`
--

LOCK TABLES `specimen_statuses` WRITE;
/*!40000 ALTER TABLE `specimen_statuses` DISABLE KEYS */;
INSERT INTO `specimen_statuses` VALUES (1,'specimen-not-collected'),(2,'specimen-accepted'),(3,'specimen-rejected');
/*!40000 ALTER TABLE `specimen_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Superadmin',NULL,'2015-11-03 11:05:21','2015-11-03 11:05:21'),(2,'Technologist',NULL,'2015-11-03 11:05:21','2015-11-03 11:05:21'),(3,'Receptionist',NULL,'2015-11-03 11:05:21','2015-11-03 11:05:21');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organisms`
--

DROP TABLE IF EXISTS `organisms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organisms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `organisms_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisms`
--

LOCK TABLES `organisms` WRITE;
/*!40000 ALTER TABLE `organisms` DISABLE KEYS */;
INSERT INTO `organisms` VALUES (1,'Haemophilus influenza',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(2,'Staphylococci',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(3,'Streptococcus pneumoniae',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(4,'Pseudomonas aeruginosa',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(5,'Neisseria meningitides',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(6,'Enterococci','',NULL,'2015-11-23 13:02:18','2015-11-23 13:02:18'),(7,'ß-hemolytic streptococci','',NULL,'2015-11-23 13:05:35','2015-11-23 13:05:35'),(8,'S.pneumoniae','',NULL,'2015-11-23 13:07:22','2015-11-23 13:07:22'),(9,'S. aureus','',NULL,'2015-11-23 13:09:52','2015-11-23 13:09:52'),(10,'Salmonellae','',NULL,'2015-11-23 13:10:13','2015-11-23 13:10:13'),(11,'Pseudomonas','',NULL,'2015-11-23 13:13:44','2015-11-23 13:13:44'),(12,'Enterobacteriaceae','',NULL,'2015-11-23 13:16:29','2015-11-23 13:16:29'),(13,'Other non-fastidious growth bacteria','',NULL,'2015-11-23 13:22:58','2015-11-23 13:22:58'),(14,'Aeromonas hydrophila','',NULL,'2016-03-04 11:16:17','2016-03-04 11:16:17'),(15,'Aeromonas species','',NULL,'2016-03-04 11:16:56','2016-03-04 11:16:56'),(16,'Bacillus cereus','',NULL,'2016-03-04 11:17:37','2016-03-04 11:17:37'),(17,'Bacillus coagulans','',NULL,'2016-03-04 11:18:07','2016-03-04 11:18:07'),(18,'Bacillus species','',NULL,'2016-03-04 11:18:26','2016-03-04 11:18:26');
/*!40000 ALTER TABLE `organisms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organism_drugs`
--

DROP TABLE IF EXISTS `organism_drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organism_drugs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `organism_id` int(10) unsigned NOT NULL,
  `drug_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `organism_drugs_organism_id_drug_id_unique` (`organism_id`,`drug_id`),
  KEY `organism_drugs_drug_id_foreign` (`drug_id`),
  CONSTRAINT `organism_drugs_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  CONSTRAINT `organism_drugs_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organism_drugs`
--

LOCK TABLES `organism_drugs` WRITE;
/*!40000 ALTER TABLE `organism_drugs` DISABLE KEYS */;
INSERT INTO `organism_drugs` VALUES (1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,1,17,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,1,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,1,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,1,7,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,1,13,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,2,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,2,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,2,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,2,7,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,2,8,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,2,9,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,2,10,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,2,11,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,2,12,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,3,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,3,7,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,3,8,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,3,9,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,3,12,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,3,13,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,4,15,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,4,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,4,10,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,4,14,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,4,16,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,5,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,5,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,5,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,5,7,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,5,17,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,5,18,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,6,2,NULL,'2015-11-23 13:02:18','2015-11-23 13:02:18'),(35,6,4,NULL,'2015-11-23 13:02:18','2015-11-23 13:02:18'),(36,6,9,NULL,'2015-11-23 13:02:18','2015-11-23 13:02:18'),(37,6,6,NULL,'2015-11-23 13:02:18','2015-11-23 13:02:18'),(38,6,19,NULL,'2015-11-23 13:02:18','2015-11-23 13:02:18'),(39,7,2,NULL,'2015-11-23 13:05:35','2015-11-23 13:05:35'),(40,7,4,NULL,'2015-11-23 13:05:35','2015-11-23 13:05:35'),(41,7,8,NULL,'2015-11-23 13:05:35','2015-11-23 13:05:35'),(42,7,9,NULL,'2015-11-23 13:05:35','2015-11-23 13:05:35'),(43,7,11,NULL,'2015-11-23 13:05:35','2015-11-23 13:05:35'),(44,7,6,NULL,'2015-11-23 13:05:35','2015-11-23 13:05:35'),(45,8,17,NULL,'2015-11-23 13:07:22','2015-11-23 13:07:22'),(46,8,4,NULL,'2015-11-23 13:07:22','2015-11-23 13:07:22'),(47,8,9,NULL,'2015-11-23 13:07:22','2015-11-23 13:07:22'),(48,8,12,NULL,'2015-11-23 13:07:22','2015-11-23 13:07:22'),(49,8,6,NULL,'2015-11-23 13:07:22','2015-11-23 13:07:22'),(50,8,7,NULL,'2015-11-23 13:07:22','2015-11-23 13:07:22'),(52,9,2,NULL,'2015-11-23 13:11:24','2015-11-23 13:11:24'),(53,9,20,NULL,'2015-11-23 13:11:24','2015-11-23 13:11:24'),(54,9,4,NULL,'2015-11-23 13:11:24','2015-11-23 13:11:24'),(55,9,5,NULL,'2015-11-23 13:11:24','2015-11-23 13:11:24'),(56,9,8,NULL,'2015-11-23 13:11:24','2015-11-23 13:11:24'),(57,9,9,NULL,'2015-11-23 13:11:24','2015-11-23 13:11:24'),(58,9,11,NULL,'2015-11-23 13:11:24','2015-11-23 13:11:24'),(59,10,22,NULL,'2015-11-23 13:12:47','2015-11-23 13:12:47'),(60,10,15,NULL,'2015-11-23 13:12:47','2015-11-23 13:12:47'),(61,10,16,NULL,'2015-11-23 13:12:47','2015-11-23 13:12:47'),(62,11,14,NULL,'2015-11-23 13:13:44','2015-11-23 13:13:44'),(63,11,5,NULL,'2015-11-23 13:13:44','2015-11-23 13:13:44'),(64,11,10,NULL,'2015-11-23 13:13:44','2015-11-23 13:13:44'),(65,11,15,NULL,'2015-11-23 13:13:44','2015-11-23 13:13:44'),(66,11,16,NULL,'2015-11-23 13:13:44','2015-11-23 13:13:44'),(79,12,24,NULL,'2015-11-23 13:21:45','2015-11-23 13:21:45'),(80,12,1,NULL,'2015-11-23 13:21:45','2015-11-23 13:21:45'),(81,12,2,NULL,'2015-11-23 13:21:45','2015-11-23 13:21:45'),(82,12,26,NULL,'2015-11-23 13:21:45','2015-11-23 13:21:45'),(83,12,18,NULL,'2015-11-23 13:21:45','2015-11-23 13:21:45'),(84,12,17,NULL,'2015-11-23 13:21:45','2015-11-23 13:21:45'),(85,12,25,NULL,'2015-11-23 13:21:45','2015-11-23 13:21:45'),(86,12,4,NULL,'2015-11-23 13:21:45','2015-11-23 13:21:45'),(87,13,5,NULL,'2015-11-23 13:22:58','2015-11-23 13:22:58'),(88,13,10,NULL,'2015-11-23 13:22:58','2015-11-23 13:22:58'),(89,13,13,NULL,'2015-11-23 13:22:58','2015-11-23 13:22:58'),(90,13,7,NULL,'2015-11-23 13:22:58','2015-11-23 13:22:58'),(91,2,6,NULL,'2016-02-26 09:24:16','2016-02-26 09:24:16');
/*!40000 ALTER TABLE `organism_drugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measures`
--

DROP TABLE IF EXISTS `measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `measure_type_id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `measures_measure_type_id_foreign` (`measure_type_id`),
  CONSTRAINT `measures_measure_type_id_foreign` FOREIGN KEY (`measure_type_id`) REFERENCES `measure_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measures`
--

LOCK TABLES `measures` WRITE;
/*!40000 ALTER TABLE `measures` DISABLE KEYS */;
INSERT INTO `measures` VALUES (1,2,'BS for mps','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(2,2,'Grams stain','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(3,2,'SERUM AMYLASE','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(4,2,'calcium','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(5,2,'SGOT','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(6,2,'Indirect COOMBS test','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(7,2,'Direct COOMBS test','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(8,2,'Du test','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(9,1,'URIC ACID','mg/dl',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(10,4,'CSF for biochemistry','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(11,4,'PSA','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(12,1,'Total','mg/dl',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(13,1,'Alkaline Phosphate','u/l',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(14,1,'Direct','mg/dl',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(15,1,'Total Proteins','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(16,4,'LFTS','NULL',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(17,1,'Chloride','mmol/l',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(18,1,'Potassium','mmol/l',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(19,1,'Sodium','mmol/l',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(20,4,'Electrolytes','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(21,1,'Creatinine','mg/dl',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(22,1,'Urea','mg/dl',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(23,4,'RFTS','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(24,4,'TFT','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(25,4,'GXM','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(26,2,'Blood Grouping','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(27,1,'HB','g/dL',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(28,4,'Urine microscopy','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(29,4,'Pus cells','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(30,4,'S. haematobium','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(31,4,'T. vaginalis','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(32,4,'Yeast cells','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(33,4,'Red blood cells','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(34,4,'Bacteria','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(35,4,'Spermatozoa','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(36,4,'Epithelial cells','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(37,4,'ph','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(38,4,'Urine chemistry','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(39,4,'Glucose','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(40,4,'Ketones','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(41,4,'Proteins','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(42,4,'Blood','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(43,4,'Bilirubin','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(44,4,'Urobilinogen Phenlpyruvic acid','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(45,4,'pH','',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(46,1,'WBC','x10³/µL',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(47,1,'Lym','L',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(48,1,'Mon','*',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(49,1,'Neu','*',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20',NULL),(50,1,'Eos','',NULL,'2015-11-03 11:05:21','2015-11-03 11:05:21',NULL),(51,1,'Baso','',NULL,'2015-11-03 11:05:21','2015-11-03 11:05:21',NULL),(52,4,'tb','','','2015-11-03 13:49:09','2015-11-03 13:49:09',NULL),(53,4,'Sample Location (Swab)','','','2015-11-04 08:59:00','2015-11-04 08:59:00',NULL),(54,4,'Sample Appearance (Fluids)','','','2015-11-04 08:59:00','2015-11-04 08:59:00',NULL),(55,2,'Culture','','','2015-11-04 08:59:00','2015-11-04 08:59:00',NULL),(56,2,'Gram Stain','','','2015-11-04 08:59:01','2015-11-04 08:59:01',NULL),(57,2,'Gram Stain Morphology','','','2015-11-04 08:59:01','2015-11-04 08:59:01',NULL),(58,4,'MTB','','','2015-11-04 08:59:01','2016-03-01 07:49:09',NULL),(59,2,'Gram','','','2015-11-05 12:29:16','2015-12-10 10:50:43',NULL),(60,2,'Culture','','','2015-11-06 05:24:20','2015-12-10 10:51:14',NULL),(61,1,'WBC','cells/cu.mm','','2015-11-06 07:30:59','2015-12-10 10:51:02',NULL),(62,1,'RBC','cells/cu.mm','','2015-11-06 07:30:59','2015-12-10 10:51:02',NULL),(63,2,'India ink','','','2015-11-06 07:32:32','2015-12-10 10:52:32',NULL),(64,2,'gram morphology','','','2015-11-06 07:37:36','2015-11-06 07:37:36',NULL),(65,1,'Polymorphs','%','','2015-11-06 07:43:01','2015-12-10 10:51:57',NULL),(66,1,'Lymphocytes','%','','2015-11-06 07:43:01','2015-12-10 10:51:57',NULL),(67,2,'Clue cells','','','2015-11-12 17:50:25','2015-11-12 17:50:25',NULL),(68,4,'Other organism seen','','','2015-11-12 17:50:25','2015-12-10 10:50:43',NULL),(69,2,'ZN','','','2015-11-12 21:43:18','2015-12-10 10:56:59',NULL),(70,2,'wet prep','','','2015-11-12 21:45:55','2015-11-12 21:45:55',NULL),(71,4,'Other organism seen','','','2015-11-12 21:45:55','2015-12-10 10:56:29',NULL),(72,2,'Macro exam','','','2015-11-12 21:54:38','2015-12-10 10:52:46',NULL),(73,2,'Diff remarks','','','2015-11-12 22:01:00','2015-12-10 10:51:57',NULL),(74,2,'Colour','','','2015-12-10 07:59:44','2015-12-10 07:59:44',NULL),(75,2,'Appearance','','','2015-12-10 07:59:44','2015-12-10 07:59:44',NULL),(76,1,'WBC','cmm','','2015-12-10 08:06:20','2015-12-10 08:06:20',NULL),(77,1,'RBC','cmm','','2015-12-10 08:06:20','2015-12-10 08:06:20',NULL),(78,2,'Epithelial cells','','','2015-12-10 08:06:20','2015-12-10 10:56:12',NULL),(79,4,'Casts','','','2015-12-10 08:06:20','2015-12-10 08:06:20',NULL),(80,4,'Crystals','','','2015-12-10 08:06:20','2015-12-10 08:06:20',NULL),(81,4,'Parasites','','','2015-12-10 08:06:20','2015-12-10 08:06:20',NULL),(82,2,'Yeast cells','','','2015-12-10 08:06:20','2015-12-10 10:56:12',NULL),(83,2,'Blood','RBC/ul','','2015-12-10 08:59:57','2015-12-10 08:59:57',NULL),(84,1,'Urobilinogen','mg/dl','','2015-12-10 08:59:57','2015-12-10 08:59:57',NULL),(85,2,'Bilirubin','','','2015-12-10 08:59:57','2015-12-10 08:59:57',NULL),(86,2,'Protein','','','2015-12-10 08:59:57','2015-12-10 08:59:57',NULL),(87,4,'Protein','mg/dl','','2015-12-10 08:59:57','2015-12-14 08:11:59',NULL),(88,2,'Nitrate','','','2015-12-10 08:59:57','2015-12-10 08:59:57',NULL),(89,2,'Ketones','','','2015-12-10 08:59:57','2015-12-10 08:59:57',NULL),(90,1,'Glucose','mg/dl','','2015-12-10 08:59:57','2015-12-10 08:59:57',NULL),(91,1,'Specific gravity','','','2015-12-10 08:59:57','2015-12-10 10:55:31',NULL),(92,1,'Leucocytes','WBC/ul','','2015-12-10 08:59:57','2015-12-10 08:59:57',NULL),(93,4,'Macroscopy','','','2015-12-10 09:17:47','2015-12-10 09:17:47',NULL),(94,2,'Consistency','','','2015-12-10 09:17:47','2015-12-10 09:17:47',NULL),(95,4,'Microscopy','','','2015-12-10 09:17:47','2015-12-10 09:17:47',NULL),(96,2,'Blood film','','','2015-12-10 09:32:24','2015-12-10 09:32:24',NULL),(97,2,'Type of malaria parasite','','','2015-12-10 09:32:24','2015-12-10 09:32:24',NULL),(98,2,'MRDT','','','2015-12-10 09:32:24','2015-12-10 09:32:24',NULL),(99,4,'Blood film','','','2015-12-10 09:33:58','2015-12-10 09:33:58',NULL),(100,2,'Appearance','','','2015-12-10 09:41:45','2015-12-10 09:41:45',NULL),(101,4,'Liquifaction time','','','2015-12-10 09:41:45','2015-12-10 09:41:45',NULL),(102,1,'volume','ml','','2015-12-10 09:41:45','2015-12-10 09:41:45',NULL),(103,1,'Motility','%','','2015-12-10 09:41:45','2015-12-10 09:41:45',NULL),(104,1,'pH','','','2015-12-10 09:41:45','2015-12-10 09:41:45',NULL),(105,1,'Sperm count','','','2015-12-10 09:41:45','2015-12-10 10:58:27',NULL),(106,4,'Sperm morphology','','','2015-12-10 09:41:45','2015-12-10 10:55:04',NULL),(107,2,'Macroscopy','','','2015-12-10 09:48:54','2015-12-10 09:48:54',NULL),(108,1,'WBC','cmm','','2015-12-10 09:48:54','2015-12-10 09:48:54',NULL),(109,2,'Epithelial cells','','','2015-12-10 09:48:54','2015-12-10 09:48:54',NULL),(110,4,'Parasites/Bacteria','','','2015-12-10 09:48:54','2015-12-10 09:48:54',NULL),(111,2,'Spermatozoa','','','2015-12-10 09:48:54','2015-12-10 09:48:54',NULL),(112,2,'RPR','','','2015-12-22 07:32:17','2015-12-22 07:32:17',NULL),(113,2,'VDRL','','','2015-12-22 07:32:17','2015-12-22 07:32:17',NULL),(114,2,'TPHA','','','2015-12-22 07:32:17','2015-12-22 07:32:17',NULL),(115,2,'Hepatitis B','','','2015-12-22 07:35:48','2015-12-22 07:35:48',NULL),(116,2,'Hepatitis C','','','2015-12-22 07:37:11','2015-12-22 07:37:11',NULL),(117,2,'Rheumatoid Factor','','','2015-12-22 07:39:16','2015-12-22 07:39:16',NULL),(118,2,'CrAg','','','2015-12-22 07:42:07','2015-12-22 07:42:07',NULL),(119,2,'ASO','','','2015-12-22 08:48:24','2015-12-22 08:48:24',NULL),(120,2,'CRP','','','2015-12-22 08:56:26','2015-12-22 08:56:26',NULL),(121,2,'Measles IgM ELISA-Behring enzynost','','','2015-12-22 09:00:58','2015-12-22 09:00:58',NULL),(122,2,'Rubella IgM ELISA-Behring enzynost','','','2015-12-22 09:03:08','2016-01-21 12:58:35',NULL),(123,1,'Serum','','','2015-12-22 09:14:27','2016-03-01 07:01:24',NULL),(124,1,'PLG+**CD45PCNT','','','2015-12-22 09:14:27','2016-03-01 07:01:24',NULL),(125,2,'Grouping','','','2015-12-22 10:20:21','2015-12-22 10:20:46',NULL),(126,4,'Pack No.','','','2015-12-22 10:40:01','2015-12-22 10:40:01',NULL),(127,2,'Pack ABO Group','','','2015-12-22 10:40:01','2015-12-22 10:49:26',NULL),(128,2,'Product Type','','','2015-12-22 10:40:01','2016-03-01 14:06:27',NULL),(129,4,'Expiry Date','','','2015-12-22 10:40:01','2015-12-22 10:40:01',NULL),(130,4,'Volume','mL','','2015-12-22 10:40:01','2016-01-29 08:50:44',NULL),(131,2,'Cross-match Method','','','2015-12-22 10:40:01','2015-12-22 10:40:01',NULL),(132,2,'Outcome','','','2015-12-22 10:44:26','2015-12-22 10:44:26',NULL),(133,1,'GPT','U/L','','2016-02-03 13:17:37','2016-02-03 13:17:37',NULL),(134,1,'GOT','U/L','','2016-02-03 13:17:37','2016-02-03 13:17:37',NULL),(135,1,'Alkaline Phosphate','U/L','','2016-02-03 13:17:37','2016-02-03 13:17:37',NULL),(136,1,'GGT','U/L','','2016-02-03 13:17:37','2016-02-03 13:17:37',NULL),(137,1,'Bilirubin Direct','mg/dl','','2016-02-03 13:17:37','2016-02-03 13:17:37',NULL),(138,1,'Bilirubin Total','mg/dl','','2016-02-03 13:17:37','2016-02-03 13:17:37',NULL),(139,1,'Calcium','mg/dl','','2016-02-03 13:24:55','2016-02-03 13:24:55',NULL),(140,1,'Albumin','mg/dl','','2016-02-03 13:24:55','2016-02-03 13:24:55',NULL),(141,1,'Protein','mg/dl','','2016-02-03 13:24:55','2016-02-03 13:24:55',NULL),(142,1,'Urea','mg/dl','','2016-02-03 13:45:15','2016-02-03 13:45:15',NULL),(143,1,'Creatinine','mg/dl','','2016-02-03 13:45:15','2016-02-03 13:45:15',NULL),(144,1,'Glucose','mg/dl','','2016-02-03 13:45:15','2016-02-03 13:45:15',NULL),(145,1,'Triglycerides','mg/dl','','2016-02-03 13:56:21','2016-02-03 13:56:21',NULL),(146,1,'Cholesterol','mg/dl','','2016-02-03 13:56:21','2016-02-03 13:56:21',NULL),(147,1,'RBC','10^6/uL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(148,1,'HGB','g/dL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(149,1,'HCT','%','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(150,1,'MCV','fL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(151,1,'MCH','pg','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(152,1,'MCHC','g/dL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(153,1,'PLT','10^3/uL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(154,1,'RDW-SD','fL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(155,1,'RDW-CV','%','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(156,1,'PDW','fL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(157,1,'MPV','fL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(158,1,'PCT','%','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(159,1,'NEUT%','%','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(160,1,'LYMPH%','%','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(161,1,'MONO%','%','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(162,1,'EO%','%','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(163,1,'BASO%','%','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(164,1,'NEUT#','10^3/uL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(165,1,'LYMPH#','10^3/uL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(166,1,'MONO#','10^3/uL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(167,1,'EO#','10^3/uL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(168,1,'BASO#','10^3/uL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(169,1,'WBC','10^3/uL','','2016-02-26 08:07:17','2016-02-26 08:07:18',NULL),(170,1,'Mid#','10^3/uL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(171,1,'Gran#','10^3/uL','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(172,1,'Mid%','%','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(173,1,'Gran%','%','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(174,1,'EOS%','%','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(175,1,'P-LCC','10^9/L','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(176,1,'P-LCR','%','','2016-02-26 08:07:18','2016-02-26 08:07:18',NULL),(177,1,'PLG+**LYCNT','','','2016-03-01 07:01:24','2016-03-01 07:01:24',NULL),(178,1,'PLG+CD4CD45CNT','','','2016-03-01 07:01:24','2016-03-01 07:01:24',NULL),(179,1,'PLG+**CD4LYCNT','','','2016-03-01 07:01:24','2016-03-01 07:01:24',NULL),(180,1,'PLG+CD4LYPCT','','','2016-03-01 07:01:24','2016-03-01 07:01:24',NULL),(181,1,'K','','','2016-03-01 07:41:30','2016-03-01 07:41:30',NULL),(182,1,'Na','','','2016-03-01 07:41:30','2016-03-01 07:41:30',NULL),(183,1,'Cl','','','2016-03-01 07:41:30','2016-03-01 07:41:30',NULL),(184,4,'RIF Resistance','','','2016-03-01 07:49:09','2016-03-01 07:49:09',NULL),(185,1,'K','mmol/L','','2016-03-01 08:01:00','2016-03-01 14:18:26',NULL),(186,1,'Na','mmol/L','','2016-03-01 08:01:00','2016-03-01 14:18:26',NULL),(187,1,'Cl','mmol/L','','2016-03-01 08:01:00','2016-03-01 14:18:26',NULL),(188,1,'a-AMYLASE-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(189,1,'ALT-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(190,1,'AST-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(191,1,'ALP-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(192,1,'TP-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(193,1,'TC-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(194,1,'UREA-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(195,1,'GLU-O-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(196,1,'TBIL-DSA-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(197,1,'DBIL-DSA-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(198,1,'UA-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(199,1,'TG-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(200,1,'ALB-H','','','2016-03-01 08:08:26','2016-03-01 08:08:26',NULL),(201,2,'Micro exam','','','2016-03-01 14:48:32','2016-03-01 14:48:32',NULL),(202,4,'MTB','','','2016-03-01 14:48:32','2016-03-01 14:48:32',NULL),(203,4,'RIF Resistance','','','2016-03-01 14:48:32','2016-03-01 14:48:32',NULL),(204,1,'Glucose','mg/dl','','2016-03-01 15:05:08','2016-03-01 15:05:08',NULL),(205,1,'PT','sec','','2016-03-04 14:35:22','2016-03-04 14:35:22',NULL),(206,1,'APTT','sec','','2016-03-04 14:37:14','2016-03-04 14:37:14',NULL),(207,1,'INR','','','2016-03-04 14:38:39','2016-03-04 14:38:39',NULL),(208,1,'ESR','mm/hr','','2016-03-04 14:41:30','2016-03-04 14:41:30',NULL),(209,2,'Sickling Screen','','','2016-03-04 14:42:54','2016-03-04 14:42:54',NULL),(210,2,'Pregnancy Test','','','2016-03-04 14:44:10','2016-03-04 14:44:10',NULL),(211,4,'Nucleated Red Cells','/100 WBC','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(212,4,'Neutrophils','%','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(213,4,'Lymphocytes','%','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(214,4,'Monocytes','%','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(215,4,'Eosinophils','%','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(216,4,'Basophils','%','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(217,4,'Promyelocytes','%','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(218,4,'Myelocytes','%','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(219,4,'Metamyelocytes','%','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(220,4,'Band/Staff Forms','%','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(221,4,'Blasts','%','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(222,4,'Other','%','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(223,4,'RBC Comments','','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(224,4,'WBC Comments','','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(225,4,'Platelet Comments','','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(226,4,'Interpretative Comments','','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(227,4,'Attempted/ Differential Diagnosis','','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL),(228,4,'Further Tests','','','2016-03-04 15:08:01','2016-03-04 15:08:01',NULL);
/*!40000 ALTER TABLE `measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure_types`
--

DROP TABLE IF EXISTS `measure_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure_types` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `measure_types_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure_types`
--

LOCK TABLES `measure_types` WRITE;
/*!40000 ALTER TABLE `measure_types` DISABLE KEYS */;
INSERT INTO `measure_types` VALUES (1,'Numeric Range',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(2,'Alphanumeric Values',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(3,'Autocomplete',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(4,'Free Text',NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20');
/*!40000 ALTER TABLE `measure_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure_ranges`
--

DROP TABLE IF EXISTS `measure_ranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure_ranges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `measure_id` int(10) unsigned NOT NULL,
  `age_min` int(10) unsigned DEFAULT NULL,
  `age_max` int(10) unsigned DEFAULT NULL,
  `gender` tinyint(3) unsigned DEFAULT NULL,
  `range_lower` decimal(11,3) DEFAULT NULL,
  `range_upper` decimal(11,3) DEFAULT NULL,
  `alphanumeric` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interpretation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `measure_ranges_alphanumeric_index` (`alphanumeric`),
  KEY `measure_ranges_measure_id_foreign` (`measure_id`),
  CONSTRAINT `measure_ranges_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure_ranges`
--

LOCK TABLES `measure_ranges` WRITE;
/*!40000 ALTER TABLE `measure_ranges` DISABLE KEYS */;
INSERT INTO `measure_ranges` VALUES (1,1,NULL,NULL,NULL,NULL,NULL,'No mps seen','Negative',NULL),(2,1,NULL,NULL,NULL,NULL,NULL,'+','Positive',NULL),(3,1,NULL,NULL,NULL,NULL,NULL,'++','Positive',NULL),(4,1,NULL,NULL,NULL,NULL,NULL,'+++','Positive',NULL),(5,2,NULL,NULL,NULL,NULL,NULL,'Negative',NULL,NULL),(6,2,NULL,NULL,NULL,NULL,NULL,'Positive',NULL,NULL),(7,3,NULL,NULL,NULL,NULL,NULL,'Low',NULL,NULL),(8,3,NULL,NULL,NULL,NULL,NULL,'High',NULL,NULL),(9,3,NULL,NULL,NULL,NULL,NULL,'Normal',NULL,NULL),(10,4,NULL,NULL,NULL,NULL,NULL,'High',NULL,NULL),(11,4,NULL,NULL,NULL,NULL,NULL,'Low',NULL,NULL),(12,4,NULL,NULL,NULL,NULL,NULL,'Normal',NULL,NULL),(13,5,NULL,NULL,NULL,NULL,NULL,'High',NULL,NULL),(14,5,NULL,NULL,NULL,NULL,NULL,'Low',NULL,NULL),(15,5,NULL,NULL,NULL,NULL,NULL,'Normal',NULL,NULL),(16,6,NULL,NULL,NULL,NULL,NULL,'Positive',NULL,NULL),(17,6,NULL,NULL,NULL,NULL,NULL,'Negative',NULL,NULL),(18,7,NULL,NULL,NULL,NULL,NULL,'Positive',NULL,NULL),(19,7,NULL,NULL,NULL,NULL,NULL,'Negative',NULL,NULL),(20,8,NULL,NULL,NULL,NULL,NULL,'Positive',NULL,NULL),(21,8,NULL,NULL,NULL,NULL,NULL,'Negative',NULL,NULL),(22,26,NULL,NULL,NULL,NULL,NULL,'O-',NULL,NULL),(23,26,NULL,NULL,NULL,NULL,NULL,'O+',NULL,NULL),(24,26,NULL,NULL,NULL,NULL,NULL,'A-',NULL,NULL),(25,26,NULL,NULL,NULL,NULL,NULL,'A+',NULL,NULL),(26,26,NULL,NULL,NULL,NULL,NULL,'B-',NULL,NULL),(27,26,NULL,NULL,NULL,NULL,NULL,'B+',NULL,NULL),(28,26,NULL,NULL,NULL,NULL,NULL,'AB-',NULL,NULL),(29,26,NULL,NULL,NULL,NULL,NULL,'AB+',NULL,NULL),(30,46,0,100,2,4.000,11.000,NULL,NULL,NULL),(31,47,0,100,2,1.500,4.000,NULL,NULL,NULL),(32,48,0,100,2,0.100,9.000,NULL,NULL,NULL),(33,49,0,100,2,2.500,7.000,NULL,NULL,NULL),(34,50,0,100,2,0.000,6.000,NULL,NULL,NULL),(35,51,0,100,2,0.000,2.000,NULL,NULL,NULL),(36,55,NULL,NULL,NULL,NULL,NULL,'Not performed','',NULL),(37,55,NULL,NULL,NULL,NULL,NULL,'No growth 24 hrs','',NULL),(38,55,NULL,NULL,NULL,NULL,NULL,'No growth 48 hrs','',NULL),(39,55,NULL,NULL,NULL,NULL,NULL,'No growth 72 hrs','NEGATIVE',NULL),(40,55,NULL,NULL,NULL,NULL,NULL,'Growth','POSITIVE',NULL),(41,56,NULL,NULL,NULL,NULL,NULL,'Gram Positve','',NULL),(42,56,NULL,NULL,NULL,NULL,NULL,'Gram Negative','',NULL),(43,56,NULL,NULL,NULL,NULL,NULL,'Gram Variable','',NULL),(44,57,NULL,NULL,NULL,NULL,NULL,'Cocci','',NULL),(45,57,NULL,NULL,NULL,NULL,NULL,'Bacilli','',NULL),(46,57,NULL,NULL,NULL,NULL,NULL,'Cocci-Bacilli','',NULL),(47,57,NULL,NULL,NULL,NULL,NULL,'Diplococci','',NULL),(48,57,NULL,NULL,NULL,NULL,NULL,'Yeast','',NULL),(49,57,NULL,NULL,NULL,NULL,NULL,'Other','',NULL),(50,60,NULL,NULL,NULL,NULL,NULL,'Growth','POSITIVE',NULL),(51,60,NULL,NULL,NULL,NULL,NULL,'No growth','',NULL),(52,60,NULL,NULL,NULL,NULL,NULL,'Mixed growth; no predominant organism','',NULL),(53,60,NULL,NULL,NULL,NULL,NULL,'Growth of normal flora; no pathogens isolated','',NULL),(54,61,0,120,2,0.000,1000000.000,NULL,'',NULL),(55,62,0,120,2,0.000,1000000.000,NULL,'',NULL),(56,63,NULL,NULL,NULL,NULL,NULL,'Positive','POSITIVE',NULL),(57,63,NULL,NULL,NULL,NULL,NULL,'Negative','NEGATIVE',NULL),(58,64,NULL,NULL,NULL,NULL,NULL,'Cocci','',NULL),(59,64,NULL,NULL,NULL,NULL,NULL,'Bacilli','',NULL),(60,64,NULL,NULL,NULL,NULL,NULL,'Cocco-bacilli','',NULL),(61,59,NULL,NULL,NULL,NULL,NULL,'No organism seen','',NULL),(62,59,NULL,NULL,NULL,NULL,NULL,'Gram positive cocci (clusters)','',NULL),(63,59,NULL,NULL,NULL,NULL,NULL,'Gram positive cocci (chains)','',NULL),(64,65,0,120,2,0.000,100.000,NULL,'',NULL),(65,66,0,120,2,0.000,100.000,NULL,'',NULL),(66,67,NULL,NULL,NULL,NULL,NULL,'Yes','',NULL),(67,67,NULL,NULL,NULL,NULL,NULL,'No','',NULL),(68,59,NULL,NULL,NULL,NULL,NULL,'Gram positive diplococci','',NULL),(69,59,NULL,NULL,NULL,NULL,NULL,'Gram positive bacilli','',NULL),(70,59,NULL,NULL,NULL,NULL,NULL,'Gram positive cocco-bacilli','',NULL),(71,59,NULL,NULL,NULL,NULL,NULL,'Gram negative cocci','',NULL),(72,59,NULL,NULL,NULL,NULL,NULL,'Gram negative bacilli','',NULL),(73,59,NULL,NULL,NULL,NULL,NULL,'Gram negative cocco-bacilli','',NULL),(74,59,NULL,NULL,NULL,NULL,NULL,'Gram negative diplococci','',NULL),(75,59,NULL,NULL,NULL,NULL,NULL,'Gram variable cocci','',NULL),(76,59,NULL,NULL,NULL,NULL,NULL,'Gram variable  bacilli','',NULL),(77,59,NULL,NULL,NULL,NULL,NULL,'Gram variable cocco-bacilli','',NULL),(78,59,NULL,NULL,NULL,NULL,NULL,'Yeast cells seen','',NULL),(79,60,NULL,NULL,NULL,NULL,NULL,'Growth of contaminants','',NULL),(80,69,NULL,NULL,NULL,NULL,NULL,'Scanty AAFB seen','',NULL),(81,69,NULL,NULL,NULL,NULL,NULL,'1+ AAFB seen','',NULL),(82,69,NULL,NULL,NULL,NULL,NULL,'2+ AAFB seen','',NULL),(83,69,NULL,NULL,NULL,NULL,NULL,'3+ AAFB seen','',NULL),(84,69,NULL,NULL,NULL,NULL,NULL,'No AAFB seen','',NULL),(85,70,NULL,NULL,NULL,NULL,NULL,'Trichomonas vaginalis seen','',NULL),(86,70,NULL,NULL,NULL,NULL,NULL,'Yeast cells seen','',NULL),(87,70,NULL,NULL,NULL,NULL,NULL,'Spermatozoa seen','',NULL),(88,72,NULL,NULL,NULL,NULL,NULL,'Clear/colourless','',NULL),(89,72,NULL,NULL,NULL,NULL,NULL,'Slightly Cloudy','',NULL),(90,72,NULL,NULL,NULL,NULL,NULL,'Purulent','',NULL),(91,72,NULL,NULL,NULL,NULL,NULL,'Clotted','',NULL),(92,72,NULL,NULL,NULL,NULL,NULL,'Turbid','',NULL),(93,72,NULL,NULL,NULL,NULL,NULL,'Blood stained','',NULL),(94,73,NULL,NULL,NULL,NULL,NULL,'Mainly lymphocytes','',NULL),(95,73,NULL,NULL,NULL,NULL,NULL,'Mainly polymorphs','',NULL),(96,73,NULL,NULL,NULL,NULL,NULL,'Not enough cells for differential count','',NULL),(97,73,NULL,NULL,NULL,NULL,NULL,'No cells seen','',NULL),(98,58,NULL,NULL,NULL,NULL,NULL,'Positive','POSITIVE','2016-03-01 07:49:09'),(99,58,NULL,NULL,NULL,NULL,NULL,'Negative','Negative','2016-03-01 07:49:09'),(100,74,NULL,NULL,NULL,NULL,NULL,'Brown','',NULL),(101,74,NULL,NULL,NULL,NULL,NULL,'Red','',NULL),(102,74,NULL,NULL,NULL,NULL,NULL,'Pale','',NULL),(103,74,NULL,NULL,NULL,NULL,NULL,'Yellow','',NULL),(104,74,NULL,NULL,NULL,NULL,NULL,'Light yellow','',NULL),(105,74,NULL,NULL,NULL,NULL,NULL,'Amber','',NULL),(106,75,NULL,NULL,NULL,NULL,NULL,'Cloudy','',NULL),(107,75,NULL,NULL,NULL,NULL,NULL,'Blood Stained','',NULL),(108,75,NULL,NULL,NULL,NULL,NULL,'Clear','',NULL),(109,76,0,120,2,0.000,1000000.000,NULL,'',NULL),(110,77,0,120,2,0.000,1000000.000,NULL,'',NULL),(111,78,NULL,NULL,NULL,NULL,NULL,'+','',NULL),(112,78,NULL,NULL,NULL,NULL,NULL,'++','',NULL),(113,78,NULL,NULL,NULL,NULL,NULL,'+++','',NULL),(114,82,NULL,NULL,NULL,NULL,NULL,'Seen','',NULL),(115,82,NULL,NULL,NULL,NULL,NULL,'Not seen','',NULL),(116,83,NULL,NULL,NULL,NULL,NULL,'Negative','',NULL),(117,83,NULL,NULL,NULL,NULL,NULL,'Heamolysis +10 RBC/ul','',NULL),(118,83,NULL,NULL,NULL,NULL,NULL,'Heamolysis ++50 RBC/ul','',NULL),(119,83,NULL,NULL,NULL,NULL,NULL,'Heamolysis+++250 RBC/ul','',NULL),(120,83,NULL,NULL,NULL,NULL,NULL,'Non- Heamolysis +10 RBC/ul','',NULL),(121,83,NULL,NULL,NULL,NULL,NULL,'Non- Heamolysis ++50 RBC/ul','',NULL),(122,83,NULL,NULL,NULL,NULL,NULL,'','','2016-03-01 15:18:53'),(123,84,0,120,2,0.000,1000000.000,NULL,'',NULL),(124,85,NULL,NULL,NULL,NULL,NULL,'Negative','',NULL),(125,85,NULL,NULL,NULL,NULL,NULL,'+','',NULL),(126,85,NULL,NULL,NULL,NULL,NULL,'++','',NULL),(127,85,NULL,NULL,NULL,NULL,NULL,'+++','',NULL),(128,86,NULL,NULL,NULL,NULL,NULL,'Negative','',NULL),(129,86,NULL,NULL,NULL,NULL,NULL,'Trace','',NULL),(130,87,0,120,2,1.000,1000000.000,NULL,'','2015-12-14 08:11:59'),(131,88,NULL,NULL,NULL,NULL,NULL,'Negative','NEGATIVE',NULL),(132,88,NULL,NULL,NULL,NULL,NULL,'Trace','',NULL),(133,88,NULL,NULL,NULL,NULL,NULL,'Positive','POSITIVE',NULL),(134,89,NULL,NULL,NULL,NULL,NULL,'Negative','NEGATIVE',NULL),(135,89,NULL,NULL,NULL,NULL,NULL,'Trace','',NULL),(136,89,NULL,NULL,NULL,NULL,NULL,'Positive','POSITIVE',NULL),(137,90,0,120,2,0.000,0.000,NULL,'NEGATIVE',NULL),(138,90,0,120,2,1.000,1000000.000,NULL,'POSITIVE',NULL),(139,91,0,120,2,1.000,100000.000,NULL,'',NULL),(140,92,0,120,2,0.000,0.000,NULL,'NEGATIVE',NULL),(141,92,0,120,2,1.000,1000000.000,NULL,'POSITIVE',NULL),(142,94,NULL,NULL,NULL,NULL,NULL,'Formed','',NULL),(143,94,NULL,NULL,NULL,NULL,NULL,'Semi-formed','',NULL),(144,94,NULL,NULL,NULL,NULL,NULL,'Unformed','',NULL),(145,94,NULL,NULL,NULL,NULL,NULL,'Watery','',NULL),(146,94,NULL,NULL,NULL,NULL,NULL,'Rice appearance','',NULL),(147,96,NULL,NULL,NULL,NULL,NULL,'No parasite seen','',NULL),(148,96,NULL,NULL,NULL,NULL,NULL,'+ (1-10 parasites/100 fields)','',NULL),(149,96,NULL,NULL,NULL,NULL,NULL,'++ (11-99 parasites/100 field) ','',NULL),(150,96,NULL,NULL,NULL,NULL,NULL,'+++ (1-10 parasites /field)','',NULL),(151,96,NULL,NULL,NULL,NULL,NULL,'++++ (>10 parasites/field)','',NULL),(152,97,NULL,NULL,NULL,NULL,NULL,'Plasmodium falciparum','',NULL),(153,97,NULL,NULL,NULL,NULL,NULL,'Plasmodium ovale','',NULL),(154,97,NULL,NULL,NULL,NULL,NULL,'Plasmodium vivax','',NULL),(155,97,NULL,NULL,NULL,NULL,NULL,'Plasmodium malariae','',NULL),(156,97,NULL,NULL,NULL,NULL,NULL,'Plasmodium knowlesi','',NULL),(157,98,NULL,NULL,NULL,NULL,NULL,'Positive','',NULL),(158,98,NULL,NULL,NULL,NULL,NULL,'Negative','',NULL),(159,100,NULL,NULL,NULL,NULL,NULL,'Grey','',NULL),(160,100,NULL,NULL,NULL,NULL,NULL,'Opaque','',NULL),(161,100,NULL,NULL,NULL,NULL,NULL,'Red-brown','',NULL),(162,100,NULL,NULL,NULL,NULL,NULL,'Opalescent','',NULL),(163,102,0,120,0,0.000,1000.000,NULL,'',NULL),(164,103,0,120,0,0.000,100.000,NULL,'',NULL),(165,104,0,120,0,0.000,100.000,NULL,'',NULL),(166,105,0,120,0,0.000,1000000.000,NULL,'',NULL),(167,107,NULL,NULL,NULL,NULL,NULL,'blood stained','',NULL),(168,107,NULL,NULL,NULL,NULL,NULL,'clear','',NULL),(169,108,0,120,2,0.000,1000000.000,NULL,'',NULL),(170,109,NULL,NULL,NULL,NULL,NULL,'+','',NULL),(171,109,NULL,NULL,NULL,NULL,NULL,'++','',NULL),(172,109,NULL,NULL,NULL,NULL,NULL,'+++','',NULL),(173,111,NULL,NULL,NULL,NULL,NULL,'Seen','',NULL),(174,111,NULL,NULL,NULL,NULL,NULL,'Not seen','',NULL),(175,112,NULL,NULL,NULL,NULL,NULL,'Reactive','POSITIVE',NULL),(176,112,NULL,NULL,NULL,NULL,NULL,'Non-reactive','NEGATIVE',NULL),(177,113,NULL,NULL,NULL,NULL,NULL,'Reactive','POSITIVE',NULL),(178,113,NULL,NULL,NULL,NULL,NULL,'Non-reactive','NEGATIVE',NULL),(179,114,NULL,NULL,NULL,NULL,NULL,'Reactive','POSITIVE',NULL),(180,114,NULL,NULL,NULL,NULL,NULL,'Non-reactive','NEGATIVE',NULL),(181,115,NULL,NULL,NULL,NULL,NULL,'Positive','',NULL),(182,115,NULL,NULL,NULL,NULL,NULL,'Negative','',NULL),(183,115,NULL,NULL,NULL,NULL,NULL,'Invalid','',NULL),(184,116,NULL,NULL,NULL,NULL,NULL,'Positive','POSITIVE',NULL),(185,116,NULL,NULL,NULL,NULL,NULL,'Negative','NEGATIVE',NULL),(186,116,NULL,NULL,NULL,NULL,NULL,'Invalid','',NULL),(187,117,NULL,NULL,NULL,NULL,NULL,'Positive','POSITIVE',NULL),(188,117,NULL,NULL,NULL,NULL,NULL,'Negative','NEGATIVE',NULL),(189,118,NULL,NULL,NULL,NULL,NULL,'Positive','POSITIVE',NULL),(190,118,NULL,NULL,NULL,NULL,NULL,'Negative','NEGATIVE',NULL),(191,119,NULL,NULL,NULL,NULL,NULL,'Positive','POSITIVE',NULL),(192,119,NULL,NULL,NULL,NULL,NULL,'Negative','NEGATIVE',NULL),(193,120,NULL,NULL,NULL,NULL,NULL,'Positive','POSITIVE',NULL),(194,120,NULL,NULL,NULL,NULL,NULL,'Negative','NEGATIVE',NULL),(195,121,NULL,NULL,NULL,NULL,NULL,'Positive (OD>0.2)','POSITIVE',NULL),(196,121,NULL,NULL,NULL,NULL,NULL,'Negative(OD<0.1)','NEGATIVE',NULL),(197,121,NULL,NULL,NULL,NULL,NULL,'Equivocal','',NULL),(198,122,NULL,NULL,NULL,NULL,NULL,'Positive (OD>0.2)','POSITIVE',NULL),(199,122,NULL,NULL,NULL,NULL,NULL,'Negative (OD<0.1)','NEGATIVE',NULL),(200,122,NULL,NULL,NULL,NULL,NULL,'Equivocal','',NULL),(201,123,0,120,2,0.000,1000000.000,NULL,'',NULL),(202,124,0,120,2,0.000,100.000,NULL,'',NULL),(203,125,NULL,NULL,NULL,NULL,NULL,'A RhD Positive','',NULL),(204,125,NULL,NULL,NULL,NULL,NULL,'B RhD Positive ','',NULL),(205,125,NULL,NULL,NULL,NULL,NULL,'AB RhD Positive','',NULL),(206,125,NULL,NULL,NULL,NULL,NULL,'O RhD Positive','',NULL),(207,125,NULL,NULL,NULL,NULL,NULL,'A RhD Negative','',NULL),(208,125,NULL,NULL,NULL,NULL,NULL,'B RhD Negative','',NULL),(209,125,NULL,NULL,NULL,NULL,NULL,'AB RhD Negative','',NULL),(210,125,NULL,NULL,NULL,NULL,NULL,'O RhD Negative','',NULL),(211,131,NULL,NULL,NULL,NULL,NULL,'Saline','',NULL),(212,131,NULL,NULL,NULL,NULL,NULL,'Coombs','',NULL),(213,132,NULL,NULL,NULL,NULL,NULL,'No Reaction','',NULL),(214,132,NULL,NULL,NULL,NULL,NULL,'Suspected Reaction','',NULL),(215,132,NULL,NULL,NULL,NULL,NULL,'Confirmed Reaction','',NULL),(216,127,NULL,NULL,NULL,NULL,NULL,'A RhD Positive','',NULL),(217,127,NULL,NULL,NULL,NULL,NULL,'B RhD Positive','',NULL),(218,127,NULL,NULL,NULL,NULL,NULL,'AB RhD Positive ','',NULL),(219,127,NULL,NULL,NULL,NULL,NULL,'O RhD Positive ','',NULL),(220,127,NULL,NULL,NULL,NULL,NULL,'A RhD Negative','',NULL),(221,127,NULL,NULL,NULL,NULL,NULL,'B RhD Negative','',NULL),(222,127,NULL,NULL,NULL,NULL,NULL,'AB RhD Negative','',NULL),(223,127,NULL,NULL,NULL,NULL,NULL,'O RhD Negative','',NULL),(224,133,0,120,2,0.000,1000000.000,NULL,'',NULL),(225,134,0,120,2,0.000,1000000.000,NULL,'',NULL),(226,135,0,120,2,0.000,1000000.000,NULL,'',NULL),(227,136,0,120,2,0.000,1000000.000,NULL,'',NULL),(228,137,0,120,2,0.000,1000000.000,NULL,'',NULL),(229,138,0,120,2,0.000,1000000.000,NULL,'',NULL),(230,139,0,120,2,0.000,1000000.000,NULL,'',NULL),(231,140,0,120,2,0.000,1000000.000,NULL,'',NULL),(232,141,0,120,2,0.000,1000000.000,NULL,'',NULL),(233,142,0,120,2,0.000,1000000.000,NULL,'',NULL),(234,143,0,120,2,0.000,1000000.000,NULL,'',NULL),(235,144,0,120,2,0.000,1000000.000,NULL,'',NULL),(236,145,0,120,2,0.000,1000000.000,NULL,'',NULL),(237,146,0,120,2,0.000,1000000.000,NULL,'',NULL),(238,147,0,120,2,4.000,6.000,NULL,'Normal',NULL),(239,147,0,120,2,3.500,5.500,NULL,'Normal','2016-03-03 15:25:21'),(240,148,0,120,2,10.900,17.300,NULL,'Normal',NULL),(241,148,0,120,2,11.000,16.000,NULL,'Normal','2016-03-03 15:25:21'),(242,149,0,120,2,32.000,50.000,NULL,'Normal',NULL),(243,149,0,120,2,37.000,54.000,NULL,'Normal','2016-03-03 15:25:21'),(244,150,0,120,2,71.000,95.000,NULL,'Normal',NULL),(245,150,0,120,0,80.000,100.000,NULL,'Normal','2016-03-03 15:25:21'),(246,151,0,120,2,23.000,34.000,NULL,'Normal',NULL),(247,152,0,120,2,33.000,36.000,NULL,'Normal',NULL),(248,153,0,120,2,122.000,330.000,NULL,'Normal',NULL),(249,154,0,120,2,37.000,54.000,NULL,'Normal',NULL),(250,155,0,120,2,10.000,16.000,NULL,'Normal',NULL),(251,156,0,120,2,9.000,17.000,NULL,'Normal',NULL),(252,157,0,120,2,6.000,10.000,NULL,'Normal',NULL),(253,158,0,120,2,0.170,0.350,NULL,'Normal',NULL),(254,159,0,120,2,27.000,60.000,NULL,'Normal',NULL),(255,160,0,120,2,29.000,59.000,NULL,'Normal',NULL),(256,160,0,120,2,20.000,40.000,NULL,'Normal','2016-03-03 15:25:21'),(257,161,0,120,2,2.000,10.000,NULL,'Normal',NULL),(258,162,0,120,2,0.000,12.000,NULL,'Normal',NULL),(259,163,0,120,2,0.000,1.000,NULL,'Normal',NULL),(260,164,0,120,2,0.820,4.100,NULL,'Normal',NULL),(261,165,0,120,2,1.260,3.620,NULL,'Normal',NULL),(262,166,0,120,2,0.120,0.560,NULL,'Normal',NULL),(263,167,0,120,2,0.000,0.780,NULL,'Normal',NULL),(264,168,0,120,2,0.000,0.070,NULL,'Normal',NULL),(265,169,0,120,2,4.000,10.000,NULL,'Normal',NULL),(266,170,0,120,2,0.100,1.500,NULL,'Normal',NULL),(267,171,0,120,2,2.000,7.000,NULL,'Normal',NULL),(268,172,0,120,2,3.000,15.000,NULL,'Normal',NULL),(269,173,0,120,2,50.000,70.000,NULL,'Normal',NULL),(270,174,0,120,2,0.500,5.000,NULL,'Normal',NULL),(271,175,0,120,2,30.000,90.000,NULL,'Normal',NULL),(272,176,0,120,2,11.000,45.000,NULL,'Normal',NULL),(273,177,0,120,2,0.000,1000000.000,NULL,'',NULL),(274,178,0,120,2,0.000,1000000.000,NULL,'',NULL),(275,179,0,120,2,0.000,1000000.000,NULL,'',NULL),(276,180,0,120,2,0.000,1000000.000,NULL,'',NULL),(277,181,0,120,2,0.000,1000000.000,NULL,'',NULL),(278,182,0,120,2,0.000,1000000.000,NULL,'',NULL),(279,183,0,120,2,0.000,1000000.000,NULL,'',NULL),(280,185,0,120,2,0.000,1000000.000,NULL,'',NULL),(281,186,0,120,2,0.000,1000000.000,NULL,'',NULL),(282,187,0,120,2,0.000,1000000.000,NULL,'',NULL),(283,188,0,120,0,0.000,1000000.000,NULL,'',NULL),(284,189,0,120,2,0.000,1000000.000,NULL,'',NULL),(285,190,0,120,2,0.000,1000000.000,NULL,'',NULL),(286,191,0,120,2,0.000,1000000.000,NULL,'',NULL),(287,192,0,120,2,0.000,1000000.000,NULL,'',NULL),(288,193,0,120,2,0.000,1000000.000,NULL,'',NULL),(289,194,0,120,2,0.000,1000000.000,NULL,'',NULL),(290,195,0,120,2,0.000,1000000.000,NULL,'',NULL),(291,196,0,120,2,0.000,1000000.000,NULL,'',NULL),(292,197,0,120,2,0.000,1000000.000,NULL,'',NULL),(293,198,0,120,2,0.000,1000000.000,NULL,'',NULL),(294,199,0,120,2,0.000,1000000.000,NULL,'',NULL),(295,200,0,120,2,0.000,1000000.000,NULL,'',NULL),(296,128,NULL,NULL,NULL,NULL,NULL,'Whole Blood','',NULL),(297,128,NULL,NULL,NULL,NULL,NULL,'Packed Red Cells','',NULL),(298,128,NULL,NULL,NULL,NULL,NULL,'Platelets','',NULL),(299,128,NULL,NULL,NULL,NULL,NULL,'FFPs','',NULL),(300,128,NULL,NULL,NULL,NULL,NULL,'Cryoprecipitate','',NULL),(301,201,NULL,NULL,NULL,NULL,NULL,'Negative','',NULL),(302,201,NULL,NULL,NULL,NULL,NULL,'+++','',NULL),(303,201,NULL,NULL,NULL,NULL,NULL,'++','',NULL),(304,201,NULL,NULL,NULL,NULL,NULL,'+','',NULL),(305,201,NULL,NULL,NULL,NULL,NULL,'Scanty (1-3) per 100','',NULL),(306,201,NULL,NULL,NULL,NULL,NULL,'Scanty (4-6) per 100','',NULL),(307,201,NULL,NULL,NULL,NULL,NULL,'Scanty (7-9) per 100','',NULL),(308,201,NULL,NULL,NULL,NULL,NULL,'Scanty (1-5) per 40','',NULL),(309,201,NULL,NULL,NULL,NULL,NULL,'Scanty (6-9) per 40','',NULL),(310,201,NULL,NULL,NULL,NULL,NULL,'Scanty (10-14) per 40','',NULL),(311,201,NULL,NULL,NULL,NULL,NULL,'Scanty (15-19) per 40','',NULL),(312,204,18,120,2,64.000,124.000,NULL,'',NULL),(313,204,0,17,2,74.000,106.000,NULL,'',NULL),(314,205,18,120,2,11.300,14.100,NULL,'Normal',NULL),(315,206,18,120,2,25.000,41.000,NULL,'Normal',NULL),(316,207,18,120,2,0.900,1.400,NULL,'Normal',NULL),(317,208,18,120,0,0.000,10.000,NULL,'Normal',NULL),(318,208,18,20,1,0.000,15.000,NULL,'Normal',NULL),(319,209,NULL,NULL,NULL,NULL,NULL,'Positive','',NULL),(320,209,NULL,NULL,NULL,NULL,NULL,'Negative','',NULL),(321,210,NULL,NULL,NULL,NULL,NULL,'Positive','',NULL),(322,210,NULL,NULL,NULL,NULL,NULL,'Negative','',NULL);
/*!40000 ALTER TABLE `measure_ranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugs`
--

DROP TABLE IF EXISTS `drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drugs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `drugs_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs`
--

LOCK TABLES `drugs` WRITE;
/*!40000 ALTER TABLE `drugs` DISABLE KEYS */;
INSERT INTO `drugs` VALUES (1,'Amoxicillin/Clavulanate',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(2,'Ampicillin',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(3,'Ceftriaxone',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(4,'Chloramphenicol',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(5,'Ciprofloxacin',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(6,'Tetracyline',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(7,'Trimethoprim/Sulfamethoxazole',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(8,'Clindamycin',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(9,'Erythromycin',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(10,'Gentamicin',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(11,'Penicillin',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(12,'Oxacillin',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(13,'Tetracycline',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(14,'Ceftazidime',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(15,'Piperacillin',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(16,'Piperacillin/Tazobactam',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(17,'Ceftriaxon',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(18,'Cefotaxim',NULL,NULL,'2015-11-03 11:05:20','2015-11-03 11:05:20'),(19,'Vancomycin','',NULL,'2015-11-23 13:01:00','2015-11-23 13:01:00'),(20,'Cefoxitin','',NULL,'2015-11-23 13:10:13','2015-11-23 13:10:13'),(21,'Tazobactam','',NULL,'2015-11-23 13:10:38','2015-11-23 13:10:38'),(22,'Naladixic Acid','',NULL,'2015-11-23 13:11:40','2015-11-23 13:11:40'),(23,'Sulbactam','',NULL,'2015-11-23 13:17:10','2015-11-23 13:17:10'),(24,'Amoxicillin','',NULL,'2015-11-23 13:19:35','2015-11-23 13:19:35'),(25,'Cefuroxime','',NULL,'2015-11-23 13:19:47','2015-11-23 13:19:47'),(26,'Ampicillin/Sulbactam','',NULL,'2015-11-23 13:21:15','2015-11-23 13:21:15');
/*!40000 ALTER TABLE `drugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1),(21,1,1),(22,1,3),(23,2,1),(24,2,3),(25,3,1),(26,3,3),(27,4,1),(28,4,3),(29,5,1),(30,5,3),(31,6,1),(32,6,2),(33,7,1),(34,7,2),(35,8,1),(36,8,2),(37,9,1),(38,9,2),(39,10,1),(40,10,2),(41,11,1),(42,11,2),(43,12,1),(44,12,2),(45,13,1),(46,13,2),(47,14,1),(48,15,1),(49,16,1),(50,17,1),(51,17,2),(52,18,1),(53,19,1),(54,20,1),(55,1,1),(56,1,2),(57,1,3),(58,2,1),(59,2,2),(60,2,3),(61,3,1),(62,3,2),(63,3,3),(64,4,1),(65,4,3),(66,5,1),(67,5,2),(68,5,3),(69,6,1),(70,6,2),(71,7,1),(72,7,2),(73,8,1),(74,8,2),(75,9,1),(76,9,2),(77,10,1),(78,10,2),(79,11,1),(80,11,2),(81,12,1),(82,12,2),(83,13,1),(84,13,2),(85,14,1),(86,15,1),(87,16,1),(88,17,1),(89,17,2),(90,18,1),(91,19,1),(92,20,1),(93,21,1),(94,22,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panel_types`
--

DROP TABLE IF EXISTS `panel_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panel_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panel_types`
--

LOCK TABLES `panel_types` WRITE;
/*!40000 ALTER TABLE `panel_types` DISABLE KEYS */;
INSERT INTO `panel_types` VALUES (1,'CSF Analysis','2015-11-08 16:58:13','2015-11-08 16:58:13',NULL),(2,'Urinalysis','2015-12-10 09:13:56','2015-12-10 09:13:56',NULL),(3,'Sterile Fluid Analysis','2016-02-25 13:34:04','2016-02-25 13:34:04',NULL);
/*!40000 ALTER TABLE `panel_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panels`
--

DROP TABLE IF EXISTS `panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `panel_type_id` int(10) unsigned NOT NULL,
  `test_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `panels_panel_type_id_foreign` (`panel_type_id`),
  KEY `panels_test_type_id_foreign` (`test_type_id`),
  CONSTRAINT `panels_panel_type_id_foreign` FOREIGN KEY (`panel_type_id`) REFERENCES `panel_types` (`id`),
  CONSTRAINT `panels_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panels`
--

LOCK TABLES `panels` WRITE;
/*!40000 ALTER TABLE `panels` DISABLE KEYS */;
INSERT INTO `panels` VALUES (1,1,5),(2,1,4),(3,1,7),(4,1,3),(5,1,6),(9,2,13),(10,2,11),(11,2,12),(19,3,5),(20,3,4),(21,3,7),(22,3,3),(23,3,8);
/*!40000 ALTER TABLE `panels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-04 16:12:54
