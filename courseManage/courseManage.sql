# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.20)
# Database: CourseManage
# Generation Time: 2015-09-01 06:31:47 +0000
# ************************************************************



# Dump of table Admin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Admin`;

CREATE TABLE `Admin` (
  `adminId` char(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) NOT NULL,
  `departmentId` smallint(2) NOT NULL,
  `clearance` smallint(1) NOT NULL,
  `password` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`adminId`),
  KEY `fk_admin_department` (`departmentId`),
  CONSTRAINT `fk_admin_department` FOREIGN KEY (`departmentId`) REFERENCES `Department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table Course
# ------------------------------------------------------------

#DROP TABLE IF EXISTS `Course`;

CREATE TABLE `Course` (
  `courseId` char(4) NOT NULL,
  `section` smallint(1) NOT NULL,
  `departmentId` smallint(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `instructor` varchar(100) NOT NULL,
  `level` varchar(3) DEFAULT '',
  `limit` smallint(3) NOT NULL,
  `registerNo` smallint(3) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `day` char(3) DEFAULT '',
  `creditHours` smallint(1) NOT NULL,
  PRIMARY KEY (`courseId`,`section`,`departmentId`),
  KEY `fk_course_department` (`departmentId`),
  CONSTRAINT `fk_course_department` FOREIGN KEY (`departmentId`) REFERENCES `Department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;

