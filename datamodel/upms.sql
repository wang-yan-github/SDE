/*
Navicat MySQL Data Transfer

Source Server         : localhost-3307
Source Server Version : 50642
Source Host           : localhost:3307
Source Database       : bgx

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2019-01-29 17:19:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for upms_log
-- ----------------------------
DROP TABLE IF EXISTS `upms_log`;
CREATE TABLE `upms_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `description` varchar(100) DEFAULT NULL COMMENT '操作描述',
  `username` varchar(20) DEFAULT NULL COMMENT '操作用户',
  `start_time` bigint(20) DEFAULT NULL COMMENT '操作时间',
  `spend_time` int(11) DEFAULT NULL COMMENT '消耗时间',
  `base_path` varchar(500) DEFAULT NULL COMMENT '根路径',
  `uri` varchar(500) DEFAULT NULL COMMENT 'URI',
  `url` varchar(500) DEFAULT NULL COMMENT 'URL',
  `method` varchar(10) DEFAULT NULL COMMENT '请求类型',
  `parameter` mediumtext,
  `user_agent` varchar(500) DEFAULT NULL COMMENT '用户标识',
  `ip` varchar(30) DEFAULT NULL COMMENT 'IP地址',
  `result` mediumtext,
  `permissions` varchar(100) DEFAULT NULL COMMENT '权限值',
  PRIMARY KEY (`log_id`),
  KEY `log_id` (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3803 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志';

-- ----------------------------
-- Table structure for upms_organization
-- ----------------------------
DROP TABLE IF EXISTS `upms_organization`;
CREATE TABLE `upms_organization` (
  `organization_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` int(10) DEFAULT NULL COMMENT '所属上级',
  `name` varchar(20) DEFAULT NULL COMMENT '组织名称',
  `description` varchar(1000) DEFAULT NULL COMMENT '组织描述',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='组织';

-- ----------------------------
-- Records of upms_organization
-- ----------------------------
INSERT INTO `upms_organization` VALUES ('1', null, '总部', '北京总部', '1');
INSERT INTO `upms_organization` VALUES ('4', null, '河北分部', '河北石家庄', '1488122466236');
INSERT INTO `upms_organization` VALUES ('5', null, '河南分部', '河南郑州', '1488122480265');
INSERT INTO `upms_organization` VALUES ('6', null, '湖北分部', '湖北武汉', '1488122493265');
INSERT INTO `upms_organization` VALUES ('7', null, '湖南分部', '湖南长沙', '1488122502752');

-- ----------------------------
-- Table structure for upms_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_permission`;
CREATE TABLE `upms_permission` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `system_id` int(10) unsigned NOT NULL COMMENT '所属系统',
  `pid` int(10) DEFAULT NULL COMMENT '所属上级',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型(1:目录,2:菜单,3:按钮)',
  `permission_value` varchar(50) DEFAULT NULL COMMENT '权限值',
  `uri` varchar(100) DEFAULT NULL COMMENT '路径',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态(0:禁止,1:正常)',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COMMENT='权限';

-- ----------------------------
-- Records of upms_permission
-- ----------------------------
INSERT INTO `upms_permission` VALUES ('1', '1', '0', '系统组织管理', '1', '', '', 'zmdi zmdi-accounts-list', '1', '1', '1');
INSERT INTO `upms_permission` VALUES ('2', '1', '1', '系统管理', '2', 'upms:system:read', '/manage/system/index', '', '1', '2', '2');
INSERT INTO `upms_permission` VALUES ('3', '1', '1', '组织管理', '2', 'upms:organization:read', '/manage/organization/index', '', '1', '3', '3');
INSERT INTO `upms_permission` VALUES ('4', '1', '0', '角色用户管理', '1', '', '', 'zmdi zmdi-accounts', '1', '4', '4');
INSERT INTO `upms_permission` VALUES ('5', '1', '4', '角色管理', '2', 'upms:role:read', '/manage/role/index', '', '1', '6', '6');
INSERT INTO `upms_permission` VALUES ('6', '1', '4', '用户管理', '2', 'upms:user:read', '/manage/user/index', '', '1', '5', '5');
INSERT INTO `upms_permission` VALUES ('7', '1', '0', '权限资源管理', '1', '', '', 'zmdi zmdi-lock-outline', '1', '7', '7');
INSERT INTO `upms_permission` VALUES ('12', '1', '0', '其他数据管理', '1', '', '', 'zmdi zmdi-more', '1', '12', '12');
INSERT INTO `upms_permission` VALUES ('14', '1', '12', '会话管理', '2', 'upms:session:read', '/manage/session/index', '', '1', '14', '14');
INSERT INTO `upms_permission` VALUES ('15', '1', '12', '日志记录', '2', 'upms:log:read', '/manage/log/index', '', '1', '15', '15');
INSERT INTO `upms_permission` VALUES ('17', '2', '0', '标签类目管理', '1', null, null, 'zmdi zmdi-menu', '1', '17', '17');
INSERT INTO `upms_permission` VALUES ('18', '2', '17', '标签管理', '2', 'cms:tag:read', '/manage/tag/index', null, '1', '18', '18');
INSERT INTO `upms_permission` VALUES ('19', '2', '17', '类目管理', '2', 'cms:category:read', '/manage/category/index', null, '1', '19', '19');
INSERT INTO `upms_permission` VALUES ('20', '2', '0', '文章评论管理', '1', null, null, 'zmdi zmdi-collection-text', '1', '20', '20');
INSERT INTO `upms_permission` VALUES ('21', '2', '20', '文章管理', '2', 'cms:article:read', '/manage/article/index', null, '1', '21', '21');
INSERT INTO `upms_permission` VALUES ('22', '2', '20', '回收管理', '2', 'cms:article:read', '/manage/article/recycle', null, '1', '22', '22');
INSERT INTO `upms_permission` VALUES ('24', '1', '2', '新增系统', '3', 'upms:system:create', '/manage/system/create', 'zmdi zmdi-plus', '1', '24', '24');
INSERT INTO `upms_permission` VALUES ('25', '1', '2', '编辑系统', '3', 'upms:system:update', '/manage/system/update', 'zmdi zmdi-edit', '1', '25', '25');
INSERT INTO `upms_permission` VALUES ('26', '1', '2', '删除系统', '3', 'upms:system:delete', '/manage/system/delete', 'zmdi zmdi-close', '1', '26', '26');
INSERT INTO `upms_permission` VALUES ('27', '1', '3', '新增组织', '3', 'upms:organization:create', '/manage/organization/create', 'zmdi zmdi-plus', '1', '27', '27');
INSERT INTO `upms_permission` VALUES ('28', '1', '3', '编辑组织', '3', 'upms:organization:update', '/manage/organization/update', 'zmdi zmdi-edit', '1', '28', '28');
INSERT INTO `upms_permission` VALUES ('29', '1', '3', '删除组织', '3', 'upms:organization:delete', '/manage/organization/delete', 'zmdi zmdi-close', '1', '29', '29');
INSERT INTO `upms_permission` VALUES ('30', '1', '6', '新增用户', '3', 'upms:user:create', '/manage/user/create', 'zmdi zmdi-plus', '1', '30', '30');
INSERT INTO `upms_permission` VALUES ('31', '1', '6', '编辑用户', '3', 'upms:user:update', '/manage/user/update', 'zmdi zmdi-edit', '1', '31', '31');
INSERT INTO `upms_permission` VALUES ('32', '1', '6', '删除用户', '3', 'upms:user:delete', '/manage/user/delete', 'zmdi zmdi-close', '1', '32', '32');
INSERT INTO `upms_permission` VALUES ('33', '1', '5', '新增角色', '3', 'upms:role:create', '/manage/role/create', 'zmdi zmdi-plus', '1', '33', '33');
INSERT INTO `upms_permission` VALUES ('34', '1', '5', '编辑角色', '3', 'upms:role:update', '/manage/role/update', 'zmdi zmdi-edit', '1', '34', '34');
INSERT INTO `upms_permission` VALUES ('35', '1', '5', '删除角色', '3', 'upms:role:delete', '/manage/role/delete', 'zmdi zmdi-close', '1', '35', '35');
INSERT INTO `upms_permission` VALUES ('36', '1', '39', '新增权限', '3', 'upms:permission:create', '/manage/permission/create', 'zmdi zmdi-plus', '1', '36', '36');
INSERT INTO `upms_permission` VALUES ('37', '1', '39', '编辑权限', '3', 'upms:permission:update', '/manage/permission/update', 'zmdi zmdi-edit', '1', '37', '37');
INSERT INTO `upms_permission` VALUES ('38', '1', '39', '删除权限', '3', 'upms:permission:delete', '/manage/permission/delete', 'zmdi zmdi-close', '1', '38', '38');
INSERT INTO `upms_permission` VALUES ('39', '1', '7', '权限管理', '2', 'upms:permission:read', '/manage/permission/index', null, '1', '39', '39');
INSERT INTO `upms_permission` VALUES ('46', '1', '5', '角色权限', '3', 'upms:role:permission', '/manage/role/permission', 'zmdi zmdi-key', '1', '1488091928257', '1488091928257');
INSERT INTO `upms_permission` VALUES ('48', '1', '6', '用户组织', '3', 'upms:user:organization', '/manage/user/organization', 'zmdi zmdi-accounts-list', '1', '1488120011165', '1488120011165');
INSERT INTO `upms_permission` VALUES ('50', '1', '6', '用户角色', '3', 'upms:user:role', '/manage/user/role', 'zmdi zmdi-accounts', '1', '1488120554175', '1488120554175');
INSERT INTO `upms_permission` VALUES ('51', '1', '6', '用户权限', '3', 'upms:user:permission', '/manage/user/permission', 'zmdi zmdi-key', '1', '1488092013302', '1488092013302');
INSERT INTO `upms_permission` VALUES ('53', '1', '14', '强制退出', '3', 'upms:session:forceout', '/manage/session/forceout', 'zmdi zmdi-run', '1', '1488379514715', '1488379514715');
INSERT INTO `upms_permission` VALUES ('54', '2', '18', '新增标签', '3', 'cms:tag:create', '/manage/tag/create', 'zmdi zmdi-plus', '1', '1489417315159', '1489417315159');
INSERT INTO `upms_permission` VALUES ('55', '2', '18', '编辑标签', '3', 'cms:tag:update', 'zmdi zmdi-edit', 'zmdi zmdi-widgets', '1', '1489417344931', '1489417344931');
INSERT INTO `upms_permission` VALUES ('56', '2', '18', '删除标签', '3', 'cms:tag:delete', '/manage/tag/delete', 'zmdi zmdi-close', '1', '1489417372114', '1489417372114');
INSERT INTO `upms_permission` VALUES ('57', '1', '15', '删除权限', '3', 'upms:log:delete', '/manage/log/delete', 'zmdi zmdi-close', '1', '1489503867909', '1489503867909');
INSERT INTO `upms_permission` VALUES ('58', '2', '19', '编辑类目', '3', 'cms:category:update', '/manage/category/update', 'zmdi zmdi-edit', '1', '1489586600462', '1489586600462');
INSERT INTO `upms_permission` VALUES ('59', '2', '19', '删除类目', '3', 'cms:category:delete', '/manage/category/delete', 'zmdi zmdi-close', '1', '1489586633059', '1489586633059');
INSERT INTO `upms_permission` VALUES ('60', '2', '19', '新增类目', '3', 'cms:category:create', '/manage/category/create', 'zmdi zmdi-plus', '1', '1489590342089', '1489590342089');
INSERT INTO `upms_permission` VALUES ('61', '2', '0', '其他数据管理', '1', '', '', 'zmdi zmdi-more', '1', '1489835455359', '1489835455359');
INSERT INTO `upms_permission` VALUES ('62', '2', '20', '评论管理', '2', 'cms:comment:read', '/manage/comment/index', '', '1', '1489591408224', '1489591408224');
INSERT INTO `upms_permission` VALUES ('63', '2', '62', '删除评论', '3', 'cms:comment:delete', '/manage/comment/delete', 'zmdi zmdi-close', '1', '1489591449614', '1489591449614');
INSERT INTO `upms_permission` VALUES ('64', '2', '79', '单页管理', '2', 'cms:page:read', '/manage/page/index', '', '1', '1489591332779', '1489591332779');
INSERT INTO `upms_permission` VALUES ('65', '2', '64', '新增单页', '3', 'cms:page:create', '/manage/page/create', 'zmdi zmdi-plus', '1', '1489591614473', '1489591614473');
INSERT INTO `upms_permission` VALUES ('66', '2', '64', '编辑单页', '3', 'cms:page:update', '/manage/page/update', 'zmdi zmdi-edit', '1', '1489591653000', '1489591653000');
INSERT INTO `upms_permission` VALUES ('67', '2', '64', '删除单页', '3', 'cms:page:delete', '/manage/page/delete', 'zmdi zmdi-close', '1', '1489591683552', '1489591683552');
INSERT INTO `upms_permission` VALUES ('68', '2', '61', '菜单管理', '2', 'cms:menu:read', '/manage/menu/index', 'zmdi zmdi-widgets', '1', '1489591746846', '1489591746846');
INSERT INTO `upms_permission` VALUES ('69', '2', '68', '新增菜单', '3', 'cms:menu:create', '/manage/menu/create', 'zmdi zmdi-plus', '1', '1489591791747', '1489591791747');
INSERT INTO `upms_permission` VALUES ('70', '2', '68', '编辑菜单', '3', 'cms:menu:update', '/manage/menu/update', 'zmdi zmdi-edit', '1', '1489591831878', '1489591831878');
INSERT INTO `upms_permission` VALUES ('71', '2', '68', '删除菜单', '3', 'cms:menu:delete', '/manage/menu/delete', 'zmdi zmdi-close', '1', '1489591865454', '1489591865454');
INSERT INTO `upms_permission` VALUES ('72', '2', '61', '系统设置', '2', 'cms:setting:read', '/manage/setting/index', 'zmdi zmdi-widgets', '1', '1489591981165', '1489591981165');
INSERT INTO `upms_permission` VALUES ('73', '2', '72', '新增设置', '3', 'cms:setting:create', '/manage/setting/create', 'zmdi zmdi-plus', '1', '1489592024762', '1489592024762');
INSERT INTO `upms_permission` VALUES ('74', '2', '72', '编辑设置', '3', 'cms:setting:update', '/manage/setting/update', 'zmdi zmdi-edit', '1', '1489592052582', '1489592052582');
INSERT INTO `upms_permission` VALUES ('75', '2', '72', '删除设置', '3', 'cms:setting:delete', '/manage/setting/delete', 'zmdi zmdi-close', '1', '1489592081426', '1489592081426');
INSERT INTO `upms_permission` VALUES ('76', '2', '21', '新增文章', '3', 'cms:article:create', '/manage/article/create', 'zmdi zmdi-plus', '1', '1489820150404', '1489820150404');
INSERT INTO `upms_permission` VALUES ('77', '2', '21', '编辑文章', '3', 'cms:article:update', '/manage/article/update', 'zmdi zmdi-edit', '1', '1489820178269', '1489820178269');
INSERT INTO `upms_permission` VALUES ('78', '2', '21', '删除文章', '3', 'cms:article:delete', '/manage/article/delete', 'zmdi zmdi-close', '1', '1489820207607', '1489820207607');
INSERT INTO `upms_permission` VALUES ('79', '2', '0', '单页专题管理', '1', '', '', 'zmdi zmdi-view-web', '1', '1489835320327', '1489835320327');
INSERT INTO `upms_permission` VALUES ('80', '2', '79', '专题管理', '2', 'cms:topic:read', '/manage/topic/index', 'zmdi zmdi-widgets', '1', '1489591507566', '1489591507566');
INSERT INTO `upms_permission` VALUES ('81', '2', '80', '新增专题', '3', 'cms:topic:create', '/manage/topic/create', 'zmdi zmdi-plus', '1', '1489843327028', '1489843327028');
INSERT INTO `upms_permission` VALUES ('82', '2', '80', '编辑专题', '3', 'cms:topic:update', '/manage/topic/update', 'zmdi zmdi-edit', '1', '1489843351513', '1489843351513');
INSERT INTO `upms_permission` VALUES ('83', '2', '80', '删除专题', '3', 'cms:topic:delete', '/manage/topic/delete', 'zmdi zmdi-close', '1', '1489843379953', '1489843379953');
INSERT INTO `upms_permission` VALUES ('84', '2', '68', '上移菜单', '3', 'cms:menu:up', '/manage/menu/up', 'zmdi zmdi-long-arrow-up', '1', '1489846486548', '1489846486548');
INSERT INTO `upms_permission` VALUES ('85', '2', '68', '下移菜单', '3', 'cms:menu:down', '/manage/menu/down', 'zmdi zmdi-long-arrow-down', '1', '1489846578051', '1489846578051');
INSERT INTO `upms_permission` VALUES ('86', '6', '0', '用户认证管理', '1', '', '', 'zmdi zmdi-widgets', '1', '1546592804291', '1546592804291');
INSERT INTO `upms_permission` VALUES ('87', '6', '86', '用户列表', '2', 'bgx:tbUser:read', '/manage/tbUser/index', 'zmdi zmdi-widgets', '1', '1546593066932', '1546593066932');
INSERT INTO `upms_permission` VALUES ('88', '6', '87', '新增用户', '3', 'bgx:tbUser:create', '/manage/tbUser/create', 'zmdi zmdi-widgets', '1', '1546593201720', '1546593201720');
INSERT INTO `upms_permission` VALUES ('89', '6', '87', '删除用户', '3', 'bgx:tbUser:delete', '/manage/tbUser/delete', 'zmdi zmdi-widgets', '1', '1546593269953', '1546593269953');
INSERT INTO `upms_permission` VALUES ('90', '6', '87', '修改用户', '3', 'bgx:tbUser:update', '/manage/tbUser/update', 'zmdi zmdi-widgets', '1', '1546593305837', '1546593305837');
INSERT INTO `upms_permission` VALUES ('91', '6', '86', '认证列表', '2', 'bgx:tbCertification:read', '/manage/tbCertification/index', 'zmdi zmdi-widgets', '1', '1546672819255', '1546672819255');
INSERT INTO `upms_permission` VALUES ('92', '6', '91', '新增认证', '3', 'bgx:tbCertification:create', '/manage/tbCertification/create', 'zmdi zmdi-widgets', '1', '1546672845529', '1546672845529');
INSERT INTO `upms_permission` VALUES ('93', '6', '91', '删除认证', '3', 'bgx:tbCertification:delete', '/manage/tbCertification/delete', 'zmdi zmdi-widgets', '1', '1546672944821', '1546672944821');
INSERT INTO `upms_permission` VALUES ('94', '6', '91', '修改认证', '3', 'bgx:tbCertification:update', '/manage/tbCertification/update', 'zmdi zmdi-widgets', '1', '1546672970419', '1546672970419');
INSERT INTO `upms_permission` VALUES ('95', '6', '0', '企业信息管理', '1', '', '', 'zmdi zmdi-widgets', '1', '1546914525871', '1546914525871');
INSERT INTO `upms_permission` VALUES ('96', '6', '95', '企业列表', '2', 'bgx:tbCompany:read', '/manage/tbCompany/index', 'zmdi zmdi-widgets', '1', '1546914583515', '1546914583515');
INSERT INTO `upms_permission` VALUES ('97', '6', '96', '新增企业', '3', 'bgx:tbCompany:create', '/manage/tbCompany/create', 'zmdi zmdi-widgets', '1', '1546914627323', '1546914627323');
INSERT INTO `upms_permission` VALUES ('98', '6', '96', '删除企业', '3', 'bgx:tbCompany:delete', '/manage/tbCompany/delete', 'zmdi zmdi-widgets', '1', '1546914667358', '1546914667358');
INSERT INTO `upms_permission` VALUES ('99', '6', '96', '修改企业', '3', 'bgx:tbCompany:update', '/manage/tbCompany/update', 'zmdi zmdi-widgets', '1', '1546914715781', '1546914715781');
INSERT INTO `upms_permission` VALUES ('100', '6', '95', '项目列表', '2', 'bgx:tbProject:read', '/manage/tbProject/index', 'zmdi zmdi-widgets', '1', '1546914781842', '1546914781842');
INSERT INTO `upms_permission` VALUES ('101', '6', '100', '新增项目', '3', 'bgx:tbProject:create', '/manage/tbProject/create', 'zmdi zmdi-widgets', '1', '1546914805688', '1546914805688');
INSERT INTO `upms_permission` VALUES ('102', '6', '100', '删除项目', '3', 'bgx:tbProject:delete', '/manage/tbProject/delete', 'zmdi zmdi-widgets', '1', '1546914840191', '1546914840191');
INSERT INTO `upms_permission` VALUES ('103', '6', '100', '修改项目', '3', 'bgx:tbProject:update', '/manage/tbProject/update', 'zmdi zmdi-widgets', '1', '1546914869488', '1546914869488');
INSERT INTO `upms_permission` VALUES ('104', '6', '0', '劳务信息管理', '1', '', '', 'zmdi zmdi-widgets', '1', '1546914901878', '1546914901878');
INSERT INTO `upms_permission` VALUES ('105', '6', '104', '劳务列表', '2', 'bgx:tbWorker:read', '/manage/tbWorker/index', 'zmdi zmdi-widgets', '1', '1546914962882', '1546914962882');
INSERT INTO `upms_permission` VALUES ('106', '6', '105', '新增劳务', '3', 'bgx:tbWorker:create', '/manage/tbWorker/create', 'zmdi zmdi-widgets', '1', '1546915006414', '1546915006414');
INSERT INTO `upms_permission` VALUES ('107', '6', '105', '删除劳务', '3', 'bgx:tbWorker:delete', '/manage/tbWorker/delete', 'zmdi zmdi-widgets', '1', '1546915039671', '1546915039671');
INSERT INTO `upms_permission` VALUES ('108', '6', '105', '修改劳务', '3', 'bgx:tbWorker:update', '/manage/tbWorker/update', 'zmdi zmdi-widgets', '1', '1546915073179', '1546915073179');
INSERT INTO `upms_permission` VALUES ('109', '6', '104', '项目列表', '2', 'bgx:tbWorkerProject:read', '/manage/tbWorkerProject/index', 'zmdi zmdi-widgets', '1', '1546916334703', '1546916334703');
INSERT INTO `upms_permission` VALUES ('110', '6', '109', '新增项目', '3', 'bgx:tbWorkerProject:create', '/manage/tbWorkerProject/create', 'zmdi zmdi-widgets', '1', '1546929216245', '1546929216245');
INSERT INTO `upms_permission` VALUES ('111', '6', '109', '删除项目', '3', 'bgx:tbWorkerProject:delete', '/manage/tbWorkerProject/delete', 'zmdi zmdi-widgets', '1', '1546929247105', '1546929247105');
INSERT INTO `upms_permission` VALUES ('112', '6', '109', '修改项目', '3', 'bgx:tbWorkerProject:update', '/manage/tbWorkerProject/update', 'zmdi zmdi-widgets', '1', '1546929295831', '1546929295831');
INSERT INTO `upms_permission` VALUES ('113', '6', '104', '业绩列表', '2', 'bgx:tbAchieve:read', '/manage/tbAchieve/index', 'zmdi zmdi-widgets', '1', '1546929333485', '1546929333485');
INSERT INTO `upms_permission` VALUES ('114', '6', '113', '新增业绩', '3', 'bgx:tbAchieve:create', '/manage/tbAchieve/create', 'zmdi zmdi-widgets', '1', '1546929356462', '1546929356462');
INSERT INTO `upms_permission` VALUES ('115', '6', '113', '删除业绩', '3', 'bgx:tbAchieve:delete', '/manage/tbAchieve/delete', 'zmdi zmdi-widgets', '1', '1546929403708', '1546929403708');
INSERT INTO `upms_permission` VALUES ('116', '6', '113', '修改业绩', '3', 'bgx:tbAchieve:update', '/manage/tbAchieve/update', 'zmdi zmdi-widgets', '1', '1546929435676', '1546929435676');
INSERT INTO `upms_permission` VALUES ('117', '6', '0', '其他数据', '1', '', '', 'zmdi zmdi-more', '1', '1547175983088', '1547175983088');
INSERT INTO `upms_permission` VALUES ('118', '6', '117', '系统消息', '2', 'bgx:sysMessage:read', '/manage/sysMessage/index', 'zmdi zmdi-widgets', '1', '1547176068657', '1547176068657');
INSERT INTO `upms_permission` VALUES ('119', '6', '118', '新增消息', '3', 'bgx:sysMessage:create', '/manage/sysMessage/create', 'zmdi zmdi-widgets', '1', '1547176116967', '1547176116967');
INSERT INTO `upms_permission` VALUES ('120', '6', '118', '删除消息', '3', 'bgx:sysMessage:delete', '/manage/sysMessage/delete', 'zmdi zmdi-widgets', '1', '1547176141413', '1547176141413');
INSERT INTO `upms_permission` VALUES ('121', '6', '118', '修改消息', '3', 'bgx:sysMessage:update', '/manage/sysMessage/update', 'zmdi zmdi-widgets', '1', '1547176161444', '1547176161444');
INSERT INTO `upms_permission` VALUES ('122', '6', '117', '反馈信息', '2', 'bgx:tbFeedback:read', '/manage/tbFeedback/index', 'zmdi zmdi-widgets', '1', '1547192289065', '1547192289065');
INSERT INTO `upms_permission` VALUES ('123', '6', '122', '新增反馈', '3', 'bgx:tbFeedback:create', '/manage/tbFeedback/create', 'zmdi zmdi-widgets', '1', '1547192322897', '1547192322897');
INSERT INTO `upms_permission` VALUES ('124', '6', '122', '删除反馈', '3', 'bgx:tbFeedback:delete', '/manage/tbFeedback/delete', 'zmdi zmdi-widgets', '1', '1547192348739', '1547192348739');
INSERT INTO `upms_permission` VALUES ('125', '6', '122', '修改反馈', '3', 'bgx:tbFeedback:update', '/manage/tbFeedback/update', 'zmdi zmdi-widgets', '1', '1547192374157', '1547192374157');
INSERT INTO `upms_permission` VALUES ('126', '6', '117', '字典数据', '2', 'bgx:tbSysDict:read', '/manage/tbSysDict/index', 'zmdi zmdi-widgets', '1', '1547278396934', '1547278396934');
INSERT INTO `upms_permission` VALUES ('127', '6', '126', '新增字典', '3', 'bgx:tbSysDict:create', '/manage/tbSysDict/create', 'zmdi zmdi-widgets', '1', '1547278493605', '1547278493605');
INSERT INTO `upms_permission` VALUES ('128', '6', '126', '删除字典', '3', 'bgx:tbSysDict:delete', '/manage/tbSysDict/delete', 'zmdi zmdi-widgets', '1', '1547278515885', '1547278515885');
INSERT INTO `upms_permission` VALUES ('129', '6', '126', '修改字典', '3', 'bgx:tbSysDict:update', '/manage/tbSysDict/update', 'zmdi zmdi-widgets', '1', '1547278540406', '1547278540406');
INSERT INTO `upms_permission` VALUES ('130', '6', '117', '审核记录', '2', 'bgx:tbAuditor:read', '/manage/tbAuditor/index', 'zmdi zmdi-widgets', '1', '1547431037287', '1547431037287');
INSERT INTO `upms_permission` VALUES ('131', '6', '130', '新增审核', '3', 'bgx:tbAuditor:create', '/manage/tbAuditor/create', 'zmdi zmdi-widgets', '1', '1547431074661', '1547431074661');
INSERT INTO `upms_permission` VALUES ('132', '6', '130', '删除审核', '3', 'bgx:tbAuditor:delete', '/manage/tbAuditor/delete', 'zmdi zmdi-widgets', '1', '1547431125170', '1547431125170');
INSERT INTO `upms_permission` VALUES ('133', '6', '130', '修改审核', '3', 'bgx:tbAuditor:update', '/manage/tbAuditor/update', 'zmdi zmdi-widgets', '1', '1547431158395', '1547431158395');
INSERT INTO `upms_permission` VALUES ('134', '6', '117', '统计分析', '2', 'bgx:count:read', '/manage/count/index', 'zmdi zmdi-widgets', '1', '1547431184289', '1547431184289');

-- ----------------------------
-- Table structure for upms_role
-- ----------------------------
DROP TABLE IF EXISTS `upms_role`;
CREATE TABLE `upms_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `title` varchar(20) DEFAULT NULL COMMENT '角色标题',
  `description` varchar(1000) DEFAULT NULL COMMENT '角色描述',
  `ctime` bigint(20) NOT NULL COMMENT '创建时间',
  `orders` bigint(20) NOT NULL COMMENT '排序',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色';

-- ----------------------------
-- Records of upms_role
-- ----------------------------
INSERT INTO `upms_role` VALUES ('1', 'super', '超级管理员', '拥有所有权限', '1', '1');
INSERT INTO `upms_role` VALUES ('2', 'server', '管理员', '拥有除权限管理系统外的所有权限', '1487471013117', '1487471013117');

-- ----------------------------
-- Table structure for upms_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_role_permission`;
CREATE TABLE `upms_role_permission` (
  `role_permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色编号',
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限编号',
  PRIMARY KEY (`role_permission_id`),
  KEY `FK_Reference_23` (`role_id`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`role_id`) REFERENCES `upms_role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COMMENT='角色权限关联表';

-- ----------------------------
-- Records of upms_role_permission
-- ----------------------------
INSERT INTO `upms_role_permission` VALUES ('1', '1', '1');
INSERT INTO `upms_role_permission` VALUES ('2', '1', '2');
INSERT INTO `upms_role_permission` VALUES ('3', '1', '3');
INSERT INTO `upms_role_permission` VALUES ('4', '1', '4');
INSERT INTO `upms_role_permission` VALUES ('5', '1', '5');
INSERT INTO `upms_role_permission` VALUES ('6', '1', '6');
INSERT INTO `upms_role_permission` VALUES ('7', '1', '7');
INSERT INTO `upms_role_permission` VALUES ('8', '1', '39');
INSERT INTO `upms_role_permission` VALUES ('12', '1', '12');
INSERT INTO `upms_role_permission` VALUES ('14', '1', '14');
INSERT INTO `upms_role_permission` VALUES ('15', '1', '15');
INSERT INTO `upms_role_permission` VALUES ('17', '1', '17');
INSERT INTO `upms_role_permission` VALUES ('19', '1', '19');
INSERT INTO `upms_role_permission` VALUES ('20', '1', '20');
INSERT INTO `upms_role_permission` VALUES ('21', '1', '21');
INSERT INTO `upms_role_permission` VALUES ('24', '1', '24');
INSERT INTO `upms_role_permission` VALUES ('27', '1', '27');
INSERT INTO `upms_role_permission` VALUES ('28', '1', '28');
INSERT INTO `upms_role_permission` VALUES ('29', '1', '29');
INSERT INTO `upms_role_permission` VALUES ('30', '1', '30');
INSERT INTO `upms_role_permission` VALUES ('31', '1', '31');
INSERT INTO `upms_role_permission` VALUES ('32', '1', '32');
INSERT INTO `upms_role_permission` VALUES ('33', '1', '33');
INSERT INTO `upms_role_permission` VALUES ('34', '1', '34');
INSERT INTO `upms_role_permission` VALUES ('35', '1', '35');
INSERT INTO `upms_role_permission` VALUES ('36', '1', '36');
INSERT INTO `upms_role_permission` VALUES ('37', '1', '37');
INSERT INTO `upms_role_permission` VALUES ('38', '1', '38');
INSERT INTO `upms_role_permission` VALUES ('39', '1', '46');
INSERT INTO `upms_role_permission` VALUES ('40', '1', '51');
INSERT INTO `upms_role_permission` VALUES ('44', '1', '48');
INSERT INTO `upms_role_permission` VALUES ('45', '1', '50');
INSERT INTO `upms_role_permission` VALUES ('47', '1', '53');
INSERT INTO `upms_role_permission` VALUES ('48', '1', '18');
INSERT INTO `upms_role_permission` VALUES ('49', '1', '54');
INSERT INTO `upms_role_permission` VALUES ('50', '1', '54');
INSERT INTO `upms_role_permission` VALUES ('51', '1', '55');
INSERT INTO `upms_role_permission` VALUES ('52', '1', '54');
INSERT INTO `upms_role_permission` VALUES ('53', '1', '55');
INSERT INTO `upms_role_permission` VALUES ('54', '1', '56');
INSERT INTO `upms_role_permission` VALUES ('55', '1', '57');
INSERT INTO `upms_role_permission` VALUES ('56', '1', '58');
INSERT INTO `upms_role_permission` VALUES ('57', '1', '58');
INSERT INTO `upms_role_permission` VALUES ('58', '1', '59');
INSERT INTO `upms_role_permission` VALUES ('59', '1', '60');
INSERT INTO `upms_role_permission` VALUES ('60', '1', '61');
INSERT INTO `upms_role_permission` VALUES ('61', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('62', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('63', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('64', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('65', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('66', '1', '64');
INSERT INTO `upms_role_permission` VALUES ('67', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('68', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('69', '1', '64');
INSERT INTO `upms_role_permission` VALUES ('70', '1', '65');
INSERT INTO `upms_role_permission` VALUES ('71', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('72', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('73', '1', '64');
INSERT INTO `upms_role_permission` VALUES ('74', '1', '65');
INSERT INTO `upms_role_permission` VALUES ('75', '1', '66');
INSERT INTO `upms_role_permission` VALUES ('76', '1', '62');
INSERT INTO `upms_role_permission` VALUES ('77', '1', '63');
INSERT INTO `upms_role_permission` VALUES ('78', '1', '64');
INSERT INTO `upms_role_permission` VALUES ('79', '1', '65');
INSERT INTO `upms_role_permission` VALUES ('80', '1', '66');
INSERT INTO `upms_role_permission` VALUES ('81', '1', '67');
INSERT INTO `upms_role_permission` VALUES ('82', '1', '68');
INSERT INTO `upms_role_permission` VALUES ('83', '1', '69');
INSERT INTO `upms_role_permission` VALUES ('84', '1', '69');
INSERT INTO `upms_role_permission` VALUES ('85', '1', '70');
INSERT INTO `upms_role_permission` VALUES ('86', '1', '69');
INSERT INTO `upms_role_permission` VALUES ('87', '1', '70');
INSERT INTO `upms_role_permission` VALUES ('88', '1', '71');
INSERT INTO `upms_role_permission` VALUES ('89', '1', '72');
INSERT INTO `upms_role_permission` VALUES ('90', '1', '72');
INSERT INTO `upms_role_permission` VALUES ('91', '1', '73');
INSERT INTO `upms_role_permission` VALUES ('92', '1', '72');
INSERT INTO `upms_role_permission` VALUES ('93', '1', '73');
INSERT INTO `upms_role_permission` VALUES ('94', '1', '74');
INSERT INTO `upms_role_permission` VALUES ('95', '1', '72');
INSERT INTO `upms_role_permission` VALUES ('96', '1', '73');
INSERT INTO `upms_role_permission` VALUES ('97', '1', '74');
INSERT INTO `upms_role_permission` VALUES ('98', '1', '75');
INSERT INTO `upms_role_permission` VALUES ('99', '1', '76');
INSERT INTO `upms_role_permission` VALUES ('100', '1', '76');
INSERT INTO `upms_role_permission` VALUES ('101', '1', '77');
INSERT INTO `upms_role_permission` VALUES ('102', '1', '76');
INSERT INTO `upms_role_permission` VALUES ('103', '1', '77');
INSERT INTO `upms_role_permission` VALUES ('105', '1', '79');
INSERT INTO `upms_role_permission` VALUES ('106', '1', '80');
INSERT INTO `upms_role_permission` VALUES ('107', '1', '81');
INSERT INTO `upms_role_permission` VALUES ('108', '1', '81');
INSERT INTO `upms_role_permission` VALUES ('109', '1', '82');
INSERT INTO `upms_role_permission` VALUES ('110', '1', '81');
INSERT INTO `upms_role_permission` VALUES ('111', '1', '82');
INSERT INTO `upms_role_permission` VALUES ('112', '1', '83');
INSERT INTO `upms_role_permission` VALUES ('113', '1', '84');
INSERT INTO `upms_role_permission` VALUES ('114', '1', '84');
INSERT INTO `upms_role_permission` VALUES ('115', '1', '85');
INSERT INTO `upms_role_permission` VALUES ('121', '1', '78');
INSERT INTO `upms_role_permission` VALUES ('122', '1', '78');
INSERT INTO `upms_role_permission` VALUES ('124', '1', '25');
INSERT INTO `upms_role_permission` VALUES ('125', '1', '26');
INSERT INTO `upms_role_permission` VALUES ('126', '2', '86');
INSERT INTO `upms_role_permission` VALUES ('127', '2', '87');
INSERT INTO `upms_role_permission` VALUES ('128', '2', '88');
INSERT INTO `upms_role_permission` VALUES ('129', '2', '89');
INSERT INTO `upms_role_permission` VALUES ('130', '2', '90');
INSERT INTO `upms_role_permission` VALUES ('131', '2', '91');
INSERT INTO `upms_role_permission` VALUES ('132', '2', '92');
INSERT INTO `upms_role_permission` VALUES ('133', '2', '93');
INSERT INTO `upms_role_permission` VALUES ('134', '2', '94');
INSERT INTO `upms_role_permission` VALUES ('135', '2', '95');
INSERT INTO `upms_role_permission` VALUES ('136', '2', '96');
INSERT INTO `upms_role_permission` VALUES ('137', '2', '97');
INSERT INTO `upms_role_permission` VALUES ('138', '2', '98');
INSERT INTO `upms_role_permission` VALUES ('139', '2', '99');
INSERT INTO `upms_role_permission` VALUES ('140', '2', '100');
INSERT INTO `upms_role_permission` VALUES ('141', '2', '101');
INSERT INTO `upms_role_permission` VALUES ('142', '2', '102');
INSERT INTO `upms_role_permission` VALUES ('143', '2', '103');
INSERT INTO `upms_role_permission` VALUES ('144', '2', '104');
INSERT INTO `upms_role_permission` VALUES ('145', '2', '105');
INSERT INTO `upms_role_permission` VALUES ('146', '2', '106');
INSERT INTO `upms_role_permission` VALUES ('147', '2', '107');
INSERT INTO `upms_role_permission` VALUES ('148', '2', '108');
INSERT INTO `upms_role_permission` VALUES ('149', '2', '109');
INSERT INTO `upms_role_permission` VALUES ('150', '2', '110');
INSERT INTO `upms_role_permission` VALUES ('151', '2', '111');
INSERT INTO `upms_role_permission` VALUES ('152', '2', '112');
INSERT INTO `upms_role_permission` VALUES ('153', '2', '113');
INSERT INTO `upms_role_permission` VALUES ('154', '2', '114');
INSERT INTO `upms_role_permission` VALUES ('155', '2', '115');
INSERT INTO `upms_role_permission` VALUES ('156', '2', '116');
INSERT INTO `upms_role_permission` VALUES ('157', '2', '117');
INSERT INTO `upms_role_permission` VALUES ('158', '2', '118');
INSERT INTO `upms_role_permission` VALUES ('159', '2', '119');
INSERT INTO `upms_role_permission` VALUES ('160', '2', '120');
INSERT INTO `upms_role_permission` VALUES ('161', '2', '121');
INSERT INTO `upms_role_permission` VALUES ('162', '2', '122');
INSERT INTO `upms_role_permission` VALUES ('163', '2', '123');
INSERT INTO `upms_role_permission` VALUES ('164', '2', '124');
INSERT INTO `upms_role_permission` VALUES ('165', '2', '125');
INSERT INTO `upms_role_permission` VALUES ('166', '2', '126');
INSERT INTO `upms_role_permission` VALUES ('167', '2', '127');
INSERT INTO `upms_role_permission` VALUES ('168', '2', '128');
INSERT INTO `upms_role_permission` VALUES ('169', '2', '129');
INSERT INTO `upms_role_permission` VALUES ('170', '2', '130');
INSERT INTO `upms_role_permission` VALUES ('171', '2', '131');
INSERT INTO `upms_role_permission` VALUES ('172', '2', '132');
INSERT INTO `upms_role_permission` VALUES ('173', '2', '133');
INSERT INTO `upms_role_permission` VALUES ('174', '2', '134');

-- ----------------------------
-- Table structure for upms_system
-- ----------------------------
DROP TABLE IF EXISTS `upms_system`;
CREATE TABLE `upms_system` (
  `system_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `banner` varchar(150) DEFAULT NULL COMMENT '背景',
  `theme` varchar(50) DEFAULT NULL COMMENT '主题',
  `basepath` varchar(100) DEFAULT NULL COMMENT '根目录',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态(-1:黑名单,1:正常)',
  `name` varchar(20) DEFAULT NULL COMMENT '系统名称',
  `title` varchar(20) DEFAULT NULL COMMENT '系统标题',
  `description` varchar(300) DEFAULT NULL COMMENT '系统描述',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='系统';

-- ----------------------------
-- Records of upms_system
-- ----------------------------
INSERT INTO `upms_system` VALUES ('1', 'zmdi zmdi-shield-security', '/resources/static/images/upms.png', '#29A176', 'upms.wangyan.name:1111', '1', 'upms-server', '权限管理系统', '用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）', '1', '1');
INSERT INTO `upms_system` VALUES ('2', 'zmdi zmdi-wikipedia', '/resources/static/images/cms.png', '#455EC5', 'http://cms.wangyan.name:2222', '1', 'cms-server', '内容管理系统', '内容管理系统（门户、博客、论坛、问答等）', '2', '2');
INSERT INTO `upms_system` VALUES ('3', 'zmdi zmdi-paypal-alt', '/resources/static/images/pay.png', '#F06292', 'http://pay.wangyan.name:3331', '1', 'pay-server', '支付管理系统', '支付管理系统', '3', '3');
INSERT INTO `upms_system` VALUES ('4', 'zmdi zmdi-account', '/resources/static/images/ucenter.png', '#6539B4', 'http://ucenter.wangyan.name:4441', '1', 'ucenter-home', '用户管理系统', '用户管理系统', '4', '4');
INSERT INTO `upms_system` VALUES ('5', 'zmdi zmdi-cloud', '/resources/static/images/oss.png', '#0B8DE5', 'http://oss.wangyan.name:7771', '1', 'oss-web', '存储管理系统', '存储管理系统', '5', '5');
INSERT INTO `upms_system` VALUES ('6', '', '', '#008080', 'http://www.framework.work:1212', '1', 'bgx-server', '包工侠管理系统', '', '1546592715587', '1546592715587');

-- ----------------------------
-- Table structure for upms_user
-- ----------------------------
DROP TABLE IF EXISTS `upms_user`;
CREATE TABLE `upms_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(20) NOT NULL COMMENT '帐号',
  `password` varchar(32) NOT NULL COMMENT '密码MD5(密码+盐)',
  `salt` varchar(32) DEFAULT NULL COMMENT '盐',
  `realname` varchar(20) DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(150) DEFAULT NULL COMMENT '头像',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `locked` tinyint(4) DEFAULT NULL COMMENT '状态(0:正常,1:锁定)',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户';

-- ----------------------------
-- Records of upms_user
-- ----------------------------
INSERT INTO `upms_user` VALUES ('1', 'server', '3038D9CB63B3152A79B8153FB06C02F7', '66f1b370c660445a8657bf8bf1794486', '王严', '/resources/static/images/avatar.jpg', '', 'wangyanjava@gmail.com', '1', '0', '1');
INSERT INTO `upms_user` VALUES ('2', 'test', '285C9762F5F9046F5893F752DFAF3476', 'd2d0d03310444ad388a8b290b0fe8564', '王严', '/resources/static/images/avatar.jpg', '', 'wangyanjava@gmail.com', '1', '0', '1493394720495');

-- ----------------------------
-- Table structure for upms_user_organization
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_organization`;
CREATE TABLE `upms_user_organization` (
  `user_organization_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `organization_id` int(10) unsigned NOT NULL COMMENT '组织编号',
  PRIMARY KEY (`user_organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COMMENT='用户组织关联表';

-- ----------------------------
-- Records of upms_user_organization
-- ----------------------------
INSERT INTO `upms_user_organization` VALUES ('19', '1', '1');
INSERT INTO `upms_user_organization` VALUES ('20', '1', '4');
INSERT INTO `upms_user_organization` VALUES ('21', '1', '5');
INSERT INTO `upms_user_organization` VALUES ('22', '1', '6');
INSERT INTO `upms_user_organization` VALUES ('23', '1', '7');

-- ----------------------------
-- Table structure for upms_user_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_permission`;
CREATE TABLE `upms_user_permission` (
  `user_permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限编号',
  `type` tinyint(4) NOT NULL COMMENT '权限类型(-1:减权限,1:增权限)',
  PRIMARY KEY (`user_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户权限关联表';

-- ----------------------------
-- Records of upms_user_permission
-- ----------------------------

-- ----------------------------
-- Table structure for upms_user_role
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_role`;
CREATE TABLE `upms_user_role` (
  `user_role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `role_id` int(10) DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='用户角色关联表';

-- ----------------------------
-- Records of upms_user_role
-- ----------------------------
INSERT INTO `upms_user_role` VALUES ('4', '1', '1');
INSERT INTO `upms_user_role` VALUES ('5', '1', '2');
INSERT INTO `upms_user_role` VALUES ('6', '2', '1');
INSERT INTO `upms_user_role` VALUES ('7', '2', '2');
