/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : secondhandtradingplatform

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2020-04-04 12:13:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `cateName` varchar(32) DEFAULT NULL COMMENT '分类名',
  `cateDesc` varchar(255) DEFAULT NULL COMMENT '分类描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('1', '数码', '数码（digital）系统，又称为数字系统，是使用离散（即不连续的）的0或1来进行信息的输入，处理，传输、存贮等处理的系统。');
INSERT INTO `t_category` VALUES ('2', '医药', '医药也可预防疾病，治疗疾病，减少痛苦，增进健康，或增强机体对疾病的抵抗力或帮助诊断疾病的物质。');
INSERT INTO `t_category` VALUES ('3', '手机', '手机、全称为移动电话或无线电话，通常称为手机，原本只是一种通讯工具，早期又有大哥大的俗称 [1]  ，是可以在较广范围内使用的便携式电话终端，最早是由美国贝尔实验室在1940年制造的战地移动电话机发展而来。');
INSERT INTO `t_category` VALUES ('4', '百货', '百货，指各种货物。语出《礼记·礼运》：“礼行於社，而百货可极焉。”');
INSERT INTO `t_category` VALUES ('5', '食品', '食品，指各种供人食用或者饮用的成品和原料以及按照传统既是食品又是中药材的物品，但是不包括以治疗为目的的物品。');
INSERT INTO `t_category` VALUES ('6', '女装', '女士穿着的衣物统称为女装。');
INSERT INTO `t_category` VALUES ('8', '电器', '电器（electrical appliance）泛指所有用电的器具');
INSERT INTO `t_category` VALUES ('9', '洗护', '有机洗护越来越受到人们的关注，在生活水平提高以后，健康自然成了人们关注的焦点。');
INSERT INTO `t_category` VALUES ('10', '运动', '运动，一种涉及体力和技巧且由一套规则或习惯所约束的行为活动，通常具有竞争性。');
INSERT INTO `t_category` VALUES ('11', '饰品', '饰品是用来装饰的物品，一般用途为美化个人仪表，装点居室，美化公共环境，装点汽车。');