INSERT INTO `Course` (`courseId`, `section`, `departmentId`, `name`, `instructor`, `level`, `limit`, `registerNo`, `time`, `day`, `creditHours`)
VALUES
	('5301',1,3,'Professional and Technical Communication','abc','B.A',60,NULL,NULL,'',3),
	('5303',1,3,'Computer Science 1','abc','B.A',60,NULL,NULL,'',3),
	('5330',1,3,'Computer Science 2','abc','B.A',60,NULL,NULL,'',3),
	('5333',1,3,'Discrete Structures','abc','B.A',60,NULL,NULL,'',3),
	('5336',1,3,'Programming Projects in Java','abc','B.A',60,NULL,NULL,'',3),
	('5343',1,3,'Algorithm Analysis and Data Structures','abc','B.A',60,NULL,NULL,'',3),
	('5348',1,3,'Operating Systems Concepts','abc','B.A',60,NULL,NULL,'',3),
	('5349',1,3,'Automata Theory','abc','B.A',60,NULL,NULL,'',3),
	('5354',1,3,'Software Engineering','abc','B.A',60,NULL,NULL,'',3),
	('5375',1,3,'Principles of UNIX','abc','B.A',60,NULL,NULL,'',3),
	('5390',1,3,'Computer Networks','abc','B.A',60,NULL,NULL,'',3),
	('6301',1,3,'Special Topics in Computer Science - Big Data Management and Analytics','abc','M.S',60,NULL,NULL,'',3),
	('6304',1,3,'Computer Architecture','abc','M.S',60,NULL,NULL,'',3),
	('6316',1,3,'Agile Methods','abc','M.S',60,NULL,NULL,'',3),
	('6320',1,3,'Natural Language Processing','abc','M.S',60,NULL,NULL,'',3),
	('6321',1,3,'Discourse Processing','abc','M.S',60,NULL,NULL,'',3),
	('6322',1,3,'Information Retrieval','abc','M.S',60,NULL,NULL,'',3),
	('6324',1,3,'Information Security','abc','M.S',60,NULL,NULL,'',3),
	('6325',1,3,'Introduction to Bioinformatics','abc','M.S',60,NULL,NULL,'',3),
	('6349',1,3,'Network Security','abc','M.S',60,NULL,NULL,'',3),
	('6352',1,3,'Performance of Computer Systems and Networks','abc','M.S',60,NULL,NULL,'',3),
	('6353',1,3,'Compiler Construction','abc','M.S',60,NULL,NULL,'',3),
	('6354',1,3,'Advanced Software Engineering','abc','M.S',60,NULL,NULL,'',3),
	('6356',1,3,'Software Maintenance, Evolution, and Re-Engineering','abc','M.S',60,NULL,NULL,'',3),
	('6359',1,3,'Object-Oriented Analysis and Design','abc','M.S',60,NULL,NULL,'',3),
	('6360',1,3,'Database Design','abc','M.S',60,NULL,NULL,'',3),
	('6361',1,3,'Advanced Requirements Engineering','abc','M.S',60,NULL,NULL,'',3),
	('6362',1,3,'Advanced Software Architecture and Design','abc','M.S',60,NULL,NULL,'',3),
	('6363',1,3,'Design and Analysis of Computer Algorithms','abc','M.S',60,NULL,NULL,'',3),
	('6364',1,3,'Artificial Intelligence','abc','M.S',60,NULL,NULL,'',3),
	('6366',1,3,'Computer Graphics','abc','M.S',60,NULL,NULL,'',3),
	('6367',1,3,'Software Testing and Verification','abc','M.S',60,NULL,NULL,'',3),
	('6368',1,3,'Telecommunication Network Management','abc','M.S',60,NULL,NULL,'',3),
	('6371',1,3,'Advanced Programming Languages','abc','M.S',60,NULL,NULL,'',3),
	('6373',1,3,'Intelligent Systems','abc','M.S',60,NULL,NULL,'',3),
	('6374',1,3,'Computational Logic','abc','M.S',60,NULL,NULL,'',3),
	('6375',1,3,'Machine Learning','abc','M.S',60,NULL,NULL,'',3),
	('6377',1,3,'Introduction to Cryptography','abc','M.S',60,NULL,NULL,'',3),
	('6378',1,3,'Advanced Operating Systems','abc','M.S',60,NULL,NULL,'',3),
	('6380',1,3,'Distributed Computing','abc','M.S',60,NULL,NULL,'',3),
	('6381',1,3,'Combinatorics and Graph Algorithms','abc','M.S',60,NULL,NULL,'',3),
	('6382',1,3,'Theory of Computation','abc','M.S',60,NULL,NULL,'',3),
	('6383',1,3,'Computational Systems Biology','abc','M.S',60,NULL,NULL,'',3),
	('6384',1,3,'Computer Vision','abc','M.S',60,NULL,NULL,'',3),
	('6385',1,3,'Algorithmic Aspects of Telecommunication Networks','abc','M.S',60,NULL,NULL,'',3),
	('6386',1,3,'Telecommunication Software Design','abc','M.S',60,NULL,NULL,'',3),
	('6387',1,3,'Advanced Software Engineering Project','abc','M.S',60,NULL,NULL,'',3),
	('6388',1,3,'Software Project Planning and Management','abc','M.S',60,NULL,NULL,'',3),
	('6390',1,3,'Advanced Computer Networks','abc','M.S',60,NULL,NULL,'',3),
	('6391',1,3,'Optical Networks','abc','M.S',60,NULL,NULL,'',3),
	('6392',1,3,'Mobile Computing Systems','abc','M.S',60,NULL,NULL,'',3),
	('6395',1,3,'Speech Recognition, Synthesis, and Understanding','abc','M.S',60,NULL,NULL,'',3),
	('6396',1,3,'Real-time Systems','abc','M.S',60,NULL,NULL,'',3),
	('6397',1,3,'Synthesis and Optimization of High-Performance Systems','abc','M.S',60,NULL,NULL,'',3),
	('6398',1,3,'DSP Architectures','abc','M.S',60,NULL,NULL,'',3),
	('6399',1,3,'Parallel Architectures and Systems','abc','M.S',60,NULL,NULL,'',3);

/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table DegreePlan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `DegreePlan`;

