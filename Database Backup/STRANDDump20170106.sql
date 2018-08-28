-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: facedeck
-- ------------------------------------------------------
-- Server version	5.5.45

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `type` enum('google','facebook','twitter') DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `data1` text,
  `data2` text,
  `data3` text,
  `data4` text,
  `active` int(11) DEFAULT '0',
  `record_created` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,1,'facebook','Meta42','1481903588779435','CAAK4R8eNlQwBAAsbnUg6F35GhOYVyR1nJY3eylTmVQQ20uxc7vI7Rcz202HyOAsB1ZADFobuHHpIRttQrjy8357HnmdkBeToAUXe84HldandOic0G3bSBSYHe6dxgXe4DzSPSjB2pInNb1niGStYneVE5ktefR7kZCZAV9mfHy0mjvtNl1k',NULL,NULL,1,0),(2,1,'facebook','Linktagger','454682217887015','CAAK4R8eNlQwBAGMHGxJgtonu4sTibsIjXBi9txW70CaRnFGFZBudSRyGYBRDjyGnFfQP07EWAppIwZBP7idW9VdpbEEZC5wPPBYYKYu2fp9qUhJfkIUph3gqCmtAKvbwrTLZB4D6Mg1xiow6LEvZCzV9GipIGOyxZAx95ZAVMfZAAeULeTHj446cr1VPKkTR1XYZD',NULL,NULL,0,0),(3,1,'twitter','LiamWinder','52456965','52456965-98cuoa4gamIR7c5Qffr3YRLXIb6apklqH3K9XAQpf','9woL94Jvr0kUcLV5Z1Nl5smwh2Adk2RdhfhTT3HU7kKBe','https://pbs.twimg.com/profile_images/3104699145/2bd619f6953b4c58b2b7c1208ecdb29b_normal.jpeg',1,0),(4,1,'twitter','Meta42xyz','3939675495','3939675495-y0bNjs3viSPoNoA2Mlvfo7prFNGtsefl5ZcXXhB','BAQUK4mVORW9uqUoTmoG7EpivVx5wY98V62uGdx0Bv7tH','https://abs.twimg.com/sticky/default_profile_images/default_profile_0_normal.png',1,0),(5,3,'facebook','Meta42','1481903588779435','CAAK4R8eNlQwBABBPR8VwJi1l49ROkUlNdWVDkz5FPLFikgIFZC50wTqPqUwWpi9B2PCsz6HVJ4FQtfdHyOiqvZAu9zrLZA5VxF7f7tRpyhLWm44b0dtJPCfR53mtERy1MKuxulUQVaescv44j9jupw7x0AcxKIcVQ6UpzsS0YWP2EnCsVS6',NULL,NULL,1,0),(6,4,'twitter','LiamWinder','52456965','52456965-98cuoa4gamIR7c5Qffr3YRLXIb6apklqH3K9XAQpf','9woL94Jvr0kUcLV5Z1Nl5smwh2Adk2RdhfhTT3HU7kKBe','https://pbs.twimg.com/profile_images/3104699145/2bd619f6953b4c58b2b7c1208ecdb29b_normal.jpeg',1,0),(7,4,'facebook','Metafortytwo','1481903588779435','EAAK4R8eNlQwBAAHOAnBVLJxSZBZCkUmI3jFfZAusNlZB7ISqA1Kd6mxRN2cWDpqX6cmku4zn9DuYdAzEgZAW3qNNCZCqZCetW0AzOfyp9AlUwItsOet73SmXRv52s70cGQjZBurThXAv7EZAWmSTeFLacwRvLfMaNFRzVel3ZABZBysjAZDZD',NULL,NULL,1,0),(8,4,'facebook','CrossEyes Sheffield','722060884599162','EAAK4R8eNlQwBAH471R2jncATliuudPinkXWTvTpM2kAIYVvJLojxsEqqbFjxqiVg67Vp2V1RIBWLZBIm93A8ZBWtAcVKxZBvHhYkq8fQWNseRiCUQR4M9cKsVoxfDHFiVDYWjb7TKra8LpuNumZBdfq3ZAZASbApGEddVOBwgcUAZDZD',NULL,NULL,1,0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_queue`
--

DROP TABLE IF EXISTS `accounts_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `message` text,
  `image` text,
  `suggestion_id` varchar(50) DEFAULT '0',
  `scheduled_time` int(11) DEFAULT '0',
  `sent_time` int(11) DEFAULT '0',
  `error` text,
  `record_created` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_queue`
--

LOCK TABLES `accounts_queue` WRITE;
/*!40000 ALTER TABLE `accounts_queue` DISABLE KEYS */;
INSERT INTO `accounts_queue` VALUES (5,1,2,1,'test','','0',1,1444991086,'FacebookApiException Object\n(\n    [result:protected] => Array\n        (\n            [error] => Array\n                (\n                    [message] => (#200) The user hasn\'t authorized the application to perform this action\n                    [type] => OAuthException\n                    [code] => 200\n                    [fbtrace_id] => E7WZQUHYjKW\n                )\n\n        )\n\n    [message:protected] => (#200) The user hasn\'t authorized the application to perform this action\n    [string:Exception:private] => \n    [code:protected] => 0\n    [file:protected] => /var/www/html/libraries/facebook/base_facebook.php\n    [line:protected] => 1325\n    [trace:Exception:private] => Array\n        (\n            [0] => Array\n                (\n                    [file] => /var/www/html/libraries/facebook/base_facebook.php\n                    [line] => 896\n                    [function] => throwAPIException\n                    [class] => BaseFacebook\n                    [type] => ->\n                    [args] => Array\n                        (\n                            [0] => Array\n                                (\n                                    [error] => Array\n                                        (\n                                            [message] => (#200) The user hasn\'t authorized the application to perform this action\n                                            [type] => OAuthException\n                                            [code] => 200\n                                            [fbtrace_id] => E7WZQUHYjKW\n                                        )\n\n                                )\n\n                        )\n\n                )\n\n            [1] => Array\n                (\n                    [function] => _graph\n                    [class] => BaseFacebook\n                    [type] => ->\n                    [args] => Array\n                        (\n                            [0] => /454682217887015/feed\n                            [1] => POST\n                            [2] => Array\n                                (\n                                    [access_token] => CAAK4R8eNlQwBAGMHGxJgtonu4sTibsIjXBi9txW70CaRnFGFZBudSRyGYBRDjyGnFfQP07EWAppIwZBP7idW9VdpbEEZC5wPPBYYKYu2fp9qUhJfkIUph3gqCmtAKvbwrTLZB4D6Mg1xiow6LEvZCzV9GipIGOyxZAx95ZAVMfZAAeULeTHj446cr1VPKkTR1XYZD\n                                    [message] => test\n                                )\n\n                        )\n\n                )\n\n            [2] => Array\n                (\n                    [file] => /var/www/html/libraries/facebook/base_facebook.php\n                    [line] => 672\n                    [function] => call_user_func_array\n                    [args] => Array\n                        (\n                            [0] => Array\n                                (\n                                    [0] => Facebook Object\n                                        (\n                                            [sharedSessionID:protected] => \n                                            [appId:protected] => 765568383554828\n                                            [appSecret:protected] => bb1eafa5afb18922b10f7bd00905beea\n                                            [user:protected] => \n                                            [signedRequest:protected] => \n                                            [state:protected] => \n                                            [accessToken:protected] => \n                                            [fileUploadSupport:protected] => \n                                            [trustForwarded:protected] => \n                                            [allowSignedRequest:protected] => 1\n                                        )\n\n                                    [1] => _graph\n                                )\n\n                            [1] => Array\n                                (\n                                    [0] => /454682217887015/feed\n                                    [1] => POST\n                                    [2] => Array\n                                        (\n                                            [access_token] => CAAK4R8eNlQwBAGMHGxJgtonu4sTibsIjXBi9txW70CaRnFGFZBudSRyGYBRDjyGnFfQP07EWAppIwZBP7idW9VdpbEEZC5wPPBYYKYu2fp9qUhJfkIUph3gqCmtAKvbwrTLZB4D6Mg1xiow6LEvZCzV9GipIGOyxZAx95ZAVMfZAAeULeTHj446cr1VPKkTR1XYZD\n                                            [message] => test\n                                        )\n\n                                )\n\n                        )\n\n                )\n\n            [3] => Array\n                (\n                    [file] => /var/www/html/controllers/cron.php\n                    [line] => 88\n                    [function] => api\n                    [class] => BaseFacebook\n                    [type] => ->\n                    [args] => Array\n                        (\n                            [0] => /454682217887015/feed\n                            [1] => POST\n                            [2] => Array\n                                (\n                                    [access_token] => CAAK4R8eNlQwBAGMHGxJgtonu4sTibsIjXBi9txW70CaRnFGFZBudSRyGYBRDjyGnFfQP07EWAppIwZBP7idW9VdpbEEZC5wPPBYYKYu2fp9qUhJfkIUph3gqCmtAKvbwrTLZB4D6Mg1xiow6LEvZCzV9GipIGOyxZAx95ZAVMfZAAeULeTHj446cr1VPKkTR1XYZD\n                                    [message] => test\n                                )\n\n                        )\n\n                )\n\n            [4] => Array\n                (\n                    [function] => post\n                    [args] => Array\n                        (\n                        )\n\n                )\n\n            [5] => Array\n                (\n                    [file] => /var/www/html/index.php\n                    [line] => 86\n                    [function] => call_user_func\n                    [args] => Array\n                        (\n                            [0] => post\n                        )\n\n                )\n\n        )\n\n    [previous:Exception:private] => \n)\n',1444991079),(7,1,1,1,'Testing Changes','','0',1,1444993084,'',1444993074),(8,1,1,1,'testing the cron job run','','0',1,1444996805,'',1444996698),(9,1,4,1,'Testing','','0',1,1445605803,'',1445605595),(10,1,1,1,'test','','0',1446739200,1446739204,'',1446727663),(14,4,6,5,'hello','','0',1479463200,1479463204,'',1479295491),(15,4,7,5,'hello','','0',1,1479295504,'',1479295491);
/*!40000 ALTER TABLE `accounts_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_schedule`
--

DROP TABLE IF EXISTS `accounts_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `timezone` varchar(45) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `record_created` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_schedule`
--

LOCK TABLES `accounts_schedule` WRITE;
/*!40000 ALTER TABLE `accounts_schedule` DISABLE KEYS */;
INSERT INTO `accounts_schedule` VALUES (1,1,1,1,'0.0',1,1600,1444918369),(2,1,1,1,'0.0',2,1600,1444918369),(3,1,1,1,'0.0',3,1600,1444918369),(4,1,1,1,'0.0',4,1600,1444918369),(5,1,1,1,'0.0',5,1600,1444918369),(6,1,1,1,'0.0',6,1600,1444918369),(7,1,1,1,'0.0',7,1600,1444918369),(15,4,6,5,'0.0',5,1000,1474470672),(16,4,6,5,'0.0',5,1300,1474470672);
/*!40000 ALTER TABLE `accounts_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Meta',1,1),(2,'Test1',1,1),(3,'Esther',1,1),(4,'MetaFortyTwo',1,1);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suggestions`
--

DROP TABLE IF EXISTS `suggestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suggestions` (
  `id` varchar(45) NOT NULL,
  `text` text,
  `screen_name` varchar(255) DEFAULT NULL,
  `media` text,
  `list` varchar(45) DEFAULT NULL,
  `record_created` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suggestions`
--

LOCK TABLES `suggestions` WRITE;
/*!40000 ALTER TABLE `suggestions` DISABLE KEYS */;
INSERT INTO `suggestions` VALUES ('',NULL,NULL,'','design',1483691403);
/*!40000 ALTER TABLE `suggestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` int(1) DEFAULT '0',
  `type` int(1) DEFAULT '0',
  `record_created` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'liam.winder@gmail.com','qwerty123',1,1,0),(2,1,'liam@linktagger.com','daaad6e5604e8e17bd9f108d91e26afe6281dac8fda0091040a7a6d7bd9b43b5',1,100,0),(3,2,'test@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,1,0),(4,3,'esther.winder@gmail.com','daaad6e5604e8e17bd9f108d91e26afe6281dac8fda0091040a7a6d7bd9b43b5',1,1,0),(5,4,'hello@metafortytwo.com','34ef04dfd98d7783c9fbd9fbdecc0ae5b39943bf3d3ae2da9abd25673428f6bf',1,1,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_accounts`
--

DROP TABLE IF EXISTS `users_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_accounts`
--

LOCK TABLES `users_accounts` WRITE;
/*!40000 ALTER TABLE `users_accounts` DISABLE KEYS */;
INSERT INTO `users_accounts` VALUES (1,1,1,2),(2,1,2,2);
/*!40000 ALTER TABLE `users_accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-06  9:55:05
