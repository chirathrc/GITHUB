-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.36 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for mydb
CREATE DATABASE IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;

-- Dumping structure for table mydb.signinhistory
CREATE TABLE IF NOT EXISTS `signinhistory` (
  `idsignInHistory` int NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `User_Email` varchar(100) NOT NULL,
  PRIMARY KEY (`idsignInHistory`),
  KEY `fk_signInHistory_User_idx` (`User_Email`),
  CONSTRAINT `fk_signInHistory_User` FOREIGN KEY (`User_Email`) REFERENCES `user` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mydb.signinhistory: ~1 rows (approximately)
REPLACE INTO `signinhistory` (`idsignInHistory`, `dateTime`, `User_Email`) VALUES
	(1, '2024-06-15 01:09:06', 'chirathrc@gmail.com'),
	(2, '2024-06-15 01:11:44', 'chirathrc@gmail.com'),
	(3, '2024-06-15 01:24:05', 'chirathrc@gmail.com'),
	(4, '2024-06-15 01:25:05', 'chirathrc@gmail.com'),
	(5, '2024-06-15 01:27:18', 'chirathrc@gmail.com'),
	(6, '2024-06-15 01:28:07', 'chirathrc@gmail.com');

-- Dumping structure for table mydb.user
CREATE TABLE IF NOT EXISTS `user` (
  `Email` varchar(100) NOT NULL,
  `F_Name` varchar(45) NOT NULL,
  `L_Name` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mydb.user: ~1 rows (approximately)
REPLACE INTO `user` (`Email`, `F_Name`, `L_Name`, `Password`) VALUES
	('chirathrc@gmail.com', 'Chirath', 'Rothila', 'C12345');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
