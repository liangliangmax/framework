/*
Navicat MySQL Data Transfer

Source Server         : 192.168.13.142
Source Server Version : 50636
Source Host           : 192.168.13.142:3306
Source Database       : framework

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2017-06-12 23:43:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sensitive_count_log
-- ----------------------------
DROP TABLE IF EXISTS `sensitive_count_log`;
CREATE TABLE `sensitive_count_log` (
  `id` varchar(255) NOT NULL,
  `text_id` varchar(32) NOT NULL,
  `count` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sensitive_count_log
-- ----------------------------

-- ----------------------------
-- Table structure for sensitive_keyword
-- ----------------------------
DROP TABLE IF EXISTS `sensitive_keyword`;
CREATE TABLE `sensitive_keyword` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `text` varchar(255) NOT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `owner` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_del` varchar(255) NOT NULL COMMENT '是否删除''T''删除，''F''未删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sensitive_keyword
-- ----------------------------
INSERT INTO `sensitive_keyword` VALUES ('cd290b2f43404252afd2674d3edbb284', '你好', null, '1', '2017-04-30 14:22:26', 'F');
INSERT INTO `sensitive_keyword` VALUES ('cd290b2f43404252afd2674d3edbb285', '谷歌', null, '2', '2017-04-30 20:50:07', 'F');
INSERT INTO `sensitive_keyword` VALUES ('cd290b2f43404252afd2674d3edbb286', '微软', null, '2', '2017-04-30 21:48:24', 'F');

-- ----------------------------
-- Table structure for sensitive_stopword
-- ----------------------------
DROP TABLE IF EXISTS `sensitive_stopword`;
CREATE TABLE `sensitive_stopword` (
  `id` varchar(255) NOT NULL DEFAULT '' COMMENT 'id',
  `stopword` varchar(255) NOT NULL COMMENT '停词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `owner` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `is_del` varchar(10) NOT NULL COMMENT '是否删除''T''删除''F''未删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sensitive_stopword
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` varchar(100) DEFAULT NULL,
  `order` varchar(100) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `level` varchar(9) DEFAULT NULL,
  `is_del` varchar(255) DEFAULT NULL,
  `is_root` varchar(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(255) DEFAULT NULL COMMENT '电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `token` varchar(36) NOT NULL COMMENT '认证id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `description` text COMMENT '描述',
  `is_del` varchar(10) NOT NULL COMMENT '是否删除''T''删除，''F''未删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'aaaa@123.com', null, null, '', '2017-04-29', null, 'F');
INSERT INTO `sys_user` VALUES ('2', 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '123@123.com', null, null, '123456', '2017-04-30', null, 'F');
SET FOREIGN_KEY_CHECKS=1;
