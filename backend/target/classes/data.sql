-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: emart
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`cart_id`),
  UNIQUE KEY `UK9emlp6m95v5er2bcqkjsw48he` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2026-07-30 11:19:53.841330','2026-07-30 11:19:53.841330',1),(2,'2026-07-30 14:04:23.176750','2026-07-30 14:04:23.176750',2),(3,'2026-07-30 18:01:58.396025','2026-07-30 18:01:58.396025',3),(4,'2026-08-03 09:14:23.735115','2026-08-03 09:14:23.735115',4),(5,'2026-08-03 09:58:32.758148','2026-08-03 09:58:32.758148',6),(6,'2026-08-03 13:18:12.479799','2026-08-03 13:18:12.479799',7),(7,'2026-08-03 13:27:24.656870','2026-08-03 13:27:24.656870',8);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `cart_item_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `quantity` int NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `cart_id` bigint NOT NULL,
  `prod_id` bigint NOT NULL,
  PRIMARY KEY (`cart_item_id`),
  KEY `FK1uobyhgl1wvgt1jpccia8xxs3` (`cart_id`),
  KEY `FK127b23igkrror4fdqktieq7tv` (`prod_id`),
  CONSTRAINT `FK127b23igkrror4fdqktieq7tv` FOREIGN KEY (`prod_id`) REFERENCES `product_master` (`prod_id`),
  CONSTRAINT `FK1uobyhgl1wvgt1jpccia8xxs3` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (17,'2026-07-30 18:03:07.161285',1,'2026-07-30 18:03:07.161285',3,19);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_master`
--

DROP TABLE IF EXISTS `category_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_master` (
  `catmaster_id` int NOT NULL AUTO_INCREMENT,
  `cat_id` varchar(255) DEFAULT NULL,
  `cat_image_path` varchar(255) DEFAULT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `flag` bit(1) DEFAULT NULL,
  `subcat_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catmaster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_master`
--

LOCK TABLES `category_master` WRITE;
/*!40000 ALTER TABLE `category_master` DISABLE KEYS */;
INSERT INTO `category_master` VALUES (13,'ELE','public\\Images\\ElectronicsAndAppliances\\iphone.png','I-phone',_binary '','ELE'),(14,'HMT','public\\Images\\ElectronicsAndAppliances\\homet.png','Home Theatres',_binary '','Home Theatres'),(15,'SLR','public\\Images\\ElectronicsAndAppliances\\SLRCam.png','SLR Camera',_binary '','CAM'),(16,'DSLR','public\\Images\\ElectronicsAndAppliances\\DSLRCam.png','DSLR Camera',_binary '','CAM'),(19,'ELE','public\\Images\\ElectronicsAndAppliances\\samsung.png','TVS',_binary '','ELE'),(20,'GRO','public\\Images\\Grocery\\Pulses\\MoongDal.png','Grocery',_binary '','GRO'),(21,'GRO','public\\Images\\Grocery\\Pulses\\ToorDal.png','Toor Daal',_binary '','GRO'),(22,'GRO','public\\Images\\Grocery\\Rice\\DaawatBasmatiRice.png','Daawat Basmati Rice',_binary '','GRO'),(23,'GRO','public\\Images\\Grocery\\Rice\\IndiaGateBasmatiRice.png','India-Gate Basmati Rice',_binary '','GRO'),(24,'GRO','public\\Images\\Grocery\\Spices\\RedChilliPowder.png','Red Chilli Powder',_binary '','GRO'),(25,'GRO','public\\Images\\Grocery\\Spices\\TurmericPowder.png','Turmeric Powder',_binary '','GRO'),(26,'BEV','public\\Images\\Beverages\\BlackTea.png','Black Tea',_binary '','BEV'),(27,'BEV','public\\Images\\Beverages\\CoconutWater.png','Coconut Water',_binary '','BEV'),(28,'BEV','public\\Images\\Beverages\\Coffee.png','Coffee',_binary '','BEV'),(29,'BEV','public\\Images\\Beverages\\EnergyDrink.png','Energy Drink',_binary '','BEV'),(30,'BEV','public\\Images\\Beverages\\RealGo.png','Real-Go',_binary '','BEV');
/*!40000 ALTER TABLE `category_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_master`
--

DROP TABLE IF EXISTS `config_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_master` (
  `config_id` int NOT NULL AUTO_INCREMENT,
  `config_name` varchar(100) NOT NULL,
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `UKbp4x4aiv2xd2x3oyl1ol890e` (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_master`
--

