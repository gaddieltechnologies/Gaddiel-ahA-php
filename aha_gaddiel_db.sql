-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsqlmoo13
-- Generation Time: Mar 29, 2016 at 07:21 AM
-- Server version: 5.5.44
-- PHP Version: 4.4.9
-- 
-- Database: `aha_gaddiel_db`
-- 
CREATE DATABASE `aha_gaddiel_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aha_gaddiel_db`;

-- --------------------------------------------------------

-- 
-- Table structure for table `ASSIGNMENTS`
-- 

CREATE TABLE `ASSIGNMENTS` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ORG_ID` int(10) NOT NULL,
  `ASSIGN_CODE` varchar(30) NOT NULL,
  `ASSIGN_DESC` varchar(60) DEFAULT NULL,
  `STATUS` int(10) NOT NULL,
  `USER_FIELD1` varchar(60) DEFAULT NULL,
  `USER_FIELD2` varchar(60) DEFAULT NULL,
  `USER_FIELD3` varchar(60) DEFAULT NULL,
  `USER_FIELD4` varchar(60) DEFAULT NULL,
  `USER_FIELD5` varchar(60) DEFAULT NULL,
  `REMARKS` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `XFK_A_ORG_ID` (`ORG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `ASSIGNMENTS`
-- 

INSERT INTO `ASSIGNMENTS` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 05:53:03', 1, 1, 'K101', 'KK NGR ', 0, 'IB-SN-PN-', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ASSIGNMENTS` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 05:53:03', 2, 1, 'C201', 'Crawford', 0, 'KM-MP-CF', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ASSIGNMENTS` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 05:54:01', 3, 2, 'C101', 'Chatram', 0, 'CH-PK-JN', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ASSIGNMENTS` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 05:54:01', 4, 1, 'EPU', 'Executive Pickup', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ASSIGNMENTS` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 05:54:30', 5, 1, 'NW', 'Night Watch', 0, NULL, NULL, NULL, NULL, NULL, 'filemanageraccess/xxx/mydir/test/personal/mmm');

-- --------------------------------------------------------

-- 
-- Table structure for table `KEY_VALUE`
-- 

