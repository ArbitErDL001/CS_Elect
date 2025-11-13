-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: mydata
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `idAuthors` int NOT NULL,
  `namAuthors` varchar(100) DEFAULT NULL,
  `bioAuthors` varchar(255) DEFAULT NULL,
  `bdateAuthors` date DEFAULT NULL,
  PRIMARY KEY (`idAuthors`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Tappei Nagatsuki','Known for Re:Zero and fantasy writing','1987-09-11'),(2,'Reki Kawahara','Creator of SAO and Accel World','1974-08-17'),(3,'Aneko Yusagi','Author of Shield Hero; pen name',NULL),(4,'Yuu Kamiya','Brazilian-Japanese author and illustrator','1984-11-10'),(5,'Kugane Maruyama','Writes dark fantasy like Overlord',NULL),(6,'Fuse','Debuted with Slime; isekai themes',NULL),(7,'Natsume Akatsuki','Comedic fantasy writer of Konosuba',NULL),(8,'Yuyuko Takemiya','Romantic slice-of-life novelist','1978-02-24'),(9,'Isuna Hasekura','Economic fantasy and philosophy','1982-12-27'),(10,'Nagaru Tanigawa','Sci-fi and mystery writer',NULL),(11,'Kazuma Kamachi','Prolific action fantasy author',NULL),(12,'Nisio Isin','Known for wordplay and mystery',NULL),(13,'Asato Asato','War and dystopia themes in 86',NULL),(14,'Rifujin na Magonote','Isekai pioneer with Mushoku Tensei',NULL),(15,'Natsu Hyuuga','Historical mystery writer',NULL),(16,'Syougo Kinugasa','Psychological school drama author',NULL),(17,'Honobu Yonezawa','Mystery novelist of Hyouka','1978-12-29'),(18,'Takaya Kagami','Fantasy and action writer',NULL),(19,'Uno Bokuto','Military strategy fantasy author',NULL),(20,'Carlo Zen','Philosophical military fantasy writer',NULL);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `idBooks` int NOT NULL,
  `idAuthors` int DEFAULT NULL,
  `idPublishers` int DEFAULT NULL,
  `titleBooks` varchar(150) DEFAULT NULL,
  `genreBooks` varchar(50) DEFAULT NULL,
  `Bookscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idBooks`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,1,1,'Re:Zero Starting Life in Another World','Fantasy','Volume 1'),(2,2,2,'Sword Art Online','Sci-Fi','Volume 1'),(3,3,1,'The Rising of the Shield Hero','Fantasy','Volume 1'),(4,4,1,'No Game No Life','Fantasy','Volume 1'),(5,5,3,'Overlord','Dark Fantasy','Volume 1'),(6,6,4,'That Time I Got Reincarnated as a Slime','Isekai','Volume 1'),(7,7,5,'Konosuba','Comedy Fantasy','Volume 1'),(8,8,2,'Toradora','Romance','Volume 1'),(9,9,2,'Spice and Wolf','Fantasy','Volume 1'),(10,10,5,'The Melancholy of Haruhi Suzumiya','Sci-Fi','Volume 1'),(11,11,2,'A Certain Magical Index','Action Fantasy','Volume 1'),(12,12,6,'Monogatari Series','Mystery','Volume 1'),(13,13,2,'86 Eighty Six','Dystopian','Volume 1'),(14,14,1,'Mushoku Tensei','Isekai','Volume 1'),(15,15,7,'The Apothecary Diaries','Historical Mystery','Volume 1'),(16,16,1,'Classroom of the Elite','Psychological','Volume 1'),(17,17,5,'Hyouka','Mystery','Volume 1'),(18,18,6,'Seraph of the End: Guren Ichinose','Fantasy','Volume 1'),(19,19,2,'Alderamin on the Sky','Military Fantasy','Volume 1'),(20,20,3,'The Saga of Tanya the Evil','Military Fantasy','Volume 1');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `idPublishers` int NOT NULL,
  `namPublishers` varchar(100) DEFAULT NULL,
  `addPublishers` varchar(255) DEFAULT NULL,
  `webPublishers` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPublishers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (8,'Shueisha','Tokyo, Japan','www.shueisha.co.jp'),(9,'Fujimi Shobo','Tokyo, Japan','www.fujimishobo.co.jp'),(10,'Dengeki Bunko','Tokyo, Japan','www.dengeki.jp'),(11,'Square Enix','Tokyo, Japan','www.square-enix.com'),(12,'Ichijinsha','Tokyo, Japan','www.ichijinsha.co.jp'),(13,'Takarajimasha','Tokyo, Japan','www.takarajimasha.co.jp'),(14,'Hobunsha','Tokyo, Japan','www.hobunsha.co.jp'),(15,'Akita Shoten','Tokyo, Japan','www.akitashoten.co.jp'),(16,'Bungeishunju','Tokyo, Japan','www.bungeishunju.co.jp'),(17,'Shinchosha','Tokyo, Japan','www.shinchosha.co.jp'),(18,'Hayakawa Publishing','Tokyo, Japan','www.hayakawa-online.co.jp'),(19,'Tōkyō Sōgensha','Tokyo, Japan','www.sogensha.co.jp'),(20,'Houbunsha','Tokyo, Japan','www.houbunsha.co.jp');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-13 14:51:40
