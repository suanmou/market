/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : supermarket

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2017-06-14 15:28:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` char(6) NOT NULL,
  `password` varchar(20) NOT NULL,
  `adminName` varchar(20) NOT NULL,
  `sex` char(4) NOT NULL DEFAULT '女',
  `phone` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `rankId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('000001', '123456', '张敏', '女', '13415329021', '2505519994@qq.com', '中山市五桂山', '1');
INSERT INTO `admin` VALUES ('100000', '123456', '詹珊珊', '女', '13415329021', '2505519994@qq.com', '广州市越秀区', '0');
INSERT INTO `admin` VALUES ('100002', '123456', '钟明珍', '女', '15219136030', '2505519994@qq.com', '梅州市五华县华城镇', '0');
INSERT INTO `admin` VALUES ('654321', '123456', '钟烜桦', '男', '13415329021', '2505519994@qq.com', '广州市天河区', '0');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customerId` char(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` char(4) NOT NULL DEFAULT '女',
  `phone` varchar(20) NOT NULL,
  `code` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('000000', '普通用户', '男', '15219136030', '0');
INSERT INTO `customer` VALUES ('000001', '徐伊琳', '女', '13415329021', '0');
INSERT INTO `customer` VALUES ('000002', '张建敏', '女', '13415329021', '0');
INSERT INTO `customer` VALUES ('000003', '张彩明', '女', '13415329021', '0');
INSERT INTO `customer` VALUES ('000004', '詹素义', '女', '15219136030', '0');
INSERT INTO `customer` VALUES ('000005', '吴雪儿', '女', '15219136030', '0');
INSERT INTO `customer` VALUES ('000006', '袁晓盈', '女', '13415329021', '0');

-- ----------------------------
-- Table structure for dealing
-- ----------------------------
DROP TABLE IF EXISTS `dealing`;
CREATE TABLE `dealing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminId` char(6) NOT NULL,
  `customerId` char(6) DEFAULT '000000',
  `goodId` char(6) NOT NULL,
  `num` int(11) NOT NULL,
  `dealingtime` datetime NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adminId` (`adminId`),
  KEY `customerId` (`customerId`),
  KEY `goodId` (`goodId`),
  CONSTRAINT `dealing_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admin` (`adminId`),
  CONSTRAINT `dealing_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`),
  CONSTRAINT `dealing_ibfk_3` FOREIGN KEY (`goodId`) REFERENCES `good` (`goodId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dealing
-- ----------------------------
INSERT INTO `dealing` VALUES ('1', '100000', '000002', '000002', '10', '2017-06-05 16:24:57', '100.00');
INSERT INTO `dealing` VALUES ('2', '000001', '000000', '000001', '2', '2017-06-12 09:27:11', '150.00');
INSERT INTO `dealing` VALUES ('3', '000001', '000000', '000001', '10', '2017-06-12 09:34:12', '150.00');

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `goodId` char(6) NOT NULL,
  `goodName` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goodtypeId` char(6) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `originPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`goodId`),
  KEY `goodtypeId` (`goodtypeId`),
  CONSTRAINT `good_ibfk_1` FOREIGN KEY (`goodtypeId`) REFERENCES `goodtype` (`goodtypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('000001', '芒果', '150.00', '0001', '90', '102.00');
INSERT INTO `good` VALUES ('000002', '长虹电视', '1999.00', '0002', '500', '29.80');
INSERT INTO `good` VALUES ('000003', '苹果', '15.00', '0001', '220', '10.00');
INSERT INTO `good` VALUES ('000004', '创维电视', '1999.00', '0002', '21', '1841.86');

-- ----------------------------
-- Table structure for goodtype
-- ----------------------------
DROP TABLE IF EXISTS `goodtype`;
CREATE TABLE `goodtype` (
  `goodtypeId` char(4) NOT NULL,
  `goodtypeName` varchar(20) NOT NULL,
  PRIMARY KEY (`goodtypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodtype
-- ----------------------------
INSERT INTO `goodtype` VALUES ('0001', '果蔬类');
INSERT INTO `goodtype` VALUES ('0002', '电器类');
INSERT INTO `goodtype` VALUES ('0003', '服饰类');
INSERT INTO `goodtype` VALUES ('0004', '日用品类');

-- ----------------------------
-- Table structure for inshop
-- ----------------------------
DROP TABLE IF EXISTS `inshop`;
CREATE TABLE `inshop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goodId` char(6) NOT NULL,
  `supplierId` char(6) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `inTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goodId` (`goodId`),
  KEY `supplierId` (`supplierId`),
  CONSTRAINT `inshop_ibfk_2` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`supplierId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inshop
-- ----------------------------
INSERT INTO `inshop` VALUES ('1', '000002', '123456', '100', '10.00', '2017-06-05 11:23:19');
INSERT INTO `inshop` VALUES ('2', '000002', '123456', '100', '10.00', '2017-06-05 11:25:56');
INSERT INTO `inshop` VALUES ('3', '000002', '123456', '100', '10.00', '2017-06-05 11:29:10');
INSERT INTO `inshop` VALUES ('4', '000002', '123456', '100', '10.00', '2017-06-05 11:29:48');
INSERT INTO `inshop` VALUES ('5', '000002', '123456', '100', '102.00', '2017-06-05 11:31:35');
INSERT INTO `inshop` VALUES ('6', '000002', '123456', '100', '10.00', '2017-06-05 11:32:05');
INSERT INTO `inshop` VALUES ('7', '000002', '123456', '100', '10.00', '2017-06-05 11:32:54');
INSERT INTO `inshop` VALUES ('8', '000002', '123456', '100', '10.00', '2017-06-06 16:17:51');
INSERT INTO `inshop` VALUES ('9', '000002', '123456', '10', '1000.00', '2017-06-06 16:19:35');
INSERT INTO `inshop` VALUES ('10', '000001', '654321', '102', '102.00', '2017-06-11 22:02:42');
INSERT INTO `inshop` VALUES ('11', '000004', '654321', '10', '1999.00', '2017-06-11 22:23:40');
INSERT INTO `inshop` VALUES ('12', '000004', '654321', '11', '1699.00', '2017-06-11 22:24:11');
INSERT INTO `inshop` VALUES ('13', '000003', '654321', '20', '10.00', '2017-06-12 10:38:09');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `supplierId` char(6) NOT NULL,
  `supplierName` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`supplierId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('123456', '日升公司', '13415329021', '2505519994@qq.com', '广州市海珠区');
INSERT INTO `supplier` VALUES ('654321', '第一公司', '13415329021', '2505519994@qq.com', '广州市海珠区');
INSERT INTO `supplier` VALUES ('654322', '标杆公司', '13415329021', '2505519994@qq.com', '广州市海珠区');
