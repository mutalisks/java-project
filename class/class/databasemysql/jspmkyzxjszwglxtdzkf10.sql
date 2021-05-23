/*
Navicat MySQL Data Transfer

Source Server         : 1111
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : jspmkyzxjszwglxtdzkf10

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-12 21:56:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `allusers`
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `cx` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES ('1', 'hsg', 'hsg', '超级管理员', '2018-03-26 21:06:12');

-- ----------------------------
-- Table structure for `gonggaoxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `gonggaoxinxi`;
CREATE TABLE `gonggaoxinxi` (
  `ID` int(11) NOT NULL,
  `biaoti` varchar(255) DEFAULT NULL,
  `fenlei` varchar(50) DEFAULT NULL,
  `neirong` longtext,
  `tianjiaren` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gonggaoxinxi
-- ----------------------------
INSERT INTO `gonggaoxinxi` VALUES ('1', '士大夫但是', '的风格', '豆腐干地方的风格地方', 'hsg', '2018-03-26 22:11:30');

-- ----------------------------
-- Table structure for `jiaoshixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshixinxi`;
CREATE TABLE `jiaoshixinxi` (
  `ID` int(11) NOT NULL,
  `xinxibianhao` varchar(50) DEFAULT NULL,
  `louhao` varchar(50) DEFAULT NULL,
  `cenghao` varchar(50) DEFAULT NULL,
  `jiaoshihao` varchar(50) DEFAULT NULL,
  `zuoweihao` varchar(50) DEFAULT NULL,
  `zhuangtai` varchar(50) DEFAULT NULL,
  `issh` varchar(2) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaoshixinxi
-- ----------------------------
INSERT INTO `jiaoshixinxi` VALUES ('1', '03262159477462', '1号楼', '2层', '201号', '1号', '空', '否', '2018-03-26 22:00:02');
INSERT INTO `jiaoshixinxi` VALUES ('2', '03262200039519', '1号楼', '2层', '201号', '2号', '空', '否', '2018-03-26 22:00:18');
INSERT INTO `jiaoshixinxi` VALUES ('3', '03262200186073', '1号楼', '1层', '101号', '1号', '无人', '否', '2018-03-26 22:00:55');
INSERT INTO `jiaoshixinxi` VALUES ('4', '03262211361431', '1号楼', '3层', '303', '2号', '空', '否', '2018-03-26 22:11:50');

-- ----------------------------
-- Table structure for `likai`
-- ----------------------------
DROP TABLE IF EXISTS `likai`;
CREATE TABLE `likai` (
  `ID` int(11) NOT NULL,
  `yuyuedanhao` varchar(50) DEFAULT NULL,
  `xinxibianhao` varchar(50) DEFAULT NULL,
  `louhao` varchar(50) DEFAULT NULL,
  `cenghao` varchar(50) DEFAULT NULL,
  `jiaoshihao` varchar(50) DEFAULT NULL,
  `zuoweihao` varchar(50) DEFAULT NULL,
  `likaiyuanyin` varchar(255) DEFAULT NULL,
  `xuehao` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likai
-- ----------------------------
INSERT INTO `likai` VALUES ('1', '03262206022063', '03262200186073', '1号楼', '1层', '101号', '1号', '豆腐干反对', '111', '刘伟', '2018-03-26 22:06:38');
INSERT INTO `likai` VALUES ('2', '03262212141005', '03262200039519', '1号楼', '2层', '201号', '2号', '似的发射点', '111', '刘伟', '2018-03-26 22:12:30');

-- ----------------------------
-- Table structure for `quxiao`
-- ----------------------------
DROP TABLE IF EXISTS `quxiao`;
CREATE TABLE `quxiao` (
  `ID` int(11) NOT NULL,
  `yuyuedanhao` varchar(50) DEFAULT NULL,
  `xinxibianhao` varchar(50) DEFAULT NULL,
  `louhao` varchar(50) DEFAULT NULL,
  `cenghao` varchar(50) DEFAULT NULL,
  `jiaoshihao` varchar(50) DEFAULT NULL,
  `zuoweihao` varchar(50) DEFAULT NULL,
  `xuehao` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quxiao
-- ----------------------------
INSERT INTO `quxiao` VALUES ('1', '03262206022063', '03262200186073', '1号楼', '1层', '101号', '1号', '111', '刘伟', '2018-03-26 22:07:22');
INSERT INTO `quxiao` VALUES ('2', '03262212141005', '03262200039519', '1号楼', '2层', '201号', '2号', '111', '刘伟', '2018-03-26 22:12:23');

-- ----------------------------
-- Table structure for `xueshengxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `xueshengxinxi`;
CREATE TABLE `xueshengxinxi` (
  `ID` int(11) NOT NULL,
  `xuehao` varchar(50) DEFAULT NULL,
  `mima` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(50) DEFAULT NULL,
  `yuanxi` varchar(50) DEFAULT NULL,
  `zhuanye` varchar(50) DEFAULT NULL,
  `shouji` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xueshengxinxi
-- ----------------------------
INSERT INTO `xueshengxinxi` VALUES ('1', '111', '111', '刘伟', '男', '计算机系', '计算机', '13353356988', '2018-03-26 21:59:10');
INSERT INTO `xueshengxinxi` VALUES ('2', '222', '222', '高峰', '男', '计算机系', '计算机', '13353356988', '2018-03-26 22:11:10');

-- ----------------------------
-- Table structure for `yuyue`
-- ----------------------------
DROP TABLE IF EXISTS `yuyue`;
CREATE TABLE `yuyue` (
  `ID` int(11) NOT NULL,
  `yuyuedanhao` varchar(50) DEFAULT NULL,
  `xinxibianhao` varchar(50) DEFAULT NULL,
  `louhao` varchar(50) DEFAULT NULL,
  `cenghao` varchar(50) DEFAULT NULL,
  `jiaoshihao` varchar(50) DEFAULT NULL,
  `zuoweihao` varchar(50) DEFAULT NULL,
  `yuyueshijian` varchar(50) DEFAULT NULL,
  `xuehao` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `shouji` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuyue
-- ----------------------------
INSERT INTO `yuyue` VALUES ('1', '03262206022063', '03262200186073', '1号楼', '1层', '101号', '1号', '2018-03-28 22:06:04', '111', '刘伟', '13353356988', '2018-03-26 22:06:06');
INSERT INTO `yuyue` VALUES ('2', '03262212141005', '03262200039519', '1号楼', '2层', '201号', '2号', '2018-03-29 22:12:15', '111', '刘伟', '13353356988', '2018-03-26 22:12:17');
