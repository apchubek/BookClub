/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.2.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: BookClub
-- ------------------------------------------------------
-- Server version	12.2.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `Authors`
--

DROP TABLE IF EXISTS `Authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Authors` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(255) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Authors`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Authors` WRITE;
/*!40000 ALTER TABLE `Authors` DISABLE KEYS */;
INSERT INTO `Authors` VALUES
(1,'J.K. Rowling'),
(2,'George Orwell'),
(3,'Stephen King'),
(4,'F. Scott Fitzgerald'),
(5,'Jane Austen'),
(6,'Leo Tolstoy'),
(7,'Agatha Christie'),
(8,'Ernest Hemingway'),
(9,'J.R.R. Tolkien'),
(10,'Isaac Asimov'),
(11,'Dan Brown'),
(12,'Paulo Coelho'),
(13,'Haruki Murakami'),
(14,'Margaret Atwood'),
(15,'Neil Gaiman'),
(16,'George R.R. Martin'),
(17,'Frank Herbert'),
(18,'William Gibson'),
(19,'Ursula K. Le Guin'),
(20,'Orson Scott Card'),
(21,'Neal Stephenson'),
(22,'Liu Cixin'),
(23,'Stieg Larsson'),
(24,'Gillian Flynn'),
(25,'Walter Isaacson'),
(26,'Yuval Noah Harari');
/*!40000 ALTER TABLE `Authors` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Book_Authors`
--

DROP TABLE IF EXISTS `Book_Authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Book_Authors` (
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`,`author_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `1` FOREIGN KEY (`book_id`) REFERENCES `Books` (`book_id`) ON DELETE CASCADE,
  CONSTRAINT `2` FOREIGN KEY (`author_id`) REFERENCES `Authors` (`author_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book_Authors`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Book_Authors` WRITE;
/*!40000 ALTER TABLE `Book_Authors` DISABLE KEYS */;
INSERT INTO `Book_Authors` VALUES
(2,1),
(27,1),
(1,2),
(28,2),
(4,3),
(29,3),
(3,4),
(30,4),
(5,5),
(31,5),
(6,6),
(32,6),
(7,7),
(33,7),
(8,8),
(34,8),
(9,9),
(35,9),
(10,10),
(36,10),
(11,11),
(37,11),
(12,12),
(38,12),
(13,13),
(39,13),
(14,14),
(40,14),
(15,15),
(41,15),
(16,16),
(42,16),
(17,17),
(43,17),
(18,18),
(44,18),
(19,19),
(45,19),
(20,20),
(46,20),
(21,21),
(47,21),
(22,22),
(48,22),
(23,23),
(49,23),
(24,24),
(50,24),
(25,25),
(26,26);
/*!40000 ALTER TABLE `Book_Authors` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Books` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `pub_year` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `1` FOREIGN KEY (`genre_id`) REFERENCES `Genres` (`genre_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
INSERT INTO `Books` VALUES
(1,'1984',1949,3),
(2,'Harry Potter and the Philosopher Stone',1997,1),
(3,'The Great Gatsby',1925,3),
(4,'The Shining',1977,4),
(5,'The Hobbit',1937,1),
(6,'The Fellowship of the Ring',1954,1),
(7,'A Game of Thrones',1996,1),
(8,'American Gods',2001,1),
(9,'Dune',1965,2),
(10,'Foundation',1951,2),
(11,'Neuromancer',1984,2),
(12,'The Left Hand of Darkness',1969,2),
(13,'Ender\'s Game',1985,2),
(14,'Snow Crash',1992,2),
(15,'The Three-Body Problem',2008,2),
(16,'Pride and Prejudice',1813,3),
(17,'To Kill a Mockingbird',1960,3),
(18,'The Catcher in the Rye',1951,3),
(19,'Brave New World',1932,3),
(20,'War and Peace',1869,3),
(21,'Crime and Punishment',1866,3),
(22,'Moby Dick',1851,3),
(23,'Anna Karenina',1877,3),
(24,'The Girl with the Dragon Tattoo',2005,4),
(25,'Gone Girl',2012,4),
(26,'The Da Vinci Code',2003,4),
(27,'Murder on the Orient Express',1934,4),
(28,'The Hound of the Baskervilles',1902,4),
(29,'And Then There Were None',1939,4),
(30,'The Silent Patient',2019,4),
(31,'Steve Jobs',2011,5),
(32,'The Diary of a Young Girl',1947,5),
(33,'Long Walk to Freedom',1994,5),
(34,'I Know Why the Caged Bird Sings',1969,5),
(35,'The Autobiography of Malcolm X',1965,5),
(36,'Sapiens: A Brief History of Humankind',2011,6),
(37,'Guns, Germs, and Steel',1997,6),
(38,'The Guns of August',1962,6),
(39,'1776',2005,6),
(40,'A People\'s History of the United States',1980,6),
(41,'The Notebook',1996,7),
(42,'Outlander',1991,7),
(43,'The Fault in Our Stars',2012,7),
(44,'Me Before You',2012,7),
(45,'The Girl on the Train',2015,8),
(46,'Sharp Objects',2006,8),
(47,'Verity',2018,8),
(48,'The Woman in the Window',2018,8),
(49,'The Big Sleep',1939,4),
(50,'The Maltese Falcon',1930,4),
(51,'The Last Book standing',2026,1),
(52,'Future of SQL',2025,2);
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Genres`
--

DROP TABLE IF EXISTS `Genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genres` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(100) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genres`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Genres` WRITE;
/*!40000 ALTER TABLE `Genres` DISABLE KEYS */;
INSERT INTO `Genres` VALUES
(1,'Fantasy'),
(2,'Sci-Fi'),
(3,'Classic'),
(4,'Mystery'),
(5,'Biography'),
(6,'History'),
(7,'Romance'),
(8,'Thriller');
/*!40000 ALTER TABLE `Genres` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Loans`
--

DROP TABLE IF EXISTS `Loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Loans` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `loan_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`loan_id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`),
  CONSTRAINT `2` FOREIGN KEY (`book_id`) REFERENCES `Books` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Loans`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Loans` WRITE;
/*!40000 ALTER TABLE `Loans` DISABLE KEYS */;
INSERT INTO `Loans` VALUES
(1,1,1,'2026-03-15',NULL),
(2,1,2,'2026-03-20',NULL),
(3,1,3,'2026-03-25',NULL),
(4,1,4,'2026-04-01',NULL),
(5,2,5,'2026-03-10','2026-04-05'),
(6,3,6,'2026-03-12',NULL),
(7,4,7,'2025-04-04','2025-06-15'),
(8,5,8,'2025-05-05','2025-07-16'),
(9,6,9,'2025-06-06',NULL),
(10,7,10,'2025-07-07','2025-09-18'),
(11,8,11,'2025-08-08','2025-10-19'),
(12,9,12,'2025-09-09','2025-11-20'),
(13,10,13,'2025-10-10','2025-12-21'),
(14,11,14,'2025-11-11',NULL),
(15,12,15,'2025-01-12','2025-03-23'),
(16,13,16,'2025-02-13','2025-04-24'),
(17,14,17,'2025-03-14','2025-05-25'),
(18,15,18,'2025-04-15','2025-06-26'),
(19,16,19,'2025-05-16',NULL),
(20,17,20,'2025-06-17','2025-08-28'),
(21,18,21,'2025-07-18','2025-09-01'),
(22,19,22,'2025-08-19','2025-10-02'),
(23,20,23,'2025-09-20','2025-11-03'),
(24,21,24,'2025-10-21',NULL),
(25,22,25,'2025-11-22','2026-02-05'),
(26,23,26,'2025-01-23','2025-03-06'),
(27,24,27,'2025-02-24','2025-04-07'),
(28,25,28,'2025-03-25','2025-05-08'),
(29,26,29,'2025-04-26',NULL),
(30,27,30,'2025-05-27','2025-07-10'),
(31,28,31,'2025-06-28','2025-08-11'),
(32,29,32,'2025-07-01','2025-09-12'),
(33,30,33,'2025-08-02','2025-10-13'),
(34,31,34,'2025-09-03',NULL),
(35,32,35,'2025-10-04','2025-12-15'),
(36,33,36,'2025-11-05','2026-02-16'),
(37,34,37,'2025-01-06','2025-03-17'),
(38,35,38,'2025-02-07','2025-04-18'),
(39,36,39,'2025-03-08',NULL),
(40,37,40,'2025-04-09','2025-06-20'),
(41,38,41,'2025-05-10','2025-07-21'),
(42,39,42,'2025-06-11','2025-08-22'),
(43,40,43,'2025-07-12','2025-09-23'),
(44,1,44,'2025-08-13',NULL),
(45,2,45,'2025-09-14','2025-11-25'),
(46,3,46,'2025-10-15','2025-12-26'),
(47,4,47,'2025-11-16','2026-02-27'),
(48,5,48,'2025-01-17','2025-03-28'),
(49,6,49,'2025-02-18',NULL),
(50,7,50,'2025-03-19','2025-05-02'),
(51,8,1,'2026-03-01',NULL);
/*!40000 ALTER TABLE `Loans` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Reviews`
--

DROP TABLE IF EXISTS `Reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 10),
  `comment` text DEFAULT NULL,
  `review_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`review_id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`),
  CONSTRAINT `2` FOREIGN KEY (`book_id`) REFERENCES `Books` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reviews`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Reviews` WRITE;
/*!40000 ALTER TABLE `Reviews` DISABLE KEYS */;
INSERT INTO `Reviews` VALUES
(1,1,1,10,'Incredible!','2026-04-08 05:41:44'),
(2,2,1,9,'Must read.','2026-04-08 05:41:44'),
(3,3,1,10,'Classic.','2026-04-08 05:41:44'),
(4,4,2,9,'Magic!','2026-04-08 05:41:44'),
(5,5,2,8,'Loved it.','2026-04-08 05:41:44'),
(6,6,2,10,'Better than movies.','2026-04-08 05:41:44'),
(7,7,3,9,'Deeply moving.','2026-04-08 05:41:44'),
(8,8,3,10,'Perfect prose.','2026-04-08 05:41:44'),
(9,9,3,8,'Strongly recommend.','2026-04-08 05:41:44'),
(10,10,4,5,'Okay.','2026-04-08 05:41:44'),
(11,11,5,4,'Boring.','2026-04-08 05:41:44'),
(12,12,6,7,'Good.','2026-04-08 05:41:44'),
(13,13,7,2,'Bad.','2026-04-08 05:41:44'),
(14,14,8,6,'Average.','2026-04-08 05:41:44'),
(15,15,9,8,'Cool.','2026-04-08 05:41:44'),
(16,16,10,5,'Meh.','2026-04-08 05:41:44'),
(17,17,11,4,'Not for me.','2026-04-08 05:41:44'),
(18,18,12,10,'Super!','2026-04-08 05:41:44'),
(19,19,13,1,'Hated it.','2026-04-08 05:41:44'),
(20,20,14,9,'Nice.','2026-04-08 05:41:44'),
(21,21,15,3,'Weak.','2026-04-08 05:41:44'),
(22,22,16,6,'Fine.','2026-04-08 05:41:44'),
(23,23,17,7,'Solid.','2026-04-08 05:41:44'),
(24,24,18,8,'Wow.','2026-04-08 05:41:44'),
(25,25,19,5,'Slow.','2026-04-08 05:41:44'),
(26,26,20,9,'Impressive.','2026-04-08 05:41:44'),
(27,27,21,2,'Terrible.','2026-04-08 05:41:44'),
(28,28,22,10,'Masterpiece.','2026-04-08 05:41:44'),
(29,29,23,4,'Confusing.','2026-04-08 05:41:44'),
(30,30,24,8,'Gripping.','2026-04-08 05:41:44'),
(31,31,25,7,'Engaging.','2026-04-08 05:41:44'),
(32,32,26,9,'Brilliant.','2026-04-08 05:41:44'),
(33,33,27,3,'Overrated.','2026-04-08 05:41:44'),
(34,34,28,6,'Decent.','2026-04-08 05:41:44'),
(35,35,29,5,'Old school.','2026-04-08 05:41:44'),
(36,36,30,10,'Shocking ending!','2026-04-08 05:41:44'),
(37,37,31,8,'Inspiring.','2026-04-08 05:41:44'),
(38,38,32,7,'Educational.','2026-04-08 05:41:44'),
(39,39,33,9,'Powerful.','2026-04-08 05:41:44'),
(40,40,34,4,'Hard to read.','2026-04-08 05:41:44'),
(41,1,35,10,'Legendary.','2026-04-08 05:41:44'),
(42,2,36,5,'Dry.','2026-04-08 05:41:44'),
(43,3,37,6,'Okay.','2026-04-08 05:41:44'),
(44,4,38,7,'Classic.','2026-04-08 05:41:44'),
(45,5,39,8,'Interesting.','2026-04-08 05:41:44'),
(46,6,40,3,'Didn\'t finish.','2026-04-08 05:41:44'),
(47,7,41,9,'Tearjerker.','2026-04-08 05:41:44'),
(48,8,42,6,'Historical.','2026-04-08 05:41:44'),
(49,9,43,10,'Emotional.','2026-04-08 05:41:44'),
(50,10,44,4,'Sad.','2026-04-08 05:41:44'),
(51,11,45,8,'Suspenseful.','2026-04-08 05:41:44'),
(52,12,46,7,'Dark.','2026-04-08 05:41:44'),
(53,13,47,5,'Spooky.','2026-04-08 05:41:44'),
(54,14,48,9,'Mysterious.','2026-04-08 05:41:44'),
(55,15,49,10,'Cool detective.','2026-04-08 05:41:44'),
(56,16,50,6,'Old-fashioned.','2026-04-08 05:41:44'),
(57,17,1,9,'Again great.','2026-04-08 05:41:44'),
(58,18,2,8,'Still magic.','2026-04-08 05:41:44'),
(59,19,3,10,'Legend!','2026-04-08 05:41:44'),
(60,20,4,2,'Awful.','2026-04-08 05:41:44'),
(61,21,5,5,'Passable.','2026-04-08 05:41:44'),
(62,22,6,6,'Ok.','2026-04-08 05:41:44'),
(63,23,7,7,'Nice.','2026-04-08 05:41:44'),
(64,24,8,8,'Good.','2026-04-08 05:41:44'),
(65,25,9,9,'Very good.','2026-04-08 05:41:44'),
(66,26,10,10,'Excellent.','2026-04-08 05:41:44');
/*!40000 ALTER TABLE `Reviews` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `registration_date` date NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES
(1,'Ivan Ivanov','ivan@mail.com','2025-01-10'),
(2,'Maria Petrovna','maria@mail.com','2025-02-15'),
(3,'Alex Smith','alex@gmail.com','2026-03-01'),
(4,'User 4','user4@mail.com','2025-04-04'),
(5,'User 5','user5@mail.com','2025-05-05'),
(6,'User 6','user6@mail.com','2025-06-06'),
(7,'User 7','user7@mail.com','2025-07-07'),
(8,'User 8','user8@mail.com','2025-08-08'),
(9,'User 9','user9@mail.com','2025-09-09'),
(10,'User 10','user10@mail.com','2025-10-10'),
(11,'User 11','user11@mail.com','2025-11-11'),
(12,'User 12','user12@mail.com','2025-01-12'),
(13,'User 13','user13@mail.com','2025-02-13'),
(14,'User 14','user14@mail.com','2025-03-14'),
(15,'User 15','user15@mail.com','2025-04-15'),
(16,'User 16','user16@mail.com','2025-05-16'),
(17,'User 17','user17@mail.com','2025-06-17'),
(18,'User 18','user18@mail.com','2025-07-18'),
(19,'User 19','user19@mail.com','2025-08-19'),
(20,'User 20','user20@mail.com','2025-09-20'),
(21,'User 21','user21@mail.com','2025-10-21'),
(22,'User 22','user22@mail.com','2025-11-22'),
(23,'User 23','user23@mail.com','2025-01-23'),
(24,'User 24','user24@mail.com','2025-02-24'),
(25,'User 25','user25@mail.com','2025-03-25'),
(26,'User 26','user26@mail.com','2025-04-26'),
(27,'User 27','user27@mail.com','2025-05-27'),
(28,'User 28','user28@mail.com','2025-06-28'),
(29,'User 29','user29@mail.com','2025-07-01'),
(30,'User 30','user30@mail.com','2025-08-02'),
(31,'User 31','user31@mail.com','2025-09-03'),
(32,'User 32','user32@mail.com','2025-10-04'),
(33,'User 33','user33@mail.com','2025-11-05'),
(34,'User 34','user34@mail.com','2025-01-06'),
(35,'User 35','user35@mail.com','2025-02-07'),
(36,'User 36','user36@mail.com','2025-03-08'),
(37,'User 37','user37@mail.com','2025-04-09'),
(38,'User 38','user38@mail.com','2025-05-10'),
(39,'User 39','user39@mail.com','2025-06-11'),
(40,'User 40','user40@mail.com','2025-07-12');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping routines for database 'BookClub'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-04-08 11:27:35
