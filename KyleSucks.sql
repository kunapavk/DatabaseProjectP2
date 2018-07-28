-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: db.zacksteck.com    Database: accommodations
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `academic_department`
--

DROP TABLE IF EXISTS `academic_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `academic_department` (
  `Department_Num` int(11) NOT NULL,
  `Advisor_Employee_Num` int(11) DEFAULT NULL,
  PRIMARY KEY (`Department_Num`),
  KEY `Academic_Advisor_Num_idx` (`Advisor_Employee_Num`),
  KEY `Advisor_Employee_Num_idx` (`Advisor_Employee_Num`),
  CONSTRAINT `Advisor_Employee_Num` FOREIGN KEY (`Advisor_Employee_Num`) REFERENCES `staff` (`employee_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_department`
--

LOCK TABLES `academic_department` WRITE;
/*!40000 ALTER TABLE `academic_department` DISABLE KEYS */;
INSERT INTO `academic_department` VALUES (4,44444444),(3,66666666),(2,77777777);
/*!40000 ALTER TABLE `academic_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_comment`
--

DROP TABLE IF EXISTS `additional_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `additional_comment` (
  `MNumber` int(11) NOT NULL,
  `Comment` varchar(45) NOT NULL,
  PRIMARY KEY (`Comment`),
  KEY `MNumber_idx` (`MNumber`),
  CONSTRAINT `Student_MNumber` FOREIGN KEY (`MNumber`) REFERENCES `student` (`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_comment`
--

LOCK TABLES `additional_comment` WRITE;
/*!40000 ALTER TABLE `additional_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lease`
--

DROP TABLE IF EXISTS `lease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lease` (
  `Lease_Num` int(11) NOT NULL,
  `MNumber` int(11) DEFAULT NULL,
  `Suite_UID` int(11) DEFAULT NULL,
  `Room_UID` int(11) DEFAULT NULL,
  `Residence_Hall_Name` varchar(45) DEFAULT NULL,
  `Move_In` date DEFAULT NULL,
  `Move_Out` date DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `Academic_Year` int(11) DEFAULT NULL,
  PRIMARY KEY (`Lease_Num`),
  KEY `Student_MNumber_idx` (`MNumber`),
  KEY `Room_UID_idx` (`Room_UID`),
  KEY `Suite_ID_idx` (`Suite_UID`),
  KEY `Residence_Hall_Name_idx` (`Residence_Hall_Name`),
  CONSTRAINT `Lessee_MNumber` FOREIGN KEY (`MNumber`) REFERENCES `student` (`mnumber`),
  CONSTRAINT `Residence_Hall_Name` FOREIGN KEY (`Residence_Hall_Name`) REFERENCES `residence_hall` (`name`),
  CONSTRAINT `Room_ID` FOREIGN KEY (`Room_UID`) REFERENCES `room` (`uid`),
  CONSTRAINT `Suite_ID` FOREIGN KEY (`Suite_UID`) REFERENCES `suite` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lease`
--

LOCK TABLES `lease` WRITE;
/*!40000 ALTER TABLE `lease` DISABLE KEYS */;
INSERT INTO `lease` VALUES (1,12345670,1,1,'Turner','2017-09-01','2018-04-28',2,3),(2,12345673,1,2,'Turner','2017-09-01','2018-04-28',2,3),(3,12345672,2,5,'Scioto','2017-09-01','2018-04-28',2,5),(4,12345674,2,4,'Scioto','2017-09-01','2018-04-28',2,5),(5,12345679,2,6,'Scioto','2017-09-01','2018-04-28',2,4),(6,12345680,2,7,'Scioto','2017-09-01','2018-04-28',2,5),(7,12345681,2,8,'Scioto','2017-09-01','2018-04-28',2,5),(8,12345675,NULL,9,'Dabney','2017-09-01','2018-04-28',2,3),(9,12345676,NULL,10,'Daniels','2017-09-01','2018-04-28',2,3),(10,12345677,NULL,11,'Calhoun','2017-09-01','2018-04-28',2,3);
/*!40000 ALTER TABLE `lease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residence_hall`
--

DROP TABLE IF EXISTS `residence_hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `residence_hall` (
  `Name` varchar(45) NOT NULL,
  `Manager_Employee_Num` int(11) DEFAULT NULL,
  `Telephone` varchar(45) DEFAULT NULL,
  `House_No` int(11) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  PRIMARY KEY (`Name`),
  KEY `Manager_Employee_Num_idx` (`Manager_Employee_Num`),
  CONSTRAINT `Manager_Employee_Num` FOREIGN KEY (`Manager_Employee_Num`) REFERENCES `staff` (`employee_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residence_hall`
--

LOCK TABLES `residence_hall` WRITE;
/*!40000 ALTER TABLE `residence_hall` DISABLE KEYS */;
INSERT INTO `residence_hall` VALUES ('Calhoun',22266666,'4565553215',32,'Ravine','Cincinnati','OH',45220),('Dabney',0,'1112223333',365,'Street','Cincinnati','OH',45220),('Daniels',11122222,'9876543211',56,'Searching','Cincinnati','OH',45220),('Scioto',55555,'1231234444',321,'Baker','Cincinnati','OH',45220),('Stratford',33399999,'6667778888',300,'Baker','Cincinnati','OH',45220),('Turner',33388888,'1234567899',45,'Da','Cincinnati','OH',45220);
/*!40000 ALTER TABLE `residence_hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room` (
  `UID` int(11) NOT NULL,
  `Suite_UID` int(11) DEFAULT NULL,
  `Door_Num` int(11) DEFAULT NULL,
  `Monthly_Rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`UID`),
  KEY `Suite_UID_idx` (`Suite_UID`),
  CONSTRAINT `Suite_UID` FOREIGN KEY (`Suite_UID`) REFERENCES `suite` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1,121,400),(2,1,120,400),(3,1,122,400),(4,2,408,200),(5,2,407,200),(6,2,406,200),(7,2,405,200),(8,2,404,200),(9,NULL,300,800),(10,NULL,204,800),(11,NULL,101,800);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `semesters` (
  `Lease_Num` int(11) NOT NULL,
  `Semester` varchar(2) NOT NULL,
  KEY `Lease_Num_idx` (`Lease_Num`),
  CONSTRAINT `Lease_Num` FOREIGN KEY (`Lease_Num`) REFERENCES `lease` (`lease_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
INSERT INTO `semesters` VALUES (1,'FS'),(1,'SS'),(2,'FS'),(2,'SS'),(3,'FS'),(3,'SS'),(4,'FS'),(4,'SS'),(5,'FS'),(5,'SS'),(6,'FS'),(6,'SS'),(7,'FS'),(7,'SS'),(8,'FS'),(8,'SS'),(9,'FS'),(9,'SS'),(10,'FS'),(10,'SS'),(1,'FS'),(1,'SS'),(2,'FS'),(2,'SS'),(3,'FS'),(3,'SS'),(4,'FS'),(4,'SS'),(5,'FS'),(5,'SS'),(6,'FS'),(6,'SS'),(7,'FS'),(7,'SS'),(8,'FS'),(8,'SS'),(9,'FS'),(9,'SS'),(10,'FS'),(10,'SS');
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_needs`
--

DROP TABLE IF EXISTS `special_needs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `special_needs` (
  `MNumber` int(11) NOT NULL,
  `Need` varchar(45) NOT NULL,
  PRIMARY KEY (`Need`),
  KEY `MNumber_idx` (`MNumber`),
  CONSTRAINT `MNumber` FOREIGN KEY (`MNumber`) REFERENCES `student` (`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_needs`
--

LOCK TABLES `special_needs` WRITE;
/*!40000 ALTER TABLE `special_needs` DISABLE KEYS */;
/*!40000 ALTER TABLE `special_needs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staff` (
  `Employee_Num` int(11) NOT NULL,
  `Fname` varchar(45) DEFAULT NULL,
  `Lname` varchar(45) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `Job_Title` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Residence_Hall_Name` varchar(45) DEFAULT NULL,
  `Office_Num` int(11) DEFAULT NULL,
  PRIMARY KEY (`Employee_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (0,'Person','Last','F','Hall Manager','1955-01-01','Dabney',100),(55555,'Gregory','Bucks','M','Hall Manager','1985-01-01','Scioto',0),(10000000,'Melynda','Gates','F','Hall Manager','1950-02-05',NULL,NULL),(11111111,'John','Cena','M','Hall Manager','1900-01-01',NULL,NULL),(11122222,'Katherine','Osman','F','Hall Manager','1955-01-01','Daniels',100),(20000000,'Harry','Potter','M','Hall Manager','1900-01-01',NULL,NULL),(22266666,'Kristina','Galyen','F','Hall Manager','1960-01-01','Calhoun',200),(30000000,'Winney','Pooh','M','Hall Manager','2000-05-30',NULL,NULL),(33388888,'Sayantan','Dey','M','Hall Manager','1990-01-01','Turner',400),(33399999,'Chuck','Zimmer','M','Hall Manager','1985-01-01','Stratford',300),(44444444,'Spicy','Human','F','Academic Advisor','1960-06-28',NULL,1000),(66666666,'Flynt','Coal','M','Academic Advisor','1970-08-30',NULL,1100),(77777777,'Barry','McCoghiner','M','Academic Advisor','1980-01-01',NULL,1200),(99999999,'Bill','Gates','M','Hall Manager','1960-02-01',NULL,NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `MNumber` int(11) NOT NULL,
  `Department_Num` int(11) DEFAULT NULL,
  `Fname` varchar(45) DEFAULT NULL,
  `Lname` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Nationality` varchar(45) DEFAULT NULL,
  `Current_Status` varchar(45) DEFAULT NULL,
  `Apt_Num` int(11) DEFAULT NULL,
  `House_Num` int(11) DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `Academic_Year` int(11) DEFAULT NULL,
  PRIMARY KEY (`MNumber`),
  KEY `Student_Department_Num_idx` (`Department_Num`),
  CONSTRAINT `Student_Department_Num` FOREIGN KEY (`Department_Num`) REFERENCES `academic_department` (`department_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (12345670,2,'Vivek','Kunapareddy','1997-12-04','M','G','indian','placed',121,45,'Da','Cincinnati','OH',45220,3),(12345671,2,'Kyle','Cullion','1996-10-14','M','U','american','waiting',NULL,32,'Ravine','Cincinnati','OH',45220,3),(12345672,3,'Joe','Hirschfeld','1996-08-07','M','U','american','placed',407,321,'Baker','Cincinnati','OH',45220,5),(12345673,2,'Michael','Keenan','1996-09-26','M','U','american','placed',120,45,'Da','Cincinnati','OH',45220,3),(12345674,2,'Zack','Steck','1996-11-26','M','G','american','placed',408,321,'Baker','Cincinnati','OH',45220,5),(12345675,4,'Michael','King','1997-01-04','M','G','american','placed',300,365,'Street','Cincinnati','OH',45220,3),(12345676,3,'Riley','Jackson','1997-06-17','M','U','american','placed',204,56,'Searching','Cincinnati','OH',45220,3),(12345677,3,'Evan','Shearer','1997-02-24','M','U','indian','placed',101,32,'Ravine','Cincinnati','OH',45220,3),(12345678,4,'Bobby','Tables','1997-02-24','M','U','korean','waiting',NULL,300,'Baker','Cincinnati','OH',45220,1),(12345679,2,'Gob','Bluthe','1996-11-27','M','G','american','placed',406,321,'Baker','Cincinnati','OH',45220,4),(12345680,3,'Tobias','Funke','1997-09-27','M','G','american','placed',405,321,'Baker','Cincinnati','OH',45220,5),(12345681,4,'Lindsay','Bluthe','1995-09-30','F','G','american','placed',404,321,'Baker','Cincinnati','OH',45220,5);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suite`
--

DROP TABLE IF EXISTS `suite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `suite` (
  `UID` int(11) NOT NULL,
  `Door_Num` int(11) DEFAULT NULL,
  `Bedroom_Count` int(11) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suite`
--

LOCK TABLES `suite` WRITE;
/*!40000 ALTER TABLE `suite` DISABLE KEYS */;
INSERT INTO `suite` VALUES (1,100,3),(2,400,5);
/*!40000 ALTER TABLE `suite` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-28 11:29:26
