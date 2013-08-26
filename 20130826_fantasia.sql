-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: fantasia
-- ------------------------------------------------------
-- Server version	5.5.31-0+wheezy1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add article',8,'add_article'),(23,'Can change article',8,'change_article'),(24,'Can delete article',8,'delete_article'),(25,'Can add kv store',9,'add_kvstore'),(26,'Can change kv store',9,'change_kvstore'),(27,'Can delete kv store',9,'delete_kvstore'),(28,'Can add migration history',10,'add_migrationhistory'),(29,'Can change migration history',10,'change_migrationhistory'),(30,'Can delete migration history',10,'delete_migrationhistory'),(31,'Can add Album',11,'add_album'),(32,'Can change Album',11,'change_album'),(33,'Can delete Album',11,'delete_album'),(34,'View, update and delete any album',11,'moderate_albums'),(35,'Can add Image',12,'add_image'),(36,'Can change Image',12,'change_image'),(37,'Can delete Image',12,'delete_image'),(38,'View, update and delete any image',12,'moderate_images'),(39,'Can add Album upload',13,'add_albumupload'),(40,'Can change Album upload',13,'change_albumupload'),(41,'Can delete Album upload',13,'delete_albumupload'),(42,'Can add gallery',15,'add_gallery'),(43,'Can change gallery',15,'change_gallery'),(44,'Can delete gallery',15,'delete_gallery'),(45,'Can add gallery upload',16,'add_galleryupload'),(46,'Can change gallery upload',16,'change_galleryupload'),(47,'Can delete gallery upload',16,'delete_galleryupload'),(48,'Can add photo',14,'add_photo'),(49,'Can change photo',14,'change_photo'),(50,'Can delete photo',14,'delete_photo'),(51,'Can add photo effect',17,'add_photoeffect'),(52,'Can change photo effect',17,'change_photoeffect'),(53,'Can delete photo effect',17,'delete_photoeffect'),(54,'Can add watermark',18,'add_watermark'),(55,'Can change watermark',18,'change_watermark'),(56,'Can delete watermark',18,'delete_watermark'),(57,'Can add photo size',19,'add_photosize'),(58,'Can change photo size',19,'change_photosize'),(59,'Can delete photo size',19,'delete_photosize');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$K9nocW8MKXW9$AosV/cvuSmLtK0TZd92V7/Jua4rcNkiKZO5yYVd9ffY=','2013-08-26 08:59:55',1,'kebree','Jean-Baptiste','Gintrand','kal_drak@hotmail.com',1,1,'2013-07-01 00:00:00'),(2,'pbkdf2_sha256$10000$fmsZpLhKXAVN$rvFbSP4cfyxTA/Mx2k8P6F7zMxd2Q9BCWQV7VNijPrI=','2013-08-26 09:10:18',1,'fantasia_lab','','','',1,1,'2013-08-26 09:10:18');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (12,1,31),(11,1,37),(10,1,36),(9,1,35),(8,1,33),(7,1,32);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `autor` varchar(20) NOT NULL,
  `preContent` longtext,
  `content` longtext NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (1,'Un','Kebree','Premier article','Ceci est le premier d\'une longue série... à supprimer !','2013-07-01 14:36:43'),(2,'Deux','Kebree','Deuxieme article','Ceci est le deuxième d\'une toujours aussi longue série. A supprimer bien sur.','2013-07-01 14:37:26'),(3,'Trois','Kebree','trois','trois','2013-08-22 08:15:48'),(4,'quatre','Kebree','quatre','quatre','2013-08-22 08:16:00'),(5,'cinq','Kebree','cinq','cinq','2013-08-22 08:16:15'),(6,'six','Kebree','six','six','2013-08-22 08:16:27'),(7,'sept','Kebree','sept','sept','2013-08-22 08:16:37');
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-07-01 14:36:43',1,8,'1','Un',1,''),(2,'2013-07-01 14:37:26',1,8,'2','Deux',1,''),(3,'2013-08-21 13:14:35',1,15,'1','Photos test',1,''),(4,'2013-08-21 13:35:37',1,15,'1','Photos test',2,'Modifié photos.'),(5,'2013-08-21 14:07:36',1,14,'2','t1',2,'Modifié effect.'),(6,'2013-08-21 14:08:13',1,6,'1','example.com',3,''),(7,'2013-08-21 14:08:30',1,6,'2','fantasia.kebree.fr',1,''),(8,'2013-08-21 14:09:25',1,14,'2','t1',3,''),(9,'2013-08-21 14:10:00',1,14,'3','deux',1,''),(10,'2013-08-21 14:10:18',1,15,'1','Photos test',2,'Modifié photos.'),(11,'2013-08-21 14:15:16',1,19,'2','thumbnail',1,''),(12,'2013-08-21 14:16:10',1,14,'3','deux',3,''),(13,'2013-08-21 14:16:40',1,14,'4','photo 3',1,''),(14,'2013-08-21 14:16:59',1,15,'1','Photos test',2,'Modifié photos.'),(15,'2013-08-21 14:19:32',1,19,'3','display',1,''),(16,'2013-08-21 14:19:46',1,14,'4','photo 3',3,''),(17,'2013-08-21 14:20:07',1,14,'5','photo 4',1,''),(18,'2013-08-21 14:20:19',1,15,'1','Photos test',2,'Modifié photos.'),(19,'2013-08-21 14:21:17',1,14,'6','photo 5',1,''),(20,'2013-08-21 14:21:28',1,14,'7','photo 6',1,''),(21,'2013-08-21 14:21:38',1,15,'1','Photos test',2,'Modifié photos.'),(22,'2013-08-21 14:21:59',1,19,'2','thumbnail',2,'Modifié width.'),(23,'2013-08-21 14:22:05',1,19,'3','display',2,'Modifié width.'),(24,'2013-08-22 05:59:07',1,19,'2','thumbnail',2,'Modifié width, height et crop.'),(25,'2013-08-22 07:57:37',1,15,'2','Deuxieme gallerie',1,''),(26,'2013-08-22 08:15:48',1,8,'3','Trois',1,''),(27,'2013-08-22 08:16:00',1,8,'4','quatre',1,''),(28,'2013-08-22 08:16:15',1,8,'5','cinq',1,''),(29,'2013-08-22 08:16:27',1,8,'6','six',1,''),(30,'2013-08-22 08:16:37',1,8,'7','sept',1,''),(31,'2013-08-26 09:10:18',1,3,'2','fantasia_lab',1,''),(32,'2013-08-26 09:10:47',1,3,'2','fantasia_lab',2,'Modifié password, is_staff et is_superuser.'),(33,'2013-08-26 09:11:12',1,3,'1','kebree',2,'Modifié password et first_name.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'article','blog','article'),(9,'kv store','thumbnail','kvstore'),(10,'migration history','south','migrationhistory'),(11,'Album','imagestore','album'),(12,'Image','imagestore','image'),(13,'Album upload','imagestore','albumupload'),(14,'photo','photologue','photo'),(15,'gallery','photologue','gallery'),(16,'gallery upload','photologue','galleryupload'),(17,'photo effect','photologue','photoeffect'),(18,'watermark','photologue','watermark'),(19,'photo size','photologue','photosize');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('40nj4qcme7c0kgc5bvvv8e9g9dae992b','ZjE2YjE2ZDJkZDBiOTFhMzYxNTBhZGQ0ZTgyZWNmYWMzYjcwYzZhMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-07-15 14:36:08'),('uktr9pyqk0cxmvcdsavovh0u0m1h24ob','ZjE2YjE2ZDJkZDBiOTFhMzYxNTBhZGQ0ZTgyZWNmYWMzYjcwYzZhMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-08 09:35:35'),('yfs0golr6mrso8h3nj00dfmh5kw14wzd','ZjE2YjE2ZDJkZDBiOTFhMzYxNTBhZGQ0ZTgyZWNmYWMzYjcwYzZhMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-03 10:43:35'),('jqwwuw5z9o5pzhgeidkjy2xyadmtdh8l','ZjE2YjE2ZDJkZDBiOTFhMzYxNTBhZGQ0ZTgyZWNmYWMzYjcwYzZhMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-04 09:08:30'),('7sm8tz1ig1248f1y1f12p4lvw5t625ol','ZjE2YjE2ZDJkZDBiOTFhMzYxNTBhZGQ0ZTgyZWNmYWMzYjcwYzZhMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-09-09 08:59:55');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'fantasia.kebree.fr','Fantasia');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_gallery`
--

DROP TABLE IF EXISTS `photologue_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `title_slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `tags` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `title_slug` (`title_slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_gallery`
--

LOCK TABLES `photologue_gallery` WRITE;
/*!40000 ALTER TABLE `photologue_gallery` DISABLE KEYS */;
INSERT INTO `photologue_gallery` VALUES (1,'2013-08-21 13:14:16','Photos test','photos-test','',1,''),(2,'2013-08-22 07:57:21','Deuxieme gallerie','deuxieme-gallerie','',1,'');
/*!40000 ALTER TABLE `photologue_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_gallery_photos`
--

DROP TABLE IF EXISTS `photologue_gallery_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_gallery_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gallery_id` (`gallery_id`,`photo_id`),
  KEY `photologue_gallery_photos_579c518c` (`gallery_id`),
  KEY `photologue_gallery_photos_bc609657` (`photo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_gallery_photos`
--

LOCK TABLES `photologue_gallery_photos` WRITE;
/*!40000 ALTER TABLE `photologue_gallery_photos` DISABLE KEYS */;
INSERT INTO `photologue_gallery_photos` VALUES (5,1,5),(6,1,6),(7,1,7),(8,2,5),(9,2,6),(10,2,7);
/*!40000 ALTER TABLE `photologue_gallery_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_galleryupload`
--

DROP TABLE IF EXISTS `photologue_galleryupload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_galleryupload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zip_file` varchar(100) NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `title` varchar(75) NOT NULL,
  `caption` longtext NOT NULL,
  `description` longtext NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `tags` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photologue_galleryupload_579c518c` (`gallery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_galleryupload`
--

LOCK TABLES `photologue_galleryupload` WRITE;
/*!40000 ALTER TABLE `photologue_galleryupload` DISABLE KEYS */;
/*!40000 ALTER TABLE `photologue_galleryupload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_photo`
--

DROP TABLE IF EXISTS `photologue_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `date_taken` datetime DEFAULT NULL,
  `view_count` int(10) unsigned NOT NULL,
  `crop_from` varchar(10) NOT NULL,
  `effect_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `title_slug` varchar(50) NOT NULL,
  `caption` longtext NOT NULL,
  `date_added` datetime NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `tags` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `title_slug` (`title_slug`),
  KEY `photologue_photo_d4e78e8b` (`effect_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_photo`
--

LOCK TABLES `photologue_photo` WRITE;
/*!40000 ALTER TABLE `photologue_photo` DISABLE KEYS */;
INSERT INTO `photologue_photo` VALUES (6,'photologue/photos/deux_2.png','2013-08-21 14:21:17',2,'center',NULL,'photo 5','photo-5','','2013-08-21 14:21:05',1,''),(5,'photologue/photos/un_1.png','2013-08-21 14:20:07',4,'center',NULL,'photo 4','photo-4','','2013-08-21 14:19:47',1,''),(7,'photologue/photos/head_bg_1.png','2013-08-21 14:21:28',2,'center',NULL,'photo 6','photo-6','','2013-08-21 14:21:17',1,'');
/*!40000 ALTER TABLE `photologue_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_photoeffect`
--

DROP TABLE IF EXISTS `photologue_photoeffect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_photoeffect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `transpose_method` varchar(15) NOT NULL,
  `color` double NOT NULL,
  `brightness` double NOT NULL,
  `contrast` double NOT NULL,
  `sharpness` double NOT NULL,
  `filters` varchar(200) NOT NULL,
  `reflection_size` double NOT NULL,
  `reflection_strength` double NOT NULL,
  `background_color` varchar(7) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_photoeffect`
--

LOCK TABLES `photologue_photoeffect` WRITE;
/*!40000 ALTER TABLE `photologue_photoeffect` DISABLE KEYS */;
INSERT INTO `photologue_photoeffect` VALUES (1,'Enhance Thumbnail','Increases sharpness and contrast. Works well for smaller image sizes such as thumbnails.','',1,1,1.2,1.3,'',0,0.6,'#FFFFFF');
/*!40000 ALTER TABLE `photologue_photoeffect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_photosize`
--

DROP TABLE IF EXISTS `photologue_photosize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_photosize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `quality` int(10) unsigned NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `pre_cache` tinyint(1) NOT NULL,
  `increment_count` tinyint(1) NOT NULL,
  `effect_id` int(11) DEFAULT NULL,
  `watermark_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `photologue_photosize_d4e78e8b` (`effect_id`),
  KEY `photologue_photosize_5b6a7608` (`watermark_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_photosize`
--

LOCK TABLES `photologue_photosize` WRITE;
/*!40000 ALTER TABLE `photologue_photosize` DISABLE KEYS */;
INSERT INTO `photologue_photosize` VALUES (1,'admin_thumbnail',100,100,70,0,1,1,1,NULL,NULL),(2,'thumbnail',100,100,60,0,1,0,0,1,NULL),(3,'display',400,0,70,0,0,0,0,1,NULL);
/*!40000 ALTER TABLE `photologue_photosize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_watermark`
--

DROP TABLE IF EXISTS `photologue_watermark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_watermark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `style` varchar(5) NOT NULL,
  `opacity` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_watermark`
--

LOCK TABLES `photologue_watermark` WRITE;
/*!40000 ALTER TABLE `photologue_watermark` DISABLE KEYS */;
/*!40000 ALTER TABLE `photologue_watermark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbnail_kvstore`
--

DROP TABLE IF EXISTS `thumbnail_kvstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbnail_kvstore`
--

LOCK TABLES `thumbnail_kvstore` WRITE;
/*!40000 ALTER TABLE `thumbnail_kvstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `thumbnail_kvstore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-26 11:16:07
