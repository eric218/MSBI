CREATE DATABASE  IF NOT EXISTS `msbi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `msbi`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: msbi
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `backup_log`
--

DROP TABLE IF EXISTS `backup_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_log` (
  `id` int(11) DEFAULT NULL,
  `SERVER_NAME` varchar(50) NOT NULL,
  `DOMAIN_NAME` varchar(50) NOT NULL,
  `NODE_NAME` varchar(50) NOT NULL,
  `SCHEDULE_NAME` varchar(100) NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL COMMENT '任务完成时间',
  `START_DATE_TIME` datetime NOT NULL,
  `DONE_DATE_TIME` datetime DEFAULT NULL,
  `LOG_DATE` date DEFAULT NULL COMMENT '日志时间',
  `LOG_DATE_TIME` datetime DEFAULT NULL,
  `IS_SUCCESS` int(11) DEFAULT NULL,
  `MESSAGE` varchar(255) DEFAULT NULL COMMENT '设置为主键，用insert IGNORE去除重复数据',
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`SERVER_NAME`,`DOMAIN_NAME`,`NODE_NAME`,`SCHEDULE_NAME`,`START_DATE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成功的原始表1';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `backup_log_non_prod`
--

DROP TABLE IF EXISTS `backup_log_non_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_log_non_prod` (
  `id` int(11) DEFAULT NULL,
  `SERVER_NAME` varchar(50) NOT NULL,
  `DOMAIN_NAME` varchar(50) NOT NULL,
  `NODE_NAME` varchar(50) NOT NULL,
  `SCHEDULE_NAME` varchar(100) NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `DONE_DATE` date DEFAULT NULL COMMENT '任务完成时间',
  `START_DATE_TIME` datetime NOT NULL,
  `DONE_DATE_TIME` datetime DEFAULT NULL,
  `LOG_DATE` date DEFAULT NULL COMMENT '日志时间',
  `LOG_DATE_TIME` datetime DEFAULT NULL,
  `IS_SUCCESS` int(11) DEFAULT NULL,
  `MESSAGE` varchar(255) DEFAULT NULL COMMENT '设置为主键，用insert IGNORE去除重复数据',
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `UPDATE_DATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`SERVER_NAME`,`DOMAIN_NAME`,`NODE_NAME`,`SCHEDULE_NAME`,`START_DATE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成功的原始表1';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `files_load`
--

DROP TABLE IF EXISTS `files_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files_load` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_name_UNIQUE` (`file_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3081 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `files_load_non_prod`
--

DROP TABLE IF EXISTS `files_load_non_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files_load_non_prod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_name_UNIQUE` (`file_name`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logtxt`
--

DROP TABLE IF EXISTS `logtxt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logtxt` (
  `LOG` varchar(20000) DEFAULT NULL COMMENT '原始信息',
  `LOG_TYPE` int(11) DEFAULT NULL COMMENT '1.LOG,2.SCHEDULE3.association'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='原始log信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logtxt_temp`
--

DROP TABLE IF EXISTS `logtxt_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logtxt_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `col1` varchar(50) DEFAULT NULL,
  `col2` varchar(50) DEFAULT NULL,
  `col3` varchar(50) DEFAULT NULL,
  `col4` varchar(200) DEFAULT NULL,
  `col5` varchar(50) DEFAULT NULL,
  `col6` varchar(50) DEFAULT NULL,
  `col7` varchar(1000) DEFAULT NULL,
  `col8` varchar(1000) DEFAULT NULL,
  `col9` varchar(1000) DEFAULT NULL,
  `col10` varchar(50) DEFAULT NULL,
  `col11` varchar(50) DEFAULT NULL,
  `col12` varchar(50) DEFAULT NULL,
  `col13` varchar(50) DEFAULT NULL,
  `col14` varchar(50) DEFAULT NULL,
  `col15` varchar(50) DEFAULT NULL,
  `col16` varchar(50) DEFAULT NULL,
  `col17` varchar(50) DEFAULT NULL,
  `col18` varchar(50) DEFAULT NULL,
  `col19` varchar(50) DEFAULT NULL,
  `col20` varchar(50) DEFAULT NULL,
  `col21` varchar(50) DEFAULT NULL,
  `col22` varchar(50) DEFAULT NULL,
  `col23` varchar(50) DEFAULT NULL,
  `col24` varchar(200) DEFAULT NULL,
  `col25` varchar(50) DEFAULT NULL,
  `col26` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `col27` varchar(2001) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19447 DEFAULT CHARSET=utf8 COMMENT='临时存放分隔数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lookup`
--

DROP TABLE IF EXISTS `lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lookup` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `coulor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main` (
  `SERVER_NAME` varchar(45) DEFAULT NULL,
  `DOMAIN_NAME` varchar(45) DEFAULT NULL,
  `SCHEDULE_NAME` varchar(45) DEFAULT NULL,
  `NODE_NAME` varchar(45) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `MESSAGE` varchar(200) NOT NULL,
  PRIMARY KEY (`MESSAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `main_non_prod`
--

DROP TABLE IF EXISTS `main_non_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_non_prod` (
  `SERVER_NAME` varchar(45) DEFAULT NULL,
  `DOMAIN_NAME` varchar(45) DEFAULT NULL,
  `SCHEDULE_NAME` varchar(45) DEFAULT NULL,
  `NODE_NAME` varchar(45) DEFAULT NULL,
  `INSERT_DATE_TIME` datetime DEFAULT NULL,
  `MESSAGE` varchar(200) NOT NULL,
  PRIMARY KEY (`MESSAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `month_report`
--

DROP TABLE IF EXISTS `month_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `month_report` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `month_indicator` int(11) DEFAULT NULL,
  `server_name` varchar(50) DEFAULT NULL,
  `schedule_name` varchar(200) DEFAULT NULL,
  `SCHED_STYLE` varchar(45) DEFAULT NULL,
  `date_of_week` varchar(100) DEFAULT NULL,
  `each_month` varchar(50) DEFAULT NULL,
  `date_of_month` varchar(255) DEFAULT NULL,
  `week_of_month` varchar(50) DEFAULT NULL,
  `PERUNITS` varchar(45) DEFAULT NULL,
  `PERIOD` int(11) DEFAULT NULL,
  `bsr` decimal(5,2) DEFAULT NULL,
  `total_schedule` varchar(7) DEFAULT NULL,
  `total_successful` varchar(7) DEFAULT NULL,
  `day_01_1` varchar(10) DEFAULT NULL,
  `day_01_2` varchar(20) DEFAULT NULL,
  `day_02_1` varchar(10) DEFAULT NULL,
  `day_02_2` varchar(20) DEFAULT NULL,
  `day_03_1` varchar(10) DEFAULT NULL,
  `day_03_2` varchar(20) DEFAULT NULL,
  `day_04_1` varchar(10) DEFAULT NULL,
  `day_04_2` varchar(20) DEFAULT NULL,
  `day_05_1` varchar(10) DEFAULT NULL,
  `day_05_2` varchar(20) DEFAULT NULL,
  `day_06_1` varchar(10) DEFAULT NULL,
  `day_06_2` varchar(20) DEFAULT NULL,
  `day_07_1` varchar(10) DEFAULT NULL,
  `day_07_2` varchar(20) DEFAULT NULL,
  `day_08_1` varchar(10) DEFAULT NULL,
  `day_08_2` varchar(20) DEFAULT NULL,
  `day_09_1` varchar(10) DEFAULT NULL,
  `day_09_2` varchar(20) DEFAULT NULL,
  `day_10_1` varchar(10) DEFAULT NULL,
  `day_10_2` varchar(20) DEFAULT NULL,
  `day_11_1` varchar(10) DEFAULT NULL,
  `day_11_2` varchar(20) DEFAULT NULL,
  `day_12_1` varchar(10) DEFAULT NULL,
  `day_12_2` varchar(20) DEFAULT NULL,
  `day_13_1` varchar(10) DEFAULT NULL,
  `day_13_2` varchar(20) DEFAULT NULL,
  `day_14_1` varchar(10) DEFAULT NULL,
  `day_14_2` varchar(20) DEFAULT NULL,
  `day_15_1` varchar(10) DEFAULT NULL,
  `day_15_2` varchar(20) DEFAULT NULL,
  `day_16_1` varchar(10) DEFAULT NULL,
  `day_16_2` varchar(20) DEFAULT NULL,
  `day_17_1` varchar(10) DEFAULT NULL,
  `day_17_2` varchar(20) DEFAULT NULL,
  `day_18_1` varchar(10) DEFAULT NULL,
  `day_18_2` varchar(20) DEFAULT NULL,
  `day_19_1` varchar(10) DEFAULT NULL,
  `day_19_2` varchar(20) DEFAULT NULL,
  `day_20_1` varchar(10) DEFAULT NULL,
  `day_20_2` varchar(20) DEFAULT NULL,
  `day_21_1` varchar(10) DEFAULT NULL,
  `day_21_2` varchar(20) DEFAULT NULL,
  `day_22_1` varchar(10) DEFAULT NULL,
  `day_22_2` varchar(20) DEFAULT NULL,
  `day_23_1` varchar(10) DEFAULT NULL,
  `day_23_2` varchar(20) DEFAULT NULL,
  `day_24_1` varchar(10) DEFAULT NULL,
  `day_24_2` varchar(20) DEFAULT NULL,
  `day_25_1` varchar(10) DEFAULT NULL,
  `day_25_2` varchar(20) DEFAULT NULL,
  `day_26_1` varchar(10) DEFAULT NULL,
  `day_26_2` varchar(20) DEFAULT NULL,
  `day_27_1` varchar(10) DEFAULT NULL,
  `day_27_2` varchar(20) DEFAULT NULL,
  `day_28_1` varchar(10) DEFAULT NULL,
  `day_28_2` varchar(20) DEFAULT NULL,
  `day_29_1` varchar(10) DEFAULT NULL,
  `day_29_2` varchar(20) DEFAULT NULL,
  `day_30_1` varchar(10) DEFAULT NULL,
  `day_30_2` varchar(20) DEFAULT NULL,
  `day_31_1` varchar(10) DEFAULT NULL,
  `day_31_2` varchar(20) DEFAULT NULL,
  `insertDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `month_indicator_index` (`month_indicator`)
) ENGINE=InnoDB AUTO_INCREMENT=87135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `month_report_non_prod`
--

DROP TABLE IF EXISTS `month_report_non_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `month_report_non_prod` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `month_indicator` int(11) DEFAULT NULL,
  `server_name` varchar(50) DEFAULT NULL,
  `schedule_name` varchar(200) DEFAULT NULL,
  `SCHED_STYLE` varchar(45) DEFAULT NULL,
  `date_of_week` varchar(100) DEFAULT NULL,
  `each_month` varchar(50) DEFAULT NULL,
  `date_of_month` varchar(255) DEFAULT NULL,
  `week_of_month` varchar(50) DEFAULT NULL,
  `PERUNITS` varchar(45) DEFAULT NULL,
  `PERIOD` int(11) DEFAULT NULL,
  `bsr` decimal(5,2) DEFAULT NULL,
  `total_schedule` varchar(7) DEFAULT NULL,
  `total_successful` varchar(7) DEFAULT NULL,
  `day_01_1` varchar(10) DEFAULT NULL,
  `day_01_2` varchar(20) DEFAULT NULL,
  `day_02_1` varchar(10) DEFAULT NULL,
  `day_02_2` varchar(20) DEFAULT NULL,
  `day_03_1` varchar(10) DEFAULT NULL,
  `day_03_2` varchar(20) DEFAULT NULL,
  `day_04_1` varchar(10) DEFAULT NULL,
  `day_04_2` varchar(20) DEFAULT NULL,
  `day_05_1` varchar(10) DEFAULT NULL,
  `day_05_2` varchar(20) DEFAULT NULL,
  `day_06_1` varchar(10) DEFAULT NULL,
  `day_06_2` varchar(20) DEFAULT NULL,
  `day_07_1` varchar(10) DEFAULT NULL,
  `day_07_2` varchar(20) DEFAULT NULL,
  `day_08_1` varchar(10) DEFAULT NULL,
  `day_08_2` varchar(20) DEFAULT NULL,
  `day_09_1` varchar(10) DEFAULT NULL,
  `day_09_2` varchar(20) DEFAULT NULL,
  `day_10_1` varchar(10) DEFAULT NULL,
  `day_10_2` varchar(20) DEFAULT NULL,
  `day_11_1` varchar(10) DEFAULT NULL,
  `day_11_2` varchar(20) DEFAULT NULL,
  `day_12_1` varchar(10) DEFAULT NULL,
  `day_12_2` varchar(20) DEFAULT NULL,
  `day_13_1` varchar(10) DEFAULT NULL,
  `day_13_2` varchar(20) DEFAULT NULL,
  `day_14_1` varchar(10) DEFAULT NULL,
  `day_14_2` varchar(20) DEFAULT NULL,
  `day_15_1` varchar(10) DEFAULT NULL,
  `day_15_2` varchar(20) DEFAULT NULL,
  `day_16_1` varchar(10) DEFAULT NULL,
  `day_16_2` varchar(20) DEFAULT NULL,
  `day_17_1` varchar(10) DEFAULT NULL,
  `day_17_2` varchar(20) DEFAULT NULL,
  `day_18_1` varchar(10) DEFAULT NULL,
  `day_18_2` varchar(20) DEFAULT NULL,
  `day_19_1` varchar(10) DEFAULT NULL,
  `day_19_2` varchar(20) DEFAULT NULL,
  `day_20_1` varchar(10) DEFAULT NULL,
  `day_20_2` varchar(20) DEFAULT NULL,
  `day_21_1` varchar(10) DEFAULT NULL,
  `day_21_2` varchar(20) DEFAULT NULL,
  `day_22_1` varchar(10) DEFAULT NULL,
  `day_22_2` varchar(20) DEFAULT NULL,
  `day_23_1` varchar(10) DEFAULT NULL,
  `day_23_2` varchar(20) DEFAULT NULL,
  `day_24_1` varchar(10) DEFAULT NULL,
  `day_24_2` varchar(20) DEFAULT NULL,
  `day_25_1` varchar(10) DEFAULT NULL,
  `day_25_2` varchar(20) DEFAULT NULL,
  `day_26_1` varchar(10) DEFAULT NULL,
  `day_26_2` varchar(20) DEFAULT NULL,
  `day_27_1` varchar(10) DEFAULT NULL,
  `day_27_2` varchar(20) DEFAULT NULL,
  `day_28_1` varchar(10) DEFAULT NULL,
  `day_28_2` varchar(20) DEFAULT NULL,
  `day_29_1` varchar(10) DEFAULT NULL,
  `day_29_2` varchar(20) DEFAULT NULL,
  `day_30_1` varchar(10) DEFAULT NULL,
  `day_30_2` varchar(20) DEFAULT NULL,
  `day_31_1` varchar(10) DEFAULT NULL,
  `day_31_2` varchar(20) DEFAULT NULL,
  `insertDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `month_indicator_index` (`month_indicator`)
) ENGINE=InnoDB AUTO_INCREMENT=69079 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DOMAIN_NAME` varchar(200) DEFAULT NULL,
  `SCHEDULE_NAME` varchar(200) DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `ACTIONS` varchar(50) DEFAULT NULL,
  `SUBACTION` varchar(50) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `START_DATE_TIME` datetime DEFAULT NULL,
  `DURATION` int(11) DEFAULT NULL,
  `DURUNITS` varchar(10) DEFAULT NULL,
  `MAXRUNTIME` int(11) DEFAULT NULL,
  `PERIOD` int(11) DEFAULT NULL,
  `PERUNITS` varchar(10) DEFAULT NULL,
  `DATE_OF_WEEK` varchar(50) DEFAULT NULL,
  `EACH_MONTH` varchar(20) DEFAULT NULL,
  `DATE_OF_MONTH` varchar(100) DEFAULT NULL,
  `WEEK_OF_MONTH` varchar(100) DEFAULT NULL,
  `SCHED_STYLE` varchar(10) DEFAULT NULL,
  `OPTIONES` varchar(2000) DEFAULT NULL,
  `OBJECT` varchar(2048) DEFAULT NULL,
  `INSERT_TIME` varchar(45) DEFAULT NULL,
  `MESSAGE` varchar(2000) DEFAULT NULL,
  `ENABLED` int(11) DEFAULT NULL COMMENT '是否enabled,1.是,0否',
  `INSERT_DATE` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='schedule 当天';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schedule_history`
--

DROP TABLE IF EXISTS `schedule_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DOMAIN_NAME` varchar(200) DEFAULT NULL,
  `SCHEDULE_NAME` varchar(200) DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `ACTIONS` varchar(50) DEFAULT NULL,
  `SUBACTION` varchar(50) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `START_DATE_TIME` datetime DEFAULT NULL,
  `DURATION` int(11) DEFAULT NULL,
  `DURUNITS` varchar(10) DEFAULT NULL,
  `MAXRUNTIME` int(11) DEFAULT NULL,
  `PERIOD` int(11) DEFAULT NULL,
  `PERUNITS` varchar(10) DEFAULT NULL,
  `DATE_OF_WEEK` varchar(50) DEFAULT NULL,
  `EACH_MONTH` varchar(20) DEFAULT NULL,
  `DATE_OF_MONTH` varchar(100) DEFAULT NULL,
  `WEEK_OF_MONTH` varchar(100) DEFAULT NULL,
  `SCHED_STYLE` varchar(10) DEFAULT NULL,
  `OPTIONES` varchar(2000) DEFAULT NULL,
  `OBJECT` varchar(2048) DEFAULT NULL,
  `INSERT_TIME` varchar(45) DEFAULT NULL,
  `MESSAGE` varchar(2000) DEFAULT NULL,
  `ENABLED` int(11) DEFAULT NULL COMMENT '是否算历史,1:是;0:否.',
  `INSERT_DATE` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='schedule 当天';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schedule_newest`
--

DROP TABLE IF EXISTS `schedule_newest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_newest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SERVER_NAME` varchar(45) DEFAULT NULL,
  `DOMAIN_NAME` varchar(200) DEFAULT NULL,
  `SCHEDULE_NAME` varchar(200) DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `ACTIONS` varchar(50) DEFAULT NULL,
  `SUBACTION` varchar(50) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `START_DATE_TIME` datetime DEFAULT NULL,
  `DURATION` int(11) DEFAULT NULL,
  `DURUNITS` varchar(10) DEFAULT NULL,
  `MAXRUNTIME` int(11) DEFAULT NULL,
  `PERIOD` int(11) DEFAULT NULL,
  `PERUNITS` varchar(10) DEFAULT NULL,
  `DATE_OF_WEEK` varchar(50) DEFAULT NULL,
  `EACH_MONTH` varchar(20) DEFAULT NULL,
  `DATE_OF_MONTH` varchar(100) DEFAULT NULL,
  `WEEK_OF_MONTH` varchar(100) DEFAULT NULL,
  `SCHED_STYLE` varchar(10) DEFAULT NULL,
  `OPTIONES` varchar(2000) DEFAULT NULL,
  `OBJECT` varchar(2048) DEFAULT NULL,
  `INSERT_TIME` varchar(45) DEFAULT NULL,
  `MESSAGE` varchar(2000) DEFAULT NULL,
  `ENABLED` int(11) DEFAULT NULL COMMENT '是否enabled,1.是,0否',
  `INSERT_DATE` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15391 DEFAULT CHARSET=utf8 COMMENT='schedule 当天';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schedule_newest_non_prod`
--

DROP TABLE IF EXISTS `schedule_newest_non_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_newest_non_prod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SERVER_NAME` varchar(45) DEFAULT NULL,
  `DOMAIN_NAME` varchar(200) DEFAULT NULL,
  `SCHEDULE_NAME` varchar(200) DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `ACTIONS` varchar(50) DEFAULT NULL,
  `SUBACTION` varchar(50) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `START_DATE_TIME` datetime DEFAULT NULL,
  `DURATION` int(11) DEFAULT NULL,
  `DURUNITS` varchar(10) DEFAULT NULL,
  `MAXRUNTIME` int(11) DEFAULT NULL,
  `PERIOD` int(11) DEFAULT NULL,
  `PERUNITS` varchar(10) DEFAULT NULL,
  `DATE_OF_WEEK` varchar(50) DEFAULT NULL,
  `EACH_MONTH` varchar(20) DEFAULT NULL,
  `DATE_OF_MONTH` varchar(100) DEFAULT NULL,
  `WEEK_OF_MONTH` varchar(100) DEFAULT NULL,
  `SCHED_STYLE` varchar(10) DEFAULT NULL,
  `OPTIONES` varchar(2000) DEFAULT NULL,
  `OBJECT` varchar(2048) DEFAULT NULL,
  `INSERT_TIME` varchar(45) DEFAULT NULL,
  `MESSAGE` varchar(2000) DEFAULT NULL,
  `ENABLED` int(11) DEFAULT NULL COMMENT '是否enabled,1.是,0否',
  `INSERT_DATE` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61444 DEFAULT CHARSET=utf8 COMMENT='schedule 当天';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-19 14:49:25
