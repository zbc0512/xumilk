/*
Navicat MySQL Data Transfer

Source Server         : prpall
Source Server Version : 50629
Source Host           : localhost:3306
Source Database       : xumilk

Target Server Type    : MYSQL
Target Server Version : 50629
File Encoding         : 65001

Date: 2016-04-11 14:07:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `xu_user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `xu_user`;
CREATE TABLE `xu_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `real_name` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `sex` varchar(1) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16001 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of xu_user
-- ----------------------------
INSERT INTO `xu_user` VALUES ('16001', 'zbc', 'zbc', 'zbc', '186', 'zbc@xumilk.com', '男');