LOCK TABLES `config_master` WRITE;
/*!40000 ALTER TABLE `config_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emcard_account`
--

DROP TABLE IF EXISTS `emcard_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emcard_account` (
  `account_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `total_points` int NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `version` bigint NOT NULL,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `UKi5qpm9k3bge55f7saeqeunp86` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emcard_account`
--

LOCK TABLES `emcard_account` WRITE;
/*!40000 ALTER TABLE `emcard_account` DISABLE KEYS */;
INSERT INTO `emcard_account` VALUES (1,'2026-07-30 11:19:40.990136',57298,'2026-08-03 20:35:10.145817',1,16),(2,'2026-07-30 14:04:14.611187',113,'2026-08-02 20:16:19.286133',2,4),(3,'2026-08-03 13:17:54.066226',115,'2026-08-03 13:23:02.431466',7,1);
/*!40000 ALTER TABLE `emcard_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emcard_reservation`
--

DROP TABLE IF EXISTS `emcard_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emcard_reservation` (
  `reservation_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `points_reserved` int NOT NULL,
  `prod_id` bigint NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`reservation_id`),
  UNIQUE KEY `uq_emcard_user_product` (`user_id`,`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emcard_reservation`
--

LOCK TABLES `emcard_reservation` WRITE;
/*!40000 ALTER TABLE `emcard_reservation` DISABLE KEYS */;
INSERT INTO `emcard_reservation` VALUES (209,'2026-08-03 22:23:09.369339',300,6,'2026-08-03 22:23:09.369339',1),(211,'2026-08-03 22:23:31.062136',25,12,'2026-08-03 22:23:31.062136',1),(220,'2026-08-03 22:25:54.594587',20,18,'2026-08-03 22:25:54.594587',1);
/*!40000 ALTER TABLE `emcard_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emcard_transaction`
--

DROP TABLE IF EXISTS `emcard_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emcard_transaction` (
  `txn_id` bigint NOT NULL AUTO_INCREMENT,
  `balance_after` int NOT NULL,
  `balance_before` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `points` int NOT NULL,
  `txn_type` enum('CREDIT_INITIAL','EARN','REDEEM') NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`txn_id`),
  KEY `idx_emcard_txn_user` (`user_id`),
  KEY `idx_emcard_txn_order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emcard_transaction`
--

LOCK TABLES `emcard_transaction` WRITE;
/*!40000 ALTER TABLE `emcard_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `emcard_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `order_item_id` bigint NOT NULL AUTO_INCREMENT,
  `brand_snapshot` varchar(100) DEFAULT NULL,
  `emcard_applied` bit(1) NOT NULL,
  `line_total` decimal(12,2) NOT NULL,
  `mrp_price` decimal(10,2) NOT NULL,
  `points_redeemed` int NOT NULL,
  `product_name_snapshot` varchar(150) DEFAULT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `order_id` bigint NOT NULL,
  `prod_id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `FKt4dc2r9nbvbujrljv3e23iibt` (`order_id`),
  KEY `FKmu7y6q88smetug3265h1hup95` (`prod_id`),
  CONSTRAINT `FKmu7y6q88smetug3265h1hup95` FOREIGN KEY (`prod_id`) REFERENCES `product_master` (`prod_id`),
  CONSTRAINT `FKt4dc2r9nbvbujrljv3e23iibt` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (2,'Apple',_binary '\0',74999.00,79999.00,0,'Apple iPhone 15',1,74999.00,15,4),(3,'Nescafe',_binary '\0',320.00,350.00,0,'Premium Instant Coffee',1,320.00,16,18),(4,'Paper Boat',_binary '',0.00,80.00,5,'Fresh Coconut Water',1,0.00,17,17),(5,'Tata Tea',_binary '',0.00,250.00,15,'Premium Black Tea',1,0.00,17,16),(6,'Red Bull',_binary '\0',199.20,120.00,0,'Energy Drink',2,99.60,18,19),(7,'Nescafe',_binary '',0.00,350.00,20,'Premium Instant Coffee',2,0.00,19,18),(8,'Apple',_binary '',0.00,79999.00,750,'Apple iPhone 15',1,0.00,19,4),(9,'Canon',_binary '',140000.00,75000.00,500,'Canon DSLR Camera',2,70000.00,20,9),(10,'Sony',_binary '',31500.00,42000.00,300,'Sony Home Theatre',1,31500.00,21,6),(11,'Real',_binary '\0',113.00,150.00,0,'Real Go Fruit Drink',1,113.00,22,20),(12,'Sony',_binary '',31500.00,42000.00,300,'Sony Home Theatre',1,31500.00,23,6),(13,'Real',_binary '\0',113.00,150.00,0,'Real Go Fruit Drink',1,113.00,24,20),(14,'Canon',_binary '\0',75000.00,75000.00,0,'Canon DSLR Camera',1,75000.00,25,9),(15,'Real',_binary '\0',113.00,150.00,0,'Real Go Fruit Drink',1,113.00,26,20),(16,'Sony',_binary '\0',31740.00,42000.00,0,'Sony Home Theatre',1,31740.00,27,6),(17,'Everest',_binary '\0',60.00,100.00,0,'Red Chilli Powder',1,60.00,28,14),(18,'Everest',_binary '\0',60.00,100.00,0,'Red Chilli Powder',1,60.00,29,14),(19,'Paper Boat',_binary '\0',80.00,80.00,0,'Fresh Coconut Water',1,80.00,30,17),(20,'Sony',_binary '\0',31740.00,42000.00,0,'Sony Home Theatre',1,31740.00,31,6),(21,'Everest',_binary '\0',60.00,100.00,0,'Red Chilli Powder',1,60.00,31,14),(22,'Real',_binary '\0',113.00,150.00,0,'Real Go Fruit Drink',1,113.00,32,20),(23,'Real',_binary '\0',113.00,150.00,0,'Real Go Fruit Drink',1,113.00,33,20),(24,'Daawat',_binary '',400.00,450.00,25,'Daawat Basmati Rice',1,400.00,34,12),(25,'Paper Boat',_binary '\0',80.00,80.00,0,'Fresh Coconut Water',1,80.00,35,17),(26,'India Gate',_binary '\0',500.00,500.00,0,'India Gate Basmati Rice',1,500.00,36,13),(27,'Sony',_binary '',31500.00,42000.00,300,'Sony Home Theatre',1,31500.00,37,6),(28,'Canon',_binary '\0',75000.00,75000.00,0,'Canon DSLR Camera',1,75000.00,38,9),(29,'Sony',_binary '\0',31740.00,42000.00,0,'Sony Home Theatre',1,31740.00,39,6),(30,'Samsung',_binary '\0',70000.00,70000.00,0,'Samsung Smart TV',1,70000.00,40,5);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `customer_email` varchar(150) DEFAULT NULL,
  `customer_name` varchar(150) DEFAULT NULL,
  `delivery_option` enum('COURIER','PICKUP') NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `payable_total` decimal(12,2) NOT NULL,
  `payment_status` enum('CANCELLED','FAILED','PAID','PENDING') NOT NULL,
  `points_earned` int NOT NULL,
  `points_redeemed` int NOT NULL,
  `shipping_address` text,
  `store_location` varchar(255) DEFAULT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `total_savings` decimal(12,2) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `points_balance_after` int NOT NULL,
  `points_balance_before` int NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (15,'2026-07-30 11:55:18.553680','nikhildeokar03@gmail.com','Nikhil Deokar','PICKUP','2026-07-30 11:55:18.551640',74999.00,'PAID',7499,0,NULL,'Mumbai',79999.00,5000.00,'2026-07-30 11:55:18.553680',1,0,0),(16,'2026-07-30 13:02:31.324499','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-07-30 13:02:31.322529',320.00,'PAID',32,0,'Chembur',NULL,350.00,30.00,'2026-07-30 13:02:31.324499',1,0,0),(17,'2026-07-30 14:14:51.776915','nikhil.deokar11112003@gmail.com','Nikhil New Deokar','COURIER','2026-07-30 14:14:51.776915',0.00,'PAID',0,20,'Chembur',NULL,330.00,330.00,'2026-07-30 14:14:51.776915',2,0,0),(18,'2026-07-30 15:30:45.327817','nikhil.deokar11112003@gmail.com','Nikhil New Deokar','COURIER','2026-07-30 15:30:45.326377',199.20,'PAID',19,0,'Chembur',NULL,240.00,40.80,'2026-07-30 15:30:45.327817',2,0,0),(19,'2026-07-30 16:19:54.182600','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-07-30 16:19:54.181599',0.00,'PAID',0,770,'Chembur',NULL,80699.00,80699.00,'2026-07-30 16:19:54.182600',1,0,0),(20,'2026-08-02 18:12:22.628182','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-02 18:12:22.623172',140000.00,'PAID',14000,500,'c',NULL,150000.00,10000.00,'2026-08-02 18:12:22.628182',1,0,0),(21,'2026-08-02 18:52:36.040414','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-02 18:52:36.038417',31500.00,'PAID',3150,300,'Chembur',NULL,31740.00,240.00,'2026-08-02 18:52:36.040414',1,0,0),(22,'2026-08-02 19:05:42.513633','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-02 19:05:42.512016',113.00,'PAID',11,0,'Mumbai',NULL,113.00,0.00,'2026-08-02 19:05:42.513633',1,0,0),(23,'2026-08-02 19:15:39.731987','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-02 19:15:39.730982',31500.00,'PAID',3150,300,'Pune',NULL,31740.00,240.00,'2026-08-02 19:15:39.731987',1,0,0),(24,'2026-08-02 19:34:53.096324','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-02 19:34:53.095316',113.00,'PAID',11,0,'Delhi',NULL,113.00,0.00,'2026-08-02 19:34:53.096324',1,0,0),(25,'2026-08-02 19:39:53.114265','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-02 19:39:53.113269',75000.00,'PAID',7500,0,'Mumbai',NULL,75000.00,0.00,'2026-08-02 19:39:53.114265',1,0,0),(26,'2026-08-02 20:00:11.465963','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-02 20:00:11.465963',113.00,'PAID',11,0,'Mum',NULL,113.00,0.00,'2026-08-02 20:00:11.465963',1,0,0),(27,'2026-08-02 20:04:22.543119','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-02 20:04:22.543119',31740.00,'PAID',3174,0,'mum',NULL,31740.00,0.00,'2026-08-02 20:04:22.543119',1,0,0),(28,'2026-08-02 20:08:42.406269','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-02 20:08:42.402266',60.00,'PAID',6,0,'Mumbai',NULL,60.00,0.00,'2026-08-02 20:08:42.406269',1,0,0),(29,'2026-08-02 20:14:48.483894','nikhil.deokar11112003@gmail.com','Nikhil New Deokar','COURIER','2026-08-02 20:14:48.482492',60.00,'PAID',6,0,'Mumbai',NULL,60.00,0.00,'2026-08-02 20:14:48.483894',2,0,0),(30,'2026-08-02 20:16:14.267668','nikhil.deokar11112003@gmail.com','Nikhil New Deokar','COURIER','2026-08-02 20:16:14.266682',80.00,'PAID',8,0,'Mumbai',NULL,80.00,0.00,'2026-08-02 20:16:14.267668',2,0,0),(31,'2026-08-03 10:09:20.623068','shubhamsahu77200@gmail.com','Shubham Sahu','COURIER','2026-08-03 10:09:20.621070',31800.00,'PAID',0,0,'Chembur',NULL,31800.00,0.00,'2026-08-03 10:09:20.623068',6,0,0),(32,'2026-08-03 10:21:36.551269','shubhamsahu77200@gmail.com','Shubham Sahu','COURIER','2026-08-03 10:21:36.549270',113.00,'PAID',0,0,'Mumbai',NULL,113.00,0.00,'2026-08-03 10:21:36.551269',6,0,0),(33,'2026-08-03 10:27:09.484596','shubhamsahu77200@gmail.com','Shubham Sahu','COURIER','2026-08-03 10:27:09.483599',113.00,'PAID',0,0,'Mumbai',NULL,113.00,0.00,'2026-08-03 10:27:09.484596',6,0,0),(34,'2026-08-03 13:22:56.757459','anand.j.tripathi@gmail.com','Anand  Tripathi','COURIER','2026-08-03 13:22:56.755502',400.00,'PAID',40,25,'Kanadivali',NULL,450.00,50.00,'2026-08-03 13:22:56.757459',7,0,0),(35,'2026-08-03 13:29:08.318327','rishikeshdarunte55@gmail.com','Rishi Darunte','COURIER','2026-08-03 13:29:08.318327',80.00,'PAID',0,0,'Pune',NULL,80.00,0.00,'2026-08-03 13:29:08.318327',8,0,0),(36,'2026-08-03 13:29:50.961280','rishikeshdarunte55@gmail.com','Rishi Darunte','COURIER','2026-08-03 13:29:50.961280',500.00,'PAID',0,0,'Pune',NULL,500.00,0.00,'2026-08-03 13:29:50.961280',8,0,0),(37,'2026-08-03 17:19:42.127573','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-03 17:19:42.124571',31500.00,'PAID',3150,300,'Pune',NULL,31740.00,240.00,'2026-08-03 17:19:42.127573',1,0,0),(38,'2026-08-03 17:31:48.630097','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-03 17:31:48.628140',75000.00,'PAID',7500,0,'Pune',NULL,75000.00,0.00,'2026-08-03 17:31:48.630097',1,0,0),(39,'2026-08-03 20:31:12.560808','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-03 20:31:12.558806',31740.00,'PAID',3174,0,'mds',NULL,31740.00,0.00,'2026-08-03 20:31:12.560808',1,0,0),(40,'2026-08-03 20:35:05.517076','nikhildeokar03@gmail.com','Nikhil Deokar','COURIER','2026-08-03 20:35:05.516017',70000.00,'PAID',7000,0,'gdrse',NULL,70000.00,0.00,'2026-08-03 20:35:05.517076',1,0,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_otp`
--

DROP TABLE IF EXISTS `password_reset_otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_otp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `expiry_time` datetime(6) NOT NULL,
  `otp_hash` varchar(255) NOT NULL,
  `used` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_otp`
--

LOCK TABLES `password_reset_otp` WRITE;
/*!40000 ALTER TABLE `password_reset_otp` DISABLE KEYS */;
INSERT INTO `password_reset_otp` VALUES (5,'2026-08-03 21:43:05.901723','nikhildeokar03@gmail.com','2026-08-03 21:53:05.900724','$2a$10$kvwoyUbxaZGtEIREqHhxHO.p.0su0BTanzJ1Gz2rGHbGVUIHrhzM6',_binary '');
/*!40000 ALTER TABLE `password_reset_otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_dtl_master`
--

DROP TABLE IF EXISTS `prod_dtl_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_dtl_master` (
  `prod_dtl_id` bigint NOT NULL AUTO_INCREMENT,
  `config_value` varchar(255) NOT NULL,
  `config_id` int NOT NULL,
  `prod_id` bigint NOT NULL,
  PRIMARY KEY (`prod_dtl_id`),
  KEY `FKpxi4gepbd6182arj22ccr4vl6` (`config_id`),
  KEY `FK2x3gf31qv61x752ayasl6cgnn` (`prod_id`),
  CONSTRAINT `FK2x3gf31qv61x752ayasl6cgnn` FOREIGN KEY (`prod_id`) REFERENCES `product_master` (`prod_id`),
  CONSTRAINT `FKpxi4gepbd6182arj22ccr4vl6` FOREIGN KEY (`config_id`) REFERENCES `config_master` (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_dtl_master`
--

LOCK TABLES `prod_dtl_master` WRITE;
/*!40000 ALTER TABLE `prod_dtl_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `prod_dtl_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image_master`
--

DROP TABLE IF EXISTS `product_image_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image_master` (
  `image_id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(500) NOT NULL,
  `prod_id` bigint NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FKdcu28sj873m3i6lfxxd6do71r` (`prod_id`),
  CONSTRAINT `FKdcu28sj873m3i6lfxxd6do71r` FOREIGN KEY (`prod_id`) REFERENCES `product_master` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image_master`
--

LOCK TABLES `product_image_master` WRITE;
/*!40000 ALTER TABLE `product_image_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_image_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_master`
--

DROP TABLE IF EXISTS `product_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_master` (
  `prod_id` bigint NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) DEFAULT NULL,
  `cardholder_price` decimal(10,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `prod_long_desc` tinytext,
  `mrp_price` decimal(10,2) NOT NULL,
  `points_to_be_redeemed` int NOT NULL,
  `prod_image_path` varchar(255) DEFAULT NULL,
  `prod_name` varchar(150) NOT NULL,
  `prod_short_desc` varchar(255) NOT NULL,
  `status` bit(1) NOT NULL,
  `stock` int NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `catmaster_id` int NOT NULL,
  `subcat_master_id` int DEFAULT NULL,
  `on_sale` bit(1) NOT NULL,
  `sale_end_date` datetime(6) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `cash_required` decimal(10,2) DEFAULT NULL,
  `display_type` enum('MRP_AND_CASH_PLUS_POINTS','MRP_AND_EMCARD_PRICE','MRP_AND_POINTS','MRP_ONLY') DEFAULT NULL,
  `offer_type` enum('EMCARD_PRICE','FULL_REDEMPTION','NORMAL','PARTIAL_REDEMPTION') DEFAULT NULL,
  `points_required` int DEFAULT NULL,
  PRIMARY KEY (`prod_id`),
  UNIQUE KEY `UKk0nixga8ldki7x0eycxhbcagp` (`prod_name`),
  KEY `FK9hb8461ix838nsw7xc1ipcq52` (`catmaster_id`),
  KEY `FKingd8hggixed48rm2i7sg6661` (`subcat_master_id`),
  CONSTRAINT `FK9hb8461ix838nsw7xc1ipcq52` FOREIGN KEY (`catmaster_id`) REFERENCES `category_master` (`catmaster_id`),
  CONSTRAINT `FKingd8hggixed48rm2i7sg6661` FOREIGN KEY (`subcat_master_id`) REFERENCES `subcategory_master` (`subcat_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_master`
--

LOCK TABLES `product_master` WRITE;
/*!40000 ALTER TABLE `product_master` DISABLE KEYS */;
INSERT INTO `product_master` VALUES (4,'Apple',75000.00,'2026-07-23 18:55:01.103087','Apple iPhone 15 with advanced camera system and powerful performance.',80000.00,750,'/Images/ElectronicsAndAppliances/iphone.png','Apple iPhone 15','Apple iPhone 15 with 128GB storage',_binary '',98,'2026-07-30 17:41:41.149574',13,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Samsung',65000.00,'2026-07-23 18:55:52.922368','Samsung 55 inch 4K Ultra HD Smart LED TV with smart features.',70000.00,400,'public/Images/ElectronicsAndAppliances/samsung.png','Samsung Smart TV','Samsung 55 inch 4K Smart TV',_binary '',99,'2026-08-03 20:35:10.144824',19,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(6,'Sony',31500.00,'2026-07-23 18:56:46.350688','Experience cinema-quality sound at home with this powerful Sony home theatre system.',42000.00,300,'public/Images/ElectronicsAndAppliances/homet.png','Sony Home Theatre','Sony powerful surround sound home theatre system',_binary '',94,'2026-08-03 20:31:12.860808',14,NULL,_binary '','2026-08-04 18:02:23.655285',31740.00,NULL,NULL,NULL,NULL),(8,'Canon',60000.00,'2026-07-23 19:22:33.667139','Capture high-quality photos and videos with this professional Canon SLR camera.',65000.00,450,'public/Images/ElectronicsAndAppliances/SLRCam.png','Canon SLR Camera','Canon professional SLR camera for photography',_binary '',100,'2026-07-30 17:41:41.167503',15,NULL,_binary '','2026-08-01 13:42:15.676481',39649.39,NULL,NULL,NULL,NULL),(9,'Canon',70000.00,'2026-07-23 19:23:23.268148','Professional DSLR camera with advanced features for photography enthusiasts.',75000.00,500,'public/Images/ElectronicsAndAppliances/DSLRCam.png','Canon DSLR Camera','Canon DSLR camera with high resolution image quality',_binary '',96,'2026-08-03 17:31:55.190883',16,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(10,'Tata Sampann',150.00,'2026-07-23 19:23:56.376404','High-quality and nutritious moong dal suitable for everyday cooking.',200.00,10,'public/Images/Grocery/Pulses/MoongDal.png','Moong Dal','Premium quality yellow moong dal',_binary '',100,'2026-07-30 17:41:41.167503',20,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(11,'Tata Sampann',200.00,'2026-07-23 19:24:09.639538','Fresh and premium quality Toor Dal packed hygienically for your family.',200.00,12,'public/Images/Grocery/Pulses/ToorDal.png','Toor Dal','Premium quality Toor Dal for daily cooking',_binary '',100,'2026-07-30 17:41:41.167503',21,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Daawat',400.00,'2026-07-23 19:24:19.312701','Premium quality long-grain basmati rice perfect for biryani and everyday meals.',450.00,25,'public/Images/Grocery/Rice/DaawatBasmatiRice.png','Daawat Basmati Rice','Premium long grain Daawat Basmati Rice',_binary '',99,'2026-08-03 13:23:02.430411',22,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(13,'India Gate',450.00,'2026-07-23 19:24:28.661078','Long and aromatic basmati rice from India Gate, perfect for special meals.',500.00,28,'public/Images/Grocery/Rice/IndiaGateBasmatiRice.png','India Gate Basmati Rice','Premium quality India Gate Basmati Rice',_binary '',99,'2026-08-03 13:29:56.256682',23,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(14,'Everest',100.00,'2026-07-23 19:24:38.004477','High-quality red chilli powder that adds rich color and spicy flavor to your dishes.',100.00,8,'public/Images/Grocery/Spices/RedChilliPowder.png','Red Chilli Powder','Pure and spicy red chilli powder',_binary '',97,'2026-08-03 10:09:25.413785',24,NULL,_binary '','2026-08-04 18:02:23.655285',60.00,NULL,NULL,NULL,NULL),(15,'Everest',90.00,'2026-07-23 19:24:51.063096','Premium quality turmeric powder with natural color and rich flavor.',100.00,7,'public/Images/Grocery/Spices/TurmericPowder.png','Turmeric Powder','Pure premium quality turmeric powder',_binary '',100,'2026-07-30 11:49:37.132915',25,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(16,'Tata Tea',200.00,'2026-07-23 19:25:00.824777','Aromatic and refreshing black tea made from carefully selected tea leaves.',250.00,15,'public/Images/Beverages/BlackTea.png','Premium Black Tea','Refreshing premium black tea',_binary '',99,'2026-07-30 17:41:41.168502',26,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(17,'Paper Boat',70.00,'2026-07-23 19:25:09.827326','Refreshing coconut water packed with natural nutrients and electrolytes.',80.00,5,'public/Images/Beverages/CoconutWater.png','Fresh Coconut Water','Natural refreshing coconut water',_binary '',97,'2026-08-03 13:29:13.017483',27,NULL,_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL),(18,'Nescafe',300.00,'2026-07-23 19:25:24.500402','Premium instant coffee with rich aroma and delicious taste for coffee lovers.',350.00,20,'public/Images/Beverages/Coffee.png','Premium Instant Coffee','Rich and aromatic instant coffee',_binary '',97,'2026-07-30 17:41:41.168502',28,NULL,_binary '','2026-08-01 13:42:15.676481',241.50,NULL,NULL,NULL,NULL),(19,'Red Bull',100.00,'2026-07-23 19:25:34.263135','A refreshing energy drink designed to provide energy and hydration.',100.00,8,'public/Images/Beverages/EnergyDrink.png','Energy Drink','Refreshing energy drink for active lifestyle',_binary '',98,'2026-07-30 17:41:41.168502',29,NULL,_binary '','2026-08-01 13:42:15.676481',99.60,NULL,NULL,NULL,NULL),(20,'Real',150.00,'2026-07-23 19:25:46.212127','Delicious and refreshing fruit drink suitable for enjoying anytime.',150.00,10,'public/Images/Beverages/RealGo.png','Real Go Fruit Drink','Refreshing fruit-based beverage',_binary '',95,'2026-08-03 10:27:15.227183',30,NULL,_binary '','2026-08-04 18:02:23.655285',113.00,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory_master`
--

DROP TABLE IF EXISTS `subcategory_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory_master` (
  `subcat_master_id` int NOT NULL AUTO_INCREMENT,
  `flag` bit(1) DEFAULT NULL,
  `subcat_id` varchar(255) DEFAULT NULL,
  `subcat_image_path` varchar(255) DEFAULT NULL,
  `subcat_name` varchar(255) DEFAULT NULL,
  `catmaster_id` int DEFAULT NULL,
  PRIMARY KEY (`subcat_master_id`),
  KEY `FKrytje0asqls3plqv61a6vuk0v` (`catmaster_id`),
  CONSTRAINT `FKrytje0asqls3plqv61a6vuk0v` FOREIGN KEY (`catmaster_id`) REFERENCES `category_master` (`catmaster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory_master`
--

LOCK TABLES `subcategory_master` WRITE;
/*!40000 ALTER TABLE `subcategory_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `subcategory_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `address` text,
  `auth_provider` enum('GOOGLE','LOCAL') NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `emcard_points` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `gender` enum('FEMALE','MALE','OTHER') DEFAULT NULL,
  `is_emcard_member` bit(1) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `role` enum('ADMIN','CUSTOMER') NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UKdu5v5sr43g5bfnji4vb8hg5s3` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'202, Ankur Residency, N. G Acharya Marg,Chembur-Govandi road, Behind Amarnath Patil Highschool, Khardeo Nagar, Chembur (E), Mumbai- 400071.','LOCAL','2026-07-30 11:19:40.730140','2003-11-11','nikhildeokar03@gmail.com',100,'Nikhil','MALE',_binary '','Deokar','$2a$10$zVn1brZZdPGkdASBvko.auH4qF7HPT20IUtdZq5vk7Emqhfcj6Oy2','9967425304','CUSTOMER','2026-08-03 21:43:32.920932'),(2,'Chembur','LOCAL','2026-07-30 14:04:14.594193','2003-11-11','nikhil.deokar11112003@gmail.com',100,'Nikhil New','MALE',_binary '','Deokar','$2a$10$/gIHC4hum3jMAz01V8zPYuPx6te4/GiUPAgR2DlM3mC0KFFkSo1Du','9967425273','CUSTOMER','2026-07-30 14:04:14.594193'),(3,NULL,'GOOGLE','2026-07-30 18:01:57.495506',NULL,'nikhil.deokar@somaiya.edu',0,'Nikhil',NULL,_binary '\0','Deokar','OAUTH2_GOOGLE_ACCOUNT_NO_PASSWORD',NULL,'CUSTOMER','2026-07-30 18:01:57.495506'),(4,'Mumbai','LOCAL','2026-08-03 09:14:00.814274','2003-11-11','nikh@gmail.com',0,'Nikhil','MALE',_binary '\0','Deokar','$2a$10$tPdOva.YKszqhHKn.qexb.vhFu3p9AdDoeJUkMGapnllkGkjmFoeq','9876543210','CUSTOMER','2026-08-03 09:14:00.814274'),(5,'ccs','LOCAL','2026-08-03 09:17:12.712698','4322-03-31','n@gmail.com',0,'Nikhil','MALE',_binary '\0','Deokar','$2a$10$6bH7yMr.24PWQ3HJOOIv2uehMls30WModrL8aSMiYb3UKbTXAk0GG','2345678976','CUSTOMER','2026-08-03 09:17:12.712698'),(6,'Amravati','LOCAL','2026-08-03 09:58:10.299602','2000-12-17','shubhamsahu77200@gmail.com',0,'Shubham','MALE',_binary '\0','Sahu','$2a$10$X.PnfEaM7kwkSkARs00mDeeVaJNWK.PIympayjMRhU/dOONcR8quy','7720025769','CUSTOMER','2026-08-03 09:58:10.299602'),(7,'Kanadivali','LOCAL','2026-08-03 13:17:53.892179','2002-01-06','anand.j.tripathi@gmail.com',100,'Anand ','MALE',_binary '','Tripathi','$2a$10$/66hEMwBIWNfOdgXJxXbqOxHYTxmcqRdDAv7UQbldbNkNWv7117/C','8451098711','CUSTOMER','2026-08-03 13:17:53.892179'),(8,'Pune','LOCAL','2026-08-03 13:27:05.513474','2000-01-11','rishikeshdarunte55@gmail.com',0,'Rishi','MALE',_binary '\0','Darunte','$2a$10$7anX/WT6nlh7bcGjfY2L9enjEXJB.biD/UsO/1L40NctNTi6MadWW','9988978986','CUSTOMER','2026-08-03 13:27:05.514529');
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

-- Dump completed on 2026-08-03 22:31:45
