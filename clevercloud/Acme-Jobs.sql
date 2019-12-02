-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: acme-jobs
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2a5vcjo3stlfcwadosjfq49l1` (`user_account_id`),
  CONSTRAINT `FK_2a5vcjo3stlfcwadosjfq49l1` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (4,0,3);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `more_info` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXnhikaa2dj3la6o2o7e9vo01y0` (`moment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
INSERT INTO `announcement` VALUES (3642,0,'2019-11-02 09:35:00.000000',NULL,'This is a description of a sample announcement','Sample announcement 01'),(3643,0,'2019-06-09 22:00:00.000000','http://www.example.com','This is a description of another announcement','Sample announcement 02'),(3644,0,'1900-10-10 19:00:39.000000','http://www.example.com','This is a description of a very old announcement','Sample announcement 03'),(3645,0,'2019-11-19 19:10:00.000000','http://www.example.com','This is a description of a very old announcement','Sample announcement 04'),(3646,0,'2019-11-19 18:10:00.000000',NULL,'This is a description of a very old announcement','Sample announcement 05'),(3647,0,'2019-11-15 18:10:00.000000','http://www.example.com','This is a description of a very old announcement','Sample announcement 06'),(3648,0,'2019-11-16 18:00:00.000000','http://www.example.com','This is a description of a very old announcement','Sample announcement 07');
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anonymous`
--

DROP TABLE IF EXISTS `anonymous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anonymous` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6lnbc6fo3om54vugoh8icg78m` (`user_account_id`),
  CONSTRAINT `FK_6lnbc6fo3om54vugoh8icg78m` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anonymous`
--

LOCK TABLES `anonymous` WRITE;
/*!40000 ALTER TABLE `anonymous` DISABLE KEYS */;
INSERT INTO `anonymous` VALUES (2,0,1);
/*!40000 ALTER TABLE `anonymous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `qualifications` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `statement` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `job_id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ct7r18vvxl5g4c4k7aefpa4do` (`reference`),
  KEY `IDX2q2747fhp099wkn3j2yt05fhs` (`status`),
  KEY `FKoa6p4s2oyy7tf80xwc4r04vh6` (`job_id`),
  KEY `FKmbjdoxi3o93agxosoate4sxbt` (`worker_id`),
  CONSTRAINT `FKmbjdoxi3o93agxosoate4sxbt` FOREIGN KEY (`worker_id`) REFERENCES `worker` (`id`),
  CONSTRAINT `FKoa6p4s2oyy7tf80xwc4r04vh6` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (3726,0,'2019-06-09 22:00:00.000000','You need to have Qualifications Example 1','ABCD-JJJJ:WWWW','You need to have Skills Example 1','This is an example 1','pending',3720,3578),(3727,0,'2019-06-10 22:00:00.000000','You need to have Qualifications Example 2','EEEE-ABCD:WWWW','You need to have Skills Example 2','This is an example 2','accepted',3720,3578),(3728,0,'2019-07-09 22:00:00.000000','You need to have Qualifications Example 3','EEEE-JJJJ:ABCD','You need to have Skills Example 3','This is an example 3','rejected',3721,3584),(3729,0,'2018-06-09 22:00:00.000000','You need to have Qualifications Example 4','abcd-jpjj:wwww','You need to have Skills Example 4','This is an example 4','pending',3723,3584),(3730,0,'2019-06-09 23:00:00.000000','You need to have Qualifications Example 5','eeee-abod:wwww','You need to have Skills Example 5','This is an example 5','pending',3723,3578),(3731,0,'2018-07-10 23:00:00.000000','You need to have Qualifications Example 6','EEEE-JJJJ:WWWW','You need to have Skills Example 6','This is an example 6','accepted',3723,3590),(3732,0,'2018-07-10 23:00:00.000000','You need to have Qualifications Example 7','FFFF-JJJJ:WWWW','You need to have Skills Example 7','This is an example 7','accepted',3721,3578),(3733,0,'2018-07-10 23:00:00.000000','You need to have Qualifications Example 8','GGGG-JJJJ:WWWW','You need to have Skills Example 8','This is an example 8','accepted',3720,3578);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `final_mode` bit(1) NOT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `auditor_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7x4vmrfrh2nyj9mwha7np1ab4` (`auditor_id`),
  KEY `FKijp0sxquetnc9erybuvwrg2e4` (`job_id`),
  CONSTRAINT `FK7x4vmrfrh2nyj9mwha7np1ab4` FOREIGN KEY (`auditor_id`) REFERENCES `auditor` (`id`),
  CONSTRAINT `FKijp0sxquetnc9erybuvwrg2e4` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES (3734,0,'do not know either',_binary '','2018-12-21 00:00:00.000000','Title for an audit 1',3692,3720),(3735,0,'do not know either',_binary '','2018-12-21 00:00:00.000000','Title for an audit 2',3692,3720),(3736,0,'do not know either',_binary '\0','2018-12-21 00:00:00.000000','Title for an audit 3',3695,3722),(3737,0,'do not know either',_binary '\0','2018-12-21 00:00:00.000000','Title for an audit 4',3692,3723),(3738,0,'do not know either',_binary '','2018-12-21 00:00:00.000000','Title for an audit 5',3695,3724),(3739,0,'do not know either',_binary '','2018-12-21 00:00:00.000000','Title for an audit 5',3695,3720);
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditor`
--

DROP TABLE IF EXISTS `auditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `firm` varchar(255) DEFAULT NULL,
  `statement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_clqcq9lyspxdxcp6o4f3vkelj` (`user_account_id`),
  CONSTRAINT `FK_clqcq9lyspxdxcp6o4f3vkelj` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditor`
--

LOCK TABLES `auditor` WRITE;
/*!40000 ALTER TABLE `auditor` DISABLE KEYS */;
INSERT INTO `auditor` VALUES (3692,0,3691,'Juan Noguerol Tirado (firma)','statement 1'),(3695,0,3694,'Eduardo Miguel Botía Dominguez (firma)','statement 2');
/*!40000 ALTER TABLE `auditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authenticated`
--

DROP TABLE IF EXISTS `authenticated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authenticated` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h52w0f3wjoi68b63wv9vwon57` (`user_account_id`),
  CONSTRAINT `FK_h52w0f3wjoi68b63wv9vwon57` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authenticated`
--

LOCK TABLES `authenticated` WRITE;
/*!40000 ALTER TABLE `authenticated` DISABLE KEYS */;
INSERT INTO `authenticated` VALUES (5,0,3),(3572,0,3571),(3574,0,3573),(3576,0,3575),(3579,0,3577),(3582,0,3580),(3585,0,3583),(3588,0,3586),(3591,0,3589),(3594,0,3592),(3597,0,3595),(3600,0,3598),(3603,0,3601),(3606,0,3604),(3609,0,3607),(3612,0,3610),(3615,0,3613),(3618,0,3616),(3621,0,3619),(3624,0,3622),(3627,0,3625),(3693,0,3691);
/*!40000 ALTER TABLE `authenticated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sponsor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjoxwdnjr54soq3j89kt3fgrtj` (`sponsor_id`),
  CONSTRAINT `FKjoxwdnjr54soq3j89kt3fgrtj` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenge`
--

DROP TABLE IF EXISTS `challenge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenge` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `bronze_goal` varchar(255) DEFAULT NULL,
  `bronze_reward_amount` double DEFAULT NULL,
  `bronze_reward_currency` varchar(255) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `gold_goal` varchar(255) DEFAULT NULL,
  `gold_reward_amount` double DEFAULT NULL,
  `gold_reward_currency` varchar(255) DEFAULT NULL,
  `silver_goal` varchar(255) DEFAULT NULL,
  `silver_reward_amount` double DEFAULT NULL,
  `silver_reward_currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXnr284tes3x8hnd3h716tmb3fr` (`deadline`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenge`
--

LOCK TABLES `challenge` WRITE;
/*!40000 ALTER TABLE `challenge` DISABLE KEYS */;
INSERT INTO `challenge` VALUES (3635,0,'Sing in your bathroom',1,'€','2020-12-09 23:00:00.000000','Singing challenge','Sing in public',10,'€','Sing to your friends',5,'€','Singing challenge'),(3636,0,'Jump in your bathroom',1,'€','2022-12-09 23:00:00.000000','Jumping challenge','Jump in public',10,'€','Jump to your friends',5,'€','Jumping challenge'),(3637,0,'Dab to yourself',1,'€','2021-12-09 23:00:00.000000','Dabbing challenge','Dab on them haters',10,'€','Dab on your dog',5,'€','Dabbing challenge'),(3638,0,'Dab to yourself',1,'€','2021-12-09 23:00:00.000000','Challengue 4','Dab on them haters',10,'€','Dab on your dog',5,'€','Dabbing challenge'),(3639,0,'Dab to yourself',1,'€','2021-12-09 23:00:00.000000','Challengue 5','Dab on them haters',10,'€','Dab on your dog',5,'€','Dabbing challenge'),(3640,0,'Dab to yourself',1,'€','2021-12-09 23:00:00.000000','Challengue 6','Dab on them haters',10,'€','Dab on your dog',5,'€','Dabbing challenge'),(3641,0,'Dab to yourself',1,'€','2021-12-09 23:00:00.000000','Challengue 7','Dab on them haters',10,'€','Dab on your dog',5,'€','Dabbing challenge');
/*!40000 ALTER TABLE `challenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial`
--

DROP TABLE IF EXISTS `commercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commercial` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `credit_card` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial`
--

LOCK TABLES `commercial` WRITE;
/*!40000 ALTER TABLE `commercial` DISABLE KEYS */;
INSERT INTO `commercial` VALUES (43,0,'http://piezaapieza.net/wp-content/uploads/2016/11/EDU84131.01.jpg','Edu Mig','https://www.atptour.com/','4793823612819522'),(44,0,'https://s3.eestatic.com/2019/09/23/ciencia/Otono-Ciencia_431466954_134482819_1024x576.jpg','The autum in Spain ','https://www.elperiodico.com/es/sociedad/20190918/otono-2019-equinoccio-dia-hora-7639468','4126673159904486'),(45,0,'http://piezaapieza.net/wp-content/uploads/2016/11/EDU84131.01.jpg','Work as anyone','https://www.atptour.com/','4552748942901537');
/*!40000 ALTER TABLE `commercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial_banner`
--

DROP TABLE IF EXISTS `commercial_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commercial_banner` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sponsor_id` int(11) NOT NULL,
  `credit_card` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_q9id3wc65gg49afc5tlr1c00n` (`sponsor_id`),
  CONSTRAINT `FK_q9id3wc65gg49afc5tlr1c00n` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial_banner`
--

LOCK TABLES `commercial_banner` WRITE;
/*!40000 ALTER TABLE `commercial_banner` DISABLE KEYS */;
INSERT INTO `commercial_banner` VALUES (3677,0,'http://piezaapieza.net/wp-content/uploads/2016/11/EDU84131.01.jpg','Edu Mig','https://www.atptour.com/',3617,'4111111111111111'),(3678,0,'https://s3.eestatic.com/2019/09/23/ciencia/Otono-Ciencia_431466954_134482819_1024x576.jpg','The autum in Spain ','https://www.elperiodico.com/es/sociedad/20190918/otono-2019-equinoccio-dia-hora-7639468',3617,'4111111111111111'),(3679,0,'http://piezaapieza.net/wp-content/uploads/2016/11/EDU84131.01.jpg','Work as anyone','https://www.atptour.com/',3617,'4111111111111111'),(3680,0,'http://datos.jpg','repeticion1!','https://estosondatosparaiterar.com/',3617,'4111111111111111'),(3681,0,'http://piezaapieza.net/wp-content/uploads/2016/11/EDU84131.01.jpg','repeticion2!','https://www.atptour.com/',3626,'5500000000000004'),(3682,0,'http://piezaapieza.net/wp-content/uploads/2016/11/EDU84131.01.jpg','repeticion3!','https://www.atptour.com/',3626,'5500000000000004'),(3683,0,'http://piezaapieza.net/wp-content/uploads/2016/11/EDU84131.01.jpg','repeticion4!','https://www.atptour.com/',3626,'5500000000000004');
/*!40000 ALTER TABLE `commercial_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `activities` varchar(255) DEFAULT NULL,
  `ceo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `incorporated` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `stars` double DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX3vwg77973akwy9ilnfq707yt1` (`stars`),
  KEY `IDXbm7mwffwxwiukjmbmt9t1qnnu` (`sector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (3670,0,'Activity1','Ceo1','email1@email.com',_binary '','Name1 Inc','+123 987654321','Aerospace',4.6,'https://www.site1.com/'),(3671,0,'Activity2','Ceo2','email2@email.com',_binary '','Name2 Inc','+123 (1234) 6543212','Food',2.1,'https://www.site2.com/'),(3672,0,'Activity3','Ceo3','email3@email.com',_binary '\0','Name3 LLC','+123 (1234) 6543212','Food',NULL,'https://www.site3.com/'),(3673,0,'Activity4','Ceo4','email4@email.com',_binary '\0','Name4 LLC','+123 (0) 9876543210','Food',5,'https://www.site4.com/'),(3674,0,'Activity5','Ceo4','email5@email.com',_binary '','Name5 Inc','+123 (0) 9876543210','Software',5,'https://www.site5.com/'),(3675,0,'Activity6','Ceo6','email6@email.com',_binary '','Name6 Inc','+12 (25) 987654301','Automotive',4.2,'https://www.site6.com/'),(3676,0,'Activity7','Ceo7','email6@email.com',_binary '\0','Name7 LLC','+12 (25) 987654301','Automotive',4.2,'https://www.site6.com/');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6cyha9f1wpj0dpbxrrjddrqed` (`user_account_id`),
  CONSTRAINT `FK_6cyha9f1wpj0dpbxrrjddrqed` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customization`
--

DROP TABLE IF EXISTS `customization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customization` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `spam` varchar(255) DEFAULT NULL,
  `threshold` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customization`
--

LOCK TABLES `customization` WRITE;
/*!40000 ALTER TABLE `customization` DISABLE KEYS */;
INSERT INTO `customization` VALUES (6,0,'sex,hardcore,viagra,cialis,nigeria,you\'ve won,million dollar,   sexo,duro,viagra,cialis,nigeria,has ganado,millón de euros',1);
/*!40000 ALTER TABLE `customization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descriptor`
--

DROP TABLE IF EXISTS `descriptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descriptor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptor`
--

LOCK TABLES `descriptor` WRITE;
/*!40000 ALTER TABLE `descriptor` DISABLE KEYS */;
INSERT INTO `descriptor` VALUES (3696,0,'Description sample of a Descriptor'),(3697,0,'Description sample of a Descriptor2'),(3698,0,'Description sample of a Descriptor3'),(3699,0,'Description sample of a Descriptor4'),(3700,0,'Description sample of a Descriptor5'),(3701,0,'Description sample of a Descriptor6');
/*!40000 ALTER TABLE `descriptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descriptor_duty`
--

DROP TABLE IF EXISTS `descriptor_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descriptor_duty` (
  `descriptor_id` int(11) NOT NULL,
  `duties_id` int(11) NOT NULL,
  UNIQUE KEY `UK_kvr5rclgwa51d625rmx13ke96` (`duties_id`),
  KEY `FKqitedkrksd2w8qyp1fp5eao9f` (`descriptor_id`),
  CONSTRAINT `FK57eqqlhihwvd53ykpmsiqlx2p` FOREIGN KEY (`duties_id`) REFERENCES `duty` (`id`),
  CONSTRAINT `FKqitedkrksd2w8qyp1fp5eao9f` FOREIGN KEY (`descriptor_id`) REFERENCES `descriptor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptor_duty`
--

LOCK TABLES `descriptor_duty` WRITE;
/*!40000 ALTER TABLE `descriptor_duty` DISABLE KEYS */;
INSERT INTO `descriptor_duty` VALUES (3696,3702),(3697,3703),(3697,3704),(3697,3705),(3697,3712),(3698,3708),(3699,3706),(3699,3709),(3699,3711),(3700,3707),(3700,3710),(3701,3713);
/*!40000 ALTER TABLE `descriptor_duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duty`
--

DROP TABLE IF EXISTS `duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duty` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `time_amount` double DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duty`
--

LOCK TABLES `duty` WRITE;
/*!40000 ALTER TABLE `duty` DISABLE KEYS */;
INSERT INTO `duty` VALUES (3702,0,'Description of a duty',60.75,'Duty title sample'),(3703,0,'Description of a duty2',20.75,'Duty title sample2'),(3704,0,'Description of a duty3',9.75,'Duty title sample3'),(3705,0,'Description of a duty4',5.25,'Duty title sample4'),(3706,0,'Description of a duty5',10.23,'Duty title sample5'),(3707,0,'Description of a duty6',10.1,'Duty title sample6'),(3708,0,'Description of a duty7',70.27,'Duty title sample5'),(3709,0,'Description of a duty8',10.8,'Duty title sample8'),(3710,0,'Description of a duty9',20.44,'Duty title sample9'),(3711,0,'Description of a duty10',10.23,'Duty title sample10'),(3712,0,'Description of a duty11',81.23,'Duty title sample11'),(3713,0,'Description of a duty12',78.23,'Duty title sample12');
/*!40000 ALTER TABLE `duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_na4dfobmeuxkwf6p75abmb2tr` (`user_account_id`),
  CONSTRAINT `FK_na4dfobmeuxkwf6p75abmb2tr` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (3596,0,3595,'Employer 1, Inc.','Sector 1'),(3599,0,3598,'Employer 2, Inc.','Sector 2'),(3602,0,3601,'Employer 3, Inc.','Sector 3'),(3605,0,3604,'Employer 4, Inc.','Sector 4'),(3608,0,3607,'Employer 5, Inc.','Sector 5'),(3611,0,3610,'Employer 6, Inc.','Sector 6'),(3614,0,3613,'Employer 7, Inc.','Sector 7');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (3740);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investor`
--

DROP TABLE IF EXISTS `investor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `stars` double DEFAULT NULL,
  `statement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXq1q335kxox0leg1u9hhndvue1` (`stars`),
  KEY `IDX1slmmcr1g0wv9jbgun6rny0oy` (`sector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investor`
--

LOCK TABLES `investor` WRITE;
/*!40000 ALTER TABLE `investor` DISABLE KEYS */;
INSERT INTO `investor` VALUES (3663,0,'Person 2','Software',3.8,'Esto es una declaración de inversión 1'),(3664,0,'Person 1','Aerospace',0.5,'Esto es una declaración de inversión 2'),(3665,0,'Person 3','Food',NULL,'Esto es una declaración de inversión 3'),(3666,0,'Person 4','Automotive',5,'Esto es una declaración de inversión 4'),(3667,0,'Person 5','Food',4.4,'Esto es una declaración de inversión 5'),(3668,0,'Person 6','Aerospace',5,'Esto es una declaración de inversión 6.'),(3669,0,'Person 7','Aerospace',5,'Esto es una declaración de inversión 7.');
/*!40000 ALTER TABLE `investor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `final_mode` bit(1) NOT NULL,
  `more_info` varchar(255) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `salary_amount` double DEFAULT NULL,
  `salary_currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `descriptor_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_qpodqtu8nvqkof3olnqnqcv2l` (`descriptor_id`),
  UNIQUE KEY `UK_bos0omdc9s5vykasqjhwaq65m` (`reference_number`),
  KEY `IDXfdmpnr8o4phmk81sqsano16r` (`deadline`),
  KEY `IDXt84ibbldao4ngscmvo7ja0es` (`final_mode`),
  KEY `FK3rxjf8uh6fh2u990pe8i2at0e` (`employer_id`),
  CONSTRAINT `FK3rxjf8uh6fh2u990pe8i2at0e` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`id`),
  CONSTRAINT `FKfqwyynnbcsq0htxho3vchpd2u` FOREIGN KEY (`descriptor_id`) REFERENCES `descriptor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (3720,0,'2030-12-11 22:59:00.000000',_binary '\0','http://www.moreinfo.com/','EMPI-JOBA',15000.98,'€','Title 1',3696,3596),(3721,0,'2030-12-11 22:59:00.000000',_binary '','http://www.moreinfo.com/','EMPI-JOBB',20000,'€','Title 2',3697,3599),(3722,0,'2023-10-10 18:51:00.000000',_binary '','http://www.moreinfo.com/','EFPI-JOHB',31000,'€','Title 3',3698,3599),(3723,0,'2024-11-06 09:34:00.000000',_binary '\0','http://www.moreinfo.com/','EFRI-JTHZ',16000,'€','Title 4',3699,3596),(3724,0,'2085-04-25 04:57:00.000000',_binary '','http://www.moreinfo.com/','EFVI-JQHZ',14000,'€','Title 5',3700,3596),(3725,0,'2085-04-25 04:57:00.000000',_binary '','http://www.moreinfo.com/','EFXI-JQHZ',14000,'€','Title 5',3701,3605);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_audit`
--

DROP TABLE IF EXISTS `job_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_audit` (
  `job_id` int(11) NOT NULL,
  `audits_id` int(11) NOT NULL,
  UNIQUE KEY `UK_nkebtrjsrh57lbtm0yc7kq19h` (`audits_id`),
  KEY `FKal6tpgdb90woj30af2npppuy` (`job_id`),
  CONSTRAINT `FK2q3o4lp7bce6ig17ngxcu8gi5` FOREIGN KEY (`audits_id`) REFERENCES `audit` (`id`),
  CONSTRAINT `FKal6tpgdb90woj30af2npppuy` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_audit`
--

LOCK TABLES `job_audit` WRITE;
/*!40000 ALTER TABLE `job_audit` DISABLE KEYS */;
INSERT INTO `job_audit` VALUES (3720,3734),(3721,3735),(3722,3736),(3723,3737),(3724,3738),(3725,3739);
/*!40000 ALTER TABLE `job_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKik4epe9dp5q6uenarfyia7xin` (`user_id`),
  CONSTRAINT `FKik4epe9dp5q6uenarfyia7xin` FOREIGN KEY (`user_id`) REFERENCES `authenticated` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (3716,0,'what is a haiku','2018-12-10 00:00:00.000000','discussion,employees','Title for a message 1',3572),(3717,0,'it is a kind of poem','2018-12-20 00:00:00.000000','design,agile','Title for a message 2',3572),(3718,0,'I do not know how I use tags','2018-12-21 00:00:00.000000',NULL,'Title for a message 3',3572),(3719,0,'This is a thread for me','2019-06-21 09:00:00.000000',NULL,'Title for a message 4',3574);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `non_commercial_banner`
--

DROP TABLE IF EXISTS `non_commercial_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `non_commercial_banner` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sponsor_id` int(11) NOT NULL,
  `jingle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2l8gpcwh19e7jj513or4r9dvb` (`sponsor_id`),
  CONSTRAINT `FK_2l8gpcwh19e7jj513or4r9dvb` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `non_commercial_banner`
--

LOCK TABLES `non_commercial_banner` WRITE;
/*!40000 ALTER TABLE `non_commercial_banner` DISABLE KEYS */;
INSERT INTO `non_commercial_banner` VALUES (3684,0,'https://miro.medium.com/max/1024/1*vxjAHkrXbGG6gOiPZgjeZA.jpeg','Conocimiento es poder','https://neoattack.com/',3620,'https://neoattack.com/'),(3685,0,'https://media.istockphoto.com/illustrations/wind-icon-illustration-id912304034','wild is the wind','https://www.tiempo.com/montequinto.htm',3620,NULL),(3686,0,'http://expertolaboralonline.jpg','Sundays means no work','https://m.media-amazon.com',3620,NULL),(3687,0,'http://masdatos.jpg','Repeticion1!','https://arepetirdatos.com',3620,NULL),(3688,0,'http://iteracion.jpg','Repeticion2!','https://iteraciondedatos.com',3626,NULL),(3689,0,'http://otroejemplo.jpg','Repeticion3!','https://ejemplos.com',3626,NULL),(3690,0,'http://estamosañadiendodatosparaiterar.jpg','Repeticion4!','https://yesteesotrodatomas.com',3626,NULL);
/*!40000 ALTER TABLE `non_commercial_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `max_amount` double DEFAULT NULL,
  `max_currency` varchar(255) DEFAULT NULL,
  `min_amount` double DEFAULT NULL,
  `min_currency` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_iex7e8fs0fh89yxpcnm1orjkm` (`ticker`),
  KEY `IDXq2o9psuqfuqmq59f0sq57x9uf` (`deadline`),
  KEY `IDXcp4664f36sgqsd0ihmirt0w0` (`ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer`
--

LOCK TABLES `offer` WRITE;
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
INSERT INTO `offer` VALUES (3656,0,'2022-08-10 08:35:00.000000',2500,'€',1800.2,'€','2019-06-10 08:35:00.000000','This is a description of a sample offer','OAAAA-00000','Sample offer 01'),(3657,0,'2019-10-10 10:00:00.000000',1000.5,'€',65,'€','2019-06-09 22:00:00.000000','This is a description of another offer','OBBBB-00000','Sample offer 02'),(3658,0,'1901-10-10 19:00:39.000000',1300.5,'€',1000.5,'€','1900-10-10 19:00:39.000000','This is a description of a very old offer','OCCCC-00000','Sample offer 03'),(3659,0,'2019-12-12 09:35:00.000000',650.98,'€',400.2,'€','2019-06-10 08:35:00.000000','This is a description of a sample offer','ODDDD-00000','Sample offer 04'),(3660,0,'2019-12-12 11:00:00.000000',1530.5,'€',300.85,'€','2019-06-09 22:00:00.000000','This is a description of another offer','OEEEE-00000','Sample offer 05'),(3661,0,'2019-12-12 11:00:00.000000',1530.5,'€',300.85,'€','2019-06-09 22:00:00.000000','This is a description of another offer','OFFFF-00000','Sample offer 06'),(3662,0,'2019-12-12 11:00:00.000000',1530.5,'€',300.85,'€','2019-06-09 22:00:00.000000','This is a description of another offer','OGGGG-00000','Sample offer 07');
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b1gwnjqm6ggy9yuiqm0o4rlmd` (`user_account_id`),
  CONSTRAINT `FK_b1gwnjqm6ggy9yuiqm0o4rlmd` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shout`
--

DROP TABLE IF EXISTS `shout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shout` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shout`
--

LOCK TABLES `shout` WRITE;
/*!40000 ALTER TABLE `shout` DISABLE KEYS */;
INSERT INTO `shout` VALUES (3628,0,'Eduardo Miguel Botía Domingo','2019-09-03 09:41:00.000000','Mensaje de prueba 1'),(3629,0,'Eduardo Miguel Botía Domingo','2019-08-02 21:48:00.000000','Mensaje de prueba 2'),(3630,0,'Eduardo Miguel Botía Domingo','2019-02-03 13:32:00.000000','Mensaje de prueba 3'),(3631,0,'Eduardo Miguel Botía Domingo','2019-04-21 16:55:00.000000','Mensaje de prueba 4'),(3632,0,'Eduardo Miguel Botía Domingo','2019-09-03 17:42:00.000000','Mensaje de prueba 5'),(3633,0,'Eduardo Miguel Botía Domingo','2019-09-03 17:42:00.000000','Mensaje de prueba 6'),(3634,0,'Eduardo Miguel Botía Domingo','2019-09-03 17:42:00.000000','Mensaje de prueba 7');
/*!40000 ALTER TABLE `shout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `reward_amount` double DEFAULT NULL,
  `reward_currency` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rea5aivw0b4fiu93s509u9lky` (`ticker`),
  KEY `IDXd37rv1cyj5dvbd63k6progy7q` (`deadline`),
  KEY `IDX2qy5jkiqwk6f13kkfq8pu61le` (`ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` VALUES (3649,0,'2019-08-10 08:35:00.000000','2019-06-10 08:35:00.000000',40.2,'€','This is a description of a sample request','RAAAA-00000','Sample request 01'),(3650,0,'2019-10-10 10:00:00.000000','2019-06-09 22:00:00.000000',65,'€','This is a description of another request','RBBBB-00000','Sample request 02'),(3651,0,'1901-10-10 19:00:39.000000','1900-10-10 19:00:39.000000',100.5,'€','This is a description of a very old request','RCCCC-00000','Sample request 03'),(3652,0,'2023-03-08 05:35:00.000000','2019-06-10 08:35:00.000000',450.2,'€','This is a description of a sample request','RDDDD-00000','Sample request 04'),(3653,0,'2023-05-04 17:00:00.000000','2019-06-09 22:00:00.000000',680.9,'€','This is a description of another request','REEEE-00000','Sample request 05'),(3654,0,'2023-05-04 17:00:00.000000','2019-06-09 22:00:00.000000',680.9,'€','This is a description of another request','RFFFF-00000','Sample request 06'),(3655,0,'2023-05-04 17:00:00.000000','2019-06-09 22:00:00.000000',680.9,'€','This is a description of another request','RGGGG-00000','Sample request 07');
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spam`
--

DROP TABLE IF EXISTS `spam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spam` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `spam_threshold` double DEFAULT NULL,
  `spam_words` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spam`
--

LOCK TABLES `spam` WRITE;
/*!40000 ALTER TABLE `spam` DISABLE KEYS */;
INSERT INTO `spam` VALUES (6,0,'en',1,'sex,hardcore,viagra,cialis,nigeria,you\'ve won,million dollar'),(7,0,'en',1,'SEX,HARDCORE,VIAGRA,CIALIS,NIGERIA,YOU\'VE WON,MILLION DOLLAR'),(8,0,'es',1,'sexo,duro,viagra,cialis,nigeria,has ganado,millón de euros'),(9,0,'es',1,'SEXO,DURO,VIAGRA,CIALIS,NIGERIA,HAS GANADO,MILLÓN DE EUROS');
/*!40000 ALTER TABLE `spam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `credit_card` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_20xk0ev32hlg96kqynl6laie2` (`user_account_id`),
  CONSTRAINT `FK_20xk0ev32hlg96kqynl6laie2` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (3617,0,3616,'4111111111111111','Acme organization 1'),(3620,0,3619,NULL,'Acme organization 2'),(3623,0,3622,'6011000000000004','Acme organization 3'),(3626,0,3625,'5500000000000004','Acme organization 4');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thread`
--

DROP TABLE IF EXISTS `thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thread` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thread`
--

LOCK TABLES `thread` WRITE;
/*!40000 ALTER TABLE `thread` DISABLE KEYS */;
INSERT INTO `thread` VALUES (3714,0,'2030-12-11 22:59:00.000000','Sample thread 1'),(3715,0,'2030-12-11 22:59:00.000000','Sample thread 2');
/*!40000 ALTER TABLE `thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thread_message`
--

DROP TABLE IF EXISTS `thread_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thread_message` (
  `thread_id` int(11) NOT NULL,
  `messages_id` int(11) NOT NULL,
  UNIQUE KEY `UK_3jtjeexb82n6qyr77gcoqr4ck` (`messages_id`),
  KEY `FKgjodhp3io8v829t92y1tdtb7u` (`thread_id`),
  CONSTRAINT `FKgjodhp3io8v829t92y1tdtb7u` FOREIGN KEY (`thread_id`) REFERENCES `thread` (`id`),
  CONSTRAINT `FKrjegm8cujrxgbce9n1b78xuyo` FOREIGN KEY (`messages_id`) REFERENCES `message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thread_message`
--

LOCK TABLES `thread_message` WRITE;
/*!40000 ALTER TABLE `thread_message` DISABLE KEYS */;
INSERT INTO `thread_message` VALUES (3714,3719),(3715,3716),(3715,3717),(3715,3718);
/*!40000 ALTER TABLE `thread_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `identity_email` varchar(255) DEFAULT NULL,
  `identity_name` varchar(255) DEFAULT NULL,
  `identity_surname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_castjbvpeeus0r8lbpehiu0e4` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1,0,_binary '\0','john.doe@acme.com','John','Doe','$2a$05$eYus9Evqv5HnhC6lY8xohuFIBYSfr7H0RPB.F.BPyDtdpjLsy/WPq','anonymous'),(3,0,_binary '','administrator@acme.com','Administrator','Acme.com','$2a$05$cmiqIGdVZZxiXsxbAroj4uCfDSBS1mAvLGv9g.qnfB7AE3KEJzPqK','administrator'),(3571,0,_binary '','authenticated@acme.com','Authenticated','User','$2a$05$0DPSPyktldomTfMl6fAdGeyTRufmgeGnSTeW6Kbpc7wCfVApfQ7aG','authenticated1'),(3573,0,_binary '','authenticated2@acme.com','Authenticated2','User2','$2a$05$o2VYaSkj/juOJCghKC/FJuMSIY6W4Lj1IiDcFp/VXALe.pB.F2vae','authenticated2'),(3575,0,_binary '','authenticated3@acme.com','Authenticated3','User3','$2a$05$Tqy8OfRiSvYKMoijYHF08eBS.kEZy/PFwdBQbpQGyQtPhV1V0xwMW','authenticated3'),(3577,0,_binary '','worker1@acme.com','Worker','One','$2a$05$6hh5W5TtEo2toFAbVCnj5.D4Z1Tf/EC49/R1RqPho8mK2OQMrnWKa','worker1'),(3580,0,_binary '','worker2@acme.com','Worker','Two','$2a$05$RMBDn8/hD16kuyGpKOgw0eSPa2AAxUeiCxYXWs0MDi41beCU30WXK','worker2'),(3583,0,_binary '','worker3@acme.com','Worker','Three','$2a$05$pXvwAVh4a9nlwxGPoleCneD1fU2I1aSzoTK1cPq2SLiMxc3qLYiFq','worker3'),(3586,0,_binary '','worker4@acme.com','Worker','Four','$2a$05$NHJX1j7diMCO.fF8khCtNe9q85oAvn700GkuufoBJo1ZaHl.MNZzy','worker4'),(3589,0,_binary '','worker5@acme.com','Worker','Five','$2a$05$NJgGXMwqaYPDDTfPv.jOQ.MJymexLOLwUVHw0pPeG3wKdi6zfJCqq','worker5'),(3592,0,_binary '','worker6@acme.com','Worker','Six','$2a$05$L9nkBMknZ21ijnUrTVdaLe/5dX0FGLSWJavsixpYkkE98V2KztLlK','worker6'),(3595,0,_binary '','employer1@acme.com','Employer','One','$2a$05$JW.gd4fFHv0c0mkzDGY7Ee40csZKcVkaJEoCFIyPNOerFw4cwSMW.','employer1'),(3598,0,_binary '','employer2@acme.com','Employer','Two','$2a$05$88pFGVQxK0hpbmSZpB307esjpeh575rGlejB00SFWUvGs78o0.YK2','employer2'),(3601,0,_binary '','employer3@acme.com','Employer','Three','$2a$05$lhR.FzF/lV83Cvpeu.YDPu0MLyI/6U1snoAIZ4Togg0dP6yi0OvzK','employer3'),(3604,0,_binary '','employer4@acme.com','Employer','Four','$2a$05$fFO0xWPVI.hnC2mv.gJxA.Cj1.1Ru.P2XHhNlaVY21xXexI6oKQk.','employer4'),(3607,0,_binary '','employer5@acme.com','Employer','Five','$2a$05$YrCP1NdV.tsQRawhfK92J.njThigpf3PaYOCU/W6SE98B9BTXvDtC','employer5'),(3610,0,_binary '','employer6@acme.com','Employer','Six','$2a$05$QNWlRXRHnPBrFhujrN0cs.ULhA2E1TQsUJKy..ahVeZi0mZYEMtbK','employer6'),(3613,0,_binary '','employer7@acme.com','Employer','Seven','$2a$05$m9NAmFTD3loMPY1sYiwdW.9IBjWJJ0HjzoV7Gv2qJJQhBfNOVFL9K','employer7'),(3616,0,_binary '','sponsor1@acme.com','Sponsor','One','$2a$05$Za.OXNbaeZmuFgciePGgYO9XdF5nXREa/0eCwpbGNI708oGfJZuFS','sponsor1'),(3619,0,_binary '','sponsor2@acme.com','Sponsor','Two','$2a$05$I8GEchaVwoJt1VkmYH0JaOzhGF12BbgGln1CyqMjFpDEA2BaeG92y','sponsor2'),(3622,0,_binary '','sponsor3@acme.com','Sponsor','Three','$2a$05$D/ZzQNfRDCRQSx2XEss80.5CekzQbwtKXLCufVpliMcYOapnjUeVK','sponsor3'),(3625,0,_binary '','sponsor4@acme.com','Sponsor','Four','$2a$05$/hpUBXvl4RoIz.jKldKvW.rB8uChLjfu4UHLc5wHxm37h57JsWFwm','sponsor4'),(3691,0,_binary '','auditor1@acme.com','Auditor','One','$2a$05$01k8Bkaq784MSoS7Af1Jw.mkA7H1A4ktatLaDPG7Oj1nhkKsKWiIS','auditor1'),(3694,0,_binary '','auditor2@acme.com','Auditor','Second','$2a$05$C30B01EmtNYq9TzO4ZzrH.Hl/b/jP.gdWMJkTPFgXK3ITs73rlB6O','auditor2');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `qualifications` varchar(255) DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_l5q1f33vs2drypmbdhpdgwfv3` (`user_account_id`),
  CONSTRAINT `FK_l5q1f33vs2drypmbdhpdgwfv3` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (3578,0,3577,'Example 1 Qualifications Records','Example 1 Skills Records'),(3581,0,3580,'Example 2 Qualifications Records','Example 2 Skills Records'),(3584,0,3583,'Example 3 Qualifications Records','Example 3 Skills Records'),(3587,0,3586,'Example 4 Qualifications Records','Example 4 Skills Records'),(3590,0,3589,'Example 5 Qualifications Records','Example 5 Skills Records'),(3593,0,3592,'Example 6 Qualifications Records','Example 6 Skills Records');
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 23:12:41
