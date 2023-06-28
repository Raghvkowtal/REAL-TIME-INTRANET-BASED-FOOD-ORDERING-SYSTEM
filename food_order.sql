-- Host: localhost    Database: food_order
-- ------------------------------------------------------

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;
-- COLLATE=utf8mb4_0900_ai_ci
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'anil','anil@gmail.com','1234');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'anil','anil@gmail.com','779858555','1234'),(2,'jaydev','jay@gmail.com','4321','9807654321'),(3,'jhk','jhk@gmail.com','090909090','4567');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `image` (`image`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES (1,'adfsa','0d03cd7d7d1ddb7fb4faf71729f8d26d',''),(2,'adfsa','b1b33064a48f1a08f0af05c9431272b3',''),(3,'afaf','5bf7266af33cbdc67789de0d9a22343f',''),(4,'asdfasf','d7129aa5dd7445aa037daf9e7a9cb2c5',''),(5,'holagi','911d5232103e3937801d9457105953f7',''),(6,'holagi','4bb595f2908b00a60fd8147ddd7f90b1',''),(7,'holagi','fda1e47579686836d9225dbd454e43bf',''),(8,'holagi','b461ed6d555b3f5cb564c0415de9cbd4',''),(9,'chapati','a60644a95e9b4d6a07744d9cb1ff8e42',''),(10,'chapati','df198b7eeb92644453587f35067827df',''),(11,'chapati','1a036eb49efe09f393afdb88b19e7a2c',''),(12,'chapati','3856935b1fb83583b42cce2fa27b2841',''),(13,'chapati','d623fdbb72f0aad1ef150d5e3bce7d1f',''),(14,'chapati','87044e2c07926fd982b1417dfc57fa11',''),(15,'chapati','18b67a367d8e834ce314bc61b89146e9',''),(16,'chapati','26650b06d22008a86784fbb67ac31671',''),(17,'chapati','4c2ecbad6aa1f43cd9dced32a50d9302',''),(18,'chapati','6adbc284b247235893f58c5b78270c5c',''),(19,'chapati','b60bccbbdb7670001e9fea4f3e126cba',''),(20,'zdza','d2ee42f0536709816810f8613395e2fb',''),(21,'zdza','daea97396e07a07a001140d4bf615ba0',''),(22,'zdza','0a2b0efdccad5365c1894f400a757a3b',''),(23,'zdza','5697136aae79283d074fe0738a1edc43',''),(24,'zdza','679e3421cd0b8369ff870fbba7984c43',''),(25,'zdza','cec3e170dae051e4241e5f9a8abdf888',''),(26,'zdza','96c39cd17489daecd9ecb40272b41722',''),(27,'zdza','1320a0407504543ad0434a4accf2cc0e',''),(28,'zdza','08e961faaaace1a24d036e742a145e3a',''),(29,'asdfasf','c994518ab74b8ea9ec8bc1c526836184',''),(30,'asdfff','e9a8050dc2bb930093735be2ca49664b',''),(31,'asdfff','f1cd950f4d49938fb98e70c39426532a',''),(32,'asdfff','a0b4688db6af33c3eb762019c891a5da',''),(33,'sdd','b1fa6261d54805d86fef428640be212c',''),(34,'sdd','82d5008567c2926b98d6d169005476ee',''),(35,'sdd','64b301f8aa9235acc143fc0785a937c9',''),(36,'sdd','846f8e0bea3144aabc69e8f41f98fa48',''),(37,'chapati','7ec19f160939fae13252e3b6265a9f03',''),(38,'chapati','27b557f99636f4819fea18697ded258f',''),(39,'pizza','3653a9bd7f77e3e5c0555130f1fa2d7b','100'),(40,'dish','25f343b3995cf9af6d6b378aadc9fdf3','200');
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods_hotel`
--

DROP TABLE IF EXISTS `foods_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foods_hotel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `food_id` int NOT NULL,
  `restorent_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `food_id` (`food_id`,`restorent_id`),
  KEY `restorent_id` (`restorent_id`),
  CONSTRAINT `foods_hotel_ibfk_1` FOREIGN KEY (`restorent_id`) REFERENCES `restorents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `foods_hotel_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods_hotel`
--

LOCK TABLES `foods_hotel` WRITE;
/*!40000 ALTER TABLE `foods_hotel` DISABLE KEYS */;
INSERT INTO `foods_hotel` VALUES (1,8,1),(14,27,1),(15,27,2),(16,29,1),(17,29,2),(18,32,1),(19,33,1),(20,34,1),(21,35,1),(22,36,1),(23,37,1),(24,38,1),(25,39,1),(26,39,2),(27,40,1),(28,40,2);
/*!40000 ALTER TABLE `foods_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `food_id` int NOT NULL,
  `quantity` int NOT NULL,
  `restorent_id` int NOT NULL,
  `total_price` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `food_id` (`food_id`),
  KEY `restorent_id` (`restorent_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`restorent_id`) REFERENCES `restorents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,39,3,1,300),(2,1,39,4,1,400),(3,1,39,4,2,400),(4,1,39,5,2,500),(5,1,39,4,1,400),(6,1,39,4,2,400),(7,1,39,5,1,500),(8,1,39,7,2,700),(9,1,39,5,1,500),(10,1,40,5,1,1000),(11,1,39,5,1,500);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restorents`
--

DROP TABLE IF EXISTS `restorents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restorents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restorents`
--

LOCK TABLES `restorents` WRITE;
/*!40000 ALTER TABLE `restorents` DISABLE KEYS */;
INSERT INTO `restorents` VALUES (1,'panjurli','panjurli@gmail.com','1234'),(2,'president','president@gmail.com','1234');
/*!40000 ALTER TABLE `restorents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-01 17:46:17