CREATE TABLE `DegreePlan` (
  `trackId` smallint(3) NOT NULL,
  `courseId` char(4) NOT NULL,
  `departmentId` smallint(2) NOT NULL,
  PRIMARY KEY (`trackId`),
  CONSTRAINT `fk_degreePlan_track` FOREIGN KEY (`trackId`) REFERENCES `Track` (`trackId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table Department
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Department`;

CREATE TABLE `Department` (
  `departmentId` smallint(2) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(100) NOT NULL,
  `schoolId` smallint(2) NOT NULL,
  `shortName` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`departmentId`),
  KEY `fk_department_school` (`schoolId`),
  CONSTRAINT `fk_department_school` FOREIGN KEY (`schoolId`) REFERENCES `School` (`schoolId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;

INSERT INTO `Department` (`departmentId`, `departmentName`, `schoolId`, `shortName`)
VALUES
	(1,'Biomedical Engineering',1,'BE'),
	(2,'Computer Engineering',1,'CE'),
	(3,'Computer Science',1,'CS'),
	(4,'Electrical Engineering',1,'EE'),
	(5,'Materials Science and Engineering',1,'MSE'),
	(6,'Mechanical Engineering',1,'ME'),
	(7,'Software Engineering',1,'SE'),
	(8,'System Engineering and Management',1,'SEM'),
	(9,'Telecommunications Engineering',1,'TE');

/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Program
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Program`;

CREATE TABLE `Program` (
  `programId` smallint(3) NOT NULL AUTO_INCREMENT,
  `programName` varchar(100) NOT NULL,
  `departmentId` smallint(2) NOT NULL,
  `level` varchar(3) NOT NULL,
  PRIMARY KEY (`programId`),
  KEY `fk_program_department` (`departmentId`),
  CONSTRAINT `fk_program_department` FOREIGN KEY (`departmentId`) REFERENCES `Department` (`departmentId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

LOCK TABLES `Program` WRITE;
/*!40000 ALTER TABLE `Program` DISABLE KEYS */;

INSERT INTO `Program` (`programId`, `programName`, `departmentId`, `level`)
VALUES
	(1,'Bachelor of Science in Biomedical Engineering',1,'B.A'),
	(2,'Master of Science in Biomedical Engineering',1,'M.S'),
	(3,'Doctoral Program in Biomedical Engineering ',1,'Phd'),
	(4,'Bachelor of Science in Computer Engineering',2,'B.A'),
	(5,'Master of Science in Computer Engineering',2,'M.S'),
	(6,'Doctoral Program in Computer Engineering ',2,'Phd'),
	(7,'Bachelor of Science in Computer Science',3,'B.A'),
	(8,'Master of Science in Computer Science',3,'M.S'),
	(9,'Doctor Program in Computer Science',3,'Phd'),
	(10,'Bachelor of Science in Electrical Engineering',4,'B.A'),
	(11,'Master of Science in Electrical Engineering',4,'M.S'),
	(12,'Doctor Program in Electrical Engineering',4,'Phd'),
	(13,'Bachelor of Science in Materials Science and Engineering',5,'B.A'),
	(14,'Master of Science in Materials Science and Engineering',5,'M.S'),
	(15,'Doctor Program in Materials Science and Engineering',5,'Phd'),
	(16,'Bachelor of Science in Mechanical Engineering',6,'B.A'),
	(17,'Master of Science in Mechanical Engineering',6,'M.S'),
	(18,'Doctor Program in Mechanical Engineering',6,'Phd'),
	(19,'Bachelor of Science in Software Engineering',7,'B.A'),
	(20,'Master of Science in Software Engineering',7,'M.S'),
	(21,'Doctor Program in Software Engineering',7,'Phd'),
	(22,'Master of Science in Systems Engineering and Management ',8,'M.S'),
	(23,'Bachelor of Science in Telecommunications Engineering',9,'B.A'),
	(24,'Master of Science in Telecommunications Engineering',9,'M.S'),
	(25,'Doctor Program in Telecommunications Engineering',9,'Phd');

/*!40000 ALTER TABLE `Program` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table School
# ------------------------------------------------------------

DROP TABLE IF EXISTS `School`;

CREATE TABLE `School` (
  `schoolId` smallint(2) NOT NULL AUTO_INCREMENT,
  `schoolName` varchar(100) NOT NULL,
  PRIMARY KEY (`schoolId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

LOCK TABLES `School` WRITE;
/*!40000 ALTER TABLE `School` DISABLE KEYS */;

INSERT INTO `School` (`schoolId`, `schoolName`)
VALUES
	(1,'Erik Jonsson School of Engineering and Computer Sciences'),
	(2,'Naveen Jindal School of Management'),
	(3,'School of Arts, Technology, and Emerging Communication'),
	(4,'School of Arts and Humanities'),
	(5,'School of Behavioral and Brain Sciences'),
	(6,'School of Economic, Political and Policy Sciences'),
	(7,'School of Natural Sciences and Mathematics'),
	(8,'School of Interdisciplinary Studies');

/*!40000 ALTER TABLE `School` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Student`;

CREATE TABLE `Student` (
  `studentId` char(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) NOT NULL,
  `isGraduate` tinyint(1) NOT NULL,
  `enrollDate` date DEFAULT NULL,
  `gpa` decimal(3,2) NOT NULL,
  `trackId` smallint(3) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`studentId`),
  KEY `fk_student_track` (`trackId`),
  CONSTRAINT `fk_student_track` FOREIGN KEY (`trackId`) REFERENCES `Track` (`trackId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;

INSERT INTO `Student` (`studentId`, `fname`, `mname`, `lname`, `isGraduate`, `enrollDate`, `gpa`, `trackId`, `password`)
VALUES
	('abc123000','Nicholas','','Ibarra',0,'2012-08-27',3.20,1,'Abc123'),
	('user001000','John','','Snow',0,'2012-08-27',3.10,2,'Abc123'),
	('user002000','John','','Doe',0,'2012-08-27',3.90,6,'Abc123'),
	('user003000','Daisy','','Wang',0,'2012-08-27',3.60,3,'Aaa123'),
	('user004000','Hui','','Qing',0,'2012-08-27',3.80,4,'Abc123'),
	('wxj140330','Weiwei','','Jia',0,'2012-08-27',3.50,5,'901009Jia');

/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Taken
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Taken`;

CREATE TABLE `Taken` (
  `studentId` char(10) NOT NULL,
  `courseId` char(4) NOT NULL,
  `section` smallint(1) NOT NULL,
  `departmentId` smallint(2) NOT NULL,
  `grade` varchar(2) NOT NULL,
  `year` smallint(4) NOT NULL,
  PRIMARY KEY (`studentId`,`courseId`,`section`,`departmentId`),
  KEY `fk_taken_course_courseId` (`courseId`),
  CONSTRAINT `fk_taken_course_courseId` FOREIGN KEY (`courseId`) REFERENCES `Course` (`courseId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_taken_student` FOREIGN KEY (`studentId`) REFERENCES `Student` (`studentId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table Track
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Track`;

CREATE TABLE `Track` (
  `trackId` smallint(3) NOT NULL AUTO_INCREMENT,
  `trackName` varchar(100) NOT NULL,
  `programId` smallint(3) NOT NULL,
  PRIMARY KEY (`trackId`),
  KEY `fk_track_program` (`programId`),
  CONSTRAINT `fk_track_program` FOREIGN KEY (`programId`) REFERENCES `Program` (`programId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

LOCK TABLES `Track` WRITE;
/*!40000 ALTER TABLE `Track` DISABLE KEYS */;

INSERT INTO `Track` (`trackId`, `trackName`, `programId`)
VALUES
	(1,'CS Masters Traditional Computer Science',8),
	(2,'CS Masters Interactive Computing ',8),
	(3,'CS Masters Data Science ',8),
	(4,'CS Masters Information Assurance ',8),
	(5,'CS Masters Intelligent Systems ',8),
	(6,'CS Masters Networks and Telecommunication ',8),
	(7,'CS Masters Systems ',8),
	(8,'CS Masters Software Engineering ',8);

/*!40000 ALTER TABLE `Track` ENABLE KEYS */;
UNLOCK TABLES;


