-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: laravel-shop
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'首页','fa-bar-chart','/',NULL,NULL,'2020-02-18 06:53:54'),(2,0,2,'系统管理','fa-tasks',NULL,NULL,NULL,'2020-02-18 06:55:00'),(3,2,3,'管理员','fa-users','auth/users',NULL,NULL,'2020-02-18 06:55:13'),(4,2,4,'角色','fa-user','auth/roles',NULL,NULL,'2020-02-18 06:55:26'),(5,2,5,'权限','fa-ban','auth/permissions',NULL,NULL,'2020-02-18 06:55:42'),(6,2,6,'菜单','fa-bars','auth/menu',NULL,NULL,'2020-02-18 06:55:58'),(7,2,7,'操作日志','fa-history','auth/logs',NULL,NULL,'2020-02-18 06:56:33'),(8,0,0,'用户管理','fa-users','/users',NULL,'2020-02-18 06:58:57','2020-02-18 06:58:57'),(9,0,0,'商品管理','fa-bars','/products',NULL,'2020-02-18 07:07:29','2020-02-18 07:07:29');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','192.168.10.1','[]','2020-02-18 06:32:45','2020-02-18 06:32:45'),(2,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:32:50','2020-02-18 06:32:50'),(3,1,'admin','GET','192.168.10.1','[]','2020-02-18 06:43:07','2020-02-18 06:43:07'),(4,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:52:34','2020-02-18 06:52:34'),(5,1,'admin/auth/menu/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:52:39','2020-02-18 06:52:39'),(6,1,'admin/auth/menu/1','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}','2020-02-18 06:53:12','2020-02-18 06:53:12'),(7,1,'admin/auth/menu','GET','192.168.10.1','[]','2020-02-18 06:53:12','2020-02-18 06:53:12'),(8,1,'admin/auth/menu/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:53:40','2020-02-18 06:53:40'),(9,1,'admin/auth/menu/1','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}','2020-02-18 06:53:54','2020-02-18 06:53:54'),(10,1,'admin/auth/menu','GET','192.168.10.1','[]','2020-02-18 06:53:55','2020-02-18 06:53:55'),(11,1,'admin/auth/menu/2/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:54:07','2020-02-18 06:54:07'),(12,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:54:29','2020-02-18 06:54:29'),(13,1,'admin/auth/menu/2/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:54:45','2020-02-18 06:54:45'),(14,1,'admin/auth/menu/2','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}','2020-02-18 06:55:00','2020-02-18 06:55:00'),(15,1,'admin/auth/menu','GET','192.168.10.1','[]','2020-02-18 06:55:01','2020-02-18 06:55:01'),(16,1,'admin/auth/menu/3/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:55:05','2020-02-18 06:55:05'),(17,1,'admin/auth/menu/3','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}','2020-02-18 06:55:13','2020-02-18 06:55:13'),(18,1,'admin/auth/menu','GET','192.168.10.1','[]','2020-02-18 06:55:14','2020-02-18 06:55:14'),(19,1,'admin/auth/menu/4/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:55:18','2020-02-18 06:55:18'),(20,1,'admin/auth/menu/4','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}','2020-02-18 06:55:26','2020-02-18 06:55:26'),(21,1,'admin/auth/menu','GET','192.168.10.1','[]','2020-02-18 06:55:27','2020-02-18 06:55:27'),(22,1,'admin/auth/menu/5/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:55:32','2020-02-18 06:55:32'),(23,1,'admin/auth/menu/5','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}','2020-02-18 06:55:42','2020-02-18 06:55:42'),(24,1,'admin/auth/menu','GET','192.168.10.1','[]','2020-02-18 06:55:43','2020-02-18 06:55:43'),(25,1,'admin/auth/menu/6/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:55:48','2020-02-18 06:55:48'),(26,1,'admin/auth/menu/6','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}','2020-02-18 06:55:58','2020-02-18 06:55:58'),(27,1,'admin/auth/menu','GET','192.168.10.1','[]','2020-02-18 06:55:59','2020-02-18 06:55:59'),(28,1,'admin/auth/menu/7/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:56:25','2020-02-18 06:56:25'),(29,1,'admin/auth/menu/7','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}','2020-02-18 06:56:33','2020-02-18 06:56:33'),(30,1,'admin/auth/menu','GET','192.168.10.1','[]','2020-02-18 06:56:34','2020-02-18 06:56:34'),(31,1,'admin/auth/menu','POST','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\"}','2020-02-18 06:58:57','2020-02-18 06:58:57'),(32,1,'admin/auth/menu','GET','192.168.10.1','[]','2020-02-18 06:58:58','2020-02-18 06:58:58'),(33,1,'admin/users','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:59:12','2020-02-18 06:59:12'),(34,1,'admin/users','GET','192.168.10.1','[]','2020-02-18 06:59:34','2020-02-18 06:59:34'),(35,1,'admin/auth/permissions','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:59:47','2020-02-18 06:59:47'),(36,1,'admin/auth/permissions/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 06:59:52','2020-02-18 06:59:52'),(37,1,'admin/auth/permissions','POST','192.168.10.1','{\"slug\":\"users\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users*\",\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/permissions\"}','2020-02-18 07:00:17','2020-02-18 07:00:17'),(38,1,'admin/auth/permissions','GET','192.168.10.1','[]','2020-02-18 07:00:18','2020-02-18 07:00:18'),(39,1,'admin/auth/roles','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:00:33','2020-02-18 07:00:33'),(40,1,'admin/auth/roles/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:00:37','2020-02-18 07:00:37'),(41,1,'admin/auth/roles','POST','192.168.10.1','{\"slug\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",null],\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/roles\"}','2020-02-18 07:01:01','2020-02-18 07:01:01'),(42,1,'admin/auth/roles','GET','192.168.10.1','[]','2020-02-18 07:01:03','2020-02-18 07:01:03'),(43,1,'admin/auth/users','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:01:14','2020-02-18 07:01:14'),(44,1,'admin/auth/users/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:01:18','2020-02-18 07:01:18'),(45,1,'admin/auth/users','POST','192.168.10.1','{\"username\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"admin\",\"password_confirmation\":\"admin\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/users\"}','2020-02-18 07:01:45','2020-02-18 07:01:45'),(46,1,'admin/auth/users','GET','192.168.10.1','[]','2020-02-18 07:01:46','2020-02-18 07:01:46'),(47,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:06:44','2020-02-18 07:06:44'),(48,1,'admin/auth/users','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:06:50','2020-02-18 07:06:50'),(49,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:06:56','2020-02-18 07:06:56'),(50,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:07:03','2020-02-18 07:07:03'),(51,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:07:04','2020-02-18 07:07:04'),(52,1,'admin','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:07:06','2020-02-18 07:07:06'),(53,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:07:07','2020-02-18 07:07:07'),(54,1,'admin/auth/menu','POST','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"Q2ZOMhAJmJzjMvU9YhuQFBopJOULuWRk7qL79bAT\"}','2020-02-18 07:07:28','2020-02-18 07:07:28'),(55,1,'admin/auth/menu','GET','192.168.10.1','[]','2020-02-18 07:07:29','2020-02-18 07:07:29'),(56,1,'admin/products','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:07:36','2020-02-18 07:07:36'),(57,1,'admin/products','GET','192.168.10.1','[]','2020-02-18 07:10:24','2020-02-18 07:10:24'),(58,1,'admin/products/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:25:13','2020-02-18 07:25:13'),(59,1,'admin/products/create','GET','192.168.10.1','[]','2020-02-18 07:48:26','2020-02-18 07:48:26'),(60,1,'admin/products','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 07:48:48','2020-02-18 07:48:48'),(61,1,'admin/products/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:00:42','2020-02-18 08:00:42'),(62,1,'admin/products/create','GET','192.168.10.1','[]','2020-02-18 08:06:57','2020-02-18 08:06:57'),(63,1,'admin/products','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:18:50','2020-02-18 08:18:50'),(64,1,'admin/products/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:18:56','2020-02-18 08:18:56'),(65,1,'admin/products/create','GET','192.168.10.1','[]','2020-02-18 08:22:33','2020-02-18 08:22:33'),(66,1,'admin/products/create','GET','192.168.10.1','[]','2020-02-18 08:22:33','2020-02-18 08:22:33'),(67,1,'admin/products','GET','192.168.10.1','[]','2020-02-18 08:23:09','2020-02-18 08:23:09'),(68,1,'admin/products/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:23:21','2020-02-18 08:23:21'),(69,1,'admin/products','POST','192.168.10.1','{\"title\":\"dasddflakj\",\"description\":\"<p>asdfasdfasdf<\\/p>\",\"on_sale\":\"0\",\"_token\":\"fXY2YEAIbsH88s577mZeVBK1vFHbQTScHP8PidOL\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}','2020-02-18 08:23:51','2020-02-18 08:23:51'),(70,1,'admin/products','GET','192.168.10.1','[]','2020-02-18 08:23:52','2020-02-18 08:23:52'),(71,1,'admin/products/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:24:02','2020-02-18 08:24:02'),(72,1,'admin/products/1/edit','GET','192.168.10.1','[]','2020-02-18 08:43:25','2020-02-18 08:43:25'),(73,1,'admin/products','GET','192.168.10.1','[]','2020-02-18 08:44:25','2020-02-18 08:44:25'),(74,1,'admin/products/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:44:31','2020-02-18 08:44:31'),(75,1,'admin/products','GET','192.168.10.1','[]','2020-02-18 08:45:34','2020-02-18 08:45:34'),(76,1,'admin/products/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:45:49','2020-02-18 08:45:49'),(77,1,'admin/products','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:46:00','2020-02-18 08:46:00'),(78,1,'admin/products/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:46:03','2020-02-18 08:46:03'),(79,1,'admin/products','POST','192.168.10.1','{\"title\":\"sadfasdfasd\",\"description\":\"<p>asdfasdf<\\/p>\",\"on_sale\":\"0\",\"_token\":\"fXY2YEAIbsH88s577mZeVBK1vFHbQTScHP8PidOL\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}','2020-02-18 08:46:45','2020-02-18 08:46:45'),(80,1,'admin/products','GET','192.168.10.1','[]','2020-02-18 08:46:46','2020-02-18 08:46:46'),(81,1,'admin/products/2/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:46:54','2020-02-18 08:46:54'),(82,1,'admin/products','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:55:21','2020-02-18 08:55:21'),(83,1,'admin/products/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:55:24','2020-02-18 08:55:24'),(84,1,'admin/products/create','GET','192.168.10.1','[]','2020-02-18 08:56:59','2020-02-18 08:56:59'),(85,1,'admin/products','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:57:03','2020-02-18 08:57:03'),(86,1,'admin/products/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:57:06','2020-02-18 08:57:06'),(87,1,'admin/products','POST','192.168.10.1','{\"title\":\"acr1\",\"description\":\"<p>asdwewe<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"new_1\":{\"title\":\"sd\",\"description\":\"sdwew\",\"price\":\"222\",\"stock\":\"22222\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"fXY2YEAIbsH88s577mZeVBK1vFHbQTScHP8PidOL\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}','2020-02-18 08:57:28','2020-02-18 08:57:28'),(88,1,'admin/products','GET','192.168.10.1','[]','2020-02-18 08:57:30','2020-02-18 08:57:30'),(89,1,'admin/products/3/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 08:57:37','2020-02-18 08:57:37'),(90,1,'admin/products/3/edit','GET','192.168.10.1','[]','2020-02-18 08:57:48','2020-02-18 08:57:48'),(91,1,'admin/products','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 09:16:24','2020-02-18 09:16:24'),(92,1,'admin/products/2/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 09:18:00','2020-02-18 09:18:00'),(93,1,'admin/products/2','PUT','192.168.10.1','{\"title\":\"sadfasdfasd\",\"description\":\"<p>asdfasdf<\\/p>\",\"on_sale\":\"1\",\"_token\":\"fXY2YEAIbsH88s577mZeVBK1vFHbQTScHP8PidOL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}','2020-02-18 09:18:04','2020-02-18 09:18:04'),(94,1,'admin/products','GET','192.168.10.1','[]','2020-02-18 09:18:05','2020-02-18 09:18:05'),(95,1,'admin/products/3/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2020-02-18 09:18:27','2020-02-18 09:18:27'),(96,1,'admin/products/3','PUT','192.168.10.1','{\"title\":\"acr1\",\"description\":\"<p>asdwewe<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"sd\",\"description\":\"sdwew\",\"price\":\"222.00\",\"stock\":\"22222\",\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"fXY2YEAIbsH88s577mZeVBK1vFHbQTScHP8PidOL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}','2020-02-18 09:18:31','2020-02-18 09:18:31'),(97,1,'admin/products','GET','192.168.10.1','[]','2020-02-18 09:18:32','2020-02-18 09:18:32'),(98,1,'admin/products','GET','192.168.10.1','[]','2020-02-19 00:37:13','2020-02-19 00:37:13');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'用户管理','users','','/users*','2020-02-18 07:00:18','2020-02-18 07:00:18');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2020-02-18 06:32:27','2020-02-18 06:32:27'),(2,'运营','operation','2020-02-18 07:01:01','2020-02-18 07:01:01');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$Uu4y3eY0YvYe9l82E73oIuoNtBZiLvL8vSsrkPIPWk6L99xwkLETi','Administrator',NULL,'Wu92mMffdRWNri08zdE2vUg46oj9KgZKspCaxlfOkRbkFvfJA01hcSlqoCGc','2020-02-18 06:32:27','2020-02-18 06:32:27'),(2,'operator','$2y$10$cGM8tt4hZp8CH5A7PXf7s.EDZ.tz0Cw/FtfrtLPiUG16gxsoco0ya','运营',NULL,NULL,'2020-02-18 07:01:45','2020-02-18 07:01:45');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_04_173148_create_admin_tables',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_10_01_011821_create_user_addresses_table',1),(6,'2019_10_01_021113_create_products_table',1),(7,'2019_10_01_021120_create_product_skus_table',1),(8,'2020_02_22_064508_create_user_favorite_products_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_skus`
--

DROP TABLE IF EXISTS `product_skus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_skus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_skus_product_id_foreign` (`product_id`),
  CONSTRAINT `product_skus_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_skus`
--

LOCK TABLES `product_skus` WRITE;
/*!40000 ALTER TABLE `product_skus` DISABLE KEYS */;
INSERT INTO `product_skus` VALUES (1,'sd','sdwew',222.00,22222,3,'2020-02-18 08:57:29','2020-02-18 08:57:29'),(2,'quasi','Nihil et omnis et non.',8784.00,20443,4,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(3,'ut','Fugit aliquam deleniti laborum quaerat rem magni neque.',2794.00,317,4,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(4,'nulla','Provident placeat iusto fuga voluptatem eveniet a tempora.',4717.00,19666,4,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(5,'ipsa','Architecto velit aut sit quibusdam ratione unde.',139.00,71544,5,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(6,'unde','Id earum optio laborum vel atque animi dolorum.',8121.00,27492,5,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(7,'deleniti','Neque corrupti ea nostrum beatae nesciunt natus veniam.',4014.00,80998,5,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(8,'officiis','Exercitationem nisi aut molestiae quis perspiciatis exercitationem dolorum.',6291.00,10402,6,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(9,'repellendus','Dicta vel et omnis.',7915.00,76247,6,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(10,'ab','Cum veritatis dolorem voluptates vel sit numquam voluptatem.',8274.00,96884,6,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(11,'voluptatum','Numquam ut quia et id praesentium numquam.',7209.00,55545,7,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(12,'a','Et aut quasi minus numquam saepe magnam voluptatum.',2069.00,10704,7,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(13,'deserunt','Doloremque nostrum tempora sed odio.',9705.00,78165,7,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(14,'voluptatem','Autem qui officia et atque est commodi.',6354.00,26125,8,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(15,'nemo','Qui illum optio dolores vero magnam voluptates quo harum.',607.00,60021,8,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(16,'sed','Et numquam deserunt laboriosam voluptatibus repellendus consequatur nihil est.',6192.00,39779,8,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(17,'sed','Iste porro autem odit repudiandae.',6401.00,13950,9,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(18,'voluptas','Sit tenetur quasi quia suscipit tempore dolorem iusto maiores.',5935.00,88861,9,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(19,'non','Dicta nam ut eligendi similique a voluptas architecto.',2988.00,42288,9,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(20,'assumenda','Eos temporibus non deserunt eligendi.',7470.00,46873,10,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(21,'minus','Ipsa nisi error ipsam vel.',9186.00,67364,10,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(22,'soluta','Possimus ut assumenda odit.',3948.00,81203,10,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(23,'est','Explicabo cupiditate non ex iusto omnis architecto.',1780.00,89140,11,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(24,'rerum','Quia sit laboriosam qui et consequuntur aliquid molestiae.',4662.00,80142,11,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(25,'commodi','Eum explicabo similique voluptate optio veniam.',9184.00,84418,11,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(26,'voluptate','Ea ut possimus dolorem accusamus odio.',6376.00,35066,12,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(27,'sit','Accusamus beatae eos dolore et pariatur quo.',4367.00,42339,12,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(28,'nisi','Soluta quae laborum et aut corporis hic ut.',6655.00,12523,12,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(29,'velit','Dolores minima esse animi autem cupiditate.',7153.00,92709,13,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(30,'quam','Consequatur ut fuga ut eius.',1244.00,29610,13,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(31,'officiis','Aspernatur sed reprehenderit quo iusto.',9720.00,63610,13,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(32,'eum','Dolores sit ducimus nihil rerum qui alias.',5115.00,91007,14,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(33,'aspernatur','Odio et id illo quia nobis architecto.',3388.00,70295,14,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(34,'tempora','Qui mollitia voluptas asperiores natus magni.',2288.00,26358,14,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(35,'et','Saepe tenetur necessitatibus eius enim.',2852.00,37898,15,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(36,'sint','In aut labore et assumenda nobis est cupiditate.',6899.00,76469,15,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(37,'perferendis','Et eos veritatis dolores molestiae quis.',1290.00,1356,15,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(38,'aut','Corporis beatae exercitationem architecto non eos.',7628.00,7482,16,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(39,'quia','Dolores in maiores esse dolores.',6037.00,45646,16,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(40,'dolores','Et nam perspiciatis non quo.',5180.00,82526,16,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(41,'repudiandae','Veniam aliquam ut aut nesciunt.',3000.00,18085,17,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(42,'ut','Cum et est quis sint voluptatibus pariatur sapiente.',6008.00,66036,17,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(43,'eligendi','Omnis sed id dolores enim dolores.',2847.00,32661,17,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(44,'iure','Molestias recusandae magni eius autem ratione.',9198.00,66194,18,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(45,'adipisci','Corporis aut laudantium rerum omnis ratione et.',918.00,49191,18,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(46,'quis','Quia ducimus quis iure suscipit fugiat.',418.00,99716,18,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(47,'accusantium','Assumenda sunt necessitatibus similique soluta laudantium ut.',1080.00,3386,19,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(48,'nisi','Ea voluptatem voluptatum et quo blanditiis.',1946.00,45541,19,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(49,'enim','Et vitae et nihil voluptatum et optio.',7733.00,67364,19,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(50,'et','Vero enim perferendis quo qui.',387.00,68836,20,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(51,'reiciendis','Sint architecto ratione magni quia.',3442.00,27474,20,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(52,'dolores','Ut nesciunt occaecati labore repellendus.',1985.00,13487,20,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(53,'placeat','Ut odio blanditiis error.',9173.00,75284,21,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(54,'perferendis','Perspiciatis nihil voluptatum doloribus delectus ratione.',4123.00,85044,21,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(55,'magni','Qui in voluptate nihil hic nesciunt ut omnis.',7638.00,9683,21,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(56,'laudantium','Accusantium tempora facilis dolorem facere aut harum.',9402.00,46206,22,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(57,'hic','Laudantium voluptatem dignissimos aut officiis architecto et aliquam repellendus.',1063.00,27205,22,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(58,'architecto','Temporibus vero voluptatum qui asperiores praesentium facere.',3694.00,10944,22,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(59,'atque','Accusantium architecto quis dolore aperiam recusandae corporis repellendus corrupti.',2189.00,96699,23,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(60,'magni','Consequatur exercitationem ipsa fugit vitae repellendus aut.',7144.00,37524,23,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(61,'sed','Est ipsam eligendi illum vel sed non culpa.',7290.00,33922,23,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(62,'ipsum','Provident doloribus dolorem eius.',4444.00,21117,24,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(63,'neque','Et dolorum similique et est vel laboriosam voluptatem dolore.',9276.00,96005,24,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(64,'consequatur','Possimus vel dignissimos laboriosam unde.',1214.00,82036,24,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(65,'voluptas','Quaerat eius sed nam id esse vel quia tempora.',7154.00,93878,25,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(66,'molestiae','Aut ut voluptatem magni consequatur ratione.',1117.00,96055,25,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(67,'eos','Illo culpa aliquam culpa maiores.',6324.00,7718,25,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(68,'nam','At numquam hic ut in alias est odio.',5327.00,309,26,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(69,'occaecati','Necessitatibus consequatur incidunt dolores et rerum qui non.',1978.00,75480,26,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(70,'iure','Laudantium asperiores quisquam ab sed pariatur.',2538.00,99443,26,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(71,'eius','Animi laboriosam sit ratione autem totam esse.',4840.00,67941,27,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(72,'non','Vel quo vitae reprehenderit atque perferendis aliquam nesciunt.',4601.00,63160,27,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(73,'numquam','Aut iste architecto magnam harum quis.',2864.00,36572,27,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(74,'qui','Est non autem tempora molestias et quae.',5580.00,10762,28,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(75,'accusamus','Itaque et magnam necessitatibus ut quae.',9262.00,62498,28,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(76,'voluptas','Non sit corporis repellat quam.',9178.00,44433,28,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(77,'odio','Animi ipsum sit et.',2960.00,53326,29,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(78,'itaque','Est ad omnis reiciendis sequi eligendi fugiat harum.',299.00,27461,29,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(79,'vel','Laudantium saepe omnis sed.',2223.00,99149,29,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(80,'odio','Et ut eveniet porro consectetur accusamus.',179.00,10764,30,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(81,'libero','Cum reiciendis et nulla omnis voluptates aut libero.',1391.00,17431,30,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(82,'sit','Consequatur pariatur autem perspiciatis praesentium.',3369.00,68143,30,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(83,'veritatis','Numquam hic quod sit voluptatibus rerum eos.',7888.00,32438,31,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(84,'quasi','Consequatur in pariatur mollitia sunt optio temporibus.',4553.00,11374,31,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(85,'voluptatem','Doloremque temporibus placeat non repudiandae doloribus non.',7928.00,92647,31,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(86,'natus','Ea asperiores est ipsam officiis eveniet est voluptatem.',3564.00,23112,32,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(87,'magni','Voluptates voluptatem provident vel dolores.',5962.00,45751,32,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(88,'autem','Molestias fugiat eos laboriosam dolorem suscipit.',2831.00,89600,32,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(89,'quia','Qui voluptate quaerat optio harum quod sed.',245.00,45413,33,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(90,'odit','Nihil eveniet iste qui sit temporibus sunt voluptas.',5843.00,8377,33,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(91,'labore','At sed labore sint et voluptas aspernatur.',9518.00,76938,33,'2020-02-19 02:12:47','2020-02-19 02:12:47');
/*!40000 ALTER TABLE `product_skus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT '1',
  `rating` double(8,2) NOT NULL DEFAULT '5.00',
  `sold_count` int(10) unsigned NOT NULL DEFAULT '0',
  `review_count` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'dasddflakj','<p>asdfasdfasdf</p>','images/Kiaan+14%2522+x+10%2522+Rectangle+Mirror+Vanity+Tray.jpg',0,5.00,0,0,0.00,'2020-02-18 08:23:51','2020-02-18 08:23:51'),(2,'sadfasdfasd','<p>asdfasdf</p>','images/微信图片_20200211101528.jpg',1,5.00,0,0,0.00,'2020-02-18 08:46:46','2020-02-18 09:18:05'),(3,'acr1','<p>asdwewe</p>','images/微信图片_20200211101502.jpg',1,5.00,0,0,222.00,'2020-02-18 08:57:29','2020-02-18 09:18:31'),(4,'quia','Nobis ad doloribus temporibus doloremque et mollitia.','https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,0.00,0,0,2794.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(5,'modi','Deleniti animi est vel.','https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg',1,5.00,0,0,139.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(6,'labore','Quas similique et eos sunt non tempore ullam.','https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg',1,4.00,0,0,6291.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(7,'quis','Est sint quae nihil et doloremque.','https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,0.00,0,0,2069.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(8,'eveniet','Reprehenderit cupiditate nobis nam vel minus quis.','https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg',1,4.00,0,0,607.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(9,'sit','In magnam fugit sit commodi enim suscipit officiis dolorem.','https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg',1,3.00,0,0,2988.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(10,'voluptate','Sequi non sint eum hic veritatis aliquam.','https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg',1,4.00,0,0,3948.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(11,'officia','Sint sapiente non quas saepe ad.','https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg',1,0.00,0,0,1780.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(12,'laborum','Alias perspiciatis sint aut autem excepturi perspiciatis ut.','https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg',1,4.00,0,0,4367.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(13,'autem','Nihil exercitationem nemo nam omnis autem sed libero.','https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,4.00,0,0,1244.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(14,'ipsam','Praesentium possimus necessitatibus atque error voluptas natus est.','https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg',1,0.00,0,0,2288.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(15,'id','Laboriosam labore aut minus maiores.','https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg',1,1.00,0,0,1290.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(16,'cupiditate','Voluptas quasi occaecati aut minima alias ipsum labore harum.','https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg',1,1.00,0,0,5180.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(17,'numquam','In officia occaecati at adipisci soluta nulla similique.','https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg',1,4.00,0,0,2847.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(18,'aut','Et magni et officia eligendi.','https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg',1,2.00,0,0,418.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(19,'consequatur','Nihil est iusto nulla ipsa dolorem unde aut.','https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg',1,2.00,0,0,1080.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(20,'quae','Labore at sed non sapiente.','https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg',1,0.00,0,0,387.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(21,'itaque','Aut est ea atque at velit.','https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg',1,4.00,0,0,4123.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(22,'praesentium','Distinctio occaecati perferendis et dolore quia atque eaque sint.','https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg',1,4.00,0,0,1063.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(23,'voluptas','Et autem voluptatem nesciunt repudiandae eum vitae quam nam.','https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg',1,0.00,0,0,2189.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(24,'sit','Aut voluptatem totam provident quo vel.','https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg',1,1.00,0,0,1214.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(25,'voluptatum','Et aut aut quos sequi nemo eos nihil.','https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg',1,2.00,0,0,1117.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(26,'quasi','A error occaecati odio velit.','https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg',1,1.00,0,0,1978.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(27,'sed','Sed alias eum aut rerum aut doloribus aut quis.','https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,1.00,0,0,2864.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(28,'quia','Culpa sapiente velit sapiente voluptatem enim commodi exercitationem culpa.','https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg',1,0.00,0,0,5580.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(29,'voluptas','Dolorem velit a et modi.','https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg',1,1.00,0,0,299.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(30,'inventore','Ullam non est amet atque omnis nobis modi facilis.','https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg',1,0.00,0,0,179.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(31,'nesciunt','Est maiores asperiores eveniet corporis quaerat magnam dignissimos dolores.','https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,4.00,0,0,4553.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(32,'eos','Sint molestias odio autem odio.','https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg',1,5.00,0,0,2831.00,'2020-02-19 02:12:47','2020-02-19 02:12:47'),(33,'et','Omnis excepturi quisquam voluptatem animi similique.','https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg',1,1.00,0,0,245.00,'2020-02-19 02:12:47','2020-02-19 02:12:47');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) unsigned NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_addresses`
--

LOCK TABLES `user_addresses` WRITE;
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_favorite_products`
--

DROP TABLE IF EXISTS `user_favorite_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_favorite_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_favorite_products_user_id_foreign` (`user_id`),
  KEY `user_favorite_products_product_id_foreign` (`product_id`),
  CONSTRAINT `user_favorite_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_favorite_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favorite_products`
--

LOCK TABLES `user_favorite_products` WRITE;
/*!40000 ALTER TABLE `user_favorite_products` DISABLE KEYS */;
INSERT INTO `user_favorite_products` VALUES (2,1,3,'2020-02-22 08:43:20','2020-02-22 08:43:20');
/*!40000 ALTER TABLE `user_favorite_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'yhgfire','190123248@qq.com','2020-02-18 01:59:14','$2y$10$Sqb1VK5IR7b4MONWNo576.VYZPv137lUQOMqYKHHj/G1BV1jugm4W',NULL,'2020-02-18 01:58:53','2020-02-18 01:59:14');
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

-- Dump completed on 2020-02-25  1:14:04
