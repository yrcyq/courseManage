-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: localhost    Database: coursemanage
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminId` char(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) NOT NULL,
  `departmentId` smallint(2) NOT NULL,
  `clearance` smallint(1) NOT NULL,
  `password` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`adminId`),
  KEY `fk_admin_department` (`departmentId`),
  CONSTRAINT `fk_admin_department` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('bxp0000001','Barbara','','Parker',3,2,'123456'),('kxg0000001','Kathy','','Gribble',3,3,'123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `admininfo`
--

DROP TABLE IF EXISTS `admininfo`;
/*!50001 DROP VIEW IF EXISTS `admininfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `admininfo` AS SELECT 
 1 AS `adminId`,
 1 AS `fname`,
 1 AS `mname`,
 1 AS `lname`,
 1 AS `clearance`,
 1 AS `departmentName`,
 1 AS `schoolName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `classNumber` int(11) NOT NULL AUTO_INCREMENT,
  `courseNumber` varchar(10) NOT NULL,
  `section` smallint(1) NOT NULL,
  `departmentId` smallint(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `instructor` varchar(100) NOT NULL,
  `level` varchar(3) DEFAULT '',
  `limit` smallint(3) NOT NULL,
  `registerNo` smallint(3) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `day` char(3) DEFAULT '',
  `year` year(4) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `classCredits` smallint(6) NOT NULL DEFAULT '3',
  PRIMARY KEY (`classNumber`),
  UNIQUE KEY `courseNumber` (`courseNumber`,`section`),
  KEY `fk_course_department` (`departmentId`),
  CONSTRAINT `fk_course_department` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10056 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (10000,'CS5301',1,8,'Professional and Technical Communication','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10001,'CS5303',1,8,'Computer Science 1','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10002,'CS5330',1,8,'Computer Science 2','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10003,'CS5333',1,8,'Discrete Structures','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10004,'CS5336',1,8,'Programming Projects in Java','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10005,'CS5343',1,8,'Algorithm Analysis and Data Structures','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10006,'CS5348',1,8,'Operating Systems Concepts','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10007,'CS5349',1,8,'Automata Theory','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10008,'CS5354',1,8,'Software Engineering','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10009,'CS5375',1,8,'Principles of UNIX','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10010,'CS5390',1,8,'Computer Networks','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10011,'CS6301',1,8,'Special Topics in Computer Science - Big Data Management and Analytics','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10012,'CS6304',1,8,'Computer Architecture','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10013,'CS6316',1,8,'Agile Methods','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10014,'CS6320',1,8,'Natural Language Processing','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10015,'CS6321',1,8,'Discourse Processing','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10016,'CS6322',1,8,'Information Retrieval','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10017,'CS6324',1,8,'Information Security','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10018,'CS6325',1,8,'Introduction to Bioinformatics','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10019,'CS6349',1,8,'Network Security','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10020,'CS6352',1,8,'Performance of Computer Systems and Networks','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10021,'CS6353',1,8,'Compiler Construction','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10022,'CS6354',1,8,'Advanced Software Engineering','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10023,'CS6356',1,8,'Software Maintenance, Evolution, and Re-Engineering','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10024,'CS6359',1,8,'Object-Oriented Analysis and Design','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10025,'CS6360',1,8,'Database Design','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10026,'CS6361',1,8,'Advanced Requirements Engineering','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10027,'CS6362',1,8,'Advanced Software Architecture and Design','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10028,'CS6363',1,8,'Design and Analysis of Computer Algorithms','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10029,'CS6364',1,8,'Artificial Intelligence','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10030,'CS6366',1,8,'Computer Graphics','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10031,'CS6367',1,8,'Software Testing and Verification','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10032,'CS6368',1,8,'Telecommunication Network Management','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10033,'CS6371',1,8,'Advanced Programming Languages','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10034,'CS6373',1,8,'Intelligent Systems','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10035,'CS6374',1,8,'Computational Logic','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10036,'CS6375',1,8,'Machine Learning','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10037,'CS6377',1,8,'Introduction to Cryptography','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10038,'CS6378',1,8,'Advanced Operating Systems','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10039,'CS6380',1,8,'Distributed Computing','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10040,'CS6381',1,8,'Combinatorics and Graph Algorithms','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10041,'CS6382',1,8,'Theory of Computation','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10042,'CS6383',1,8,'Computational Systems Biology','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10043,'CS6384',1,8,'Computer Vision','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10044,'CS6385',1,8,'Algorithmic Aspects of Telecommunication Networks','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10045,'CS6386',1,8,'Telecommunication Software Design','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10046,'CS6387',1,8,'Advanced Software Engineering Project','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10047,'CS6388',1,8,'Software Project Planning and Management','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10048,'CS6390',1,8,'Advanced Computer Networks','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10049,'CS6391',1,8,'Optical Networks','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10050,'CS6392',1,8,'Mobile Computing Systems','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10051,'CS6395',1,8,'Speech Recognition, Synthesis, and Understanding','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10052,'CS6396',1,8,'Real-Time Systems','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10053,'CS6397',1,8,'Synthesis and Optimization of High-Performance Systems','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10054,'CS6398',1,8,'DSP Architectures','abc','M.S',60,NULL,NULL,'',2014,'spring',3),(10055,'CS6399',1,8,'Parallel Architectures and Systems','abc','M.S',60,NULL,NULL,'',2014,'spring',3);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degreeplan`