CREATE TABLE `KEY_VALUE` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `GROUP_NAME` varchar(30) NOT NULL,
  `KEY_NAME` varchar(30) NOT NULL,
  `VALUE_ID` varchar(30) NOT NULL,
  `VALUE_NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

-- 
-- Dumping data for table `KEY_VALUE`
-- 

INSERT INTO `KEY_VALUE` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 02:29:43', 1, 'ORG', 'TYPE', 'SCH', 'School');
INSERT INTO `KEY_VALUE` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 02:29:43', 2, 'ORG', 'TYPE', 'CLG', 'College');
INSERT INTO `KEY_VALUE` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 02:31:07', 3, 'ORG', 'TYPE', 'PTC', 'PolyTechnic');
INSERT INTO `KEY_VALUE` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 02:31:07', 4, 'ORG', 'ROLE', 'TXI', 'Taxi Operator');
INSERT INTO `KEY_VALUE` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 02:32:12', 5, 'ORG', 'ROLE', 'TRN', 'Transporter');
INSERT INTO `KEY_VALUE` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 02:32:12', 6, 'ORG', 'ROLE', 'SEC', 'Security Carrier');
INSERT INTO `KEY_VALUE` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 02:29:43', 7, 'ORG', 'ROLE', 'CMV', 'Cargo Mover');
INSERT INTO `KEY_VALUE` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 02:29:43', 8, 'ORG', 'ROLE', 'SA', 'Sys Admin');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 03:33:53', '-1', '2015-08-27 03:33:53', 9, 'ORG', 'ROLE', 'TM', 'Manager');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 10, 'ORG', 'ROLE', 'OPR', 'Operator');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 11, 'ORG', 'ROLE', 'MEM', 'Member');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 12, 'STATUS', 'VALIDITY', '0', 'ACTIVE');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 13, 'STATUS', 'VALIDITY', '1', 'INACTIVE');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 14, 'USER', 'TYPE', 'ORG', 'Org');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 15, 'USER', 'TYPE', 'OPR', 'Operator');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 16, 'USER', 'TYPE', 'MEM', 'Member');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 17, 'USER', 'TYPE', 'GUS', 'Guest');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 18, 'RESOURCE', 'TYPE', 'BUS', 'Bus');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 19, 'RESOURCE', 'TYPE', 'VAN', 'Van');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 20, 'RESOURCE', 'TYPE', 'SDN', 'Sedan');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 21, 'RESOURCE', 'TYPE', 'HB', 'Hatchback');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 22, 'RESOURCE', 'TYPE', 'JCB', 'JCB');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 23, 'RESOURCE', 'TYPE', 'STF', 'STAFF');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 24, 'SCHOOL', 'CLASS', 'PS', 'Play School');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 25, 'SCHOOL', 'CLASS', 'PE', 'Pre School');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 26, 'SCHOOL', 'CLASS', 'PK', 'Pre KG');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 27, 'SCHOOL', 'CLASS', 'LK', 'LKG');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 28, 'SCHOOL', 'CLASS', 'UK', 'UKG');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 29, 'SCHOOL', 'CLASS', 'FI', 'First');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 30, 'SCHOOL', 'CLASS', 'SE', 'Second');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 31, 'SCHOOL', 'CLASS', 'TH', 'Third');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 32, 'SCHOOL', 'CLASS', 'FO', 'Fourth');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 33, 'SCHOOL', 'CLASS', 'FF', 'Fifth');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 34, 'SCHOOL', 'CLASS', 'SX', 'Sixth');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 35, 'SCHOOL', 'CLASS', 'SE', 'Seventh');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 36, 'SCHOOL', 'CLASS', 'EI', 'Eigth');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 37, 'SCHOOL', 'CLASS', 'NI', 'Nineth');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 38, 'SCHOOL', 'CLASS', 'TE', 'Tenth');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 39, 'SCHOOL', 'CLASS', 'P1', 'Plus One');
INSERT INTO `KEY_VALUE` VALUES ('-1', '2015-08-27 04:14:33', '-1', '2015-08-27 04:14:33', 40, 'SCHOOL', 'CLASS', 'P2', 'Plus Two');

-- --------------------------------------------------------

-- 
-- Table structure for table `ORG_MASTER`
-- 

CREATE TABLE `ORG_MASTER` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ORG_CODE` varchar(10) NOT NULL,
  `ORG_TYPE_ID` int(10) NOT NULL,
  `ORG_NAME` varchar(60) NOT NULL,
  `ORG_ADDRESS` varchar(120) DEFAULT NULL,
  `ORG_CITY` varchar(60) DEFAULT NULL,
  `ORG_STATE` varchar(60) DEFAULT NULL,
  `ORG_COUNTRY` varchar(60) DEFAULT NULL,
  `ORG_PINCODE` varchar(60) DEFAULT NULL,
  `ORG_WEB_ADDRESS` varchar(60) DEFAULT NULL,
  `ORG_TEL_NUMBER` varchar(20) DEFAULT NULL,
  `ORG_FAX_NUMBER` varchar(20) DEFAULT NULL,
  `ORG_CELL_NUMBER` varchar(15) DEFAULT NULL,
  `ORG_CONTACT_EMAIL` varchar(60) DEFAULT NULL,
  `EFFECTIVE_DATE` date NOT NULL DEFAULT '0000-00-00',
  `EXPIRY_DATE` date DEFAULT NULL,
  `STATUS` int(10) NOT NULL,
  `REMARKS` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `XFK_OM_ORG_TYPE_ID` (`ORG_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `ORG_MASTER`
-- 

INSERT INTO `ORG_MASTER` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 04:22:34', 1, 'JMMHSS', 1, 'J', 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India', 'T', 'T', 'I', '620021', 'WWW', '123', '345', '786', 'J@A.COM', '2015-08-15', NULL, 1, NULL);
INSERT INTO `ORG_MASTER` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 04:22:34', 2, 'APMHSS', 1, 'A', 'B', 'C', 'D', 'D', '620021', 'WWW', '567', '789', '890', 'a@a.om', '2015-08-15', NULL, 1, NULL);
INSERT INTO `ORG_MASTER` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 04:24:38', 3, 'JMGC', 2, 'M', 'C', 'D', 'E', 'F', '600211', 'WWW', '345', '543', '345', 'm@a.com', '2015-09-01', NULL, 0, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `RESOURCE_PROFILE`
-- 

CREATE TABLE `RESOURCE_PROFILE` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ORG_ID` int(10) NOT NULL,
  `RESOURCE_REF` varchar(60) NOT NULL,
  `RESOURCE_TYPE_ID` int(10) NOT NULL,
  `RESOURCE_DESC` varchar(60) DEFAULT NULL,
  `STATUS` int(10) NOT NULL,
  `REMARKS` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `XFK_RP_ORG_ID` (`ORG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `RESOURCE_PROFILE`
-- 

INSERT INTO `RESOURCE_PROFILE` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 05:50:04', 1, 1, 'TN45-AT-1187', 0, '40 Seater Bus', 0, NULL);
INSERT INTO `RESOURCE_PROFILE` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 05:50:04', 2, 2, 'TN22-P-4456', 0, '20 Seater Van', 0, NULL);
INSERT INTO `RESOURCE_PROFILE` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 05:51:14', 3, 1, 'PY01-P-9999', 0, '7 Seater LUV', 0, NULL);
INSERT INTO `RESOURCE_PROFILE` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-27 05:51:14', 4, 1, 'Staff#', 0, 'Watchman', 0, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `TRACE_DETAIL`
-- 

CREATE TABLE `TRACE_DETAIL` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `TRACE_MASTER_ID` int(10) NOT NULL,
  `TRACE_TIME` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TRACE_LAT` double(10,6) NOT NULL,
  `TRACE_LNG` double(10,6) NOT NULL,
  `TRACE_ADDRESS` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `XFK_TD_TRACE_MASTER_ID` (`TRACE_MASTER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1063 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1063 ;

-- 
-- Dumping data for table `TRACE_DETAIL`
-- 

INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-11 06:25:42', '-1', '2015-09-11 06:25:42', 1, 1, '15:55:40', 10.767569, 78.683595, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-11 06:25:52', '-1', '2015-09-11 06:25:52', 2, 1, '15:55:50', 10.769055, 78.683981, '4th Main Rd, Krishna Moorthy Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-11 06:26:02', '-1', '2015-09-11 06:26:02', 3, 1, '15:56:0', 10.772280, 78.684571, 'A');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-11 06:26:12', '-1', '2015-09-11 06:26:12', 4, 1, '15:56:10', 10.774409, 78.684979, 'B');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-11 06:26:15', '-1', '2015-09-11 06:26:15', 5, 1, '15:56:10', 10.778383, 78.685504, 'C');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-11 06:27:05', '-1', '2015-09-11 06:27:05', 6, 1, '15:57:3', 10.783716, 78.687618, 'D');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-11 06:27:11', '-1', '2015-09-11 06:27:11', 7, 1, '15:57:3', 10.786034, 78.686502, 'E');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 03:30:32', '-1', '2015-09-15 03:30:32', 8, 8, '12:58:11', 10.766427, 78.683971, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 03:32:32', '-1', '2015-09-15 03:32:32', 9, 9, '13:0:43', 10.766427, 78.683971, '32,LIC Colony, Simco Rd, LIC Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 03:32:32', '-1', '2015-09-15 03:32:32', 10, 1, '13:0:55', 10.792134, 78.683045, '32,LIC Colony, Simco Rd, LIC Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 03:35:23', '-1', '2015-09-15 03:35:23', 11, 10, '13:2:43', 10.766427, 78.683971, '32,LIC Colony, Simco Rd, LIC Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 03:37:05', '-1', '2015-09-15 03:37:05', 12, 11, '13:5:33', 10.766427, 78.683971, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 03:41:22', '-1', '2015-09-15 03:41:22', 13, 12, '13:11:21', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 03:44:56', '-1', '2015-09-15 03:44:56', 14, 13, '13:14:54', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 04:23:24', '-1', '2015-09-15 04:23:24', 15, 14, '13:53:22', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 04:27:07', '-1', '2015-09-15 04:27:07', 16, 15, '13:57:5', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 05:05:12', '-1', '2015-09-15 05:05:12', 17, 16, '14:35:11', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 05:05:25', '-1', '2015-09-15 05:05:25', 18, 16, '14:35:21', 10.767579, 78.683692, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 05:05:39', '-1', '2015-09-15 05:05:39', 19, 16, '14:35:34', 10.767579, 78.683692, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-15 05:05:51', '-1', '2015-09-15 05:05:51', 20, 16, '14:35:48', 10.767579, 78.683692, 'D');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-23 00:53:20', '-1', '2015-09-23 00:53:20', 21, 17, '10:23:19', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-23 01:02:26', '-1', '2015-09-23 01:02:26', 22, 18, '10:32:25', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-23 01:05:49', '-1', '2015-09-23 01:05:49', 23, 19, '10:35:48', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-23 01:06:53', '-1', '2015-09-23 01:06:53', 24, 20, '10:36:52', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-23 02:16:55', '-1', '2015-09-23 02:16:55', 25, 21, '11:46:54', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:11:48', '-1', '2015-09-28 03:11:48', 26, 22, '12:41:42', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:12:10', '-1', '2015-09-28 03:12:10', 27, 22, '12:41:53', 10.767406, 78.683614, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:12:23', '-1', '2015-09-28 03:12:23', 28, 22, '12:42:14', 10.767406, 78.683614, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:12:35', '-1', '2015-09-28 03:12:35', 29, 22, '12:42:27', 10.767406, 78.683614, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:12:48', '-1', '2015-09-28 03:12:48', 30, 22, '12:42:39', 10.767406, 78.683614, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:13:36', '-1', '2015-09-28 03:13:36', 31, 22, '12:42:52', 10.767406, 78.683614, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:13:52', '-1', '2015-09-28 03:13:52', 32, 22, '12:43:44', 10.767634, 78.683730, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:15:25', '-1', '2015-09-28 03:15:25', 33, 22, '12:43:54', 10.767630, 78.683727, '4th Main Rd, Krishna Moorthy Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:15:39', '-1', '2015-09-28 03:15:39', 34, 22, '12:45:32', 10.767629, 78.683731, '4th Main Rd, Krishna Moorthy Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:15:50', '-1', '2015-09-28 03:15:50', 35, 22, '12:45:43', 10.767630, 78.683731, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:16:01', '-1', '2015-09-28 03:16:01', 36, 22, '12:45:54', 10.767628, 78.683730, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:16:14', '-1', '2015-09-28 03:16:14', 37, 22, '12:46:7', 10.767633, 78.683734, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:16:30', '-1', '2015-09-28 03:16:30', 38, 22, '12:46:18', 10.767629, 78.683731, '4th Main Rd, Krishna Moorthy Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:16:40', '-1', '2015-09-28 03:16:40', 39, 22, '12:46:33', 10.767634, 78.683723, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:16:53', '-1', '2015-09-28 03:16:53', 40, 22, '12:46:46', 10.767818, 78.683712, '4th Main Rd, Krishna Moorthy Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:17:05', '-1', '2015-09-28 03:17:05', 41, 22, '12:46:58', 10.767685, 78.683701, '4th Main Rd, Krishna Moorthy Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 03:28:47', '-1', '2015-09-28 03:28:47', 42, 23, '12:58:45', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:02:52', '-1', '2015-09-28 07:02:52', 43, 24, '16:32:47', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:03:06', '-1', '2015-09-28 07:03:06', 44, 24, '16:33:1', 10.767478, 78.683772, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:03:16', '-1', '2015-09-28 07:03:16', 45, 24, '16:33:11', 10.767485, 78.683762, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:03:23', '-1', '2015-09-28 07:03:23', 46, 24, '16:33:17', 10.767485, 78.683762, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:03:33', '-1', '2015-09-28 07:03:33', 47, 24, '16:33:28', 10.767376, 78.683570, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:03:43', '-1', '2015-09-28 07:03:43', 48, 24, '16:33:37', 10.767376, 78.683571, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:03:53', '-1', '2015-09-28 07:03:53', 49, 24, '16:33:47', 10.767376, 78.683571, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:04:03', '-1', '2015-09-28 07:04:03', 50, 24, '16:33:57', 10.767376, 78.683571, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:04:13', '-1', '2015-09-28 07:04:13', 51, 24, '16:34:7', 10.767376, 78.683571, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:04:23', '-1', '2015-09-28 07:04:23', 52, 24, '16:34:17', 10.767376, 78.683571, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:04:33', '-1', '2015-09-28 07:04:33', 53, 24, '16:34:27', 10.767376, 78.683571, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:04:42', '-1', '2015-09-28 07:04:42', 54, 24, '16:34:37', 10.767376, 78.683571, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:04:53', '-1', '2015-09-28 07:04:53', 55, 24, '16:34:47', 10.767377, 78.683574, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:05:03', '-1', '2015-09-28 07:05:03', 56, 24, '16:34:57', 10.767377, 78.683575, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:05:13', '-1', '2015-09-28 07:05:13', 57, 24, '16:35:7', 10.767378, 78.683575, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:05:23', '-1', '2015-09-28 07:05:23', 58, 24, '16:35:17', 10.767378, 78.683575, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:05:33', '-1', '2015-09-28 07:05:33', 59, 24, '16:35:27', 10.767379, 78.683574, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:05:43', '-1', '2015-09-28 07:05:43', 60, 24, '16:35:37', 10.767379, 78.683574, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:05:53', '-1', '2015-09-28 07:05:53', 61, 24, '16:35:47', 10.767379, 78.683574, 'Simco Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:06:03', '-1', '2015-09-28 07:06:03', 62, 24, '16:35:57', 10.767380, 78.683573, 'Simco Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:06:13', '-1', '2015-09-28 07:06:13', 63, 24, '16:36:8', 10.767380, 78.683573, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:06:23', '-1', '2015-09-28 07:06:23', 64, 24, '16:36:17', 10.767380, 78.683573, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:06:33', '-1', '2015-09-28 07:06:33', 65, 24, '16:36:27', 10.767381, 78.683573, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:06:43', '-1', '2015-09-28 07:06:43', 66, 24, '16:36:37', 10.767381, 78.683573, 'Simco Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:06:53', '-1', '2015-09-28 07:06:53', 67, 24, '16:36:47', 10.767382, 78.683572, 'Simco Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:07:03', '-1', '2015-09-28 07:07:03', 68, 24, '16:36:57', 10.767382, 78.683572, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:07:13', '-1', '2015-09-28 07:07:13', 69, 24, '16:37:7', 10.767382, 78.683572, 'Simco Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:07:23', '-1', '2015-09-28 07:07:23', 70, 24, '16:37:17', 10.767383, 78.683572, 'Simco Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:07:33', '-1', '2015-09-28 07:07:33', 71, 24, '16:37:27', 10.767383, 78.683573, 'Simco Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:07:43', '-1', '2015-09-28 07:07:43', 72, 24, '16:37:37', 10.767383, 78.683574, 'Simco Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:07:53', '-1', '2015-09-28 07:07:53', 73, 24, '16:37:47', 10.767382, 78.683578, 'Simco Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:08:03', '-1', '2015-09-28 07:08:03', 74, 24, '16:37:57', 10.767383, 78.683578, 'Simco Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:08:16', '-1', '2015-09-28 07:08:16', 75, 24, '16:38:11', 10.767383, 78.683578, 'Simco Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:08:27', '-1', '2015-09-28 07:08:27', 76, 24, '16:38:21', 10.767476, 78.683762, 'Simco Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:08:36', '-1', '2015-09-28 07:08:36', 77, 24, '16:38:31', 10.767479, 78.683763, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:08:43', '-1', '2015-09-28 07:08:43', 78, 24, '16:38:38', 10.767478, 78.683763, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:08:56', '-1', '2015-09-28 07:08:56', 79, 24, '16:38:51', 10.767493, 78.683790, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:09:06', '-1', '2015-09-28 07:09:06', 80, 24, '16:39:1', 10.767505, 78.683785, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:09:16', '-1', '2015-09-28 07:09:16', 81, 24, '16:39:11', 10.767503, 78.683784, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:09:26', '-1', '2015-09-28 07:09:26', 82, 24, '16:39:21', 10.767498, 78.683786, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:09:36', '-1', '2015-09-28 07:09:36', 83, 24, '16:39:31', 10.767494, 78.683782, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:09:42', '-1', '2015-09-28 07:09:42', 84, 24, '16:39:37', 10.767494, 78.683781, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:09:53', '-1', '2015-09-28 07:09:53', 85, 24, '16:39:47', 10.767494, 78.683781, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:10:03', '-1', '2015-09-28 07:10:03', 86, 24, '16:39:58', 10.767402, 78.683548, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:10:13', '-1', '2015-09-28 07:10:13', 87, 24, '16:40:7', 10.767404, 78.683545, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:10:22', '-1', '2015-09-28 07:10:22', 88, 24, '16:40:17', 10.767404, 78.683546, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:10:33', '-1', '2015-09-28 07:10:33', 89, 24, '16:40:27', 10.767404, 78.683547, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:10:43', '-1', '2015-09-28 07:10:43', 90, 24, '16:40:37', 10.767404, 78.683547, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:10:53', '-1', '2015-09-28 07:10:53', 91, 24, '16:40:47', 10.767404, 78.683547, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:11:03', '-1', '2015-09-28 07:11:03', 92, 24, '16:40:57', 10.767404, 78.683547, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:11:13', '-1', '2015-09-28 07:11:13', 93, 24, '16:41:7', 10.767404, 78.683547, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:11:23', '-1', '2015-09-28 07:11:23', 94, 24, '16:41:17', 10.767404, 78.683548, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:11:33', '-1', '2015-09-28 07:11:33', 95, 24, '16:41:27', 10.767403, 78.683560, '3rd Main Rd, Renga Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:11:43', '-1', '2015-09-28 07:11:43', 96, 24, '16:41:37', 10.767403, 78.683565, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:11:53', '-1', '2015-09-28 07:11:53', 97, 24, '16:41:47', 10.767403, 78.683566, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:12:03', '-1', '2015-09-28 07:12:03', 98, 24, '16:41:57', 10.767403, 78.683566, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:12:13', '-1', '2015-09-28 07:12:13', 99, 24, '16:42:7', 10.767403, 78.683567, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:12:23', '-1', '2015-09-28 07:12:23', 100, 24, '16:42:17', 10.767403, 78.683567, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:12:33', '-1', '2015-09-28 07:12:33', 101, 24, '16:42:27', 10.767403, 78.683567, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:12:43', '-1', '2015-09-28 07:12:43', 102, 24, '16:42:37', 10.767403, 78.683567, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:12:53', '-1', '2015-09-28 07:12:53', 103, 24, '16:42:47', 10.767404, 78.683567, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:13:03', '-1', '2015-09-28 07:13:03', 104, 24, '16:42:57', 10.767404, 78.683567, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:13:13', '-1', '2015-09-28 07:13:13', 105, 24, '16:43:8', 10.767404, 78.683567, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:13:23', '-1', '2015-09-28 07:13:23', 106, 24, '16:43:18', 10.767404, 78.683567, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:13:33', '-1', '2015-09-28 07:13:33', 107, 24, '16:43:27', 10.767404, 78.683567, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:13:43', '-1', '2015-09-28 07:13:43', 108, 24, '16:43:37', 10.767404, 78.683568, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:13:53', '-1', '2015-09-28 07:13:53', 109, 24, '16:43:47', 10.767404, 78.683569, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:14:03', '-1', '2015-09-28 07:14:03', 110, 24, '16:43:57', 10.767404, 78.683570, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:14:13', '-1', '2015-09-28 07:14:13', 111, 24, '16:44:8', 10.767404, 78.683570, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:14:23', '-1', '2015-09-28 07:14:23', 112, 24, '16:44:17', 10.767404, 78.683570, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:14:33', '-1', '2015-09-28 07:14:33', 113, 24, '16:44:27', 10.767404, 78.683570, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:14:43', '-1', '2015-09-28 07:14:43', 114, 24, '16:44:38', 10.767404, 78.683570, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:14:53', '-1', '2015-09-28 07:14:53', 115, 24, '16:44:47', 10.767404, 78.683570, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:15:03', '-1', '2015-09-28 07:15:03', 116, 24, '16:44:58', 10.767404, 78.683570, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:15:16', '-1', '2015-09-28 07:15:16', 117, 24, '16:45:11', 10.767404, 78.683570, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:15:23', '-1', '2015-09-28 07:15:23', 118, 24, '16:45:17', 10.767404, 78.683570, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:15:33', '-1', '2015-09-28 07:15:33', 119, 24, '16:45:27', 10.767404, 78.683571, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:15:43', '-1', '2015-09-28 07:15:43', 120, 24, '16:45:37', 10.767404, 78.683571, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:15:53', '-1', '2015-09-28 07:15:53', 121, 24, '16:45:47', 10.767404, 78.683571, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:16:03', '-1', '2015-09-28 07:16:03', 122, 24, '16:45:57', 10.767404, 78.683571, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:16:13', '-1', '2015-09-28 07:16:13', 123, 24, '16:46:7', 10.767404, 78.683571, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:16:23', '-1', '2015-09-28 07:16:23', 124, 24, '16:46:17', 10.767404, 78.683571, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:16:33', '-1', '2015-09-28 07:16:33', 125, 24, '16:46:27', 10.767404, 78.683572, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:16:43', '-1', '2015-09-28 07:16:43', 126, 24, '16:46:37', 10.767404, 78.683572, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:16:53', '-1', '2015-09-28 07:16:53', 127, 24, '16:46:47', 10.767404, 78.683572, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:17:03', '-1', '2015-09-28 07:17:03', 128, 24, '16:46:57', 10.767404, 78.683572, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:17:13', '-1', '2015-09-28 07:17:13', 129, 24, '16:47:7', 10.767404, 78.683573, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:17:23', '-1', '2015-09-28 07:17:23', 130, 24, '16:47:17', 10.767404, 78.683573, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:17:33', '-1', '2015-09-28 07:17:33', 131, 24, '16:47:27', 10.767404, 78.683573, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:17:43', '-1', '2015-09-28 07:17:43', 132, 24, '16:47:38', 10.767404, 78.683573, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:17:53', '-1', '2015-09-28 07:17:53', 133, 24, '16:47:47', 10.767404, 78.683574, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:18:03', '-1', '2015-09-28 07:18:03', 134, 24, '16:47:57', 10.767405, 78.683574, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:18:13', '-1', '2015-09-28 07:18:13', 135, 24, '16:48:7', 10.767405, 78.683575, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:18:23', '-1', '2015-09-28 07:18:23', 136, 24, '16:48:17', 10.767405, 78.683575, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:18:33', '-1', '2015-09-28 07:18:33', 137, 24, '16:48:27', 10.767405, 78.683576, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:18:43', '-1', '2015-09-28 07:18:43', 138, 24, '16:48:37', 10.767405, 78.683576, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:18:53', '-1', '2015-09-28 07:18:53', 139, 24, '16:48:47', 10.767405, 78.683576, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:19:03', '-1', '2015-09-28 07:19:03', 140, 24, '16:48:57', 10.767406, 78.683577, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:19:13', '-1', '2015-09-28 07:19:13', 141, 24, '16:49:8', 10.767406, 78.683577, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:19:23', '-1', '2015-09-28 07:19:23', 142, 24, '16:49:17', 10.767406, 78.683578, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:19:33', '-1', '2015-09-28 07:19:33', 143, 24, '16:49:27', 10.767405, 78.683579, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:19:43', '-1', '2015-09-28 07:19:43', 144, 24, '16:49:37', 10.767405, 78.683580, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:19:53', '-1', '2015-09-28 07:19:53', 145, 24, '16:49:47', 10.767405, 78.683581, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:20:03', '-1', '2015-09-28 07:20:03', 146, 24, '16:49:57', 10.767405, 78.683582, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:20:13', '-1', '2015-09-28 07:20:13', 147, 24, '16:50:7', 10.767405, 78.683583, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:20:23', '-1', '2015-09-28 07:20:23', 148, 24, '16:50:17', 10.767405, 78.683584, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:20:33', '-1', '2015-09-28 07:20:33', 149, 24, '16:50:27', 10.767405, 78.683585, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:20:43', '-1', '2015-09-28 07:20:43', 150, 24, '16:50:37', 10.767405, 78.683585, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:20:53', '-1', '2015-09-28 07:20:53', 151, 24, '16:50:47', 10.767405, 78.683585, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:21:03', '-1', '2015-09-28 07:21:03', 152, 24, '16:50:57', 10.767405, 78.683585, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:21:13', '-1', '2015-09-28 07:21:13', 153, 24, '16:51:7', 10.767405, 78.683585, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:21:23', '-1', '2015-09-28 07:21:23', 154, 24, '16:51:17', 10.767406, 78.683585, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:21:33', '-1', '2015-09-28 07:21:33', 155, 24, '16:51:27', 10.767406, 78.683585, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:21:43', '-1', '2015-09-28 07:21:43', 156, 24, '16:51:37', 10.767406, 78.683586, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:21:53', '-1', '2015-09-28 07:21:53', 157, 24, '16:51:47', 10.767406, 78.683586, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:22:03', '-1', '2015-09-28 07:22:03', 158, 24, '16:51:57', 10.767406, 78.683587, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:22:13', '-1', '2015-09-28 07:22:13', 159, 24, '16:52:7', 10.767406, 78.683587, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:22:23', '-1', '2015-09-28 07:22:23', 160, 24, '16:52:18', 10.767406, 78.683587, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:22:33', '-1', '2015-09-28 07:22:33', 161, 24, '16:52:27', 10.767406, 78.683587, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:22:43', '-1', '2015-09-28 07:22:43', 162, 24, '16:52:37', 10.767406, 78.683588, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:22:53', '-1', '2015-09-28 07:22:53', 163, 24, '16:52:47', 10.767406, 78.683588, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:23:03', '-1', '2015-09-28 07:23:03', 164, 24, '16:52:57', 10.767406, 78.683588, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:23:13', '-1', '2015-09-28 07:23:13', 165, 24, '16:53:7', 10.767406, 78.683588, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:23:23', '-1', '2015-09-28 07:23:23', 166, 24, '16:53:17', 10.767406, 78.683588, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:23:33', '-1', '2015-09-28 07:23:33', 167, 24, '16:53:27', 10.767406, 78.683588, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:23:43', '-1', '2015-09-28 07:23:43', 168, 24, '16:53:37', 10.767406, 78.683588, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:23:53', '-1', '2015-09-28 07:23:53', 169, 24, '16:53:47', 10.767406, 78.683588, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:24:03', '-1', '2015-09-28 07:24:03', 170, 24, '16:53:57', 10.767406, 78.683589, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:24:13', '-1', '2015-09-28 07:24:13', 171, 24, '16:54:7', 10.767406, 78.683589, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:24:23', '-1', '2015-09-28 07:24:23', 172, 24, '16:54:17', 10.767406, 78.683589, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:24:33', '-1', '2015-09-28 07:24:33', 173, 24, '16:54:27', 10.767406, 78.683589, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:24:43', '-1', '2015-09-28 07:24:43', 174, 24, '16:54:37', 10.767406, 78.683590, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:24:53', '-1', '2015-09-28 07:24:53', 175, 24, '16:54:47', 10.767406, 78.683590, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:25:03', '-1', '2015-09-28 07:25:03', 176, 24, '16:54:57', 10.767405, 78.683591, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:25:13', '-1', '2015-09-28 07:25:13', 177, 24, '16:55:7', 10.767405, 78.683592, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:25:24', '-1', '2015-09-28 07:25:24', 178, 24, '16:55:17', 10.767405, 78.683592, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:25:33', '-1', '2015-09-28 07:25:33', 179, 24, '16:55:27', 10.767405, 78.683592, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:25:43', '-1', '2015-09-28 07:25:43', 180, 24, '16:55:37', 10.767406, 78.683592, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:25:53', '-1', '2015-09-28 07:25:53', 181, 24, '16:55:47', 10.767406, 78.683591, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:26:03', '-1', '2015-09-28 07:26:03', 182, 24, '16:55:57', 10.767406, 78.683591, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:26:13', '-1', '2015-09-28 07:26:13', 183, 24, '16:56:7', 10.767406, 78.683591, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:26:23', '-1', '2015-09-28 07:26:23', 184, 24, '16:56:17', 10.767406, 78.683592, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:26:33', '-1', '2015-09-28 07:26:33', 185, 24, '16:56:27', 10.767406, 78.683592, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:26:43', '-1', '2015-09-28 07:26:43', 186, 24, '16:56:37', 10.767406, 78.683592, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:26:53', '-1', '2015-09-28 07:26:53', 187, 24, '16:56:47', 10.767406, 78.683593, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:27:03', '-1', '2015-09-28 07:27:03', 188, 24, '16:56:57', 10.767406, 78.683594, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:27:13', '-1', '2015-09-28 07:27:13', 189, 24, '16:57:8', 10.767406, 78.683594, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:27:23', '-1', '2015-09-28 07:27:23', 190, 24, '16:57:18', 10.767406, 78.683594, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:27:33', '-1', '2015-09-28 07:27:33', 191, 24, '16:57:28', 10.767406, 78.683594, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:27:43', '-1', '2015-09-28 07:27:43', 192, 24, '16:57:38', 10.767406, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:27:53', '-1', '2015-09-28 07:27:53', 193, 24, '16:57:47', 10.767406, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:28:04', '-1', '2015-09-28 07:28:04', 194, 24, '16:57:58', 10.767406, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:28:13', '-1', '2015-09-28 07:28:13', 195, 24, '16:58:7', 10.767406, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:28:23', '-1', '2015-09-28 07:28:23', 196, 24, '16:58:18', 10.767406, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:28:33', '-1', '2015-09-28 07:28:33', 197, 24, '16:58:27', 10.767407, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:28:43', '-1', '2015-09-28 07:28:43', 198, 24, '16:58:37', 10.767407, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:28:53', '-1', '2015-09-28 07:28:53', 199, 24, '16:58:47', 10.767407, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:29:03', '-1', '2015-09-28 07:29:03', 200, 24, '16:58:57', 10.767407, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:29:13', '-1', '2015-09-28 07:29:13', 201, 24, '16:59:7', 10.767407, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:29:23', '-1', '2015-09-28 07:29:23', 202, 24, '16:59:17', 10.767407, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:29:33', '-1', '2015-09-28 07:29:33', 203, 24, '16:59:27', 10.767407, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:29:43', '-1', '2015-09-28 07:29:43', 204, 24, '16:59:37', 10.767407, 78.683595, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:29:53', '-1', '2015-09-28 07:29:53', 205, 24, '16:59:47', 10.767406, 78.683596, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:30:03', '-1', '2015-09-28 07:30:03', 206, 24, '16:59:57', 10.767406, 78.683596, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:30:13', '-1', '2015-09-28 07:30:13', 207, 24, '17:0:8', 10.767406, 78.683597, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:30:25', '-1', '2015-09-28 07:30:25', 208, 24, '17:0:17', 10.767406, 78.683597, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:30:33', '-1', '2015-09-28 07:30:33', 209, 24, '17:0:27', 10.767406, 78.683597, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:30:44', '-1', '2015-09-28 07:30:44', 210, 24, '17:0:38', 10.767406, 78.683597, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:30:53', '-1', '2015-09-28 07:30:53', 211, 24, '17:0:47', 10.767406, 78.683597, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:31:03', '-1', '2015-09-28 07:31:03', 212, 24, '17:0:57', 10.767406, 78.683597, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:31:17', '-1', '2015-09-28 07:31:17', 213, 24, '17:1:12', 10.767406, 78.683597, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:31:23', '-1', '2015-09-28 07:31:23', 214, 24, '17:1:18', 10.767473, 78.683845, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:31:33', '-1', '2015-09-28 07:31:33', 215, 24, '17:1:28', 10.767474, 78.683843, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:31:45', '-1', '2015-09-28 07:31:45', 216, 24, '17:1:39', 10.767478, 78.683839, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:31:57', '-1', '2015-09-28 07:31:57', 217, 24, '17:1:51', 10.767530, 78.683785, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:32:06', '-1', '2015-09-28 07:32:06', 218, 24, '17:2:1', 10.767558, 78.683751, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:32:16', '-1', '2015-09-28 07:32:16', 219, 24, '17:2:10', 10.767562, 78.683757, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:32:24', '-1', '2015-09-28 07:32:24', 220, 24, '17:2:19', 10.767564, 78.683761, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:32:35', '-1', '2015-09-28 07:32:35', 221, 24, '17:2:29', 10.767556, 78.683761, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:32:51', '-1', '2015-09-28 07:32:51', 222, 24, '17:2:46', 10.767502, 78.683772, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:33:11', '-1', '2015-09-28 07:33:11', 223, 24, '17:3:5', 10.767527, 78.683772, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:33:30', '-1', '2015-09-28 07:33:30', 224, 24, '17:3:25', 10.767628, 78.683715, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:33:40', '-1', '2015-09-28 07:33:40', 225, 24, '17:3:35', 10.767614, 78.683721, '4th Main Rd, Krishna Moorthy Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:33:49', '-1', '2015-09-28 07:33:49', 226, 24, '17:3:44', 10.767618, 78.683720, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:33:59', '-1', '2015-09-28 07:33:59', 227, 24, '17:3:53', 10.767618, 78.683720, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:34:12', '-1', '2015-09-28 07:34:12', 228, 24, '17:4:6', 10.767404, 78.683628, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:34:24', '-1', '2015-09-28 07:34:24', 229, 24, '17:4:16', 10.767404, 78.683637, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:34:38', '-1', '2015-09-28 07:34:38', 230, 24, '17:4:33', 10.767404, 78.683637, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:34:49', '-1', '2015-09-28 07:34:49', 231, 24, '17:4:43', 10.767403, 78.683640, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:35:00', '-1', '2015-09-28 07:35:00', 232, 24, '17:4:54', 10.767423, 78.683656, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:35:22', '-1', '2015-09-28 07:35:22', 233, 24, '17:5:5', 10.767508, 78.683673, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:35:22', '-1', '2015-09-28 07:35:22', 234, 24, '17:5:16', 10.768242, 78.683971, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:35:35', '-1', '2015-09-28 07:35:35', 235, 24, '17:5:29', 10.768980, 78.684032, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:35:41', '-1', '2015-09-28 07:35:41', 236, 24, '17:5:35', 10.769097, 78.684054, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:35:51', '-1', '2015-09-28 07:35:51', 237, 24, '17:5:45', 10.769212, 78.684074, 'Sathanoor Main Rd, Sundar Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:36:05', '-1', '2015-09-28 07:36:05', 238, 24, '17:5:56', 10.769212, 78.684074, 'Sathanoor Main Rd, Sundar Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:36:20', '-1', '2015-09-28 07:36:20', 239, 24, '17:6:14', 10.773646, 78.684993, 'Sathanoor Main Rd, Sundar Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:36:20', '-1', '2015-09-28 07:36:20', 240, 24, '17:6:14', 10.773646, 78.684993, 'Sathanoor Main Rd, Sundar Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:36:20', '-1', '2015-09-28 07:36:20', 241, 24, '17:6:14', 10.773646, 78.684993, 'Sathanoor Main Rd, Sundar Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:36:30', '-1', '2015-09-28 07:36:30', 242, 24, '17:6:25', 10.772407, 78.684145, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:36:40', '-1', '2015-09-28 07:36:40', 243, 24, '17:6:34', 10.772666, 78.683525, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:36:50', '-1', '2015-09-28 07:36:50', 244, 24, '17:6:45', 10.773043, 78.682692, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:37:00', '-1', '2015-09-28 07:37:00', 245, 24, '17:6:54', 10.773261, 78.682108, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:37:10', '-1', '2015-09-28 07:37:10', 246, 24, '17:7:4', 10.773585, 78.681480, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:37:20', '-1', '2015-09-28 07:37:20', 247, 24, '17:7:14', 10.773862, 78.680853, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:37:30', '-1', '2015-09-28 07:37:30', 248, 24, '17:7:24', 10.774198, 78.680849, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:37:39', '-1', '2015-09-28 07:37:39', 249, 24, '17:7:34', 10.774644, 78.680922, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:37:50', '-1', '2015-09-28 07:37:50', 250, 24, '17:7:44', 10.774944, 78.681133, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:38:00', '-1', '2015-09-28 07:38:00', 251, 24, '17:7:54', 10.774961, 78.681469, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:38:10', '-1', '2015-09-28 07:38:10', 252, 24, '17:8:4', 10.774882, 78.681523, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:38:30', '-1', '2015-09-28 07:38:30', 253, 24, '17:8:14', 10.774846, 78.681572, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:38:30', '-1', '2015-09-28 07:38:30', 254, 24, '17:8:14', 10.774846, 78.681572, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:38:30', '-1', '2015-09-28 07:38:30', 255, 24, '17:8:24', 10.774846, 78.681550, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:38:49', '-1', '2015-09-28 07:38:49', 256, 24, '17:8:44', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:38:56', '-1', '2015-09-28 07:38:56', 257, 24, '17:8:51', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:39:06', '-1', '2015-09-28 07:39:06', 258, 24, '17:9:1', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:39:19', '-1', '2015-09-28 07:39:19', 259, 24, '17:9:14', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:39:31', '-1', '2015-09-28 07:39:31', 260, 24, '17:9:25', 10.774777, 78.681495, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:39:41', '-1', '2015-09-28 07:39:41', 261, 24, '17:9:35', 10.774788, 78.681506, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:39:51', '-1', '2015-09-28 07:39:51', 262, 24, '17:9:46', 10.774787, 78.681487, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:40:01', '-1', '2015-09-28 07:40:01', 263, 24, '17:9:55', 10.774789, 78.681488, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:40:12', '-1', '2015-09-28 07:40:12', 264, 24, '17:10:6', 10.774791, 78.681492, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:40:22', '-1', '2015-09-28 07:40:22', 265, 24, '17:10:16', 10.774795, 78.681497, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:40:37', '-1', '2015-09-28 07:40:37', 266, 24, '17:10:31', 10.774795, 78.681498, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:40:49', '-1', '2015-09-28 07:40:49', 267, 24, '17:10:43', 10.774795, 78.681498, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:41:01', '-1', '2015-09-28 07:41:01', 268, 24, '17:10:56', 10.774795, 78.681498, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:41:16', '-1', '2015-09-28 07:41:16', 269, 24, '17:11:10', 10.774795, 78.681498, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:41:26', '-1', '2015-09-28 07:41:26', 270, 24, '17:11:20', 10.774796, 78.681498, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:41:42', '-1', '2015-09-28 07:41:42', 271, 24, '17:11:36', 10.774796, 78.681499, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:41:53', '-1', '2015-09-28 07:41:53', 272, 24, '17:11:47', 10.774796, 78.681499, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:42:05', '-1', '2015-09-28 07:42:05', 273, 24, '17:11:59', 10.774797, 78.681499, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:42:16', '-1', '2015-09-28 07:42:16', 274, 24, '17:12:10', 10.774796, 78.681499, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:42:25', '-1', '2015-09-28 07:42:25', 275, 24, '17:12:20', 10.774796, 78.681499, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:42:38', '-1', '2015-09-28 07:42:38', 276, 24, '17:12:31', 10.774796, 78.681500, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:42:48', '-1', '2015-09-28 07:42:48', 277, 24, '17:12:42', 10.774769, 78.681510, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:42:58', '-1', '2015-09-28 07:42:58', 278, 24, '17:12:52', 10.774776, 78.681518, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:43:11', '-1', '2015-09-28 07:43:11', 279, 24, '17:13:6', 10.774780, 78.681474, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:43:21', '-1', '2015-09-28 07:43:21', 280, 24, '17:13:16', 10.774813, 78.681501, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:43:28', '-1', '2015-09-28 07:43:28', 281, 24, '17:13:23', 10.774806, 78.681508, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:43:38', '-1', '2015-09-28 07:43:38', 282, 24, '17:13:33', 10.774831, 78.681492, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:43:50', '-1', '2015-09-28 07:43:50', 283, 24, '17:13:44', 10.774838, 78.681483, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:44:00', '-1', '2015-09-28 07:44:00', 284, 24, '17:13:54', 10.774831, 78.681503, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:44:10', '-1', '2015-09-28 07:44:10', 285, 24, '17:14:5', 10.774831, 78.681504, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:44:20', '-1', '2015-09-28 07:44:20', 286, 24, '17:14:15', 10.774831, 78.681504, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:44:30', '-1', '2015-09-28 07:44:30', 287, 24, '17:14:25', 10.774831, 78.681505, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:44:43', '-1', '2015-09-28 07:44:43', 288, 24, '17:14:38', 10.774831, 78.681505, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:44:59', '-1', '2015-09-28 07:44:59', 289, 24, '17:14:54', 10.774719, 78.681558, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:45:12', '-1', '2015-09-28 07:45:12', 290, 24, '17:14:54', 10.774719, 78.681558, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:45:12', '-1', '2015-09-28 07:45:12', 291, 24, '17:15:5', 10.774719, 78.681550, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:45:23', '-1', '2015-09-28 07:45:23', 292, 24, '17:15:17', 10.774724, 78.681467, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:45:32', '-1', '2015-09-28 07:45:32', 293, 24, '17:15:25', 10.774719, 78.681422, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:45:40', '-1', '2015-09-28 07:45:40', 294, 24, '17:15:34', 10.773942, 78.680855, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:45:49', '-1', '2015-09-28 07:45:49', 295, 24, '17:15:43', 10.773682, 78.681074, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:46:19', '-1', '2015-09-28 07:46:19', 296, 24, '17:16:10', 10.773660, 78.681125, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:46:24', '-1', '2015-09-28 07:46:24', 297, 24, '17:16:19', 10.773073, 78.682985, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:46:34', '-1', '2015-09-28 07:46:34', 298, 24, '17:16:29', 10.773073, 78.682985, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:46:43', '-1', '2015-09-28 07:46:43', 299, 24, '17:16:38', 10.773055, 78.683031, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:46:53', '-1', '2015-09-28 07:46:53', 300, 24, '17:16:48', 10.773026, 78.683140, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:47:05', '-1', '2015-09-28 07:47:05', 301, 24, '17:17:0', 10.773020, 78.683261, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:47:16', '-1', '2015-09-28 07:47:16', 302, 24, '17:17:9', 10.773020, 78.683261, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:47:25', '-1', '2015-09-28 07:47:25', 303, 24, '17:17:19', 10.773020, 78.683261, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:47:41', '-1', '2015-09-28 07:47:41', 304, 24, '17:17:29', 10.773775, 78.684936, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:47:45', '-1', '2015-09-28 07:47:45', 305, 24, '17:17:39', 10.773775, 78.684936, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:47:55', '-1', '2015-09-28 07:47:55', 306, 24, '17:17:50', 10.773775, 78.684936, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:48:04', '-1', '2015-09-28 07:48:04', 307, 24, '17:17:59', 10.774769, 78.685025, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:48:15', '-1', '2015-09-28 07:48:15', 308, 24, '17:18:9', 10.774797, 78.685020, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:48:23', '-1', '2015-09-28 07:48:23', 309, 24, '17:18:18', 10.774797, 78.685020, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:48:33', '-1', '2015-09-28 07:48:33', 310, 24, '17:18:28', 10.777930, 78.685506, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:48:43', '-1', '2015-09-28 07:48:43', 311, 24, '17:18:38', 10.778476, 78.685660, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:48:53', '-1', '2015-09-28 07:48:53', 312, 24, '17:18:48', 10.778518, 78.685801, 'Simco Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:49:03', '-1', '2015-09-28 07:49:03', 313, 24, '17:18:58', 10.778463, 78.686025, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:49:13', '-1', '2015-09-28 07:49:13', 314, 24, '17:19:8', 10.778347, 78.686389, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:49:23', '-1', '2015-09-28 07:49:23', 315, 24, '17:19:18', 10.778258, 78.686914, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:49:33', '-1', '2015-09-28 07:49:33', 316, 24, '17:19:28', 10.778169, 78.687295, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:49:43', '-1', '2015-09-28 07:49:43', 317, 24, '17:19:38', 10.778482, 78.687522, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:49:53', '-1', '2015-09-28 07:49:53', 318, 24, '17:19:48', 10.779300, 78.687954, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:50:03', '-1', '2015-09-28 07:50:03', 319, 24, '17:19:58', 10.780328, 78.688458, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:50:13', '-1', '2015-09-28 07:50:13', 320, 24, '17:20:8', 10.781216, 78.688876, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:50:23', '-1', '2015-09-28 07:50:23', 321, 24, '17:20:18', 10.781460, 78.689061, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:50:33', '-1', '2015-09-28 07:50:33', 322, 24, '17:20:28', 10.781314, 78.689255, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:50:43', '-1', '2015-09-28 07:50:43', 323, 24, '17:20:38', 10.780521, 78.689756, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:50:53', '-1', '2015-09-28 07:50:53', 324, 24, '17:20:48', 10.779517, 78.690361, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:51:03', '-1', '2015-09-28 07:51:03', 325, 24, '17:20:58', 10.778529, 78.690974, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:51:13', '-1', '2015-09-28 07:51:13', 326, 24, '17:21:8', 10.777927, 78.691506, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:51:23', '-1', '2015-09-28 07:51:23', 327, 24, '17:21:18', 10.777393, 78.692184, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:51:33', '-1', '2015-09-28 07:51:33', 328, 24, '17:21:28', 10.776817, 78.692903, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:51:43', '-1', '2015-09-28 07:51:43', 329, 24, '17:21:38', 10.776322, 78.693528, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:51:53', '-1', '2015-09-28 07:51:53', 330, 24, '17:21:48', 10.775788, 78.694246, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:52:03', '-1', '2015-09-28 07:52:03', 331, 24, '17:21:58', 10.775264, 78.694949, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:52:13', '-1', '2015-09-28 07:52:13', 332, 24, '17:22:8', 10.774824, 78.695578, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:52:23', '-1', '2015-09-28 07:52:23', 333, 24, '17:22:18', 10.774433, 78.696443, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:52:33', '-1', '2015-09-28 07:52:33', 334, 24, '17:22:28', 10.774532, 78.697298, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:52:43', '-1', '2015-09-28 07:52:43', 335, 24, '17:22:38', 10.775140, 78.697798, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:52:53', '-1', '2015-09-28 07:52:53', 336, 24, '17:22:48', 10.776116, 78.698112, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:53:03', '-1', '2015-09-28 07:53:03', 337, 24, '17:22:58', 10.776442, 78.698982, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:53:13', '-1', '2015-09-28 07:53:13', 338, 24, '17:23:8', 10.776838, 78.700020, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:53:23', '-1', '2015-09-28 07:53:23', 339, 24, '17:23:18', 10.777161, 78.700928, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:53:33', '-1', '2015-09-28 07:53:33', 340, 24, '17:23:28', 10.777343, 78.702151, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:53:43', '-1', '2015-09-28 07:53:43', 341, 24, '17:23:38', 10.777397, 78.702876, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:53:53', '-1', '2015-09-28 07:53:53', 342, 24, '17:23:48', 10.777404, 78.702887, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:54:06', '-1', '2015-09-28 07:54:06', 343, 24, '17:23:59', 10.777405, 78.702888, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:54:15', '-1', '2015-09-28 07:54:15', 344, 24, '17:24:9', 10.777400, 78.702893, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:54:24', '-1', '2015-09-28 07:54:24', 345, 24, '17:24:19', 10.777071, 78.703080, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:54:34', '-1', '2015-09-28 07:54:34', 346, 24, '17:24:29', 10.776002, 78.703319, 'Ramanathapuram Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:54:44', '-1', '2015-09-28 07:54:44', 347, 24, '17:24:39', 10.774804, 78.703664, 'Ramanathapuram Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:54:54', '-1', '2015-09-28 07:54:54', 348, 24, '17:24:49', 10.773721, 78.703683, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:55:04', '-1', '2015-09-28 07:55:04', 349, 24, '17:24:59', 10.772603, 78.703627, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:55:14', '-1', '2015-09-28 07:55:14', 350, 24, '17:25:8', 10.771349, 78.703789, 'Ramanathapuram Rd, Lourde Nagar, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:55:24', '-1', '2015-09-28 07:55:24', 351, 24, '17:25:19', 10.770256, 78.703929, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:55:34', '-1', '2015-09-28 07:55:34', 352, 24, '17:25:29', 10.768820, 78.704189, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:55:44', '-1', '2015-09-28 07:55:44', 353, 24, '17:25:39', 10.767337, 78.704608, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:55:55', '-1', '2015-09-28 07:55:55', 354, 24, '17:25:49', 10.766176, 78.704913, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:56:04', '-1', '2015-09-28 07:56:04', 355, 24, '17:25:59', 10.764712, 78.705288, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:56:14', '-1', '2015-09-28 07:56:14', 356, 24, '17:26:9', 10.763262, 78.705674, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:56:24', '-1', '2015-09-28 07:56:24', 357, 24, '17:26:19', 10.761871, 78.706066, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:56:34', '-1', '2015-09-28 07:56:34', 358, 24, '17:26:28', 10.760716, 78.706425, 'Ramanathapuram Rd, Bharathi Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:56:44', '-1', '2015-09-28 07:56:44', 359, 24, '17:26:39', 10.760232, 78.706604, 'Ramanathapuram Rd, Bharathi Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:56:56', '-1', '2015-09-28 07:56:56', 360, 24, '17:26:48', 10.760240, 78.706615, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:57:06', '-1', '2015-09-28 07:57:06', 361, 24, '17:26:59', 10.760240, 78.706615, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:57:14', '-1', '2015-09-28 07:57:14', 362, 24, '17:27:9', 10.760192, 78.706634, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:57:24', '-1', '2015-09-28 07:57:24', 363, 24, '17:27:18', 10.759388, 78.706917, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:57:34', '-1', '2015-09-28 07:57:34', 364, 24, '17:27:28', 10.758220, 78.707352, 'Ramanathapuram Rd, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:57:44', '-1', '2015-09-28 07:57:44', 365, 24, '17:27:38', 10.756889, 78.707966, 'Ramanathapuram Rd, Anna Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:57:55', '-1', '2015-09-28 07:57:55', 366, 24, '17:27:49', 10.755502, 78.708700, 'Ramanathapuram Rd, Anna Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:58:04', '-1', '2015-09-28 07:58:04', 367, 24, '17:27:58', 10.753970, 78.709482, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:58:14', '-1', '2015-09-28 07:58:14', 368, 24, '17:28:8', 10.752510, 78.710190, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:58:24', '-1', '2015-09-28 07:58:24', 369, 24, '17:28:18', 10.751326, 78.710764, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:58:35', '-1', '2015-09-28 07:58:35', 370, 24, '17:28:29', 10.750077, 78.711383, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:58:44', '-1', '2015-09-28 07:58:44', 371, 24, '17:28:38', 10.748814, 78.712010, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:58:54', '-1', '2015-09-28 07:58:54', 372, 24, '17:28:48', 10.747516, 78.712666, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:59:04', '-1', '2015-09-28 07:59:04', 373, 24, '17:28:58', 10.746241, 78.713243, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:59:14', '-1', '2015-09-28 07:59:14', 374, 24, '17:29:8', 10.744965, 78.713887, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:59:24', '-1', '2015-09-28 07:59:24', 375, 24, '17:29:18', 10.743834, 78.714523, 'Ramanathapuram Rd, Ponmalai Patti, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:59:34', '-1', '2015-09-28 07:59:34', 376, 24, '17:29:28', 10.742902, 78.714997, 'Ramanathapuram Rd, Ponmalai Patti, Thirunagar, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:59:44', '-1', '2015-09-28 07:59:44', 377, 24, '17:29:38', 10.741576, 78.715653, 'Ramanathapuram Rd, Ponmalai Patti, Thiruvalarchi Patti, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 07:59:54', '-1', '2015-09-28 07:59:54', 378, 24, '17:29:48', 10.740188, 78.715947, 'Ramanathapuram Rd, Ponmalai Patti, Thiruvalarchi Patti, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:00:04', '-1', '2015-09-28 08:00:04', 379, 24, '17:29:58', 10.738778, 78.716198, 'Ramanathapuram Rd, Ponmalai Patti, Thiruvalarchi Patti, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:00:14', '-1', '2015-09-28 08:00:14', 380, 24, '17:30:8', 10.737344, 78.716472, 'Ramanathapuram Rd, Ponmalai Patti, Thiruvalarchi Patti, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:00:24', '-1', '2015-09-28 08:00:24', 381, 24, '17:30:18', 10.735893, 78.716771, 'Ramanathapuram Rd, Ponmalai Patti, Thiruvalarchi Patti, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:00:34', '-1', '2015-09-28 08:00:34', 382, 24, '17:30:28', 10.735006, 78.716954, 'Ramanathapuram Rd, Ponmalai Patti, Thiruvalarchi Patti, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:00:45', '-1', '2015-09-28 08:00:45', 383, 24, '17:30:39', 10.733681, 78.717279, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:00:54', '-1', '2015-09-28 08:00:54', 384, 24, '17:30:48', 10.732406, 78.717578, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:01:04', '-1', '2015-09-28 08:01:04', 385, 24, '17:30:58', 10.730996, 78.718110, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:01:14', '-1', '2015-09-28 08:01:14', 386, 24, '17:31:8', 10.730111, 78.718584, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:01:24', '-1', '2015-09-28 08:01:24', 387, 24, '17:31:18', 10.729516, 78.718857, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:01:34', '-1', '2015-09-28 08:01:34', 388, 24, '17:31:29', 10.728583, 78.719315, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:01:44', '-1', '2015-09-28 08:01:44', 389, 24, '17:31:38', 10.727284, 78.719789, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:01:54', '-1', '2015-09-28 08:01:54', 390, 24, '17:31:48', 10.725755, 78.720314, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:02:05', '-1', '2015-09-28 08:02:05', 391, 24, '17:31:59', 10.724137, 78.720877, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:02:14', '-1', '2015-09-28 08:02:14', 392, 24, '17:32:8', 10.722649, 78.721362, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:02:25', '-1', '2015-09-28 08:02:25', 393, 24, '17:32:19', 10.721227, 78.721868, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:02:34', '-1', '2015-09-28 08:02:34', 394, 24, '17:32:28', 10.719884, 78.722318, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:02:44', '-1', '2015-09-28 08:02:44', 395, 24, '17:32:38', 10.718613, 78.722730, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:02:54', '-1', '2015-09-28 08:02:54', 396, 24, '17:32:48', 10.717326, 78.723185, 'Ramanathapuram Rd, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:03:04', '-1', '2015-09-28 08:03:04', 397, 24, '17:32:58', 10.716183, 78.723615, 'Ramanathapuram Rd, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:03:14', '-1', '2015-09-28 08:03:14', 398, 24, '17:33:8', 10.714963, 78.724046, 'Ramanathapuram Rd, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:03:24', '-1', '2015-09-28 08:03:24', 399, 24, '17:33:18', 10.713730, 78.724509, 'Ramanathapuram Rd, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:03:34', '-1', '2015-09-28 08:03:34', 400, 24, '17:33:28', 10.712684, 78.724886, 'Ramanathapuram Rd, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:03:44', '-1', '2015-09-28 08:03:44', 401, 24, '17:33:38', 10.711645, 78.725253, 'Ramanathapuram Rd, Mathur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:03:54', '-1', '2015-09-28 08:03:54', 402, 24, '17:33:48', 10.710195, 78.725772, 'Ramanathapuram Rd, Mathur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:04:04', '-1', '2015-09-28 08:04:04', 403, 24, '17:33:58', 10.708642, 78.726257, 'Ramanathapuram Rd, Mathur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:04:14', '-1', '2015-09-28 08:04:14', 404, 24, '17:34:8', 10.707138, 78.727042, 'Ramanathapuram Rd, Mathur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:04:24', '-1', '2015-09-28 08:04:24', 405, 24, '17:34:18', 10.705727, 78.727849, 'Ramanathapuram Rd, Mathur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:04:34', '-1', '2015-09-28 08:04:34', 406, 24, '17:34:29', 10.704374, 78.728931, 'Ramanathapuram Rd, Mathur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:04:44', '-1', '2015-09-28 08:04:44', 407, 24, '17:34:39', 10.702977, 78.730038, 'Ramanathapuram Rd, Mathur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:04:54', '-1', '2015-09-28 08:04:54', 408, 24, '17:34:48', 10.701489, 78.731169, 'Ramanathapuram Rd, Mathur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:05:04', '-1', '2015-09-28 08:05:04', 409, 24, '17:34:59', 10.699716, 78.732142, 'Ramanathapuram Rd, Mathur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:05:14', '-1', '2015-09-28 08:05:14', 410, 24, '17:35:8', 10.697737, 78.732977, 'Ramanathapuram Rd, Mathur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:05:24', '-1', '2015-09-28 08:05:24', 411, 24, '17:35:18', 10.695653, 78.733861, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:05:34', '-1', '2015-09-28 08:05:34', 412, 24, '17:35:28', 10.693545, 78.734670, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:05:45', '-1', '2015-09-28 08:05:45', 413, 24, '17:35:39', 10.691280, 78.735320, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:05:54', '-1', '2015-09-28 08:05:54', 414, 24, '17:35:48', 10.689556, 78.735715, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:06:04', '-1', '2015-09-28 08:06:04', 415, 24, '17:35:58', 10.688229, 78.736020, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:06:14', '-1', '2015-09-28 08:06:14', 416, 24, '17:36:9', 10.686887, 78.736379, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:06:24', '-1', '2015-09-28 08:06:24', 417, 24, '17:36:18', 10.685180, 78.736796, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:06:34', '-1', '2015-09-28 08:06:34', 418, 24, '17:36:28', 10.683602, 78.737083, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:06:44', '-1', '2015-09-28 08:06:44', 419, 24, '17:36:38', 10.681966, 78.737308, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:06:54', '-1', '2015-09-28 08:06:54', 420, 24, '17:36:49', 10.680731, 78.737473, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:07:04', '-1', '2015-09-28 08:07:04', 421, 24, '17:36:58', 10.679723, 78.737614, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:07:18', '-1', '2015-09-28 08:07:18', 422, 24, '17:37:11', 10.678733, 78.737746, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:07:24', '-1', '2015-09-28 08:07:24', 423, 24, '17:37:18', 10.678371, 78.737777, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:07:40', '-1', '2015-09-28 08:07:40', 424, 24, '17:37:35', 10.678568, 78.737514, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:07:54', '-1', '2015-09-28 08:07:54', 425, 24, '17:37:48', 10.678758, 78.737281, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:08:06', '-1', '2015-09-28 08:08:06', 426, 24, '17:38:1', 10.678758, 78.737281, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:08:24', '-1', '2015-09-28 08:08:24', 427, 24, '17:38:19', 10.677214, 78.742617, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:08:28', '-1', '2015-09-28 08:08:28', 428, 24, '17:38:22', 10.677214, 78.742617, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:08:43', '-1', '2015-09-28 08:08:43', 429, 24, '17:38:36', 10.677214, 78.742618, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:08:57', '-1', '2015-09-28 08:08:57', 430, 24, '17:38:50', 10.677214, 78.742618, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:09:08', '-1', '2015-09-28 08:09:08', 431, 24, '17:39:0', 10.677214, 78.742618, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:09:16', '-1', '2015-09-28 08:09:16', 432, 24, '17:39:10', 10.677214, 78.742618, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:09:26', '-1', '2015-09-28 08:09:26', 433, 24, '17:39:19', 10.677873, 78.742204, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:09:34', '-1', '2015-09-28 08:09:34', 434, 24, '17:39:29', 10.677905, 78.741471, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:09:44', '-1', '2015-09-28 08:09:44', 435, 24, '17:39:39', 10.677913, 78.740493, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:09:54', '-1', '2015-09-28 08:09:54', 436, 24, '17:39:49', 10.677823, 78.739480, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:10:04', '-1', '2015-09-28 08:10:04', 437, 24, '17:39:59', 10.677893, 78.738658, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:10:15', '-1', '2015-09-28 08:10:15', 438, 24, '17:40:10', 10.677881, 78.738065, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:10:24', '-1', '2015-09-28 08:10:24', 439, 24, '17:40:19', 10.677962, 78.737887, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:10:34', '-1', '2015-09-28 08:10:34', 440, 24, '17:40:29', 10.678650, 78.737745, 'Bharatidasan University Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:10:44', '-1', '2015-09-28 08:10:44', 441, 24, '17:40:39', 10.679984, 78.737570, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:10:54', '-1', '2015-09-28 08:10:54', 442, 24, '17:40:49', 10.681594, 78.737361, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 620024, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:11:04', '-1', '2015-09-28 08:11:04', 443, 24, '17:40:59', 10.682892, 78.737178, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:11:14', '-1', '2015-09-28 08:11:14', 444, 24, '17:41:9', 10.684215, 78.736963, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:11:25', '-1', '2015-09-28 08:11:25', 445, 24, '17:41:19', 10.685501, 78.736720, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:11:34', '-1', '2015-09-28 08:11:34', 446, 24, '17:41:29', 10.686712, 78.736428, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:11:44', '-1', '2015-09-28 08:11:44', 447, 24, '17:41:39', 10.687779, 78.736132, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:11:54', '-1', '2015-09-28 08:11:54', 448, 24, '17:41:49', 10.689143, 78.735828, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:12:04', '-1', '2015-09-28 08:12:04', 449, 24, '17:41:59', 10.690897, 78.735389, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:12:14', '-1', '2015-09-28 08:12:14', 450, 24, '17:42:9', 10.692466, 78.734943, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:12:24', '-1', '2015-09-28 08:12:24', 451, 24, '17:42:19', 10.693946, 78.734559, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:12:34', '-1', '2015-09-28 08:12:34', 452, 24, '17:42:29', 10.695664, 78.733852, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:12:44', '-1', '2015-09-28 08:12:44', 453, 24, '17:42:39', 10.697350, 78.733116, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:12:54', '-1', '2015-09-28 08:12:54', 454, 24, '17:42:49', 10.699270, 78.732320, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:13:04', '-1', '2015-09-28 08:13:04', 455, 24, '17:42:59', 10.700708, 78.731539, 'Ramanathapuram Rd, Mathur, Mandaiyur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:13:14', '-1', '2015-09-28 08:13:14', 456, 24, '17:43:9', 10.702036, 78.730746, 'Ramanathapuram Rd, Mathur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:13:24', '-1', '2015-09-28 08:13:24', 457, 24, '17:43:19', 10.703024, 78.730001, 'Ramanathapuram Rd, Mathur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:13:34', '-1', '2015-09-28 08:13:34', 458, 24, '17:43:29', 10.703981, 78.729270, 'Ramanathapuram Rd, Mathur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:13:44', '-1', '2015-09-28 08:13:44', 459, 24, '17:43:39', 10.705214, 78.728339, 'Ramanathapuram Rd, Mathur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:13:54', '-1', '2015-09-28 08:13:54', 460, 24, '17:43:49', 10.706821, 78.727231, 'Ramanathapuram Rd, Mathur, Tamil Nadu 622515, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:14:04', '-1', '2015-09-28 08:14:04', 461, 24, '17:43:59', 10.708359, 78.726331, 'Ramanathapuram Rd, Mathur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:14:14', '-1', '2015-09-28 08:14:14', 462, 24, '17:44:9', 10.710201, 78.725769, 'Ramanathapuram Rd, Mathur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:14:24', '-1', '2015-09-28 08:14:24', 463, 24, '17:44:19', 10.711887, 78.725146, 'Ramanathapuram Rd, Mathur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:14:34', '-1', '2015-09-28 08:14:34', 464, 24, '17:44:29', 10.713559, 78.724526, 'Ramanathapuram Rd, Mathur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:14:44', '-1', '2015-09-28 08:14:44', 465, 24, '17:44:39', 10.715122, 78.723948, 'Ramanathapuram Rd, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:14:54', '-1', '2015-09-28 08:14:54', 466, 24, '17:44:49', 10.716319, 78.723554, 'Ramanathapuram Rd, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:15:04', '-1', '2015-09-28 08:15:04', 467, 24, '17:44:59', 10.717593, 78.723090, 'Ramanathapuram Rd, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:15:14', '-1', '2015-09-28 08:15:14', 468, 24, '17:45:9', 10.719291, 78.722491, 'Ramanathapuram Rd, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:15:24', '-1', '2015-09-28 08:15:24', 469, 24, '17:45:19', 10.721055, 78.721897, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:15:34', '-1', '2015-09-28 08:15:34', 470, 24, '17:45:29', 10.722646, 78.721339, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:15:44', '-1', '2015-09-28 08:15:44', 471, 24, '17:45:39', 10.723795, 78.720947, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:15:55', '-1', '2015-09-28 08:15:55', 472, 24, '17:45:50', 10.724600, 78.720662, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:16:04', '-1', '2015-09-28 08:16:04', 473, 24, '17:45:59', 10.725847, 78.720249, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:16:14', '-1', '2015-09-28 08:16:14', 474, 24, '17:46:9', 10.727141, 78.719806, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:16:24', '-1', '2015-09-28 08:16:24', 475, 24, '17:46:19', 10.728260, 78.719436, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:16:34', '-1', '2015-09-28 08:16:34', 476, 24, '17:46:29', 10.729224, 78.718971, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:16:45', '-1', '2015-09-28 08:16:45', 477, 24, '17:46:39', 10.729703, 78.718698, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:16:54', '-1', '2015-09-28 08:16:54', 478, 24, '17:46:49', 10.730377, 78.718397, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:17:04', '-1', '2015-09-28 08:17:04', 479, 24, '17:46:59', 10.731375, 78.717912, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:17:14', '-1', '2015-09-28 08:17:14', 480, 24, '17:47:9', 10.732472, 78.717518, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:17:24', '-1', '2015-09-28 08:17:24', 481, 24, '17:47:19', 10.733708, 78.717251, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:17:34', '-1', '2015-09-28 08:17:34', 482, 24, '17:47:29', 10.734907, 78.716989, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:17:44', '-1', '2015-09-28 08:17:44', 483, 24, '17:47:39', 10.736528, 78.716630, 'Ramanathapuram Rd, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:17:54', '-1', '2015-09-28 08:17:54', 484, 24, '17:47:49', 10.738230, 78.716266, 'Ramanathapuram Rd, Ponmalai Patti, Thiruvalarchi Patti, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:18:04', '-1', '2015-09-28 08:18:04', 485, 24, '17:47:59', 10.739773, 78.716000, 'Ramanathapuram Rd, Ponmalai Patti, Thiruvalarchi Patti, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:18:14', '-1', '2015-09-28 08:18:14', 486, 24, '17:48:9', 10.741160, 78.715778, 'Ramanathapuram Rd, Ponmalai Patti, Thiruvalarchi Patti, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:18:24', '-1', '2015-09-28 08:18:24', 487, 24, '17:48:19', 10.742451, 78.715225, 'Ramanathapuram Rd, Ponmalai Patti, Thiruvalarchi Patti, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:18:35', '-1', '2015-09-28 08:18:35', 488, 24, '17:48:30', 10.743517, 78.714663, 'Ramanathapuram Rd, Ponmalai Patti, Thiruvalarchi Patti, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:18:44', '-1', '2015-09-28 08:18:44', 489, 24, '17:48:39', 10.743991, 78.714450, 'Ramanathapuram Rd, Ponmalai Patti, Thirunagar, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:18:54', '-1', '2015-09-28 08:18:54', 490, 24, '17:48:49', 10.745117, 78.713801, 'Ramanathapuram Rd, Ponmalai Patti, Thirunagar, Gundur, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:19:04', '-1', '2015-09-28 08:19:04', 491, 24, '17:48:59', 10.746404, 78.713173, 'Ramanathapuram Rd, Ponmalai Patti, Thirunagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:19:14', '-1', '2015-09-28 08:19:14', 492, 24, '17:49:9', 10.747640, 78.712600, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:19:24', '-1', '2015-09-28 08:19:24', 493, 24, '17:49:19', 10.748875, 78.711990, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:19:34', '-1', '2015-09-28 08:19:34', 494, 24, '17:49:29', 10.750317, 78.711270, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:19:44', '-1', '2015-09-28 08:19:44', 495, 24, '17:49:39', 10.751019, 78.710909, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:19:54', '-1', '2015-09-28 08:19:54', 496, 24, '17:49:49', 10.751691, 78.710544, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:20:04', '-1', '2015-09-28 08:20:04', 497, 24, '17:49:59', 10.752529, 78.710114, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:20:14', '-1', '2015-09-28 08:20:14', 498, 24, '17:50:9', 10.753814, 78.709455, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:20:24', '-1', '2015-09-28 08:20:24', 499, 24, '17:50:19', 10.755150, 78.708802, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:20:34', '-1', '2015-09-28 08:20:34', 500, 24, '17:50:29', 10.756477, 78.708079, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:20:44', '-1', '2015-09-28 08:20:44', 501, 24, '17:50:39', 10.757726, 78.707449, '7,Pasumai Nagar, Airport,, Ramanathapuram Rd, Pasumai Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:20:54', '-1', '2015-09-28 08:20:54', 502, 24, '17:50:49', 10.758972, 78.706995, 'Ramanathapuram Rd, Anna Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:21:04', '-1', '2015-09-28 08:21:04', 503, 24, '17:50:59', 10.759647, 78.706745, 'Ramanathapuram Rd, Anna Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:21:14', '-1', '2015-09-28 08:21:14', 504, 24, '17:51:9', 10.759645, 78.706759, 'Ramanathapuram Rd, Anna Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:21:24', '-1', '2015-09-28 08:21:24', 505, 24, '17:51:19', 10.759643, 78.706762, 'Ramanathapuram Rd, Anna Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:21:35', '-1', '2015-09-28 08:21:35', 506, 24, '17:51:29', 10.759643, 78.706762, 'Ramanathapuram Rd, Anna Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:21:44', '-1', '2015-09-28 08:21:44', 507, 24, '17:51:39', 10.759799, 78.706707, 'Ramanathapuram Rd, Anna Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:21:54', '-1', '2015-09-28 08:21:54', 508, 24, '17:51:49', 10.760620, 78.706391, 'Ramanathapuram Rd, Anna Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:22:04', '-1', '2015-09-28 08:22:04', 509, 24, '17:51:59', 10.761876, 78.706012, 'Ramanathapuram Rd, Bharathi Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:22:14', '-1', '2015-09-28 08:22:14', 510, 24, '17:52:9', 10.763239, 78.705642, 'Ramanathapuram Rd, Bharathi Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:22:24', '-1', '2015-09-28 08:22:24', 511, 24, '17:52:19', 10.764755, 78.705211, 'Ramanathapuram Rd, Bharathi Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:22:34', '-1', '2015-09-28 08:22:34', 512, 24, '17:52:29', 10.766422, 78.704761, 'Ramanathapuram Rd, Bharathi Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:22:44', '-1', '2015-09-28 08:22:44', 513, 24, '17:52:39', 10.768165, 78.704319, 'Ramanathapuram Rd, Bharathi Nagar, KK Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:22:54', '-1', '2015-09-28 08:22:54', 514, 24, '17:52:49', 10.769716, 78.703869, 'Ramanathapuram Rd, KK Nagar, Tiruchirappalli, Tamil Nadu 620007, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:23:04', '-1', '2015-09-28 08:23:04', 515, 24, '17:52:59', 10.771135, 78.703736, 'Ramanathapuram Rd, Lourde Nagar, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:23:14', '-1', '2015-09-28 08:23:14', 516, 24, '17:53:9', 10.772762, 78.703598, 'Ramanathapuram Rd, Lourde Nagar, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:23:24', '-1', '2015-09-28 08:23:24', 517, 24, '17:53:19', 10.774353, 78.703678, 'Ramanathapuram Rd, Lourde Nagar, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:23:34', '-1', '2015-09-28 08:23:34', 518, 24, '17:53:29', 10.775855, 78.703301, 'Ramanathapuram Rd, Kajamalai, Thirunagar, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:23:44', '-1', '2015-09-28 08:23:44', 519, 24, '17:53:39', 10.777047, 78.702994, 'Ramanathapuram Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:23:55', '-1', '2015-09-28 08:23:55', 520, 24, '17:53:50', 10.777394, 78.702829, 'Ramanathapuram Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:24:04', '-1', '2015-09-28 08:24:04', 521, 24, '17:53:59', 10.777325, 78.702037, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:24:14', '-1', '2015-09-28 08:24:14', 522, 24, '17:54:9', 10.777201, 78.701072, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:24:24', '-1', '2015-09-28 08:24:24', 523, 24, '17:54:19', 10.776974, 78.700357, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:24:34', '-1', '2015-09-28 08:24:34', 524, 24, '17:54:29', 10.776635, 78.699461, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:24:44', '-1', '2015-09-28 08:24:44', 525, 24, '17:54:39', 10.776321, 78.698632, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:24:54', '-1', '2015-09-28 08:24:54', 526, 24, '17:54:49', 10.776076, 78.698137, 'Kozhipannai Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:25:04', '-1', '2015-09-28 08:25:04', 527, 24, '17:54:59', 10.775391, 78.697913, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:25:14', '-1', '2015-09-28 08:25:14', 528, 24, '17:55:9', 10.774807, 78.697617, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:25:24', '-1', '2015-09-28 08:25:24', 529, 24, '17:55:19', 10.774387, 78.696839, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:25:34', '-1', '2015-09-28 08:25:34', 530, 24, '17:55:29', 10.774561, 78.695998, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:25:59', '-1', '2015-09-28 08:25:59', 531, 24, '17:55:52', 10.774314, 78.695803, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:26:11', '-1', '2015-09-28 08:26:11', 532, 24, '17:56:5', 10.774287, 78.695690, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:26:25', '-1', '2015-09-28 08:26:25', 533, 24, '17:56:19', 10.775830, 78.694135, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:26:35', '-1', '2015-09-28 08:26:35', 534, 24, '17:56:28', 10.775830, 78.694135, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:26:50', '-1', '2015-09-28 08:26:50', 535, 24, '17:56:42', 10.777653, 78.691927, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:27:00', '-1', '2015-09-28 08:27:00', 536, 24, '17:56:51', 10.777723, 78.691850, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:27:08', '-1', '2015-09-28 08:27:08', 537, 24, '17:57:1', 10.777955, 78.691561, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:27:21', '-1', '2015-09-28 08:27:21', 538, 24, '17:57:14', 10.781269, 78.689386, 'Race Course Road, Lourdhusamy Pillai Colony, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:27:29', '-1', '2015-09-28 08:27:29', 539, 24, '17:57:24', 10.781270, 78.689387, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:27:37', '-1', '2015-09-28 08:27:37', 540, 24, '17:57:32', 10.781270, 78.689387, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:27:47', '-1', '2015-09-28 08:27:47', 541, 24, '17:57:42', 10.781417, 78.689004, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:27:57', '-1', '2015-09-28 08:27:57', 542, 24, '17:57:52', 10.780842, 78.688717, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:28:07', '-1', '2015-09-28 08:28:07', 543, 24, '17:58:2', 10.780019, 78.688273, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:28:17', '-1', '2015-09-28 08:28:17', 544, 24, '17:58:12', 10.779147, 78.687876, 'Race Course Road, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:28:27', '-1', '2015-09-28 08:28:27', 545, 24, '17:58:22', 10.778447, 78.687501, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:28:37', '-1', '2015-09-28 08:28:37', 546, 24, '17:58:32', 10.778122, 78.687333, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:28:47', '-1', '2015-09-28 08:28:47', 547, 24, '17:58:42', 10.778211, 78.686920, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:28:57', '-1', '2015-09-28 08:28:57', 548, 24, '17:58:52', 10.778349, 78.686227, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:29:07', '-1', '2015-09-28 08:29:07', 549, 24, '17:59:2', 10.778479, 78.685778, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:29:17', '-1', '2015-09-28 08:29:17', 550, 24, '17:59:12', 10.778315, 78.685618, 'Noor Mahal Rd, Kajamalai, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620020, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:29:27', '-1', '2015-09-28 08:29:27', 551, 24, '17:59:22', 10.777445, 78.685409, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:29:37', '-1', '2015-09-28 08:29:37', 552, 24, '17:59:32', 10.776430, 78.685255, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:29:47', '-1', '2015-09-28 08:29:47', 553, 24, '17:59:42', 10.775570, 78.685122, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:29:57', '-1', '2015-09-28 08:29:57', 554, 24, '17:59:52', 10.775066, 78.685073, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:30:07', '-1', '2015-09-28 08:30:07', 555, 24, '18:0:2', 10.774646, 78.685023, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:30:17', '-1', '2015-09-28 08:30:17', 556, 24, '18:0:12', 10.773819, 78.684913, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:30:27', '-1', '2015-09-28 08:30:27', 557, 24, '18:0:22', 10.773142, 78.684832, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:30:37', '-1', '2015-09-28 08:30:37', 558, 24, '18:0:32', 10.772470, 78.684696, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:30:47', '-1', '2015-09-28 08:30:47', 559, 24, '18:0:42', 10.772229, 78.684664, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:30:57', '-1', '2015-09-28 08:30:57', 560, 24, '18:0:52', 10.772234, 78.684471, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:31:08', '-1', '2015-09-28 08:31:08', 561, 24, '18:1:3', 10.772370, 78.684114, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:31:17', '-1', '2015-09-28 08:31:17', 562, 24, '18:1:12', 10.772504, 78.683905, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:31:27', '-1', '2015-09-28 08:31:27', 563, 24, '18:1:22', 10.772650, 78.683577, 'Sathanoor Main Rd, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620023, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:31:37', '-1', '2015-09-28 08:31:37', 564, 24, '18:1:32', 10.772962, 78.682982, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:31:47', '-1', '2015-09-28 08:31:47', 565, 24, '18:1:42', 10.773179, 78.682452, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:31:57', '-1', '2015-09-28 08:31:57', 566, 24, '18:1:52', 10.773407, 78.681911, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:32:07', '-1', '2015-09-28 08:32:07', 567, 24, '18:2:2', 10.773508, 78.681535, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:32:17', '-1', '2015-09-28 08:32:17', 568, 24, '18:2:12', 10.773661, 78.680966, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:32:27', '-1', '2015-09-28 08:32:27', 569, 24, '18:2:22', 10.774082, 78.680943, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:32:37', '-1', '2015-09-28 08:32:37', 570, 24, '18:2:32', 10.774561, 78.681055, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:32:47', '-1', '2015-09-28 08:32:47', 571, 24, '18:2:42', 10.774898, 78.681093, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:32:57', '-1', '2015-09-28 08:32:57', 572, 24, '18:2:52', 10.774885, 78.681450, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:33:11', '-1', '2015-09-28 08:33:11', 573, 24, '18:3:6', 10.774864, 78.681524, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:33:21', '-1', '2015-09-28 08:33:21', 574, 24, '18:3:16', 10.774693, 78.681188, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:33:31', '-1', '2015-09-28 08:33:31', 575, 24, '18:3:26', 10.774700, 78.681246, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:33:37', '-1', '2015-09-28 08:33:37', 576, 24, '18:3:32', 10.774705, 78.681293, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:33:47', '-1', '2015-09-28 08:33:47', 577, 24, '18:3:42', 10.774786, 78.681508, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:33:57', '-1', '2015-09-28 08:33:57', 578, 24, '18:3:52', 10.774819, 78.681532, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:34:12', '-1', '2015-09-28 08:34:12', 579, 24, '18:4:6', 10.774825, 78.681532, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:34:22', '-1', '2015-09-28 08:34:22', 580, 24, '18:4:16', 10.774768, 78.681505, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:34:34', '-1', '2015-09-28 08:34:34', 581, 24, '18:4:28', 10.774794, 78.681493, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:34:45', '-1', '2015-09-28 08:34:45', 582, 24, '18:4:39', 10.774783, 78.681489, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:34:55', '-1', '2015-09-28 08:34:55', 583, 24, '18:4:49', 10.774783, 78.681489, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:35:10', '-1', '2015-09-28 08:35:10', 584, 24, '18:5:5', 10.774782, 78.681489, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:35:22', '-1', '2015-09-28 08:35:22', 585, 24, '18:5:17', 10.774781, 78.681489, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:35:35', '-1', '2015-09-28 08:35:35', 586, 24, '18:5:28', 10.774782, 78.681489, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:35:44', '-1', '2015-09-28 08:35:44', 587, 24, '18:5:38', 10.774789, 78.681489, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:35:55', '-1', '2015-09-28 08:35:55', 588, 24, '18:5:50', 10.774848, 78.681483, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:36:05', '-1', '2015-09-28 08:36:05', 589, 24, '18:6:0', 10.774846, 78.681485, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:36:15', '-1', '2015-09-28 08:36:15', 590, 24, '18:6:10', 10.774849, 78.681467, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:36:25', '-1', '2015-09-28 08:36:25', 591, 24, '18:6:20', 10.774862, 78.681461, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:36:36', '-1', '2015-09-28 08:36:36', 592, 24, '18:6:31', 10.774855, 78.681474, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:36:46', '-1', '2015-09-28 08:36:46', 593, 24, '18:6:40', 10.774861, 78.681480, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:37:02', '-1', '2015-09-28 08:37:02', 594, 24, '18:6:56', 10.774859, 78.681479, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:37:12', '-1', '2015-09-28 08:37:12', 595, 24, '18:7:6', 10.774859, 78.681479, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:37:27', '-1', '2015-09-28 08:37:27', 596, 24, '18:7:22', 10.774859, 78.681479, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:37:38', '-1', '2015-09-28 08:37:38', 597, 24, '18:7:32', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:37:52', '-1', '2015-09-28 08:37:52', 598, 24, '18:7:46', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:38:04', '-1', '2015-09-28 08:38:04', 599, 24, '18:7:58', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:38:17', '-1', '2015-09-28 08:38:17', 600, 24, '18:8:11', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:38:28', '-1', '2015-09-28 08:38:28', 601, 24, '18:8:22', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:38:42', '-1', '2015-09-28 08:38:42', 602, 24, '18:8:36', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:38:54', '-1', '2015-09-28 08:38:54', 603, 24, '18:8:49', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:39:02', '-1', '2015-09-28 08:39:02', 604, 24, '18:8:56', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:39:16', '-1', '2015-09-28 08:39:16', 605, 24, '18:9:11', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:39:29', '-1', '2015-09-28 08:39:29', 606, 24, '18:9:23', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:39:40', '-1', '2015-09-28 08:39:40', 607, 24, '18:9:35', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:39:52', '-1', '2015-09-28 08:39:52', 608, 24, '18:9:46', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:40:06', '-1', '2015-09-28 08:40:06', 609, 24, '18:10:0', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:40:20', '-1', '2015-09-28 08:40:20', 610, 24, '18:10:14', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:40:31', '-1', '2015-09-28 08:40:31', 611, 24, '18:10:25', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:40:44', '-1', '2015-09-28 08:40:44', 612, 24, '18:10:38', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:40:54', '-1', '2015-09-28 08:40:54', 613, 24, '18:10:48', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:41:04', '-1', '2015-09-28 08:41:04', 614, 24, '18:10:58', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:41:19', '-1', '2015-09-28 08:41:19', 615, 24, '18:11:13', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:41:28', '-1', '2015-09-28 08:41:28', 616, 24, '18:11:23', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:41:42', '-1', '2015-09-28 08:41:42', 617, 24, '18:11:37', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:41:52', '-1', '2015-09-28 08:41:52', 618, 24, '18:11:47', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:42:07', '-1', '2015-09-28 08:42:07', 619, 24, '18:12:2', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:42:18', '-1', '2015-09-28 08:42:18', 620, 24, '18:12:12', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:42:31', '-1', '2015-09-28 08:42:31', 621, 24, '18:12:25', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:42:42', '-1', '2015-09-28 08:42:42', 622, 24, '18:12:36', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:42:53', '-1', '2015-09-28 08:42:53', 623, 24, '18:12:47', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:43:05', '-1', '2015-09-28 08:43:05', 624, 24, '18:12:59', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:43:20', '-1', '2015-09-28 08:43:20', 625, 24, '18:13:13', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:43:30', '-1', '2015-09-28 08:43:30', 626, 24, '18:13:24', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:43:36', '-1', '2015-09-28 08:43:36', 627, 24, '18:13:31', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:43:51', '-1', '2015-09-28 08:43:51', 628, 24, '18:13:46', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:44:05', '-1', '2015-09-28 08:44:05', 629, 24, '18:13:59', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:44:18', '-1', '2015-09-28 08:44:18', 630, 24, '18:14:12', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:44:33', '-1', '2015-09-28 08:44:33', 631, 24, '18:14:27', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:44:42', '-1', '2015-09-28 08:44:42', 632, 24, '18:14:37', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:44:56', '-1', '2015-09-28 08:44:56', 633, 24, '18:14:50', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:45:06', '-1', '2015-09-28 08:45:06', 634, 24, '18:15:0', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:45:20', '-1', '2015-09-28 08:45:20', 635, 24, '18:15:15', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:45:31', '-1', '2015-09-28 08:45:31', 636, 24, '18:15:25', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:45:46', '-1', '2015-09-28 08:45:46', 637, 24, '18:15:40', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:45:55', '-1', '2015-09-28 08:45:55', 638, 24, '18:15:50', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:46:09', '-1', '2015-09-28 08:46:09', 639, 24, '18:16:3', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:46:19', '-1', '2015-09-28 08:46:19', 640, 24, '18:16:13', 10.774731, 78.681511, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:46:29', '-1', '2015-09-28 08:46:29', 641, 24, '18:16:23', 10.774716, 78.681588, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:46:39', '-1', '2015-09-28 08:46:39', 642, 24, '18:16:33', 10.774713, 78.681605, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:46:45', '-1', '2015-09-28 08:46:45', 643, 24, '18:16:39', 10.774713, 78.681605, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:46:55', '-1', '2015-09-28 08:46:55', 644, 24, '18:16:50', 10.774859, 78.681461, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:47:05', '-1', '2015-09-28 08:47:05', 645, 24, '18:17:0', 10.774893, 78.681460, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:47:17', '-1', '2015-09-28 08:47:17', 646, 24, '18:17:9', 10.774862, 78.681474, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:47:25', '-1', '2015-09-28 08:47:25', 647, 24, '18:17:19', 10.774876, 78.681476, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:47:35', '-1', '2015-09-28 08:47:35', 648, 24, '18:17:30', 10.774878, 78.681487, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:47:45', '-1', '2015-09-28 08:47:45', 649, 24, '18:17:40', 10.774887, 78.681481, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:47:55', '-1', '2015-09-28 08:47:55', 650, 24, '18:17:49', 10.774887, 78.681481, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:48:05', '-1', '2015-09-28 08:48:05', 651, 24, '18:18:0', 10.774890, 78.681476, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:48:27', '-1', '2015-09-28 08:48:27', 652, 24, '18:18:9', 10.774912, 78.681135, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:48:27', '-1', '2015-09-28 08:48:27', 653, 24, '18:18:20', 10.774435, 78.680999, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2015-09-28 08:48:37', '-1', '2015-09-28 08:48:37', 654, 24, '18:18:31', 10.774435, 78.680999, 'Bharathi Street, Ganesh Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-28 01:13:03', '-1', '2016-01-28 01:13:03', 655, 25, '11:43:1', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-28 01:13:16', '-1', '2016-01-28 01:13:16', 656, 25, '11:43:12', 10.767448, 78.683746, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-28 01:13:28', '-1', '2016-01-28 01:13:28', 657, 25, '11:43:24', 10.767443, 78.683749, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-28 01:13:38', '-1', '2016-01-28 01:13:38', 658, 25, '11:43:35', 10.767422, 78.683745, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-28 01:13:52', '-1', '2016-01-28 01:13:52', 659, 25, '11:43:48', 10.767426, 78.683746, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-28 01:14:04', '-1', '2016-01-28 01:14:04', 660, 25, '11:44:0', 10.767452, 78.683717, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-28 01:14:15', '-1', '2016-01-28 01:14:15', 661, 25, '11:44:12', 10.767374, 78.683719, 'Sathanoor Main Rd, Krishna Moorthy Nagar, Edamalaipatti Pudur, Tiruchirappalli, Tamil Nadu 620021, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-28 01:16:42', '-1', '2016-01-28 01:16:42', 662, 26, '11:47:11', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:37', '-1', '2016-01-29 09:21:37', 663, 27, '19:8:9', 12.948572, 77.688864, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:37', '-1', '2016-01-29 09:21:37', 664, 21, '19:8:29', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:37', '-1', '2016-01-29 09:21:37', 665, 21, '19:8:29', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:38', '-1', '2016-01-29 09:21:38', 666, 21, '19:8:49', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:38', '-1', '2016-01-29 09:21:38', 667, 21, '19:8:49', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:39', '-1', '2016-01-29 09:21:39', 668, 21, '19:9:9', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:39', '-1', '2016-01-29 09:21:39', 669, 21, '19:9:29', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:39', '-1', '2016-01-29 09:21:39', 670, 21, '19:9:49', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:40', '-1', '2016-01-29 09:21:40', 671, 21, '19:9:49', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:40', '-1', '2016-01-29 09:21:40', 672, 21, '19:9:29', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:40', '-1', '2016-01-29 09:21:40', 673, 21, '19:10:9', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:40', '-1', '2016-01-29 09:21:40', 674, 21, '19:10:9', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:40', '-1', '2016-01-29 09:21:40', 675, 21, '19:10:29', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:41', '-1', '2016-01-29 09:21:41', 676, 21, '19:10:29', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:41', '-1', '2016-01-29 09:21:41', 677, 21, '19:10:49', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:41', '-1', '2016-01-29 09:21:41', 678, 21, '19:10:49', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:41', '-1', '2016-01-29 09:21:41', 679, 21, '19:11:9', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:42', '-1', '2016-01-29 09:21:42', 680, 21, '19:11:9', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:42', '-1', '2016-01-29 09:21:42', 681, 21, '19:11:29', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:42', '-1', '2016-01-29 09:21:42', 682, 21, '19:11:29', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:43', '-1', '2016-01-29 09:21:43', 683, 21, '19:11:49', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:43', '-1', '2016-01-29 09:21:43', 684, 21, '19:11:49', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:43', '-1', '2016-01-29 09:21:43', 685, 21, '11:13:15', 12.927592, 77.668296, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:43', '-1', '2016-01-29 09:21:43', 686, 21, '11:13:25', 12.927488, 77.668325, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:44', '-1', '2016-01-29 09:21:44', 687, 21, '11:13:35', 12.927483, 77.668307, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:44', '-1', '2016-01-29 09:21:44', 688, 21, '11:13:45', 12.927397, 77.668398, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:44', '-1', '2016-01-29 09:21:44', 689, 21, '11:13:55', 12.927394, 77.668337, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:44', '-1', '2016-01-29 09:21:44', 690, 21, '11:14:5', 12.927399, 77.668279, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:45', '-1', '2016-01-29 09:21:45', 691, 21, '11:14:25', 12.927374, 77.668369, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:45', '-1', '2016-01-29 09:21:45', 692, 21, '11:16:52', 12.927304, 77.668546, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:46', '-1', '2016-01-29 09:21:46', 693, 21, '11:18:22', 12.927352, 77.668442, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:46', '-1', '2016-01-29 09:21:46', 694, 21, '11:18:22', 12.927352, 77.668442, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:46', '-1', '2016-01-29 09:21:46', 695, 21, '11:18:42', 12.927329, 77.668446, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:47', '-1', '2016-01-29 09:21:47', 696, 21, '11:18:42', 12.927329, 77.668446, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:47', '-1', '2016-01-29 09:21:47', 697, 21, '19:9:9', 12.948572, 77.688864, '132, Yemalur Main Rd, Kadubeesanahalli, Bengaluru, Karnataka 560037, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:47', '-1', '2016-01-29 09:21:47', 698, 21, '11:19:2', 12.927360, 77.668393, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:47', '-1', '2016-01-29 09:21:47', 699, 21, '11:19:2', 12.927360, 77.668393, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:48', '-1', '2016-01-29 09:21:48', 700, 21, '11:19:3', 12.927385, 77.668423, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:48', '-1', '2016-01-29 09:21:48', 701, 21, '11:19:22', 12.927296, 77.668441, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:48', '-1', '2016-01-29 09:21:48', 702, 21, '11:19:42', 12.927288, 77.668384, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:48', '-1', '2016-01-29 09:21:48', 703, 21, '11:19:42', 12.927288, 77.668384, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:49', '-1', '2016-01-29 09:21:49', 704, 21, '11:20:2', 12.927381, 77.668305, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:49', '-1', '2016-01-29 09:21:49', 705, 21, '11:20:2', 12.927381, 77.668305, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:49', '-1', '2016-01-29 09:21:49', 706, 21, '11:20:22', 12.927354, 77.668373, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:49', '-1', '2016-01-29 09:21:49', 707, 21, '11:20:22', 12.927354, 77.668373, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:50', '-1', '2016-01-29 09:21:50', 708, 21, '11:20:42', 12.927333, 77.668424, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:50', '-1', '2016-01-29 09:21:50', 709, 21, '11:20:42', 12.927333, 77.668424, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:50', '-1', '2016-01-29 09:21:50', 710, 21, '11:21:4', 12.927320, 77.668469, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:51', '-1', '2016-01-29 09:21:51', 711, 21, '11:21:4', 12.927320, 77.668469, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:51', '-1', '2016-01-29 09:21:51', 712, 21, '11:21:24', 12.927401, 77.668313, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:52', '-1', '2016-01-29 09:21:52', 713, 21, '11:21:38', 12.927401, 77.668313, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:52', '-1', '2016-01-29 09:21:52', 714, 21, '11:23:14', 12.927304, 77.668442, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:53', '-1', '2016-01-29 09:21:53', 715, 21, '11:24:21', 12.927420, 77.668257, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:54', '-1', '2016-01-29 09:21:54', 716, 21, '11:26:7', 12.927424, 77.668260, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:54', '-1', '2016-01-29 09:21:54', 717, 21, '11:26:19', 12.927412, 77.668271, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:54', '-1', '2016-01-29 09:21:54', 718, 21, '11:26:38', 12.927413, 77.668272, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:54', '-1', '2016-01-29 09:21:54', 719, 21, '11:26:53', 12.927421, 77.668267, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:55', '-1', '2016-01-29 09:21:55', 720, 21, '11:27:13', 12.927435, 77.668276, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:55', '-1', '2016-01-29 09:21:55', 721, 21, '11:27:13', 12.927435, 77.668276, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:55', '-1', '2016-01-29 09:21:55', 722, 21, '11:27:34', 12.927401, 77.668336, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:56', '-1', '2016-01-29 09:21:56', 723, 21, '11:27:34', 12.927401, 77.668336, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:56', '-1', '2016-01-29 09:21:56', 724, 21, '11:27:49', 12.927385, 77.668361, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:56', '-1', '2016-01-29 09:21:56', 725, 21, '11:28:8', 12.927393, 77.668342, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:56', '-1', '2016-01-29 09:21:56', 726, 21, '11:28:29', 12.927377, 77.668333, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:57', '-1', '2016-01-29 09:21:57', 727, 21, '11:28:44', 12.927391, 77.668300, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:57', '-1', '2016-01-29 09:21:57', 728, 21, '11:29:14', 12.927369, 77.668347, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:57', '-1', '2016-01-29 09:21:57', 729, 21, '11:29:25', 12.927380, 77.668399, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:58', '-1', '2016-01-29 09:21:58', 730, 21, '11:29:34', 12.927380, 77.668399, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:58', '-1', '2016-01-29 09:21:58', 731, 21, '11:31:41', 12.927401, 77.668349, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:58', '-1', '2016-01-29 09:21:58', 732, 21, '11:32:1', 12.927358, 77.668382, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:58', '-1', '2016-01-29 09:21:58', 733, 21, '11:32:12', 12.927408, 77.668301, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:59', '-1', '2016-01-29 09:21:59', 734, 21, '11:32:24', 12.927330, 77.668440, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:21:59', '-1', '2016-01-29 09:21:59', 735, 21, '11:32:44', 12.927353, 77.668432, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:00', '-1', '2016-01-29 09:22:00', 736, 21, '11:32:44', 12.927353, 77.668432, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:00', '-1', '2016-01-29 09:22:00', 737, 21, '11:32:54', 12.927396, 77.668356, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:00', '-1', '2016-01-29 09:22:00', 738, 21, '11:33:8', 12.927375, 77.668398, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:01', '-1', '2016-01-29 09:22:01', 739, 21, '11:33:19', 12.927392, 77.668363, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:01', '-1', '2016-01-29 09:22:01', 740, 21, '11:33:30', 12.927390, 77.668374, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:01', '-1', '2016-01-29 09:22:01', 741, 21, '11:33:43', 12.927413, 77.668326, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:01', '-1', '2016-01-29 09:22:01', 742, 21, '11:34:3', 12.927397, 77.668320, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:02', '-1', '2016-01-29 09:22:02', 743, 21, '11:34:3', 12.927397, 77.668320, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:02', '-1', '2016-01-29 09:22:02', 744, 21, '11:34:12', 12.927294, 77.668409, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:02', '-1', '2016-01-29 09:22:02', 745, 21, '11:36:34', 12.927350, 77.668316, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:03', '-1', '2016-01-29 09:22:03', 746, 21, '11:36:34', 12.927350, 77.668316, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:03', '-1', '2016-01-29 09:22:03', 747, 21, '11:36:34', 12.927350, 77.668316, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:03', '-1', '2016-01-29 09:22:03', 748, 21, '11:36:34', 12.927350, 77.668316, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:03', '-1', '2016-01-29 09:22:03', 749, 21, '11:36:34', 12.927350, 77.668316, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:04', '-1', '2016-01-29 09:22:04', 750, 21, '11:36:34', 12.927350, 77.668316, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:04', '-1', '2016-01-29 09:22:04', 751, 21, '11:36:34', 12.927350, 77.668316, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:04', '-1', '2016-01-29 09:22:04', 752, 21, '11:36:34', 12.927350, 77.668316, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:04', '-1', '2016-01-29 09:22:04', 753, 21, '11:36:34', 12.927350, 77.668316, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:05', '-1', '2016-01-29 09:22:05', 754, 21, '11:36:34', 12.927350, 77.668316, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:05', '-1', '2016-01-29 09:22:05', 755, 21, '11:36:34', 12.927350, 77.668316, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:05', '-1', '2016-01-29 09:22:05', 756, 21, '11:36:34', 12.927350, 77.668316, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:06', '-1', '2016-01-29 09:22:06', 757, 21, '11:37:54', 12.927359, 77.668430, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:06', '-1', '2016-01-29 09:22:06', 758, 21, '11:37:54', 12.927359, 77.668430, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:06', '-1', '2016-01-29 09:22:06', 759, 21, '11:37:54', 12.927359, 77.668430, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:06', '-1', '2016-01-29 09:22:06', 760, 21, '11:37:54', 12.927359, 77.668430, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:07', '-1', '2016-01-29 09:22:07', 761, 21, '11:38:40', 12.927355, 77.668396, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:07', '-1', '2016-01-29 09:22:07', 762, 21, '11:38:40', 12.927355, 77.668396, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:07', '-1', '2016-01-29 09:22:07', 763, 21, '11:39:1', 12.927335, 77.668440, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:08', '-1', '2016-01-29 09:22:08', 764, 21, '11:41:18', 12.927364, 77.668377, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:08', '-1', '2016-01-29 09:22:08', 765, 21, '11:41:28', 12.927338, 77.668428, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:09', '-1', '2016-01-29 09:22:09', 766, 21, '11:41:38', 12.927329, 77.668442, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:09', '-1', '2016-01-29 09:22:09', 767, 21, '11:42:33', 12.927350, 77.668397, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:09', '-1', '2016-01-29 09:22:09', 768, 21, '11:42:53', 12.927322, 77.668394, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:09', '-1', '2016-01-29 09:22:09', 769, 21, '11:43:58', 12.927335, 77.668366, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:10', '-1', '2016-01-29 09:22:10', 770, 21, '11:45:26', 12.927322, 77.668371, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:10', '-1', '2016-01-29 09:22:10', 771, 21, '11:46:41', 12.927419, 77.668276, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:10', '-1', '2016-01-29 09:22:10', 772, 21, '11:46:41', 12.927419, 77.668276, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:11', '-1', '2016-01-29 09:22:11', 773, 21, '11:46:53', 12.927412, 77.668320, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:11', '-1', '2016-01-29 09:22:11', 774, 21, '11:47:9', 12.927411, 77.668405, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:11', '-1', '2016-01-29 09:22:11', 775, 21, '11:48:39', 12.927367, 77.668405, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:11', '-1', '2016-01-29 09:22:11', 776, 21, '11:48:59', 12.927425, 77.668286, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:12', '-1', '2016-01-29 09:22:12', 777, 21, '11:49:19', 12.927423, 77.668277, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:12', '-1', '2016-01-29 09:22:12', 778, 21, '11:49:19', 12.927423, 77.668277, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:12', '-1', '2016-01-29 09:22:12', 779, 21, '11:49:39', 12.927414, 77.668290, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:12', '-1', '2016-01-29 09:22:12', 780, 21, '11:49:39', 12.927414, 77.668290, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:13', '-1', '2016-01-29 09:22:13', 781, 21, '11:49:57', 12.927414, 77.668290, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:13', '-1', '2016-01-29 09:22:13', 782, 21, '11:50:10', 12.927410, 77.668302, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:13', '-1', '2016-01-29 09:22:13', 783, 21, '11:50:29', 12.927343, 77.668353, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:13', '-1', '2016-01-29 09:22:13', 784, 21, '11:50:50', 12.927364, 77.668374, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:14', '-1', '2016-01-29 09:22:14', 785, 21, '11:50:50', 12.927364, 77.668374, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:14', '-1', '2016-01-29 09:22:14', 786, 21, '11:51:10', 12.927354, 77.668401, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:14', '-1', '2016-01-29 09:22:14', 787, 21, '11:51:10', 12.927354, 77.668401, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:15', '-1', '2016-01-29 09:22:15', 788, 21, '11:51:30', 12.927358, 77.668426, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:15', '-1', '2016-01-29 09:22:15', 789, 21, '11:51:30', 12.927358, 77.668426, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:15', '-1', '2016-01-29 09:22:15', 790, 21, '11:51:50', 12.927352, 77.668434, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:15', '-1', '2016-01-29 09:22:15', 791, 21, '11:52:0', 12.927337, 77.668475, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:16', '-1', '2016-01-29 09:22:16', 792, 21, '11:52:10', 12.927421, 77.668260, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:16', '-1', '2016-01-29 09:22:16', 793, 21, '11:52:21', 12.927420, 77.668273, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:16', '-1', '2016-01-29 09:22:16', 794, 21, '11:52:30', 12.927414, 77.668263, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:16', '-1', '2016-01-29 09:22:16', 795, 21, '11:52:40', 12.927407, 77.668383, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:17', '-1', '2016-01-29 09:22:17', 796, 21, '11:52:50', 12.927400, 77.668268, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:17', '-1', '2016-01-29 09:22:17', 797, 21, '11:53:0', 12.927359, 77.668338, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:17', '-1', '2016-01-29 09:22:17', 798, 21, '11:53:10', 12.927418, 77.668266, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:17', '-1', '2016-01-29 09:22:17', 799, 21, '11:53:20', 12.927375, 77.668301, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:18', '-1', '2016-01-29 09:22:18', 800, 21, '11:53:30', 12.927362, 77.668310, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:18', '-1', '2016-01-29 09:22:18', 801, 27, '19:51:56', 12.920868, 77.665707, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:18', '-1', '2016-01-29 09:22:18', 802, 27, '19:51:56', 12.920868, 77.665707, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:19', '-1', '2016-01-29 09:22:19', 803, 27, '19:52:7', 12.920761, 77.665970, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:19', '-1', '2016-01-29 09:22:19', 804, 27, '19:51:56', 12.920868, 77.665707, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:19', '-1', '2016-01-29 09:22:19', 805, 27, '19:52:7', 12.920761, 77.665970, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:20', '-1', '2016-01-29 09:22:20', 806, 27, '19:52:24', 12.920457, 77.666239, 'Marathahalli - Sarjapur Outer Ring Rd, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:20', '-1', '2016-01-29 09:22:20', 807, 27, '19:51:56', 12.920868, 77.665707, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:20', '-1', '2016-01-29 09:22:20', 808, 27, '19:52:7', 12.920761, 77.665970, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:21', '-1', '2016-01-29 09:22:21', 809, 27, '19:52:24', 12.920457, 77.666239, 'Marathahalli - Sarjapur Outer Ring Rd, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-29 09:22:21', '-1', '2016-01-29 09:22:21', 810, 27, '19:52:24', 12.920457, 77.666239, 'Marathahalli - Sarjapur Outer Ring Rd, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:13:31', '-1', '2016-01-30 06:13:31', 811, 28, '16:43:38', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:13:44', '-1', '2016-01-30 06:13:44', 812, 28, '16:43:51', 12.927017, 77.668142, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:14:02', '-1', '2016-01-30 06:14:02', 813, 28, '16:44:8', 12.926987, 77.668199, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:14:02', '-1', '2016-01-30 06:14:02', 814, 28, '16:44:8', 12.926987, 77.668199, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:14:02', '-1', '2016-01-30 06:14:02', 815, 28, '16:44:8', 12.926987, 77.668199, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:14:12', '-1', '2016-01-30 06:14:12', 816, 28, '16:44:18', 12.926891, 77.668048, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:14:21', '-1', '2016-01-30 06:14:21', 817, 28, '16:44:28', 12.926956, 77.668179, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:14:33', '-1', '2016-01-30 06:14:33', 818, 28, '16:44:39', 12.926956, 77.668202, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:14:42', '-1', '2016-01-30 06:14:42', 819, 28, '16:44:49', 12.927024, 77.668115, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:14:52', '-1', '2016-01-30 06:14:52', 820, 28, '16:44:59', 12.927040, 77.668138, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:15:02', '-1', '2016-01-30 06:15:02', 821, 28, '16:45:9', 12.927122, 77.668131, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:15:13', '-1', '2016-01-30 06:15:13', 822, 28, '16:45:19', 12.927123, 77.668116, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:15:22', '-1', '2016-01-30 06:15:22', 823, 28, '16:45:29', 12.927202, 77.668136, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:15:32', '-1', '2016-01-30 06:15:32', 824, 28, '16:45:39', 12.927176, 77.668126, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:15:42', '-1', '2016-01-30 06:15:42', 825, 28, '16:45:49', 12.927020, 77.668174, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:15:52', '-1', '2016-01-30 06:15:52', 826, 28, '16:45:59', 12.926955, 77.668273, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:16:02', '-1', '2016-01-30 06:16:02', 827, 28, '16:46:9', 12.926986, 77.668190, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:16:12', '-1', '2016-01-30 06:16:12', 828, 28, '16:46:19', 12.926991, 77.668166, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:16:21', '-1', '2016-01-30 06:16:21', 829, 28, '16:46:28', 12.927309, 77.667395, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:16:32', '-1', '2016-01-30 06:16:32', 830, 28, '16:46:38', 12.927187, 77.667736, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:16:42', '-1', '2016-01-30 06:16:42', 831, 28, '16:46:49', 12.927014, 77.668116, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:16:52', '-1', '2016-01-30 06:16:52', 832, 28, '16:46:59', 12.926985, 77.668134, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:17:02', '-1', '2016-01-30 06:17:02', 833, 28, '16:47:9', 12.926992, 77.668146, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:17:11', '-1', '2016-01-30 06:17:11', 834, 28, '16:47:19', 12.926908, 77.668294, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:17:22', '-1', '2016-01-30 06:17:22', 835, 28, '16:47:29', 12.926858, 77.668287, 'Siri Pristine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:17:31', '-1', '2016-01-30 06:17:31', 836, 28, '16:47:39', 12.926839, 77.668314, 'Siri Pristine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:17:41', '-1', '2016-01-30 06:17:41', 837, 28, '16:47:48', 12.926872, 77.668312, 'Siri Pristine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:17:52', '-1', '2016-01-30 06:17:52', 838, 28, '16:47:59', 12.926869, 77.668324, 'Siri Pristine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:18:02', '-1', '2016-01-30 06:18:02', 839, 28, '16:48:9', 12.926941, 77.668303, 'Siri Pristine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:18:12', '-1', '2016-01-30 06:18:12', 840, 28, '16:48:19', 12.926887, 77.668333, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:18:22', '-1', '2016-01-30 06:18:22', 841, 28, '16:48:29', 12.927053, 77.668189, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:19:03', '-1', '2016-01-30 06:19:03', 842, 28, '16:49:9', 12.926884, 77.668256, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:19:41', '-1', '2016-01-30 06:19:41', 843, 28, '16:49:48', 12.926901, 77.668256, 'Siri Pristine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:21:16', '-1', '2016-01-30 06:21:16', 844, 28, '16:51:23', 12.927478, 77.668215, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:21:24', '-1', '2016-01-30 06:21:24', 845, 28, '16:51:32', 12.927459, 77.668246, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:22:07', '-1', '2016-01-30 06:22:07', 846, 28, '16:52:15', 12.927428, 77.668240, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:24:53', '-1', '2016-01-30 06:24:53', 847, 28, '16:54:33', 12.927440, 77.668237, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:24:53', '-1', '2016-01-30 06:24:53', 848, 28, '16:55:1', 12.927463, 77.668241, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:25:20', '-1', '2016-01-30 06:25:20', 849, 28, '16:55:27', 12.927462, 77.668253, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:25:51', '-1', '2016-01-30 06:25:51', 850, 28, '16:55:59', 12.927400, 77.668228, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:26:23', '-1', '2016-01-30 06:26:23', 851, 28, '16:56:30', 12.927399, 77.668264, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:26:55', '-1', '2016-01-30 06:26:55', 852, 28, '16:57:2', 12.927291, 77.668398, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:29:02', '-1', '2016-01-30 06:29:02', 853, 28, '16:59:9', 12.927430, 77.668294, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:29:02', '-1', '2016-01-30 06:29:02', 854, 28, '16:59:9', 12.927430, 77.668294, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:29:02', '-1', '2016-01-30 06:29:02', 855, 28, '16:59:9', 12.927430, 77.668294, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:29:02', '-1', '2016-01-30 06:29:02', 856, 28, '16:59:9', 12.927430, 77.668294, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:29:02', '-1', '2016-01-30 06:29:02', 857, 28, '16:59:9', 12.927430, 77.668294, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:29:03', '-1', '2016-01-30 06:29:03', 858, 28, '16:59:9', 12.927430, 77.668294, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:29:30', '-1', '2016-01-30 06:29:30', 859, 28, '16:59:37', 12.927541, 77.668267, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:30:39', '-1', '2016-01-30 06:30:39', 860, 28, '17:0:45', 12.927534, 77.668292, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:32:47', '-1', '2016-01-30 06:32:47', 861, 28, '17:2:54', 12.927464, 77.668243, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:36:49', '-1', '2016-01-30 06:36:49', 862, 28, '17:6:56', 12.927421, 77.668275, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:38:35', '-1', '2016-01-30 06:38:35', 863, 28, '17:8:42', 12.927462, 77.668254, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:39:04', '-1', '2016-01-30 06:39:04', 864, 28, '17:9:11', 12.927453, 77.668210, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:40:01', '-1', '2016-01-30 06:40:01', 865, 28, '17:10:8', 12.927374, 77.668285, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-30 06:43:25', '-1', '2016-01-30 06:43:25', 866, 28, '17:13:32', 12.927435, 77.668251, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:54:20', '-1', '2016-01-31 03:54:20', 867, 29, '14:24:29', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:54:55', '-1', '2016-01-31 03:54:55', 868, 29, '14:24:59', 12.927388, 77.668231, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:54:55', '-1', '2016-01-31 03:54:55', 869, 29, '14:24:59', 12.927388, 77.668231, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:54:55', '-1', '2016-01-31 03:54:55', 870, 29, '14:24:59', 12.927388, 77.668231, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:55:11', '-1', '2016-01-31 03:55:11', 871, 29, '14:25:18', 12.927384, 77.668231, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:55:11', '-1', '2016-01-31 03:55:11', 872, 29, '14:25:18', 12.927384, 77.668231, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:55:11', '-1', '2016-01-31 03:55:11', 873, 29, '14:25:19', 12.927384, 77.668231, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:55:31', '-1', '2016-01-31 03:55:31', 874, 29, '14:25:39', 12.927416, 77.668222, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:55:31', '-1', '2016-01-31 03:55:31', 875, 29, '14:25:39', 12.927416, 77.668222, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:55:31', '-1', '2016-01-31 03:55:31', 876, 29, '14:25:39', 12.927416, 77.668222, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:55:51', '-1', '2016-01-31 03:55:51', 877, 29, '14:25:59', 12.927412, 77.668209, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:55:51', '-1', '2016-01-31 03:55:51', 878, 29, '14:25:59', 12.927412, 77.668209, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:55:51', '-1', '2016-01-31 03:55:51', 879, 29, '14:25:59', 12.927412, 77.668209, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:56:15', '-1', '2016-01-31 03:56:15', 880, 29, '14:26:19', 12.927369, 77.668274, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:56:15', '-1', '2016-01-31 03:56:15', 881, 29, '14:26:19', 12.927369, 77.668274, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:56:15', '-1', '2016-01-31 03:56:15', 882, 29, '14:26:19', 12.927369, 77.668274, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:56:15', '-1', '2016-01-31 03:56:15', 883, 29, '14:26:19', 12.927369, 77.668274, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:56:15', '-1', '2016-01-31 03:56:15', 884, 29, '14:26:19', 12.927369, 77.668274, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:56:15', '-1', '2016-01-31 03:56:15', 885, 29, '14:26:19', 12.927369, 77.668274, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:56:23', '-1', '2016-01-31 03:56:23', 886, 29, '14:26:30', 12.927300, 77.668342, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:56:32', '-1', '2016-01-31 03:56:32', 887, 29, '14:26:39', 12.927256, 77.668363, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:56:46', '-1', '2016-01-31 03:56:46', 888, 29, '14:26:50', 12.927276, 77.668347, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:56:55', '-1', '2016-01-31 03:56:55', 889, 29, '14:26:50', 12.927276, 77.668347, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:56:56', '-1', '2016-01-31 03:56:56', 890, 29, '14:27:0', 12.927251, 77.668364, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:57:09', '-1', '2016-01-31 03:57:09', 891, 29, '14:26:50', 12.927276, 77.668347, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:57:12', '-1', '2016-01-31 03:57:12', 892, 29, '14:27:0', 12.927251, 77.668364, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:57:13', '-1', '2016-01-31 03:57:13', 893, 29, '14:27:20', 12.927280, 77.668361, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:57:20', '-1', '2016-01-31 03:57:20', 894, 29, '14:27:0', 12.927251, 77.668364, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:57:20', '-1', '2016-01-31 03:57:20', 895, 29, '14:27:10', 12.927268, 77.668359, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:57:21', '-1', '2016-01-31 03:57:21', 896, 29, '14:26:50', 12.927276, 77.668347, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:57:22', '-1', '2016-01-31 03:57:22', 897, 29, '14:27:30', 12.927319, 77.668333, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:57:32', '-1', '2016-01-31 03:57:32', 898, 29, '14:27:40', 12.927275, 77.668357, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:57:43', '-1', '2016-01-31 03:57:43', 899, 29, '14:27:50', 12.927436, 77.668230, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:57:51', '-1', '2016-01-31 03:57:51', 900, 29, '14:27:59', 12.927449, 77.668212, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:58:02', '-1', '2016-01-31 03:58:02', 901, 29, '14:28:10', 12.927461, 77.668215, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:58:13', '-1', '2016-01-31 03:58:13', 902, 29, '14:28:20', 12.927394, 77.668230, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:58:22', '-1', '2016-01-31 03:58:22', 903, 29, '14:28:30', 12.927425, 77.668203, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:58:33', '-1', '2016-01-31 03:58:33', 904, 29, '14:28:40', 12.927461, 77.668222, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:58:43', '-1', '2016-01-31 03:58:43', 905, 29, '14:28:50', 12.927450, 77.668218, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:58:52', '-1', '2016-01-31 03:58:52', 906, 29, '14:29:0', 12.927453, 77.668215, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:59:03', '-1', '2016-01-31 03:59:03', 907, 29, '14:29:10', 12.927444, 77.668222, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:59:12', '-1', '2016-01-31 03:59:12', 908, 29, '14:29:20', 12.927370, 77.668282, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:59:22', '-1', '2016-01-31 03:59:22', 909, 29, '14:29:30', 12.927368, 77.668279, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:59:33', '-1', '2016-01-31 03:59:33', 910, 29, '14:29:40', 12.927368, 77.668279, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:59:42', '-1', '2016-01-31 03:59:42', 911, 29, '14:29:50', 12.927363, 77.668268, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 03:59:53', '-1', '2016-01-31 03:59:53', 912, 29, '14:30:1', 12.927444, 77.668200, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:00:03', '-1', '2016-01-31 04:00:03', 913, 29, '14:30:10', 12.927392, 77.668242, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:00:13', '-1', '2016-01-31 04:00:13', 914, 29, '14:30:21', 12.927345, 77.668311, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:00:23', '-1', '2016-01-31 04:00:23', 915, 29, '14:30:30', 12.927363, 77.668282, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:00:33', '-1', '2016-01-31 04:00:33', 916, 29, '14:30:40', 12.927376, 77.668271, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:00:42', '-1', '2016-01-31 04:00:42', 917, 29, '14:30:50', 12.927386, 77.668268, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:12', '-1', '2016-01-31 04:02:12', 918, 29, '14:31:4', 12.927343, 77.668309, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:12', '-1', '2016-01-31 04:02:12', 919, 29, '14:31:38', 12.927299, 77.668344, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:12', '-1', '2016-01-31 04:02:12', 920, 29, '14:31:58', 12.927299, 77.668344, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:12', '-1', '2016-01-31 04:02:12', 921, 29, '14:31:38', 12.927299, 77.668344, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:12', '-1', '2016-01-31 04:02:12', 922, 29, '14:31:17', 12.927364, 77.668286, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 923, 29, '14:32:20', 12.927243, 77.668369, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 924, 29, '14:31:17', 12.927364, 77.668286, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 925, 29, '14:31:38', 12.927299, 77.668344, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 926, 29, '14:31:4', 12.927343, 77.668309, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 927, 29, '14:31:38', 12.927299, 77.668344, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 928, 29, '14:31:58', 12.927299, 77.668344, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 929, 29, '14:31:58', 12.927299, 77.668344, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 930, 29, '14:32:20', 12.927243, 77.668369, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 931, 29, '14:31:4', 12.927343, 77.668309, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 932, 29, '14:32:20', 12.927243, 77.668369, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 933, 29, '14:31:58', 12.927299, 77.668344, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 934, 29, '14:31:17', 12.927364, 77.668286, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 935, 29, '14:31:38', 12.927299, 77.668344, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 936, 29, '14:31:38', 12.927299, 77.668344, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 937, 29, '14:31:58', 12.927299, 77.668344, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 938, 29, '14:31:58', 12.927299, 77.668344, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 939, 29, '14:32:20', 12.927243, 77.668369, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:13', '-1', '2016-01-31 04:02:13', 940, 29, '14:32:20', 12.927243, 77.668369, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:14', '-1', '2016-01-31 04:02:14', 941, 29, '14:32:20', 12.927243, 77.668369, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:22', '-1', '2016-01-31 04:02:22', 942, 29, '14:32:30', 12.927309, 77.668320, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:34', '-1', '2016-01-31 04:02:34', 943, 29, '14:32:42', 12.927228, 77.668389, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:43', '-1', '2016-01-31 04:02:43', 944, 29, '14:32:51', 12.927190, 77.668419, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:02:53', '-1', '2016-01-31 04:02:53', 945, 29, '14:33:1', 12.927221, 77.668434, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:03:04', '-1', '2016-01-31 04:03:04', 946, 29, '14:33:12', 12.927494, 77.668217, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:03:13', '-1', '2016-01-31 04:03:13', 947, 29, '14:33:21', 12.927468, 77.668211, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:03:23', '-1', '2016-01-31 04:03:23', 948, 29, '14:33:31', 12.927491, 77.668215, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:03:33', '-1', '2016-01-31 04:03:33', 949, 29, '14:33:41', 12.927384, 77.668296, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:06:13', '-1', '2016-01-31 04:06:13', 950, 29, '14:36:21', 12.927377, 77.668312, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:08:03', '-1', '2016-01-31 04:08:03', 951, 29, '14:38:11', 12.927376, 77.668290, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:09:05', '-1', '2016-01-31 04:09:05', 952, 29, '14:39:13', 12.927383, 77.668281, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:10:43', '-1', '2016-01-31 04:10:43', 953, 29, '14:40:51', 12.927434, 77.668200, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:10:44', '-1', '2016-01-31 04:10:44', 954, 29, '14:40:51', 12.927434, 77.668200, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:10:44', '-1', '2016-01-31 04:10:44', 955, 29, '14:40:51', 12.927434, 77.668200, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:11:00', '-1', '2016-01-31 04:11:00', 956, 29, '14:41:9', 12.927434, 77.668200, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:11:11', '-1', '2016-01-31 04:11:11', 957, 29, '14:41:19', 12.927435, 77.668205, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:11:31', '-1', '2016-01-31 04:11:31', 958, 29, '14:41:39', 12.927439, 77.668206, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:11:47', '-1', '2016-01-31 04:11:47', 959, 29, '14:41:54', 12.927439, 77.668206, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:12:07', '-1', '2016-01-31 04:12:07', 960, 29, '14:42:16', 12.927256, 77.668379, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:12:17', '-1', '2016-01-31 04:12:17', 961, 29, '14:42:25', 12.927269, 77.668373, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:12:37', '-1', '2016-01-31 04:12:37', 962, 29, '14:42:45', 12.927342, 77.668309, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:12:54', '-1', '2016-01-31 04:12:54', 963, 29, '14:43:2', 12.927346, 77.668320, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:13:03', '-1', '2016-01-31 04:13:03', 964, 29, '14:43:11', 12.927324, 77.668338, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:13:23', '-1', '2016-01-31 04:13:23', 965, 29, '14:43:31', 12.927339, 77.668325, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:13:43', '-1', '2016-01-31 04:13:43', 966, 29, '14:43:51', 12.927394, 77.668271, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:13:43', '-1', '2016-01-31 04:13:43', 967, 29, '14:43:51', 12.927394, 77.668271, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:13:43', '-1', '2016-01-31 04:13:43', 968, 29, '14:43:51', 12.927394, 77.668271, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:13:52', '-1', '2016-01-31 04:13:52', 969, 29, '14:44:0', 12.927324, 77.668325, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:14:12', '-1', '2016-01-31 04:14:12', 970, 29, '14:44:20', 12.927478, 77.668204, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:14:23', '-1', '2016-01-31 04:14:23', 971, 29, '14:44:30', 12.927478, 77.668204, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:14:38', '-1', '2016-01-31 04:14:38', 972, 29, '14:44:47', 12.927486, 77.668215, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:14:52', '-1', '2016-01-31 04:14:52', 973, 29, '14:45:0', 12.927486, 77.668215, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:15:44', '-1', '2016-01-31 04:15:44', 974, 29, '14:45:51', 12.927482, 77.668202, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:15:53', '-1', '2016-01-31 04:15:53', 975, 29, '14:46:1', 12.927483, 77.668208, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:16:04', '-1', '2016-01-31 04:16:04', 976, 29, '14:46:12', 12.927441, 77.668239, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:16:13', '-1', '2016-01-31 04:16:13', 977, 29, '14:46:21', 12.927438, 77.668218, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:16:23', '-1', '2016-01-31 04:16:23', 978, 29, '14:46:31', 12.927435, 77.668222, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:16:33', '-1', '2016-01-31 04:16:33', 979, 29, '14:46:41', 12.927438, 77.668218, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:16:43', '-1', '2016-01-31 04:16:43', 980, 29, '14:46:51', 12.927434, 77.668196, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:16:53', '-1', '2016-01-31 04:16:53', 981, 29, '14:47:1', 12.927444, 77.668244, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:17:03', '-1', '2016-01-31 04:17:03', 982, 29, '14:47:11', 12.927444, 77.668236, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:17:13', '-1', '2016-01-31 04:17:13', 983, 29, '14:47:21', 12.927446, 77.668237, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:17:23', '-1', '2016-01-31 04:17:23', 984, 29, '14:47:31', 12.927400, 77.668264, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:17:33', '-1', '2016-01-31 04:17:33', 985, 29, '14:47:41', 12.927376, 77.668273, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:17:43', '-1', '2016-01-31 04:17:43', 986, 29, '14:47:51', 12.927363, 77.668284, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:17:53', '-1', '2016-01-31 04:17:53', 987, 29, '14:48:1', 12.927359, 77.668323, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:18:03', '-1', '2016-01-31 04:18:03', 988, 29, '14:48:11', 12.927481, 77.668212, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:18:13', '-1', '2016-01-31 04:18:13', 989, 29, '14:48:21', 12.927477, 77.668215, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:18:23', '-1', '2016-01-31 04:18:23', 990, 29, '14:48:31', 12.927475, 77.668205, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:18:33', '-1', '2016-01-31 04:18:33', 991, 29, '14:48:41', 12.927459, 77.668217, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:18:43', '-1', '2016-01-31 04:18:43', 992, 29, '14:48:51', 12.927439, 77.668226, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:18:53', '-1', '2016-01-31 04:18:53', 993, 29, '14:49:1', 12.927397, 77.668270, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:19:03', '-1', '2016-01-31 04:19:03', 994, 29, '14:49:11', 12.927402, 77.668267, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:19:13', '-1', '2016-01-31 04:19:13', 995, 29, '14:49:21', 12.927394, 77.668271, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:19:23', '-1', '2016-01-31 04:19:23', 996, 29, '14:49:31', 12.927347, 77.668317, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:19:33', '-1', '2016-01-31 04:19:33', 997, 29, '14:49:41', 12.927417, 77.668220, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:19:43', '-1', '2016-01-31 04:19:43', 998, 29, '14:49:51', 12.927446, 77.668224, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:19:53', '-1', '2016-01-31 04:19:53', 999, 29, '14:50:1', 12.927468, 77.668202, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:20:03', '-1', '2016-01-31 04:20:03', 1000, 29, '14:50:11', 12.927467, 77.668196, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:20:13', '-1', '2016-01-31 04:20:13', 1001, 29, '14:50:21', 12.927458, 77.668200, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 04:20:23', '-1', '2016-01-31 04:20:23', 1002, 29, '14:50:31', 12.927496, 77.668216, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:33:08', '-1', '2016-01-31 05:33:08', 1003, 30, '16:3:16', 0.000000, 0.000000, NULL);
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:33:24', '-1', '2016-01-31 05:33:24', 1004, 30, '16:3:33', 12.927444, 77.668231, 'undefined');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:34:27', '-1', '2016-01-31 05:34:27', 1005, 30, '16:4:34', 12.927425, 77.668245, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:35:07', '-1', '2016-01-31 05:35:07', 1006, 30, '16:5:15', 12.926527, 77.668582, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:36:53', '-1', '2016-01-31 05:36:53', 1007, 30, '16:6:16', 12.927474, 77.668238, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:36:53', '-1', '2016-01-31 05:36:53', 1008, 30, '16:6:58', 12.927311, 77.668474, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:36:53', '-1', '2016-01-31 05:36:53', 1009, 30, '16:6:58', 12.927311, 77.668474, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:36:53', '-1', '2016-01-31 05:36:53', 1010, 30, '16:6:16', 12.927474, 77.668238, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:36:54', '-1', '2016-01-31 05:36:54', 1011, 30, '16:6:58', 12.927311, 77.668474, 'Sobha Jasmine, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:37:00', '-1', '2016-01-31 05:37:00', 1012, 30, '16:7:7', 12.927344, 77.668440, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:37:20', '-1', '2016-01-31 05:37:20', 1013, 30, '16:7:27', 12.927338, 77.668397, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:37:44', '-1', '2016-01-31 05:37:44', 1014, 30, '16:7:52', 12.927338, 77.668397, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:33', '-1', '2016-01-31 05:39:33', 1015, 30, '16:8:47', 12.927572, 77.667799, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:33', '-1', '2016-01-31 05:39:33', 1016, 30, '16:8:47', 12.927572, 77.667799, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:34', '-1', '2016-01-31 05:39:34', 1017, 30, '16:8:47', 12.927572, 77.667799, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:34', '-1', '2016-01-31 05:39:34', 1018, 30, '16:8:47', 12.927572, 77.667799, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:39', '-1', '2016-01-31 05:39:39', 1019, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:39', '-1', '2016-01-31 05:39:39', 1020, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:39', '-1', '2016-01-31 05:39:39', 1021, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:39', '-1', '2016-01-31 05:39:39', 1022, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:39', '-1', '2016-01-31 05:39:39', 1023, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:39', '-1', '2016-01-31 05:39:39', 1024, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:41', '-1', '2016-01-31 05:39:41', 1025, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:41', '-1', '2016-01-31 05:39:41', 1026, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:42', '-1', '2016-01-31 05:39:42', 1027, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:42', '-1', '2016-01-31 05:39:42', 1028, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:42', '-1', '2016-01-31 05:39:42', 1029, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:42', '-1', '2016-01-31 05:39:42', 1030, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:43', '-1', '2016-01-31 05:39:43', 1031, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:43', '-1', '2016-01-31 05:39:43', 1032, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:44', '-1', '2016-01-31 05:39:44', 1033, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:44', '-1', '2016-01-31 05:39:44', 1034, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:44', '-1', '2016-01-31 05:39:44', 1035, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:44', '-1', '2016-01-31 05:39:44', 1036, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:45', '-1', '2016-01-31 05:39:45', 1037, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:45', '-1', '2016-01-31 05:39:45', 1038, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:46', '-1', '2016-01-31 05:39:46', 1039, 30, '16:9:46', 12.924465, 77.665418, 'Block 1, Champa Ln, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:39:53', '-1', '2016-01-31 05:39:53', 1040, 30, '16:9:55', 12.924118, 77.665420, 'Radiance, Block 20, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:40:08', '-1', '2016-01-31 05:40:08', 1041, 30, '16:10:15', 12.923991, 77.665424, 'Radiance, Block 20, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:40:22', '-1', '2016-01-31 05:40:22', 1042, 30, '16:10:30', 12.921132, 77.665467, 'Radiance, Block 20, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:40:28', '-1', '2016-01-31 05:40:28', 1043, 30, '16:10:36', 12.921084, 77.665377, 'Marathahalli - Sarjapur Outer Ring Rd, Iblur Village, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:40:39', '-1', '2016-01-31 05:40:39', 1044, 30, '16:10:46', 12.921150, 77.665512, 'Sobha Garnet, Iblur Village, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:41:13', '-1', '2016-01-31 05:41:13', 1045, 30, '16:11:20', 12.921506, 77.666001, 'Marathahalli - Sarjapur Outer Ring Rd, Iblur Village, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:41:13', '-1', '2016-01-31 05:41:13', 1046, 30, '16:11:20', 12.921506, 77.666001, 'Marathahalli - Sarjapur Outer Ring Rd, Iblur Village, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:41:14', '-1', '2016-01-31 05:41:14', 1047, 30, '16:11:20', 12.921506, 77.666001, 'Marathahalli - Sarjapur Outer Ring Rd, Iblur Village, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:47:00', '-1', '2016-01-31 05:47:00', 1048, 30, '16:11:57', 12.921506, 77.666001, 'Marathahalli - Sarjapur Outer Ring Rd, Iblur Village, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:47:00', '-1', '2016-01-31 05:47:00', 1049, 30, '16:17:7', 12.923573, 77.647250, 'Marathahalli - Sarjapur Outer Ring Rd, Iblur Village, Bellandur, Bengaluru, Karnataka 560103, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:47:09', '-1', '2016-01-31 05:47:09', 1050, 30, '16:17:17', 12.914785, 77.638217, 'Service Rd, Agara Village, Sector 1, HSR Layout, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:47:19', '-1', '2016-01-31 05:47:19', 1051, 30, '16:17:27', 12.914785, 77.638217, 'Jakkasandra Cross Rd, HSR Layout, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:47:29', '-1', '2016-01-31 05:47:29', 1052, 30, '16:17:37', 12.914776, 77.638225, 'Jakkasandra Cross Rd, HSR Layout, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:47:40', '-1', '2016-01-31 05:47:40', 1053, 30, '16:17:47', 12.914776, 77.638225, 'Jakkasandra Cross Rd, HSR Layout, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:47:49', '-1', '2016-01-31 05:47:49', 1054, 30, '16:17:57', 12.914798, 77.638195, 'Jakkasandra Cross Rd, HSR Layout, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:47:59', '-1', '2016-01-31 05:47:59', 1055, 30, '16:18:7', 12.914798, 77.638195, 'Jakkasandra Cross Rd, HSR Layout, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:48:09', '-1', '2016-01-31 05:48:09', 1056, 30, '16:18:17', 12.914795, 77.638190, 'Jakkasandra Cross Rd, HSR Layout, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:48:19', '-1', '2016-01-31 05:48:19', 1057, 30, '16:18:27', 12.914795, 77.638190, 'Jakkasandra Cross Rd, HSR Layout, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:48:29', '-1', '2016-01-31 05:48:29', 1058, 30, '16:18:37', 12.914795, 77.638190, 'Jakkasandra Cross Rd, HSR Layout, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:48:39', '-1', '2016-01-31 05:48:39', 1059, 30, '16:18:47', 12.914798, 77.638191, 'Jakkasandra Cross Rd, HSR Layout, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:48:50', '-1', '2016-01-31 05:48:50', 1060, 30, '16:18:57', 12.914798, 77.638191, 'Jakkasandra Cross Rd, HSR Layout, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:48:59', '-1', '2016-01-31 05:48:59', 1061, 30, '16:19:7', 12.914798, 77.638195, 'Jakkasandra Cross Rd, HSR Layout, Bengaluru, Karnataka 560102, India');
INSERT INTO `TRACE_DETAIL` VALUES ('-1', '2016-01-31 05:49:09', '-1', '2016-01-31 05:49:09', 1062, 30, '16:19:17', 12.914798, 77.638195, 'Jakkasandra Cross Rd, HSR Layout, Bengaluru, Karnataka 560102, India');

-- --------------------------------------------------------

-- 
-- Table structure for table `TRACE_MASTER`
-- 

CREATE TABLE `TRACE_MASTER` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ORG_ID` int(10) NOT NULL,
  `ASSIGN_ID` int(10) NOT NULL,
  `RESOURCE_ID` int(10) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `START_DATETIME` varchar(40) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `STOP_DATETIME` varchar(40) DEFAULT NULL,
  `STATUS` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `XFK_TM_ORG_ID` (`ORG_ID`),
  KEY `XFK_TM_ASSIGN_ID` (`ASSIGN_ID`),
  KEY `XFK_TM_RESOURCE_ID` (`RESOURCE_ID`),
  KEY `XFK_TM_USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `TRACE_MASTER`
-- 

INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-11 06:14:04', '-1', '2015-09-11 06:27:11', 1, 1, 3, 3, 1, '2015-9-1115:44:5', '2015-9-1115:57:9', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-11 06:25:31', '-1', '2015-09-11 06:27:11', 2, 1, 3, 3, 1, '2015-9-1115:55:30', '2015-9-1115:57:9', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-11 06:26:54', '-1', '2015-09-11 06:27:11', 3, 1, 3, 3, 1, '2015-9-1115:56:53', '2015-9-1115:57:9', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 02:51:10', '-1', '2015-09-15 02:51:10', 4, 1, 3, 3, 1, '2015-9-1511:31:33', NULL, 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 02:56:55', '-1', '2015-09-15 02:56:55', 5, 1, 3, 3, 1, '2015-9-1512:21:4', NULL, 0);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 02:59:05', '-1', '2015-09-15 02:59:05', 6, 1, 3, 3, 1, '2015-9-1512:26:48', NULL, 0);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 03:01:21', '-1', '2015-09-15 03:01:21', 7, 1, 3, 3, 1, '2015-9-1512:28:59', NULL, 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 03:30:32', '-1', '2015-09-15 03:30:32', 8, 1, 3, 3, 1, '2015-9-1512:59:45', NULL, 0);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 03:32:32', '-1', '2015-09-15 03:32:32', 9, 1, 3, 3, 1, '2015-9-1513:0:30', NULL, 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 03:35:23', '-1', '2015-09-15 03:35:23', 10, 1, 3, 3, 1, '2015-9-1513:2:29', NULL, 0);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 03:37:05', '-1', '2015-09-15 03:37:05', 11, 1, 3, 3, 1, '2015-9-1513:5:21', NULL, 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 03:41:22', '-1', '2015-09-15 03:41:22', 12, 1, 3, 3, 1, '2015-9-1513:7:4', NULL, 0);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 03:44:56', '-1', '2015-09-15 03:44:56', 13, 1, 3, 3, 1, '2015-9-1513:10:52', NULL, 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 04:23:24', '-1', '2015-09-15 04:23:41', 14, 1, 3, 3, 1, '2015-9-1513:53', '2015-9-1513:53:39', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 04:27:07', '-1', '2015-09-15 04:28:14', 15, 1, 3, 3, 1, '2015-9-1513:57', '2015-9-1513:58:12', 0);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-15 05:05:12', '-1', '2015-09-15 05:05:59', 16, 1, 3, 3, 1, '2015-9-1514:35', '2015-9-1514:35:58', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-23 00:53:20', '-1', '2015-09-23 01:02:03', 17, 1, 3, 3, 1, '2015-9-2310:23', '2015-9-2310:32:2', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-23 01:02:26', '-1', '2015-09-23 01:04:24', 18, 1, 3, 3, 1, '2015-9-2310:32', '2015-9-2310:34:23', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-23 01:05:49', '-1', '2015-09-23 01:06:15', 19, 1, 3, 3, 1, '2015-9-2310:35', '2015-9-2310:36:15', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-23 01:06:53', '-1', '2015-09-23 01:07:25', 20, 1, 3, 3, 1, '2015-9-2310:36', '2015-9-2310:37:24', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-23 02:16:55', '-1', '2015-09-23 02:17:23', 21, 1, 4, 3, 4, '2015-9-2311:46', '2015-9-2311:47:22', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-28 03:11:48', '-1', '2015-09-28 03:11:48', 22, 1, 1, 2, 4, '2015-9-2812:41', NULL, 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-28 03:28:47', '-1', '2015-09-28 03:29:03', 23, 1, 3, 2, 4, '2015-9-2812:58', '2015-9-2812:59:1', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2015-09-28 07:02:52', '-1', '2015-09-28 07:02:52', 24, 1, 1, 3, 4, '2015-9-2816:32', NULL, 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2016-01-28 01:13:03', '-1', '2016-01-28 01:14:17', 25, 1, 1, 1, 4, '2016-1-2811:43', '2016-1-2811:44:15', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2016-01-28 01:16:42', '-1', '2016-01-28 01:17:01', 26, 1, 3, 2, 4, '2016-1-2811:47', '2016-1-2811:47:31', 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2016-01-29 09:21:37', '-1', '2016-01-29 09:21:37', 27, 1, 1, 1, 4, '2016-1-2919:51', NULL, 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2016-01-30 06:13:31', '-1', '2016-01-30 06:13:31', 28, 1, 1, 1, 4, '2016-1-3016:43', NULL, 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2016-01-31 03:54:20', '-1', '2016-01-31 03:54:20', 29, 1, 1, 1, 4, '2016-1-3114:24', NULL, 1);
INSERT INTO `TRACE_MASTER` VALUES ('-1', '2016-01-31 05:33:08', '-1', '2016-01-31 05:33:08', 30, 1, 1, 1, 4, '2016-1-3116:3', NULL, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `USER_INFO`
-- 

CREATE TABLE `USER_INFO` (
  `CREATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(60) NOT NULL DEFAULT '-1',
  `UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `USER_ORG_ID` int(10) NOT NULL,
  `USER_TYPE_ID` int(10) NOT NULL,
  `USER_ROLE_ID` int(10) DEFAULT NULL,
  `USER_FIRST_NAME` varchar(60) NOT NULL,
  `USER_LAST_NAME` varchar(60) DEFAULT NULL,
  `USER_EMAIL_ID` varchar(60) DEFAULT NULL,
  `USER_CELL_NUMBER` varchar(15) NOT NULL,
  `ACTIVATION_CODE` varchar(20) NOT NULL,
  `EFFECTIVE_DATE` date NOT NULL,
  `ACTIVE_MONTHS` int(10) NOT NULL,
  `EXPIRY_DATE` date DEFAULT NULL,
  `STATUS` int(10) NOT NULL,
  `REMARKS` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `XFK_UI_USER_TYPE_ID` (`USER_TYPE_ID`),
  KEY `XFK_UI_USER_ORG_ID` (`USER_ORG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `USER_INFO`
-- 

INSERT INTO `USER_INFO` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-28 02:41:11', 1, 1, 14, 8, 'JMMHSS', NULL, 'J@a.com', '786', '123434', '2015-08-15', 7, '2016-02-15', 1, NULL);
INSERT INTO `USER_INFO` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-28 02:41:11', 2, 1, 15, 8, 'Peter', 'Frank', 'p@y.com', '8787', '13455', '0000-00-00', 0, NULL, 1, NULL);
INSERT INTO `USER_INFO` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-28 02:43:53', 3, 1, 16, 11, 'Frank', 'Peter', 'f@y.com', '8889', '123', '0000-00-00', 7, '2016-02-15', 1, NULL);
INSERT INTO `USER_INFO` VALUES ('-1', '0000-00-00 00:00:00', '-1', '2015-08-28 02:43:53', 4, 1, 15, 10, 'Raj', NULL, 'r@y.com', '999', '99', '2015-08-15', 7, '2016-02-15', 1, NULL);

-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `ASSIGNMENTS`
-- 
ALTER TABLE `ASSIGNMENTS`
  ADD CONSTRAINT `XFK_A_ORG_ID` FOREIGN KEY (`ORG_ID`) REFERENCES `ORG_MASTER` (`ID`);

-- 
-- Constraints for table `ORG_MASTER`
-- 
ALTER TABLE `ORG_MASTER`
  ADD CONSTRAINT `XFK_OM_ORG_TYPE_ID` FOREIGN KEY (`ORG_TYPE_ID`) REFERENCES `KEY_VALUE` (`ID`);

-- 
-- Constraints for table `RESOURCE_PROFILE`
-- 
ALTER TABLE `RESOURCE_PROFILE`
  ADD CONSTRAINT `XFK_RP_ORG_ID` FOREIGN KEY (`ORG_ID`) REFERENCES `ORG_MASTER` (`ID`);

-- 
-- Constraints for table `TRACE_DETAIL`
-- 
ALTER TABLE `TRACE_DETAIL`
  ADD CONSTRAINT `XFK_TD_TRACE_MASTER_ID` FOREIGN KEY (`TRACE_MASTER_ID`) REFERENCES `TRACE_MASTER` (`ID`);

-- 
-- Constraints for table `TRACE_MASTER`
-- 
ALTER TABLE `TRACE_MASTER`
  ADD CONSTRAINT `XFK_TM_ASSIGN_ID` FOREIGN KEY (`ASSIGN_ID`) REFERENCES `ASSIGNMENTS` (`ID`),
  ADD CONSTRAINT `XFK_TM_ORG_ID` FOREIGN KEY (`ORG_ID`) REFERENCES `ORG_MASTER` (`ID`),
  ADD CONSTRAINT `XFK_TM_RESOURCE_ID` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_PROFILE` (`ID`),
  ADD CONSTRAINT `XFK_TM_USER_ID` FOREIGN KEY (`USER_ID`) REFERENCES `USER_INFO` (`ID`);

-- 
-- Constraints for table `USER_INFO`
-- 
ALTER TABLE `USER_INFO`
  ADD CONSTRAINT `XFK_UI_USER_ORG_ID` FOREIGN KEY (`USER_ORG_ID`) REFERENCES `ORG_MASTER` (`ID`),
  ADD CONSTRAINT `XFK_UI_USER_TYPE_ID` FOREIGN KEY (`USER_TYPE_ID`) REFERENCES `KEY_VALUE` (`ID`);
