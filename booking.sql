/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : booking

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-10-22 10:36:33
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `access_menu`
-- ----------------------------
DROP TABLE IF EXISTS `access_menu`;
CREATE TABLE `access_menu` (
  `access_menu_id` int(5) NOT NULL AUTO_INCREMENT,
  `access_menu_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_menu_detail` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`access_menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of access_menu
-- ----------------------------
INSERT INTO `access_menu` VALUES ('1', '[Admin]', 'ผู้ดูแลระบบ');
INSERT INTO `access_menu` VALUES ('2', '[system_setting]', 'ตั้งค่าผู้ใช้งานในระบบ');
INSERT INTO `access_menu` VALUES ('3', '[material_record]', 'ทะเบียนคุมยอดเงิน');
INSERT INTO `access_menu` VALUES ('4', '[computer]', 'ทะเบียนคอมพิวเตอร์');
INSERT INTO `access_menu` VALUES ('5', '[psd_stock]', 'ตัดจ่ายพัสดุครุภัณฑ์');
INSERT INTO `access_menu` VALUES ('6', '[news]', 'เพิ่มแก้ไขประกาศข่าว');
INSERT INTO `access_menu` VALUES ('7', '[booking_manage]', 'จัดการห้องประชุม');

-- ----------------------------
-- Table structure for `booking`
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL AUTO_INCREMENT,
  `booking_date_start` date DEFAULT NULL,
  `booking_time_start` time DEFAULT NULL,
  `booking_date_end` date DEFAULT NULL,
  `booking_time_end` time DEFAULT NULL,
  `booking_room_id` int(5) DEFAULT NULL,
  `booking_type_id` int(5) DEFAULT NULL,
  `booking_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_qty` decimal(5,0) DEFAULT NULL,
  `booking_detail` text COLLATE utf8_unicode_ci,
  `booking_manage_type_id` int(5) DEFAULT NULL,
  `booking_budget_id` int(5) DEFAULT NULL,
  `notebook` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visualizer` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `projector` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `led_tv` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mic1` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mic2` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sound_record` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vdo_record` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_record` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_table_type_id` int(5) DEFAULT NULL,
  `booking_member` int(5) DEFAULT NULL,
  `booking_department` int(5) DEFAULT NULL,
  `booking_status` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of booking
-- ----------------------------
INSERT INTO `booking` VALUES ('1', '2015-10-22', '08:30:00', '2015-10-22', '16:30:00', '1', '2', 'ทดสอบการจองห้องประชุม', '30', 'ขอเพิ่มป้ายหน้าห้อง', '8', '1', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', '4', '1', '3', 'Y');

-- ----------------------------
-- Table structure for `booking_budget`
-- ----------------------------
DROP TABLE IF EXISTS `booking_budget`;
CREATE TABLE `booking_budget` (
  `booking_budget_id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_budget_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_budget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of booking_budget
-- ----------------------------
INSERT INTO `booking_budget` VALUES ('1', 'เงินบำรุง');
INSERT INTO `booking_budget` VALUES ('2', 'เงินสวัสดิการ');
INSERT INTO `booking_budget` VALUES ('3', 'เงินโครงการ');
INSERT INTO `booking_budget` VALUES ('4', 'เงินผู้จัด');

-- ----------------------------
-- Table structure for `booking_equipment`
-- ----------------------------
DROP TABLE IF EXISTS `booking_equipment`;
CREATE TABLE `booking_equipment` (
  `booking_equipment_id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_equipment_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of booking_equipment
-- ----------------------------
INSERT INTO `booking_equipment` VALUES ('1', 'คอมพิวเตอร์ Notebook');
INSERT INTO `booking_equipment` VALUES ('2', 'เครื่องฉายแผ่นทึบ Visualizer');
INSERT INTO `booking_equipment` VALUES ('3', 'เครื่องฉาย LCD Projecter');
INSERT INTO `booking_equipment` VALUES ('4', 'โทรทัศน์สี LED TV 40นิ้ว');
INSERT INTO `booking_equipment` VALUES ('5', 'ไมโครโฟนแบบตั้งโต๊ะ');
INSERT INTO `booking_equipment` VALUES ('6', 'ไมโครโฟนแบบไร้สาย');
INSERT INTO `booking_equipment` VALUES ('7', 'เครื่องบันทึกเสียง');
INSERT INTO `booking_equipment` VALUES ('8', 'กล้องบันทึกวีดีโอ');
INSERT INTO `booking_equipment` VALUES ('9', 'กล้องถ่ายภาพ');

-- ----------------------------
-- Table structure for `booking_manage_type`
-- ----------------------------
DROP TABLE IF EXISTS `booking_manage_type`;
CREATE TABLE `booking_manage_type` (
  `booking_manage_type_id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_manage_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_manage_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of booking_manage_type
-- ----------------------------
INSERT INTO `booking_manage_type` VALUES ('1', 'จัดเครื่องดื่ม(น้ำเปล่า) 1 รอบเบรค');
INSERT INTO `booking_manage_type` VALUES ('2', 'จัดเครื่องดื่ม(น้ำเปล่า) 2 รอบเบรค');
INSERT INTO `booking_manage_type` VALUES ('3', 'จัดเครื่องดื่ม(น้ำเปล่า) 3 รอบเบรค');
INSERT INTO `booking_manage_type` VALUES ('4', 'จัดเครื่องดื่มพร้อมอาหารว่าง 1 รอบเบรค');
INSERT INTO `booking_manage_type` VALUES ('5', 'จัดเครื่องดื่มพร้อมอาหารว่าง 2 รอบเบรค');
INSERT INTO `booking_manage_type` VALUES ('6', 'จัดเครื่องดื่มพร้อมอาหารว่าง 3 รอบเบรค');
INSERT INTO `booking_manage_type` VALUES ('7', 'จัดเครื่องดื่มพร้อมอาหารว่าง 1 รอบเบรค และข้าวมื้อกลางวัน');
INSERT INTO `booking_manage_type` VALUES ('8', 'จัดเครื่องดื่มพร้อมอาหารว่าง 2 รอบเบรค และข้าวมื้อกลางวัน');
INSERT INTO `booking_manage_type` VALUES ('9', 'จัดเครื่องดื่มพร้อมอาหารว่าง 3 รอบเบรค และข้าวมื้อกลางวัน');

-- ----------------------------
-- Table structure for `booking_room`
-- ----------------------------
DROP TABLE IF EXISTS `booking_room`;
CREATE TABLE `booking_room` (
  `booking_room_id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_room_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_room_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_room_pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of booking_room
-- ----------------------------
INSERT INTO `booking_room` VALUES ('1', 'ห้องประชุมขนาดใหญ่', 'ห้องประชุมขนาดใหญ่ สามารถใช้งานได้ไม่เกิน 100 ท่าน', null);
INSERT INTO `booking_room` VALUES ('2', 'ห้องประชุมขนาดกลาง', 'ห้องประชุมขนาดกลาง สามารถใช้งานได้ไม่เกิน 50 ท่าน', null);
INSERT INTO `booking_room` VALUES ('3', 'ห้องประชุมขนาดเล็ก', 'ห้องประชุมขนาดเล็ก สามารถใช้งานได้ไม่เกิน 20 ท่าน', null);

-- ----------------------------
-- Table structure for `booking_table_type`
-- ----------------------------
DROP TABLE IF EXISTS `booking_table_type`;
CREATE TABLE `booking_table_type` (
  `booking_table_type_id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_table_type_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_table_type_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_table_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of booking_table_type
-- ----------------------------
INSERT INTO `booking_table_type` VALUES ('1', 'แบบ U shape (จัดแบบตัวU)', null);
INSERT INTO `booking_table_type` VALUES ('2', 'แบบ Boardroom (จัดแบบประชุมคณะกรรมการ)', null);
INSERT INTO `booking_table_type` VALUES ('3', 'แบบ Clusters (จัดแบบกลุ่ม/หมู่คณะ)', null);
INSERT INTO `booking_table_type` VALUES ('4', 'แบบ Classroom (จัดแบบห้องเรียน)', null);
INSERT INTO `booking_table_type` VALUES ('5', 'แบบ Theater (จัดแบบโรงละคร)', null);
INSERT INTO `booking_table_type` VALUES ('6', 'แบบ Circle of chairs (จัดแบบเก้าอี้วงกลม)', null);

-- ----------------------------
-- Table structure for `booking_time`
-- ----------------------------
DROP TABLE IF EXISTS `booking_time`;
CREATE TABLE `booking_time` (
  `time` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of booking_time
-- ----------------------------
INSERT INTO `booking_time` VALUES ('08:00:00');
INSERT INTO `booking_time` VALUES ('08:30:00');
INSERT INTO `booking_time` VALUES ('09:00:00');
INSERT INTO `booking_time` VALUES ('09:30:00');
INSERT INTO `booking_time` VALUES ('10:00:00');
INSERT INTO `booking_time` VALUES ('10:30:00');
INSERT INTO `booking_time` VALUES ('11:00:00');
INSERT INTO `booking_time` VALUES ('11:30:00');
INSERT INTO `booking_time` VALUES ('12:00:00');
INSERT INTO `booking_time` VALUES ('12:30:00');
INSERT INTO `booking_time` VALUES ('13:00:00');
INSERT INTO `booking_time` VALUES ('13:30:00');
INSERT INTO `booking_time` VALUES ('14:00:00');
INSERT INTO `booking_time` VALUES ('14:30:00');
INSERT INTO `booking_time` VALUES ('15:00:00');
INSERT INTO `booking_time` VALUES ('15:30:00');
INSERT INTO `booking_time` VALUES ('16:00:00');
INSERT INTO `booking_time` VALUES ('16:30:00');
INSERT INTO `booking_time` VALUES ('17:00:00');

-- ----------------------------
-- Table structure for `booking_type`
-- ----------------------------
DROP TABLE IF EXISTS `booking_type`;
CREATE TABLE `booking_type` (
  `booking_type_id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`booking_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of booking_type
-- ----------------------------
INSERT INTO `booking_type` VALUES ('1', 'ประชุม');
INSERT INTO `booking_type` VALUES ('2', 'อบรม');
INSERT INTO `booking_type` VALUES ('3', 'สัมมนา');
INSERT INTO `booking_type` VALUES ('4', 'คณะศึกษาดูงาน');

-- ----------------------------
-- Table structure for `counter`
-- ----------------------------
DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of counter
-- ----------------------------
INSERT INTO `counter` VALUES ('1', '2015-10-22', '::1', '1');

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `department_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', 'ศูนย์คอมพิวเตอร์');
INSERT INTO `department` VALUES ('2', 'การเงินและบัญชี');
INSERT INTO `department` VALUES ('3', 'บริหารงานทั่วไป');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `member_id` int(5) NOT NULL AUTO_INCREMENT,
  `member_username` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `member_password` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `member_pname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_fname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_lname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_birthday` date DEFAULT NULL,
  `member_sex` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_dep` int(5) DEFAULT NULL,
  `department` int(5) DEFAULT NULL,
  `member_position` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_nickname` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_detail` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_access` text COLLATE utf8_unicode_ci,
  `member_cid` char(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_tel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_staff` int(10) DEFAULT NULL,
  `member_status` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', 'admin', 'admin', 'นาย', 'ผู้ดูแลระบบ', '', '2015-10-22', 'M', null, '1', '', '', '', '', ' [Admin]', '', '', '', null, 'Y');
INSERT INTO `member` VALUES ('2', 'test', '1234', 'นางสาว', 'ทดสอบ', 'ระบบ', '2015-10-22', 'F', null, '3', '', '', '', '', ' ', '', '', '', null, 'Y');

-- ----------------------------
-- Table structure for `monthly`
-- ----------------------------
DROP TABLE IF EXISTS `monthly`;
CREATE TABLE `monthly` (
  `m_id` int(2) NOT NULL AUTO_INCREMENT,
  `m_tname` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_ename` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of monthly
-- ----------------------------
INSERT INTO `monthly` VALUES ('1', 'ม.ค.', 'January');
INSERT INTO `monthly` VALUES ('2', 'ก.พ.', 'February');
INSERT INTO `monthly` VALUES ('3', 'มี.ค.', 'March');
INSERT INTO `monthly` VALUES ('4', 'เม.ย.', 'April');
INSERT INTO `monthly` VALUES ('5', 'พ.ค.', 'May');
INSERT INTO `monthly` VALUES ('6', 'มิ.ย.', 'June');
INSERT INTO `monthly` VALUES ('7', 'ก.ค.', 'July');
INSERT INTO `monthly` VALUES ('8', 'ส.ค.', 'August');
INSERT INTO `monthly` VALUES ('9', 'ก.ย.', 'September');
INSERT INTO `monthly` VALUES ('10', 'ต.ค.', 'Octorber');
INSERT INTO `monthly` VALUES ('11', 'พ.ย.', 'November');
INSERT INTO `monthly` VALUES ('12', 'ธ.ค.', 'December');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `news_head` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_detail` text COLLATE utf8_unicode_ci,
  `department` int(10) DEFAULT NULL,
  `news_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `load_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_user` int(5) DEFAULT NULL,
  `news_type` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '2015-10-22', '09:36:46', 'ยินดีต้อนรับสู่ระบบจองห้องประชุม', '- พัฒนาโดยใช้ Yii Framework\r\n- ใช้ร่วมกับฐานข้อมูล Mysql', '1', '', '', '1', '1');

-- ----------------------------
-- Table structure for `weather`
-- ----------------------------
DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `temp` decimal(10,2) DEFAULT NULL,
  `weather` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cloud` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wind` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of weather
-- ----------------------------