--

DROP TABLE IF EXISTS `degreeplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `degreeplan` (
  `trackId` smallint(3) NOT NULL,
  `courseId` char(4) NOT NULL,
  `departmentId` smallint(2) NOT NULL,
  PRIMARY KEY (`trackId`),
  CONSTRAINT `fk_degreePlan_track` FOREIGN KEY (`trackId`) REFERENCES `track` (`trackId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degreeplan`
--

LOCK TABLES `degreeplan` WRITE;
/*!40000 ALTER TABLE `degreeplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `degreeplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `departmentId` smallint(2) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(100) NOT NULL,
  `schoolId` smallint(2) NOT NULL,
  `shortName` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`departmentId`),
  KEY `fk_department_school` (`schoolId`),
  CONSTRAINT `fk_department_school` FOREIGN KEY (`schoolId`) REFERENCES `school` (`schoolId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Biomedical Engineering',1,'BE'),(2,'Computer Engineering',1,'CE'),(3,'Computer Science',1,'CS'),(4,'Electrical Engineering',1,'EE'),(5,'Materials Science and Engineering',1,'MSE'),(6,'Mechanical Engineering',1,'ME'),(7,'Software Engineering',1,'SE'),(8,'System Engineering and Management',1,'SEM'),(9,'Telecommunications Engineering',1,'TE');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hastaken`
--

