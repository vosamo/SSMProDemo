/*
Navicat MySQL Data Transfer

Source Server         : 本地库
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : ssmdb

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-04-26 15:33:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_dict
-- ----------------------------
DROP TABLE IF EXISTS `tb_dict`;
CREATE TABLE `tb_dict` (
  `dictid` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典id',
  `field` varchar(15) DEFAULT NULL COMMENT '对照字段',
  `fieldname` varchar(20) DEFAULT NULL COMMENT '对照字段名称',
  `code` varchar(10) DEFAULT NULL COMMENT '代码',
  `codedesc` varchar(100) DEFAULT NULL COMMENT '代码描述',
  `enabled` varchar(2) DEFAULT '1' COMMENT '启用状态(0:禁用;1:启用)',
  `sortno` int(4) DEFAULT NULL COMMENT '排序号',
  PRIMARY KEY (`dictid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dict
-- ----------------------------
INSERT INTO `tb_dict` VALUES ('1', 'SEX', '性别', '1', '男', '1', '1');
INSERT INTO `tb_dict` VALUES ('2', 'SEX', '性别', '2', '女', '1', '2');
INSERT INTO `tb_dict` VALUES ('3', 'EDU', '学历', '1', '高中', '1', '1');
INSERT INTO `tb_dict` VALUES ('4', 'EDU', '学历', '3', '本科', '1', '3');
INSERT INTO `tb_dict` VALUES ('5', 'EDU', '学历', '4', '研究生', '1', '4');
INSERT INTO `tb_dict` VALUES ('6', 'EDU', '学历', '5', '博士', '1', '5');
INSERT INTO `tb_dict` VALUES ('7', 'EDU', '学历', '2', '专科', '1', '2');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `user_sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `user_birthday` date DEFAULT NULL COMMENT '出生日期',
  `user_email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `user_edu` varchar(2) DEFAULT NULL COMMENT '学历',
  `user_telephone` varchar(30) DEFAULT NULL COMMENT '联系方式',
  `user_address` varchar(100) DEFAULT NULL COMMENT '住址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '李磊', '1', '1985-01-12', 'lilei123@sina.com', '3', '13211335451', '北京市东城区XXXX', '2017-01-31 18:24:41');
INSERT INTO `tb_user` VALUES ('2', '张华', '2', '1988-11-15', 'zhanghuajig@163.com', '3', '13811362254', '北京市西城区XXXX', '2017-01-31 18:29:08');
INSERT INTO `tb_user` VALUES ('3', '王媛媛', '2', '1990-04-06', 'yuanyuan112@sina.com', '3', '13511784568', '北京市西城区XXXX', '2017-01-18 10:30:48');
INSERT INTO `tb_user` VALUES ('4', '陈迪', '1', '1990-06-16', 'chendi0616@sina.com', '3', '13511697892', '北京市东城区XXXX', '2017-01-10 09:20:50');
INSERT INTO `tb_user` VALUES ('5', '王海东', '1', '1989-05-23', 'wanghaidong@163.com', '4', '13811981290', '北京市石景山区苹果园XXXXX', '2017-01-12 18:33:31');
INSERT INTO `tb_user` VALUES ('6', '李雪梅', '2', '1985-05-12', 'lixuemei@163.com', '2', '13911378945', '北京市朝阳区XXX', '2017-01-27 18:34:42');
INSERT INTO `tb_user` VALUES ('7', '张扬', '1', '1988-04-12', 'zhangyang11@sina.com', '3', '13611651245', '北京市石景山区XXXX', '2017-01-24 18:35:46');
INSERT INTO `tb_user` VALUES ('8', '赵庆', '1', '1986-05-06', 'zhaoqing56@163.com', '2', '13599632147', '北京市朝阳区XXX', '2017-01-31 18:38:57');
INSERT INTO `tb_user` VALUES ('9', '韩梅梅', '2', '1992-01-01', 'hanmeimei@163.com', '3', '12345656', '', '2018-04-23 11:42:01');
