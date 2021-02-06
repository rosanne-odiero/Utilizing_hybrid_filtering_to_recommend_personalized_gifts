-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `accounts_emailactivation`
--

DROP TABLE IF EXISTS `accounts_emailactivation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_emailactivation` (
  `id` tinyint(4) DEFAULT NULL,
  `email` varchar(18) DEFAULT NULL,
  `key` varchar(34) DEFAULT NULL,
  `activated` tinyint(4) DEFAULT NULL,
  `forced_expired` tinyint(4) DEFAULT NULL,
  `expires` tinyint(4) DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL,
  `update` varchar(10) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_emailactivation`
--

LOCK TABLES `accounts_emailactivation` WRITE;
/*!40000 ALTER TABLE `accounts_emailactivation` DISABLE KEYS */;
INSERT INTO `accounts_emailactivation` VALUES (9,'hungrypy@gmail.com','oqbw8q0oapd9grci859hir716w11fb8p97',0,0,7,'2017-10-25','2017-10-25',6);
/*!40000 ALTER TABLE `accounts_emailactivation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_guestemail`
--

DROP TABLE IF EXISTS `accounts_guestemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_guestemail` (
  `id` tinyint(4) DEFAULT NULL,
  `email` varchar(23) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `update` varchar(10) DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_guestemail`
--

LOCK TABLES `accounts_guestemail` WRITE;
/*!40000 ALTER TABLE `accounts_guestemail` DISABLE KEYS */;
INSERT INTO `accounts_guestemail` VALUES (1,'abc@gmail.com',1,'2017-10-12','2017-10-12'),(2,'abc@gmail.com',1,'2017-10-12','2017-10-12'),(3,'abc123@gmail.com',1,'2017-10-12','2017-10-12'),(4,'abc123@gmail.com',1,'2017-10-12','2017-10-12'),(5,'abc@gmail.com',1,'2017-10-12','2017-10-12'),(6,'cfe@gmail.com',1,'2017-10-12','2017-10-12'),(7,'abc@gmail.com',1,'2017-10-25','2017-10-25'),(8,'abc@gmail.com',1,'2017-10-25','2017-10-25'),(9,'new-test-user@gmail.com',1,'2017-10-25','2017-10-25'),(10,'abc123@gmail.com',1,'2017-11-09','2017-11-09');
/*!40000 ALTER TABLE `accounts_guestemail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_user`
--

DROP TABLE IF EXISTS `accounts_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(77) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `email` varchar(18) DEFAULT NULL,
  `staff` tinyint(4) DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL,
  `full_name` varchar(14) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_user`
--

LOCK TABLES `accounts_user` WRITE;
/*!40000 ALTER TABLE `accounts_user` DISABLE KEYS */;
INSERT INTO `accounts_user` VALUES (1,'pbkdf2_sha256$36000$cwbz07MdkBL9$BIrwnM1LR7orEP2a4LFJ8ez8WuhSNjGFOwRO5vAJcw8=','2017-11-16','hello@teamcfe.com',1,1,'2017-10-09','Justin Mitchel',1),(6,'pbkdf2_sha256$36000$VaUkT6HdtO3T$yuc17HZqlXE2IKCsHY7EFek0VdEkg0eU0xO95JI+m7g=','2017-10-24','hungrypy@gmail.com',0,0,'2017-10-24','Justin Mitchel',0);
/*!40000 ALTER TABLE `accounts_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses_address`
--

DROP TABLE IF EXISTS `addresses_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses_address` (
  `id` tinyint(4) DEFAULT NULL,
  `address_line_1` varchar(12) DEFAULT NULL,
  `address_line_2` varchar(0) DEFAULT NULL,
  `city` varchar(13) DEFAULT NULL,
  `country` varchar(24) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `postal_code` mediumint(9) DEFAULT NULL,
  `billing_profile_id` tinyint(4) DEFAULT NULL,
  `name` varchar(14) DEFAULT NULL,
  `nickname` varchar(11) DEFAULT NULL,
  `address_type` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses_address`
--

LOCK TABLES `addresses_address` WRITE;
/*!40000 ALTER TABLE `addresses_address` DISABLE KEYS */;
INSERT INTO `addresses_address` VALUES (1,'123 Main St','','Newport Beach','United States of America','California',92222,1,'Justin Mitchel','Home','shipping'),(4,'123 Main St','','Newport Beach','United States of America','California',92222,1,'','','shipping'),(5,'123 Main St','','Newport Beach','United States of America','California',92222,7,'','','shipping'),(6,'123 Main St','','Newport Beach','United States of America','California',92222,7,'','','billing'),(7,'123 Main St','','Newport Beach','United States of America','California',92222,7,'','','shipping'),(8,'123 Main St','','Newport Beach','United States of America','California',92222,7,'','','billing'),(9,'123 Main St','','Newport Beach','United States of America','California',92222,8,'','','shipping'),(10,'123 Main St','','Newport Beach','United States of America','California',92222,8,'','','billing'),(11,'123 Main St','','Newport Beach','United States of America','California',92222,8,'','','shipping'),(12,'123 Main St','','Newport Beach','United States of America','California',92222,8,'','','billing'),(13,'123 Main St','','Newport Beach','United States of America','California',92222,8,'','','shipping'),(14,'123 Main St','','Newport Beach','United States of America','California',92222,8,'','','billing'),(15,'123 Main St','','Newport Beach','United States of America','California',92222,8,'','','shipping'),(16,'123 Main St','','Newport Beach','United States of America','California',92222,8,'','','billing'),(17,'123 Main St','','Newport Beach','United States of America','California',92222,7,'','','shipping'),(18,'123 Main St','','Newport Beach','United States of America','California',92222,7,'','','billing'),(19,'123 Main St','','Newport Beach','United States of America','California',92222,9,'','','shipping'),(20,'123 Main St','','Newport Beach','United States of America','California',92222,9,'','','billing'),(21,'123 Main St','','Newport Beach','United States of America','California',92222,9,'','','shipping'),(22,'123 Main St','','Newport Beach','United States of America','California',92222,9,'','','billing'),(23,'123 Main St','','Newport Beach','United States of America','California',92222,7,'','','shipping'),(24,'123 Main St','','Newport Beach','United States of America','California',92222,7,'','','billing'),(25,'123 Main St','','Newport Beach','United States of America','California',92222,12,'','','shipping'),(26,'123 Main St','','Newport Beach','United States of America','California',92222,12,'','','billing'),(27,'4425 Main St','','Newport Beach','United States of America','California',92222,1,'','','shipping'),(28,'125 Main St','','Newport Beach','United States of America','California',92222,1,'','','billing'),(29,'555 Main St','','Newport Beach','United States of America','California',92222,1,'','','shipping'),(30,'125 Main St','','Newport Beach','United States of America','California',92222,1,'','','billing'),(31,'1123132 Main','','Newport Beach','United States of America','California',92222,1,'Justin','New Address','shipping'),(32,'1123132 Main','','Newport Beach','United States of America','California',92222,1,'Justin','New Address','shipping'),(33,'1123132 Main','','Newport Beach','United States of America','California',92222,1,'Justin','New Address','shipping'),(34,'123 Main St','','Newport Beach','United States of America','California',92222,8,'','','billing');
/*!40000 ALTER TABLE `addresses_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytics_objectviewed`
--

DROP TABLE IF EXISTS `analytics_objectviewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytics_objectviewed` (
  `id` tinyint(4) DEFAULT NULL,
  `ip_address` varchar(9) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics_objectviewed`
--

LOCK TABLES `analytics_objectviewed` WRITE;
/*!40000 ALTER TABLE `analytics_objectviewed` DISABLE KEYS */;
INSERT INTO `analytics_objectviewed` VALUES (1,'',1,'2017-10-10',12,'1'),(2,'',4,'2017-10-10',12,'1'),(3,'127.0.0.1',1,'2017-10-10',12,'1'),(4,'127.0.0.1',1,'2017-10-10',12,'1'),(5,'127.0.0.1',1,'2017-10-10',12,'1'),(6,'127.0.0.1',3,'2017-10-10',12,'1'),(7,'127.0.0.1',4,'2017-10-10',12,'1'),(8,'127.0.0.1',1,'2017-10-12',12,'1'),(9,'127.0.0.1',1,'2017-10-19',12,''),(10,'127.0.0.1',1,'2017-10-19',12,''),(11,'127.0.0.1',1,'2017-10-25',12,''),(12,'127.0.0.1',5,'2017-10-25',12,'1'),(13,'127.0.0.1',4,'2017-10-25',12,'1'),(14,'127.0.0.1',4,'2017-10-25',12,'1'),(15,'127.0.0.1',5,'2017-10-25',12,'1'),(16,'127.0.0.1',1,'2017-10-25',12,'1'),(17,'127.0.0.1',1,'2017-11-07',12,'1'),(18,'127.0.0.1',1,'2017-11-08',12,'1'),(19,'127.0.0.1',7,'2017-11-08',12,'1'),(20,'127.0.0.1',8,'2017-11-08',12,'1'),(21,'127.0.0.1',7,'2017-11-08',12,'1'),(22,'127.0.0.1',8,'2017-11-08',12,'1'),(23,'127.0.0.1',8,'2017-11-08',12,'1'),(24,'127.0.0.1',7,'2017-11-08',12,'1'),(25,'127.0.0.1',8,'2017-11-08',12,'1'),(26,'127.0.0.1',8,'2017-11-08',12,'1'),(27,'127.0.0.1',7,'2017-11-08',12,'1'),(28,'127.0.0.1',1,'2017-11-08',12,'1'),(29,'127.0.0.1',1,'2017-11-08',12,'1'),(30,'127.0.0.1',9,'2017-11-08',12,'1'),(31,'127.0.0.1',9,'2017-11-09',12,'1'),(32,'127.0.0.1',9,'2017-11-09',12,''),(33,'127.0.0.1',9,'2017-11-09',12,''),(34,'127.0.0.1',9,'2017-11-09',12,''),(35,'127.0.0.1',9,'2017-11-09',12,''),(36,'127.0.0.1',9,'2017-11-09',12,''),(37,'127.0.0.1',9,'2017-11-09',12,''),(38,'127.0.0.1',1,'2017-11-09',12,'1'),(39,'127.0.0.1',1,'2017-11-09',12,'1'),(40,'127.0.0.1',3,'2017-11-09',12,'1'),(41,'127.0.0.1',1,'2017-11-09',12,'1'),(42,'127.0.0.1',1,'2017-11-09',12,''),(43,'127.0.0.1',1,'2017-11-09',12,'1'),(44,'127.0.0.1',1,'2017-11-09',12,'1'),(45,'127.0.0.1',1,'2017-11-09',12,'1'),(46,'127.0.0.1',1,'2017-11-09',12,'1'),(47,'127.0.0.1',1,'2017-11-09',12,'1'),(48,'127.0.0.1',1,'2017-11-09',12,'1'),(49,'127.0.0.1',1,'2017-11-09',12,'1'),(50,'127.0.0.1',1,'2017-11-09',12,'1'),(51,'127.0.0.1',1,'2017-11-09',12,'1'),(52,'127.0.0.1',9,'2017-11-15',12,'1'),(53,'127.0.0.1',3,'2017-11-16',12,'1'),(54,'127.0.0.1',1,'2020-11-15',12,''),(55,'127.0.0.1',3,'2020-11-15',12,''),(56,'127.0.0.1',3,'2020-11-15',12,''),(57,'127.0.0.1',1,'2020-11-15',12,''),(58,'127.0.0.1',7,'2020-11-15',12,''),(59,'127.0.0.1',1,'2020-11-15',12,'');
/*!40000 ALTER TABLE `analytics_objectviewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytics_usersession`
--

DROP TABLE IF EXISTS `analytics_usersession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytics_usersession` (
  `id` tinyint(4) DEFAULT NULL,
  `ip_address` varchar(9) DEFAULT NULL,
  `session_key` varchar(32) DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `ended` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics_usersession`
--

LOCK TABLES `analytics_usersession` WRITE;
/*!40000 ALTER TABLE `analytics_usersession` DISABLE KEYS */;
INSERT INTO `analytics_usersession` VALUES (1,'127.0.0.1','qea0xwjrdn6nzrek2yna0njddvbp7tcf','2017-10-10',1,0,1),(2,'127.0.0.1','dqcv1ockb9zda8j34r6h5e27mhi2nau0','2017-10-10',0,1,1),(3,'127.0.0.1','nt7z1u403co8vvch0tiblv75snrxu3h4','2017-10-10',0,1,1),(4,'127.0.0.1','ubmo0kdrmzbdce5t4iltasnfnzcqlbs3','2017-10-11',1,0,1),(5,'127.0.0.1','3dbbx1mgc8y6qm8gzrjtzkjvslx3ipen','2017-10-12',1,0,1),(6,'127.0.0.1','bdzfhg7zuxpe49nzj9z9gc7owe9j7ce9','2017-10-12',1,0,1),(7,'127.0.0.1','22lp22exe8ngclyd178jim7sqhkysmpt','2017-10-16',1,0,1),(8,'127.0.0.1','bfxzqeommf669ur6kq421kkor4j9qubq','2017-10-23',1,0,1),(9,'127.0.0.1','yiiksgda7serp1siucsf6y45cxyb5ozp','2017-10-23',1,0,1),(10,'127.0.0.1','yiiksgda7serp1siucsf6y45cxyb5ozp','2017-10-23',1,0,1),(11,'127.0.0.1','42wktirbl9fdqrfj395wktd490lk3rsr','2017-10-23',1,0,1),(12,'127.0.0.1','zy0ujrgvznzv1jyzcjg82qxlwre50emc','2017-10-24',1,0,6);
/*!40000 ALTER TABLE `analytics_usersession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(29) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,2,'add_permission','Can add permission'),(5,2,'change_permission','Can change permission'),(6,2,'delete_permission','Can delete permission'),(7,3,'add_group','Can add group'),(8,3,'change_group','Can change group'),(9,3,'delete_group','Can delete group'),(10,4,'add_contenttype','Can add content type'),(11,4,'change_contenttype','Can change content type'),(12,4,'delete_contenttype','Can delete content type'),(13,5,'add_session','Can add session'),(14,5,'change_session','Can change session'),(15,5,'delete_session','Can delete session'),(16,6,'add_user','Can add user'),(17,6,'change_user','Can change user'),(18,6,'delete_user','Can delete user'),(19,7,'add_guestemail','Can add guest email'),(20,7,'change_guestemail','Can change guest email'),(21,7,'delete_guestemail','Can delete guest email'),(22,8,'add_address','Can add address'),(23,8,'change_address','Can change address'),(24,8,'delete_address','Can delete address'),(25,9,'add_billingprofile','Can add billing profile'),(26,9,'change_billingprofile','Can change billing profile'),(27,9,'delete_billingprofile','Can delete billing profile'),(28,10,'add_cart','Can add cart'),(29,10,'change_cart','Can change cart'),(30,10,'delete_cart','Can delete cart'),(31,11,'add_order','Can add order'),(32,11,'change_order','Can change order'),(33,11,'delete_order','Can delete order'),(34,12,'add_product','Can add product'),(35,12,'change_product','Can change product'),(36,12,'delete_product','Can delete product'),(37,13,'add_tag','Can add tag'),(38,13,'change_tag','Can change tag'),(39,13,'delete_tag','Can delete tag'),(40,14,'add_objectviewed','Can add Object viewed'),(41,14,'change_objectviewed','Can change Object viewed'),(42,14,'delete_objectviewed','Can delete Object viewed'),(43,15,'add_usersession','Can add user session'),(44,15,'change_usersession','Can change user session'),(45,15,'delete_usersession','Can delete user session'),(46,16,'add_card','Can add card'),(47,16,'change_card','Can change card'),(48,16,'delete_card','Can delete card'),(49,17,'add_charge','Can add charge'),(50,17,'change_charge','Can change charge'),(51,17,'delete_charge','Can delete charge'),(52,18,'add_marketingpreference','Can add marketing preference'),(53,18,'change_marketingpreference','Can change marketing preference'),(54,18,'delete_marketingpreference','Can delete marketing preference'),(55,19,'add_emailactivation','Can add email activation'),(56,19,'change_emailactivation','Can change email activation'),(57,19,'delete_emailactivation','Can delete email activation'),(58,20,'add_productpurchase','Can add product purchase'),(59,20,'change_productpurchase','Can change product purchase'),(60,20,'delete_productpurchase','Can delete product purchase'),(61,21,'add_productpurchasemanager','Can add product purchase manager'),(62,21,'change_productpurchasemanager','Can change product purchase manager'),(63,21,'delete_productpurchasemanager','Can delete product purchase manager'),(64,22,'add_productfile','Can add product file'),(65,22,'change_productfile','Can change product file'),(66,22,'delete_productfile','Can delete product file');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_billingprofile`
--

DROP TABLE IF EXISTS `billing_billingprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_billingprofile` (
  `id` tinyint(4) DEFAULT NULL,
  `email` varchar(23) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `update` varchar(10) DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL,
  `user_id` varchar(1) DEFAULT NULL,
  `customer_id` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_billingprofile`
--

LOCK TABLES `billing_billingprofile` WRITE;
/*!40000 ALTER TABLE `billing_billingprofile` DISABLE KEYS */;
INSERT INTO `billing_billingprofile` VALUES (1,'hello@teamcfe.com',1,'2017-10-12','2017-10-09','1','cus_BZKubw4NkZRKft'),(7,'abc@gmail.com',1,'2017-10-12','2017-10-12','','cus_BZL3c5AuRHhdII'),(8,'abc123@gmail.com',1,'2017-10-12','2017-10-12','','cus_BZLB6Z95ZKLWAl'),(9,'cfe@gmail.com',1,'2017-10-12','2017-10-12','','cus_BZLSPsYraaDrME'),(11,'hungrypy@gmail.com',1,'2017-10-24','2017-10-24','6','cus_Bdq6WmjJpY9NPo'),(12,'new-test-user@gmail.com',1,'2017-10-25','2017-10-25','','cus_BeCXg9NKU22LX6');
/*!40000 ALTER TABLE `billing_billingprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_card`
--

DROP TABLE IF EXISTS `billing_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_card` (
  `id` tinyint(4) DEFAULT NULL,
  `stripe_id` varchar(29) DEFAULT NULL,
  `brand` varchar(10) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `exp_month` tinyint(4) DEFAULT NULL,
  `exp_year` smallint(6) DEFAULT NULL,
  `last4` smallint(6) DEFAULT NULL,
  `billing_profile_id` tinyint(4) DEFAULT NULL,
  `default` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_card`
--

LOCK TABLES `billing_card` WRITE;
/*!40000 ALTER TABLE `billing_card` DISABLE KEYS */;
INSERT INTO `billing_card` VALUES (11,'card_1BCCmGBZ0tcIoi0kyOjKydqK','Visa','US',4,2024,4242,9,0,0,'2017-10-12'),(12,'card_1BCCmWBZ0tcIoi0ke0IUJD3z','MasterCard','US',5,2055,4444,9,0,0,'2017-10-12'),(13,'card_1BCCovBZ0tcIoi0khIGovFR6','Visa','US',4,2024,4242,9,1,1,'2017-10-12'),(14,'card_1BDhBPBZ0tcIoi0kZ0QxQkkL','Visa','US',4,2024,4242,1,0,1,'2017-10-16'),(15,'card_1BDhCtBZ0tcIoi0kK9UKrMJd','Visa','US',4,2024,4242,1,0,1,'2017-10-16'),(16,'card_1BDhDpBZ0tcIoi0kxqWfF0Fg','Visa','US',4,2024,4242,1,0,1,'2017-10-16'),(17,'card_1BDhEPBZ0tcIoi0kuPfWNcL3','Visa','US',4,2024,4242,1,0,1,'2017-10-16'),(18,'card_1BDhGkBZ0tcIoi0kQNVLyNev','Visa','US',4,2024,4242,1,0,1,'2017-10-16'),(19,'card_1BDhKhBZ0tcIoi0kIXpLubYH','Visa','US',4,2024,4242,1,0,1,'2017-10-16'),(20,'card_1BDhMdBZ0tcIoi0kkOHiSjqZ','Visa','US',4,2024,4242,1,1,1,'2017-10-16'),(21,'card_1BGu1KBZ0tcIoi0kPlj6yjLH','Visa','US',4,2024,4242,7,1,0,'2017-10-25'),(22,'card_1BGu8pBZ0tcIoi0k74LVhr1s','Visa','US',4,2024,4242,12,1,0,'2017-10-25'),(23,'card_1BM3yABZ0tcIoi0kjYNYiCmQ','Visa','US',4,2024,4242,8,1,0,'2017-11-09');
/*!40000 ALTER TABLE `billing_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_charge`
--

DROP TABLE IF EXISTS `billing_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_charge` (
  `id` tinyint(4) DEFAULT NULL,
  `stripe_id` varchar(27) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT NULL,
  `refunded` tinyint(4) DEFAULT NULL,
  `outcome` varchar(154) DEFAULT NULL,
  `outcome_type` varchar(10) DEFAULT NULL,
  `seller_message` varchar(17) DEFAULT NULL,
  `risk_level` varchar(6) DEFAULT NULL,
  `billing_profile_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_charge`
--

LOCK TABLES `billing_charge` WRITE;
/*!40000 ALTER TABLE `billing_charge` DISABLE KEYS */;
INSERT INTO `billing_charge` VALUES (1,'ch_1BBuIZBZ0tcIoi0kbBzYyb2K',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(2,'ch_1BBuJ4BZ0tcIoi0kkpEi1LqU',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(3,'ch_1BCCMiBZ0tcIoi0kChw5s3Cg',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(4,'ch_1BCCNBBZ0tcIoi0k7Oj4ENDc',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(5,'ch_1BCCNyBZ0tcIoi0kInG60DFK',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',7),(6,'ch_1BCCOZBZ0tcIoi0k1D6qJ30K',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',7),(7,'ch_1BCCPJBZ0tcIoi0kQy3qiL6T',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(8,'ch_1BCCVTBZ0tcIoi0keabGAD3e',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',8),(9,'ch_1BCCW2BZ0tcIoi0kWN4Z3n0Z',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(10,'ch_1BCCWVBZ0tcIoi0k53VHd0dL',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',8),(11,'ch_1BCCfpBZ0tcIoi0kk6PswxSd',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',8),(12,'ch_1BCCgsBZ0tcIoi0kTXZyDKIt',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',7),(13,'ch_1BCCmeBZ0tcIoi0kL4mfS26T',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',9),(14,'ch_1BGu1OBZ0tcIoi0kBCNO9b21',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',7),(15,'ch_1BGu8tBZ0tcIoi0k2rRI94xC',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',12),(16,'ch_1BGxA2BZ0tcIoi0kWDqpfyFs',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(17,'ch_1BGxBTBZ0tcIoi0kKS6T1Dzg',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(18,'ch_1BLL06BZ0tcIoi0kYUaMCcdW',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(19,'ch_1BLL7uBZ0tcIoi0kusAlr72F',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(20,'ch_1BLLbpBZ0tcIoi0kiJJtWqUQ',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(21,'ch_1BLfwEBZ0tcIoi0kcaheDVIk',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(22,'ch_1BLfwZBZ0tcIoi0kHlw2nABl',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(23,'ch_1BLgF6BZ0tcIoi0k9z8Ujh8z',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(24,'ch_1BLgFeBZ0tcIoi0kl9CESkpr',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(25,'ch_1BLhVpBZ0tcIoi0kSyu2sQdB',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(26,'ch_1BLhXdBZ0tcIoi0kqKGRRMVA',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(27,'ch_1BLhYWBZ0tcIoi0kD84DyXl0',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(28,'ch_1BLhYkBZ0tcIoi0kdz3jm58z',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(29,'ch_1BLhugBZ0tcIoi0ka6bTXpGE',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(30,'ch_1BM38NBZ0tcIoi0kjmXobm8Q',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(31,'ch_1BM3yEBZ0tcIoi0k47VPOR5p',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',8),(32,'ch_1BOsAWBZ0tcIoi0kpxdFQjuP',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(33,'ch_1BOsZeBZ0tcIoi0kUfLCxXj9',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(34,'ch_1BOu1PBZ0tcIoi0kjJnCTScW',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1),(35,'ch_1BOy4WBZ0tcIoi0kqD6GOnLn',1,0,'{\r\n  \"network_status\": \"approved_by_network\",\r\n  \"reason\": null,\r\n  \"risk_level\": \"normal\",\r\n  \"seller_message\": \"Payment complete.\",\r\n  \"type\": \"authoriz','authorized','Payment complete.','normal',1);
/*!40000 ALTER TABLE `billing_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts_cart`
--

DROP TABLE IF EXISTS `carts_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts_cart` (
  `id` tinyint(4) DEFAULT NULL,
  `total` decimal(5,2) DEFAULT NULL,
  `updated` varchar(10) DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL,
  `user_id` varchar(1) DEFAULT NULL,
  `subtotal` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts_cart`
--

LOCK TABLES `carts_cart` WRITE;
/*!40000 ALTER TABLE `carts_cart` DISABLE KEYS */;
INSERT INTO `carts_cart` VALUES (1,43.19,'2017-10-09','2017-10-09','1',39.99),(2,43.19,'2017-10-09','2017-10-09','1',39.99),(3,43.19,'2017-10-12','2017-10-11','1',39.99),(4,194.37,'2017-10-12','2017-10-12','1',179.97),(5,0.00,'2017-10-12','2017-10-12','1',0.00),(6,43.19,'2017-10-12','2017-10-12','1',39.99),(7,237.56,'2017-10-12','2017-10-12','1',219.96),(8,194.37,'2017-10-12','2017-10-12','',179.97),(9,194.37,'2017-10-12','2017-10-12','',179.97),(10,43.19,'2017-10-12','2017-10-12','1',39.99),(11,0.00,'2017-10-12','2017-10-12','1',0.00),(12,86.38,'2017-10-12','2017-10-12','',79.98),(13,43.19,'2017-10-12','2017-10-12','1',39.99),(14,86.38,'2017-10-12','2017-10-12','',79.98),(15,86.38,'2017-10-12','2017-10-12','',79.98),(16,0.00,'2017-10-19','2017-10-12','1',0.00),(17,86.38,'2017-10-12','2017-10-12','',79.98),(18,86.38,'2017-10-12','2017-10-12','',79.98),(19,86.38,'2017-10-12','2017-10-12','',79.98),(20,0.00,'2017-10-16','2017-10-16','',0.00),(21,0.00,'2017-10-19','2017-10-19','',0.00),(22,0.00,'2017-10-23','2017-10-23','',0.00),(23,0.00,'2017-10-23','2017-10-23','1',0.00),(24,0.00,'2017-10-24','2017-10-24','1',0.00),(25,0.00,'2017-10-25','2017-10-25','1',0.00),(26,43.19,'2017-10-25','2017-10-25','',39.99),(27,43.19,'2017-10-25','2017-10-25','',39.99),(28,43.19,'2017-10-25','2017-10-25','',39.99),(29,194.37,'2017-10-25','2017-10-25','1',179.97),(30,237.56,'2017-10-25','2017-10-25','1',219.96),(31,86.38,'2017-11-07','2017-10-25','1',79.98),(32,237.56,'2017-11-07','2017-11-07','1',219.96),(33,86.38,'2017-11-07','2017-11-07','1',79.98),(34,151.18,'2017-11-07','2017-11-07','1',139.98),(35,86.38,'2017-11-07','2017-11-07','1',79.98),(36,43.19,'2017-11-07','2017-11-07','1',39.99),(37,43.19,'2017-11-07','2017-11-07','1',39.99),(38,194.37,'2017-11-08','2017-11-07','1',179.97),(39,43.19,'2017-11-08','2017-11-08','1',39.99),(40,43.19,'2017-11-08','2017-11-08','1',39.99),(41,43.19,'2017-11-08','2017-11-08','1',39.99),(42,43.19,'2017-11-08','2017-11-08','1',39.99),(43,10.79,'2017-11-08','2017-11-08','1',9.99),(44,0.00,'2017-11-08','2017-11-08','1',0.00),(45,0.00,'2017-11-09','2017-11-09','',0.00),(46,10.79,'2017-11-09','2017-11-09','',9.99),(47,0.00,'2017-11-09','2017-11-09','1',0.00),(48,0.00,'2017-11-09','2017-11-09','1',0.00),(49,0.00,'2017-11-09','2017-11-09','',0.00),(50,0.00,'2017-11-09','2017-11-09','1',0.00),(51,0.00,'2017-11-15','2017-11-15','1',0.00),(52,0.00,'2017-11-15','2017-11-15','1',0.00),(53,43.19,'2017-11-16','2017-11-16','1',39.99),(54,43.19,'2017-11-16','2017-11-16','1',39.99),(55,151.18,'2017-11-16','2017-11-16','1',139.98),(56,86.38,'2017-11-17','2017-11-17','1',79.98),(57,86.38,'2020-11-15','2020-11-15','',79.98);
/*!40000 ALTER TABLE `carts_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts_cart_products`
--

DROP TABLE IF EXISTS `carts_cart_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts_cart_products` (
  `id` tinyint(4) DEFAULT NULL,
  `cart_id` tinyint(4) DEFAULT NULL,
  `product_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts_cart_products`
--

LOCK TABLES `carts_cart_products` WRITE;
/*!40000 ALTER TABLE `carts_cart_products` DISABLE KEYS */;
INSERT INTO `carts_cart_products` VALUES (1,1,1),(2,2,3),(3,3,1),(4,4,1),(5,4,3),(6,4,4),(8,6,1),(10,7,1),(9,7,3),(11,7,4),(12,7,5),(13,8,1),(14,8,3),(15,8,4),(17,9,1),(16,9,3),(18,9,4),(19,10,1),(20,12,1),(21,12,3),(22,13,1),(24,14,1),(23,14,3),(25,15,1),(26,15,3),(27,17,1),(28,17,3),(29,18,1),(30,18,3),(31,19,1),(32,19,3),(33,26,1),(34,27,1),(35,28,1),(36,29,1),(37,29,3),(38,29,4),(39,30,1),(40,30,3),(41,30,4),(42,30,5),(44,31,1),(43,31,3),(45,32,1),(46,32,3),(47,32,4),(48,32,5),(50,33,1),(49,33,3),(51,34,1),(52,34,4),(53,35,1),(54,35,3),(56,36,7),(58,37,7),(59,38,1),(60,38,3),(61,38,4),(62,39,5),(63,40,7),(64,41,7),(65,42,8),(66,43,9),(67,46,9),(73,53,3),(74,54,3),(75,55,3),(76,55,4),(77,56,3),(78,56,5),(80,57,1),(79,57,3);
/*!40000 ALTER TABLE `carts_cart_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` smallint(6) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(54) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` text,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,1,'hello@teamcfe.com',2,'[]',6,1,'2017-10-09'),(2,2,'abc@gmail.com',1,'[{\"added\": {}}]',6,1,'2017-10-09'),(3,5,'abc123456@gmail.com',2,'[{\"changed\": {\"fields\": [\"active\"]}}]',6,1,'2017-10-09'),(4,1,'T-Shirt viewed on 2017-10-10 21:32:03.776734+00:00',1,'[{\"added\": {}}]',14,1,'2017-10-10'),(5,2,'None viewed on 2017-10-10 21:32:10.796672+00:00',1,'[{\"added\": {}}]',14,1,'2017-10-10'),(6,2,'Lorem Ipsum viewed on 2017-10-10 21:32:10.796672+00:00',2,'[{\"changed\": {\"fields\": [\"object_id\"]}}]',14,1,'2017-10-10'),(7,3,'UserSession object',2,'[{\"changed\": {\"fields\": [\"active\"]}}]',15,1,'2017-10-10'),(8,1,'hello@teamcfe.com',2,'[]',9,1,'2017-10-11'),(9,1,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"customer_id\"]}}]',9,1,'2017-10-11'),(10,1,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"customer_id\"]}}]',9,1,'2017-10-11'),(11,1,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"customer_id\"]}}]',9,1,'2017-10-11'),(12,1,'Visa 4242',3,'',16,1,'2017-10-11'),(13,6,'ddd@gmail.com',3,'',9,1,'2017-10-12'),(14,5,'abc123456@gmail.com',3,'',9,1,'2017-10-12'),(15,4,'abc12@gmail.com',3,'',9,1,'2017-10-12'),(16,3,'abc123@gmail.com',3,'',9,1,'2017-10-12'),(17,2,'abc@gmail.com',3,'',9,1,'2017-10-12'),(18,5,'abc123456@gmail.com',3,'',6,1,'2017-10-12'),(19,3,'abc123@gmail.com',3,'',6,1,'2017-10-12'),(20,4,'abc12@gmail.com',3,'',6,1,'2017-10-12'),(21,2,'abc@gmail.com',3,'',6,1,'2017-10-12'),(22,6,'ddd@gmail.com',3,'',6,1,'2017-10-12'),(23,1,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"customer_id\"]}}]',9,1,'2017-10-12'),(24,2,'Visa 4242',3,'',16,1,'2017-10-12'),(25,8,'Visa 4242',3,'',16,1,'2017-10-12'),(26,7,'Visa 4242',3,'',16,1,'2017-10-12'),(27,6,'Visa 4242',3,'',16,1,'2017-10-12'),(28,5,'Visa 4242',3,'',16,1,'2017-10-12'),(29,4,'Visa 4242',3,'',16,1,'2017-10-12'),(30,3,'Visa 4242',3,'',16,1,'2017-10-12'),(31,10,'Visa 4242',3,'',16,1,'2017-10-12'),(32,9,'Visa 4242',3,'',16,1,'2017-10-12'),(33,1,'hello@teamcfe.com',1,'[{\"added\": {}}]',18,1,'2017-10-18'),(34,1,'hello@teamcfe.com',2,'[]',18,1,'2017-10-18'),(35,1,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"subscribed\"]}}]',18,1,'2017-10-18'),(36,1,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"subscribed\"]}}]',18,1,'2017-10-18'),(37,1,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"subscribed\"]}}]',18,1,'2017-10-18'),(38,1,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"subscribed\"]}}]',18,1,'2017-10-18'),(39,1,'hello@teamcfe.com',2,'[]',18,1,'2017-10-18'),(40,1,'hello@teamcfe.com',3,'',18,1,'2017-10-18'),(41,2,'hello@teamcfe.com',1,'[{\"added\": {}}]',18,1,'2017-10-18'),(42,2,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"subscribed\"]}}]',18,1,'2017-10-18'),(43,2,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"subscribed\"]}}]',18,1,'2017-10-18'),(44,2,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"subscribed\"]}}]',18,1,'2017-10-23'),(45,2,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"subscribed\"]}}]',18,1,'2017-10-23'),(46,1,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',6,1,'2017-10-23'),(47,2,'hungrypy@gmail.com',3,'',6,1,'2017-10-24'),(48,3,'hungrypy@gmail.com',3,'',6,1,'2017-10-24'),(49,4,'hungrypy@gmail.com',3,'',6,1,'2017-10-24'),(50,5,'hungrypy@gmail.com',3,'',6,1,'2017-10-24'),(51,4,'hungrypy@gmail.com',2,'[{\"changed\": {\"fields\": [\"activated\"]}}]',19,1,'2017-10-24'),(52,6,'hungrypy@gmail.com',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',6,1,'2017-10-24'),(53,5,'hungrypy@gmail.com',3,'',19,1,'2017-10-24'),(54,4,'hungrypy@gmail.com',3,'',19,1,'2017-10-24'),(55,6,'hungrypy@gmail.com',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',6,1,'2017-10-24'),(56,6,'hungrypy@gmail.com',1,'[{\"added\": {}}]',19,1,'2017-10-24'),(57,6,'hungrypy@gmail.com',2,'[{\"changed\": {\"fields\": [\"forced_expired\"]}}]',19,1,'2017-10-24'),(58,7,'hungrypy@gmail.com',2,'[{\"changed\": {\"fields\": [\"forced_expired\"]}}]',19,1,'2017-10-24'),(59,6,'hungrypy@gmail.com',2,'[]',19,1,'2017-10-24'),(60,6,'hungrypy@gmail.com',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',6,1,'2017-10-24'),(61,8,'hungrypy@gmail.com',3,'',19,1,'2017-10-25'),(62,7,'hungrypy@gmail.com',3,'',19,1,'2017-10-25'),(63,6,'hungrypy@gmail.com',3,'',19,1,'2017-10-25'),(64,9,'hungrypy@gmail.com',1,'[{\"added\": {}}]',19,1,'2017-10-25'),(65,9,'hungrypy@gmail.com',2,'[{\"changed\": {\"fields\": [\"forced_expired\"]}}]',19,1,'2017-10-25'),(66,9,'hungrypy@gmail.com',2,'[{\"changed\": {\"fields\": [\"forced_expired\"]}}]',19,1,'2017-10-25'),(67,28,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"address_line_1\"]}}]',8,1,'2017-11-07'),(68,27,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"address_line_1\"]}}]',8,1,'2017-11-07'),(69,30,'hello@teamcfe.com',2,'[{\"changed\": {\"fields\": [\"address_line_1\"]}}]',8,1,'2017-11-07'),(70,25,'830fr0favs',2,'[{\"changed\": {\"fields\": [\"shipping_address_final\", \"billing_address_final\"]}}]',11,1,'2017-11-07'),(71,25,'830fr0favs',2,'[{\"changed\": {\"fields\": [\"shipping_address_final\", \"billing_address_final\"]}}]',11,1,'2017-11-07'),(72,6,'MP3',1,'[{\"added\": {}}]',12,1,'2017-11-07'),(73,6,'MP3',3,'',12,1,'2017-11-07'),(74,7,'Mp3',1,'[{\"added\": {}}]',12,1,'2017-11-07'),(75,1,'Mp3',1,'[{\"added\": {}}]',20,1,'2017-11-08'),(76,2,'Mp3',1,'[{\"added\": {}}]',20,1,'2017-11-08'),(77,2,'Mp3',3,'',20,1,'2017-11-08'),(78,1,'Mp3',3,'',20,1,'2017-11-08'),(79,3,'T-Shirt',1,'[{\"added\": {}}]',20,1,'2017-11-08'),(80,4,'T-Shirt',1,'[{\"added\": {}}]',20,1,'2017-11-08'),(81,4,'T-Shirt',3,'',20,1,'2017-11-08'),(82,3,'T-Shirt',3,'',20,1,'2017-11-08'),(83,10,'Mp3',2,'[{\"changed\": {\"fields\": [\"refunded\"]}}]',20,1,'2017-11-08'),(84,8,'Digital Video',1,'[{\"added\": {}}]',12,1,'2017-11-08'),(85,9,'My Awesome Album [Digital]',1,'[{\"added\": {}}]',12,1,'2017-11-08'),(86,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"products/basic_audio.m4a\"}}]',12,1,'2017-11-08'),(87,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"products/basic_audio_x0LH8Cw.m4a\"}}]',12,1,'2017-11-08'),(88,9,'My Awesome Album [Digital]',2,'[{\"deleted\": {\"name\": \"product file\", \"object\": \"products/basic_audio.m4a\"}}, {\"deleted\": {\"name\": \"product file\", \"object\": \"products/basic_audio_x0LH8Cw.m4a\"}}]',12,1,'2017-11-08'),(89,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/basic_audio.m4a\"}}]',12,1,'2017-11-08'),(90,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/basic_audio_Yshenbh.m4a\"}}]',12,1,'2017-11-08'),(91,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',12,1,'2017-11-08'),(92,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/basic_audio.m4a\"}}]',12,1,'2017-11-08'),(93,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/basic_audio_5W1qjNh.m4a\"}}]',12,1,'2017-11-08'),(94,9,'My Awesome Album [Digital]',2,'[{\"deleted\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/basic_audio.m4a\"}}, {\"deleted\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/basic_audio_Yshenbh.m4a\"}}]',12,1,'2017-11-08'),(95,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/basic_audio_uuyWQIO.m4a\"}}]',12,1,'2017-11-09'),(96,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/basic_audio.m4a\", \"fields\": [\"free\"]}}]',12,1,'2017-11-09'),(97,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/basic_audio.m4a\", \"fields\": [\"user_required\"]}}]',12,1,'2017-11-09'),(98,9,'My Awesome Album [Digital]',2,'[]',12,1,'2017-11-09'),(99,1,'T-Shirt',2,'[{\"changed\": {\"fields\": [\"is_digital\"]}}]',12,1,'2017-11-09'),(100,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',12,1,'2017-11-15'),(101,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/basic_audio.m4a\", \"fields\": [\"file\"]}}, {\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/basic_audio.m4a\", \"fields\": [\"file\"]}}, {\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/basic_audio.m4a\", \"fields\": [\"file\"]}}]',12,1,'2017-11-15'),(102,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/5/basic_audio.m4a\", \"fields\": [\"file\"]}}, {\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/6/basic_audio.m4a\", \"fields\": [\"file\"]}}]',12,1,'2017-11-15'),(103,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/7/basic_audio.m4a\", \"fields\": [\"file\"]}}]',12,1,'2017-11-15'),(104,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/None/basic_audio.m4a\"}}]',12,1,'2017-11-15'),(105,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/None/basic_audio.m4a\"}}]',12,1,'2017-11-15'),(106,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/None/basic_audio.m4a\"}}]',12,1,'2017-11-15'),(107,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/0/basic_audio.m4a\"}}]',12,1,'2017-11-15'),(108,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/0/basic_audio.m4a\"}}]',12,1,'2017-11-15'),(109,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/13/basic_audio.m4a\"}}]',12,1,'2017-11-15'),(110,9,'My Awesome Album [Digital]',2,'[{\"added\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/14/basic_audio.m4a\"}}]',12,1,'2017-11-15'),(111,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/14/basic_audio_5W1qjNh.m4a\", \"fields\": [\"file\"]}}]',12,1,'2017-11-15'),(112,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/14/basic_audio.m4a\", \"fields\": [\"file\"]}}]',12,1,'2017-11-15'),(113,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/5/basic_audio.m4a\", \"fields\": [\"name\"]}}, {\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/6/basic_audio.m4a\", \"fields\": [\"name\"]}}, {\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/7/basic_audio.m4a\", \"fields\": [\"name\"]}}, {\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/None/basic_audio.m4a\", \"fields\": [\"name\"]}}, {\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/None/basic_audio.m4a\", \"fields\": [\"name\"]}}]',12,1,'2017-11-16'),(114,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/5/basic_audio.m4a\", \"fields\": [\"name\"]}}]',12,1,'2017-11-16'),(115,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/5/basic_audio.m4a\", \"fields\": [\"name\"]}}]',12,1,'2017-11-16'),(116,9,'My Awesome Album [Digital]',2,'[{\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/6/basic_audio.m4a\", \"fields\": [\"name\"]}}, {\"changed\": {\"name\": \"product file\", \"object\": \"product/my-awesome-album/None/basic_audio.m4a\", \"fields\": [\"name\"]}}]',12,1,'2017-11-16'),(117,37,'3lb56ram6h',2,'[{\"changed\": {\"fields\": [\"billing_address_final\", \"status\"]}}]',11,1,'2017-11-16');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (19,'accounts','emailactivation'),(7,'accounts','guestemail'),(6,'accounts','user'),(8,'addresses','address'),(1,'admin','logentry'),(14,'analytics','objectviewed'),(15,'analytics','usersession'),(3,'auth','group'),(2,'auth','permission'),(9,'billing','billingprofile'),(16,'billing','card'),(17,'billing','charge'),(10,'carts','cart'),(4,'contenttypes','contenttype'),(18,'marketing','marketingpreference'),(11,'orders','order'),(20,'orders','productpurchase'),(21,'orders','productpurchasemanager'),(12,'products','product'),(22,'products','productfile'),(5,'sessions','session'),(13,'tags','tag');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'accounts','0001_initial','2017-10-09'),(2,'billing','0001_initial','2017-10-09'),(3,'billing','0002_auto_20170928_2052','2017-10-09'),(4,'addresses','0001_initial','2017-10-09'),(5,'contenttypes','0001_initial','2017-10-09'),(6,'admin','0001_initial','2017-10-09'),(7,'admin','0002_logentry_remove_auto_add','2017-10-09'),(8,'contenttypes','0002_remove_content_type_name','2017-10-09'),(9,'auth','0001_initial','2017-10-09'),(10,'auth','0002_alter_permission_name_max_length','2017-10-09'),(11,'auth','0003_alter_user_email_max_length','2017-10-09'),(12,'auth','0004_alter_user_username_opts','2017-10-09'),(13,'auth','0005_alter_user_last_login_null','2017-10-09'),(14,'auth','0006_require_contenttypes_0002','2017-10-09'),(15,'auth','0007_alter_validators_add_error_messages','2017-10-09'),(16,'auth','0008_alter_user_username_max_length','2017-10-09'),(17,'products','0001_initial','2017-10-09'),(18,'products','0002_product_price','2017-10-09'),(19,'products','0003_product_image','2017-10-09'),(20,'products','0004_auto_20170901_2159','2017-10-09'),(21,'products','0005_product_featured','2017-10-09'),(22,'products','0006_auto_20170901_2254','2017-10-09'),(23,'products','0007_auto_20170901_2254','2017-10-09'),(24,'products','0008_auto_20170901_2300','2017-10-09'),(25,'products','0009_product_timestamp','2017-10-09'),(26,'carts','0001_initial','2017-10-09'),(27,'carts','0002_cart_subtotal','2017-10-09'),(28,'orders','0001_initial','2017-10-09'),(29,'orders','0002_auto_20170928_2224','2017-10-09'),(30,'orders','0003_auto_20170929_0013','2017-10-09'),(31,'sessions','0001_initial','2017-10-09'),(32,'tags','0001_initial','2017-10-09'),(33,'accounts','0002_user_full_name','2017-10-09'),(34,'analytics','0001_initial','2017-10-10'),(35,'analytics','0002_usersession','2017-10-10'),(36,'billing','0003_billingprofile_customer_id','2017-10-11'),(37,'billing','0004_card','2017-10-11'),(38,'billing','0005_card_default','2017-10-11'),(39,'billing','0006_charge','2017-10-12'),(40,'billing','0007_auto_20171012_1935','2017-10-12'),(41,'marketing','0001_initial','2017-10-18'),(42,'marketing','0002_marketingpreference_mailchimp_subscribed','2017-10-18'),(43,'marketing','0003_auto_20171018_0142','2017-10-18'),(44,'accounts','0003_user_is_active','2017-10-23'),(45,'accounts','0004_remove_user_active','2017-10-24'),(46,'accounts','0005_emailactivation','2017-10-24'),(47,'orders','0004_auto_20171025_2216','2017-10-25'),(48,'orders','0005_auto_20171107_0035','2017-11-07'),(49,'addresses','0002_auto_20171107_0055','2017-11-07'),(50,'products','0010_product_is_digital','2017-11-07'),(51,'orders','0006_productpurchase_productpurchasemanager','2017-11-08'),(52,'orders','0007_auto_20171108_0028','2017-11-08'),(53,'orders','0008_delete_productpurchasemanager','2017-11-08'),(54,'products','0011_productfile','2017-11-08'),(55,'products','0012_auto_20171108_2325','2017-11-08'),(56,'products','0013_auto_20171109_0023','2017-11-09'),(57,'products','0014_auto_20171116_0011','2017-11-16'),(58,'products','0015_productfile_name','2017-11-16');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` text,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ubmo0kdrmzbdce5t4iltasnfnzcqlbs3','ZWY5ZmM4ZWY1ODM5MWYyNmM5YWY3Zjg4ZmI2MTBiNjY1MzliYjk1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NGE4NGZkNGEyYTEzMTYxOTRmZTAyYTk5MjRmYjM3MzcwZmNhNDdiIiwiY2FydF9pdGVtcyI6MH0=','2017-10-26'),('5peuwr6jhazhgm2wqhz04qbhk9bynqg5','ZmUwN2YxYWEzOWQxY2JhNjMwM2YyYjdmODgyOGFjYmIxMTA1OWJiNTp7ImNhcnRfaXRlbXMiOjAsImd1ZXN0X2VtYWlsX2lkIjo0LCJjYXJ0X2lkIjoxNiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY0YTg0ZmQ0YTJhMTMxNjE5NGZlMDJhOTkyNGZiMzczNzBmY2E0N2IifQ==','2017-10-26'),('3axy9ww6awrqkwrgr8k0jsevqlg7u111','Yzg1OWZmNmQ3MmUzMjU5NTRmNWEyNzAzMDMyN2ZlNDU5YTlmYTQ0OTp7ImNhcnRfaXRlbXMiOjAsImd1ZXN0X2VtYWlsX2lkIjo1fQ==','2017-10-26'),('5wsspj61i6l0srhqnshvpvt69dghddzi','MGEzZTJjZTIzYzAzOTA2YzI0YzAyNWRjNTE4ZTRmMmVmMDcyNDViNDp7ImNhcnRfaXRlbXMiOjIsImd1ZXN0X2VtYWlsX2lkIjo2LCJjYXJ0X2lkIjoxOX0=','2017-10-26'),('22lp22exe8ngclyd178jim7sqhkysmpt','ZDkwZjlkMGQ4NmZhZjAwYzFmODFhNzlhNjVkZmVlYzVjOWI5NmY1NTp7ImNhcnRfaWQiOjIwLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjRhODRmZDRhMmExMzE2MTk0ZmUwMmE5OTI0ZmIzNzM3MGZjYTQ3YiJ9','2017-10-30'),('2iey7vga5z55erl92fszk0fkqlkiiwgt','YWRjODNhNWI4N2Q0NGI4YzViMjdkNmI5YWJhMDEwYjM0NjI1NWE3ZDp7ImNhcnRfaWQiOjIxfQ==','2017-11-02'),('bfxzqeommf669ur6kq421kkor4j9qubq','MDlhNTcyMGQxMDUyYTUzMTY2OTY5M2YzNTM1YjNlMDAzMTNmNTZkNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NGE4NGZkNGEyYTEzMTYxOTRmZTAyYTk5MjRmYjM3MzcwZmNhNDdiIn0=','2017-11-06'),('zy0ujrgvznzv1jyzcjg82qxlwre50emc','OGNlM2M3NjdiMDE2ODQyZGU5YjkyMWUzZTY1MmRiZGIyZGM5OTJkOTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYjkxNGI0NmU3MzkyZDUxOTBjYzU1MmM1ZGY2ZWQxZThhZTIxYjcwIn0=','2017-11-07'),('sffeh3twk7r3kzajotsnqialwogsbm5s','OTZiMDBjYmVkZGVmZmUwYmI2ZTI2YWNkNzAzNDM3YWI4MmQzYzgxNjp7ImNhcnRfaXRlbXMiOjAsImd1ZXN0X2VtYWlsX2lkIjo5fQ==','2017-11-08'),('ly6n6k59knqyk0pugx1ncszohgh8jqrw','Y2I2MjAyOTk0MGI0ZjMxOTdjY2E4YzI0MTUxNWVkZmJjYjBkZTkyMjp7ImNhcnRfaWQiOjQ1LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2JkMDlkYjIyYmU0NjYxNTRmZDg3MDI1ZWJjY2YzOGI1NjdlZjc2MSJ9','2017-11-23'),('vvpsdjpicjh3widid9ef7n1c9co4qsn0','YjVhZDE2ZjM2YTVlZWFiMjNjM2FjZDFhNDg1YzNjNzM4MDViYzBkNzp7ImNhcnRfaXRlbXMiOjAsImd1ZXN0X2VtYWlsX2lkIjoxMCwiY2FydF9pZCI6NDcsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYmQwOWRiMjJiZTQ2NjE1NGZkODcwMjVlYmNjZjM4YjU2N2VmNzYxIn0=','2017-11-23'),('yrbzlhng9eu0x7vxdazsqpz7q381rz5u','YWMxMTJhMDZkYjA3ZTQ4NmJjOWZmZTE2ZGVmNjc3YzFkZDJhN2RmNjp7ImNhcnRfaWQiOjQ4LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2JkMDlkYjIyYmU0NjYxNTRmZDg3MDI1ZWJjY2YzOGI1NjdlZjc2MSJ9','2017-11-23'),('u98t8jmossdfxjwwuzlt0e9v7r3max74','ZTBjMzY1Mjk5YzFlZjExODM5NDMxYTAwODk4NmE1ZGJhMzcwZDEyMTp7ImNhcnRfaWQiOjQ5LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2JkMDlkYjIyYmU0NjYxNTRmZDg3MDI1ZWJjY2YzOGI1NjdlZjc2MSJ9','2017-11-23'),('v7qp6u01yq51bdm5undx57r0s9f5etwx','OWNhZTM3NWMyNWVhOTA0MzhhOTk5OGRiMzIwODNkNWRjNjA1NzViZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYmQwOWRiMjJiZTQ2NjE1NGZkODcwMjVlYmNjZjM4YjU2N2VmNzYxIiwiY2FydF9pZCI6NTF9','2017-11-29'),('h74xwtu7n0qak939by1ixvsm4a25cz5u','NTkxMDBmY2JmZTRmZmNmMDE1NjgwOWYyMTFiYmE1M2NjNTExYzQyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYmQwOWRiMjJiZTQ2NjE1NGZkODcwMjVlYmNjZjM4YjU2N2VmNzYxIiwiY2FydF9pZCI6NTJ9','2017-11-29'),('t413vi2vk2ud6tzn5cwwyjgedk6az4th','OTY3ZTA5MmFmYjM2OGY3OTY0ZTI4NDZiYjdhOTUxMDY5Zjk0OTY2ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYmQwOWRiMjJiZTQ2NjE1NGZkODcwMjVlYmNjZjM4YjU2N2VmNzYxIiwiY2FydF9pdGVtcyI6MH0=','2017-12-01'),('3k3wp081xcnpis0bt8uk4soi618iwytb','MWEzYmJlOGE1MmI2NDRlYjUyMTdlZTU5YzdlMWFkODE0OWQzY2UxZjp7ImNhcnRfaWQiOjU3LCJjYXJ0X2l0ZW1zIjoyfQ==','2020-11-29');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketing_marketingpreference`
--

DROP TABLE IF EXISTS `marketing_marketingpreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketing_marketingpreference` (
  `id` tinyint(4) DEFAULT NULL,
  `subscribed` tinyint(4) DEFAULT NULL,
  `mailchimp_msg` text,
  `timestamp` varchar(10) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `mailchimp_subscribed` tinyint(4) DEFAULT NULL,
  `updated` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketing_marketingpreference`
--

LOCK TABLES `marketing_marketingpreference` WRITE;
/*!40000 ALTER TABLE `marketing_marketingpreference` DISABLE KEYS */;
INSERT INTO `marketing_marketingpreference` VALUES (2,1,'{\'id\': \'924f8e1bed8d1b98c427ffcab0da6d2e\', \'email_address\': \'hello@teamcfe.com\', \'unique_email_id\': \'d686033a32\', \'email_type\': \'html\', \'status\': \'subscribed\', \'merge_fields\': {\'FNAME\': \'\', \'LNAME\': \'\', \'BIRTHDAY\': \'\'}, \'stats\': {\'avg_open_rate\': 0, \'avg_click_rate\': 0}, \'ip_signup\': \'\', \'timestamp_signup\': \'\', \'ip_opt\': \'108.184.68.3\', \'timestamp_opt\': \'2017-10-18T00:59:51+00:00\', \'member_rating\': 2, \'last_changed\': \'2017-10-23T17:07:13+00:00\', \'language\': \'\', \'vip\': False, \'email_client\': \'\', \'location\': {\'latitude\': 0, \'longitude\': 0, \'gmtoff\': 0, \'dstoff\': 0, \'country_code\': \'\', \'timezone\': \'\'}, \'list_id\': \'e2ef12efee\', \'_links\': [{\'rel\': \'self\', \'href\': \'https://us17.api.mailchimp.com/3.0/lists/e2ef12efee/members/924f8e1bed8d1b98c427ffcab0da6d2e\', \'method\': \'GET\', \'targetSchema\': \'https://us17.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Response.json\'}, {\'rel\': \'parent\', \'href\': \'https://us17.api.mailchimp.com/3.0/lists/e2ef12efee/members\', \'method\': \'GET\', \'targetSchema\': \'https://us17.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/CollectionResponse.json\', \'schema\': \'https://us17.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Members.json\'}, {\'rel\': \'update\', \'href\': \'https://us17.api.mailchimp.com/3.0/lists/e2ef12efee/members/924f8e1bed8d1b98c427ffcab0da6d2e\', \'method\': \'PATCH\', \'targetSchema\': \'https://us17.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Response.json\', \'schema\': \'https://us17.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/PATCH.json\'}, {\'rel\': \'upsert\', \'href\': \'https://us17.api.mailchimp.com/3.0/lists/e2ef12efee/members/924f8e1bed8d1b98c427ffcab0da6d2e\', \'method\': \'PUT\', \'targetSchema\': \'https://us17.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Response.json\', \'schema\': \'https://us17.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/PUT.json\'}, {\'rel\': \'delete\', \'href\': \'https://us17.api.mailchimp.com/3.0/lists/e2ef12efee/members/924f8e1bed8d1b98c427ffcab0da6d2e\', \'method\': \'DELETE\'}, {\'rel\': \'activity\', \'href\': \'https://us17.api.mailchimp.com/3.0/lists/e2ef12efee/members/924f8e1bed8d1b98c427ffcab0da6d2e/activity\', \'method\': \'GET\', \'targetSchema\': \'https://us17.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Activity/Response.json\'}, {\'rel\': \'goals\', \'href\': \'https://us17.api.mailchimp.com/3.0/lists/e2ef12efee/members/924f8e1bed8d1b98c427ffcab0da6d2e/goals\', \'method\': \'GET\', \'targetSchema\': \'https://us17.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Goals/Response.json\'}, {\'rel\': \'notes\', \'href\': \'https://us17.api.mailchimp.com/3.0/lists/e2ef12efee/members/924f8e1bed8d1b98c427ffcab0da6d2e/notes\', \'method\': \'GET\', \'targetSchema\': \'https://us17.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Notes/CollectionResponse.json\'}]}','2017-10-18',1,1,'2017-10-23'),(4,0,'{\'type\': \'http://developer.mailchimp.com/documentation/mailchimp/guides/error-glossary/\', \'title\': \'Invalid Resource\', \'status\': 400, \'detail\': \"The resource submitted could not be validated. For field-specific details, see the \'errors\' array.\", \'instance\': \'93827414-4708-4fb6-b04d-d9f424dfb9bc\', \'errors\': [{\'field\': \'\', \'message\': \'Required fields were not provided: email_address\'}]}','2017-10-24',6,0,'2017-10-24');
/*!40000 ALTER TABLE `marketing_marketingpreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_order`
--

DROP TABLE IF EXISTS `orders_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_order` (
  `id` tinyint(4) DEFAULT NULL,
  `order_id` varchar(10) DEFAULT NULL,
  `status` varchar(7) DEFAULT NULL,
  `shipping_total` decimal(3,2) DEFAULT NULL,
  `total` decimal(5,2) DEFAULT NULL,
  `cart_id` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `billing_profile_id` tinyint(4) DEFAULT NULL,
  `billing_address_id` varchar(2) DEFAULT NULL,
  `shipping_address_id` varchar(2) DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL,
  `updated` varchar(10) DEFAULT NULL,
  `billing_address_final` varchar(84) DEFAULT NULL,
  `shipping_address_final` varchar(84) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_order`
--

LOCK TABLES `orders_order` WRITE;
/*!40000 ALTER TABLE `orders_order` DISABLE KEYS */;
INSERT INTO `orders_order` VALUES (1,'2co8jc311w','paid',5.99,49.18,1,1,1,'1','1','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(2,'qvdw4tt8fn','created',5.99,49.18,2,1,1,'','','2017-10-25','2017-11-07','',''),(3,'bxjjan59ve','paid',5.99,49.18,3,1,1,'1','1','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(4,'p25yfqftlx','paid',5.99,200.36,4,1,1,'1','1','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(6,'fjjrv4njpc','paid',5.99,49.18,6,1,1,'4','4','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(7,'p5vrm9ols7','paid',5.99,243.55,7,1,1,'1','1','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(8,'91ff82f4ik','paid',5.99,200.36,8,1,7,'6','5','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(9,'96ngwcsffi','paid',5.99,200.36,9,1,7,'8','7','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(10,'o89w1ait2y','paid',5.99,49.18,10,1,1,'1','1','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(11,'ad1dfkvdka','paid',5.99,92.37,12,1,8,'10','9','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(12,'0q0l416pe1','created',5.99,49.18,13,0,8,'12','11','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(13,'i5lc6jd8vc','paid',5.99,49.18,13,1,1,'1','1','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(14,'hgdh9s8z6d','paid',5.99,92.37,14,1,8,'14','13','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(15,'cpaquxqdit','paid',5.99,92.37,15,1,8,'16','15','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(16,'ywn35ptvix','paid',5.99,92.37,17,1,7,'18','17','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(17,'byhcwzipi2','paid',5.99,92.37,18,1,9,'20','19','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(18,'a9986kwi45','created',5.99,92.37,19,1,9,'22','21','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(19,'5wfe92e91a','paid',5.99,49.18,26,1,7,'24','23','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(20,'7nyxmzw1ci','created',5.99,49.18,27,1,7,'','','2017-10-25','2017-11-07','',''),(21,'357b4cwu5i','paid',5.99,49.18,28,1,12,'26','25','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(22,'hzrfkejy3h','paid',5.99,200.36,29,1,1,'1','1','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(23,'t9pezjyfhh','paid',5.99,243.55,30,1,1,'4','4','2017-10-25','2017-11-07','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(24,'k52k1eakxl','paid',5.99,92.37,31,1,1,'28','27','2017-11-07','2017-11-07','125 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','4425 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(25,'830fr0favs','paid',5.99,243.55,32,1,1,'30','29','2017-11-07','2017-11-07','125 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','555 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(26,'c3xigl4jw1','paid',5.99,92.37,33,1,1,'29','4','2017-11-07','2017-11-07','\r\n555 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','\r\n123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(27,'rd22htwaqk','paid',5.99,157.17,34,1,1,'4','30','2017-11-07','2017-11-07','\r\n123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','\r\n125 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(28,'1u6dc9yr6f','paid',5.99,92.37,35,1,1,'27','27','2017-11-07','2017-11-07','\r\n4425 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','\r\n4425 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(29,'qze7vkmn42','paid',5.99,49.18,36,1,1,'28','28','2017-11-07','2017-11-07','\r\n125 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','\r\n125 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(30,'p8y09js4ob','paid',5.99,49.18,37,1,1,'31','','2017-11-07','2017-11-07','Justin\r\n1123132 Main\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America',''),(31,'t14afryz79','paid',5.99,200.36,38,1,1,'29','28','2017-11-08','2017-11-08','\r\n555 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','\r\n125 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(32,'ahua0uc9j7','paid',5.99,49.18,39,1,1,'28','28','2017-11-08','2017-11-08','\r\n125 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','\r\n125 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(33,'3ouumd5mki','paid',5.99,49.18,40,1,1,'29','','2017-11-08','2017-11-08','\r\n555 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America',''),(34,'bqwbqxj2on','paid',5.99,49.18,41,1,1,'29','','2017-11-08','2017-11-08','\r\n555 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America',''),(35,'jqcrs70poz','paid',5.99,49.18,42,1,1,'28','','2017-11-08','2017-11-08','\r\n125 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America',''),(36,'kn3fo6bw11','paid',5.99,16.78,43,1,1,'29','','2017-11-08','2017-11-08','\r\n555 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America',''),(37,'3lb56ram6h','shipped',5.99,16.78,46,1,8,'34','','2017-11-09','2017-11-16','123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America',''),(38,'acmbz1ht9s','paid',5.99,49.18,53,1,1,'4','4','2017-11-16','2017-11-16','\r\n123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America','\r\n123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of America'),(39,'akmr3ji3af','paid',5.99,49.18,54,1,1,'1','1','2017-11-16','2017-11-16','Justin Mitchel\r\n123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of Am','Justin Mitchel\r\n123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of Am'),(40,'k0jmxxqc43','paid',5.99,157.17,55,1,1,'1','1','2017-11-16','2017-11-16','Justin Mitchel\r\n123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of Am','Justin Mitchel\r\n123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of Am'),(41,'h4y2q0eyr4','paid',5.99,92.37,56,1,1,'1','1','2017-11-17','2017-11-17','Justin Mitchel\r\n123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of Am','Justin Mitchel\r\n123 Main St\r\n\r\nNewport Beach\r\nCalifornia, 92222\r\nUnited States of Am');
/*!40000 ALTER TABLE `orders_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_productpurchase`
--

DROP TABLE IF EXISTS `orders_productpurchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_productpurchase` (
  `id` tinyint(4) DEFAULT NULL,
  `refunded` tinyint(4) DEFAULT NULL,
  `updated` varchar(10) DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL,
  `billing_profile_id` tinyint(4) DEFAULT NULL,
  `product_id` tinyint(4) DEFAULT NULL,
  `order_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_productpurchase`
--

LOCK TABLES `orders_productpurchase` WRITE;
/*!40000 ALTER TABLE `orders_productpurchase` DISABLE KEYS */;
INSERT INTO `orders_productpurchase` VALUES (5,0,'2017-11-08','2017-11-08',1,1,'t14afryz79'),(6,0,'2017-11-08','2017-11-08',1,3,'t14afryz79'),(7,0,'2017-11-08','2017-11-08',1,4,'t14afryz79'),(8,0,'2017-11-08','2017-11-08',1,5,'ahua0uc9j7'),(9,0,'2017-11-08','2017-11-08',1,7,'3ouumd5mki'),(10,1,'2017-11-08','2017-11-08',1,7,'bqwbqxj2on'),(11,0,'2017-11-08','2017-11-08',1,8,'jqcrs70poz'),(12,0,'2017-11-08','2017-11-08',1,9,'kn3fo6bw11'),(13,0,'2017-11-09','2017-11-09',8,9,'3lb56ram6h'),(14,0,'2017-11-16','2017-11-16',1,3,'acmbz1ht9s'),(15,0,'2017-11-16','2017-11-16',1,3,'akmr3ji3af'),(16,0,'2017-11-16','2017-11-16',1,3,'k0jmxxqc43'),(17,0,'2017-11-16','2017-11-16',1,4,'k0jmxxqc43'),(18,0,'2017-11-17','2017-11-17',1,3,'h4y2q0eyr4'),(19,0,'2017-11-17','2017-11-17',1,5,'h4y2q0eyr4');
/*!40000 ALTER TABLE `orders_productpurchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product`
--

DROP TABLE IF EXISTS `products_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_product` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(26) DEFAULT NULL,
  `description` text,
  `price` decimal(4,2) DEFAULT NULL,
  `image` varchar(34) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `slug` varchar(16) DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL,
  `is_digital` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product`
--

LOCK TABLES `products_product` WRITE;
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
INSERT INTO `products_product` VALUES (1,'T-Shirt','This is an awesome shirt. Buy it. :)',39.99,'',0,1,'t-shirt','2017-09-18',1),(3,'Hat','This is my awesome hat',39.99,'products/2969889474/2969889474.jpg',0,1,'hat','2017-09-18',0),(4,'Lorem Ipsum','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit venenatis feugiat. Proin blandit odio nec sem dignissim, ac fermentum sapien ornare. Praesent libero sem, mattis id ultricies eu, convallis ac ligula. Nulla porta ornare felis, ac elementum ante dapibus eu. Proin vitae vulputate sapien. Integer interdum dolor ante, in imperdiet est elementum molestie. In eu dui placerat, egestas diam ac, ultrices dui. Vivamus tincidunt, dui faucibus feugiat eleifend, eros sapien mollis metus, finibus gravida arcu sapien eu libero. Donec a ipsum rutrum, fringilla metus eu, sodales nisl. Vivamus eu condimentum sapien, sit amet malesuada nibh. Phasellus blandit, elit ullamcorper facilisis pulvinar, leo nunc congue augue, mollis efficitur eros turpis quis leo.\r\n\r\nMauris rutrum nunc vel libero porta, ut feugiat turpis rhoncus. Vestibulum vel mauris mi. Ut vitae dolor a neque commodo tincidunt semper id augue. Proin vehicula ex justo, vitae aliquet ligula cursus luctus. Vivamus a euismod lorem. Ut lacinia commodo faucibus. Proin malesuada rutrum porttitor. Quisque ac enim quis dui sollicitudin laoreet. Vivamus velit dui, accumsan eget egestas a, pharetra a nibh. Suspendisse ornare nunc quis euismod commodo. Morbi fringilla mauris nec eros placerat tempor. Ut facilisis consectetur lorem, sed imperdiet nulla tristique ac. Duis tristique id odio ut ornare.\r\n\r\nAliquam dui orci, pulvinar sit amet nisi at, blandit ullamcorper libero. Maecenas pharetra diam quis eros mattis, eu rhoncus augue efficitur. Sed cursus nulla ut dolor molestie consectetur. Praesent faucibus dignissim pulvinar. Nulla hendrerit risus in mattis ultricies. Quisque vitae lacinia tellus, ut finibus metus. Donec velit enim, pretium vitae ante blandit, tempus auctor mauris. Donec mattis metus et nisi ullamcorper, non posuere sapien tincidunt. Phasellus molestie pharetra augue. Quisque eget arcu magna. Aliquam mollis tortor tellus, vitae tempus lectus aliquet non. Sed vulputate dolor elit, ac semper velit auctor ac.\r\n\r\nMauris laoreet libero libero, sed sodales turpis euismod et. Maecenas vehicula egestas diam, quis volutpat metus cursus id. Nunc faucibus convallis hendrerit. Integer porttitor elit nec magna dapibus, ac tempus neque lacinia. Donec vel purus quis sem viverra gravida. Maecenas gravida tempor odio, vitae aliquet est facilisis vel. Nam sodales, elit ut ornare iaculis, ipsum orci aliquet tellus, eget consequat enim felis auctor leo. Quisque a mi mauris. Duis euismod justo ut ipsum tincidunt tincidunt. Aliquam erat volutpat. Sed vitae auctor enim, mattis laoreet arcu. Ut finibus sit amet velit vulputate pellentesque. Mauris non facilisis arcu, vel ultrices leo. Etiam fermentum urna vitae eros fermentum, vitae tincidunt arcu tristique.\r\n\r\nAliquam luctus eu massa nec condimentum. Pellentesque augue eros, lacinia at tortor non, feugiat convallis nisi. Morbi volutpat sagittis sapien ut sollicitudin. Nulla iaculis rhoncus neque eget varius. Donec commodo ultricies blandit. Quisque turpis dui, tincidunt in eros eu, sagittis luctus risus. Suspendisse molestie sapien placerat velit laoreet, non consequat mauris eleifend. Cras condimentum fermentum lorem. Donec laoreet neque nibh, ut imperdiet dui ullamcorper quis. Vestibulum at turpis at risus porttitor bibendum et vel dolor.\r\n\r\nPraesent pretium imperdiet leo, eu auctor arcu congue nec. Maecenas feugiat mauris elit. Vivamus vel sollicitudin metus, ut tempus ligula. Suspendisse non aliquet justo. Proin scelerisque cursus metus, in placerat ligula dignissim et. Duis fermentum ante dolor, aliquet malesuada velit feugiat vel. Morbi et sem in elit luctus vehicula vitae a nunc. Fusce ex purus, suscipit ac accumsan sed, scelerisque vel purus. In hac habitasse platea dictumst. Pellentesque eget nulla ac dolor porttitor ultricies. Nam eleifend massa eget justo suscipit viverra. In vel ligula turpis. Vestibulum ultricies, nibh vitae condimentum finibus, odio felis condimentum ipsum, in finibus leo dolor id turpis. Vivamus laoreet libero sit amet pulvinar mattis.\r\n\r\nPellentesque scelerisque imperdiet dui ac lacinia. Vivamus mi quam, condimentum ac gravida vitae, commodo eget turpis. Cras iaculis diam in elementum scelerisque. Maecenas ultricies, est quis posuere tempus, risus libero consequat augue, quis rutrum urna nulla a mauris. Quisque eleifend aliquam consectetur. Nulla consequat blandit molestie. Nam id facilisis tellus. In eget sem ac tellus lobortis pellentesque sagittis ac tellus.\r\n\r\nMorbi a ipsum dolor. Donec augue ipsum, faucibus id mauris nec, bibendum pellentesque magna. Etiam eleifend urna vel libero accumsan consequat. Praesent molestie diam eu urna dignissim, et tristique felis rutrum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent ante magna, ornare nec fermentum nec, dictum ut nunc. Donec sed nunc rutrum, sollicitudin dolor nec, cursus felis. Integer ut dui sed ligula placerat lobortis in ac felis.\r\n\r\nAenean pretium turpis et ornare egestas. Curabitur egestas, sapien vitae tempor interdum, ante nisl auctor elit, at dictum lectus turpis sit amet lacus. Pellentesque lorem odio, lacinia quis augue ultricies, tincidunt aliquet dui. Fusce blandit nunc id ullamcorper scelerisque. Nunc eget ornare mi. Donec ac odio suscipit, pharetra libero at, hendrerit leo. Duis feugiat sapien eget augue rutrum malesuada. In faucibus, dolor sed congue aliquet, sapien massa gravida ipsum, eu sagittis leo tortor in metus. Ut egestas vehicula mollis.\r\n\r\nNulla tempus mi ac mauris pellentesque, non pellentesque risus luctus. Maecenas non nibh euismod, vestibulum mauris sit amet, malesuada augue. Aenean ut egestas magna. Integer sagittis mattis faucibus. Nulla luctus nisi diam, sit amet euismod magna laoreet a. Ut vehicula nibh ut sem blandit, nec congue ligula cursus. Sed eget nulla at lorem finibus rutrum. Nunc sagittis sem in mattis sagittis. Fusce id tincidunt nibh. Fusce rutrum nisi at leo cursus, eget rhoncus nibh porttitor. Maecenas maximus a augue eu tempor.\r\n\r\nVivamus tristique interdum congue. Phasellus feugiat dui augue, et consectetur erat venenatis nec. Cras ut tempus metus. Sed vestibulum pulvinar odio, eget vehicula orci lobortis at. Nulla purus est, gravida sed libero in, sollicitudin aliquam ante. Mauris non nisi quis sapien laoreet gravida sed sit amet libero. Vestibulum lacinia porttitor felis, quis maximus tortor laoreet quis. Nulla consequat, est eu vestibulum convallis, eros nisi vehicula nibh, sed pulvinar felis risus vitae ex. Proin cursus congue ornare. Duis quis eleifend arcu. Maecenas dictum ligula at risus imperdiet condimentum. Phasellus malesuada neque non mollis auctor. Sed in ultricies risus, non porta ex.\r\n\r\nProin gravida tortor dictum accumsan venenatis. Pellentesque euismod nisl tortor. Nullam interdum felis ut nulla egestas vehicula. Phasellus enim diam, malesuada a nisl vel, pellentesque malesuada massa. Curabitur pellentesque feugiat lorem vel ultrices. Vestibulum felis nisi, semper in augue vitae, blandit feugiat purus. Duis dolor risus, rhoncus ac semper et, finibus a orci. Aliquam hendrerit ligula eget velit consequat tincidunt. Integer mollis sapien in lacus rutrum, ut efficitur dui ultrices. Phasellus ut risus placerat, accumsan massa id, rhoncus augue.\r\n\r\nDonec nisi felis, condimentum in viverra id, pharetra quis augue. Donec ac quam ut dui bibendum viverra. Vivamus vel justo sed elit euismod iaculis. Fusce molestie mattis libero sit amet sagittis. Integer a nisl eu massa porta dignissim. Phasellus lectus risus, sagittis eu lorem eu, elementum ullamcorper tellus. Proin sed orci sed dolor posuere dignissim. Quisque pulvinar purus eu neque pretium, vehicula elementum ligula elementum. Sed gravida consectetur augue, eget dignissim elit euismod a. Sed commodo pulvinar arcu, sit amet ornare tortor placerat venenatis.\r\n\r\nPhasellus in lobortis nulla. Morbi et neque erat. Nunc porta commodo odio, in elementum metus porttitor scelerisque. Vestibulum lacinia tristique lacus eget dictum. Donec in orci mi. Mauris semper sodales mi vitae pellentesque. Donec iaculis congue accumsan. Fusce ut rutrum ex, eget porta turpis. Suspendisse scelerisque ex nec risus fermentum, nec elementum nisl iaculis. Maecenas non leo lacus. Morbi lacinia tortor purus, vel aliquam lorem laoreet eget. Vivamus rhoncus congue urna, at finibus est sodales et. Morbi sodales lacus ut ante consequat, egestas placerat eros tincidunt. Pellentesque maximus ligula leo, sed dictum metus ultrices in.\r\n\r\nInteger sagittis sem non nisl suscipit, sed congue leo ultrices. Vestibulum consectetur interdum venenatis. Donec egestas feugiat erat sed molestie. Vestibulum eleifend lectus nec est dapibus, in egestas ante ultrices. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In iaculis sed sapien at feugiat. Integer enim dolor, iaculis vel tortor nec, fermentum dictum ligula. Cras ornare cursus magna, ut scelerisque mi pellentesque quis.\r\n\r\nMorbi pulvinar, arcu eget vestibulum congue, diam lorem tempus risus, at vehicula nibh dui eget massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam aliquam velit dui, non aliquam nulla mattis ac. Suspendisse dapibus pharetra accumsan. Donec sem justo, ullamcorper id volutpat sit amet, placerat lobortis libero. Etiam vestibulum sagittis dui. Aliquam libero ipsum, dictum rhoncus nulla non, pellentesque aliquet mi. Vivamus sed porta ex. Nam finibus orci in porta semper. Donec tincidunt euismod urna et blandit. Vivamus lobortis placerat consectetur. Nullam porttitor, magna ut tincidunt tincidunt, nibh justo facilisis nulla, quis laoreet nisl mauris eu sem. Nunc a lobortis felis.\r\n\r\nInteger at mi sit amet magna venenatis imperdiet. Curabitur interdum quam sit amet urna fringilla, sed tristique velit posuere. Quisque hendrerit laoreet orci vitae rhoncus. Sed finibus, nibh sed hendrerit elementum, purus mi lobortis arcu, a fermentum nisl arcu id quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed fermentum erat eleifend risus accumsan faucibus. Fusce ultrices sollicitudin sem vel viverra. Suspendisse sodales ipsum eget ultrices accumsan. Pellentesque vel eros ante. Sed tristique egestas tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nDonec blandit turpis non justo hendrerit tincidunt. Aliquam dolor metus, volutpat a laoreet vel, efficitur at metus. Nam venenatis sem dui, vitae tincidunt nulla venenatis sit amet. Curabitur tristique, dolor sed aliquet molestie, ex erat semper mi, in ornare nunc mauris ut justo. Integer iaculis sollicitudin magna, sit amet interdum sapien pharetra ut. Mauris aliquam congue eros, non pharetra mi imperdiet nec. Aliquam at porta risus, eu imperdiet ante. Nunc consectetur eu elit ut facilisis. Praesent sed neque risus. Nunc euismod eros mauris, eget congue elit volutpat ut. Nam sit amet neque massa.\r\n\r\nNam sit amet est vel sem sagittis varius. Cras ornare eu turpis vitae varius. Integer sit amet ex sed arcu semper consectetur. Proin ac libero iaculis, porttitor mi vel, accumsan lorem. Maecenas venenatis lobortis justo. Integer aliquet, elit nec faucibus euismod, quam purus suscipit lorem, sit amet sollicitudin nisl purus sit amet ex. Aenean ultrices libero a felis porttitor, id malesuada erat consectetur. Suspendisse velit nulla, egestas sit amet scelerisque eget, elementum eget lectus. Nullam at accumsan ipsum. In placerat, ante vitae scelerisque sollicitudin, dui nisi lobortis diam, eget maximus turpis arcu tristique est. Cras et nibh porta, hendrerit lorem ut, fringilla risus.\r\n\r\nQuisque eu nulla molestie, fermentum arcu nec, pharetra orci. Nulla molestie, neque ac ullamcorper aliquam, mauris lacus aliquam libero, at auctor diam justo sit amet eros. Integer vehicula, mauris sit amet aliquet elementum, libero urna commodo purus, quis commodo dolor orci id diam. Aliquam erat volutpat. Suspendisse quis suscipit libero. Aliquam placerat, dui nec vulputate auctor, mauris tortor fermentum felis, nec lacinia felis metus nec urna. Nulla vitae metus luctus erat fermentum consectetur. Nulla facilisi. Donec turpis ante, luctus vel turpis ut, rutrum sagittis urna. Quisque ut tellus ligula. Mauris eget magna lectus. Fusce at suscipit sapien. Praesent fringilla tincidunt ullamcorper. Duis id sollicitudin neque, sit amet rhoncus sem. Sed lacinia odio neque, nec lacinia ante dictum vitae. Nullam in suscipit augue.\r\n\r\nSed nulla lacus, sagittis quis purus eu, pulvinar tincidunt libero. Etiam sed elementum erat. Donec lacinia nulla sed justo pulvinar ultricies. Suspendisse lorem ante, placerat vitae facilisis sit amet, commodo ac velit. Etiam in sapien commodo, vestibulum augue ac, convallis enim. Aenean ut magna sapien. Praesent fermentum odio risus, imperdiet tempor libero sagittis non. Aliquam euismod bibendum nisi a suscipit. Morbi enim ex, varius vitae lacus et, sodales luctus elit. Phasellus et tellus velit.\r\n\r\nQuisque a nibh ac dolor congue congue. Mauris at tempus sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce dapibus magna sit amet malesuada accumsan. Nullam velit leo, ultricies et interdum convallis, varius ut elit. Cras facilisis faucibus est, vitae tempor ex placerat a. In mattis vel nulla nec volutpat. Maecenas tristique sodales venenatis. In dapibus, urna sit amet aliquam rhoncus, mi neque ultricies dolor, in pretium leo metus quis lacus. Mauris non consectetur lacus, sit amet imperdiet mi. Morbi egestas urna vel enim fermentum, vitae vestibulum neque congue. Vivamus tempus ipsum iaculis congue placerat. Nunc odio quam, bibendum mattis molestie id, sollicitudin consectetur lacus. Cras sagittis pharetra nibh vel scelerisque. Aenean in erat pellentesque, tempus libero non, convallis dolor. Sed et lorem in sapien fermentum condimentum.\r\n\r\nCurabitur eu augue a risus elementum sollicitudin. Aliquam erat volutpat. Fusce porttitor pulvinar ipsum, vel ornare erat pharetra non. Aliquam et metus vitae mi sollicitudin tristique vel vitae nulla. Nullam lobortis arcu eu iaculis eleifend. Vivamus magna nibh, ultrices eu est efficitur, dictum molestie odio. Donec ullamcorper, metus eu hendrerit cursus, erat nulla convallis quam, et efficitur nisi eros eget erat. Sed id metus dui. Nulla facilisi. Nulla facilisi. Pellentesque dignissim venenatis iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n\r\nProin viverra, quam vitae egestas iaculis, tellus est consequat urna, vitae vehicula arcu dolor sit amet nulla. Phasellus sit amet purus eu lorem lacinia iaculis ac id mi. In sollicitudin urna in pellentesque rutrum. Sed efficitur felis at sagittis efficitur. Duis faucibus aliquet est, at commodo ipsum interdum sit amet. Cras eu libero hendrerit, elementum ex a, placerat ligula. Vestibulum nec orci ut metus blandit suscipit vel vel magna. Nulla facilisi. Integer porta rhoncus nulla vitae pharetra.\r\n\r\nMorbi lacinia nulla quis libero viverra efficitur. Sed nec magna in mauris eleifend rutrum ac nec augue. Aliquam accumsan gravida aliquam. Curabitur vel diam at neque luctus hendrerit eget non lacus. In nec ligula lorem. Mauris eget urna rhoncus, hendrerit sapien ut, sagittis urna. Etiam porta, lacus id auctor mattis, nulla diam euismod mauris, vitae fermentum nulla dolor id eros. Pellentesque convallis tellus velit, sed porta augue tincidunt at. Sed efficitur leo quis sapien lobortis aliquam. Aenean ac bibendum felis. Nulla lectus elit, dapibus nec fringilla nec, lacinia sit amet eros. Fusce egestas ipsum felis, id gravida orci dapibus consectetur. Vestibulum sed ultrices metus.\r\n\r\nCurabitur a euismod justo, eget vehicula augue. Morbi at aliquam augue, vitae auctor orci. Nam dignissim posuere nunc a euismod. Nunc iaculis dui ut justo vulputate euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse sodales mi non egestas sollicitudin. Mauris ultricies leo libero, non tincidunt libero sollicitudin non. Morbi dictum eget purus quis placerat. Vestibulum consequat, ipsum molestie venenatis fringilla, orci ex luctus elit, quis bibendum tortor ante a ligula. Nulla at leo rutrum, accumsan diam sed, consectetur ligula. Donec dignissim vitae elit at finibus. Vivamus a euismod lacus. Donec in euismod erat. Quisque tempor augue eleifend, dignissim enim ut, ultrices est. Nulla lacinia pretium augue non lacinia. Aenean auctor odio ac risus elementum tempor.\r\n\r\nCurabitur aliquam orci elit, id consequat nunc consequat quis. Duis sed elit vel magna aliquam convallis. Praesent viverra vel urna vel luctus. Maecenas cursus elit eu suscipit aliquet. Pellentesque sit amet lorem vel erat luctus vestibulum. Proin rhoncus leo a dui ullamcorper consectetur. Curabitur vel nunc nec enim mollis dictum sit amet sit amet lorem. Aliquam pharetra non magna sed viverra.\r\n\r\nUt eu lorem in purus aliquet lacinia at non nulla. Ut auctor interdum nisi, nec aliquam ligula viverra nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque posuere lacus arcu. Sed ipsum orci, tempor quis eleifend a, hendrerit et augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam turpis dolor, rhoncus ac aliquam et, maximus ac libero. Vestibulum sollicitudin, eros in iaculis posuere, ante ante vulputate leo, sed venenatis nisi felis eu augue. Donec in sapien non elit ultrices viverra ac at nibh. Vestibulum sagittis rutrum turpis nec luctus. Aliquam sit amet urna ipsum. Sed ornare condimentum ipsum nec bibendum.\r\n\r\nMaecenas et tempor nisi. Sed eleifend lacus sit amet feugiat vestibulum. Vestibulum condimentum lacus vel leo finibus luctus. Maecenas urna dui, feugiat vehicula nibh vitae, gravida consequat tortor. Sed vitae orci vel lacus efficitur accumsan. Aenean tincidunt ligula a nibh pretium, quis viverra nunc laoreet. Cras varius sapien ac nunc vulputate dictum et id lorem. Ut in ante pretium, finibus enim a, malesuada lectus. Curabitur eu nisl venenatis, efficitur tellus vel, tincidunt velit. Aliquam a sem mattis ipsum condimentum venenatis eu ut orci. Curabitur sed justo tristique, varius justo vel, laoreet est. Nullam at felis non lacus faucibus porttitor.\r\n\r\nDonec lobortis dictum hendrerit. Aliquam lacinia mattis ullamcorper. Pellentesque sollicitudin lorem magna, nec interdum leo porttitor non. Nunc risus tellus, commodo nec turpis eget, lacinia venenatis lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris eleifend sapien et ullamcorper malesuada. Suspendisse blandit erat ac malesuada malesuada. Phasellus ullamcorper ullamcorper risus quis venenatis. Nulla rutrum nibh magna, a elementum justo ornare ut.',99.99,'',1,1,'lorem-ipsum','2017-09-18',0),(5,'T-shirt','another one?>?',39.99,'',0,1,'t-shirt-y7f6','2017-09-18',0),(7,'Mp3','Some song',39.99,'',0,1,'mp3','2017-11-07',1),(8,'Digital Video','abc',39.99,'',0,1,'digital-video','2017-11-08',1),(9,'My Awesome Album [Digital]','here is the album',9.99,'products/3044781469/3044781469.png',0,1,'my-awesome-album','2017-11-08',1);
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_productfile`
--

DROP TABLE IF EXISTS `products_productfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_productfile` (
  `id` tinyint(4) DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  `product_id` tinyint(4) DEFAULT NULL,
  `free` tinyint(4) DEFAULT NULL,
  `user_required` tinyint(4) DEFAULT NULL,
  `name` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_productfile`
--

LOCK TABLES `products_productfile` WRITE;
/*!40000 ALTER TABLE `products_productfile` DISABLE KEYS */;
INSERT INTO `products_productfile` VALUES (5,'product/my-awesome-album/5/basic_audio.m4a',9,1,1,'Track 1'),(6,'product/my-awesome-album/6/basic_audio.m4a',9,0,0,'Track 10'),(7,'product/my-awesome-album/7/basic_audio.m4a',9,0,0,'Track 3'),(8,'product/my-awesome-album/None/basic_audio.m4a',9,0,0,'Track 4'),(9,'product/my-awesome-album/None/basic_audio.m4a',9,0,0,'Track 5'),(10,'product/my-awesome-album/None/basic_audio.m4a',9,0,0,'Track 2'),(11,'product/my-awesome-album/0/basic_audio.m4a',9,0,0,''),(12,'product/my-awesome-album/0/basic_audio.m4a',9,0,0,''),(13,'product/my-awesome-album/13/basic_audio.m4a',9,0,0,''),(14,'product/my-awesome-album/14/basic_audio.m4a',9,0,0,'');
/*!40000 ALTER TABLE `products_productfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(29) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',58),('django_admin_log',117),('django_content_type',22),('auth_permission',66),('carts_cart',57),('carts_cart_products',80),('analytics_objectviewed',59),('analytics_usersession',12),('billing_billingprofile',12),('billing_charge',35),('accounts_guestemail',10),('billing_card',23),('marketing_marketingpreference',4),('accounts_user',6),('accounts_emailactivation',9),('orders_order',41),('addresses_address',34),('products_product',9),('orders_productpurchase',19),('products_productfile',14);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_tag`
--

DROP TABLE IF EXISTS `tags_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_tag` (
  `id` varchar(0) DEFAULT NULL,
  `title` varchar(0) DEFAULT NULL,
  `slug` varchar(0) DEFAULT NULL,
  `timestamp` varchar(0) DEFAULT NULL,
  `active` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_tag`
--

LOCK TABLES `tags_tag` WRITE;
/*!40000 ALTER TABLE `tags_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_tag_products`
--

DROP TABLE IF EXISTS `tags_tag_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_tag_products` (
  `id` varchar(0) DEFAULT NULL,
  `tag_id` varchar(0) DEFAULT NULL,
  `product_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_tag_products`
--

LOCK TABLES `tags_tag_products` WRITE;
/*!40000 ALTER TABLE `tags_tag_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_tag_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:32