-- ----------------------------
-- Table structure for t_images
-- ----------------------------
DROP TABLE IF EXISTS `t_images`;
CREATE TABLE `t_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片的ID',
  `imgPath` varchar(255) DEFAULT NULL COMMENT '图片的路径',
  `productId` int(11) DEFAULT NULL COMMENT '该图片所属商品的ID',
  PRIMARY KEY (`id`),
  KEY `t_images_ibfk_2` (`productId`),
  CONSTRAINT `t_images_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `t_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_images
-- ----------------------------
INSERT INTO `t_images` VALUES ('1', '/public/img/goods/IBM服务器硬盘600G.jpg', '1');
INSERT INTO `t_images` VALUES ('2', '/public/img/goods/澳洲男士钱包.jpg', '2');
INSERT INTO `t_images` VALUES ('3', '/public/img/goods/保温水壶.jpg', '49');
INSERT INTO `t_images` VALUES ('4', '/public/img/goods/笔记本电脑.jpg', '50');
INSERT INTO `t_images` VALUES ('5', '/public/img/goods/笔记本电脑.jpg', '50');
INSERT INTO `t_images` VALUES ('6', '/public/img/goods/笔记本电脑.jpg', '50');
INSERT INTO `t_images` VALUES ('7', '/public/img/goods/博冠电子目镜200W天文望远镜.jpg', '51');
INSERT INTO `t_images` VALUES ('8', '/public/img/goods/不锈钢剪刀.jpg', '52');
INSERT INTO `t_images` VALUES ('9', '/public/img/goods/电磁炉.jpg', '53');
INSERT INTO `t_images` VALUES ('10', '/public/img/goods/电饭煲.jpg', '54');
INSERT INTO `t_images` VALUES ('11', '/public/img/goods/电排插.jpg', '55');
INSERT INTO `t_images` VALUES ('12', '/public/img/goods/华嘉世家特大号化妆收纳盒.jpg', '56');
INSERT INTO `t_images` VALUES ('13', '/public/img/goods/九阳电热饭盒超大容量速热.jpg', '57');
INSERT INTO `t_images` VALUES ('14', '/public/img/goods/狼蛛A1小咖耳机.jpg', '58');
INSERT INTO `t_images` VALUES ('15', '/public/img/goods/路由器.jpg', '59');
INSERT INTO `t_images` VALUES ('16', '/public/img/goods/沐浴露.jpg', '60');
INSERT INTO `t_images` VALUES ('17', '/public/img/goods/千钰15只挂钩.jpg', '61');
INSERT INTO `t_images` VALUES ('18', '/public/img/goods/三星保护套.jpg', '62');
INSERT INTO `t_images` VALUES ('19', '/public/img/goods/收纳盒.jpg', '63');
INSERT INTO `t_images` VALUES ('20', '/public/img/goods/手洗平板拖把.jpg', '64');
INSERT INTO `t_images` VALUES ('21', '/public/img/goods/双面胶.jpg', '65');
INSERT INTO `t_images` VALUES ('22', '/public/img/goods/水果麦片.jpg', '66');
INSERT INTO `t_images` VALUES ('23', '/public/img/goods/先马坦克300w台式游戏电脑.jpg', '67');
INSERT INTO `t_images` VALUES ('24', '/public/img/goods/小米手机.jpg', '68');
INSERT INTO `t_images` VALUES ('25', '/public/img/goods/熊猫鞋.jpg', '69');
INSERT INTO `t_images` VALUES ('27', '/public/img/goods/运动背包.jpg', '71');
INSERT INTO `t_images` VALUES ('28', '/public/img/goods/智能手表手环蓝牙多功能.jpg', '72');
INSERT INTO `t_images` VALUES ('29', '/public/img/goods/中性笔考试专用.jpg', '73');
INSERT INTO `t_images` VALUES ('30', '/public/img/goods/液体创可贴.jpg', '75');
INSERT INTO `t_images` VALUES ('31', '/public/img/goods/洗眼液药水.jpg', '76');
INSERT INTO `t_images` VALUES ('32', '/public/img/goods/魅族手机.jpg', '77');
INSERT INTO `t_images` VALUES ('33', '/public/img/goods/家用急救小药箱.jpg', '78');
INSERT INTO `t_images` VALUES ('34', '/public/img/goods/vivo.jpg', '79');
INSERT INTO `t_images` VALUES ('35', '/public/img/goods/华为.jpg', '80');
INSERT INTO `t_images` VALUES ('56', '/public/img/goods/酒精消毒液.jpg', '81');
INSERT INTO `t_images` VALUES ('60', '/public/img/goods/有线鼠标.jpg', '70');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `productName` varchar(32) DEFAULT NULL COMMENT '商品的名字',
  `productDesc` varchar(32) DEFAULT NULL COMMENT '商品的描述',
  `launchTime` timestamp NULL DEFAULT NULL COMMENT '商品上架的时间',
  `productPrice` int(20) DEFAULT NULL COMMENT '商品的价钱',
  `isHot` tinyint(4) DEFAULT '0' COMMENT '是否为热门商品,默认为0，0为冷门，1为热门',
  `isSell` tinyint(4) DEFAULT '0' COMMENT '是否已经售出，0：未出售，1：已出售',
  `productStatus` tinyint(4) DEFAULT '2' COMMENT '商品的状态 1：违规商品，2：未审核，3：以审核',
  `illegalRemarks` varchar(255) DEFAULT NULL COMMENT '商品的状态说明，用于说明违规的理由',
  `userId` int(11) DEFAULT NULL COMMENT '发布该商品的用户ID',
  `cateId` int(11) DEFAULT NULL COMMENT '该商品所属的分类ID',
  PRIMARY KEY (`id`),
  KEY `cateId` (`cateId`),
  KEY `t_product_ibfk_2` (`userId`),
  CONSTRAINT `t_product_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_product_ibfk_3` FOREIGN KEY (`cateId`) REFERENCES `t_category` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', 'IBM服务器硬盘600G', '出售IBM服务器硬盘600G', '2020-03-11 18:30:12', '500', '0', '0', '2', null, '1', '1');
INSERT INTO `t_product` VALUES ('2', '澳洲男士钱包', null, '2020-04-01 18:34:37', '20', '0', '0', '2', null, '748', '4');
INSERT INTO `t_product` VALUES ('49', '保温水壶', null, '2020-04-09 18:46:55', '300', '0', '0', '2', null, '751', '4');
INSERT INTO `t_product` VALUES ('50', '笔记本电脑', null, '2020-04-17 18:46:59', '1000', '0', '0', '2', null, '1', '8');
INSERT INTO `t_product` VALUES ('51', '博冠电子目镜200W天文望远镜', null, '2020-03-03 18:47:10', '200', '0', '0', '2', null, '753', '10');
INSERT INTO `t_product` VALUES ('52', '不锈钢剪刀', null, '2020-03-11 18:30:12', '20', '0', '0', '2', null, '752', '4');
INSERT INTO `t_product` VALUES ('53', '电磁炉', null, '2020-04-01 18:34:37', '100', '0', '0', '2', null, '756', '8');
INSERT INTO `t_product` VALUES ('54', '电饭煲', null, '2020-04-09 18:46:55', '200', '0', '0', '2', null, '767', '8');
INSERT INTO `t_product` VALUES ('55', '电排插', null, '2020-04-17 18:46:59', '40', '0', '0', '2', null, '778', '8');
INSERT INTO `t_product` VALUES ('56', '华嘉世家特大号化妆收纳盒', null, '2020-03-03 18:47:10', '200', '0', '0', '2', null, '789', '6');
INSERT INTO `t_product` VALUES ('57', '九阳电热饭盒超大容量速热', null, '2020-04-09 18:46:55', '11', '0', '0', '2', null, '767', '8');
INSERT INTO `t_product` VALUES ('58', '狼蛛A1小咖耳机', null, '2020-04-17 18:46:59', '234', '0', '0', '2', null, '759', '1');
INSERT INTO `t_product` VALUES ('59', '路由器', null, '2020-03-03 18:47:10', '20', '0', '0', '2', null, '751', '1');
INSERT INTO `t_product` VALUES ('60', '沐浴露', null, '2020-03-11 18:30:12', '111', '0', '0', '2', null, '793', '9');
INSERT INTO `t_product` VALUES ('61', '千钰15只挂钩', null, '2020-04-01 18:34:37', '20', '0', '0', '2', null, '1', '4');
INSERT INTO `t_product` VALUES ('62', '三星保护套', null, '2020-04-09 18:46:55', '30', '0', '0', '2', null, '782', '4');
INSERT INTO `t_product` VALUES ('63', '收纳盒', null, '2020-04-17 18:46:59', '40', '0', '0', '2', null, '784', '6');
INSERT INTO `t_product` VALUES ('64', '手洗平板拖把', null, '2020-03-03 18:47:10', '50', '0', '0', '2', null, '781', '9');
INSERT INTO `t_product` VALUES ('65', '双面胶', null, '2020-04-09 18:46:55', '10', '0', '0', '2', null, '792', '4');
INSERT INTO `t_product` VALUES ('66', '水果麦片', null, '2020-04-17 18:46:59', '60', '0', '0', '2', null, '793', '5');
INSERT INTO `t_product` VALUES ('67', '先马坦克300w台式游戏电脑', null, '2020-03-03 18:47:10', '1500', '0', '0', '2', null, '1', '1');
INSERT INTO `t_product` VALUES ('68', '小米手机', null, '2020-03-11 18:30:12', '300', '0', '0', '2', null, '1', '3');
INSERT INTO `t_product` VALUES ('69', '熊猫鞋', null, '2020-04-09 18:46:55', '20', '0', '0', '2', null, '781', '10');
INSERT INTO `t_product` VALUES ('70', '有线鼠标', '', '2020-05-01 18:46:59', '40', '0', '0', '2', '', '751', '1');
INSERT INTO `t_product` VALUES ('71', '运动背包', null, '2020-03-03 18:47:10', '50', '0', '0', '2', null, '748', '10');
INSERT INTO `t_product` VALUES ('72', '智能手表手环蓝牙多功能', null, '2020-03-11 18:30:12', '200', '0', '0', '2', null, '792', '10');
INSERT INTO `t_product` VALUES ('73', '中性笔考试专用', null, '2020-04-01 18:34:37', '20', '0', '0', '2', null, '782', '4');
INSERT INTO `t_product` VALUES ('75', '液体创可贴', null, '2020-04-01 18:34:37', '30', '0', '0', '2', null, '753', '2');
INSERT INTO `t_product` VALUES ('76', '洗眼液药水', null, '2020-04-09 18:46:55', '40', '0', '0', '2', null, '761', '2');
INSERT INTO `t_product` VALUES ('77', '魅族手机', null, '2020-04-17 18:46:59', '400', '0', '0', '2', null, '1', '3');
INSERT INTO `t_product` VALUES ('78', '家用急救小药箱', null, '2020-03-03 18:47:10', '50', '0', '0', '2', null, '776', '2');
INSERT INTO `t_product` VALUES ('79', 'vivo', null, '2020-04-09 18:46:55', '500', '0', '0', '2', null, '753', '3');
INSERT INTO `t_product` VALUES ('80', '华为', null, '2020-04-17 18:46:59', '1000', '0', '0', '2', null, '1', '3');
INSERT INTO `t_product` VALUES ('81', '酒精消毒液', null, '2020-03-03 18:47:10', '70', '0', '0', '2', null, '772', '2');

-- ----------------------------
-- Table structure for t_syslog
-- ----------------------------
DROP TABLE IF EXISTS `t_syslog`;
CREATE TABLE `t_syslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志的ID',
  `visitTime` timestamp NULL DEFAULT NULL COMMENT '访问时间',
  `username` varchar(32) DEFAULT NULL COMMENT '操作者姓名',
  `userId` int(11) DEFAULT NULL COMMENT '操作者ID',
  `ip` varchar(120) DEFAULT NULL COMMENT '访问的IP',
  `url` varchar(120) DEFAULT NULL COMMENT '访问资源url',
  `executionTime` bigint(20) DEFAULT NULL COMMENT '执行时长',
  `method` varchar(200) DEFAULT NULL COMMENT '访问方法',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `t_syslog_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=714 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_syslog
-- ----------------------------
INSERT INTO `t_syslog` VALUES ('553', '2020-03-18 04:03:21', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/findAll.do', '10', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('554', '2020-03-18 04:03:24', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/deleteUser.do', '11', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] deleteUser');
INSERT INTO `t_syslog` VALUES ('555', '2020-03-18 04:03:24', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/findAll.do', '11', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('556', '2020-03-18 04:03:52', '温均培', '748', '0:0:0:0:0:0:0:1', '/file/uploadExcel.do', '929', '[类名] com.bobby.ssm.controller.FileController ------- [方法名] uploadExcel');
INSERT INTO `t_syslog` VALUES ('557', '2020-03-18 04:03:53', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/findAll.do', '13', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('558', '2020-03-18 04:03:57', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/findAll.do', '11', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('559', '2020-03-18 04:04:00', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/findAll.do', '7', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('560', '2020-03-18 04:04:01', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/findAll.do', '6', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('561', '2020-03-18 04:04:01', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/findAll.do', '4', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('562', '2020-03-18 04:04:01', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/findAll.do', '12', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('563', '2020-03-18 04:04:02', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/findAll.do', '11', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('564', '2020-03-18 04:04:05', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/changeAdminStatus.do', '11', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] changeAdminStatus');
INSERT INTO `t_syslog` VALUES ('565', '2020-03-18 04:04:06', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/changeAdminStatus.do', '7', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] changeAdminStatus');
INSERT INTO `t_syslog` VALUES ('566', '2020-03-18 04:04:07', '温均培', '748', '0:0:0:0:0:0:0:1', '/category/findAll.do', '4', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('567', '2020-03-18 04:04:07', '温均培', '748', '0:0:0:0:0:0:0:1', '/category/findAll.do', '4', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('568', '2020-03-18 04:04:09', '温均培', '748', '0:0:0:0:0:0:0:1', '/category/findAll.do', '4', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('569', '2020-03-18 04:04:55', '温均培', '748', '0:0:0:0:0:0:0:1', '/image/upload.do', '21', '[类名] com.bobby.ssm.controller.ImageController ------- [方法名] imageUpload');
INSERT INTO `t_syslog` VALUES ('570', '2020-03-18 04:04:57', '温均培', '748', '0:0:0:0:0:0:0:1', '/image/upload.do', '11', '[类名] com.bobby.ssm.controller.ImageController ------- [方法名] imageUpload');
INSERT INTO `t_syslog` VALUES ('571', '2020-03-18 04:05:00', '温均培', '748', '0:0:0:0:0:0:0:1', '/image/upload.do', '16', '[类名] com.bobby.ssm.controller.ImageController ------- [方法名] imageUpload');
INSERT INTO `t_syslog` VALUES ('572', '2020-03-18 04:05:03', '温均培', '748', '0:0:0:0:0:0:0:1', '/image/upload.do', '4', '[类名] com.bobby.ssm.controller.ImageController ------- [方法名] imageUpload');
INSERT INTO `t_syslog` VALUES ('573', '2020-03-18 04:05:05', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/saveProduct.do', '37', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] saveProduct');
INSERT INTO `t_syslog` VALUES ('574', '2020-03-18 04:05:05', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/findAll.do', '2', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('575', '2020-03-18 04:05:05', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/findAll.do', '15', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('576', '2020-03-18 04:05:10', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/changeProductHotStatus.do', '9', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] changeProductHotStatus');
INSERT INTO `t_syslog` VALUES ('577', '2020-03-18 04:05:11', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/findProductStatusAndIllegalRemarksById.do', '3', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findProductStatusAndIllegalRemarksById');
INSERT INTO `t_syslog` VALUES ('578', '2020-03-18 04:05:13', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/editProduct.do', '9', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] editProduct');
INSERT INTO `t_syslog` VALUES ('579', '2020-03-18 04:05:13', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/findAll.do', '12', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('580', '2020-03-18 04:05:17', '温均培', '748', '0:0:0:0:0:0:0:1', '/category/findAll.do', '3', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('581', '2020-03-18 04:05:19', '温均培', '748', '0:0:0:0:0:0:0:1', '/syslog/findAll.do', '9', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('582', '2020-03-18 04:05:22', '温均培', '748', '0:0:0:0:0:0:0:1', '/syslog/findAll.do', '6', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('583', '2020-03-18 04:05:23', '温均培', '748', '0:0:0:0:0:0:0:1', '/syslog/findAll.do', '7', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('584', '2020-03-18 04:05:26', '温均培', '748', '0:0:0:0:0:0:0:1', '/syslog/findAll.do', '7', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('585', '2020-03-18 04:05:28', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/findAll.do', '3', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('586', '2020-03-18 04:05:28', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/findAll.do', '13', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('587', '2020-03-18 04:05:31', '温均培', '748', '0:0:0:0:0:0:0:1', '/category/findAll.do', '5', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('588', '2020-03-18 04:05:45', '温均培', '748', '0:0:0:0:0:0:0:1', '/image/upload.do', '11', '[类名] com.bobby.ssm.controller.ImageController ------- [方法名] imageUpload');
INSERT INTO `t_syslog` VALUES ('589', '2020-03-18 04:05:48', '温均培', '748', '0:0:0:0:0:0:0:1', '/image/upload.do', '2', '[类名] com.bobby.ssm.controller.ImageController ------- [方法名] imageUpload');
INSERT INTO `t_syslog` VALUES ('590', '2020-03-18 04:05:49', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/saveProduct.do', '27', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] saveProduct');
INSERT INTO `t_syslog` VALUES ('591', '2020-03-18 04:05:49', '温均培', '748', '0:0:0:0:0:0:0:1', '/category/findAll.do', '3', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('592', '2020-03-18 04:05:49', '温均培', '748', '0:0:0:0:0:0:0:1', '/category/findAll.do', '23', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('593', '2020-03-18 04:05:53', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/findProductStatusAndIllegalRemarksById.do', '3', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findProductStatusAndIllegalRemarksById');
INSERT INTO `t_syslog` VALUES ('594', '2020-03-18 04:06:04', '温均培', '748', '0:0:0:0:0:0:0:1', '/syslog/findAll.do', '10', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('595', '2020-03-18 04:06:05', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/findAll.do', '23', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('596', '2020-03-18 04:06:07', '温均培', '748', '0:0:0:0:0:0:0:1', '/category/findAll.do', '5', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('597', '2020-03-18 04:55:51', '温均培', '748', '0:0:0:0:0:0:0:1', '/syslog/findAll.do', '138', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('598', '2020-03-18 04:55:54', '温均培', '748', '0:0:0:0:0:0:0:1', '/syslog/findAll.do', '16', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('599', '2020-03-18 04:55:55', '温均培', '748', '0:0:0:0:0:0:0:1', '/syslog/findAll.do', '17', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('600', '2020-03-18 04:56:02', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/findAll.do', '42', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('601', '2020-03-18 04:56:02', '温均培', '748', '0:0:0:0:0:0:0:1', '/product/findAll.do', '139', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('602', '2020-03-18 04:56:03', '温均培', '748', '0:0:0:0:0:0:0:1', '/category/findAll.do', '10', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('603', '2020-03-18 07:12:23', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/findAll.do', '145', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('604', '2020-03-18 07:12:27', '温均培', '748', '0:0:0:0:0:0:0:1', '/category/findAll.do', '41', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('605', '2020-03-18 07:12:27', '温均培', '748', '0:0:0:0:0:0:0:1', '/category/findAll.do', '153', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('606', '2020-03-18 07:12:32', '温均培', '748', '0:0:0:0:0:0:0:1', '/syslog/findAll.do', '31', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('607', '2020-03-18 07:12:40', '温均培', '748', '0:0:0:0:0:0:0:1', '/user/findAll.do', '51', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('608', '2020-03-21 07:13:37', '温均培', '748', '103.27.26.234', '/user/findAll.do', '361', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('609', '2020-03-21 07:13:40', '温均培', '748', '103.27.26.234', '/product/findAll.do', '51', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('610', '2020-03-21 07:13:40', '温均培', '748', '103.27.26.234', '/product/findAll.do', '168', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('611', '2020-03-21 07:13:49', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '50', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('612', '2020-03-21 07:13:53', '温均培', '748', '103.27.26.234', '/product/findAll.do', '12', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('613', '2020-03-21 07:13:53', '温均培', '748', '103.27.26.234', '/product/findAll.do', '44', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('614', '2020-03-21 07:13:54', '温均培', '748', '103.27.26.234', '/category/findAll.do', '16', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('615', '2020-03-21 07:15:54', '温均培', '748', '103.27.26.234', '/image/upload.do', '30', '[类名] com.bobby.ssm.controller.ImageController ------- [方法名] imageUpload');
INSERT INTO `t_syslog` VALUES ('616', '2020-03-21 07:15:57', '温均培', '748', '103.27.26.234', '/image/upload.do', '1', '[类名] com.bobby.ssm.controller.ImageController ------- [方法名] imageUpload');
INSERT INTO `t_syslog` VALUES ('617', '2020-03-21 07:15:58', '温均培', '748', '103.27.26.234', '/product/saveProduct.do', '72', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] saveProduct');
INSERT INTO `t_syslog` VALUES ('618', '2020-03-21 07:15:58', '温均培', '748', '103.27.26.234', '/category/findAll.do', '14', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('619', '2020-03-21 07:15:58', '温均培', '748', '103.27.26.234', '/category/findAll.do', '45', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('620', '2020-03-21 07:16:03', '温均培', '748', '103.27.26.234', '/user/findAll.do', '48', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('621', '2020-03-21 07:16:31', '温均培', '748', '103.27.26.234', '/login.do', '26', '[类名] com.bobby.ssm.controller.LoginController ------- [方法名] login');
INSERT INTO `t_syslog` VALUES ('622', '2020-03-21 07:16:32', '温均培', '748', '103.27.26.234', '/product/findAll.do', '13', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('623', '2020-03-21 07:16:32', '温均培', '748', '103.27.26.234', '/product/findAll.do', '45', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('624', '2020-03-21 07:16:33', '温均培', '748', '103.27.26.234', '/category/findAll.do', '14', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('625', '2020-03-21 07:17:07', '温均培', '748', '103.27.26.234', '/product/findAll.do', '8', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('626', '2020-03-21 07:17:07', '温均培', '748', '103.27.26.234', '/product/findAll.do', '48', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('627', '2020-03-21 07:17:09', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '31', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('628', '2020-03-21 07:17:16', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '28', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('629', '2020-03-21 07:17:16', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '16', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('630', '2020-03-21 07:17:17', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '15', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('631', '2020-03-21 07:17:17', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '11', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('632', '2020-03-21 07:17:18', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '13', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('633', '2020-03-21 07:17:18', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '17', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('634', '2020-03-21 07:17:19', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '16', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('635', '2020-03-21 07:17:19', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '14', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('636', '2020-03-21 07:17:22', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '17', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('637', '2020-03-21 07:17:24', '温均培', '748', '223.104.64.242', '/category/findAll.do', '12', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('638', '2020-03-21 07:17:24', '温均培', '748', '223.104.64.242', '/category/findAll.do', '42', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('639', '2020-03-21 07:17:26', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '16', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('640', '2020-03-21 07:17:26', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '18', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('641', '2020-03-21 07:17:27', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '18', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('642', '2020-03-21 07:17:28', '温均培', '748', '223.104.64.242', '/category/findAll.do', '9', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('643', '2020-03-21 07:17:35', '温均培', '748', '223.104.64.242', '/syslog/findAll.do', '13', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('644', '2020-03-21 07:17:38', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '16', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('645', '2020-03-21 07:17:40', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '17', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('646', '2020-03-21 07:17:40', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '13', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('647', '2020-03-21 07:17:41', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '19', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('648', '2020-03-21 07:17:48', '温均培', '748', '103.27.26.234', '/user/findAll.do', '37', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('649', '2020-03-21 07:17:49', '温均培', '748', '223.104.64.242', '/user/findAll.do', '42', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('650', '2020-03-21 07:17:57', '温均培', '748', '223.104.64.242', '/user/findAll.do', '35', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('651', '2020-03-21 07:18:33', '温均培', '748', '223.104.64.242', '/user/findAll.do', '21', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('652', '2020-03-21 07:18:39', '温均培', '748', '223.104.64.242', '/user/findAll.do', '31', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('653', '2020-03-21 07:20:53', '温均培', '748', '103.27.26.234', '/user/findAll.do', '32', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('654', '2020-03-21 07:20:56', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '16', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('655', '2020-03-21 07:21:40', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '16', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('656', '2020-03-21 07:21:48', '温均培', '748', '103.27.26.234', '/product/findAll.do', '6', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('657', '2020-03-21 07:21:48', '温均培', '748', '103.27.26.234', '/product/findAll.do', '26', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('658', '2020-03-21 07:22:35', '温均培', '748', '103.27.26.234', '/user/findAll.do', '46', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('659', '2020-03-21 07:23:03', '温均培', '748', '103.27.26.234', '/product/findAll.do', '6', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('660', '2020-03-21 07:23:03', '温均培', '748', '103.27.26.234', '/product/findAll.do', '32', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('661', '2020-03-21 07:23:15', '温均培', '748', '103.27.26.234', '/user/findAll.do', '35', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('662', '2020-03-21 07:23:44', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '12', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('663', '2020-03-21 07:24:35', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '15', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('664', '2020-03-21 07:24:50', '温均培', '748', '103.27.26.234', '/category/findAll.do', '13', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('665', '2020-03-21 07:24:50', '温均培', '748', '103.27.26.234', '/category/findAll.do', '21', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('666', '2020-03-21 07:24:53', '温均培', '748', '103.27.26.234', '/category/findAll.do', '10', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('667', '2020-03-21 07:24:55', '温均培', '748', '103.27.26.234', '/user/findAll.do', '44', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('668', '2020-03-21 07:26:26', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '14', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('669', '2020-03-21 07:26:32', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '14', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('670', '2020-03-21 07:26:33', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '14', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('671', '2020-03-21 07:26:34', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '16', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('672', '2020-03-21 07:26:37', '温均培', '748', '103.27.26.234', '/product/findAll.do', '9', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('673', '2020-03-21 07:26:37', '温均培', '748', '103.27.26.234', '/product/findAll.do', '39', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('674', '2020-03-21 07:26:38', '温均培', '748', '103.27.26.234', '/category/findAll.do', '9', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('675', '2020-03-21 07:26:41', '温均培', '748', '103.27.26.234', '/user/findAll.do', '46', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('676', '2020-03-21 07:26:43', '温均培', '748', '103.27.26.234', '/product/findAll.do', '11', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('677', '2020-03-21 07:26:43', '温均培', '748', '103.27.26.234', '/product/findAll.do', '38', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('678', '2020-03-21 07:28:28', '温均培', '748', '103.27.26.234', '/login.do', '15', '[类名] com.bobby.ssm.controller.LoginController ------- [方法名] login');
INSERT INTO `t_syslog` VALUES ('679', '2020-03-21 07:28:31', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '13', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('680', '2020-03-21 07:28:41', '温均培', '748', '103.27.26.234', '/product/findAll.do', '11', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('681', '2020-03-21 07:28:41', '温均培', '748', '103.27.26.234', '/product/findAll.do', '40', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('682', '2020-03-21 07:29:08', '温均培', '748', '103.27.26.234', '/category/findAll.do', '12', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('683', '2020-03-21 07:29:10', '温均培', '748', '103.27.26.234', '/user/findAll.do', '38', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('684', '2020-03-21 07:29:13', '温均培', '748', '103.27.26.234', '/user/findAll.do', '20', '[类名] com.bobby.ssm.controller.UserController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('685', '2020-03-21 07:29:18', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '18', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('686', '2020-03-21 07:35:53', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '128', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('687', '2020-03-21 07:36:02', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '28', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('688', '2020-03-21 07:36:05', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '22', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('689', '2020-03-21 07:36:06', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '22', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('690', '2020-03-21 07:47:54', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '26', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('691', '2020-03-21 07:47:58', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '23', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('692', '2020-03-21 07:48:00', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '21', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('693', '2020-03-21 07:48:02', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '17', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('694', '2020-03-21 07:48:03', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '16', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('695', '2020-03-21 07:48:09', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '18', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('696', '2020-03-21 07:48:10', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '25', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('697', '2020-03-21 07:48:11', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '15', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('698', '2020-03-21 07:48:12', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '14', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('699', '2020-03-21 07:48:23', '温均培', '748', '103.27.26.234', '/category/findAll.do', '41', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('700', '2020-03-21 07:48:23', '温均培', '748', '103.27.26.234', '/category/findAll.do', '181', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('701', '2020-03-21 07:48:24', '温均培', '748', '103.27.26.234', '/category/findAll.do', '15', '[类名] com.bobby.ssm.controller.CategoryController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('702', '2020-03-21 07:48:25', '温均培', '748', '103.27.26.234', '/product/findAll.do', '9', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('703', '2020-03-21 07:48:25', '温均培', '748', '103.27.26.234', '/product/findAll.do', '48', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('704', '2020-03-21 08:11:24', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '21', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('705', '2020-03-21 09:27:26', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '22', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('706', '2020-03-21 11:04:11', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '25', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('707', '2020-03-21 13:44:10', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '18', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('708', '2020-03-21 13:44:39', '温均培', '748', '103.27.26.234', '/product/findAll.do', '12', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('709', '2020-03-21 13:44:39', '温均培', '748', '103.27.26.234', '/product/findAll.do', '49', '[类名] com.bobby.ssm.controller.ProductController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('710', '2020-03-21 14:28:50', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '17', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('711', '2020-03-22 00:43:34', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '19', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('712', '2020-03-22 09:36:24', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '15', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');
INSERT INTO `t_syslog` VALUES ('713', '2020-03-22 13:30:23', '温均培', '748', '103.27.26.234', '/syslog/findAll.do', '16', '[类名] com.bobby.ssm.controller.SysLogController ------- [方法名] findAll');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `birthday` date DEFAULT NULL COMMENT '用户的出生年月日',
  `phoneNum` varchar(32) DEFAULT NULL COMMENT '电话号码',
  `identityNum` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  `isAdmin` tinyint(4) DEFAULT '0' COMMENT '是否为管理员，0:否，1：是',
  `sex` tinyint(4) DEFAULT '0' COMMENT '性别,0:保密，1：男，2：女',
  `userStatus` tinyint(4) DEFAULT '1' COMMENT '是否可以发布商品，0：不可发布，1：可以发布',
  `portrait` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=812 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '李记烽', '123456', '1998-02-17', '13433894951', '440513199802172915   ', '1', '1', '1', './public/img/user/15859169169933.jpg');
INSERT INTO `t_user` VALUES ('748', '温均培', '086917', '1999-07-08', '13066227212', '440783199907086917', '1', '1', '1', null);
INSERT INTO `t_user` VALUES ('749', '张俊', '020911', '1997-12-02', '15976384193', '445102199712020911', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('750', '邓雅夫', '254034', '1998-04-25', '13612259313', '441302199804254034', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('751', '吴泽泉', '300011', '1999-05-30', '18022955923', '440785199905300011', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('752', '梁天朗', '300951', '1998-09-30', '13824016751', '442000199809300951', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('753', '郑炳坤', '30205X', '1998-09-30', '13630455401', '44058219980930205X', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('754', '余坤梦', '302916', '1997-10-30', '13005811167', '445281199710302916', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('755', '赵梓峰', '308014', '1998-09-30', '13630496261', '440782199809308014', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('756', '邝杰超', '010617', '1997-06-01', '13172238597', '440783199706010617', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('757', '梁煜锟', '212316', '1998-05-21', '13129729872', '441202199805212316', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('758', '蔡玉烽', '014110', '1997-11-01', '13794239497', '441225199711014110', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('759', '李康远', '21511X', '1996-10-21', '13169369810', '44122419961021511X', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('760', '邓艺坚', '315779', '1999-10-31', '15521531031', '442000199910315779', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('761', '邝绍文', '220610', '1997-12-22', '13424963234', '440783199712220610', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('762', '何子强', '222414', '1999-06-22', '13555653874', '440881199906222414', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('763', '翟日云', '122939', '1998-07-12', '15119508103', '440883199807122939', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('764', '姚显先', '224556', '1998-03-22', '13226125599', '445121199803224556', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('765', '彭志权', '024931', '1997-05-02', '18813459760', '440982199705024931', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('766', '黄英健', '025851', '1997-09-02', '13555690590', '440982199709025851', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('767', '陈洲', '130036', '1999-06-13', '18312622331', '440923199906130036', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('768', '李宏裕', '231914', '1999-03-23', '15219567334', '440782199903231914', '1', '1', '1', null);
INSERT INTO `t_user` VALUES ('769', '焦广涛', '03663x', '1998-03-03', '13432306057', '43052419980303663x', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('770', '梁焕柱', '04215X', '1998-10-04', '13427136968', '44078319981004215X', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('771', '尤志钎', '043613', '1998-04-04', '18576592228', '440682199804043613', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('772', '陆有毅', '044817', '1999-08-04', '18420067648', '440921199908044817', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('773', '谢建新', '248613', '1998-09-24', '15913690799', '440782199809248613', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('774', '黄伟峻', '151512', '1998-07-15', '13534846217', '440781199807151512', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('775', '李汉鼎', '251856', '1996-11-25', '13172280485', '440783199611251856', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('776', '陈成军', '153711', '1999-05-15', '13794215384', '441723199905153711', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('777', '赵鸿靖', '056234', '1999-04-05', '13822411556', '440781199904056234', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('778', '余锦斌', '258210', '1999-09-25', '13726157882', '440782199909258210', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('779', '刘清菊', '059058', '1997-09-05', '13539553025', '440421199709059058', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('780', '温明彬', '264231', '1997-09-26', '18027761141', '440981199709264231', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('781', '涂世林', '264719', '1998-12-26', '17707500584', '441625199812264719', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('782', '莫品裕', '065114', '1996-05-06', '13423583560', '440923199605065114', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('783', '冯晓轩', '26631X', '1998-04-26', '13005833426', '44078519980426631X', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('784', '陈祖帆', '270431', '1998-12-27', '15602772270', '440582199812270431', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('786', '陈家煦', '081119', '1999-11-08', '13555665243', '440782199911081119', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('787', '黄展乐', '281975', '1997-02-28', '13902518301', '440923199702281975', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('788', '余晓东', '183111', '1998-05-18', '15219552382', '440782199805183111', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('789', '姚宏业', '183534', '1998-02-18', '18407580022', '441225199802183534', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('790', '庞富元', '08453X', '1999-03-08', '13630451336', '44098219990308453X', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('791', '郑开枫', '286010', '1999-02-28', '13612298395', '440711199902286010', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('792', '何智聪', '290036', '1998-11-29', '13048167438', '440782199811290036', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('793', '林文浩', '090411', '1999-04-09', '13692516763', '440902199904090411', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('794', '朱华健', '092735', '1998-06-09', '13612934391', '441623199806092735', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('795', '阮建达', '093814', '1999-09-09', '18316273092', '441702199909093814', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('796', '何鑫', '094214', '1998-02-09', '13025883471', '440981199802094214', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('797', '梁志坚', '29651X', '1998-10-29', '15815760668', '44078119981029651X', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('798', '马德聪', '280012', '1998-12-28', '15019871458', '810000199812280012', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('799', '罗华娟', '207260', '1998-02-20', '18320320595', '440881199802207260', '0', '2', '1', null);
INSERT INTO `t_user` VALUES ('800', '莫礼祯', '110027', '1999-07-11', '15917301699', '440785199907110027', '0', '2', '1', null);
INSERT INTO `t_user` VALUES ('801', '林惠菁', '012828', '1999-04-01', '13536022629', '440782199904012828', '0', '2', '1', null);
INSERT INTO `t_user` VALUES ('802', '冯巧程', '034262', '1999-07-03', '13929128371', '440681199907034262', '0', '2', '1', null);
INSERT INTO `t_user` VALUES ('804', 'admin', '123456', null, null, null, '0', '0', '1', null);
INSERT INTO `t_user` VALUES ('805', 'admin2', '123', null, '134338949', null, '0', '0', '1', null);
INSERT INTO `t_user` VALUES ('806', 'aaa', ' 222 ', null, ' 111 ', null, '0', '0', '1', null);
INSERT INTO `t_user` VALUES ('807', ' abc ', ' 12345 ', null, ' 123 ', null, '0', '0', '1', null);
INSERT INTO `t_user` VALUES ('808', '111', '111', null, '111', null, '0', '0', '1', null);
INSERT INTO `t_user` VALUES ('809', ' 111 ', ' 222 ', null, ' 111 ', null, '0', '0', '1', null);
INSERT INTO `t_user` VALUES ('810', '1i', '12', '2019-08-01', '111', '123', '0', '1', '1', null);
INSERT INTO `t_user` VALUES ('811', '000', '000', null, '000', null, '0', '0', '1', './public/img/user/2.jpg');