DROP TABLE IF EXISTS `hastaken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hastaken` (
  `studentId` char(10) NOT NULL,
  `classNumber` int(11) NOT NULL,
  `earned` smallint(6) DEFAULT NULL,
  `grade` varchar(2) NOT NULL,
  `points` decimal(5,3) DEFAULT NULL,
  PRIMARY KEY (`studentId`,`classNumber`),
  KEY `fk_hastaken_course` (`classNumber`),
  CONSTRAINT `fk_hastaken_course` FOREIGN KEY (`classNumber`) REFERENCES `course` (`classNumber`),
  CONSTRAINT `fk_hastaken_student` FOREIGN KEY (`studentId`) REFERENCES `student` (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hastaken`
--

LOCK TABLES `hastaken` WRITE;
/*!40000 ALTER TABLE `hastaken` DISABLE KEYS */;
/*!40000 ALTER TABLE `hastaken` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger autoFillHasTaken
before insert on hastaken
for each row
begin
if new.grade='C-' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=1.7*new.earned;
elseif new.grade='C' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=2.0*new.earned;
elseif new.grade='C+' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=2.3*new.earned;
elseif new.grade='B-' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=2.7*new.earned;
elseif new.grade='B' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=3.0*new.earned;
elseif new.grade='B+' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=3.3*new.earned;
elseif new.grade='A-' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=3.7*new.earned;
elseif new.grade='A' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=4.0*new.earned;
else  set new.grade='F',new.earned=0,new.points=0;
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger autoDeleteIsTakingAndUpdateStudentGpa
after insert on hastaken
for each row
begin
delete from istaking where istaking.studentId=new.studentId and istaking.classNumber=new.classNumber;
update student set gpaUnits=gpaUnits+new.earned,points=points+new.points,gpa=points/gpaUnits where student.studentId=new.studentId;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger restorAfterUpdateHasTaken
before update on hastaken
for each row
begin
if new.grade='C-' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=1.7*new.earned;
elseif new.grade='C' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=2.0*new.earned;
elseif new.grade='C+' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=2.3*new.earned;
elseif new.grade='B-' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=2.7*new.earned;
elseif new.grade='B' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=3.0*new.earned;
elseif new.grade='B+' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=3.3*new.earned;
elseif new.grade='A-' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=3.7*new.earned;
elseif new.grade='A' then set new.earned=(select classCredits from course where course.classNumber=new.classNumber),new.points=4.0*new.earned;
else  set new.grade='F',new.earned=0,new.points=0;
end if;
update student set gpaUnits=gpaUnits-old.earned+new.earned,points=points-old.points+new.points,gpa=points/gpaUnits where student.studentId=old.studentId;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger restorAfterDeleteHasTaken
after delete on hastaken
for each row
begin
update student set gpaUnits=gpaUnits-old.earned,points=points-old.points,gpa=points/gpaUnits where student.studentId=old.studentId;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `istaking`
--

DROP TABLE IF EXISTS `istaking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `istaking` (
  `studentId` char(10) NOT NULL,
  `classNumber` int(11) NOT NULL,
  PRIMARY KEY (`studentId`,`classNumber`),
  KEY `fk_istaking_course` (`classNumber`),
  CONSTRAINT `fk_istaking_course` FOREIGN KEY (`classNumber`) REFERENCES `course` (`classNumber`),
  CONSTRAINT `fk_istaking_student` FOREIGN KEY (`studentId`) REFERENCES `student` (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `istaking`
--

LOCK TABLES `istaking` WRITE;
/*!40000 ALTER TABLE `istaking` DISABLE KEYS */;
/*!40000 ALTER TABLE `istaking` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger autoFillIsTaking
     before insert on istaking
     for each row
     begin
if new.attempted is null then set new.attempted=(select classCredits from course where course.classNumber=new.classNumber);
end if;
     end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `prerequisite`
--

DROP TABLE IF EXISTS `prerequisite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prerequisite` (
  `courseNumber` varchar(10) NOT NULL,
  `prerequisiteNumber` varchar(10) NOT NULL,
  PRIMARY KEY (`courseNumber`,`prerequisiteNumber`),
  KEY `fk_prerequisite_course_prerequisite` (`prerequisiteNumber`),
  CONSTRAINT `fk_prerequisite_course_course` FOREIGN KEY (`courseNumber`) REFERENCES `course` (`courseNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_prerequisite_course_prerequisite` FOREIGN KEY (`prerequisiteNumber`) REFERENCES `course` (`courseNumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prerequisite`
--

LOCK TABLES `prerequisite` WRITE;
/*!40000 ALTER TABLE `prerequisite` DISABLE KEYS */;
INSERT INTO `prerequisite` VALUES ('CS6359','CS5336'),('CS6320','CS5343'),('CS6360','CS5343'),('CS6364','CS5343'),('CS6366','CS5343'),('CS6316','CS5354'),('CS6359','CS5354'),('CS6390','CS5390');
/*!40000 ALTER TABLE `prerequisite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program` (
  `programId` smallint(3) NOT NULL AUTO_INCREMENT,
  `programName` varchar(100) NOT NULL,
  `departmentId` smallint(2) NOT NULL,
  `level` varchar(3) NOT NULL,
  PRIMARY KEY (`programId`),
  KEY `fk_program_department` (`departmentId`),
  CONSTRAINT `fk_program_department` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES (1,'Bachelor of Science in Biomedical Engineering',1,'B.A'),(2,'Master of Science in Biomedical Engineering',1,'M.S'),(3,'Doctoral Program in Biomedical Engineering ',1,'Phd'),(4,'Bachelor of Science in Computer Engineering',2,'B.A'),(5,'Master of Science in Computer Engineering',2,'M.S'),(6,'Doctoral Program in Computer Engineering ',2,'Phd'),(7,'Bachelor of Science in Computer Science',3,'B.A'),(8,'Master of Science in Computer Science',3,'M.S'),(9,'Doctor Program in Computer Science',3,'Phd'),(10,'Bachelor of Science in Electrical Engineering',4,'B.A'),(11,'Master of Science in Electrical Engineering',4,'M.S'),(12,'Doctor Program in Electrical Engineering',4,'Phd'),(13,'Bachelor of Science in Materials Science and Engineering',5,'B.A'),(14,'Master of Science in Materials Science and Engineering',5,'M.S'),(15,'Doctor Program in Materials Science and Engineering',5,'Phd'),(16,'Bachelor of Science in Mechanical Engineering',6,'B.A'),(17,'Master of Science in Mechanical Engineering',6,'M.S'),(18,'Doctor Program in Mechanical Engineering',6,'Phd'),(19,'Bachelor of Science in Software Engineering',7,'B.A'),(20,'Master of Science in Software Engineering',7,'M.S'),(21,'Doctor Program in Software Engineering',7,'Phd'),(22,'Master of Science in Systems Engineering and Management ',8,'M.S'),(23,'Bachelor of Science in Telecommunications Engineering',9,'B.A'),(24,'Master of Science in Telecommunications Engineering',9,'M.S'),(25,'Doctor Program in Telecommunications Engineering',9,'Phd');
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `schoolId` smallint(2) NOT NULL AUTO_INCREMENT,
  `schoolName` varchar(100) NOT NULL,
  PRIMARY KEY (`schoolId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'Erik Jonsson School of Engineering and Computer Sciences'),(2,'Naveen Jindal School of Management'),(3,'School of Arts, Technology, and Emerging Communication'),(4,'School of Arts and Humanities'),(5,'School of Behavioral and Brain Sciences'),(6,'School of Economic, Political and Policy Sciences'),(7,'School of Natural Sciences and Mathematics'),(8,'School of Interdisciplinary Studies');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `studentId` char(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) NOT NULL,
  `isGraduate` tinyint(1) NOT NULL,
  `enrollDate` date DEFAULT NULL,
  `trackId` smallint(3) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gpa` decimal(4,3) NOT NULL DEFAULT '0.000',
  `gpaUnits` smallint(6) NOT NULL DEFAULT '0',
  `points` decimal(6,3) DEFAULT NULL,
  PRIMARY KEY (`studentId`),
  KEY `fk_student_track` (`trackId`),
  CONSTRAINT `fk_student_track` FOREIGN KEY (`trackId`) REFERENCES `track` (`trackId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('abc123000','Nicholas','','Ibarra',0,'2012-08-27',1,'Abc123',0.000,0,0.000),('user001000','John','','Snow',0,'2012-08-27',2,'Abc123',0.000,0,0.000),('user002000','John','','Doe',0,'2012-08-27',6,'Abc123',0.000,0,0.000),('user003000','Daisy','','Wang',0,'2012-08-27',3,'fuckyou123',0.000,0,0.000),('user004000','Hui','','Qing',0,'2012-08-27',4,'Abc123',0.000,0,0.000),('wxj140330','Weiwei','','Jia',0,'2012-08-27',5,'901009Jia',0.000,0,0.000);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `studentinfo`
--

DROP TABLE IF EXISTS `studentinfo`;
/*!50001 DROP VIEW IF EXISTS `studentinfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `studentinfo` AS SELECT 
 1 AS `studentId`,
 1 AS `fname`,
 1 AS `mname`,
 1 AS `lname`,
 1 AS `isGraduate`,
 1 AS `enrolldate`,
 1 AS `gpa`,
 1 AS `gpaUnits`,
 1 AS `points`,
 1 AS `trackName`,
 1 AS `programName`,
 1 AS `level`,
 1 AS `departmentName`,
 1 AS `schoolName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track` (
  `trackId` smallint(3) NOT NULL AUTO_INCREMENT,
  `trackName` varchar(100) NOT NULL,
  `programId` smallint(3) NOT NULL,
  PRIMARY KEY (`trackId`),
  KEY `fk_track_program` (`programId`),
  CONSTRAINT `fk_track_program` FOREIGN KEY (`programId`) REFERENCES `program` (`programId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO `track` VALUES (1,'CS Masters Traditional Computer Science',8),(2,'CS Masters Interactive Computing ',8),(3,'CS Masters Data Science ',8),(4,'CS Masters Information Assurance ',8),(5,'CS Masters Intelligent Systems ',8),(6,'CS Masters Networks and Telecommunication ',8),(7,'CS Masters Systems ',8),(8,'CS Masters Software Engineering ',8);
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `admininfo`
--

/*!50001 DROP VIEW IF EXISTS `admininfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = gbk */;
/*!50001 SET character_set_results     = gbk */;
/*!50001 SET collation_connection      = gbk_chinese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `admininfo` AS select `admin`.`adminId` AS `adminId`,`admin`.`fname` AS `fname`,`admin`.`mname` AS `mname`,`admin`.`lname` AS `lname`,`admin`.`clearance` AS `clearance`,`department`.`departmentName` AS `departmentName`,`school`.`schoolName` AS `schoolName` from ((`admin` join `department` on((`admin`.`departmentId` = `department`.`departmentId`))) join `school` on((`department`.`schoolId` = `school`.`schoolId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `studentinfo`
--

/*!50001 DROP VIEW IF EXISTS `studentinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = gbk */;
/*!50001 SET character_set_results     = gbk */;
/*!50001 SET collation_connection      = gbk_chinese_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studentinfo` AS select `student`.`studentId` AS `studentId`,`student`.`fname` AS `fname`,`student`.`mname` AS `mname`,`student`.`lname` AS `lname`,`student`.`isGraduate` AS `isGraduate`,`student`.`enrollDate` AS `enrolldate`,`student`.`gpa` AS `gpa`,`student`.`gpaUnits` AS `gpaUnits`,`student`.`points` AS `points`,`track`.`trackName` AS `trackName`,`program`.`programName` AS `programName`,`program`.`level` AS `level`,`department`.`departmentName` AS `departmentName`,`school`.`schoolName` AS `schoolName` from ((((`student` join `track` on((`student`.`trackId` = `track`.`trackId`))) join `program` on((`track`.`programId` = `program`.`programId`))) join `department` on((`program`.`departmentId` = `department`.`departmentId`))) join `school` on((`department`.`schoolId` = `school`.`schoolId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-04 18:06:41
