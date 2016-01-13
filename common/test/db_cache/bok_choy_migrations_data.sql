-- MySQL dump 10.13  Distrib 5.6.24, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: edxtest
-- ------------------------------------------------------
-- Server version	5.6.24-2+deb.sury.org~precise+2

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
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-12-31 14:56:00.696699'),(2,'auth','0001_initial','2015-12-31 14:56:01.170600'),(3,'admin','0001_initial','2015-12-31 14:56:01.299892'),(4,'assessment','0001_initial','2015-12-31 14:56:06.155369'),(5,'contenttypes','0002_remove_content_type_name','2015-12-31 14:56:06.409538'),(6,'auth','0002_alter_permission_name_max_length','2015-12-31 14:56:06.515068'),(7,'auth','0003_alter_user_email_max_length','2015-12-31 14:56:06.610329'),(8,'auth','0004_alter_user_username_opts','2015-12-31 14:56:06.687373'),(9,'auth','0005_alter_user_last_login_null','2015-12-31 14:56:06.813648'),(10,'auth','0006_require_contenttypes_0002','2015-12-31 14:56:06.826022'),(11,'bookmarks','0001_initial','2015-12-31 14:56:07.366960'),(12,'branding','0001_initial','2015-12-31 14:56:07.712825'),(13,'bulk_email','0001_initial','2015-12-31 14:56:08.342193'),(14,'bulk_email','0002_data__load_course_email_template','2015-12-31 14:56:08.505805'),(15,'instructor_task','0001_initial','2015-12-31 14:56:08.912332'),(16,'certificates','0001_initial','2015-12-31 14:56:11.217554'),(17,'certificates','0002_data__certificatehtmlviewconfiguration_data','2015-12-31 14:56:11.244003'),(18,'certificates','0003_data__default_modes','2015-12-31 14:56:11.290756'),(19,'certificates','0004_certificategenerationhistory','2015-12-31 14:56:11.491562'),(20,'certificates','0005_auto_20151208_0801','2015-12-31 14:56:11.626958'),(21,'certificates','0006_certificatetemplateasset_asset_slug','2015-12-31 14:56:11.720518'),(22,'commerce','0001_data__add_ecommerce_service_user','2015-12-31 14:56:11.757252'),(23,'cors_csrf','0001_initial','2015-12-31 14:56:11.926018'),(24,'course_action_state','0001_initial','2015-12-31 14:56:12.330811'),(25,'course_groups','0001_initial','2015-12-31 14:56:13.807718'),(26,'course_modes','0001_initial','2015-12-31 14:56:13.997693'),(27,'course_modes','0002_coursemode_expiration_datetime_is_explicit','2015-12-31 14:56:14.093722'),(28,'course_modes','0003_auto_20151113_1443','2015-12-31 14:56:14.131388'),(29,'course_modes','0004_auto_20151113_1457','2015-12-31 14:56:14.335292'),(30,'course_modes','0005_auto_20151217_0958','2015-12-31 14:56:14.495286'),(31,'course_overviews','0001_initial','2015-12-31 14:56:14.630819'),(32,'course_overviews','0002_add_course_catalog_fields','2015-12-31 14:56:14.982549'),(33,'course_overviews','0003_courseoverviewgeneratedhistory','2015-12-31 14:56:15.030490'),(34,'course_overviews','0004_courseoverview_org','2015-12-31 14:56:15.113722'),(35,'course_overviews','0005_delete_courseoverviewgeneratedhistory','2015-12-31 14:56:15.143943'),(36,'course_overviews','0006_courseoverviewimageset','2015-12-31 14:56:15.254940'),(37,'course_overviews','0007_courseoverviewimageconfig','2015-12-31 14:56:15.450756'),(38,'course_structures','0001_initial','2015-12-31 14:56:15.506341'),(39,'courseware','0001_initial','2015-12-31 14:56:18.346538'),(40,'credit','0001_initial','2015-12-31 14:56:20.423456'),(41,'dark_lang','0001_initial','2015-12-31 14:56:20.691321'),(42,'dark_lang','0002_data__enable_on_install','2015-12-31 14:56:20.722202'),(43,'default','0001_initial','2015-12-31 14:56:21.476817'),(44,'default','0002_add_related_name','2015-12-31 14:56:21.732324'),(45,'default','0003_alter_email_max_length','2015-12-31 14:56:21.814437'),(46,'django_comment_common','0001_initial','2015-12-31 14:56:22.536942'),(47,'django_notify','0001_initial','2015-12-31 14:56:24.596629'),(48,'django_openid_auth','0001_initial','2015-12-31 14:56:24.972976'),(49,'edx_proctoring','0001_initial','2015-12-31 14:56:30.301516'),(50,'edx_proctoring','0002_proctoredexamstudentattempt_is_status_acknowledged','2015-12-31 14:56:30.658999'),(51,'edxval','0001_initial','2015-12-31 14:56:31.901318'),(52,'edxval','0002_data__default_profiles','2015-12-31 14:56:31.985614'),(53,'embargo','0001_initial','2015-12-31 14:56:33.476417'),(54,'embargo','0002_data__add_countries','2015-12-31 14:56:34.169435'),(55,'external_auth','0001_initial','2015-12-31 14:56:34.976587'),(56,'lms_xblock','0001_initial','2015-12-31 14:56:35.342783'),(57,'milestones','0001_initial','2015-12-31 14:56:37.717602'),(58,'milestones','0002_data__seed_relationship_types','2015-12-31 14:56:37.771111'),(59,'mobile_api','0001_initial','2015-12-31 14:56:38.159420'),(60,'notes','0001_initial','2015-12-31 14:56:38.666731'),(61,'oauth2','0001_initial','2015-12-31 14:56:40.986260'),(62,'oauth2_provider','0001_initial','2015-12-31 14:56:41.385485'),(63,'oauth_provider','0001_initial','2015-12-31 14:56:42.439047'),(64,'organizations','0001_initial','2015-12-31 14:56:42.776842'),(65,'programs','0001_initial','2015-12-31 14:56:43.190769'),(66,'programs','0002_programsapiconfig_cache_ttl','2015-12-31 14:56:43.616792'),(67,'programs','0003_auto_20151120_1613','2015-12-31 14:56:45.292878'),(68,'self_paced','0001_initial','2015-12-31 14:56:45.742961'),(69,'sessions','0001_initial','2015-12-31 14:56:45.834774'),(70,'student','0001_initial','2015-12-31 14:57:00.707670'),(71,'shoppingcart','0001_initial','2015-12-31 14:57:15.041286'),(72,'shoppingcart','0002_auto_20151208_1034','2015-12-31 14:57:16.163983'),(73,'shoppingcart','0003_auto_20151217_0958','2015-12-31 14:57:17.314819'),(74,'sites','0001_initial','2015-12-31 14:57:17.389091'),(75,'splash','0001_initial','2015-12-31 14:57:18.037349'),(76,'status','0001_initial','2015-12-31 14:57:19.826410'),(77,'student','0002_auto_20151208_1034','2015-12-31 14:57:21.147521'),(78,'submissions','0001_initial','2015-12-31 14:57:23.354858'),(79,'submissions','0002_auto_20151119_0913','2015-12-31 14:57:23.620278'),(80,'survey','0001_initial','2015-12-31 14:57:24.698404'),(81,'teams','0001_initial','2015-12-31 14:57:26.825637'),(82,'third_party_auth','0001_initial','2015-12-31 14:57:30.487810'),(83,'track','0001_initial','2015-12-31 14:57:30.566408'),(84,'user_api','0001_initial','2015-12-31 14:57:35.956967'),(85,'util','0001_initial','2015-12-31 14:57:36.691350'),(86,'util','0002_data__default_rate_limit_config','2015-12-31 14:57:36.747714'),(87,'verify_student','0001_initial','2015-12-31 14:57:46.279873'),(88,'verify_student','0002_auto_20151124_1024','2015-12-31 14:57:47.187739'),(89,'verify_student','0003_auto_20151113_1443','2015-12-31 14:57:47.983638'),(90,'wiki','0001_initial','2015-12-31 14:58:12.991851'),(91,'wiki','0002_remove_article_subscription','2015-12-31 14:58:13.055035'),(92,'workflow','0001_initial','2015-12-31 14:58:13.504017'),(93,'xblock_django','0001_initial','2015-12-31 14:58:14.361722'),(94,'contentstore','0001_initial','2015-12-31 14:58:40.752928'),(95,'course_creators','0001_initial','2015-12-31 14:58:40.919957'),(96,'xblock_config','0001_initial','2015-12-31 14:58:41.443731'),(97,'edx_proctoring','0003_auto_20160101_0525','2016-01-07 20:15:02.045764'),(98,'certificates','0007_certificateinvalidation','2016-01-07 20:27:19.565490'),(99,'certificates','0008_generatedcertificate_eligible_for_certificate','2016-01-07 20:27:19.728890');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-07 20:27:41