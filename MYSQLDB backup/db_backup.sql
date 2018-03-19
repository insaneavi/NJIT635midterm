-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: IT635
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `movie_id` int(10) NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'About Schmidt'),(2,'Ghostbusters'),(3,'The Empire Strikes Back'),(4,'Independence Day'),(5,'The Lion King'),(6,'Spider-Man'),(7,'Indiana Jones and the Temple of Doom'),(8,'Lawless'),(9,'Pacific Rim'),(10,'Star Trek II: The Wrath of Khan'),(11,'Transformers'),(12,'DuckTales The Movie - Treasure of the Lost Lamp'),(13,'Teen.Titans.Trouble.in.Tokyo.2007.1080p.AMZN.WEBRip.DD2.0.x264-RTN.mkv'),(14,'Guardians of the Galaxy Vol. 2');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moviedirector`
--

DROP TABLE IF EXISTS `moviedirector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moviedirector` (
  `movie_id` int(1) NOT NULL,
  `movie_director` varchar(255) DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `moviedirector_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviedirector`
--

LOCK TABLES `moviedirector` WRITE;
/*!40000 ALTER TABLE `moviedirector` DISABLE KEYS */;
INSERT INTO `moviedirector` VALUES (1,'Alexander Payne'),(2,'Ivan Reitman'),(3,'Irvin Kershner'),(4,'Roland Emmerich'),(5,'Rob Minkoff, Roger Allers'),(6,'Sam Raimi'),(7,'Steven Spielberg'),(8,'John Hillcoat'),(9,'Guillermo del Toro'),(10,'Nicholas Meyer'),(11,'Michael Bay'),(12,'Bob Hathcock'),(13,'Michael Chang, Ben Jones'),(14,'James Gunn');
/*!40000 ALTER TABLE `moviedirector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moviefileinfo`
--

DROP TABLE IF EXISTS `moviefileinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moviefileinfo` (
  `movie_id` int(1) NOT NULL,
  `movie_source` varchar(255) DEFAULT NULL,
  `movie_filename` varchar(255) DEFAULT NULL,
  `movie_gb` decimal(9,2) DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `moviefileinfo_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviefileinfo`
--

LOCK TABLES `moviefileinfo` WRITE;
/*!40000 ALTER TABLE `moviefileinfo` DISABLE KEYS */;
INSERT INTO `moviefileinfo` VALUES (1,'BluRay','About.Schmidt.2002.1080p.BluRay.X264-AMIABLE.mkv',8.70),(2,'BluRay','Ghostbusters.1984.1080p.BluRay.x264-VOA.mkv',7.90),(3,'BluRay','Star.Wars.Episode.V.The.Empire.Strikes.Back.PROPER.1980.1080p.BluRay.X264-THUGLiNE.mkv',10.90),(4,'BluRay','Independence.Day.1996.EXTENDED.1080p.BluRay.X264-AMIABLE.mkv',15.30),(5,'BluRay','The.Lion.King.1994.1080p.BluRay.x264-THUGLiNE.mkv',7.70),(6,'BluRay','Spiderman.2002.1080p.Bluray.x264-hV.mkv',10.00),(7,'BluRay','Indiana.Jones.and.the.Temple.of.Doom.1984.1080p.BluRay.X264-AMIABLE.mkv',9.00),(8,'BluRay','Lawless.2012.1080p.BluRay.x264-SPARKS.mkv',8.00),(9,'BluRay','Pacific.Rim.2013.1080p.BluRay.x264-SPARKS.mkv',9.00),(10,'BluRay','Star.Trek.II.The.Wrath.Of.Khan.1982.1080p.BluRay.x264-FSiHD.mkv',8.00),(11,'HDDVD','Transformers.2007.1080p.HDDVD.x264-hV.m kv',10.00),(12,'WEB-DL','DuckTales.The.Movie.Treasure.of.t he.Lost.Lamp.1990.1080p.WEB- DL.AAC2.0.H.264-HDCLUB.mkv',3.00),(13,'WEBRip','Teen.Titans.Trouble.in.Tokyo.2007.1080p.AMZN.WEBRip.DD2.0.x264-RTN.mkv',2.00),(14,'UHD','Guardians.of.the.Galaxy.Vol.2.2017.2160p.UHD.BluRay.x265-TERMiNAL.mkv',18.00);
/*!40000 ALTER TABLE `moviefileinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moviegenre`
--

DROP TABLE IF EXISTS `moviegenre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moviegenre` (
  `movie_id` int(1) NOT NULL,
  `movie_genre` varchar(255) DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `moviegenre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviegenre`
--

LOCK TABLES `moviegenre` WRITE;
/*!40000 ALTER TABLE `moviegenre` DISABLE KEYS */;
INSERT INTO `moviegenre` VALUES (1,'Comedy, Drama'),(2,'Action, Comedy, Fantasy'),(3,'Action, Adventure, Fantasy'),(4,'Action, Adventure, Sci-fi'),(5,'Action, Adventure, Drama'),(6,'Action, Adventure, Sci-fi'),(7,'Action, Adventure'),(8,'Crime, Drama'),(9,'Action, Adventure, Sci-fi'),(10,'Action, Adventure, Sci-fi'),(11,'Action, Adventure, Sci-Fi '),(12,'Animation, Adventure, Comedy'),(13,'Animation, Action, Comedy'),(14,'Action, Adventure, Sci-Fi');
/*!40000 ALTER TABLE `moviegenre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movieimdb`
--

DROP TABLE IF EXISTS `movieimdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movieimdb` (
  `movie_id` int(1) NOT NULL,
  `movie_imdb` varchar(255) DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `movieimdb_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movieimdb`
--

LOCK TABLES `movieimdb` WRITE;
/*!40000 ALTER TABLE `movieimdb` DISABLE KEYS */;
INSERT INTO `movieimdb` VALUES (1,'http://www.imdb.com/title/tt0257360'),(2,'http://www.imdb.com/title/tt0087332'),(3,'http://www.imdb.com/title/tt0080684'),(4,'http://www.imdb.com/title/tt0116629'),(5,'http://www.imdb.com/title/tt0110357'),(6,'http://www.imdb.com/title/tt0145487'),(7,'http://www.imdb.com/title/tt0087469'),(8,'http://www.imdb.com/title/tt1212450'),(9,'http://www.imdb.com/title/tt1663662'),(10,'http://www.imdb.com/title/tt0084726'),(11,'http://www.imdb.com/title/tt0418279'),(12,'http://www.imdb.com/title/tt0099472'),(13,'http://www.imdb.com/title/tt0816671'),(14,'http://www.imdb.com/title/tt3896198');
/*!40000 ALTER TABLE `movieimdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moviereview`
--

DROP TABLE IF EXISTS `moviereview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moviereview` (
  `movie_id` int(1) NOT NULL,
  `movie_review` varchar(255) DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `moviereview_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviereview`
--

LOCK TABLES `moviereview` WRITE;
/*!40000 ALTER TABLE `moviereview` DISABLE KEYS */;
INSERT INTO `moviereview` VALUES (1,'This is a really good Dark Humour Movie!'),(10,'KHANNNNN!!!'),(3,'HAN SHOT FIRST!!'),(3,'Cloud City looks amazing'),(5,'It means no worries'),(5,'i killed mufasa'),(2,'who are you gonna call'),(5,'my fave movie');
/*!40000 ALTER TABLE `moviereview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moviestudio`
--

DROP TABLE IF EXISTS `moviestudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moviestudio` (
  `movie_id` int(1) NOT NULL,
  `movie_studio` varchar(255) DEFAULT NULL,
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `moviestudio_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviestudio`
--

LOCK TABLES `moviestudio` WRITE;
/*!40000 ALTER TABLE `moviestudio` DISABLE KEYS */;
INSERT INTO `moviestudio` VALUES (1,'New Line Cinema'),(2,'Columbia Pictures Corporation'),(3,'Lucasfilm'),(4,'Twentieth Century Fox Film Corporation'),(5,'Walt Disney Pictures'),(6,'Columbia Pictures'),(7,'Lucasfilm'),(8,'The Weinstein Company'),(9,'Legendary Pictures'),(10,'Paramount Pictures'),(11,'Paramount Pictures'),(12,'DisneyToon Studios'),(13,'DC Comics'),(14,'Marvel Studios');
/*!40000 ALTER TABLE `moviestudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movieuser`
--

DROP TABLE IF EXISTS `movieuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movieuser` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movieuser`
--

LOCK TABLES `movieuser` WRITE;
/*!40000 ALTER TABLE `movieuser` DISABLE KEYS */;
INSERT INTO `movieuser` VALUES (1,'enduser1','password1',0),(2,'enduser2','password2',0),(3,'admin1','Welcome1',1);
/*!40000 ALTER TABLE `movieuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movieyear`
--

DROP TABLE IF EXISTS `movieyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movieyear` (
  `Movie_id` int(10) NOT NULL,
  `movie_year` year(4) DEFAULT NULL,
  KEY `Movie_id` (`Movie_id`),
  CONSTRAINT `movieyear_ibfk_1` FOREIGN KEY (`Movie_id`) REFERENCES `movie` (`movie_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movieyear`
--

LOCK TABLES `movieyear` WRITE;
/*!40000 ALTER TABLE `movieyear` DISABLE KEYS */;
INSERT INTO `movieyear` VALUES (1,2002),(2,1984),(3,1980),(4,1996),(5,1994),(6,2002),(7,1984),(8,2012),(9,2013),(10,1982),(11,2007),(12,1990),(13,2006),(14,2017);
/*!40000 ALTER TABLE `movieyear` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-03 19:10:38
