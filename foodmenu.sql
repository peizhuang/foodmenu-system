/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50628
Source Host           : localhost:3306
Source Database       : foodmenu

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2017-02-07 18:18:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_food
-- ----------------------------
DROP TABLE IF EXISTS `t_food`;
CREATE TABLE `t_food` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '菜名',
  `value` int(11) DEFAULT NULL COMMENT '菜品单价',
  `seriosid` varchar(50) NOT NULL COMMENT '菜系id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜品表，用于保存菜品信息';

-- ----------------------------
-- Records of t_food
-- ----------------------------

-- ----------------------------
-- Table structure for t_foodserious
-- ----------------------------
DROP TABLE IF EXISTS `t_foodserious`;
CREATE TABLE `t_foodserious` (
  `id` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '菜系名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜品系列，每个系列为不同的菜';

-- ----------------------------
-- Records of t_foodserious
-- ----------------------------

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名',
  `tableid` varchar(50) NOT NULL COMMENT '桌子id',
  `tablename` varchar(255) DEFAULT NULL COMMENT '桌子名',
  `personnum` int(11) DEFAULT NULL COMMENT '人数',
  `isreservation` int(1) DEFAULT NULL COMMENT '该卓客人是否是预定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表，用于保存客人所在桌名，人数信息';

-- ----------------------------
-- Records of t_menu
-- ----------------------------

-- ----------------------------
-- Table structure for t_menu_food
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_food`;
CREATE TABLE `t_menu_food` (
  `id` varchar(50) NOT NULL,
  `menuid` varchar(255) DEFAULT NULL COMMENT '菜单id',
  `foodid` varchar(255) DEFAULT NULL COMMENT '菜品id',
  `foodname` varchar(255) DEFAULT NULL COMMENT '菜品名',
  `fooddelete` int(1) DEFAULT NULL COMMENT '菜品是否已删除（用于标识客户退菜）',
  `isextra` int(1) DEFAULT NULL COMMENT '菜品是否再次添加',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保存菜单对应的菜品信息，包括菜品是否再次添加，菜品是否已退，菜品详情';

-- ----------------------------
-- Records of t_menu_food
-- ----------------------------

-- ----------------------------
-- Table structure for t_reservation
-- ----------------------------
DROP TABLE IF EXISTS `t_reservation`;
CREATE TABLE `t_reservation` (
  `id` varchar(255) NOT NULL,
  `tableid` varchar(255) DEFAULT NULL COMMENT '桌子id',
  `personnum` int(11) DEFAULT NULL COMMENT '预定人数',
  `reservator` varchar(255) DEFAULT NULL COMMENT '预定人姓名',
  `cometime` datetime DEFAULT NULL COMMENT '预定到店时间',
  `reservatetime` datetime DEFAULT NULL COMMENT '预定时间（打电话的时间）',
  `iscome` int(1) DEFAULT NULL COMMENT '客人是否已经到了'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于保存预定信息。包括预定人，预定到店时间，预定时间，人数';

-- ----------------------------
-- Records of t_reservation
-- ----------------------------

-- ----------------------------
-- Table structure for t_table
-- ----------------------------
DROP TABLE IF EXISTS `t_table`;
CREATE TABLE `t_table` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '桌子名',
  `maxvalue` int(11) DEFAULT NULL COMMENT '最大人数',
  `isroom` int(1) DEFAULT NULL COMMENT '是否包间（0为否，1为是）',
  `split` int(1) DEFAULT NULL COMMENT '包间能否拆分（0为否，1为是）',
  `userdnow` int(1) DEFAULT NULL COMMENT '是否正在使用（0为否，1为是）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于保存桌子（房间）信息，包括最大可坐人数，是否可拆分，是否正在使用';

-- ----------------------------
-- Records of t_table
-- ----------------------------
