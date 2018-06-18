CREATE DATABASE  IF NOT EXISTS `order`
USE `ordering`;

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

LOCK TABLES `categories` WRITE;
INSERT INTO `categories` VALUES (1,'Snack'),(2,'Main'),(3,'Desert'),(4,'Drinks'),(10,'SideDish'),(11,'FamilyBox');
UNLOCK TABLES;

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL COMMENT 'category id',
  `mname` varchar(255) DEFAULT NULL,
  `price` float(11,2) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  UNIQUE KEY `id_UNIQUE` (`mid`),
  KEY `cid_idx` (`cid`),
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

LOCK TABLES `menus` WRITE;
INSERT INTO `menus` VALUES (6,3,'Chips',11.30),(9,1,'Grilled Fish Wrap',23.00),(10,2,'Chicken Nuggets',15.00),(11,4,'ZingerBOx',20.00),(13,10,'Steak',23.50),(14,10,'Chicken Wings',31.00),(16,1,'Mini Fillet',98.00),(18,4,'Freeze',36.01),(19,1,'DrumStick',1.00),(20,1,'Coffee',1.50);
UNLOCK TABLES;


