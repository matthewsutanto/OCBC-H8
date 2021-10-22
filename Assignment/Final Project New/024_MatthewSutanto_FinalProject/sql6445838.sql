-- MySQL dump 10.13  Distrib 5.7.35, for Win64 (x86_64)
--
-- Host: localhost    Database: sql6445838
-- ------------------------------------------------------
-- Server version	5.7.35-log

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
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20211020135604_Initial Migrations','5.0.11'),('20211020144734_Adding Authentication to our API','5.0.11'),('20211020153159_Added refresh tokens table','5.0.11'),('20211021075654_ChangeID2','5.0.11');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetRoleClaims`
--

DROP TABLE IF EXISTS `AspNetRoleClaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetRoleClaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` varchar(767) NOT NULL,
  `ClaimType` text,
  `ClaimValue` text,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoleClaims` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetRoleClaims`
--

LOCK TABLES `AspNetRoleClaims` WRITE;
/*!40000 ALTER TABLE `AspNetRoleClaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetRoleClaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetRoles`
--

DROP TABLE IF EXISTS `AspNetRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetRoles` (
  `Id` varchar(767) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` text,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetRoles`
--

LOCK TABLES `AspNetRoles` WRITE;
/*!40000 ALTER TABLE `AspNetRoles` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserClaims`
--

DROP TABLE IF EXISTS `AspNetUserClaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUserClaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(767) NOT NULL,
  `ClaimType` text,
  `ClaimValue` text,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserClaims`
--

LOCK TABLES `AspNetUserClaims` WRITE;
/*!40000 ALTER TABLE `AspNetUserClaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserClaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserLogins`
--

DROP TABLE IF EXISTS `AspNetUserLogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUserLogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `ProviderDisplayName` text,
  `UserId` varchar(767) NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserLogins`
--

LOCK TABLES `AspNetUserLogins` WRITE;
/*!40000 ALTER TABLE `AspNetUserLogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserLogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserRoles`
--

DROP TABLE IF EXISTS `AspNetUserRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUserRoles` (
  `UserId` varchar(767) NOT NULL,
  `RoleId` varchar(767) NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserRoles`
--

LOCK TABLES `AspNetUserRoles` WRITE;
/*!40000 ALTER TABLE `AspNetUserRoles` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUsers`
--

DROP TABLE IF EXISTS `AspNetUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUsers` (
  `Id` varchar(767) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` text,
  `SecurityStamp` text,
  `ConcurrencyStamp` text,
  `PhoneNumber` text,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` timestamp NULL DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUsers`
--

LOCK TABLES `AspNetUsers` WRITE;
/*!40000 ALTER TABLE `AspNetUsers` DISABLE KEYS */;
INSERT INTO `AspNetUsers` VALUES ('369668a3-1249-415b-8ec9-fc914f58db82','matthew24@hacktive8.com','MATTHEW24@HACKTIVE8.COM','matthew24@hacktive8.com','MATTHEW24@HACKTIVE8.COM',0,'AQAAAAEAACcQAAAAEJm4hFirzqG7gCrX2NhLQ0CVnxRiEOkwOR9oo5OIXQTTrVzcsKVKBv4hU/B1wr6DEg==','AVCE2OB3J3VGBZR6QKLDYKYZV4DKIBFL','966b8d2f-1e62-4539-80e3-db75984eb7f9',NULL,0,0,NULL,1,0),('997f21b7-9c55-48ff-beb3-2f5c011016c7','matthew15@hacktive8.com','MATTHEW15@HACKTIVE8.COM','matthew15@hacktive8.com','MATTHEW15@HACKTIVE8.COM',0,'AQAAAAEAACcQAAAAEE0kXNac6lqzrJzUkDofORhlJuZwhAcVRG6+0ecLjdteD15Kbp+FNDxQqZ65wjf7vw==','ES54JAJFNSLANMVWCPK4NW7WL67FFRFQ','d685835f-b0b1-43c4-bd12-454da030528a',NULL,0,0,NULL,1,0),('9d41f8f4-8c8a-4a54-b1e5-3924aa77d666','matthew14@hacktive8.com','MATTHEW14@HACKTIVE8.COM','matthew14@hacktive8.com','MATTHEW14@HACKTIVE8.COM',0,'AQAAAAEAACcQAAAAEDPfUReuidl5M1HDVsiQjRvg2eItG7wJVMfZdc6OttV3njAhD/xwvOCo4tvbpQ3iLQ==','WIFJ7KEEKBDKHFTXGOY24JOXJOPMAKCI','93802252-b87a-4fb8-ac21-9a9a61796509',NULL,0,0,NULL,1,0),('ad08df36-f2df-46f9-92e9-bf280c00a92c','matthew@hacktive8.com','MATTHEW@HACKTIVE8.COM','matthew@hacktive8.com','MATTHEW@HACKTIVE8.COM',0,'AQAAAAEAACcQAAAAEPV2lvDzAh1mfTTOeLiSaDKmAl4bsYBr367CduxNdXSfi284KrzEp+eVAbnsW77RxA==','7MIOR65LDAIMBOSPZ45AOUMUH4V5OWB5','c241f0bd-23ff-4592-8dfe-9c3700697833',NULL,0,0,NULL,1,0),('cf083ceb-faca-4ae6-9689-580b51572786','matthew34@hacktive8.com','MATTHEW34@HACKTIVE8.COM','matthew34@hacktive8.com','MATTHEW34@HACKTIVE8.COM',0,'AQAAAAEAACcQAAAAEGVkeIcTBudmAdl8oZgA3pcJ+Bc3rodv8Www3tJew+fVz8g98PsYBQczoCL99cg95g==','IV5ZY54RQZ3YCVLGJSKMZZGO6Y3YKUX5','74a87c63-aaae-4538-b1fa-61f093b74cae',NULL,0,0,NULL,1,0);
/*!40000 ALTER TABLE `AspNetUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserTokens`
--

DROP TABLE IF EXISTS `AspNetUserTokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUserTokens` (
  `UserId` varchar(767) NOT NULL,
  `LoginProvider` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Value` text,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`),
  CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserTokens`
--

LOCK TABLES `AspNetUserTokens` WRITE;
/*!40000 ALTER TABLE `AspNetUserTokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserTokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PaymentDetails`
--

DROP TABLE IF EXISTS `PaymentDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PaymentDetails` (
  `PaymentDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `CardNumber` varchar(100) DEFAULT NULL,
  `CardOwnerName` varchar(100) DEFAULT NULL,
  `ExpirationDate` datetime DEFAULT NULL,
  `SecurityCode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PaymentDetails`
--

LOCK TABLES `PaymentDetails` WRITE;
/*!40000 ALTER TABLE `PaymentDetails` DISABLE KEYS */;
INSERT INTO `PaymentDetails` VALUES (1,'9832948309242','Lionel Messi','2021-10-21 08:07:22','9482'),(2,'431221432','Kylian Mbappe','2021-10-21 08:05:08','5678'),(4,'7843129221','Jonathan Cristie','2021-10-21 08:15:46','8432'),(5,'231231231','Anthony Ginting','2021-10-21 08:21:11','2133');
/*!40000 ALTER TABLE `PaymentDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RefreshTokens`
--

DROP TABLE IF EXISTS `RefreshTokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RefreshTokens` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(767) DEFAULT NULL,
  `Token` text,
  `JwtId` text,
  `IsUsed` tinyint(1) NOT NULL,
  `IsRevoked` tinyint(1) NOT NULL,
  `AddedDate` datetime NOT NULL,
  `ExpiryDate` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_RefreshTokens_UserId` (`UserId`),
  CONSTRAINT `FK_RefreshTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RefreshTokens`
--

LOCK TABLES `RefreshTokens` WRITE;
/*!40000 ALTER TABLE `RefreshTokens` DISABLE KEYS */;
INSERT INTO `RefreshTokens` VALUES (1,'ad08df36-f2df-46f9-92e9-bf280c00a92c','WOQ1LBTWR5BED9W30RD1FH3FY6UPC9DQCMQ0c967b9f-e976-46a8-8e02-d3f2dcfaa707','e7911d00-e19f-4fc2-af2f-4b40abaf0bf7',0,0,'2021-10-20 15:32:47','2022-04-20 15:32:47'),(2,'ad08df36-f2df-46f9-92e9-bf280c00a92c','317MDP77V01VKHEXQ8NLLZOA3I7Z5QZK7B91c35a1dd-639f-49d5-a594-fccab011a457','ee363e00-4fca-4f93-9b38-06ae7fbb7494',0,0,'2021-10-20 15:32:53','2022-04-20 15:32:53'),(3,'cf083ceb-faca-4ae6-9689-580b51572786','ML72U9WVBKBKECSJ4BORWKE4W26XC42EAU1ec37b12b-d625-4217-bd98-7c4d2159176a','c355a40d-9261-4006-944c-71629a5b99ee',0,0,'2021-10-21 02:39:36','2022-04-21 02:39:36'),(4,'cf083ceb-faca-4ae6-9689-580b51572786','G8VAB0MJI8UV38MLYO98C3C12T4KZV636ZMe857b839-b682-4505-8a69-1cc3c16b7f16','440b1a20-9890-4845-bbef-b88880fdd347',0,0,'2021-10-21 02:39:58','2022-04-21 02:39:58'),(5,'ad08df36-f2df-46f9-92e9-bf280c00a92c','U232ZM38JKO8NE7812O2X57IJD5L6ES21GC24312a89-0aee-4afa-9313-7f2da5c55408','8aff8d33-b0ce-40ba-ba12-a24a792c0879',0,0,'2021-10-21 05:46:36','2022-04-21 05:46:36'),(6,'ad08df36-f2df-46f9-92e9-bf280c00a92c','FU1ZBH5S79G7XL5W3QPS50BPOZ05VUNH32S503024db-b137-45e2-94dd-eeefa1648717','70f69fce-5e5f-4ce3-98fd-4c9b023f2fd1',0,0,'2021-10-21 07:00:13','2022-04-21 07:00:13'),(7,'ad08df36-f2df-46f9-92e9-bf280c00a92c','MF0ZN9OMWXGP2A1JBQFRABAO9N6X1QT9K71243d99f2-40aa-459a-90ef-c6bd505aac01','ae0a45d0-c66e-4214-9462-c0a6c62f6d1f',0,0,'2021-10-21 07:45:33','2022-04-21 07:45:33'),(8,'ad08df36-f2df-46f9-92e9-bf280c00a92c','MK5QX8PQWD8HPFDJEJI0TRWTU6JPS4QOM5Idc72efb1-f4de-4716-870e-e465be1bfe71','f0b1043b-4339-4267-94c1-949aac0ddd6c',0,0,'2021-10-21 07:50:30','2022-04-21 07:50:30'),(9,'ad08df36-f2df-46f9-92e9-bf280c00a92c','DMC7C03FDGIM5IJ8P3I9ROX1VP0RWC88O0If31f7000-de56-4b4a-b949-33e4cdc85227','16bbd792-1ca2-49ce-a24b-41299e833146',0,0,'2021-10-21 07:57:31','2022-04-21 07:57:31'),(10,'369668a3-1249-415b-8ec9-fc914f58db82','PA6UPHB8GOH8NZQEZX0IXCIFJVMTOO253VW414064bb-4d98-4099-bced-6fdf75eac76c','c1af6815-bde6-46e8-8217-6bc12f5209c2',0,0,'2021-10-21 08:14:27','2022-04-21 08:14:27'),(11,'369668a3-1249-415b-8ec9-fc914f58db82','2G658P6LBGYHJAVX9UCX79IQBT1GK02V98Z068be8df-77a3-43fc-94a8-b92804f0c62b','27f1b6ae-a9fc-4838-875c-dbcfe2c93ae4',0,0,'2021-10-21 08:14:45','2022-04-21 08:14:45'),(12,'9d41f8f4-8c8a-4a54-b1e5-3924aa77d666','SMGW1OZLUUL6W4V4DFM2UPFGJLIYBWVDH9M816bd5e6-5fa9-4c67-9722-fe156f61ba2f','84abc36d-50a5-48a0-81f9-cde693872ac1',0,0,'2021-10-21 08:20:29','2022-04-21 08:20:29'),(13,'9d41f8f4-8c8a-4a54-b1e5-3924aa77d666','FE2GZMEKQJFA52B93C4GKUCOCSWPUGMNFBT75087331-b260-40a1-bdfb-6f043f7a66d7','bae20baf-df21-434c-b695-f87184f5d5cf',0,0,'2021-10-21 08:20:43','2022-04-21 08:20:43'),(14,'997f21b7-9c55-48ff-beb3-2f5c011016c7','LUDLHXWD6C3GCGO11P78BU099WCY6IC7X4C736ddcd5-4f4a-4a37-9d5c-446f9926c79d','e9365418-7804-4983-be3c-f8aa51675979',0,0,'2021-10-21 09:05:00','2022-04-21 09:05:00'),(15,'997f21b7-9c55-48ff-beb3-2f5c011016c7','IAMMKHCC3PC94QYWCL0L54XHBLTZZVX12QX191e1c0a-02c4-49c9-ad78-17afb7839a6a','155687ba-e4b9-4ba5-9d41-b70ccbf7eecf',0,0,'2021-10-21 09:05:20','2022-04-21 09:05:20');
/*!40000 ALTER TABLE `RefreshTokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-21 17:11:32
