/*
Navicat MySQL Data Transfer

Source Server         : javaweb
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : answerquestion

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-05-27 23:30:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `answer_content` text,
  `answer_score` int(11) DEFAULT '0',
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('27', '1', '123456', '<p>我觉得ok</p>', '0');
INSERT INTO `answer` VALUES ('28', '18', '123456', '<p>尾田太强了</p>', '1');
INSERT INTO `answer` VALUES ('29', '2', 'hello123', '<p>你好</p><p><br/></p><p><br/></p><p><strong>阿达阿达</strong><br/></p><p><strong>是的&nbsp;<img src=\"http://localhost:8888/MyJspProject/img/20190527/1558940328589050622.png\" title=\"1558940328589050622.png\" alt=\"20190527131229.png\"/></strong></p>', '1');
INSERT INTO `answer` VALUES ('30', '20', 'nihao', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;福州大学好厉害是&nbsp;</p><p><br/></p><p>是的</p>', '1');

-- ----------------------------
-- Table structure for answer_image
-- ----------------------------
DROP TABLE IF EXISTS `answer_image`;
CREATE TABLE `answer_image` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_id` int(11) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer_image
-- ----------------------------

-- ----------------------------
-- Table structure for goodanswer
-- ----------------------------
DROP TABLE IF EXISTS `goodanswer`;
CREATE TABLE `goodanswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `answer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodanswer
-- ----------------------------
INSERT INTO `goodanswer` VALUES ('126', '123456', '28');
INSERT INTO `goodanswer` VALUES ('127', 'hello123', '29');
INSERT INTO `goodanswer` VALUES ('128', 'nihao', '30');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `part_content` text,
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `question_title` varchar(100) NOT NULL,
  `question_content` text,
  `question_answers` int(11) DEFAULT '0',
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('刚看完复联4 懂的大佬答一下嘻嘻\r\n\r\n\r\n\r\n原问题涉及到了剧透，所以放到了描述里\r\n\r\n原问题：为什么美队可以拿起雷神的锤子', '1', 'nihao', '为什么美队可以拿起雷神的锤子？', '刚看完复联4 懂的大佬答一下嘻嘻\r\n\r\n\r\n\r\n原问题涉及到了剧透，所以放到了描述里\r\n\r\n原问题：为什么美队可以拿起雷神的锤子', '1');
INSERT INTO `question` VALUES ('最近在网上买了双经典款匡威一代，因为从来没买过高帮的匡威，而那双高帮匡威那么经典，简直是学生党的必入款啊。赶上打折只要两百六。结果到货后我爸妈查看淘宝订单就开始抱怨，说我还有两双匡威又没坏怎么又买，说......', '2', 'nihao', '为什么父母会觉得一双匡威贵？', '最近在网上买了双经典款匡威一代，因为从来没买过高帮的匡威，而那双高帮匡威那么经典，简直是学生党的必入款啊。赶上打折只要两百六。结果到货后我爸妈查看淘宝订单就开始抱怨，说我还有两双匡威又没坏怎么又买，说我其他的运动鞋也是好几百一双的都没坏，又说我暑假买了很多东西了。结果他们擅自把我那双刚到的鞋子拒收了！！还立马申请了退款！你知道我看见它打折降价的时候下单的欣喜感吗？搁我同学家，再不济的买双经典款匡威也再正常不过了，人都直接上专柜买，哪像我这样为了节约还上网各种比对找差价？好不容易满意的下单了，等了这么久到货了结果你给我拒收？？因为我以前的匡威都是我妈带着去专柜买的，都比这双贵很多啊也没见他们这么过分，这次才两百多居然做的这么绝！我暑假也就买了两件T恤一双凉鞋，而且价格都是平价的那种，况且我已经高中毕业了！人高中毕业都开始学特长旅游化妆健身……这些都需要更多的资金，而我一项也没干成，好不容易准备去长沙了，想有双新鞋，等了这么多天，却是这样的结果。我是高中时才接触的匡威，这个年代的小孩儿小学初中就踩匡威了吧，现在都大学生了，他们居然还会觉得一双打折两百多的匡威贵？？我真心觉得他们太抠了，太过分了，为什么别人家的父母收入也很一般但对孩子从来不省？一毕业就买了果7/7s，笔记本也买了，还各种带着旅游……我想干的所有事却一次都不敢提起，为什么我这么为他们着想了，他们连一双鞋这点要求都不能满足我？都是借口！大家都评评这双打折260的匡威到底有多贵啊？！唉~', '1');
INSERT INTO `question` VALUES ('啊啊啊啊啊太好看了！！！', '18', '123456789', '如何评价《海贼王》943话？', '<p>啊啊啊啊啊太好看了！！！</p><p><img src=\"http://localhost:8888/MyJspProject/img/20190527/1558937317754029863.jpg\" title=\"1558937317754029863.jpg\" alt=\"Screenshot_20190527-140719.jpg\" width=\"378\" height=\"416\" style=\"width: 378px; height: 416px;\"/></p><p><br/></p><p><br/></p>', '1');
INSERT INTO `question` VALUES ('啊啊啊啊斤斤计较急急急急急急急急急急急啊啊啊啊斤斤计较急急急急急急急急急急急急急急急safs啊啊啊啊斤斤计较急急急急急急急急急急急急急急急safs啊啊啊啊斤斤计较急急急急急急急急急急急急急急急safs......', '19', 'hello123', '啊啊啊啊', '<p>啊啊啊啊<br/></p><p>斤斤计较急急急急急急急急急急急</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p><br/></p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p>v</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\"><img src=\"http://localhost:8888/MyJspProject/img/20190527/1558940396982038929.png\" title=\"1558940396982038929.png\" alt=\"20190527145702.png\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p style=\"white-space: normal;\">啊啊啊啊<br/></p><p style=\"white-space: normal;\">斤斤计较急急急急急急急急急急急急急急急safs</p><p>急急急急safsafsdfas<br/></p>', '0');
INSERT INTO `question` VALUES ('啊啊啊啊啊啊啊啊啊啊啊啊啊撒啊啊啊', '20', 'hello123', '福州大学', '<p><span style=\"font-size: 24px;\"><strong>啊啊啊啊啊啊啊啊啊啊啊啊啊</strong></span></p><p><span style=\"text-decoration: underline;\"><strong><br/></strong></span></p><p><span style=\"text-decoration: underline;\"><em><strong>撒啊啊啊</strong></em></span></p><p><em><strong><br/></strong></em></p>', '1');

-- ----------------------------
-- Table structure for question_image
-- ----------------------------
DROP TABLE IF EXISTS `question_image`;
CREATE TABLE `question_image` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_image
-- ----------------------------

-- ----------------------------
-- Table structure for save
-- ----------------------------
DROP TABLE IF EXISTS `save`;
CREATE TABLE `save` (
  `answer_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT '0',
  `user_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of save
-- ----------------------------
INSERT INTO `save` VALUES ('28', '0', '123456');
INSERT INTO `save` VALUES ('29', '0', 'hello123');
INSERT INTO `save` VALUES ('30', '0', 'nihao');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` varchar(30) NOT NULL,
  `user_pwd` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_img_url` varchar(1000) DEFAULT 'default.png',
  `user_score` int(11) DEFAULT '0',
  `user_follows` int(11) DEFAULT '0',
  `user_sex` varchar(10) DEFAULT '未知',
  `user_question_num` int(11) DEFAULT '0',
  `user_answer_num` int(11) DEFAULT '0',
  `user_describe` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('031602425', 'zwzs', 'vv', 'default.png', '0', '0', '未知', '0', '0', '这个人很懒，森马都没有留下');
INSERT INTO `user` VALUES ('123456', '1111', '谷歌', '20190527131229.png', '2', '0', '男', '0', '2', 'hello');
INSERT INTO `user` VALUES ('123456789', '123456', '.。。。', 'default.png', '0', '0', '未知', '1', '0', '');
INSERT INTO `user` VALUES ('asd', 'asd', 'asd', 'default.png', '0', '0', '未知', '0', '0', '这个人很懒，森马都没有留下');
INSERT INTO `user` VALUES ('hello123', '1111', '大爷', '20190527145702.png', '1', '0', '女', '2', '1', 'null');
INSERT INTO `user` VALUES ('nihao', '123', '卧槽', 'nihao.png', '2', '0', '未知', '2', '1', '啊啊啊啊');
INSERT INTO `user` VALUES ('woc', '111', '大爷2', 'default.png', '0', '0', '未知', '0', '0', '这个人很懒，森马都没有留下');
INSERT INTO `user` VALUES ('zzz', 'zzz', 'zzz', 'default.png', '0', '0', '未知', '0', '0', '这个人很懒，森马都没有留下');
INSERT INTO `user` VALUES ('zzzz', '123', 'zzz', 'default.png', '0', '0', '未知', '0', '0', '这个人很懒，森马都没有留下');
