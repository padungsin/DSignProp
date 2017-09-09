/*
SQLyog Community v11.0 (32 bit)
MySQL - 5.6.20-log : Database - dsign
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dsign` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `dsign`;

/*Table structure for table `account` */

CREATE TABLE `account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance` double DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `invoice` */

CREATE TABLE `invoice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invoice_date` datetime DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `invoice_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `invoice_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reference_id` bigint(20) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `unit_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `invoice_item` */

CREATE TABLE `invoice_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `price_per_unit` double DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `numeric_constant` */

CREATE TABLE `numeric_constant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `constant_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `owner` */

CREATE TABLE `owner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `district` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `subdistrict` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `transfer_date` datetime DEFAULT NULL,
  `unit_id` bigint(20) DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `payment` */

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `cheque_bank_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cheque_date` datetime DEFAULT NULL,
  `cheque_no` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `payer_address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `payer_id` bigint(20) DEFAULT NULL,
  `payer_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `receipt_no` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `receipt_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reciept` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `temp_reciept` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `transfer_bank_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `transfer_date` datetime DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `running_id` */

CREATE TABLE `running_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `current_id` bigint(20) DEFAULT NULL,
  `digit` int(11) DEFAULT NULL,
  `id_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `text_constant` */

CREATE TABLE `text_constant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `constant_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `transaction` */

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `full_amount` double DEFAULT NULL,
  `holding_tax` bit(1) DEFAULT NULL,
  `holding_taxt_amount` double DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `reference_transaction` bigint(20) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `revenue_department_date` datetime DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `transaction_status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `transaction_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `unit` */

CREATE TABLE `unit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `area` double DEFAULT NULL,
  `first_transfer_date` datetime DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `floor2` int(11) DEFAULT NULL,
  `no` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `room_no` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `water_meter` */

CREATE TABLE `water_meter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `current_unit` int(11) DEFAULT NULL,
  `no` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `note_date` datetime DEFAULT NULL,
  `previous_unit` int(11) DEFAULT NULL,
  `unit_id` bigint(20) DEFAULT NULL,
  `previous_note_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `water_usage_history` */

CREATE TABLE `water_usage_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `current_unit` int(11) DEFAULT NULL,
  `meter_id` bigint(20) DEFAULT NULL,
  `note_date` datetime DEFAULT NULL,
  `previous_note_date` datetime DEFAULT NULL,
  `previous_unit` int(11) DEFAULT NULL,
  `water_usage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
