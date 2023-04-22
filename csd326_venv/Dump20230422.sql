-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: main
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `Club`
--

DROP TABLE IF EXISTS `Club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Club` (
  `Club_ID` int NOT NULL AUTO_INCREMENT,
  `Club_Name` varchar(50) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `Display_img` varchar(5000) DEFAULT 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112',
  PRIMARY KEY (`Club_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Club`
--

LOCK TABLES `Club` WRITE;
/*!40000 ALTER TABLE `Club` DISABLE KEYS */;
INSERT INTO `Club` VALUES (10,'E-Cell','Welcome to Entrepreneurship club of SNU','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(11,'Finvest','Money Money Money','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(12,'DebSoc','I think you\'re WRONG!','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(13,'Inspiria','Hi this is business club','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(14,'GDSC','let\'s do coding','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(15,'Metanoia','Mental health club','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(21,'dummy club','this is my dummy description','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(22,'my dummy club','my dummy description',''),(23,'my dummy club 2','test my test area','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(24,'my dummy image club 1','this is trial -A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs. This is because paragraphs show a reader where the subdivisions of an essay begin and end, and thus help the reader see the organization of the essay and grasp its main points.\r\n\r\n','https://cdn-icons-png.flaticon.com/512/5278/5278681.png'),(25,'my dummy image club 1','A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs. This is because paragraphs show a reader where the subdivisions of an essay begin and end, and thus help the reader see the organization of the essay and grasp its main points.\r\n\r\nParagraphs can contain many different kinds of information. A paragraph could contain a series of brief examples or a single long illustration of a general point. It might describe a place, character, or process; narrate a series of events; compare or contrast two or more things; classify items into categories; or describe causes and effects. Regardless of the kind of information they contain, all paragraphs share certain characteristics. One of the most important of these is a topic sentence.','https://cdn-icons-png.flaticon.com/512/5278/5278681.png'),(26,'my dummy image club 2','hi is iwoedfnaw;jodsbnav;sd','https://cdn-icons-png.flaticon.com/512/5278/5278681.png');
/*!40000 ALTER TABLE `Club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login cred`
--

DROP TABLE IF EXISTS `Login cred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Login cred` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `U_type` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login cred`
--

LOCK TABLES `Login cred` WRITE;
/*!40000 ALTER TABLE `Login cred` DISABLE KEYS */;
/*!40000 ALTER TABLE `Login cred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login_cred`
--

DROP TABLE IF EXISTS `Login_cred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Login_cred` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login_cred`
--

LOCK TABLES `Login_cred` WRITE;
/*!40000 ALTER TABLE `Login_cred` DISABLE KEYS */;
INSERT INTO `Login_cred` VALUES (1,'admin','admin'),(2,'shrey','pass'),(3,'akshita','pass');
/*!40000 ALTER TABLE `Login_cred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Member` (
  `M_No` int NOT NULL AUTO_INCREMENT,
  `M_Name` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `M_Type` int NOT NULL DEFAULT '0',
  `Club_ID` int DEFAULT NULL,
  PRIMARY KEY (`M_No`),
  KEY `Club_ID_idx` (`Club_ID`) /*!80000 INVISIBLE */,
  CONSTRAINT `Club_ID` FOREIGN KEY (`Club_ID`) REFERENCES `Club` (`Club_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Members`
--

DROP TABLE IF EXISTS `Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Members` (
  `PK` int NOT NULL AUTO_INCREMENT,
  `M_ID` int NOT NULL,
  `Club_ID` int NOT NULL,
  `U_type` int NOT NULL DEFAULT '1' COMMENT '1 - member, 2- core, 0- admin',
  `Description` varchar(45) NOT NULL DEFAULT 'Member',
  PRIMARY KEY (`PK`),
  KEY `Clubid_idx` (`Club_ID`),
  KEY `Mid_idx` (`M_ID`),
  CONSTRAINT `Clubid` FOREIGN KEY (`Club_ID`) REFERENCES `Club` (`Club_ID`),
  CONSTRAINT `Mid` FOREIGN KEY (`M_ID`) REFERENCES `Login_cred` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Members`
--

LOCK TABLES `Members` WRITE;
/*!40000 ALTER TABLE `Members` DISABLE KEYS */;
INSERT INTO `Members` VALUES (1,2,11,1,'Member'),(2,2,12,1,'Member'),(3,3,11,2,'Marketing Head');
/*!40000 ALTER TABLE `Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Public_Dash`
--

DROP TABLE IF EXISTS `Public_Dash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Public_Dash` (
  `Pub_ID` int NOT NULL AUTO_INCREMENT,
  `C_ID` int NOT NULL,
  `Data` varchar(200) NOT NULL,
  `Data_Type` int NOT NULL,
  `Timestamp` date NOT NULL,
  `Display_img` varchar(5000) NOT NULL DEFAULT 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112',
  PRIMARY KEY (`Pub_ID`),
  KEY `Club_ID_idx` (`C_ID`),
  CONSTRAINT `C_ID` FOREIGN KEY (`C_ID`) REFERENCES `Club` (`Club_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Public_Dash`
--

LOCK TABLES `Public_Dash` WRITE;
/*!40000 ALTER TABLE `Public_Dash` DISABLE KEYS */;
INSERT INTO `Public_Dash` VALUES (1,11,'this is description through form',1,'2023-04-16','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(2,11,'this is description through form',1,'2023-04-16','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(3,11,'this is description through form',1,'2023-04-16','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(4,11,'this is description through form pt2',2,'2023-04-30','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(5,11,'this is description through form pt3',2,'2023-04-01','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(6,11,'this is description through form pt3',1,'2023-04-01','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(7,11,'this is description through form pt4',1,'2023-04-12','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(8,11,'this is description through form pt4',1,'2023-04-12','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(9,11,'this is description through form pt5',1,'2023-04-29','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(10,11,'this is description through form pt5',1,'2023-04-15','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(11,11,'this is description through form pt5',1,'2023-04-15','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(12,11,'this is old data ',1,'2023-04-01','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(13,11,'this is new data',1,'2023-04-27','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(14,11,'testing my template',1,'2023-04-29','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(15,11,'testing my template',1,'2023-04-29','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(16,11,'345567',2,'2023-04-30','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(17,11,'testing pvt form fancy template pt 1',4,'2023-04-29',''),(18,11,'testing pvt form fancy template pt 1',4,'2023-04-29',''),(19,11,'dummy content final',4,'2023-04-21','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(20,11,'dummy content final',4,'2023-04-21','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(21,11,'this is an old event',2,'2023-04-11','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(22,11,'this is ia new event',2,'2023-04-29','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUpqaQg20tYq5xOKBBm74uXkGH00rT6UMOAU6o1rc8ew&usqp=CAU&ec=48600112'),(23,11,'image link trial',1,'2023-04-28','https://cdn-icons-png.flaticon.com/512/5278/5278681.png');
/*!40000 ALTER TABLE `Public_Dash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pvt_Dash`
--

DROP TABLE IF EXISTS `Pvt_Dash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pvt_Dash` (
  `Pvt_ID` int NOT NULL AUTO_INCREMENT,
  `Cid` int NOT NULL,
  `Data` varchar(200) NOT NULL,
  `Data_Type` int NOT NULL,
  `Timestamp` date NOT NULL,
  PRIMARY KEY (`Pvt_ID`),
  KEY `Club_ID_idx` (`Cid`),
  CONSTRAINT `Cid` FOREIGN KEY (`Cid`) REFERENCES `Club` (`Club_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pvt_Dash`
--

LOCK TABLES `Pvt_Dash` WRITE;
/*!40000 ALTER TABLE `Pvt_Dash` DISABLE KEYS */;
INSERT INTO `Pvt_Dash` VALUES (1,11,'my dummy content',3,'2023-04-16'),(2,11,'my dummy content',3,'2023-04-16'),(3,11,'my dummy content',3,'2023-04-22'),(4,11,'my dummy content',3,'2023-04-22'),(5,11,'fancy content pvt form 2',3,'2023-04-29'),(6,11,'first meeting ever',4,'2023-04-21'),(7,11,'first meeting ever',4,'2023-04-21'),(8,11,'first meeting ever',4,'2023-04-21'),(9,11,'first meeting ever',4,'2023-04-21'),(10,11,'first meeting ever',4,'2023-04-21'),(11,11,'first meeting ever',4,'2023-04-21'),(12,11,'first meeting ever',4,'2023-04-21'),(13,11,'first meeting ever',4,'2023-04-21'),(14,11,'fancy content pvt form 2',3,'2023-04-29'),(15,11,'fancy content pvt form 2',3,'2023-04-29'),(16,11,'fancy content pvt form 2',3,'2023-04-29'),(17,11,'fancy content pvt form 2',3,'2023-04-29'),(18,11,'fancy content pvt form 2',3,'2023-04-29'),(19,11,'fancy content pvt form 2',3,'2023-04-29'),(20,11,'fancy content pvt form 2',3,'2023-04-29'),(21,11,'fancy content pvt form 2',3,'2023-04-29'),(22,11,'fancy content pvt form 2',3,'2023-04-29'),(23,11,'fancy content pvt form 2',3,'2023-04-29'),(24,11,'dddddddddddddddddddddddddddddddddddd',4,'2023-04-29'),(25,11,'dddddddddddddddddddddddddddddddddddd',4,'2023-04-29'),(26,11,'dddddddddddddddddddddddddddddddddddd',4,'2023-04-29');
/*!40000 ALTER TABLE `Pvt_Dash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Type_Field`
--

DROP TABLE IF EXISTS `Type_Field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Type_Field` (
  `Type_ID` varchar(50) NOT NULL,
  `Type_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Type_Field`
--

LOCK TABLES `Type_Field` WRITE;
/*!40000 ALTER TABLE `Type_Field` DISABLE KEYS */;
/*!40000 ALTER TABLE `Type_Field` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-22 14:37:03
