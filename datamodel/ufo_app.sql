/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : ufo_app

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-07-16 18:27:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `skey` varchar(20) NOT NULL,
  `level` bigint(20) DEFAULT NULL COMMENT '字典等级 ',
  `name` varchar(30) DEFAULT NULL COMMENT '字典编码名称 ',
  `order_no` int(11) DEFAULT NULL COMMENT '排序 ',
  `remark` longtext COMMENT '备注 ',
  `state` int(11) DEFAULT NULL COMMENT '状态(1、有效  0、无效) ',
  `type` varchar(30) DEFAULT NULL COMMENT '字典类型 ',
  `pkey` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`skey`) USING BTREE,
  KEY `FKi1nfmxql7blwq1ysshbcn9a3p` (`pkey`) USING BTREE,
  CONSTRAINT `FK3dmj9h7kujo3bm6v4173jr5sj` FOREIGN KEY (`pkey`) REFERENCES `sys_dict` (`skey`),
  CONSTRAINT `sys_dict_ibfk_1` FOREIGN KEY (`pkey`) REFERENCES `sys_dict` (`skey`),
  CONSTRAINT `sys_dict_ibfk_2` FOREIGN KEY (`pkey`) REFERENCES `sys_dict` (`skey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据字典';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('designerFour', '1', '施工图', null, '施工图', '1', null, null);
INSERT INTO `sys_dict` VALUES ('designerFour_01', '2', '首次出图完成', null, '首次出图完成', '1', null, 'designerFour');
INSERT INTO `sys_dict` VALUES ('designerFour_02', '2', '准备修改', null, '准备修改', '1', null, 'designerFour');
INSERT INTO `sys_dict` VALUES ('designerFour_03', '2', '修改完成', null, '修改完成', '1', null, 'designerFour');
INSERT INTO `sys_dict` VALUES ('designerFour_04', '2', '出图成功', null, '出图成功', '1', null, 'designerFour');
INSERT INTO `sys_dict` VALUES ('designerFour_05', '2', '出图失败', null, '出图失败', '1', null, 'designerFour');
INSERT INTO `sys_dict` VALUES ('designerOne', '1', '预约量房', null, '预约量房', '1', null, null);
INSERT INTO `sys_dict` VALUES ('designerOne_01', '2', '预约成功', null, '预约成功', '1', null, 'designerOne');
INSERT INTO `sys_dict` VALUES ('designerOne_02', '2', '量房成功', null, '量房成功', '1', null, 'designerOne');
INSERT INTO `sys_dict` VALUES ('designerOne_03', '2', '量房失败', null, '量房失败', '1', null, 'designerOne');
INSERT INTO `sys_dict` VALUES ('designerThree', '1', '效果图', null, '效果图', '1', null, null);
INSERT INTO `sys_dict` VALUES ('designerThree_01', '2', '首次出图完成', null, null, '1', null, 'designerThree');
INSERT INTO `sys_dict` VALUES ('designerThree_02', '2', '准备修改', null, '准备修改', '1', null, 'designerThree');
INSERT INTO `sys_dict` VALUES ('designerThree_03', '2', '修改完成', null, '修改完成', '1', null, 'designerThree');
INSERT INTO `sys_dict` VALUES ('designerThree_04', '2', '出图成功', null, '出图成功', '1', null, 'designerThree');
INSERT INTO `sys_dict` VALUES ('designerThree_05', '2', '出图失败', null, '出图失败', '1', null, 'designerThree');
INSERT INTO `sys_dict` VALUES ('designerTwo', '1', '概要设计', null, '概要设计', '1', null, null);
INSERT INTO `sys_dict` VALUES ('designerTwo_01', '2', '首次出图完成', null, '首次出图完成', '1', null, 'designerTwo');
INSERT INTO `sys_dict` VALUES ('designerTwo_02', '2', '准备修改', null, '准备修改', '1', null, 'designerTwo');
INSERT INTO `sys_dict` VALUES ('designerTwo_03', '2', '修改完成', null, '修改完成', '1', null, 'designerTwo');
INSERT INTO `sys_dict` VALUES ('designerTwo_04', '2', '出图成功', null, '出图成功', '1', null, 'designerTwo');
INSERT INTO `sys_dict` VALUES ('designerTwo_05', '2', '出图失败', null, '出图失败', '1', null, 'designerTwo');
INSERT INTO `sys_dict` VALUES ('materialType', '1', '工种类型', null, '材料类型', '1', null, null);
INSERT INTO `sys_dict` VALUES ('materialType_01', '2', '实木地板', null, '实木地板', '1', null, 'materialType');
INSERT INTO `sys_dict` VALUES ('materialType_02', '2', '吊灯', null, '吊灯', '1', '', 'materialType');
INSERT INTO `sys_dict` VALUES ('materialType_03', '2', '地格栅', null, '地格栅', '1', '', 'materialType');
INSERT INTO `sys_dict` VALUES ('materialType_04', '2', '踢脚线', null, '踢脚线', '1', '', 'materialType');
INSERT INTO `sys_dict` VALUES ('materialType_05', '2', '墙顶面乳胶漆', null, '墙顶面乳胶漆', '1', '', 'materialType');
INSERT INTO `sys_dict` VALUES ('materialType_06', '2', '墙顶面三度批嵌', null, '墙顶面三度批嵌', '1', '', 'materialType');

-- ----------------------------
-- Table structure for sys_region
-- ----------------------------
DROP TABLE IF EXISTS `sys_region`;
CREATE TABLE `sys_region` (
  `id` varchar(6) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `baidu_x` double DEFAULT NULL,
  `baidu_y` double DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `google_x` double DEFAULT NULL,
  `google_y` double DEFAULT NULL,
  `gps_x` double DEFAULT NULL,
  `gps_y` double DEFAULT NULL,
  `region_level` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `pregion` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKshk89ma62cs4ope7bocgsghsi` (`pregion`),
  CONSTRAINT `FKshk89ma62cs4ope7bocgsghsi` FOREIGN KEY (`pregion`) REFERENCES `sys_region` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地区编码';

-- ----------------------------
-- Records of sys_region
-- ----------------------------

-- ----------------------------
-- Table structure for tab_attendance
-- ----------------------------
DROP TABLE IF EXISTS `tab_attendance`;
CREATE TABLE `tab_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `attendance_time` datetime DEFAULT NULL COMMENT '出勤日期',
  `decoration_weekly_id` int(11) DEFAULT NULL COMMENT '装修周报主键 ',
  `people` int(11) DEFAULT '0' COMMENT '出勤人数 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='装修报告周报>出勤情况';

-- ----------------------------
-- Records of tab_attendance
-- ----------------------------
INSERT INTO `tab_attendance` VALUES ('1', '2019-06-01 14:55:51', '2', '22');
INSERT INTO `tab_attendance` VALUES ('2', '2019-06-02 14:56:56', '2', '33');
INSERT INTO `tab_attendance` VALUES ('3', '2019-06-03 14:57:02', '2', '12');
INSERT INTO `tab_attendance` VALUES ('4', '2019-06-04 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('5', '2019-06-05 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('6', '2019-06-06 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('7', '2019-06-07 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('8', '2019-06-08 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('9', '2019-06-09 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('10', '2019-06-10 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('11', '2019-06-11 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('12', '2019-06-12 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('13', '2019-06-13 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('14', '2019-06-14 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('15', '2019-06-15 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('16', '2019-06-16 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('17', '2019-06-17 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('18', '2019-06-18 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('19', '2019-06-19 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('20', '2019-06-20 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('21', '2019-06-21 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('22', '2019-06-22 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('23', '2019-06-23 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('24', '2019-06-24 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('25', '2019-06-25 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('26', '2019-06-26 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('27', '2019-06-27 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('28', '2019-06-28 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('29', '2019-06-29 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('30', '2019-06-30 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('31', '2019-07-01 14:57:02', '2', '2');
INSERT INTO `tab_attendance` VALUES ('32', '2019-07-02 14:57:02', '2', '2');
INSERT INTO `tab_attendance` VALUES ('33', '2019-07-03 14:57:02', '2', '2');
INSERT INTO `tab_attendance` VALUES ('34', '2019-07-04 14:57:02', '2', '2');
INSERT INTO `tab_attendance` VALUES ('35', '2019-05-31 14:57:02', '2', '2');
INSERT INTO `tab_attendance` VALUES ('36', '2019-05-30 14:57:02', '2', '2');
INSERT INTO `tab_attendance` VALUES ('37', '2018-06-01 14:55:51', '2', '22');
INSERT INTO `tab_attendance` VALUES ('38', '2018-06-02 14:56:56', '2', '33');
INSERT INTO `tab_attendance` VALUES ('39', '2018-06-03 14:57:02', '2', '12');
INSERT INTO `tab_attendance` VALUES ('40', '2018-06-04 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('41', '2018-06-05 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('42', '2018-06-06 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('43', '2018-06-07 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('44', '2018-06-08 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('45', '2018-06-09 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('46', '2018-06-10 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('47', '2018-06-11 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('48', '2018-06-12 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('49', '2018-06-13 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('50', '2018-06-14 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('51', '2018-06-15 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('52', '2018-06-16 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('53', '2018-06-17 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('54', '2018-06-18 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('55', '2018-06-19 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('56', '2018-06-20 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('57', '2018-06-21 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('58', '2018-06-22 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('59', '2018-06-23 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('60', '2018-06-24 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('61', '2018-06-25 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('62', '2018-06-26 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('63', '2018-06-27 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('64', '2018-01-07 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('65', '2018-01-02 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('66', '2018-01-01 14:57:02', '2', '1');
INSERT INTO `tab_attendance` VALUES ('67', '2019-03-25 09:47:31', '2', '1');
INSERT INTO `tab_attendance` VALUES ('68', '2019-03-26 09:47:46', '2', '1');
INSERT INTO `tab_attendance` VALUES ('69', '2019-03-27 09:47:52', '2', '1');
INSERT INTO `tab_attendance` VALUES ('70', '2019-03-28 09:48:00', '2', '1');
INSERT INTO `tab_attendance` VALUES ('71', '2019-03-29 09:48:07', '2', '1');
INSERT INTO `tab_attendance` VALUES ('72', '2019-03-30 09:48:15', '2', '1');
INSERT INTO `tab_attendance` VALUES ('73', '2019-03-31 09:48:23', '2', '1');
INSERT INTO `tab_attendance` VALUES ('74', '2019-04-01 09:48:30', '2', '1');
INSERT INTO `tab_attendance` VALUES ('75', '2019-04-02 09:48:38', '2', '1');
INSERT INTO `tab_attendance` VALUES ('76', '2019-04-03 09:48:44', '2', '1');
INSERT INTO `tab_attendance` VALUES ('77', '2019-04-04 09:48:51', '2', '1');
INSERT INTO `tab_attendance` VALUES ('78', '2019-04-05 09:48:59', '2', '1');
INSERT INTO `tab_attendance` VALUES ('79', '2019-04-06 09:49:05', '2', '1');
INSERT INTO `tab_attendance` VALUES ('80', '2019-04-07 09:49:13', '2', '1');
INSERT INTO `tab_attendance` VALUES ('81', '2019-05-29 10:09:18', '2', '1');
INSERT INTO `tab_attendance` VALUES ('82', '2019-05-28 10:09:28', '2', '1');
INSERT INTO `tab_attendance` VALUES ('83', '2019-05-27 10:09:34', '2', '1');
INSERT INTO `tab_attendance` VALUES ('84', '2019-05-26 10:09:42', '2', '1');
INSERT INTO `tab_attendance` VALUES ('85', '2019-01-01 14:55:27', '2', '1');
INSERT INTO `tab_attendance` VALUES ('86', '2019-01-02 14:55:37', '2', '1');
INSERT INTO `tab_attendance` VALUES ('87', '2019-01-03 14:55:44', '2', '1');
INSERT INTO `tab_attendance` VALUES ('88', '2019-01-04 14:55:51', '2', '1');
INSERT INTO `tab_attendance` VALUES ('89', '2019-01-05 14:55:59', '2', '1');
INSERT INTO `tab_attendance` VALUES ('90', '2019-01-06 14:56:05', '2', '1');
INSERT INTO `tab_attendance` VALUES ('91', '2019-01-07 14:56:13', '2', '1');
INSERT INTO `tab_attendance` VALUES ('92', '2018-12-31 14:57:21', '2', '1');
INSERT INTO `tab_attendance` VALUES ('93', '2018-12-30 15:29:23', '2', '1');
INSERT INTO `tab_attendance` VALUES ('94', '2018-12-29 15:29:32', '2', '1');
INSERT INTO `tab_attendance` VALUES ('95', '2018-12-28 15:29:39', '2', '1');
INSERT INTO `tab_attendance` VALUES ('96', '2018-12-27 15:29:44', '2', '1');
INSERT INTO `tab_attendance` VALUES ('97', '2018-12-26 15:29:50', '2', '1');
INSERT INTO `tab_attendance` VALUES ('98', '2018-12-25 15:29:57', '2', '1');
INSERT INTO `tab_attendance` VALUES ('99', '2018-12-24 15:30:03', '2', '1');
INSERT INTO `tab_attendance` VALUES ('100', '2018-12-23 15:30:09', '2', '1');
INSERT INTO `tab_attendance` VALUES ('101', '2018-12-22 15:30:15', '2', '1');
INSERT INTO `tab_attendance` VALUES ('102', '2018-12-21 15:30:37', '2', '1');

-- ----------------------------
-- Table structure for tab_attendance_record
-- ----------------------------
DROP TABLE IF EXISTS `tab_attendance_record`;
CREATE TABLE `tab_attendance_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `appearance_time` datetime DEFAULT NULL COMMENT '出场日期',
  `approach_time` datetime DEFAULT NULL COMMENT '进场日期',
  `attendance_record_time` datetime DEFAULT NULL COMMENT '考勤日期',
  `project_id` int(11) DEFAULT NULL COMMENT '项目主键 ',
  `team_id` int(11) DEFAULT NULL COMMENT '班组人员主键 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='考勤情况';

-- ----------------------------
-- Records of tab_attendance_record
-- ----------------------------
INSERT INTO `tab_attendance_record` VALUES ('1', '2019-06-01 14:25:39', '2019-06-01 14:25:56', '2019-06-01 14:26:03', '2', '1');
INSERT INTO `tab_attendance_record` VALUES ('2', '2019-06-01 14:25:39', '2019-06-01 14:25:39', '2019-06-01 14:26:03', '2', '2');
INSERT INTO `tab_attendance_record` VALUES ('3', '2019-06-01 14:25:39', '2019-06-01 14:25:39', '2019-06-01 14:26:03', '2', '3');
INSERT INTO `tab_attendance_record` VALUES ('4', '2019-06-01 14:25:39', '2019-06-01 14:25:39', '2019-06-01 14:26:03', '2', '4');
INSERT INTO `tab_attendance_record` VALUES ('5', '2019-06-01 14:25:39', '2019-06-01 14:25:39', '2019-06-01 14:26:03', '2', '5');
INSERT INTO `tab_attendance_record` VALUES ('6', '2019-06-01 14:25:39', '2019-06-01 14:25:39', '2019-06-01 14:26:03', '2', '6');
INSERT INTO `tab_attendance_record` VALUES ('7', '2019-06-01 14:25:39', '2019-06-01 14:25:39', '2019-06-01 14:26:03', '2', '7');
INSERT INTO `tab_attendance_record` VALUES ('8', '2019-06-02 14:30:17', '2019-06-02 14:30:29', '2019-06-02 14:26:03', '2', '1');
INSERT INTO `tab_attendance_record` VALUES ('9', '2019-06-02 14:30:17', '2019-06-02 14:30:29', '2019-06-02 14:26:03', '2', '2');
INSERT INTO `tab_attendance_record` VALUES ('10', '2019-06-02 14:30:17', '2019-06-02 14:30:29', '2019-06-02 14:26:03', '2', '3');
INSERT INTO `tab_attendance_record` VALUES ('11', '2019-06-02 14:30:17', '2019-06-02 14:30:29', '2019-06-02 14:26:03', '2', '4');
INSERT INTO `tab_attendance_record` VALUES ('12', '2019-06-02 14:30:17', '2019-06-02 14:30:29', '2019-06-13 14:26:03', '2', '5');
INSERT INTO `tab_attendance_record` VALUES ('13', '2019-06-03 14:30:36', '2019-06-03 14:30:46', '2019-06-14 14:26:03', '2', '6');
INSERT INTO `tab_attendance_record` VALUES ('14', '2019-06-03 14:30:36', '2019-06-03 14:30:46', '2019-06-03 14:26:03', '2', '7');
INSERT INTO `tab_attendance_record` VALUES ('15', '2019-06-03 14:30:36', '2019-06-03 14:30:46', '2019-06-03 14:26:03', '2', '8');
INSERT INTO `tab_attendance_record` VALUES ('16', '2019-06-03 14:30:36', '2019-06-03 14:30:46', '2019-06-03 14:26:03', '2', '9');
INSERT INTO `tab_attendance_record` VALUES ('17', '2019-05-31 14:32:24', '2019-05-31 14:32:31', '2019-05-31 14:32:12', '2', '1');
INSERT INTO `tab_attendance_record` VALUES ('18', '2019-05-31 14:32:24', '2019-05-31 14:32:31', '2019-05-31 14:32:12', '2', '2');
INSERT INTO `tab_attendance_record` VALUES ('19', '2019-06-08 14:32:24', '2019-05-31 14:32:31', '2019-06-08 14:32:12', '2', '2');
INSERT INTO `tab_attendance_record` VALUES ('20', '2019-06-04 14:32:24', '2019-05-31 14:32:31', '2019-06-04 14:32:12', '2', '2');

-- ----------------------------
-- Table structure for tab_buyer
-- ----------------------------
DROP TABLE IF EXISTS `tab_buyer`;
CREATE TABLE `tab_buyer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名 ',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='采购员信息表';

-- ----------------------------
-- Records of tab_buyer
-- ----------------------------
INSERT INTO `tab_buyer` VALUES ('1', '钟大大', '18215636449');

-- ----------------------------
-- Table structure for tab_buyer_project
-- ----------------------------
DROP TABLE IF EXISTS `tab_buyer_project`;
CREATE TABLE `tab_buyer_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `buyer_id` int(11) DEFAULT NULL COMMENT '采购员主键 ',
  `project_id` int(11) DEFAULT NULL COMMENT '项目主键 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='采购员关联项目信息表';

-- ----------------------------
-- Records of tab_buyer_project
-- ----------------------------
INSERT INTO `tab_buyer_project` VALUES ('1', '1', '2');

-- ----------------------------
-- Table structure for tab_decoration_daily
-- ----------------------------
DROP TABLE IF EXISTS `tab_decoration_daily`;
CREATE TABLE `tab_decoration_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `content` longtext COMMENT '施工内容 ',
  `daily_time` datetime DEFAULT NULL COMMENT '日报日期 ',
  `project_id` int(11) DEFAULT NULL COMMENT '项目主键 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='装修报告（日报）';

-- ----------------------------
-- Records of tab_decoration_daily
-- ----------------------------
INSERT INTO `tab_decoration_daily` VALUES ('1', '121', '2019-06-01 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('2', '12111aaa', '2019-06-02 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('3', '121bbb', '2019-06-03 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('4', '121', '2019-06-04 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('5', '121', '2019-06-05 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('6', '121', '2019-06-06 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('7', '121', '2019-06-07 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('8', '121', '2019-06-08 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('9', '121', '2019-06-09 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('10', '121', '2019-06-10 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('11', '121', '2019-06-11 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('12', '121', '2019-06-12 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('13', '121', '2019-06-13 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('14', '121', '2019-06-14 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('15', '121', '2019-06-15 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('16', '121', '2019-06-16 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('17', '121', '2019-06-17 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('18', '121', '2019-06-18 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('19', '121', '2019-06-19 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('20', '121', '2019-06-20 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('21', '121', '2019-06-21 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('22', '121', '2019-06-22 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('23', '121', '2019-06-23 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('24', '121', '2019-06-24 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('25', '121', '2019-06-25 11:28:43', '2');
INSERT INTO `tab_decoration_daily` VALUES ('26', '121', '2019-05-31 11:36:20', '2');
INSERT INTO `tab_decoration_daily` VALUES ('27', 'dd', '2019-05-30 15:07:14', '2');

-- ----------------------------
-- Table structure for tab_decoration_weekly
-- ----------------------------
DROP TABLE IF EXISTS `tab_decoration_weekly`;
CREATE TABLE `tab_decoration_weekly` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `completion_rate` varchar(30) DEFAULT NULL COMMENT '完成比率 ',
  `content` longtext COMMENT '装修情况 ',
  `overall_evaluate` varchar(225) DEFAULT NULL COMMENT '综合评价 ',
  `project_id` int(11) DEFAULT NULL COMMENT '项目主键 ',
  `weekly_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='装修报告（周报）';

-- ----------------------------
-- Records of tab_decoration_weekly
-- ----------------------------
INSERT INTO `tab_decoration_weekly` VALUES ('1', '80', '测试1', 'ss', '2', '2019-06-01 11:10:14');
INSERT INTO `tab_decoration_weekly` VALUES ('2', '60', '测试2', '22', '2', '2019-06-08 11:16:50');
INSERT INTO `tab_decoration_weekly` VALUES ('3', '44', '测试333', 'sss', '2', '2019-06-15 11:38:52');

-- ----------------------------
-- Table structure for tab_designer
-- ----------------------------
DROP TABLE IF EXISTS `tab_designer`;
CREATE TABLE `tab_designer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名 ',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号 ',
  `position_name` varchar(30) DEFAULT NULL COMMENT '职位名称 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='设计师信息表';

-- ----------------------------
-- Records of tab_designer
-- ----------------------------
INSERT INTO `tab_designer` VALUES ('1', '王先生', '1821563649', '高级设计师');
INSERT INTO `tab_designer` VALUES ('2', '钟先生', '1821563648', '总监');

-- ----------------------------
-- Table structure for tab_designer_project
-- ----------------------------
DROP TABLE IF EXISTS `tab_designer_project`;
CREATE TABLE `tab_designer_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `designer_id` int(11) DEFAULT NULL COMMENT '设计师主键 ',
  `project_id` int(11) DEFAULT NULL COMMENT '项目主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='设计师关联项目信息表';

-- ----------------------------
-- Records of tab_designer_project
-- ----------------------------
INSERT INTO `tab_designer_project` VALUES ('1', '1', '2');

-- ----------------------------
-- Table structure for tab_drawing
-- ----------------------------
DROP TABLE IF EXISTS `tab_drawing`;
CREATE TABLE `tab_drawing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `content` longtext COMMENT '内容 ',
  `create_time` datetime DEFAULT NULL COMMENT '新增时间 ',
  `project_state_id` int(11) DEFAULT NULL COMMENT '项目状态主键 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='设计出图流程内容';

-- ----------------------------
-- Records of tab_drawing
-- ----------------------------
INSERT INTO `tab_drawing` VALUES ('1', 'designerOne_01', '2019-07-14 14:16:50', '1');
INSERT INTO `tab_drawing` VALUES ('2', 'designerOne_02', '2019-07-15 14:17:23', '1');
INSERT INTO `tab_drawing` VALUES ('3', 'designerThree_01', '2019-07-16 14:18:13', '2');
INSERT INTO `tab_drawing` VALUES ('4', '第二次概念设计图待出图,预计出图时间2018.06.14', '2019-07-17 14:18:16', '2');

-- ----------------------------
-- Table structure for tab_image
-- ----------------------------
DROP TABLE IF EXISTS `tab_image`;
CREATE TABLE `tab_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `create_time` datetime DEFAULT NULL COMMENT '新增时间 ',
  `image_id` int(11) DEFAULT NULL COMMENT '外键 ',
  `url` varchar(225) DEFAULT NULL COMMENT '图片地址',
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='图片库';

-- ----------------------------
-- Records of tab_image
-- ----------------------------
INSERT INTO `tab_image` VALUES ('1', '2019-07-02 11:51:59', '2', 'http://baidu.com', null);
INSERT INTO `tab_image` VALUES ('2', '2019-07-02 11:51:59', '3', 'http://ccu.com', null);

-- ----------------------------
-- Table structure for tab_intelligent_office
-- ----------------------------
DROP TABLE IF EXISTS `tab_intelligent_office`;
CREATE TABLE `tab_intelligent_office` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='智能办公信息';

-- ----------------------------
-- Records of tab_intelligent_office
-- ----------------------------
INSERT INTO `tab_intelligent_office` VALUES ('1', '小米打印机', '499', 'http://baidu.com');
INSERT INTO `tab_intelligent_office` VALUES ('2', '小米路由器', '1149', 'http://baidu.com');
INSERT INTO `tab_intelligent_office` VALUES ('3', '小米叮零智能视频门铃', '299', 'http://baidu.com');
INSERT INTO `tab_intelligent_office` VALUES ('4', '米家飞利浦蓝牙夜灯', '79', 'http://baidu.com');

-- ----------------------------
-- Table structure for tab_material
-- ----------------------------
DROP TABLE IF EXISTS `tab_material`;
CREATE TABLE `tab_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arrival_time` datetime DEFAULT NULL,
  `brand_specification` varchar(255) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `location_used` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` double DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='材料信息';

-- ----------------------------
-- Records of tab_material
-- ----------------------------
INSERT INTO `tab_material` VALUES ('1', '2019-07-09 10:58:59', 'ww', '㎡', '2019-07-09 14:18:14', 'ww', 'materialType_01', '22', '2', '323', '343');
INSERT INTO `tab_material` VALUES ('2', '2019-07-09 10:59:50', 'ss', '㎡', '2019-07-09 14:18:16', '232', 'materialType_02', '123', '2', '232', '23');

-- ----------------------------
-- Table structure for tab_message_info
-- ----------------------------
DROP TABLE IF EXISTS `tab_message_info`;
CREATE TABLE `tab_message_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='消息信息表';

-- ----------------------------
-- Records of tab_message_info
-- ----------------------------
INSERT INTO `tab_message_info` VALUES ('1', '我是代', '2019-06-20 18:33:42', '1', '1', '2');
INSERT INTO `tab_message_info` VALUES ('2', '我是2号', '2019-06-20 18:35:48', '1', '2', '2');
INSERT INTO `tab_message_info` VALUES ('3', '测试', '2019-07-15 17:43:09', '1', '1', '2');

-- ----------------------------
-- Table structure for tab_project_overview
-- ----------------------------
DROP TABLE IF EXISTS `tab_project_overview`;
CREATE TABLE `tab_project_overview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contract_cost` double DEFAULT NULL,
  `duty_name` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `investment_company` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `project_area` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='项目概述信息表';

-- ----------------------------
-- Records of tab_project_overview
-- ----------------------------
INSERT INTO `tab_project_overview` VALUES ('1', '益州大道555号', '500000', '郭老板', '2019-07-11 18:20:14', '太通', '18215636449', '520', '太通安全', '510000', '2019-07-11 18:20:11', '1');
INSERT INTO `tab_project_overview` VALUES ('2', '双流区文星镇', '440434', '老板', '2019-07-12 14:25:02', '科学院', '18215636448', '333', '中国科学院', '510000', '2019-07-10 14:25:00', '1');
INSERT INTO `tab_project_overview` VALUES ('3', '世纪城南路', '32323', '拉链', '2019-07-26 17:12:35', '世纪', '18215636448', '2222', '世纪', '510000', '2019-07-15 17:12:59', '1');

-- ----------------------------
-- Table structure for tab_project_state
-- ----------------------------
DROP TABLE IF EXISTS `tab_project_state`;
CREATE TABLE `tab_project_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='项目状态<>设计出图流程';

-- ----------------------------
-- Records of tab_project_state
-- ----------------------------
INSERT INTO `tab_project_state` VALUES ('1', '2', 'designerOne');
INSERT INTO `tab_project_state` VALUES ('2', '2', 'designerTwo');
INSERT INTO `tab_project_state` VALUES ('3', '2', 'designerThree');
INSERT INTO `tab_project_state` VALUES ('4', '2', 'designerFour');

-- ----------------------------
-- Table structure for tab_region
-- ----------------------------
DROP TABLE IF EXISTS `tab_region`;
CREATE TABLE `tab_region` (
  `id` varchar(6) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `baidu_x` double DEFAULT NULL,
  `baidu_y` double DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `google_x` double DEFAULT NULL,
  `google_y` double DEFAULT NULL,
  `gps_x` double DEFAULT NULL,
  `gps_y` double DEFAULT NULL,
  `region_level` bigint(20) DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `order_no` varchar(20) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `pregion` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrn3rd0j8e0h6iepn6fg2qfcai` (`pregion`),
  CONSTRAINT `FKrn3rd0j8e0h6iepn6fg2qfcai` FOREIGN KEY (`pregion`) REFERENCES `tab_region` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地区编码';

-- ----------------------------
-- Records of tab_region
-- ----------------------------

-- ----------------------------
-- Table structure for tab_team
-- ----------------------------
DROP TABLE IF EXISTS `tab_team`;
CREATE TABLE `tab_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名 ',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号 ',
  `type` int(11) DEFAULT '0' COMMENT '班组类型 1=木工组，2=泥水组，3=油漆组，4=电工组',
  `url` varchar(225) DEFAULT NULL COMMENT '头像 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='班组人员信息表';

-- ----------------------------
-- Records of tab_team
-- ----------------------------
INSERT INTO `tab_team` VALUES ('1', '钟', '18215636449', '1', 'http://baidu.com');
INSERT INTO `tab_team` VALUES ('2', '王', '18215636449', '2', 'http://baidu.com');
INSERT INTO `tab_team` VALUES ('3', '李', '18215636449', '3', 'http://baidu.com');
INSERT INTO `tab_team` VALUES ('4', '赵', '18215636449', '4', 'http://baidu.com');
INSERT INTO `tab_team` VALUES ('5', '刘', '18215636449', '1', 'http://baidu.com');
INSERT INTO `tab_team` VALUES ('6', '张', '18215636449', '2', 'http://baidu.com');
INSERT INTO `tab_team` VALUES ('7', '吴', '18215636449', '3', 'http://baidu.com');
INSERT INTO `tab_team` VALUES ('8', '孙', '18215636449', '4', 'http://baidu.com');
INSERT INTO `tab_team` VALUES ('9', '龙', '18215636449', '1', 'http://baidu.com');

-- ----------------------------
-- Table structure for tab_team_project
-- ----------------------------
DROP TABLE IF EXISTS `tab_team_project`;
CREATE TABLE `tab_team_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `project_id` int(11) DEFAULT NULL COMMENT '项目主键 ',
  `team_id` int(11) DEFAULT NULL COMMENT '班组人员主键 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='班组人员关联项目信息表';

-- ----------------------------
-- Records of tab_team_project
-- ----------------------------
INSERT INTO `tab_team_project` VALUES ('1', '2', '1');
INSERT INTO `tab_team_project` VALUES ('2', '2', '2');
INSERT INTO `tab_team_project` VALUES ('3', '2', '3');
INSERT INTO `tab_team_project` VALUES ('4', '2', '4');
INSERT INTO `tab_team_project` VALUES ('5', '2', '5');
INSERT INTO `tab_team_project` VALUES ('6', '2', '6');

-- ----------------------------
-- Table structure for tab_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_info`;
CREATE TABLE `tab_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `create_time` datetime DEFAULT NULL COMMENT '新增时间 ',
  `pass_word` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号 ',
  `state` int(11) DEFAULT '0' COMMENT '状态 1:正常 0: 禁用 ',
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of tab_user_info
-- ----------------------------
INSERT INTO `tab_user_info` VALUES ('1', '2019-06-20 18:34:34', 'M6s8hGQaiB61qN4DqHiV2g==', '18215636449', '1', '2');
INSERT INTO `tab_user_info` VALUES ('2', '2019-07-10 17:46:49', 'osGKLgbJSlfHNYF6sZu3WA==', '18215636448', '1', '1');
INSERT INTO `tab_user_info` VALUES ('3', '2019-07-10 17:46:54', 'qwA+Mr3wlR008uYQsvzkpg==', '18215636447', '1', '3');

-- ----------------------------
-- Table structure for tab_user_or_project
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_or_project`;
CREATE TABLE `tab_user_or_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `project_id` int(11) DEFAULT NULL COMMENT '项目主键 ',
  `user_id` int(11) DEFAULT NULL COMMENT '用户主键 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户关联项目表';

-- ----------------------------
-- Records of tab_user_or_project
-- ----------------------------
INSERT INTO `tab_user_or_project` VALUES ('1', '1', '1');
