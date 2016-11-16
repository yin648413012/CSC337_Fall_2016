# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.28)
# Database: quotes
# Generation Time: 2016-11-16 01:14:19 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table quotations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quotations`;

CREATE TABLE `quotations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL,
  `quote` text,
  `author` varchar(30) DEFAULT '',
  `rating` int(11) NOT NULL DEFAULT '0',
  `flagged` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `quotations` WRITE;
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;

INSERT INTO `quotations` (`id`, `added`, `quote`, `author`, `rating`, `flagged`)
VALUES
	(4,'2016-11-06 18:22:40','Nothing has more strength than dire necessity.','Euripides',-2,0),
	(5,'2016-11-07 08:49:00','Fortune and love favor the brave.','Ovid',-2,0),
	(6,'2016-11-07 11:16:15','Great artists suffer for the people. ','Marvin Gaye',-2,0),
	(7,'2016-11-06 18:26:50','I\'d rather have roses on my table than diamonds on my neck. ','Emma Goldman',3,0),
	(8,'2016-11-07 11:16:04','a','a',2,0),
	(9,'2016-11-09 08:33:54','abc','abc',2,0);

/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
