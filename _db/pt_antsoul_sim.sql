/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50623
Source Host           : 127.0.0.1:3721
Source Database       : pt_antsoul_sim

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2015-05-08 20:31:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `404page`
-- ----------------------------
DROP TABLE IF EXISTS `404page`;
CREATE TABLE `404page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` char(255) NOT NULL,
  `userid` int(11) NOT NULL,
  `nowtime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_userid` (`page`,`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=17789 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 404page
-- ----------------------------

-- ----------------------------
-- Table structure for `adclicks`
-- ----------------------------
DROP TABLE IF EXISTS `adclicks`;
CREATE TABLE `adclicks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `adid` int(11) unsigned DEFAULT NULL,
  `userid` int(11) unsigned DEFAULT NULL,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4919 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adclicks
-- ----------------------------

-- ----------------------------
-- Table structure for `adminpanel`
-- ----------------------------
DROP TABLE IF EXISTS `adminpanel`;
CREATE TABLE `adminpanel` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminpanel
-- ----------------------------
INSERT INTO `adminpanel` VALUES ('1', '添加用户', 'adduser.php', '创建新用户帐户');
INSERT INTO `adminpanel` VALUES ('3', '重置用户密码', 'reset.php', '用户密码丢失');
INSERT INTO `adminpanel` VALUES ('4', '发送消息', 'staffmess.php', '发短消息给所有用户');
INSERT INTO `adminpanel` VALUES ('6', '民意调查', 'polloverview.php', '查看投票表决');
INSERT INTO `adminpanel` VALUES ('7', '警告用户', 'warned.php', '跟踪所有用户发出警告');
INSERT INTO `adminpanel` VALUES ('8', 'FreeLeech(吸血)', 'freeleech.php', '设置吸血行为');
INSERT INTO `adminpanel` VALUES ('9', '常见问题管理', 'faqmanage.php', '编辑/添加/删除常见问题');
INSERT INTO `adminpanel` VALUES ('10', '规则管理', 'modrules.php', '编辑/添加/删除规则');
INSERT INTO `adminpanel` VALUES ('11', '分类管理', 'catmanage.php', '管理网站的分类');
INSERT INTO `adminpanel` VALUES ('12', 'BAKA&TEST问题管理', 'bakatestconfig.php', 'BAKA&TEST问题管理');

-- ----------------------------
-- Table structure for `advertisements`
-- ----------------------------
DROP TABLE IF EXISTS `advertisements`;
CREATE TABLE `advertisements` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('bbcodes','xhtml','text','image','flash') NOT NULL,
  `position` enum('header','footer','belownav','belowsearchbox','torrentdetail','comment','interoverforums','forumpost','popup') NOT NULL,
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `parameters` text NOT NULL,
  `code` text NOT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advertisements
-- ----------------------------
INSERT INTO `advertisements` VALUES ('2', '0', 'text', 'belowsearchbox', '1', '注意', 'a:3:{s:7:\"content\";s:48:\"本站资源只能使用uTorrent或Azureus下载\";s:4:\"link\";s:60:\"http://pt.antsoul.com/forums.php?action=viewtopic&topicid=55\";s:4:\"size\";s:4:\"20pt\";}', '<a href=\"adredir.php?id=2&amp;url=http%3A%2F%2Fpt.antsoul.com%2Fforums.php%3Faction%3Dviewtopic%26amp%3Btopicid%3D55\" target=\"_blank\"><span style=\"font-size: 20pt\">本站资源只能使用uTorrent或Azureus下载</span></a>', '2010-11-21 20:10:00', '2055-11-21 20:10:00');
INSERT INTO `advertisements` VALUES ('3', '0', 'bbcodes', 'torrentdetail', '99', '郑重声明', 'a:1:{s:4:\"code\";s:600:\"[quote=郑重声明][color=red]本站提供的所有影视作品均是在网上搜集，不得用于商业盈利，否则产生的一切后果将由您自己承担！\r\n本站不对本站的任何内容负任何法律责任！所有内容仅做宽带测试使用，请在下载后24小时内删除。若喜欢本作品，请购买正版！\r\n本站列出的文件并没有保存在本站的服务器上，本站仅负责连接，我们对被传播文件的内容一无所知。\r\n本站的链接均由用户自发提供，管理员无法对用户的提交内容或其他行为负责。\r\n[/color][/quote]\";}', '<fieldset><legend> 引用: 郑重声明 </legend><br /><span style=\"color: red;\">本站提供的所有影视作品均是在网上搜集，不得用于商业盈利，否则产生的一切后果将由您自己承担！<br />\r\n本站不对本站的任何内容负任何法律责任！所有内容仅做宽带测试使用，请在下载后24小时内删除。若喜欢本作品，请购买正版！<br />\r\n本站列出的文件并没有保存在本站的服务器上，本站仅负责连接，我们对被传播文件的内容一无所知。<br />\r\n本站的链接均由用户自发提供，管理员无法对用户的提交内容或其他行为负责。<br />\r\n</span></fieldset><br />', '2007-12-24 21:00:00', '2057-12-24 21:00:00');
INSERT INTO `advertisements` VALUES ('9', '0', 'text', 'belowsearchbox', '0', '[color=red][b]上传资源标题命名规则（试运行）', 'a:3:{s:7:\"content\";s:54:\"上传资源标题命名规则（含试种区规则）\";s:4:\"link\";s:49:\"/forums.php?action=viewtopic&forumid=4&topicid=74\";s:4:\"size\";s:4:\"15pt\";}', '<a href=\"adredir.php?id=9&amp;url=%2Fforums.php%3Faction%3Dviewtopic%26amp%3Bforumid%3D4%26amp%3Btopicid%3D74\" target=\"_blank\"><span style=\"font-size: 15pt\">上传资源标题命名规则（含试种区规则）</span></a>', '2011-05-09 21:00:00', null);
INSERT INTO `advertisements` VALUES ('10', '1', 'xhtml', 'torrentdetail', '0', '郑重声明(HTML)', 'a:1:{s:4:\"code\";s:831:\"<br /><div align=\"left\" style=\"margin-bottom: 10px\" id=\"ad_torrentdetail\"><table  style=\"width: 100%\"><tr><td class=\"embedded\"><fieldset><legend> 引用: 郑重声明 </legend><br /><span style=\"color: red;\">本站提供的所有影视作品均是在网上搜集，不得用于商业盈利，否则产生的一切后果将由您自己承担！<br /> \r\n本站不对本站的任何内容负任何法律责任！所有内容仅做宽带测试使用，请在下载后24小时内删除。若喜欢本作品，请购买正版！<br /> \r\n本站列出的文件并没有保存在本站的服务器上，本站仅负责连接，我们对被传播文件的内容一无所知。<br /> \r\n本站的链接均由用户自发提供，管理员无法对用户的提交内容或其他行为负责。<br /> \r\n</span></fieldset></td></tr></table></div>\";}', '<br /><div align=\"left\" style=\"margin-bottom: 10px\" id=\"ad_torrentdetail\"><table  style=\"width: 100%\"><tr><td class=\"embedded\"><fieldset><legend> 引用: 郑重声明 </legend><br /><span style=\"color: red;\">本站提供的所有影视作品均是在网上搜集，不得用于商业盈利，否则产生的一切后果将由您自己承担！<br /> \r\n本站不对本站的任何内容负任何法律责任！所有内容仅做宽带测试使用，请在下载后24小时内删除。若喜欢本作品，请购买正版！<br /> \r\n本站列出的文件并没有保存在本站的服务器上，本站仅负责连接，我们对被传播文件的内容一无所知。<br /> \r\n本站的链接均由用户自发提供，管理员无法对用户的提交内容或其他行为负责。<br /> \r\n</span></fieldset></td></tr></table></div>', null, null);

-- ----------------------------
-- Table structure for `agent_allowed_exception`
-- ----------------------------
DROP TABLE IF EXISTS `agent_allowed_exception`;
CREATE TABLE `agent_allowed_exception` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `family_id` tinyint(3) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `peer_id` varchar(20) NOT NULL,
  `agent` varchar(100) NOT NULL,
  `comment` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `family_id` (`family_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agent_allowed_exception
-- ----------------------------
INSERT INTO `agent_allowed_exception` VALUES ('1', '42', 'uTorrent 3.100', '-UT3100-', '', 'UT3.100含有BUG,禁止该客户端下载');

-- ----------------------------
-- Table structure for `agent_allowed_family`
-- ----------------------------
DROP TABLE IF EXISTS `agent_allowed_family`;
CREATE TABLE `agent_allowed_family` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `family` varchar(50) NOT NULL DEFAULT '',
  `start_name` varchar(100) NOT NULL DEFAULT '',
  `peer_id_pattern` varchar(200) NOT NULL,
  `peer_id_match_num` tinyint(3) unsigned NOT NULL,
  `peer_id_matchtype` enum('dec','hex') NOT NULL DEFAULT 'dec',
  `peer_id_start` varchar(20) NOT NULL,
  `agent_pattern` varchar(200) NOT NULL,
  `agent_match_num` tinyint(3) unsigned NOT NULL,
  `agent_matchtype` enum('dec','hex') NOT NULL DEFAULT 'dec',
  `agent_start` varchar(100) NOT NULL,
  `exception` enum('yes','no') NOT NULL DEFAULT 'no',
  `allowhttps` enum('yes','no') NOT NULL DEFAULT 'no',
  `comment` varchar(200) NOT NULL DEFAULT '',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9007 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agent_allowed_family
-- ----------------------------
INSERT INTO `agent_allowed_family` VALUES ('40', 'uTorrent 1.8', 'uTorrent 1.8.5.0', '/^-UT18([5-9])([0-9])-/', '2', 'dec', '-UT1850-', '/^uTorrent\\/18([5-9])([0-9])/', '2', 'dec', 'uTorrent/1850', 'no', 'yes', '', '114');
INSERT INTO `agent_allowed_family` VALUES ('31', 'Azureus 5.0', 'Azureus 5.0.0.0', '/^-AZ5([0-9])([0-9])([0-9])-/', '3', 'dec', '-AZ5000-', '/^Azureus 5\\.([0-9])\\.([0-9])\\.([0-9])/', '3', 'dec', 'Azureus 5.0.0.0', 'no', 'yes', '', '19');
INSERT INTO `agent_allowed_family` VALUES ('41', 'uTorrent 2.0', 'uTorrent 2.0.0.0', '/^-UT2([0-9])([0-9])([0-9])-/', '3', 'dec', '-UT2000-', '/^uTorrent\\/2([0-9])([0-9])([0-9])/', '3', 'dec', 'uTorrent/2000', 'no', 'yes', '', '1073');
INSERT INTO `agent_allowed_family` VALUES ('10', 'Transmission 2.0', 'Transmission 2.0.0', '/^-TR2([0-9])([0-9])([0-9])-/', '3', 'dec', '-TR2000-', '/^Transmission\\/2\\.([0-9])([0-9])/', '2', 'dec', 'Transmission/2.00', 'no', 'yes', '', '134');
INSERT INTO `agent_allowed_family` VALUES ('60', 'uTorrentMac 1.0', 'uTorrentMac 1.0.0.0', '/^-UM1([0-9])([0-9])([0-9B])-/', '3', 'dec', '-UM1000-', '/^uTorrentMac\\/1([0-9])([0-9])([0-9B])/', '3', 'dec', 'uTorrentMac/1000', 'no', 'yes', '', '50');
INSERT INTO `agent_allowed_family` VALUES ('20', 'Deluge 1.3', 'Deluge 1.3.0.0', '/^-DE1([3-9])([0-9])([0-9])-/', '3', 'dec', '-DE1300-', '/^Deluge 1\\.([3-9])\\.([0-9])/', '2', 'dec', 'Deluge 1.3.0', 'no', 'yes', '', '2');
INSERT INTO `agent_allowed_family` VALUES ('42', 'uTorrent 3.0', 'uTorrent 3.0.0.0', '/^-UT3([0-9])([0-9])([0-9])-/', '3', 'dec', '-UT3000-', '/^uTorrent\\/3([0-9])([0-9])([0-9])/', '3', 'dec', 'uTorrent/3000', 'yes', 'yes', '', '1989');
INSERT INTO `agent_allowed_family` VALUES ('30', 'Azureus 4.0', 'Azureus 4.0.0.0', '/^-AZ4([0-9])([0-9])([0-9])-/', '3', 'dec', '-AZ4000-', '/^Azureus 4\\.([0-9])\\.([0-9])\\.([0-9])/', '3', 'dec', 'Azureus 4.0.0.0', 'no', 'yes', '', '0');
INSERT INTO `agent_allowed_family` VALUES ('43', 'uTorrent 3.4', 'uTorrent 3.4.0', '/^-UT3([0-9])([0-9])-/', '2', 'dec', '-UT340-', '/^uTorrent\\/3([0-9])([0-9])/', '2', 'dec', 'uTorrent/340', 'no', 'yes', '', '1114');
INSERT INTO `agent_allowed_family` VALUES ('44', 'uTorrent 3.4.2', 'uTorrent 3.4.2', '/^-UT3([0-9])([0-9])([0-9])-/', '3', 'dec', '-UT3420-', '/^uTorrent\\/3([0-9])([0-9])/', '2', 'dec', 'uTorrent/342', 'no', 'yes', '', '3663');
INSERT INTO `agent_allowed_family` VALUES ('45', 'uTorrent 3.4.2B', 'uTorrent 3.4.2', '/^-UT3([0-9])([0-9])B-/', '2', 'dec', '-UT342B-', '/^uTorrent\\/3([0-9])([0-9])/', '2', 'dec', 'uTorrent/342', 'no', 'yes', '', '74');

-- ----------------------------
-- Table structure for `allowedemails`
-- ----------------------------
DROP TABLE IF EXISTS `allowedemails`;
CREATE TABLE `allowedemails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allowedemails
-- ----------------------------
INSERT INTO `allowedemails` VALUES ('1', '@edu.cn');

-- ----------------------------
-- Table structure for `attachments`
-- ----------------------------
DROP TABLE IF EXISTS `attachments`;
CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `width` smallint(6) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `dlkey` char(32) NOT NULL,
  `filetype` varchar(50) NOT NULL DEFAULT '',
  `filesize` bigint(20) unsigned NOT NULL DEFAULT '0',
  `location` varchar(255) NOT NULL,
  `downloads` mediumint(8) NOT NULL DEFAULT '0',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `inuse` tinyint(1) NOT NULL DEFAULT '1',
  `iszip` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`userid`,`id`),
  KEY `dateline` (`added`,`isimage`,`downloads`),
  KEY `dlkey` (`dlkey`) USING BTREE,
  KEY `filetype` (`filetype`),
  KEY `iszip` (`iszip`)
) ENGINE=MyISAM AUTO_INCREMENT=77761 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attachments
-- ----------------------------

-- ----------------------------
-- Table structure for `audiocodecs`
-- ----------------------------
DROP TABLE IF EXISTS `audiocodecs`;
CREATE TABLE `audiocodecs` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of audiocodecs
-- ----------------------------
INSERT INTO `audiocodecs` VALUES ('13', '动画合集', '', '1', '405');
INSERT INTO `audiocodecs` VALUES ('12', '连载动画', '', '0', '405');
INSERT INTO `audiocodecs` VALUES ('11', '视频解说', '', '5', '410');
INSERT INTO `audiocodecs` VALUES ('33', '国家地理', '', '1', '404');
INSERT INTO `audiocodecs` VALUES ('14', '剧场OVA', '', '2', '405');
INSERT INTO `audiocodecs` VALUES ('15', '游戏相关', '', '3', '405');
INSERT INTO `audiocodecs` VALUES ('16', '音乐声优', '', '4', '405');
INSERT INTO `audiocodecs` VALUES ('17', '漫画画集', '', '5', '405');
INSERT INTO `audiocodecs` VALUES ('18', '其他资源', '', '6', '405');
INSERT INTO `audiocodecs` VALUES ('19', '综艺娱乐', '', '0', '403');
INSERT INTO `audiocodecs` VALUES ('20', '新闻综合', '', '1', '403');
INSERT INTO `audiocodecs` VALUES ('21', '晚会典礼', '', '2', '403');
INSERT INTO `audiocodecs` VALUES ('22', '科教节目', '', '3', '403');
INSERT INTO `audiocodecs` VALUES ('23', '艺人合集', '', '4', '403');
INSERT INTO `audiocodecs` VALUES ('26', '足球', '', '1', '407');
INSERT INTO `audiocodecs` VALUES ('25', '篮球', '', '0', '407');
INSERT INTO `audiocodecs` VALUES ('27', '网球', '', '2', '407');
INSERT INTO `audiocodecs` VALUES ('28', '台球', '', '3', '407');
INSERT INTO `audiocodecs` VALUES ('29', '其他', '', '9', '407');
INSERT INTO `audiocodecs` VALUES ('30', '网络游戏', '', '0', '410');
INSERT INTO `audiocodecs` VALUES ('31', '掌机游戏', '', '3', '410');
INSERT INTO `audiocodecs` VALUES ('32', '单机游戏', '', '2', '410');
INSERT INTO `audiocodecs` VALUES ('34', '探索频道', '', '0', '404');
INSERT INTO `audiocodecs` VALUES ('35', 'CCTV', '', '2', '404');
INSERT INTO `audiocodecs` VALUES ('36', 'BBC', '', '4', '404');
INSERT INTO `audiocodecs` VALUES ('37', '其他', '', '5', '404');
INSERT INTO `audiocodecs` VALUES ('38', '自然科学', '', '0', '412');
INSERT INTO `audiocodecs` VALUES ('39', '人文社科', '', '1', '412');
INSERT INTO `audiocodecs` VALUES ('40', '外语相关', '', '2', '412');
INSERT INTO `audiocodecs` VALUES ('41', '工程科学', '', '3', '412');
INSERT INTO `audiocodecs` VALUES ('42', '有声读物', '', '4', '412');
INSERT INTO `audiocodecs` VALUES ('43', '讲座演讲', '', '5', '412');
INSERT INTO `audiocodecs` VALUES ('44', '考研相关', '', '6', '412');
INSERT INTO `audiocodecs` VALUES ('45', '计算机类', '', '7', '412');
INSERT INTO `audiocodecs` VALUES ('46', '其他资料', '', '11', '412');
INSERT INTO `audiocodecs` VALUES ('47', '经济管理', '', '9', '412');
INSERT INTO `audiocodecs` VALUES ('48', '图片收藏', '', '0', '409');
INSERT INTO `audiocodecs` VALUES ('49', '视频拾遗', '', '1', '409');
INSERT INTO `audiocodecs` VALUES ('50', '音频集萃', '', '2', '409');
INSERT INTO `audiocodecs` VALUES ('51', '文本珍存', '', '3', '409');
INSERT INTO `audiocodecs` VALUES ('52', '其他资源', '', '4', '409');
INSERT INTO `audiocodecs` VALUES ('53', '游戏视听', '', '6', '410');
INSERT INTO `audiocodecs` VALUES ('54', '学生原创', '', '10', '412');
INSERT INTO `audiocodecs` VALUES ('55', '补丁辅助', '', '7', '410');
INSERT INTO `audiocodecs` VALUES ('56', '电影', '', '0', '416');
INSERT INTO `audiocodecs` VALUES ('57', '电视剧', '', '2', '416');
INSERT INTO `audiocodecs` VALUES ('58', '综艺', '', '3', '416');
INSERT INTO `audiocodecs` VALUES ('59', '纪录片', '', '5', '416');
INSERT INTO `audiocodecs` VALUES ('60', '动漫', '', '4', '416');
INSERT INTO `audiocodecs` VALUES ('61', 'MV', '', '9', '416');
INSERT INTO `audiocodecs` VALUES ('62', '体育', '', '8', '416');
INSERT INTO `audiocodecs` VALUES ('63', '音乐', '', '6', '416');
INSERT INTO `audiocodecs` VALUES ('64', '其他', '', '11', '416');
INSERT INTO `audiocodecs` VALUES ('65', '游戏', '', '1', '416');
INSERT INTO `audiocodecs` VALUES ('66', '软件', '', '7', '416');
INSERT INTO `audiocodecs` VALUES ('67', '学习', '', '10', '416');
INSERT INTO `audiocodecs` VALUES ('68', '公开课视频', '', '5', '412');
INSERT INTO `audiocodecs` VALUES ('70', '电影正篇', '', '0', '401');
INSERT INTO `audiocodecs` VALUES ('71', '电影合辑', '', '1', '401');
INSERT INTO `audiocodecs` VALUES ('72', '电影原声', '', '2', '401');
INSERT INTO `audiocodecs` VALUES ('73', '影片花絮', '', '3', '401');
INSERT INTO `audiocodecs` VALUES ('74', '剧集合辑', '', '0', '402');
INSERT INTO `audiocodecs` VALUES ('75', '连载剧集', '', '1', '402');
INSERT INTO `audiocodecs` VALUES ('76', '剧集原声', '', '2', '402');
INSERT INTO `audiocodecs` VALUES ('79', '枪版资源', '', '4', '401');

-- ----------------------------
-- Table structure for `avps`
-- ----------------------------
DROP TABLE IF EXISTS `avps`;
CREATE TABLE `avps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arg` varchar(20) NOT NULL DEFAULT '',
  `value_s` text NOT NULL,
  `value_i` int(11) NOT NULL DEFAULT '0',
  `value_u` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `arg` (`arg`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of avps
-- ----------------------------
INSERT INTO `avps` VALUES ('2', 'lastcleantime', '', '0', '1431087158');
INSERT INTO `avps` VALUES ('1', 'last24', '', '0', '0');
INSERT INTO `avps` VALUES ('3', 'lastcleantime2', '', '0', '1431086233');
INSERT INTO `avps` VALUES ('4', 'lastcleantime3', '', '0', '1431084380');
INSERT INTO `avps` VALUES ('5', 'lastcleantime4', '', '0', '1431027532');
INSERT INTO `avps` VALUES ('6', 'lastcleantime5', '', '0', '1430848379');

-- ----------------------------
-- Table structure for `bakaperday`
-- ----------------------------
DROP TABLE IF EXISTS `bakaperday`;
CREATE TABLE `bakaperday` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `daytime` int(10) unsigned NOT NULL,
  `addbonusday` int(10) unsigned NOT NULL DEFAULT '0',
  `answer` enum('正确','错误') NOT NULL DEFAULT '正确',
  `ways` enum('提交','不会','换题') NOT NULL DEFAULT '不会',
  `bouns` char(20) NOT NULL,
  `usercomment` text NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `daytime` (`daytime`)
) ENGINE=MyISAM AUTO_INCREMENT=530550 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bakaperday
-- ----------------------------

-- ----------------------------
-- Table structure for `bakatest`
-- ----------------------------
DROP TABLE IF EXISTS `bakatest`;
CREATE TABLE `bakatest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(255) NOT NULL,
  `answer2` varchar(255) NOT NULL,
  `answer4` varchar(255) NOT NULL,
  `answer8` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `questiontip` varchar(255) NOT NULL,
  `state` enum('候选','同意','拒绝') NOT NULL DEFAULT '候选',
  `level` int(1) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) NOT NULL,
  `rightusernum` int(10) unsigned NOT NULL DEFAULT '0',
  `wrongusernum` int(10) unsigned NOT NULL DEFAULT '0',
  `anonymous` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`userid`),
  KEY `state_level` (`state`,`level`),
  KEY `state_id` (`state`,`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=440 DEFAULT CHARSET=utf8 COMMENT='新手任务答题';

-- ----------------------------
-- Records of bakatest
-- ----------------------------
INSERT INTO `bakatest` VALUES ('100', '1152', '魔力值低于0将', '无法下载资源', '账号被删除', '账号被警告', '无影响', '0+8', '', '同意', '2', '1326472286', '2213', '2877', 'yes');
INSERT INTO `bakatest` VALUES ('40', '1152', '获得上传量[b]最快[/b]的办法是', '水区灌水', '魔力值兑换', '上传新种子', '下载新种子', '0+2', '', '同意', '2', '1326529252', '3048', '2346', 'yes');
INSERT INTO `bakatest` VALUES ('36', '1152', '发现没有想要的资源,可以:', '在论坛伸手求种板块进行求种', '在求种区发布悬赏进行求种', '在群聊区刷屏求种', '通过其他网站进行下载', '0+1+2+8', '', '同意', '0', '0', '0', '0', 'yes');
INSERT INTO `bakatest` VALUES ('228', '1152', '西南交通大学的校训是', '竢实扬华', '精勤求学,敦笃励志.', '果毅力行,忠恕任事.', '自强不息', '0+2+4', '', '同意', '3', '1331908139', '1375', '1312', 'no');
INSERT INTO `bakatest` VALUES ('60', '1152', '如果你在本站受到了委屈,你可以', '在论坛相关板块提出申诉', '在群聊区通过刷屏表达不满', 'PM当事管理员', '查找管理员寝室号,上门打架', '0+1+4', '', '同意', '2', '1326472435', '3711', '1354', 'yes');
INSERT INTO `bakatest` VALUES ('42', '1152', '下列格式中,选出质量最差的格式', '480P', '720P', '1080P', 'FLV', '0+8', '', '同意', '1', '1328708726', '1445', '646', 'yes');
INSERT INTO `bakatest` VALUES ('43', '1152', '请选出无损音频格式', 'MP3/WMA/OGG/AAC', 'APE', 'FLAC', 'WAV', '0+2+4+8', '', '同意', '0', '1326434380', '0', '0', 'yes');
INSERT INTO `bakatest` VALUES ('77', '1152', '某部国产电影没有字幕怎么办', '没事,自己听的懂', '没事,自己网上找', '没事,跟帖求字幕,并抱怨楼主不负责', '没事,仔细找找,发现种子介绍页面的附件一栏有个叫字幕附件的附件', '0+1+2+8', '', '同意', '0', '0', '0', '0', 'yes');
INSERT INTO `bakatest` VALUES ('69', '1152', '下列哪些做法使人蛋疼', '删除UT目录下的种子文件', '删除UT目录下的数据文件', '将某个种子资源的字幕做成种子并且上传', '', '0+1+2+4', '', '同意', '2', '1326472357', '2671', '2215', 'yes');
INSERT INTO `bakatest` VALUES ('48', '1152', '下列哪种类型的电影禁止发布', '爱情片', '动作爱情片', '动作片', '爱情动作片', '0+8', '', '同意', '0', '1328711111', '0', '0', 'yes');
INSERT INTO `bakatest` VALUES ('49', '1152', '如何搜索除Dota的单机游戏', '点击游戏按钮,勾选单机游戏选项,输入!Dota进行搜索', '点击游戏按钮,勾选单机游戏选项,输入No Dota进行搜索', '点击游戏按钮,勾选单机游戏选项,输入Dota Go Away进行搜索', '点击游戏按钮,勾选单机游戏选项,输入Dota Go To The Hell进行搜索', '0+1', '', '同意', '1', '0', '1312', '686', 'yes');
INSERT INTO `bakatest` VALUES ('50', '1152', '魔力值兑换邀请码后', '邀请码数目会增加', '邀请码数目会减少', '魔力值数目会增加', '魔力值数目会减少', '0+1+8', '', '同意', '1', '1326538868', '1649', '376', 'yes');
INSERT INTO `bakatest` VALUES ('233', '1152', '西南交通大学校名由谁亲笔题写', '毛泽东', '毛泽西', '毛泽南', '毛泽北', '0+1', '', '同意', '3', '1331907758', '3084', '58', 'no');
INSERT INTO `bakatest` VALUES ('234', '23286', '三国杀中刘备的主公技是什么？', '奸雄', '仁德', '激将', '黄天', '0+4', '蜀将何在', '同意', '2', '1371659659', '1222', '1323', 'no');
INSERT INTO `bakatest` VALUES ('52', '1152', '如何更改用户名', '用魔力值进行转生', '威胁管理员', '没有这个功能', '', '0+1', '', '同意', '2', '1328708618', '4039', '1111', 'yes');
INSERT INTO `bakatest` VALUES ('53', '1152', '下列哪种格式不会出现480P,720P.1080P的分辨率', 'FLAC', 'MKV', 'RMVB', 'FLV', '0+1+4+8', '', '同意', '1', '1328708701', '534', '1046', 'yes');
INSERT INTO `bakatest` VALUES ('54', '1152', '2XFree代表的含义是', '上传量双倍计算,下载量免费', '上传量免费,下载量双倍计算', '不清楚,可以吃么?', '', '0+1', '', '同意', '0', '0', '0', '0', 'yes');
INSERT INTO `bakatest` VALUES ('219', '15852', 'CLAMP大妈们的4位骨干成是', '摩可拿', '五十岚寒月', '大川七濑', '猫井椿', '0+1+2+4+8', '', '同意', '3', '1330340048', '2408', '194', 'no');
INSERT INTO `bakatest` VALUES ('257', '23286', '霸王防脱洗发露中代言人是谁？', '阿基米德', '成龙大哥', '史泰龙哥', '希特勒哥', '0+2', '', '同意', '3', '1332745403', '2919', '16', 'no');
INSERT INTO `bakatest` VALUES ('57', '1152', '下面哪个资源贴可以在蚂蚁发布？', '资源内容不违规，蚂蚁目前没有的资源', '涉及情色的电影资源', '自己觉得不合适的资源', '某些有争议的政治敏感性资源', '0+1', '', '同意', '0', '0', '0', '0', 'yes');
INSERT INTO `bakatest` VALUES ('58', '1152', '为什么我的下载速度很慢或者没有速度', '住在校外且没有IPV6或者IPV6没有设置正确', '没有使用正确的客户端', '住在校内16,17号等限速楼层', '网络问题', '0+1+2+4+8', '', '同意', '2', '1326472418', '3246', '1452', 'yes');
INSERT INTO `bakatest` VALUES ('64', '1152', '关于分享率', '分享率低了会被删号', '分享率与升级有关', '分享率是上传量于下载量的比值', '', '0+1+2+4', '', '同意', '0', '0', '0', '0', 'yes');
INSERT INTO `bakatest` VALUES ('75', '1152', '在家能否使用蚂蚁进行下载', '教育网的地域隔离和生殖隔离很可怕', '家里的网络不限速,赶快使用电驴到其他地方拖', '能安装上隧道还是有希望使用蚂蚁', '', '0+1+2+4', '', '同意', '2', '1326472346', '2057', '2621', 'yes');
INSERT INTO `bakatest` VALUES ('66', '1152', '为什么我的UT提示磁盘空间不足', '磁盘已经满了', '文件大于4G,但是磁盘格式是FAT32格式', '', '', '0+1+2', '', '同意', '0', '0', '0', '0', 'yes');
INSERT INTO `bakatest` VALUES ('67', '1152', '为什么鼠标移到群聊区条目上显示\'请不要双击\'?', '卖萌,不解释.', '双击就会@当前用户信息到留言板上', '', '', '0+2', '', '同意', '0', '1326433025', '0', '0', 'yes');
INSERT INTO `bakatest` VALUES ('70', '1152', '用户升级和哪些参数直接相关?', '上传量', '系统延迟', '分享率', '注册时间', '0+1+2+4+8', '', '同意', '1', '1331560901', '463', '1306', 'yes');
INSERT INTO `bakatest` VALUES ('231', '1152', '西南交通大学精神的内涵包括', '爱国至上、振兴中华', '严谨严格、求真务实', '爱校如家、敬业奉献', '开拓创新、艰苦奋斗', '0+1+2+4+8', '', '同意', '3', '1331907752', '1783', '734', 'no');
INSERT INTO `bakatest` VALUES ('72', '1152', '2X50%的含义是', '上传量双倍,下载量减半', '上传量减半,下载量双倍', '上传量双倍,魔力值减半', '魔力值双倍,下载量减半', '0+1', '', '同意', '0', '0', '0', '0', 'yes');
INSERT INTO `bakatest` VALUES ('74', '1152', '群聊区说的\'手册\',指的是什么?', '论坛里的一个新生必读的帖子', '西南交通大学新生入学手册', '凰华学院入学手册', '丧尸生存手册', '0+1', '', '同意', '0', '1328708352', '54', '14', 'yes');
INSERT INTO `bakatest` VALUES ('78', '1152', '蚂蚁PT里面所说的真红是指', '蔷薇少女的第五人偶', 'DogDays中,正在日本上学的英国混血儿初中一年级男生', '五彩斑斓的世界中,赋予悠马特别能力的“半透明的魔法使”', '一个喜爱二次元的有金发双马尾和绝对领域妹妹的动漫爱好者', '0+8', '', '同意', '3', '1381889338', '2234', '784', 'yes');
INSERT INTO `bakatest` VALUES ('79', '1152', '下列哪些地址是纯(原生)IPV6地址', '[b]2002[/b]:751a:7817::751a:7817', '2001:da8:6005:5a2d:553d:5f7d:3013:5d3d', '[b]2001:0[/b]:6005:5a2d:553d:5f7d:3013:5d3d', '2001:da8:200:900e:200:5efe:[b]202.203.204.150[/b]', '0+2', '', '同意', '2', '1327302569', '1521', '2959', 'yes');
INSERT INTO `bakatest` VALUES ('80', '1152', '下列哪些地址是隧道IPV6地址', '[b]2002[/b]:751a:7817::751a:7817', '2001:da8:6005:5a2d:553d:5f7d:3013:5d3d', '[b]2001:0[/b]:6005:5a2d:553d:5f7d:3013:5d3d', '2001:da8:200:900e:200:5efe:[b]202.203.204.150[/b]', '0+8', '', '同意', '2', '1326529190', '2096', '2480', 'yes');
INSERT INTO `bakatest` VALUES ('232', '1152', '西南交通大学的办学方针有', '育人为本', '质量为先', '结构合理', '特色鲜明', '0+1+2+4+8', '', '同意', '3', '1331907755', '2162', '522', 'no');
INSERT INTO `bakatest` VALUES ('83', '1152', '下面那条CMD命令式查看IP配置的', 'nslookup', 'ipconfig', 'sfc', 'ping', '0+2', '', '同意', '1', '0', '1586', '495', 'yes');
INSERT INTO `bakatest` VALUES ('84', '1152', '在像交大这种男多女少的学校里,那种性取向最常见', '男男', '女女', '亲兄妹', '亲姐弟', '0+1', '', '同意', '3', '1326479213', '3046', '255', 'no');
INSERT INTO `bakatest` VALUES ('85', '1152', 'KEY社三部曲', 'CLANNAD', 'AIR', 'Kanon', 'LittleBuster', '0+1+2+4', '', '同意', '3', '1326479418', '1671', '905', 'no');
INSERT INTO `bakatest` VALUES ('88', '1152', '钉宫四萌指的是', '灼眼的夏娜中的夏娜', '零之使魔中的露易丝', '旋风管家中的三千院凪', '龙与虎中的逢坂大河', '0+1+2+4+8', '', '同意', '3', '1326479202', '2563', '288', 'no');
INSERT INTO `bakatest` VALUES ('89', '1152', '下列哪些说法是正确的?', '无论硬盘容量多大,盘符图标永远是红色的', '有时候即使有IPV6,速度也会不及别人的IPV4', '学习的最佳时间在考试的前几周', '交大繁华的商业街是其他很多学校所没有的', '0+1+2+4+8', '', '同意', '3', '1367688993', '1434', '1101', 'no');
INSERT INTO `bakatest` VALUES ('225', '1152', '西南交通大学创建于', '1896年', '1840年', '1856年', '2029年', '0+1', '', '同意', '3', '1331907733', '2948', '308', 'no');
INSERT INTO `bakatest` VALUES ('226', '1152', '西南交通大学校名由谁亲笔题写', '毛泽东', '周恩来', '刘少奇', '朱德', '0+1', '', '同意', '3', '1331907737', '2431', '687', 'no');
INSERT INTO `bakatest` VALUES ('91', '1152', '趣味盒的最小发布间隔是', '16小时', '24小时', '32小时', '64小时', '0+2', '', '同意', '1', '1328709095', '1400', '635', 'yes');
INSERT INTO `bakatest` VALUES ('92', '1152', '下列哪些是浏览器', 'OFFICE2010', 'WINDOWS7', 'Chrome', 'InternetExplorer', '0+4+8', '', '同意', '3', '1326479405', '2875', '361', 'no');
INSERT INTO `bakatest` VALUES ('93', '1152', '魔力值兑换中缔结契约的作用是', '和如丘比的孵化者缔结契约成为魔法少女,打败魔女之夜', '让没有蚂蚁账号的人加入蚂蚁PT', '和如Saber的Servant缔结契约成为Master加入圣杯之战', '和如亚拉斯托尔的红世之神缔结契约成为火雾战士和红世使徒战斗', '0+2', '', '同意', '3', '1326479125', '2244', '618', 'no');
INSERT INTO `bakatest` VALUES ('97', '1152', '魔力兑换界面中,当五彩法杖的颜色HEX为FF0000时,显示的颜色是', '红', '绿', '蓝', '白', '0+1', '', '同意', '2', '1328708576', '2719', '2095', 'yes');
INSERT INTO `bakatest` VALUES ('98', '1152', '魔力兑换界面中,青铜召唤所得到的流量是', '10G上传', '50G上传', '10G下载', '50G下载', '0+1', '', '同意', '2', '1328708148', '3185', '1808', 'yes');
INSERT INTO `bakatest` VALUES ('99', '1152', '蚂蚁用户主要集中在', '常盤台中学', '凰华女子学园', '四川省成都市林湾村男子铁道职业技术学院', '光坂私立高等学校 ', '0+4', '', '同意', '3', '1326960858', '3086', '268', 'no');
INSERT INTO `bakatest` VALUES ('110', '1152', '下面哪种视频质量最高', 'TVRIP的FLV', 'DVDRIP的MKV', 'BDRIP的RMVB', 'BDRIP的MKV', '0+8', '', '同意', '1', '1328708665', '1067', '864', 'yes');
INSERT INTO `bakatest` VALUES ('108', '1152', '上传的资源中,不允许包含有', '后缀名为torrent的种子文件', '后缀名为!ut的未完成文件', '', '', '0+1+2', '', '同意', '0', '0', '0', '0', 'yes');
INSERT INTO `bakatest` VALUES ('109', '1152', '如何彻底杜绝盘红问题', '删除不必要的资源', '购买更大的硬盘', '有节制的下载', '无论怎样,硬盘都会红的', '0+8', '', '同意', '3', '1326479462', '1472', '1803', 'no');
INSERT INTO `bakatest` VALUES ('107', '1152', '如何搜索类别为 科幻 和 动作 的视频资源', '种子界面搜索关键字一栏输入 科幻 动作 , 搜索范围选择电影信息,然后进行搜索', '豆瓣电影搜索框输入 科幻 动作 ,然后进行搜索', '', '', '0+1+2', '', '同意', '0', '0', '0', '0', 'yes');
INSERT INTO `bakatest` VALUES ('227', '1152', '西南交通大学的精神是', '竢实扬华', '精勤求学,敦笃励志.', '果毅力行,忠恕任事.', '自强不息', '0+1+8', '', '同意', '3', '1331907742', '1272', '1508', 'no');
INSERT INTO `bakatest` VALUES ('112', '1152', '可以通过以下哪些形式登陆蚂蚁', '账号+密码', '用户ID+密码', '注册邮箱+密码', '性取向+密码', '0+1+2+4', '', '同意', '1', '1326430595', '1456', '596', 'yes');
INSERT INTO `bakatest` VALUES ('213', '124', '阿凡达是男的还是女的？', '是男', '是女', '是秀吉', '有男有女', '0+8', '阿凡达是什么，可以吃吗？', '同意', '3', '1330086191', '2010', '1113', 'no');
INSERT INTO `bakatest` VALUES ('115', '3438', '发现有涉及到色情等严重违规的种子应该怎么办？', '一声不吭的悄悄收下了，有福利谁不要啊？', '回复大骂UP主无下限。', '到处宣扬，让大家都来下载。', '提醒UP主种子违规了，或者向管理举报。', '0+8', '', '同意', '1', '1326464345', '1971', '228', 'no');
INSERT INTO `bakatest` VALUES ('119', '40', '在蚂蚁上可以使用以下那些下载工具？', '迅雷', 'uTorrent', '电驴', '快车', '0+2', '', '同意', '0', '1406460135', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('126', '2607', '什么人在摩擦了神灯后, 神灯巨人跑了出来？ ', '阿拉甲', '阿拉乙', '阿拉丙', '阿拉丁', '0+8', '', '同意', '3', '1326478946', '3066', '183', 'no');
INSERT INTO `bakatest` VALUES ('133', '13002', '首页上第一行的[G]有什么作用？', '魔力值兑换RMB', '赠送他人魔力值', '乐透 二十一点 博彩 小游戏', '不知道有什么用，但是真红酱什么的真是太棒了', '0+4', '', '同意', '2', '1328708128', '3487', '1463', 'no');
INSERT INTO `bakatest` VALUES ('139', '644', '《Code Geass 反叛的鲁鲁修》里面，鲁鲁修的妹妹娜娜莉喜欢哪本童话', '《白雪公主》', '《爱丽丝梦游仙境》', '《灰姑娘》', '《小红帽》', '0+2', '', '同意', '3', '1326635986', '1881', '984', 'no');
INSERT INTO `bakatest` VALUES ('141', '2607', '请问哪部动画已被TMA毒害？', 'Fate stay night', 'Stein；Gate', '魔法少女小圆', '日常', '0+1+2+4+8', '', '同意', '3', '1326645487', '1125', '890', 'no');
INSERT INTO `bakatest` VALUES ('143', '13411', '下面的那几个属于日本三大同人', '东方', 'key世界', '月姬', '寒蝉', '0+1+4+8', '', '同意', '3', '1326725151', '1762', '865', 'no');
INSERT INTO `bakatest` VALUES ('216', '3438', '网络中流行的单位“潘”中“一潘”与以下那个选项等价？', '1000元/平方米', '1000元', '10000元/平方米', '10000元', '0+1', '', '同意', '3', '1330226673', '1321', '1457', 'no');
INSERT INTO `bakatest` VALUES ('146', '1152', '《遥仰凰华》中,风祭雅的身份是', '凰华学园理事长', '凰华学园代理理事长', '风纪委员兼班长', '女仆长', '0+2', '', '同意', '3', '1326746400', '1592', '1266', 'no');
INSERT INTO `bakatest` VALUES ('147', '1152', '《雪之华》中,草津拓也在车祸中撞毁了谁的小庙?', '华之汤的普娘:伊东若叶', '高尾酒店的御姐:高尾椿', '白摘茶房的萝莉:桂泽穗波', '不明来历的妹妹:草津?雪华', '0+8', '', '同意', '3', '1326794336', '1240', '1367', 'no');
INSERT INTO `bakatest` VALUES ('217', '3438', '“软妹币”是指的哪种货币？', '美元', '日元', '人民币', 'QB', '0+4', '', '同意', '3', '1330226679', '2113', '930', 'no');
INSERT INTO `bakatest` VALUES ('218', '3438', '交大精神““竢实扬华，自强不息”中竢实扬华最早是由谁题写的？', '茅以升', '詹天佑', '孙中山', '范源濂', '0+8', '', '同意', '3', '1330226703', '1683', '1367', 'no');
INSERT INTO `bakatest` VALUES ('152', '2607', '请问下列哪些人当过Archer的Master？', 'Rin他爹', 'Sakura她姐姐', '麻婆教父', 'Rin班主任的Servant', '0+1+2+4+8', '', '同意', '3', '1333081852', '1140', '727', 'no');
INSERT INTO `bakatest` VALUES ('153', '17961', '在蚂蚁看到了心仪已久却求之不得的资源', '叛逆的不下', '快速的连击 下载种子--打开种子--存储--over', '不敢相信这一切是真的', '下载并感谢楼主，在那之后，做一个有种的人！！', '0+8', '', '同意', '2', '1326808753', '4691', '690', 'no');
INSERT INTO `bakatest` VALUES ('154', '3438', '请问：钉宫病患者多会出现哪些幻听症状？', '无路赛，无路赛，无路赛', '笨狗！', '变态啊——', '古尤唔唔唔唔唔', '0+1+2+4+8', '', '同意', '3', '1326853381', '1405', '1018', 'no');
INSERT INTO `bakatest` VALUES ('155', '20456', '六脉神剑是哪六剑？', '少商剑 商阳剑 中冲剑 关冲剑 少冲剑 少泽剑', '少商剑 商阳剑 中冲剑 关冲剑 少冲剑 太冲剑', '少商剑 中商剑 中冲剑 关冲剑 少冲剑 太冲剑', '少商剑 中商剑 太商剑 中冲剑  少冲剑 太冲剑', '0+1', '', '同意', '3', '1326868668', '1626', '1123', 'no');
INSERT INTO `bakatest` VALUES ('229', '1152', '西南交通大学曾经用过以下哪些名称', '林湾村男子铁道职业技术学院', '山海关北洋铁路官学堂', '唐山交通大学', '唐山铁道学院', '0+2+4+8', '', '同意', '3', '1331907748', '1538', '1197', 'no');
INSERT INTO `bakatest` VALUES ('246', '14491', '蚂蚁PT中PT是指？', '[b]Platinum[/b] 铂-78号元素', '[b]Point[/b] 磅-印刷单位', '[b]Private Tracker[/b] 私用种子服务器', '[b]Public Toilet[/b] 公共厕所', '0+4', '', '同意', '3', '1332311396', '2873', '26', 'no');
INSERT INTO `bakatest` VALUES ('157', '1152', '《G线上的魔王》中,宇佐美的特长是', '小提琴', '钢琴', '花样滑冰', '唱歌', '0+1', '', '同意', '3', '1326956239', '1685', '1181', 'no');
INSERT INTO `bakatest` VALUES ('158', '1152', '《eden*》中,诗音(Sion)的年龄是', '1岁左右', '10岁左右', '100岁左右', '1000岁左右', '0+4', '', '同意', '3', '1327141166', '1475', '1337', 'no');
INSERT INTO `bakatest` VALUES ('159', '17961', '古人云，读书有三上，\"马上，枕上，厕上＂，这位古人是谁', '欧阳修', '杜甫', '韩愈', '李白', '0+1', '', '同意', '3', '1327162046', '1912', '1284', 'no');
INSERT INTO `bakatest` VALUES ('160', '17961', '哆啦A梦的尾巴是什么颜色', '蓝色', '白色', '红色', '它没有尾巴(￣◇￣;)', '0+4', '', '同意', '3', '1327162058', '868', '2219', 'no');
INSERT INTO `bakatest` VALUES ('178', '3438', ' 请从以下选项中选出最准确的圆周率数值？', '3.1415926535 8979323846 2643383279 5028841971 693993751', '3.1415926535 8979323846 3643783279 5025841671 631193751', '3.1415826535 7969321846 2643628279 1128841971 793993751', '3.1415926535 8988323846 1243383279 5028841971 193993751', '0+1', '和做初中选择题方法一样', '同意', '3', '1328808165', '1811', '1005', 'no');
INSERT INTO `bakatest` VALUES ('168', '23286', '下列哪本杂志关于电脑硬件比较多？', '电脑爱好者', '微型计算机', '大众软件', '电脑报', '0+2', '', '同意', '3', '1327995981', '1490', '1496', 'no');
INSERT INTO `bakatest` VALUES ('169', '3438', '超时空要塞F，空之轨迹FC和灼眼的夏娜F的F分别代表了什么意思？', 'Final，Frontier，First', 'Frontier，First，Final', 'First，Frontier，Final', 'Frontier，Final，Final', '0+2', '', '同意', '3', '1328073786', '1364', '1216', 'no');
INSERT INTO `bakatest` VALUES ('395', '3438', '下面哪一个软件“不能”用来下载PT资源？', 'uTorrent', '迅雷', 'Azureus', 'Transmission', '0+2', '', '同意', '3', '1369499304', '966', '387', 'no');
INSERT INTO `bakatest` VALUES ('171', '3438', '乌贼娘的口头禅是？', 'ゲソ（的说）', 'うるさい！うるさい！うるさい！（无路赛，无路赛，无路赛！）', 'か...かお（嘎...嘎哦）', 'この(ばか)いぬ! （你这只（笨）狗！）', '0+1', '', '同意', '3', '1328073809', '1166', '1632', 'no');
INSERT INTO `bakatest` VALUES ('175', '1152', '以下哪些语句组成了游戏《朝色》的完整标题', '从晴朗的朝色泛起之际开始', '定能和确实身在此处的你', '随着不断的相遇相知', '紧紧将彼此的手相牵', '0+1+2+4+8', '', '同意', '3', '1328155581', '1500', '509', 'no');
INSERT INTO `bakatest` VALUES ('176', '23286', '老湿作品“国产大片伤不起，烂片三连发” 中烂片是哪三部？', '无极', '满城尽带黄金甲', '赤壁', '夜宴', '0+1+2+8', '', '同意', '3', '1328274823', '2266', '765', 'no');
INSERT INTO `bakatest` VALUES ('179', '3438', '蓝光影碟的区码划分与普通DVD一样吗？', '一样', '不一样', '管他一样不一样，我无所谓了', '无路赛无路赛无路赛', '0+2', '', '同意', '3', '1328808218', '2341', '784', 'no');
INSERT INTO `bakatest` VALUES ('407', '32533', '为动画作品《水果篮子》片头曲作词作曲并演唱的日本歌手是', '菅野洋子', '新居昭乃', '梶浦由记', '冈崎律子', '0+8', '', '同意', '3', '1380384387', '489', '374', 'no');
INSERT INTO `bakatest` VALUES ('183', '18567', '韦小宝有几个老婆?', '5', '6', '7', '8', '0+4', '', '同意', '3', '1329033429', '2607', '596', 'no');
INSERT INTO `bakatest` VALUES ('185', '3438', '于1998年上映的动画片埃及王子的主题曲《when you believe》是由哪两位天后演唱的？', '麦当娜', '惠特尼·休斯敦', '席林·迪翁', '玛利亚·凯莉', '0+2+8', '', '同意', '3', '1329038272', '1393', '948', 'no');
INSERT INTO `bakatest` VALUES ('186', '17486', '美剧老爸老妈的浪漫史里，布兰妮客串的是神马角色？', '被巴尼用糖果戒指假意求婚后激动得天上地下的一位前台小姐', '巴尼提出先逛街后“上船”后，很认真地提出先“上船”后逛街的一位小白痴小姐', '害巴尼在钓美眉时莫名其妙被扇巴掌的一位有仇必报的小姐', '狂热喜欢泰德的头发的一位搞笑小姐', '0+1+2+4+8', '', '同意', '3', '1329113220', '1082', '678', 'no');
INSERT INTO `bakatest` VALUES ('187', '20104', '古希腊人、罗马人常用___购买奴隶', '刀币', '铜钱', '盐', '人民币', '0+4', '', '同意', '3', '1329317659', '2523', '690', 'no');
INSERT INTO `bakatest` VALUES ('188', '17486', '美剧老爸老妈的浪漫史里，水果姐姐Katy-Perry客串的是神马角色？', '说话总让人忍不住感叹“OH HONEY”的美女', '深信房东是为了她的人身安全而在她的浴室里安装摄像头，因此觉得自己住的公寓十分安全的美女', '深信找她要社会保险号码的人是尼日利亚王子，虽然知道不该把号码随便给人的美女', '深信她即将被选去参与美剧迷失（早已完结）的拍摄，拍摄地点在肯德基后面的一间小屋的美女', '0+1+2+4+8', '剧集S06E15', '同意', '3', '1329363608', '1152', '583', 'no');
INSERT INTO `bakatest` VALUES ('196', '11396', '中国古都朝代数由多到少排序', '北京 西安 南京 洛阳', '洛阳 北京 南京 西安 ', '西安 洛阳 北京 南京 ', '西安 北京 洛阳 南京 ', '0+4', '', '同意', '3', '1329551103', '1709', '1160', 'yes');
INSERT INTO `bakatest` VALUES ('201', '3438', '请问中国第一部有声电影是以下哪一部？', '白金龙', '定军山', '歌女红牡丹', '难夫难妻', '0+4', '', '同意', '3', '1329671570', '1603', '1404', 'no');
INSERT INTO `bakatest` VALUES ('202', '3438', '以下哪些网站有提供游戏的评分？', 'IGN', '豆瓣', 'Gamespot', 'IMDB', '0+1+4', '', '同意', '3', '1332415963', '702', '1098', 'no');
INSERT INTO `bakatest` VALUES ('203', '11396', 'AIR的主题', '爱情', '亲情 ', '激情', '基情', '0+2', 'Visual Art‘s/Key', '同意', '3', '1334333231', '934', '2078', 'yes');
INSERT INTO `bakatest` VALUES ('256', '15852', '在群聊区艾特翼夜痕月的方法是', '在对话框手动输入@翼夜痕月', '在对话框手动输入[@翼夜痕月]', '在对话框手动输入[@15852]', '在群聊区找到翼夜痕月说的话 在其上双击', '0+4+8', '不妨自己尝试一下,15852是某人的uid号码', '同意', '2', '1401852286', '493', '1560', 'no');
INSERT INTO `bakatest` VALUES ('237', '23286', 'DOTA中幻影刺客(PA)的6级大招叫什么？', '梦境缠绕', '时空结界', '恩赐解脱', '魂之挽歌', '0+4', '', '同意', '3', '1331036648', '1787', '979', 'no');
INSERT INTO `bakatest` VALUES ('239', '424', 'Dota视频解说中有一句话叫 “飘神救我！” 出自哪位解说', '2009', 'pis', '小满', '满楼水平', '0+8', '', '同意', '3', '1331611552', '1390', '1322', 'no');
INSERT INTO `bakatest` VALUES ('240', '1152', '西南交通大学的办学传统', '严谨治学', '严格要求', '严惩不贷', '严阵以待', '0+1+2', '', '同意', '3', '1331908016', '1289', '1262', 'no');
INSERT INTO `bakatest` VALUES ('254', '4226', '《火影忍者》中的传说中的“三忍”是指', '纲手', '大蛇丸', '自来也', '佩恩六道', '0+1+2+4', '这个so easy啊', '同意', '3', '1332724073', '2227', '459', 'no');
INSERT INTO `bakatest` VALUES ('243', '60', '下面哪些游戏有DOS/WIN双平台版本？', '仙剑奇侠传I', '英雄传说I', '英雄传说III', '伊苏I', '0+1+2+4+8', '', '同意', '3', '1331913916', '1178', '705', 'no');
INSERT INTO `bakatest` VALUES ('255', '10732', '梅西用手进过进吗？', '进过', '西西这么老实怎么会用手进球？', '', '', '0+1', '', '同意', '3', '1332724087', '2227', '604', 'no');
INSERT INTO `bakatest` VALUES ('245', '60', '下面哪些游戏有DOS/WIN双平台版本？', '撼天神塔Ⅳ', '太阁立志传Ⅱ', '金庸群侠传', '信长之野望Ⅵ', '0+1+2+4+8', '', '同意', '3', '1331913964', '1353', '484', 'no');
INSERT INTO `bakatest` VALUES ('249', '12091', '那个 朝代 出现过 两个皇帝 合葬一个陵墓', '汉朝', '晋朝', '唐朝', '明朝', '0+4', '', '同意', '3', '1332311517', '1592', '1157', 'no');
INSERT INTO `bakatest` VALUES ('252', '4031', '暴雪第一个加入战网(battle.net)的游戏是？', '魔兽争霸2', '星际争霸2', '暗黑破坏神1', '魔兽争霸3', '0+4', '', '同意', '3', '1365057191', '1005', '1743', 'no');
INSERT INTO `bakatest` VALUES ('258', '15852', '做种,出种,辅种的意思分别是', '制作并发布种子;种子得到两个或以上完成数;已有完整文件而下载别人发布的种子', '已有完整文件而下载别人发布的种子;制作并发布种子;种子得到两个或以上完成数', '已有完整文件而下载别人发布的种子;种子得到两个或以上完成数;制作并发布种子', '制作并发布种子;已有完整文件而下载别人发布的种子;种子得到两个或以上完成数', '0+1', '', '同意', '2', '1332742096', '2163', '2000', 'no');
INSERT INTO `bakatest` VALUES ('259', '3438', 'NICONICO御三家是哪三家？', '葛炮，元首，金坷垃', '真月谭月姬，寒蝉鸣泣之时，东方Projet', '东方Project，Vocaloid家族，偶像大师', '德川义直，德川赖宣，德川赖房', '0+4', '有问题，找百度', '同意', '3', '1332892821', '1087', '1324', 'no');
INSERT INTO `bakatest` VALUES ('261', '60', '仙剑奇侠传1中，能在李大娘的客栈里得到以下哪些物品？', '2T硬盘', '梅花镖', '十里香', '大蒜', '0+2+4+8', '非新仙剑。', '同意', '3', '1334463224', '1537', '775', 'no');
INSERT INTO `bakatest` VALUES ('262', '60', '三国曹操传中，任何一关都可以使用的武将包括以下哪些？', '乔布斯', '李典', '夏侯惇', '星星', '0+2+4', '注意合肥之战', '同意', '3', '1333596889', '1635', '646', 'no');
INSERT INTO `bakatest` VALUES ('263', '60', '《英雄传说III：白发魔女》  中 白发魔女的名字是？', '耶鲁杜', '玛吉莎', '都不是', '没有提及她的名字', '0+1', '', '同意', '3', '1333596533', '632', '1788', 'no');
INSERT INTO `bakatest` VALUES ('264', '60', 'RPG游戏《守护者之剑》系列的女主角是以下哪两位？', '星星', '真红', '雪丽', '小珍', '0+4+8', '其中一位成为了外传的第一主角，另一位则颠覆了世界的存在。', '同意', '3', '1333596843', '1055', '694', 'no');
INSERT INTO `bakatest` VALUES ('265', '60', '仙剑奇侠传1中，以下哪些为李逍遥所使用的招式', '酒神', '赌神', '剑神', '山神', '0+1+4+8', '', '同意', '3', '1333596812', '433', '1137', 'no');
INSERT INTO `bakatest` VALUES ('267', '4226', '迄今为止NBA比赛中单场个人得分纪录是由谁保持的？', '科比', '乔丹', '张伯伦', '詹姆斯', '0+4', '伟大的名字，都应被铭记！', '同意', '3', '1333596610', '2151', '620', 'no');
INSERT INTO `bakatest` VALUES ('272', '13262', '中国第一部长篇章回体小说叫什么', '三国演义', '西游记', '水浒传', '红楼梦', '0+1', '', '同意', '3', '1337002425', '1703', '1064', 'no');
INSERT INTO `bakatest` VALUES ('270', '14044', '以下哪些属于经典老牌美剧犯罪现场调查（Crime Scene Investigation）？', 'New York 纽约篇', 'Miami  迈阿密篇', 'China 祖国篇', 'Las Vagas 拉斯维加斯篇', '0+1+2+8', '百度就好了...', '同意', '3', '1333596642', '1527', '604', 'no');
INSERT INTO `bakatest` VALUES ('273', '60', '战棋游戏《魔唤精灵》系列中，同属性精灵相互攻击会出现哪种效果。', '攻击力减少', '攻击力增加', '攻击力不变', '攻击无效', '0+1', '这个真的百度得到，我刚都试了下...', '同意', '3', '1333717299', '828', '1454', 'no');
INSERT INTO `bakatest` VALUES ('274', '60', '《文明》系列存在哪几种获得胜利方式？', '发射阿波罗', '征服全世界', '操作联合国', '称霸文化圈', '0+1+2+4+8', '', '同意', '3', '1333717289', '1386', '640', 'no');
INSERT INTO `bakatest` VALUES ('275', '1152', '西南交通大学网络中心的故障申报电话是多少?', '87600223', '66366560', '66366561', '87600978', '0+1+2+4+8', 'http://inc.swjtu.edu.cn/', '同意', '2', '1333864425', '1666', '1702', 'yes');
INSERT INTO `bakatest` VALUES ('276', '1152', '但丁的《神曲》分为哪三部分', '地狱', '炼狱', '天堂', '月狂', '0+1+2+4', '', '同意', '3', '1334379466', '2040', '582', 'no');
INSERT INTO `bakatest` VALUES ('277', '8334', '阿尔弗雷德·伯纳德·诺贝尔是', '英国人', '瑞典人', '美国人', '德国人', '0+2', '', '同意', '3', '1334979517', '2052', '532', 'no');
INSERT INTO `bakatest` VALUES ('278', '1152', '如果想要打电话给网络中心 你可以:', '在工作日打九里电话:87600223', '在工作日打犀浦电话:66366560', '在双休日打九里电话:87600798', '在双休日打犀浦电话:66366561', '0+1+2+4+8', '', '同意', '3', '1334979687', '722', '1125', 'no');
INSERT INTO `bakatest` VALUES ('279', '8334', '下列半岛哪个以出产石油著称？', '朝鲜半岛', '阿拉伯半岛', '亚平宁半岛', '巴尔干半岛', '0+2', '', '同意', '3', '1335162119', '2375', '210', 'no');
INSERT INTO `bakatest` VALUES ('280', '8334', '代表封建生产关系的是什么？', '凶器', '利器', '铁器', '人间兵器', '0+4', '', '同意', '3', '1335257081', '2280', '347', 'no');
INSERT INTO `bakatest` VALUES ('288', '15852', '三国杀神周瑜发动大业炎的条件是', '弃掉一张手牌 掉一点体力', '弃掉两张不同花色手牌 掉两点体力', '弃掉三张相同花色手牌 掉三点体力', '弃掉四张不同花色手牌 掉三点体力', '0+8', '【大】业炎嘛 你懂的', '同意', '3', '1335181895', '1213', '1013', 'no');
INSERT INTO `bakatest` VALUES ('282', '8334', '对俄国彼得一世改革的结果，叙述不正确的是：', '加强了军事力量', '促进了经济发展', '废除了真红统治制度', '巩固了沙皇统治', '0+4', '', '同意', '3', '1335162214', '1999', '553', 'no');
INSERT INTO `bakatest` VALUES ('283', '8334', '《官场现形记》的作者是：', '吴沃尧', '李宝嘉', '曾朴', '刘鹗', '0+2', '', '同意', '3', '1335162224', '1089', '1377', 'no');
INSERT INTO `bakatest` VALUES ('284', '8334', '网络中，数据传输速率的大小不直接影响：', '发送速度', '接收速度', '360显示的系统启动速度', 'UT下载速度', '0+4', '', '同意', '3', '1335162433', '1875', '578', 'no');
INSERT INTO `bakatest` VALUES ('285', '8334', '以下哪一项不是商鞅变法的内容？', '废井田', '奖励耕战', '减轻刑罚', '建立县制', '0+4', '', '同意', '3', '1335162281', '1440', '1154', 'no');
INSERT INTO `bakatest` VALUES ('286', '8334', '黄河壶口瀑布位于陕西省与哪个省之间？', '宁夏', '河南', '内蒙古', '山西', '0+8', '', '同意', '3', '1335162302', '1430', '1095', 'no');
INSERT INTO `bakatest` VALUES ('287', '8334', '超音速飞机“协和”是法国和哪个国家合作生产的？', '美国', '德国', '日本', '英国', '0+8', '', '同意', '3', '1335162305', '1201', '1293', 'no');
INSERT INTO `bakatest` VALUES ('289', '8334', '《文心雕龙》成书于哪个朝代？', '北齐', '隋朝', '晋朝', '南齐', '0+8', '', '同意', '3', '1335257134', '1068', '1349', 'no');
INSERT INTO `bakatest` VALUES ('290', '8334', '十二星座中哪一个星座的图腾是羊头鱼身？', '牧羊座', '双鱼座', '摩羯座', '处女座', '0+4', '', '同意', '3', '1335257129', '1533', '985', 'no');
INSERT INTO `bakatest` VALUES ('291', '8334', '农历新年年初一称为什么？', '人日', '狗日', '猪日', '鸡日', '0+8', '', '同意', '3', '1335519244', '1085', '1405', 'no');
INSERT INTO `bakatest` VALUES ('292', '8334', '黄瓜的食用部分是？', '果', '根', '茎', '叶', '0+1', '', '同意', '3', '1335519250', '1527', '993', 'no');
INSERT INTO `bakatest` VALUES ('293', '8334', '国际象棋起源于哪国？', '英国', '美国', '印度', '法国', '0+4', '', '同意', '3', '1335519254', '1403', '1080', 'no');
INSERT INTO `bakatest` VALUES ('295', '3438', '预言家金庸率先提出的“东鞋西毒南地北钙”指的是？', '烂皮鞋', '毒胶囊', '地沟油', '三鹿奶', '0+1+2+4+8', '', '同意', '3', '1335628120', '2250', '257', 'no');
INSERT INTO `bakatest` VALUES ('296', '3438', '新版100元人民币背面是哪个地方的风景？', '桂林山水', '泰山', '人民大会堂', '布达拉宫', '0+4', '', '同意', '3', '1335697677', '2128', '500', 'no');
INSERT INTO `bakatest` VALUES ('297', '15852', '2011-2012欧洲冠军联赛半决赛第2合 皇马vs拜仁 皇马在点球大战中射失点球的是哪三位球员', 'C罗 卡西利亚斯 佩佩', 'C罗 卡列洪 拉莫斯', 'C罗 卡卡 厄齐尔', 'C罗 卡卡 拉莫斯', '0+8', 'C罗关键时刻总是挺坑的...', '同意', '3', '1335719717', '1072', '1010', 'no');
INSERT INTO `bakatest` VALUES ('298', '8334', '人类用无机物合成的第一种有机物是？', '纤维素', '叶绿素', '青霉素', '碳酰二胺', '0+8', '', '同意', '3', '1335719655', '1473', '941', 'no');
INSERT INTO `bakatest` VALUES ('299', '8334', '蚊子在晚上如何找到目标？', '嗅觉', '听觉', '温度', '视觉', '0+4', '', '同意', '3', '1335719432', '1771', '759', 'no');
INSERT INTO `bakatest` VALUES ('300', '15852', 'Linux ;Unix ;Windows ;Mac os 哪个是完全开源的系统', 'Linux', 'Unix', 'Windows', 'Mac os', '0+1', '', '同意', '3', '1335719414', '1605', '827', 'no');
INSERT INTO `bakatest` VALUES ('301', '8334', '以下不位于河北境内的古代窑址是？', '龙泉窑', '邢窑', '定窑', '磁州窑', '0+1', '', '同意', '3', '1335719391', '1361', '1010', 'no');
INSERT INTO `bakatest` VALUES ('302', '8334', '春秋战国时期的四大死士不包括哪一个？', '欲让', '要离', '荆轲', '盗拓', '0+8', '', '同意', '3', '1335719386', '1149', '1221', 'no');
INSERT INTO `bakatest` VALUES ('307', '15852', '下列选项中哪一个不是王家卫的作品', '重庆森林', '花样年华', '霸王别姬', '东邪西毒', '0+4', '', '同意', '3', '1335795524', '1172', '1311', 'no');
INSERT INTO `bakatest` VALUES ('308', '15852', '佛经中的天龙八部是指以下哪个选项', '天、龙、夜叉、乾闼婆、阿修罗、迦楼罗、紧那罗、摩侯罗伽', '天、龙、夜叉、湿婆、阿修罗、迦楼罗、陀罗、摩侯罗伽', '天、龙、夜叉、乾闼婆、阿奎罗、迦楼罗、紧那罗、摩侯罗伽', '天、龙、夜叉、湿婆、阿修罗、暹罗、陀罗、摩侯罗伽', '0+1', '善用搜索引擎', '同意', '3', '1335795347', '1330', '874', 'no');
INSERT INTO `bakatest` VALUES ('305', '15852', '王菲的《蝴蝶》是哪一首歌的国语版本', '富士山下', '邮差', '百年孤寂', '红豆', '0+2', '善用搜索引擎', '同意', '3', '1335795455', '911', '1480', 'no');
INSERT INTO `bakatest` VALUES ('309', '15852', '慈世平的正确名字拼写是以下哪项', 'Ci Shi Ping', 'Metta Word Peace', 'Metta World Peace', 'Metta Globe Peace', '0+4', '', '同意', '3', '1335795418', '1295', '1161', 'no');
INSERT INTO `bakatest` VALUES ('310', '15852', '星座上将十二个星座分为四类 依土风水火的次序分别是', '摩羯 金牛 处女；天秤 双子 水瓶；天蝎 双鱼 巨蟹；狮子 白羊 射手', '摩羯 金牛 处女；天秤 巨蟹 水瓶；天蝎 双子 双鱼；狮子 白羊 射手', '天秤 双子 水瓶；天蝎 双鱼 巨蟹；狮子 白羊 射手；摩羯 金牛 处女', '天秤 双子 水瓶；狮子 白羊 射手；天蝎 双鱼 巨蟹；摩羯 金牛 处女', '0+1', '', '同意', '3', '1364602975', '1060', '966', 'no');
INSERT INTO `bakatest` VALUES ('312', '15852', '以下哪只足球队未获得过世界杯冠军', '巴西', '乌拉圭', '英格兰', '荷兰', '0+8', '', '同意', '3', '1335795511', '1291', '1220', 'no');
INSERT INTO `bakatest` VALUES ('365', '15852', '2012伦敦夏季奥运会的金牌含金量为', '6g', '16g', '26g', '99g', '0+1', '', '同意', '3', '1345396655', '753', '1003', 'no');
INSERT INTO `bakatest` VALUES ('314', '15852', '以下哪所院校不属于常青藤联盟八校之中', '哈佛大学', '西南交通大学', '耶鲁大学', '哥伦比亚大学', '0+2', '', '同意', '3', '1335795497', '2366', '125', 'no');
INSERT INTO `bakatest` VALUES ('315', '13525', '姜文导演的第一部电影是什么？', '让子弹飞', '太阳照常升起', '鬼子来了', '阳光灿烂的日子', '0+8', '', '同意', '3', '1335888481', '1369', '1108', 'no');
INSERT INTO `bakatest` VALUES ('317', '14032', '下面哪个属于三言两拍', '喻世明言', '警世通言', '醒世恒言', '三刻拍案惊奇', '0+1+2+4', '', '同意', '3', '1335888595', '1388', '865', 'no');
INSERT INTO `bakatest` VALUES ('320', '8334', '世界第一大海', '珊瑚海', '里海', '黑海', '地中海', '0+1', '', '同意', '3', '1335952165', '877', '1579', 'no');
INSERT INTO `bakatest` VALUES ('321', '8334', '世界地球日是在：', '3月12日', '3月21日', '4月22日', '3月23日', '0+4', '', '同意', '3', '1335952103', '1609', '787', 'no');
INSERT INTO `bakatest` VALUES ('322', '8334', '哥伦比亚号航天飞机上有几名宇航员？', '4', '5', '6', '7', '0+8', '', '同意', '3', '1335952191', '1598', '878', 'no');
INSERT INTO `bakatest` VALUES ('323', '8334', '不属于冬虫夏草自然生长地区的一项是：', '青藏高原', '云贵高原', '东北地区', '马勒戈壁', '0+8', '', '同意', '3', '1335952003', '2022', '500', 'no');
INSERT INTO `bakatest` VALUES ('324', '8334', '十天干的最后一个是什么？', '癸', '戊', '巳', '庚', '0+1', '子丑寅卯辰巳午未申酉戌亥', '同意', '3', '1335952356', '1798', '583', 'no');
INSERT INTO `bakatest` VALUES ('325', '8334', 'SARS病毒是什么形状？', '人型', '冠状', '环形', '星型', '0+2', '', '同意', '3', '1335952055', '2024', '383', 'no');
INSERT INTO `bakatest` VALUES ('326', '8334', '经常食用以下哪种事物容易引起铅中毒？', '松花蛋', '煮鸡蛋', '鹌鹑蛋', '咸鸭蛋', '0+1', '', '同意', '3', '1336061671', '1987', '494', 'no');
INSERT INTO `bakatest` VALUES ('327', '8334', '举世闻名的《孙子兵法》诞生时，不可能书写在：', '龟甲兽骨上', '竹木简上', '绢帛上', 'IPAD上', '0+8', '', '同意', '3', '1336061701', '2269', '184', 'no');
INSERT INTO `bakatest` VALUES ('328', '8334', '攻击珍珠港的日本航母有几艘：', '3', '4', '5', '6', '0+8', '', '同意', '3', '1336061717', '1041', '1307', 'no');
INSERT INTO `bakatest` VALUES ('329', '8334', '世界上最早采用“十进位值制计数法”的是哪一个国家？', '中国', '印度', '埃及', '希腊', '0+1', '壮哉我中华民族~~~~', '同意', '3', '1336061856', '1570', '1002', 'no');
INSERT INTO `bakatest` VALUES ('330', '18573', '《红楼梦》中，大观园里的“凹晶馆”的“凹晶”二字是谁拟的？', '贾宝玉', '林黛玉', '薛宝钗', '贾元春', '0+2', '见《红楼梦》七十六回', '同意', '3', '1336608167', '1014', '1264', 'no');
INSERT INTO `bakatest` VALUES ('331', '20164', '“让我们面对现实,让我们忠于理想”，出自哪位历史人物之口？', '文天祥', '切.格瓦拉', '康有为', '希特勒', '0+2', '你猜', '同意', '3', '1336671355', '1660', '703', 'no');
INSERT INTO `bakatest` VALUES ('332', '18573', '白居易的《长恨歌》中，第61句和第62是？', '千饮妹汁人不醉，百食萝莉腹仍空。', '春风桃李花开日，秋雨梧桐叶落时。', '求包养，会暖床， 身材娇小贫乳娘！', '看蓝猫，学蓝猫，我有姿势我自豪！', '0+2', '见《唐诗三百首》', '同意', '3', '1336733503', '2218', '183', 'no');
INSERT INTO `bakatest` VALUES ('336', '20164', '中国的传统刺绣工艺品当中，合称为中国\"四大名绣\"是：', '中国中部湖南省的\"湘绣\"', '中国南部广东省的\"粤绣\"', '中国东部江苏省的\"苏绣\"', '中国西部四川省的\"蜀绣\"', '0+1+2+4+8', '嘿嘿', '同意', '3', '1337002433', '2232', '133', 'no');
INSERT INTO `bakatest` VALUES ('338', '11208', '西南交通大学组织机构中业务部门没有以下哪个？', '图书馆', '殡仪馆', '博物馆', '美术馆', '0+2+4+8', '', '同意', '3', '1338544846', '898', '1377', 'no');
INSERT INTO `bakatest` VALUES ('341', '21430', '以下哪个字比划最不多？', '齉', '龘', '龖', '一', '0+8', '', '同意', '3', '1339226937', '2023', '277', 'no');
INSERT INTO `bakatest` VALUES ('342', '21305', '中华人民共和国的第二任主席是谁？', '刘少奇', '华国锋', '毛泽东', '朱德', '0+1', '', '同意', '3', '1419493108', '1044', '1302', 'no');
INSERT INTO `bakatest` VALUES ('343', '21305', '邓小平在政府中的最高职务是？', '国家主席和总书记', '国家军委主席', '国务院副总理', '外交部长', '0+2', '', '同意', '3', '1339504192', '1299', '953', 'no');
INSERT INTO `bakatest` VALUES ('344', '26147', '《一百个人的十年》作者是谁？', '冯骥才', '老舍', '邱春荣', '王长喜', '0+1', '', '同意', '3', '1339842008', '1407', '724', 'no');
INSERT INTO `bakatest` VALUES ('345', '26147', '中国现代文学史上第一篇白话小说是？', '《野草》', '《呐喊》', '《狂人日记》', '《祝福》', '0+4', '', '同意', '3', '1340640554', '1902', '248', 'no');
INSERT INTO `bakatest` VALUES ('346', '20559', '齿形系数跟什么有关？', '齿数', '模数', '螺旋角', '压力角', '0+1', '', '同意', '3', '1341158763', '889', '1057', 'no');
INSERT INTO `bakatest` VALUES ('347', '19033', '中国网络语言中的“妖都”指的是？', '北京', '上海', '广州', '铁岭', '0+4', '', '同意', '3', '1341158794', '1257', '880', 'no');
INSERT INTO `bakatest` VALUES ('349', '22923', '雷锋原名叫什么', '雷正刚', '雷正国', '雷正兴', '雷正强', '0+4', '', '同意', '3', '1341158775', '1078', '978', 'no');
INSERT INTO `bakatest` VALUES ('352', '40', '西南交大校训是', '竢实扬华，自强不息', '精勤求学，敦笃励志，果毅力行，忠恕任事', '天行健,君子以自强不息;地势坤,君子以厚德载物', '百年交大，毁于Dota', '0+2', '', '同意', '3', '1341934455', '1448', '594', 'no');
INSERT INTO `bakatest` VALUES ('353', '40', '我校现任校长是？', '茅以升', '詹天佑', '徐飞', '陈春阳', '0+4', '好像还有很多人不知道校长叫啥-_-|||（2013年秋季后）', '同意', '3', '1380084682', '1964', '130', 'no');
INSERT INTO `bakatest` VALUES ('354', '16795', '《海贼王》里，谁要成为海贼王的男人？', '路飞', '娜美', '罗宾', '白星公主', '0+1', '', '同意', '3', '1343886587', '1806', '271', 'no');
INSERT INTO `bakatest` VALUES ('355', '25142', '漫画《中华一番》中，下列哪位不是黑暗料理界五虎星之一？', '豹子头 亚刊', '琼矢镞 李可', '浪子    颜先', '镜子    密拉', '0+2', '', '同意', '3', '1343145879', '659', '1040', 'no');
INSERT INTO `bakatest` VALUES ('362', '1152', 'H&R不达标数目多少以上时无法升级?', '5', '10', '15', '20', '0+2', '', '同意', '0', '1344346784', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('363', '14200', '漫画《夏目友人帐》中的猫先生实际叫什么名字？', '斑', '鼬', '晓', '镜', '0+1', '', '同意', '3', '1345062495', '717', '988', 'no');
INSERT INTO `bakatest` VALUES ('369', '17700', 'Vi编辑器中用来调换两个字符位置的命令是：', 'de', 'pp', 'rc', 'xp', '0+8', '', '同意', '3', '1346409265', '587', '987', 'no');
INSERT INTO `bakatest` VALUES ('370', '1152', 'H&R是什么的缩写?', 'Hit and Run', 'H and Ero', 'H and Ntr', 'Hi And Right', '0+1', '', '同意', '3', '1346409457', '1604', '314', 'no');
INSERT INTO `bakatest` VALUES ('372', '22527', '女生节是哪一天？', 'A.3月8号', 'B.3月7号', 'C.6月1号', 'D.不知道', '0+2', '', '同意', '3', '1363748357', '1683', '108', 'no');
INSERT INTO `bakatest` VALUES ('375', '30326', '古天文学术语中的“七政”不包括以下哪一个', '金星', '太阳', '木星', '地球', '0+8', '', '同意', '3', '1363748423', '983', '680', 'no');
INSERT INTO `bakatest` VALUES ('376', '30326', '恒星在经历红巨星阶段后塌缩的过程中，决定产物是白矮星还是中子星的临界质量是太阳的几倍？？', '0.23', '90', '1024', '1.44', '0+8', '', '同意', '3', '1363748507', '655', '838', 'no');
INSERT INTO `bakatest` VALUES ('377', '14491', '西南交通大学的历史使命是', '精勤求学　敦笃励志　果毅力行　忠恕任事', '竢实扬华　自强不息', '灌输文化尚交通', '以工科教育为背景,制药为主要特色，学科建设为龙头，人才培养为根本，教学质量为生命线，师资队伍建设为关键，强化优势和特色，产、学、研协调发展。培养宽口径、厚基础、重实践、综合素质高、创新能力强，具有强竞争能力的[b]生命科学与工程[/b]领域高级科学技术与工程应用性复合人才。', '0+4', '这是一道填空题', '同意', '3', '1363748464', '364', '1280', 'no');
INSERT INTO `bakatest` VALUES ('378', '12509', '下列哪些植物是先开花后长叶儿的？', '玉兰', '茉莉', '木棉', '海棠', '0+1+4+8', '', '同意', '3', '1363748448', '170', '656', 'no');
INSERT INTO `bakatest` VALUES ('384', '30003', '下面哪些人当过交大的校长？', '孙鸿哲', '常荫槐', '张维', '陈春阳', '0+1+2+8', '陈春阳，这个你总该选吧', '同意', '2', '1371659730', '458', '1178', 'no');
INSERT INTO `bakatest` VALUES ('385', '30003', '交大校歌歌词的作者是谁？', '黎照寰', '茅以升', '吴稚晖', '李书田', '0+4', '', '同意', '3', '1367629802', '815', '658', 'no');
INSERT INTO `bakatest` VALUES ('386', '30003', '蚂蚁PT是在哪一年建立的？', '2007年', '2008年', '2009年', '2010年', '0+8', '', '同意', '3', '1367689030', '710', '748', 'no');
INSERT INTO `bakatest` VALUES ('387', '30003', '与中国接壤的 \"金砖国家\" 有几个?', '1个', '2个', '3个', '4个', '0+2', '', '同意', '3', '1368160218', '697', '780', 'no');
INSERT INTO `bakatest` VALUES ('388', '30003', '与中国接壤的国家有几个？', '13个', '14个', '15个', '16个', '0+2', '', '同意', '3', '1368160171', '577', '822', 'no');
INSERT INTO `bakatest` VALUES ('389', '30003', '下面哪几句话有错别字？', '成熟是一种明亮而不刺眼的光辉，一种圆润而不逆耳的音响，一种不再需要对别人查颜观色的从容。', '满洲人早在窥伺了,明统治者却草菅民命,杀戮清流,干着’安内而不必攘外‘的勾当.', '有的隐晦曲折，言近指远；有的亦庄亦谐，尖锐泼辣；有的感情奔放，笔姿纵横；有的凝练含蓄，耐人寻味。', '看台下面，人山人海，远处的歌声若隐若现，张校长在台上，意气风发，告诫我们再接再励，来年再创辉煌，勇攀高峰。', '0+1+2+4+8', '', '同意', '3', '1368586868', '618', '370', 'no');
INSERT INTO `bakatest` VALUES ('390', '40', '第一次世界大战的战败国有？', '德国', '奥匈帝国', '奥斯曼帝国', '保加利亚', '0+1+2+4+8', '', '同意', '3', '1368705968', '501', '691', 'no');
INSERT INTO `bakatest` VALUES ('396', '3916', 'Key社三大催泪弹是', 'clannad', 'air', 'kannon', 'fate zero', '0+1+2+4', '', '同意', '3', '1370102854', '619', '414', 'no');
INSERT INTO `bakatest` VALUES ('397', '20164', '中国少年先锋队队歌第一句是：', '我们是共产主义接班人', '我们是五月的花海', '我们是五月的花朵', '我们是早晨的太阳', '0+1', '曾经，我们都一样', '同意', '3', '1370102869', '1119', '282', 'no');
INSERT INTO `bakatest` VALUES ('398', '4226', '下面属于世界四大音乐剧的是', '《猫》', '《西贡小姐》', '《悲惨世界》', '《歌剧魅影》', '0+1+2+4+8', '', '同意', '3', '1370102882', '1037', '210', 'no');
INSERT INTO `bakatest` VALUES ('400', '17248', '动漫《乱马1/2》中主人公的父亲一遇冷水就变成什么？', '女人', '熊猫', '小猪', '鸭子', '0+2', '', '同意', '3', '1371344934', '357', '760', 'yes');
INSERT INTO `bakatest` VALUES ('401', '20164', '“It was the best of times, it was the worst of times”出自以下哪部著作？', '狄更斯《大卫·科波菲尔》', '狄更斯《远大前程》', '狄更斯《雾都孤儿》', '狄更斯《双城记》', '0+8', '这是最好的时代,这是最坏的时代', '同意', '3', '1371659550', '697', '533', 'no');
INSERT INTO `bakatest` VALUES ('402', '17248', '四大名捕中年龄最大的是', '无情', '铁手', '追命', '冷血', '0+4', '', '同意', '3', '1371659532', '377', '744', 'yes');
INSERT INTO `bakatest` VALUES ('208', '124', '真红酱是男还是女？', '男，毫无疑问', '女，毫无疑问', '秀吉，百度曰', '二次元中是女的,三次元中是男的', '0+1', '仅供娱乐，后果自负', '同意', '3', '1330136724', '876', '2006', 'no');
INSERT INTO `bakatest` VALUES ('403', '35744', '在动漫《火影忍者》中，主人公漩涡鸣人的名字“鸣人”是谁起的？', '鸣人爸爸的妈妈', '鸣人妈妈的爸爸', '鸣人自己的老师', '鸣人爸爸的老师', '0+4+8', '自来也大人泉下有知，保佑你答对吧……', '同意', '3', '1377745202', '324', '352', 'no');
INSERT INTO `bakatest` VALUES ('404', '33543', '《嘻哈三部曲》是指下面哪三部？', '婚纱照', '绝世高手', '浮游目击者', '护戒使者', '0+1+2+4', '百度一下，你就知道', '同意', '3', '1379743774', '480', '321', 'no');
INSERT INTO `bakatest` VALUES ('405', '33543', '《人生三部曲》包括以下哪三个？', '童年', '在人间', '我的大学', '家', '0+1+2+4', '你的语文肯定是体育老师教的！', '同意', '3', '1379743781', '752', '271', 'no');
INSERT INTO `bakatest` VALUES ('406', '15852', '2013 lolS3世界总决赛进入八强的两只中国队伍分别是', 'WE', 'OMG', '皇族狼蛛', 'IG', '0+2+4', '两只最老牌lol战队落马', '同意', '3', '1380116728', '465', '311', 'no');
INSERT INTO `bakatest` VALUES ('409', '18545', '唐宋八大家中哪一个曾经位及宰相', '苏轼', '韩愈', '曾巩', '王安石', '0+8', '', '同意', '3', '1381248760', '818', '173', 'yes');
INSERT INTO `bakatest` VALUES ('410', '32533', '被称为\"卡卡布三部曲\"的是以下哪三部游戏作品', '白发魔女', '朱红之泪', '空之轨迹', '海之槛歌', '0+1+2+8', '', '同意', '3', '1381886168', '347', '387', 'no');
INSERT INTO `bakatest` VALUES ('411', '32533', ' “打麻将真开心啊”出自下列哪部动漫？', '游戏王', '天才麻将少女', '斗牌传说', '花牌情缘', '0+2', '这个很容易百度到的啊', '同意', '3', '1401851993', '504', '337', 'no');
INSERT INTO `bakatest` VALUES ('414', '32533', '以下人物不属于“维新三杰”的是', '西乡隆盛', '大久保利通', '木户孝允', '桂小太郎', '0+8', '百度的时候人名一定要看清楚啊~', '同意', '3', '1385006473', '328', '413', 'no');
INSERT INTO `bakatest` VALUES ('415', '35440', '请问西南交大不存在下列哪个专业？', '土木', '考古', '中医药', '绘画', '0+2', '', '拒绝', '3', '1385006482', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('416', '38098', '以下哪个ACG角色喜欢称自己的哥哥为“にに(nini)”？', '北条沙都子（寒蝉鸣泣之时）', '姬小路秋子（就算是哥哥有爱就没问题对吧）', '羽濑川小鸠（我的朋友很少）', '虚妹（凉宫春日的忧郁）', '0+1', '百度的时候组合一下关键词吧', '拒绝', '3', '1401243361', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('417', '37097', '魔术师约翰逊原名是', '埃尔文约翰逊', '麦吉科约翰逊', '魔术师约翰逊', '詹姆斯约翰逊', '0+1', '百度一下。。。', '同意', '3', '1399868546', '263', '198', 'no');
INSERT INTO `bakatest` VALUES ('418', '26532', '世界八大奇迹的第六奇迹是哪个？？', '古巴比伦空中花园', '摩索拉斯陵墓', '阿尔忒弥斯神庙', '秦陵兵马俑', '0+2', '', '同意', '3', '1399868528', '114', '319', 'no');
INSERT INTO `bakatest` VALUES ('419', '4031', '第一部获得奥斯卡最佳影片(Best Picture)提名的动画电影是？', '美女与野兽', '狮子王', '玩具总动员', '玩具总动员3', '0+1', '', '同意', '3', '1401243366', '132', '262', 'no');
INSERT INTO `bakatest` VALUES ('420', '38959', '以下哪个名字是《魔法禁书目录》系列中人物真名', '神净魔讨', '铃科百合子', '逢坂大河', 'index', '0+8', '萌虎乱入了 o(*￣▽￣*)ブ', '拒绝', '3', '1399868509', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('421', '4226', '西南交通大学共设有多少个学院？', '20', '21', '22', '24', '0+4', '去官网首页看看吧，记得，不一定非得带着“学院”二字哦··', '拒绝', '3', '1401243374', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('422', '22270', '请勾选出在无节操动漫银魂中出现的非人形生物', '伊丽傻白', '撒达哈鲁（定春）', '假发（桂小太郎）', '作者空知英秋', '0+1+2+8', '作者在漫画中的形象，咳咳。。', '同意', '3', '1399868495', '37', '157', 'no');
INSERT INTO `bakatest` VALUES ('423', '35311', '石头门里助手的名字是', '牧濑红莉栖', '凤凰院凶真', '御坂美琴', '徐飞', '0+1', '', '同意', '3', '1399868472', '244', '202', 'no');
INSERT INTO `bakatest` VALUES ('424', '28495', '我国的四大佛教名山是？', '山西五台山', '浙江普陀山', '四川峨眉山', '安徽九华山', '0+1+2+4+8', '', '同意', '3', '1399868456', '392', '17', 'no');
INSERT INTO `bakatest` VALUES ('425', '20376', '2014年世界杯在哪个国家举行？', '中国', '美国', '巴西', '西班牙', '0+4', '', '同意', '3', '1399868453', '440', '17', 'no');
INSERT INTO `bakatest` VALUES ('426', '21305', '在同样的技术条件下，焦距越长，下列说法正确的是。', '所拍摄到的视野越小', '如果同一镜头还要兼顾广角端，则势必导致画质越差', '光圈越小', '所要求的快门速度越慢', '0+1+2+4+8', '', '同意', '3', '1401243377', '201', '86', 'no');
INSERT INTO `bakatest` VALUES ('427', '21305', '单反数码相机镜头虚化背景的条件有哪些？', '被摄体与背景或前景的距离', '光圈的大小', '我也不知道', '焦距的长短', '0+1+2+8', '', '拒绝', '3', '1401243395', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('428', '35311', '声优御三家是指', '董浩,鞠萍,金龟子', '崔永元,撒贝宁,毕福剑', '田村由香里，水树奈奈和堀江由衣', '吴克,葛平,蓝猫', '0+4', '', '同意', '3', '1401243539', '360', '57', 'no');
INSERT INTO `bakatest` VALUES ('429', '15552', '漫画《山田君与7人魔女》里，女主角白石丽的能力是', '灵魂交换', '掳获', '预知未来', '透明人', '0+1', '咦，你今天穿这颜色内裤啊', '候选', '3', '1401898430', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('430', '15552', '只有神知道的世界里面，谁被桂木桂马告知我们是不会有结果的', '鲇川天理', '中川花音', '五位堂结', '高原步美', '0+1', '从小就知道神大人的全部事情，这么可爱被说了这种话，求组团寄刀片', '候选', '3', '1401898804', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('431', '40697', '2014QS亚洲大学排行榜中，中国五所交大排名最高的是哪一所学校？', '西南交通大学', '西安交通大学', '上海交通大学', '国立交通大学', '0+4', '肯定不是北京交大！！！', '候选', '3', '1401932910', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('432', '39779', 'TI4上获得冠军豪取500万美刀的队伍是？', '银河战舰，拥有宇宙第一C的DK', '坐拥金将军Yao帝Lin神的黑马李狗蛋（LGD）', '急需赚够小小8奶粉钱的刚刚建队的NEWbee', '由潮汐大跳、强行秀英文、赢后感想只会说爽、情谊怒吼天尊老队长rOtk带队的VG', '0+4', '', '候选', '3', '1406088517', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('433', '35372', '请假需要提供的纸质证明材料是：', '国务院签发的委任状', '辅导员（班主任）签字批准的请假条', '四六级证书', '医院的病危通知书', '0+2', '读了这么多年书不会没请过假吧？', '同意', '3', '1419493116', '70', '2', 'no');
INSERT INTO `bakatest` VALUES ('434', '20559', '东风4B型机车有几根车轴？', '2根', '4根', '6根', '8根', '0+4', '', '候选', '3', '1411438152', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('435', '30003', '日本三大妖怪是下面的哪几个？', '天狗', '河童', '鬼', '妖狐', '0+1+2+4', '', '候选', '3', '1413700643', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('436', '41035', '《龙族》中路明非QQ小号的名字是？', '夕阳的刻痕', '樱井小暮', '风间琉璃', '路明泽', '0+1', '', '候选', '3', '1413260300', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('437', '41035', '14年新学期，西南交通大学犀浦校区北区哪一栋寝室楼从男寝改为女寝从而迎来了一大群水灵灵的学妹？', '3', '18', '19', '20', '0+2', '', '候选', '3', '1413260593', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('438', '37097', '下列那些球员不是状元秀', '乔丹', '科比', '詹姆斯', '奥登', '0+1+2', '', '候选', '3', '1415527156', '0', '0', 'no');
INSERT INTO `bakatest` VALUES ('439', '8354', '太行山上的明珠是？', '太原', '大同', '长治', '晋城', '0+8', '', '候选', '3', '1415553232', '0', '0', 'yes');

-- ----------------------------
-- Table structure for `bakatestanswer`
-- ----------------------------
DROP TABLE IF EXISTS `bakatestanswer`;
CREATE TABLE `bakatestanswer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `questionid` text NOT NULL,
  `num` int(5) unsigned NOT NULL DEFAULT '0',
  `type` enum('question','dayper') NOT NULL DEFAULT 'dayper',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_userid` (`type`,`userid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=633500 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bakatestanswer
-- ----------------------------
INSERT INTO `bakatestanswer` VALUES ('633493', '45030', '258+0', '1', 'dayper', '1431014400');
INSERT INTO `bakatestanswer` VALUES ('633341', '26937', '398+0', '1', 'dayper', '1431014400');
INSERT INTO `bakatestanswer` VALUES ('633356', '26453', '365+0', '1', 'dayper', '1431014400');
INSERT INTO `bakatestanswer` VALUES ('633426', '26090', '176+0', '1', 'dayper', '1431014400');
INSERT INTO `bakatestanswer` VALUES ('633471', '17609', '338+0', '1', 'dayper', '1431014400');
INSERT INTO `bakatestanswer` VALUES ('633461', '45147', '80+0', '1', 'dayper', '1431014400');
INSERT INTO `bakatestanswer` VALUES ('633451', '20671', '388+0', '1', 'dayper', '1431014400');
INSERT INTO `bakatestanswer` VALUES ('633466', '45316', '278+0', '1', 'dayper', '1431014400');

-- ----------------------------
-- Table structure for `bannedemails`
-- ----------------------------
DROP TABLE IF EXISTS `bannedemails`;
CREATE TABLE `bannedemails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bannedemails
-- ----------------------------
INSERT INTO `bannedemails` VALUES ('1', '');

-- ----------------------------
-- Table structure for `bans`
-- ----------------------------
DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `addedby` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `first` decimal(65,0) NOT NULL,
  `last` decimal(65,0) NOT NULL,
  `firstip` varchar(65) NOT NULL,
  `lastip` varchar(65) NOT NULL,
  `banweb` tinyint(1) NOT NULL DEFAULT '1',
  `bantracker` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `first_last` (`first`,`last`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bans
-- ----------------------------
INSERT INTO `bans` VALUES ('23', '2013-04-07 12:20:55', '1152', '禁止该类IPV6地址访问', '42540488161975842760550356425300246528', '42540488241204005274814694018844196864', '2001:0::0', '2001:1::0', '1', '1');
INSERT INTO `bans` VALUES ('24', '2013-04-07 12:21:05', '1152', '禁止该类IPV6地址访问', '42545680458834377588178886921629466625', '42550872755692912415807417417958686721', '2002::1', '2003::1', '1', '1');
INSERT INTO `bans` VALUES ('27', '2013-06-24 23:12:55', '1152', '禁止残疾IPV6地址访问', '42540765173349023213605241466472366081', '42540765173349023232051985540181917697', '2001:da8:6005:5a00::1', '2001:da8:6005:5a01::1', '0', '1');

-- ----------------------------
-- Table structure for `betgames`
-- ----------------------------
DROP TABLE IF EXISTS `betgames`;
CREATE TABLE `betgames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `undertext` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `endtime` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `sort` int(1) NOT NULL DEFAULT '0',
  `creator` int(10) NOT NULL,
  `fix` tinyint(1) NOT NULL DEFAULT '0',
  `topicid` int(11) NOT NULL DEFAULT '0',
  `startime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=487 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of betgames
-- ----------------------------

-- ----------------------------
-- Table structure for `betlog`
-- ----------------------------
DROP TABLE IF EXISTS `betlog`;
CREATE TABLE `betlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `bonus` int(11) NOT NULL DEFAULT '0',
  `msg` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `betid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid_2` (`userid`,`bonus`),
  KEY `betid` (`betid`)
) ENGINE=MyISAM AUTO_INCREMENT=12849 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of betlog
-- ----------------------------

-- ----------------------------
-- Table structure for `betmods`
-- ----------------------------
DROP TABLE IF EXISTS `betmods`;
CREATE TABLE `betmods` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `forumid` smallint(5) unsigned NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forumid` (`forumid`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of betmods
-- ----------------------------
INSERT INTO `betmods` VALUES ('130', '0', '20769');
INSERT INTO `betmods` VALUES ('131', '0', '28692');
INSERT INTO `betmods` VALUES ('132', '0', '18203');
INSERT INTO `betmods` VALUES ('133', '0', '21107');
INSERT INTO `betmods` VALUES ('134', '0', '31746');

-- ----------------------------
-- Table structure for `betoptions`
-- ----------------------------
DROP TABLE IF EXISTS `betoptions`;
CREATE TABLE `betoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) NOT NULL DEFAULT '0',
  `text` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `odds` double NOT NULL DEFAULT '0',
  `thisright` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `gameid` (`gameid`)
) ENGINE=MyISAM AUTO_INCREMENT=1634 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of betoptions
-- ----------------------------

-- ----------------------------
-- Table structure for `bets`
-- ----------------------------
DROP TABLE IF EXISTS `bets`;
CREATE TABLE `bets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) NOT NULL DEFAULT '0',
  `optionid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `optionid,_userid` (`optionid`,`userid`),
  KEY `gameid` (`gameid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=8516 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bets
-- ----------------------------

-- ----------------------------
-- Table structure for `bettop`
-- ----------------------------
DROP TABLE IF EXISTS `bettop`;
CREATE TABLE `bettop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) NOT NULL DEFAULT '0',
  `winbonus` int(11) NOT NULL DEFAULT '0',
  `lossbonus` int(11) NOT NULL DEFAULT '0',
  `winnum` int(11) NOT NULL DEFAULT '0',
  `lossnum` int(11) NOT NULL COMMENT '0',
  `allbouns` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`id`),
  KEY `bonus` (`bonus`),
  KEY `winbonus` (`winbonus`),
  KEY `lossbonus` (`lossbonus`),
  KEY `winnum` (`winnum`),
  KEY `lossnum` (`lossnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bettop
-- ----------------------------

-- ----------------------------
-- Table structure for `bitbucket`
-- ----------------------------
DROP TABLE IF EXISTS `bitbucket`;
CREATE TABLE `bitbucket` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `public` (`public`),
  KEY `owner` (`owner`)
) ENGINE=MyISAM AUTO_INCREMENT=3710 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bitbucket
-- ----------------------------

-- ----------------------------
-- Table structure for `blackjack`
-- ----------------------------
DROP TABLE IF EXISTS `blackjack`;
CREATE TABLE `blackjack` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `status` enum('playing','waiting') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'playing',
  `cards` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date` int(11) DEFAULT '0',
  `gameover` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `gameover` (`gameover`)
) ENGINE=MyISAM AUTO_INCREMENT=344110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blackjack
-- ----------------------------

-- ----------------------------
-- Table structure for `blocks`
-- ----------------------------
DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `blockid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sname` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userfriend` (`userid`,`blockid`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blocks
-- ----------------------------

-- ----------------------------
-- Table structure for `bookmarks`
-- ----------------------------
DROP TABLE IF EXISTS `bookmarks`;
CREATE TABLE `bookmarks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `torrentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `torrentid` (`userid`,`torrentid`,`time`),
  KEY `time` (`time`)
) ENGINE=MyISAM AUTO_INCREMENT=28291 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookmarks
-- ----------------------------

-- ----------------------------
-- Table structure for `bookmarks_topic`
-- ----------------------------
DROP TABLE IF EXISTS `bookmarks_topic`;
CREATE TABLE `bookmarks_topic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topicid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time_book` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `torrentid` (`userid`,`topicid`,`time_book`),
  KEY `time` (`time_book`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookmarks_topic
-- ----------------------------
INSERT INTO `bookmarks_topic` VALUES ('40', '8', '26580', '1332826750');
INSERT INTO `bookmarks_topic` VALUES ('36', '1334', '11396', '1332170008');
INSERT INTO `bookmarks_topic` VALUES ('39', '1785', '4474', '1332643978');
INSERT INTO `bookmarks_topic` VALUES ('35', '1521', '4045', '1331909770');
INSERT INTO `bookmarks_topic` VALUES ('38', '1782', '10347', '1332583589');
INSERT INTO `bookmarks_topic` VALUES ('47', '1356', '26532', '1334120420');
INSERT INTO `bookmarks_topic` VALUES ('41', '1804', '26532', '1333122872');
INSERT INTO `bookmarks_topic` VALUES ('45', '150', '27592', '1333602192');
INSERT INTO `bookmarks_topic` VALUES ('46', '150', '8141', '1333861156');
INSERT INTO `bookmarks_topic` VALUES ('48', '1334', '23119', '1334124345');
INSERT INTO `bookmarks_topic` VALUES ('49', '150', '15852', '1334289766');
INSERT INTO `bookmarks_topic` VALUES ('50', '1749', '18203', '1334495028');
INSERT INTO `bookmarks_topic` VALUES ('51', '510', '27340', '1334552873');
INSERT INTO `bookmarks_topic` VALUES ('53', '1877', '15852', '1334672525');
INSERT INTO `bookmarks_topic` VALUES ('57', '150', '10214', '1334939613');
INSERT INTO `bookmarks_topic` VALUES ('58', '1896', '10512', '1335178254');
INSERT INTO `bookmarks_topic` VALUES ('59', '1897', '20247', '1335191327');
INSERT INTO `bookmarks_topic` VALUES ('60', '1897', '20591', '1335261730');
INSERT INTO `bookmarks_topic` VALUES ('61', '1901', '20591', '1335415721');
INSERT INTO `bookmarks_topic` VALUES ('62', '150', '28330', '1335508130');
INSERT INTO `bookmarks_topic` VALUES ('65', '150', '21496', '1335539267');
INSERT INTO `bookmarks_topic` VALUES ('67', '1930', '15124', '1335696940');
INSERT INTO `bookmarks_topic` VALUES ('69', '1927', '15449', '1335699686');
INSERT INTO `bookmarks_topic` VALUES ('70', '1172', '11734', '1335858916');
INSERT INTO `bookmarks_topic` VALUES ('71', '1804', '25344', '1335874842');
INSERT INTO `bookmarks_topic` VALUES ('72', '150', '10697', '1335932857');
INSERT INTO `bookmarks_topic` VALUES ('74', '1949', '20591', '1335972201');
INSERT INTO `bookmarks_topic` VALUES ('75', '1961', '15449', '1336121511');
INSERT INTO `bookmarks_topic` VALUES ('78', '1947', '28881', '1336378991');
INSERT INTO `bookmarks_topic` VALUES ('80', '150', '20083', '1336475334');
INSERT INTO `bookmarks_topic` VALUES ('81', '1989', '3766', '1336569730');
INSERT INTO `bookmarks_topic` VALUES ('82', '2027', '15852', '1336741303');
INSERT INTO `bookmarks_topic` VALUES ('86', '2064', '4494', '1337157357');
INSERT INTO `bookmarks_topic` VALUES ('87', '2071', '25706', '1338215883');
INSERT INTO `bookmarks_topic` VALUES ('89', '1828', '28330', '1338264363');
INSERT INTO `bookmarks_topic` VALUES ('91', '2114', '10512', '1338437792');
INSERT INTO `bookmarks_topic` VALUES ('92', '1643', '23416', '1338629080');
INSERT INTO `bookmarks_topic` VALUES ('94', '2106', '3650', '1338638191');
INSERT INTO `bookmarks_topic` VALUES ('96', '2137', '24698', '1338651921');
INSERT INTO `bookmarks_topic` VALUES ('97', '2146', '29188', '1338696450');
INSERT INTO `bookmarks_topic` VALUES ('100', '2146', '26207', '1339233392');
INSERT INTO `bookmarks_topic` VALUES ('102', '2149', '18653', '1339485236');
INSERT INTO `bookmarks_topic` VALUES ('103', '1849', '9622', '1339823583');
INSERT INTO `bookmarks_topic` VALUES ('105', '2030', '18228', '1339948847');
INSERT INTO `bookmarks_topic` VALUES ('106', '2206', '30083', '1340033377');
INSERT INTO `bookmarks_topic` VALUES ('108', '150', '22603', '1341243976');
INSERT INTO `bookmarks_topic` VALUES ('109', '2267', '20637', '1341329074');
INSERT INTO `bookmarks_topic` VALUES ('110', '2283', '30003', '1341936767');
INSERT INTO `bookmarks_topic` VALUES ('111', '2146', '26402', '1342103811');
INSERT INTO `bookmarks_topic` VALUES ('114', '150', '31961', '1344005860');
INSERT INTO `bookmarks_topic` VALUES ('115', '2423', '27241', '1344181055');
INSERT INTO `bookmarks_topic` VALUES ('116', '2547', '30440', '1345020492');
INSERT INTO `bookmarks_topic` VALUES ('117', '2567', '26868', '1346423854');
INSERT INTO `bookmarks_topic` VALUES ('118', '2577', '10190', '1346485710');
INSERT INTO `bookmarks_topic` VALUES ('119', '2574', '20671', '1346505198');
INSERT INTO `bookmarks_topic` VALUES ('120', '1521', '11843', '1346680850');
INSERT INTO `bookmarks_topic` VALUES ('121', '2547', '32468', '1346733855');
INSERT INTO `bookmarks_topic` VALUES ('122', '150', '31611', '1346916421');
INSERT INTO `bookmarks_topic` VALUES ('123', '2596', '24698', '1347022107');
INSERT INTO `bookmarks_topic` VALUES ('124', '150', '9666', '1347025822');
INSERT INTO `bookmarks_topic` VALUES ('125', '2596', '16307', '1347204595');
INSERT INTO `bookmarks_topic` VALUES ('126', '150', '33543', '1362327230');
INSERT INTO `bookmarks_topic` VALUES ('127', '2622', '4160', '1362553885');
INSERT INTO `bookmarks_topic` VALUES ('128', '2596', '15852', '1362559851');
INSERT INTO `bookmarks_topic` VALUES ('129', '2283', '30440', '1363584136');
INSERT INTO `bookmarks_topic` VALUES ('130', '2673', '19335', '1363708430');
INSERT INTO `bookmarks_topic` VALUES ('131', '2677', '10277', '1363934335');
INSERT INTO `bookmarks_topic` VALUES ('132', '2680', '9817', '1364102538');
INSERT INTO `bookmarks_topic` VALUES ('133', '2619', '30941', '1364477455');
INSERT INTO `bookmarks_topic` VALUES ('134', '2710', '3664', '1364612444');
INSERT INTO `bookmarks_topic` VALUES ('136', '2283', '24200', '1365080458');
INSERT INTO `bookmarks_topic` VALUES ('137', '2709', '25665', '1365159292');
INSERT INTO `bookmarks_topic` VALUES ('138', '2726', '28252', '1365221007');
INSERT INTO `bookmarks_topic` VALUES ('139', '2283', '14870', '1365332958');
INSERT INTO `bookmarks_topic` VALUES ('140', '2283', '28252', '1365350034');
INSERT INTO `bookmarks_topic` VALUES ('141', '2737', '3664', '1365589646');
INSERT INTO `bookmarks_topic` VALUES ('142', '150', '4445', '1365946667');
INSERT INTO `bookmarks_topic` VALUES ('144', '18', '18053', '1366095708');
INSERT INTO `bookmarks_topic` VALUES ('145', '2', '18053', '1366095725');
INSERT INTO `bookmarks_topic` VALUES ('147', '2775', '31503', '1367118785');
INSERT INTO `bookmarks_topic` VALUES ('148', '2146', '26071', '1367598794');
INSERT INTO `bookmarks_topic` VALUES ('149', '1720', '26071', '1368277652');
INSERT INTO `bookmarks_topic` VALUES ('150', '2283', '33543', '1368367899');
INSERT INTO `bookmarks_topic` VALUES ('151', '1521', '26071', '1368457447');
INSERT INTO `bookmarks_topic` VALUES ('152', '1356', '33543', '1368758722');
INSERT INTO `bookmarks_topic` VALUES ('153', '150', '15307', '1368890129');
INSERT INTO `bookmarks_topic` VALUES ('154', '1334', '33543', '1369317457');
INSERT INTO `bookmarks_topic` VALUES ('155', '2283', '30317', '1369498832');
INSERT INTO `bookmarks_topic` VALUES ('156', '74', '35073', '1369911137');
INSERT INTO `bookmarks_topic` VALUES ('157', '2874', '33543', '1369930153');
INSERT INTO `bookmarks_topic` VALUES ('158', '2885', '21107', '1370143107');
INSERT INTO `bookmarks_topic` VALUES ('161', '2952', '17961', '1372601118');
INSERT INTO `bookmarks_topic` VALUES ('162', '2957', '3664', '1372730860');
INSERT INTO `bookmarks_topic` VALUES ('163', '2957', '36843', '1372737205');
INSERT INTO `bookmarks_topic` VALUES ('164', '459', '26071', '1376213657');
INSERT INTO `bookmarks_topic` VALUES ('165', '2983', '30440', '1378031445');
INSERT INTO `bookmarks_topic` VALUES ('166', '1849', '30440', '1378031447');
INSERT INTO `bookmarks_topic` VALUES ('167', '3007', '15552', '1379343427');
INSERT INTO `bookmarks_topic` VALUES ('168', '3007', '26071', '1379393801');
INSERT INTO `bookmarks_topic` VALUES ('169', '150', '22561', '1380769854');
INSERT INTO `bookmarks_topic` VALUES ('172', '2547', '38293', '1381981581');
INSERT INTO `bookmarks_topic` VALUES ('173', '1533', '28174', '1384265679');
INSERT INTO `bookmarks_topic` VALUES ('174', '1849', '38234', '1385275884');
INSERT INTO `bookmarks_topic` VALUES ('175', '2283', '38234', '1385275948');
INSERT INTO `bookmarks_topic` VALUES ('176', '2983', '38234', '1385275960');
INSERT INTO `bookmarks_topic` VALUES ('178', '3107', '37109', '1387617099');
INSERT INTO `bookmarks_topic` VALUES ('179', '1849', '35339', '1388838526');
INSERT INTO `bookmarks_topic` VALUES ('180', '2983', '39284', '1389534078');
INSERT INTO `bookmarks_topic` VALUES ('181', '2283', '35339', '1394259813');
INSERT INTO `bookmarks_topic` VALUES ('182', '150', '33948', '1395281852');
INSERT INTO `bookmarks_topic` VALUES ('183', '18', '40143', '1396517227');
INSERT INTO `bookmarks_topic` VALUES ('184', '3171', '38813', '1396872378');
INSERT INTO `bookmarks_topic` VALUES ('185', '2983', '33543', '1398747814');
INSERT INTO `bookmarks_topic` VALUES ('186', '3211', '15073', '1399720195');
INSERT INTO `bookmarks_topic` VALUES ('189', '3306', '25416', '1403754945');
INSERT INTO `bookmarks_topic` VALUES ('190', '3233', '40251', '1403850838');
INSERT INTO `bookmarks_topic` VALUES ('192', '75', '42073', '1410611602');
INSERT INTO `bookmarks_topic` VALUES ('193', '892', '42073', '1410612277');
INSERT INTO `bookmarks_topic` VALUES ('195', '3233', '40247', '1413951134');
INSERT INTO `bookmarks_topic` VALUES ('196', '150', '43864', '1418739210');
INSERT INTO `bookmarks_topic` VALUES ('197', '2715', '3383', '1420110728');
INSERT INTO `bookmarks_topic` VALUES ('198', '3387', '42332', '1420637849');
INSERT INTO `bookmarks_topic` VALUES ('199', '2748', '3383', '1428246333');
INSERT INTO `bookmarks_topic` VALUES ('200', '2146', '33811', '1428655196');
INSERT INTO `bookmarks_topic` VALUES ('201', '74', '41714', '1428738735');
INSERT INTO `bookmarks_topic` VALUES ('202', '3400', '33543', '1429491585');
INSERT INTO `bookmarks_topic` VALUES ('204', '3402', '239', '1429681106');
INSERT INTO `bookmarks_topic` VALUES ('206', '3407', '41714', '1430758009');

-- ----------------------------
-- Table structure for `buysp`
-- ----------------------------
DROP TABLE IF EXISTS `buysp`;
CREATE TABLE `buysp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `torrent` int(10) NOT NULL,
  `money` int(10) NOT NULL,
  `until` datetime NOT NULL,
  `useruid` int(11) NOT NULL,
  `times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `until` (`until`),
  KEY `money` (`money`),
  KEY `torrent` (`torrent`)
) ENGINE=MyISAM AUTO_INCREMENT=2891 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buysp
-- ----------------------------
INSERT INTO `buysp` VALUES ('2886', '46531', '1', '2015-05-09 23:52:44', '14772', '0');
INSERT INTO `buysp` VALUES ('2887', '46389', '1', '2015-05-09 23:52:48', '14772', '0');
INSERT INTO `buysp` VALUES ('2888', '46388', '1', '2015-05-09 23:52:53', '14772', '0');
INSERT INTO `buysp` VALUES ('2889', '44650', '1', '2015-05-09 23:53:16', '14772', '0');
INSERT INTO `buysp` VALUES ('2890', '46605', '10', '2015-05-11 14:20:35', '17961', '0');

-- ----------------------------
-- Table structure for `cards`
-- ----------------------------
DROP TABLE IF EXISTS `cards`;
CREATE TABLE `cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `points` int(11) NOT NULL DEFAULT '0',
  `pic` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cards
-- ----------------------------
INSERT INTO `cards` VALUES ('1', '2', 0x32702E676966);
INSERT INTO `cards` VALUES ('2', '3', 0x33702E676966);
INSERT INTO `cards` VALUES ('3', '4', 0x34702E676966);
INSERT INTO `cards` VALUES ('4', '5', 0x35702E676966);
INSERT INTO `cards` VALUES ('5', '6', 0x36702E676966);
INSERT INTO `cards` VALUES ('6', '7', 0x37702E676966);
INSERT INTO `cards` VALUES ('7', '8', 0x38702E676966);
INSERT INTO `cards` VALUES ('8', '9', 0x39702E676966);
INSERT INTO `cards` VALUES ('9', '10', 0x3130702E676966);
INSERT INTO `cards` VALUES ('10', '10', 0x76702E676966);
INSERT INTO `cards` VALUES ('11', '10', 0x64702E676966);
INSERT INTO `cards` VALUES ('12', '10', 0x6B702E676966);
INSERT INTO `cards` VALUES ('13', '1', 0x74702E676966);
INSERT INTO `cards` VALUES ('14', '2', 0x32622E676966);
INSERT INTO `cards` VALUES ('15', '3', 0x33622E676966);
INSERT INTO `cards` VALUES ('16', '4', 0x34622E676966);
INSERT INTO `cards` VALUES ('17', '5', 0x35622E676966);
INSERT INTO `cards` VALUES ('18', '6', 0x36622E676966);
INSERT INTO `cards` VALUES ('19', '7', 0x37622E676966);
INSERT INTO `cards` VALUES ('20', '8', 0x38622E676966);
INSERT INTO `cards` VALUES ('21', '9', 0x39622E676966);
INSERT INTO `cards` VALUES ('22', '10', 0x3130622E676966);
INSERT INTO `cards` VALUES ('23', '10', 0x76622E676966);
INSERT INTO `cards` VALUES ('24', '10', 0x64622E676966);
INSERT INTO `cards` VALUES ('25', '10', 0x6B622E676966);
INSERT INTO `cards` VALUES ('26', '1', 0x74622E676966);
INSERT INTO `cards` VALUES ('27', '2', 0x326B2E676966);
INSERT INTO `cards` VALUES ('28', '3', 0x336B2E676966);
INSERT INTO `cards` VALUES ('29', '4', 0x346B2E676966);
INSERT INTO `cards` VALUES ('30', '5', 0x356B2E676966);
INSERT INTO `cards` VALUES ('31', '6', 0x366B2E676966);
INSERT INTO `cards` VALUES ('32', '7', 0x376B2E676966);
INSERT INTO `cards` VALUES ('33', '8', 0x386B2E676966);
INSERT INTO `cards` VALUES ('34', '9', 0x396B2E676966);
INSERT INTO `cards` VALUES ('35', '10', 0x31306B2E676966);
INSERT INTO `cards` VALUES ('36', '10', 0x766B2E676966);
INSERT INTO `cards` VALUES ('37', '10', 0x646B2E676966);
INSERT INTO `cards` VALUES ('38', '10', 0x6B6B2E676966);
INSERT INTO `cards` VALUES ('39', '1', 0x746B2E676966);
INSERT INTO `cards` VALUES ('40', '2', 0x32632E676966);
INSERT INTO `cards` VALUES ('41', '3', 0x33632E676966);
INSERT INTO `cards` VALUES ('42', '4', 0x34632E676966);
INSERT INTO `cards` VALUES ('43', '5', 0x35632E676966);
INSERT INTO `cards` VALUES ('44', '6', 0x36632E676966);
INSERT INTO `cards` VALUES ('45', '7', 0x37632E676966);
INSERT INTO `cards` VALUES ('46', '8', 0x38632E676966);
INSERT INTO `cards` VALUES ('47', '9', 0x39632E676966);
INSERT INTO `cards` VALUES ('48', '10', 0x3130632E676966);
INSERT INTO `cards` VALUES ('49', '10', 0x76632E676966);
INSERT INTO `cards` VALUES ('50', '10', 0x64632E676966);
INSERT INTO `cards` VALUES ('51', '10', 0x6B632E676966);
INSERT INTO `cards` VALUES ('52', '1', 0x74632E676966);

-- ----------------------------
-- Table structure for `casino`
-- ----------------------------
DROP TABLE IF EXISTS `casino`;
CREATE TABLE `casino` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `win` bigint(20) NOT NULL DEFAULT '0',
  `lost` bigint(20) NOT NULL DEFAULT '0',
  `trys` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  `enableplay` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `deposit` bigint(20) NOT NULL DEFAULT '0',
  `times` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casino
-- ----------------------------

-- ----------------------------
-- Table structure for `casinolog`
-- ----------------------------
DROP TABLE IF EXISTS `casinolog`;
CREATE TABLE `casinolog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txt` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4047 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casinolog
-- ----------------------------

-- ----------------------------
-- Table structure for `casino_bets`
-- ----------------------------
DROP TABLE IF EXISTS `casino_bets`;
CREATE TABLE `casino_bets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT '0',
  `proposed` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `challenged` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` bigint(20) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `winner` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid_proposed_challenged_amount` (`userid`,`proposed`,`challenged`,`amount`) USING BTREE,
  KEY `challenged` (`challenged`)
) ENGINE=MyISAM AUTO_INCREMENT=4064 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casino_bets
-- ----------------------------

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `mode` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `class_name` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_index` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mode_sort` (`mode`,`sort_index`)
) ENGINE=MyISAM AUTO_INCREMENT=424 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('401', '7', 'c_movies', '电影', 'allicobgs.png', '0');
INSERT INTO `categories` VALUES ('402', '7', 'c_tvseries', '电视剧', 'allicobgs.png', '2');
INSERT INTO `categories` VALUES ('403', '7', 'c_tvshows', '综艺', 'allicobgs.png', '3');
INSERT INTO `categories` VALUES ('404', '7', 'c_doc', '纪录片', 'allicobgs.png', '5');
INSERT INTO `categories` VALUES ('405', '7', 'c_anime', '动漫', 'allicobgs.png', '4');
INSERT INTO `categories` VALUES ('406', '7', 'c_mv', 'MV', 'allicobgs.png', '9');
INSERT INTO `categories` VALUES ('407', '7', 'c_sports', '体育', 'allicobgs.png', '8');
INSERT INTO `categories` VALUES ('408', '7', 'c_hqaudio', '音乐', 'allicobgs.png', '6');
INSERT INTO `categories` VALUES ('409', '7', 'c_other', '其他', 'allicobgs.png', '11');
INSERT INTO `categories` VALUES ('410', '7', 'c_pcgames', '游戏', 'allicobgs.png', '1');
INSERT INTO `categories` VALUES ('411', '7', 'c_software', '软件', 'allicobgs.png', '7');
INSERT INTO `categories` VALUES ('412', '7', 'c_study', '学习', 'allicobgs.png', '10');
INSERT INTO `categories` VALUES ('416', '8', '', '新手试种', '../new.png', '0');
INSERT INTO `categories` VALUES ('415', '8', '', '不规范', '../recycled.png', '1');

-- ----------------------------
-- Table structure for `caticons`
-- ----------------------------
DROP TABLE IF EXISTS `caticons`;
CREATE TABLE `caticons` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `folder` varchar(255) NOT NULL,
  `cssfile` varchar(255) NOT NULL DEFAULT '',
  `multilang` enum('yes','no') NOT NULL DEFAULT 'no',
  `secondicon` enum('yes','no') NOT NULL DEFAULT 'no',
  `designer` varchar(50) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caticons
-- ----------------------------
INSERT INTO `caticons` VALUES ('1', 'Adobe mod', 'adobe/', 'pic/category/adobe/catsprites.css', 'no', 'no', '真红の羽翼', '');
INSERT INTO `caticons` VALUES ('5', 'Ipod mod', 'ipod/', 'pic/category/ipod/catsprites.css', 'no', 'no', '真红の羽翼', '');

-- ----------------------------
-- Table structure for `cheaters`
-- ----------------------------
DROP TABLE IF EXISTS `cheaters`;
CREATE TABLE `cheaters` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `torrentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `anctime` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `seeders` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `leechers` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dealtby` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dealtwith` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8399 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cheaters
-- ----------------------------

-- ----------------------------
-- Table structure for `chenzhuyudubug`
-- ----------------------------
DROP TABLE IF EXISTS `chenzhuyudubug`;
CREATE TABLE `chenzhuyudubug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(10) DEFAULT NULL,
  `page` text CHARACTER SET gbk,
  `time` datetime DEFAULT NULL,
  `sqltotaltime` float NOT NULL DEFAULT '0',
  `pagecreatetime` float NOT NULL DEFAULT '0',
  `userid` float(10,0) NOT NULL DEFAULT '0',
  `torrentid` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(60) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52651 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chenzhuyudubug
-- ----------------------------

-- ----------------------------
-- Table structure for `chronicle`
-- ----------------------------
DROP TABLE IF EXISTS `chronicle`;
CREATE TABLE `chronicle` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txt` text,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chronicle
-- ----------------------------
INSERT INTO `chronicle` VALUES ('1', '1', '2010-11-10 22:48:32', '2010年11月10日,在伟大的11月11日光棍节前夕,蚂蚁PT零周年了...光棍节前夕,不解释.');
INSERT INTO `chronicle` VALUES ('4', '1152', '2011-11-10 18:16:36', '2011年11月10日,在伟大的11月11日光棍节前夕,蚂蚁PT一周年了...光棍节前夕,不解释.');
INSERT INTO `chronicle` VALUES ('5', '1152', '2012-11-10 18:17:34', '2012年11月10日,在伟大的11月11日光棍节前夕,蚂蚁PT两周年了...光棍节前夕,不解释.');
INSERT INTO `chronicle` VALUES ('6', '1152', '2013-11-10 18:19:26', '2013年11月10日,在伟大的11月11日光棍节前夕,蚂蚁PT三周年了...光棍节前夕,不解释.');
INSERT INTO `chronicle` VALUES ('7', '1152', '2014-11-10 18:19:27', '2014年11月10日,在伟大的11月11日光棍节前夕,蚂蚁PT四周年了...光棍节前夕,不解释.');
INSERT INTO `chronicle` VALUES ('8', '1152', '2015-11-10 18:19:29', '2015年11月10日,在伟大的11月11日光棍节前夕,蚂蚁PT五周年了...光棍节前夕,不解释.');
INSERT INTO `chronicle` VALUES ('9', '1152', '2016-11-10 18:19:30', '2016年11月10日,在伟大的11月11日光棍节前夕,蚂蚁PT六周年了...光棍节前夕,不解释.');

-- ----------------------------
-- Table structure for `codecs`
-- ----------------------------
DROP TABLE IF EXISTS `codecs`;
CREATE TABLE `codecs` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sort_index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of codecs
-- ----------------------------
INSERT INTO `codecs` VALUES ('3', '480P', '2', '0');
INSERT INTO `codecs` VALUES ('4', '720P', '1', '0');
INSERT INTO `codecs` VALUES ('5', '1080P', '0', '0');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `torrent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` text,
  `ori_text` text,
  `editedby` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `editdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `offer` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `request` int(10) unsigned NOT NULL DEFAULT '0',
  `anonymous` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `torrent_id` (`torrent`,`id`),
  KEY `offer_id` (`offer`,`id`),
  KEY `request_id` (`request`,`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=109417 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for `countries`
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `flagpic` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('1', 'Sweden', 'sweden.gif');
INSERT INTO `countries` VALUES ('2', 'United States of America', 'usa.gif');
INSERT INTO `countries` VALUES ('3', 'Russia', 'russia.gif');
INSERT INTO `countries` VALUES ('4', 'Finland', 'finland.gif');
INSERT INTO `countries` VALUES ('5', 'Canada', 'canada.gif');
INSERT INTO `countries` VALUES ('6', 'France', 'france.gif');
INSERT INTO `countries` VALUES ('7', 'Germany', 'germany.gif');
INSERT INTO `countries` VALUES ('8', '中国', 'china.gif');
INSERT INTO `countries` VALUES ('9', 'Italy', 'italy.gif');
INSERT INTO `countries` VALUES ('10', 'Denmark', 'denmark.gif');
INSERT INTO `countries` VALUES ('11', 'Norway', 'norway.gif');
INSERT INTO `countries` VALUES ('12', 'United Kingdom', 'uk.gif');
INSERT INTO `countries` VALUES ('13', 'Ireland', 'ireland.gif');
INSERT INTO `countries` VALUES ('14', 'Poland', 'poland.gif');
INSERT INTO `countries` VALUES ('15', 'Netherlands', 'netherlands.gif');
INSERT INTO `countries` VALUES ('16', 'Belgium', 'belgium.gif');
INSERT INTO `countries` VALUES ('17', 'Japan', 'japan.gif');
INSERT INTO `countries` VALUES ('18', 'Brazil', 'brazil.gif');
INSERT INTO `countries` VALUES ('19', 'Argentina', 'argentina.gif');
INSERT INTO `countries` VALUES ('20', 'Australia', 'australia.gif');
INSERT INTO `countries` VALUES ('21', 'New Zealand', 'newzealand.gif');
INSERT INTO `countries` VALUES ('23', 'Spain', 'spain.gif');
INSERT INTO `countries` VALUES ('24', 'Portugal', 'portugal.gif');
INSERT INTO `countries` VALUES ('25', 'Mexico', 'mexico.gif');
INSERT INTO `countries` VALUES ('26', 'Singapore', 'singapore.gif');
INSERT INTO `countries` VALUES ('70', 'India', 'india.gif');
INSERT INTO `countries` VALUES ('65', 'Albania', 'albania.gif');
INSERT INTO `countries` VALUES ('29', 'South Africa', 'southafrica.gif');
INSERT INTO `countries` VALUES ('30', 'South Korea', 'southkorea.gif');
INSERT INTO `countries` VALUES ('31', 'Jamaica', 'jamaica.gif');
INSERT INTO `countries` VALUES ('32', 'Luxembourg', 'luxembourg.gif');
INSERT INTO `countries` VALUES ('34', 'Belize', 'belize.gif');
INSERT INTO `countries` VALUES ('35', 'Algeria', 'algeria.gif');
INSERT INTO `countries` VALUES ('36', 'Angola', 'angola.gif');
INSERT INTO `countries` VALUES ('37', 'Austria', 'austria.gif');
INSERT INTO `countries` VALUES ('38', 'Yugoslavia', 'yugoslavia.gif');
INSERT INTO `countries` VALUES ('39', 'Western Samoa', 'westernsamoa.gif');
INSERT INTO `countries` VALUES ('40', 'Malaysia', 'malaysia.gif');
INSERT INTO `countries` VALUES ('41', 'Dominican Republic', 'dominicanrep.gif');
INSERT INTO `countries` VALUES ('42', 'Greece', 'greece.gif');
INSERT INTO `countries` VALUES ('43', 'Guatemala', 'guatemala.gif');
INSERT INTO `countries` VALUES ('44', 'Israel', 'israel.gif');
INSERT INTO `countries` VALUES ('45', 'Pakistan', 'pakistan.gif');
INSERT INTO `countries` VALUES ('46', 'Czech Republic', 'czechrep.gif');
INSERT INTO `countries` VALUES ('47', 'Serbia', 'serbia.gif');
INSERT INTO `countries` VALUES ('48', 'Seychelles', 'seychelles.gif');
INSERT INTO `countries` VALUES ('50', 'Puerto Rico', 'puertorico.gif');
INSERT INTO `countries` VALUES ('51', 'Chile', 'chile.gif');
INSERT INTO `countries` VALUES ('52', 'Cuba', 'cuba.gif');
INSERT INTO `countries` VALUES ('53', 'Congo', 'congo.gif');
INSERT INTO `countries` VALUES ('54', 'Afghanistan', 'afghanistan.gif');
INSERT INTO `countries` VALUES ('55', 'Turkey', 'turkey.gif');
INSERT INTO `countries` VALUES ('56', 'Uzbekistan', 'uzbekistan.gif');
INSERT INTO `countries` VALUES ('57', 'Switzerland', 'switzerland.gif');
INSERT INTO `countries` VALUES ('58', 'Kiribati', 'kiribati.gif');
INSERT INTO `countries` VALUES ('59', 'Philippines', 'philippines.gif');
INSERT INTO `countries` VALUES ('60', 'Burkina Faso', 'burkinafaso.gif');
INSERT INTO `countries` VALUES ('61', 'Nigeria', 'nigeria.gif');
INSERT INTO `countries` VALUES ('62', 'Iceland', 'iceland.gif');
INSERT INTO `countries` VALUES ('63', 'Nauru', 'nauru.gif');
INSERT INTO `countries` VALUES ('64', 'Slovenia', 'slovenia.gif');
INSERT INTO `countries` VALUES ('66', 'Turkmenistan', 'turkmenistan.gif');
INSERT INTO `countries` VALUES ('67', 'Bosnia Herzegovina', 'bosniaherzegovina.gif');
INSERT INTO `countries` VALUES ('68', 'Andorra', 'andorra.gif');
INSERT INTO `countries` VALUES ('69', 'Lithuania', 'lithuania.gif');
INSERT INTO `countries` VALUES ('71', 'Netherlands Antilles', 'nethantilles.gif');
INSERT INTO `countries` VALUES ('72', 'Ukraine', 'ukraine.gif');
INSERT INTO `countries` VALUES ('73', 'Venezuela', 'venezuela.gif');
INSERT INTO `countries` VALUES ('74', 'Hungary', 'hungary.gif');
INSERT INTO `countries` VALUES ('75', 'Romania', 'romania.gif');
INSERT INTO `countries` VALUES ('76', 'Vanuatu', 'vanuatu.gif');
INSERT INTO `countries` VALUES ('77', 'Vietnam', 'vietnam.gif');
INSERT INTO `countries` VALUES ('78', 'Trinidad & Tobago', 'trinidadandtobago.gif');
INSERT INTO `countries` VALUES ('79', 'Honduras', 'honduras.gif');
INSERT INTO `countries` VALUES ('80', 'Kyrgyzstan', 'kyrgyzstan.gif');
INSERT INTO `countries` VALUES ('81', 'Ecuador', 'ecuador.gif');
INSERT INTO `countries` VALUES ('82', 'Bahamas', 'bahamas.gif');
INSERT INTO `countries` VALUES ('83', 'Peru', 'peru.gif');
INSERT INTO `countries` VALUES ('84', 'Cambodia', 'cambodia.gif');
INSERT INTO `countries` VALUES ('85', 'Barbados', 'barbados.gif');
INSERT INTO `countries` VALUES ('86', 'Bangladesh', 'bangladesh.gif');
INSERT INTO `countries` VALUES ('87', 'Laos', 'laos.gif');
INSERT INTO `countries` VALUES ('88', 'Uruguay', 'uruguay.gif');
INSERT INTO `countries` VALUES ('89', 'Antigua Barbuda', 'antiguabarbuda.gif');
INSERT INTO `countries` VALUES ('90', 'Paraguay', 'paraguay.gif');
INSERT INTO `countries` VALUES ('93', 'Thailand', 'thailand.gif');
INSERT INTO `countries` VALUES ('92', 'Union of Soviet Socialist Republics', 'ussr.gif');
INSERT INTO `countries` VALUES ('94', 'Senegal', 'senegal.gif');
INSERT INTO `countries` VALUES ('95', 'Togo', 'togo.gif');
INSERT INTO `countries` VALUES ('96', 'North Korea', 'northkorea.gif');
INSERT INTO `countries` VALUES ('97', 'Croatia', 'croatia.gif');
INSERT INTO `countries` VALUES ('98', 'Estonia', 'estonia.gif');
INSERT INTO `countries` VALUES ('99', 'Colombia', 'colombia.gif');
INSERT INTO `countries` VALUES ('100', 'Lebanon', 'lebanon.gif');
INSERT INTO `countries` VALUES ('101', 'Latvia', 'latvia.gif');
INSERT INTO `countries` VALUES ('102', 'Costa Rica', 'costarica.gif');
INSERT INTO `countries` VALUES ('103', 'Egypt', 'egypt.gif');
INSERT INTO `countries` VALUES ('104', 'Bulgaria', 'bulgaria.gif');
INSERT INTO `countries` VALUES ('105', 'Isla de Muerte', 'jollyroger.gif');
INSERT INTO `countries` VALUES ('107', 'Pirates', 'jollyroger.gif');

-- ----------------------------
-- Table structure for `downloadspeed`
-- ----------------------------
DROP TABLE IF EXISTS `downloadspeed`;
CREATE TABLE `downloadspeed` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of downloadspeed
-- ----------------------------
INSERT INTO `downloadspeed` VALUES ('1', '64kbps');
INSERT INTO `downloadspeed` VALUES ('2', '128kbps');
INSERT INTO `downloadspeed` VALUES ('3', '256kbps');
INSERT INTO `downloadspeed` VALUES ('4', '512kbps');
INSERT INTO `downloadspeed` VALUES ('5', '768kbps');
INSERT INTO `downloadspeed` VALUES ('6', '1Mbps');
INSERT INTO `downloadspeed` VALUES ('7', '1.5Mbps');
INSERT INTO `downloadspeed` VALUES ('8', '2Mbps');
INSERT INTO `downloadspeed` VALUES ('9', '3Mbps');
INSERT INTO `downloadspeed` VALUES ('10', '4Mbps');
INSERT INTO `downloadspeed` VALUES ('11', '5Mbps');
INSERT INTO `downloadspeed` VALUES ('12', '6Mbps');
INSERT INTO `downloadspeed` VALUES ('13', '7Mbps');
INSERT INTO `downloadspeed` VALUES ('14', '8Mbps');
INSERT INTO `downloadspeed` VALUES ('15', '9Mbps');
INSERT INTO `downloadspeed` VALUES ('16', '10Mbps');
INSERT INTO `downloadspeed` VALUES ('17', '48Mbps');
INSERT INTO `downloadspeed` VALUES ('18', '100Mbit');

-- ----------------------------
-- Table structure for `faq`
-- ----------------------------
DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` smallint(5) unsigned NOT NULL,
  `lang_id` smallint(5) unsigned NOT NULL DEFAULT '6',
  `type` enum('categ','item') NOT NULL DEFAULT 'item',
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `categ` smallint(5) unsigned NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=477 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of faq
-- ----------------------------
INSERT INTO `faq` VALUES ('1', '1', '25', 'categ', '站点信息', '', '0', '0', '1');
INSERT INTO `faq` VALUES ('2', '2', '25', 'categ', '用户信息', '', '1', '0', '2');
INSERT INTO `faq` VALUES ('3', '3', '25', 'categ', '数据统计', '', '1', '0', '3');
INSERT INTO `faq` VALUES ('4', '4', '25', 'categ', '发布', '', '0', '0', '4');
INSERT INTO `faq` VALUES ('5', '5', '25', 'categ', '下载', '', '1', '0', '5');
INSERT INTO `faq` VALUES ('6', '6', '25', 'categ', '我该怎样提升下载速度？', '', '0', '0', '6');
INSERT INTO `faq` VALUES ('7', '7', '25', 'categ', '我的网络提供商（ISP）使用了透明代理。我应该怎么做？', '', '0', '0', '7');
INSERT INTO `faq` VALUES ('8', '8', '25', 'categ', '为什么我连不上？难道我被网站屏蔽了？', '', '0', '0', '8');
INSERT INTO `faq` VALUES ('9', '9', '25', 'categ', '如果从这里找不到我的问题的解答，我该怎么办？', '', '0', '0', '9');
INSERT INTO `faq` VALUES ('10', '10', '25', 'item', '到底什么是BT（Bittorrent）？我要如何才能弄到这类程序？', '参看<a class=\"faqlink\" href=\"http://www.btfaq.com/\">Brian的BitTorrent FAQ及指导</a>。', '1', '1', '1');
INSERT INTO `faq` VALUES ('11', '11', '25', 'item', '我们捐出来的钱上哪儿去了？', '所有捐助的钱用于维护服务器的费用。', '1', '1', '2');
INSERT INTO `faq` VALUES ('12', '12', '25', 'item', '我从哪里可以搞到源代码的拷贝？', '这个Tracker使用的是NexusPHP的代码。代码获取事宜，请看<a class=\"faqlink\" href=\"aboutnexus.php\">这里</a>。<br />\r\nNexusPHP的代码是根据TBSource的源码改写的。TBDev网站，Tracker源代码以及社区论坛都在这里：<a class=\"faqlink\" href=\"http://www.tbdev.net/\">TBDev.net</a>。', '1', '1', '3');
INSERT INTO `faq` VALUES ('13', '13', '25', 'item', '我注册了一个账号但是却没有收到验证邮件！', '这很有可能是Tracker所在的服务器网络出现了问题。你可以填写<a href=\"confirm_resend.php\" class=\"faqlink\">这个表格</a>让服务器重发验证邮件。<br />\r\n通常没有得到确认的注册帐户会在24小时后被删除，所以你可以在第二天重试。需要注意的是，如果你第一次没有收到确认信，第二次有很大的可能仍然无法收到确认信，所以换一个E-mail地址是一个不错的主意。', '0', '2', '1');
INSERT INTO `faq` VALUES ('14', '14', '25', 'item', '我忘记了我的用户名/密码了，能帮我找回来么？', '请填写<a class=\"faqlink\" href=\"recover.php\">这个表单</a>，我们将把登录详情发还给你。', '0', '2', '2');
INSERT INTO `faq` VALUES ('15', '15', '25', 'item', '我可以给我的账号改个名字么？', '我们支持使用魔力值给账号改名。', '0', '2', '3');
INSERT INTO `faq` VALUES ('16', '16', '25', 'item', '你可以删除一个（已确认的）账号么？', '我们一般不提供该类服务，所以不要请求删除任何一个被你邀请的帐号。', '0', '2', '4');
INSERT INTO `faq` VALUES ('17', '17', '25', 'item', '那么，什么是我的分享率（Ratio）？', '就在页面功能分区的下面。<br />\r\n<br />\r\n<img src=\"pic/ratio.png\" alt=\"ratio\" />\r\n<br />\r\n<br />\r\n区分你的整体分享率和独立分享率是很重要的。整体分享率关注的是自从你加入站点以来，账号的整体上传与下载量。而独立分享率则针对每一个你正在下载或做种的文件。\r\n<br />\r\n<br />\r\n你可能看到两种符号来代替数字：\"Inf.\"，这个是无限（Infinity）的缩写，意思是你的下载量为0字节，而上传量则是任意一个非零的值(上传量/下载量=无穷大)；\"---\"，应该被视为“不可用”，这说明了你的下载量和上传量都是0字节。(上传量/下载量=0/0 这是一个不确定的量)。\r\n', '1', '2', '5');
INSERT INTO `faq` VALUES ('18', '18', '25', 'item', '为什么我的IP地址显示在我的个人信息页面上？', '只有你自己和网站Moderator及以上的管理员可以看到你的IP地址和Email。普通用户是看不到这些信息的。', '0', '2', '6');
INSERT INTO `faq` VALUES ('21', '21', '25', 'item', '为什么我的“可连接”是“否”？（以及为什么我需要关注这个问题？）', 'Tracker服务器认为你在防火墙后，或者在NAT桥接后，并且无法接收其他Peer的连接请求。\r\n<br />\r\n<br />\r\n这意味着其它的大批Peer无法连接到你，只能由你连接到他们。更糟糕的情况是，如果两个Peer都处于这样的状态，他们将完全无法连接到对方。这对于整体速度有着非常不利的影响。\r\n<br />\r\n<br />\r\n对于这个问题，有以下解决方式：对于防火墙，打开用于接收连接的端口（即你在BT客户端中定义的端口）；对于NAT，你需要配置NAT服务器使用Basic NAT方式而不是NAPT（不同的路由有着不同的运行方式。翻阅你的路由文档或客服论坛。你也可以在<a class=\"faqlink\" href=\"http://portforward.com/\">PortForward</a>找到关于此问题的大量信息）。\r\n\r\n\r\n\r\n\r\n\r\n', '0', '2', '9');
INSERT INTO `faq` VALUES ('22', '22', '25', 'item', '不同的用户等级代表了什么含义？', '<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n<td class=\"embedded\" width=\"200\" valign=\"top\">&nbsp; <b class=\"Peasant_Name\">已退学(Peasant)</b></td>\r\n<td class=\"embedded\" width=\"5\">&nbsp;</td>\r\n<td class=\"embedded\"> 被降级的用户，他们有30天时间来提升分享率，否则他们会被踢。不能发表趣味盒内容；不能申请友情链接；不能上传字幕。\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">学园新生(User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">新用户的默认级别。只能在每周六中午12点至每周日晚上11点59分发布种子(暂不执行）。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"PowerUser_Name\">一年生上学期(Power User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">可以直接发布种子；可以查看NFO文档；可以查看用户列表；可以请求续种； 可以发送邀请； 可以查看排行榜；可以查看其它用户的种子历史(如果用户隐私等级未设置为\"强\")； 可以删除自己上传的字幕。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"EliteUser_Name\">一年生下学期(Elite User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\"><b class=\"EliteUser_Name\">Elite User</b>及以上用户封存账号后不会被删除。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"CrazyUser_Name\">二年生上学期(Crazy User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">可以在做种/下载/发布的时候选择匿名模式。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"InsaneUser_Name\">二年生下学期(Insane User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">可以查看普通日志。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VeteranUser_Name\">三年生上学期(Veteran User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">可以查看其它用户的评论、帖子历史。<b class=\"VeteranUser_Name\">Veteran User</b>及以上用户会永远保留账号。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"ExtremeUser_Name\">三年生下学期(Extreme User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">可以更新过期的外部信息；可以查看Extreme User论坛。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"UltimateUser_Name\">四年生上学期(Ultimate User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"NexusMaster_Name\">四年生下学期(Nexus Master)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\"  valign=\"top\">&nbsp; <img class=\"star\" src=\"pic/trans.gif\" alt=\"Star\" /></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">为网站捐款50元以上的人,杜绝批量制造。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VIP_Name\">优秀学员(VIP)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">和<b class=\"NexusMaster_Name\">Nexus Master</b>拥有相同权限并被认为是精英成员。免除自动降级。上传双倍计算。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">其它</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">自定义等级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Retiree_Name\">优秀毕业生(Retiree)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">退休后的管理组成员。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Warehouse_Name\">图书委员(Warehouse)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">保种员</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Uploader_Name\">学生会助理(Uploader)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">专注的发布者。免除自动降级；可以查看匿名用户的真实身份。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"ForumModerator_Name\">风纪委员(FORUM_MODERATOR)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">论坛总版主</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Moderator_Name\">学生会长(Moderator)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">可以查看管理组信箱、举报信箱；管理趣味盒内容、投票内容；可以编辑或删除任何发布的种子；可以管理候选；可以管理论坛帖子、用户评论；可以查看机密日志；可以删除任何字幕；可以管理日志中的代码、史册；可以查看用户的邀请记录；可以管理用户帐号的一般信息。<b>不能</b>管理友情链接、最近消息、论坛版块；<b>不能</b>将种子设为置顶或促销；<b>不能</b>查看用户IP或Email等机密信息；不能删除账号。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Administrator_Name\">学园理事助理(Administrator)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">除了不能改变站点设定、管理捐赠外，可以做任何事。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"SysOp_Name\">学院建设部长(Sysop)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">网站开发/维护人员，可以改变站点设定，不能管理捐赠。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"StaffLeader_Name\">学园理事长(Staff Leader)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">网站主管，可以做任何事。</td>\r\n</tr>\r\n</table>', '1', '2', '10');
INSERT INTO `faq` VALUES ('23', '23', '25', 'item', '提升和降级又是怎样被执行的呢？', '<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n<td class=\"embedded\" width=\"200\" valign=\"top\">&nbsp; <b class=\"Peasant_Name\">已退学(Peasant)</b></td>\r\n<td class=\"embedded\" width=\"5\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">当以下情况时将被自动降至本级：<br />\r\n1.如果你已经下载了超过50GB，你应该有大于1的分享率。<br />\r\n2.如果你已经下载了超过100GB，你应该有大于1.1的分享率。<br />\r\n3.如果你已经下载了超过200GB，你应该有大于1.2的分享率。<br />\r\n4.如果你已经下载了超过400GB，你应该有大于1.3的分享率。<br />\r\n5.如果你已经下载了超过800GB，你应该有大于1.4的分享率。<br />\r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">学园新生(User)</b></td>\r\n<td class=\"embedded\" width=\"5\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">当以下情况时将被自动降至本级：<br />\r\n未达标HR数目大于10.\r\n</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"PowerUser_Name\">一年生上学期(Power User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少2周，并且上传至少32G，分享率大于1.05。<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于0.95，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"EliteUser_Name\">一年生下学期(Elite User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少8周，并且上传至少512G，分享率大于1.55。\r\n<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于1.45，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"CrazyUser_Name\">二年生上学期(Crazy User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少12周，并且上传至少1024G，分享率大于2.05。\r\n<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于1.95，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"InsaneUser_Name\">二年生下学期(Insane User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少24周，并且上传至少2048G，分享率大于2.55。<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于2.45，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VeteranUser_Name\">三年生上学期(Veteran User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少24周，并且上传至少4096G，分享率大于3.05。<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于2.95，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"ExtremeUser_Name\">三年生下学期(Extreme User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少24周，并且上传至少8192G，分享率大于3.55。<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于3.45，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"UltimateUser_Name\">四年生上学期(Ultimate User)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少48周，并且上传至少65536G，分享率大于4.05。<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于3.95，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"NexusMaster_Name\">四年生下学期(Nexus Master)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必须注册至少48周，并且上传至少131072G，分享率大于4.55。<br />\r\n当条件符合时将被自动提升。注意，无论何时，如果你的分享率低于4.45，你将自动降级。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <img class=\"star\" src=\"pic/trans.gif\" alt=\"Star\" /></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">只需捐款，详见<a class=\"faqlink\" href=\"donate.php\">这里</a>。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VIP_Name\">优秀学员(VIP)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">由管理员仔细斟酌后分配给他们认为对于站点某方面有特殊贡献的用户。<br />\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">其它</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">用户使用魔力值兑换，或由管理员仔细斟酌后授权。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Retiree_Name\">优秀毕业生(Retiree)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">由管理员授予。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Warehouse_Name\">图书委员(Warehouse)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">由管理员分配(可申请)。</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Uploader_Name\">学生会助理(Uploader)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">由管理员分配(可申请)。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"ForumModerator_Name\">风纪委员(FORUM_MODERATOR)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">由管理员分配(可申请)。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Moderator_Name\">学生会长(Moderator)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">无需多问，我们会找到你的！</td>\r\n</tr>\r\n\r\n</table>', '1', '2', '11');
INSERT INTO `faq` VALUES ('25', '25', '25', 'item', '为什么我的朋友不能加入？', '用户数目有所限制（你可以查看“首页-&gt;站点数据-&gt;上限”）。当达到那个数目时，我们会停止接受新成员。<br />\r\n由于非活跃用户(长期不使用账号的用户)引起账号资源浪费，因此我们将清理该部分用户，为其他想加入用户腾出空间。<br />\r\n关于非活跃用户清理规则，参考<a class=\"faqlink\" href=\"rules.php\">规则</a>。', '0', '2', '1');
INSERT INTO `faq` VALUES ('26', '26', '25', 'item', '怎样自定义头像？', '首先，找一个你喜欢的图片，当然了它不能违反我们的<a class=\"faqlink\" href=\"rules.php\">规则</a>。然后你要找一个存放它的地方，比方说我们自己的<a class=\"faqlink\" href=\"bitbucket-upload.php\">上传器</a>。出于服务器负载的考虑，我们更希望你将图片上传到别的网站，然后将其URL粘贴到你的<a class=\"faqlink\" href=\"usercp.php?action=personal\">控制面板</a>的头像URL部分。 <br />\r\n<br />\r\n请不要为了仅仅测试头像而发帖。如果一切顺利，你将在你的详情页面看到它。', '0', '2', '1');
INSERT INTO `faq` VALUES ('27', '27', '25', 'item', '数据未能得到更新的原因', '<ul>\r\n<li>服务器过载/未响应。只要尝试着保持会话直到服务器恢复响应(不推荐连续手动刷新，这样会加重服务器负载)。</li>\r\n</ul>\r\n\r\n', '1', '3', '1');
INSERT INTO `faq` VALUES ('28', '28', '25', 'item', '最佳的尝试', '<ul>\r\n<li>如果你当前正下载/上传的种子并不在你的用户详情页面中，你可以等一会或者强制进行手动更新。</li>\r\n<li>确保你正确地关闭了客户端软件，否则Tracker服务器无法收到\"event=completed\"的信号。</li>\r\n<li>如果Tracker服务器挂了，不要停止上传。只要在你退出客户端之前服务器恢复工作，所有的数据都会得到正确地更新。</li>\r\n</ul>', '0', '3', '2');
INSERT INTO `faq` VALUES ('29', '29', '25', 'item', '我可以任意选择Bittorrent客户端软件么？', '为了从本站得到最好的下载体验，目前本站Tracker<b>只允许</b>使用以下的BitTorrent客户端软件。<br />\r\n<br />\r\n<li><b>Windows:</b>uTorrent</li>\r\n<li><b>Linux:</b>Azureus,Transmission</li>\r\n<li><b>MacOS X:</b>Azureus,uTorrentMac</li>\r\n', '1', '5', '3');
INSERT INTO `faq` VALUES ('30', '30', '25', 'item', '为什么我正在下载/做种的一个种子会在我的详情页面中被列出多次？', '如果因为某些原因(比方说死机，客户端失去响应)你的客户端非正常退出并且你又重新打开它，它会被分配到一个全新的Peer ID, 这样它显示为一个全新的种子。而旧的种子将永远不会收到“event=completed”或“event=stopped”的信号，因此将一直被列出直到Tracker清理超时的Peer。 无视了它就可以了，它最后会消失的。', '1', '3', '4');
INSERT INTO `faq` VALUES ('31', '31', '25', 'item', '为什么我已经完成/取消的种子仍然在我的详情页面里？', '有一些客户端，比如说TorrentStorm和Nova Torrent，在取消或者完成一个任务的时候不能向Tracker服务器正确发送信号。在那样的情况下，Tracker服务器将一直保持等待信号的状态（因此会一直列出种子的状态为做种/下载的状态）直到Tracker清理超时的Peer。无视了它就可以了，它最后会消失的。', '0', '3', '5');
INSERT INTO `faq` VALUES ('33', '33', '25', 'item', '多IP（我可以从不同的电脑登录/下载吗？）', '是的，目前Tracker服务器支持单个用户从任意个数的IP地址同时访问/下载。<br />\r\n然而，对于单种是有限制的。对于每个种子，最多允许3个做种的连接，最多只允许1个下载的连接（这意味着，对于某个种子你一次只能在一个地方下载）。', '0', '3', '1');
INSERT INTO `faq` VALUES ('36', '36', '25', 'item', '为什么我不能发布种子？', '请看<a class=\"faqlink\" href=\"rules.php\">规则</a>。', '0', '4', '1');
INSERT INTO `faq` VALUES ('37', '37', '25', 'item', '我需要满足哪些条件才能加入发布小组呢？', '你所必须满足的条件：\r\n<ul>\r\n<li>具有稳定的资源来源</li>\r\n<li>平均每周资源发布数量不少于5个</li>\r\n</ul>\r\n你必须确保发布的文件符合以下特征:\r\n<ul>\r\n<li>不超过7天之前</li>\r\n<li>你必须要有做种的能力，或者可以确保至少有效供种24小时。</li>\r\n<li>你需要有至少达到2MBit的上传带宽。</li>\r\n</ul>\r\n如果你认为你符合以上条件，那么不要犹豫，<a class=\"faqlink\" href=\"contactstaff.php\">联系管理组</a>吧。<br />\r\n<b>记住！</b> 仔细填写你的申请！确保申请中包含你的上传速度以及你计划发布的内容的类型。<br />\r\n只有仔细填写并且经过慎重考虑的申请才会纳入我们的视野。', '0', '4', '2');
INSERT INTO `faq` VALUES ('38', '38', '25', 'item', '我可以发布你们这里的种子到别的Tracker服务器么？', '不能。我们是一个封闭的、限制用户数的社区。只有注册用户才能够使用我们的Tracker。将我们的种子文件发布到其他Tracker服务器是徒劳的，因为绝大多数试图下载这些文件的人将无法连接到我们的服务器。将我们的种子发布到其他Tracker只让那里的用户恼怒（因为无法下载）并且对我们产生敌对情绪，所以这种行为是我们是不能容忍的。<br />\r\n<br />\r\n如果其他网站的管理员向我们举报我们的种子被发布在他们的站点上，对此负责的用户将因此被移出我们的社区。<br />\r\n<br />\r\n但是对于从我们这里下载得到的文件，你可以随意操控它们（发布者明确说明为<b>独占</b>的资源除外）。你可以制作另一个种子，写入其他Tracker的地址，并发布到你喜欢的站点上。', '0', '4', '3');
INSERT INTO `faq` VALUES ('39', '39', '25', 'item', '下载来的文件该怎么打开？', '在这份<a class=\"faqlink\" href=\"formats.php\">指引</a>里面找找看吧。', '0', '5', '1');
INSERT INTO `faq` VALUES ('40', '40', '25', 'item', '我下载了一部电影，但是不明白CAM/TS/TC/SCR是什么意思?', '在这份<a class=\"faqlink\" href=\"videoformats.php\">指引</a>里面找找看吧。', '0', '5', '2');
INSERT INTO `faq` VALUES ('41', '41', '25', 'item', '为什么一个可用的种子忽然就消失了？', '以下原因都会导致这个现象的出现:<br />\r\n(<b>1</b>) 按照<a class=\"faqlink\" href=\"rules.php\">网站规则</a>，这个种子不符合规则已被删除。\r\n<br />\r\n(<b>2</b>) 发布者因为文件存在问题而删除了它。一般来说，发布者会发布一个替代的版本的。<br />\r\n(<b>3</b>) 在长时间断种后种子被自动删除了。', '1', '5', '3');
INSERT INTO `faq` VALUES ('42', '42', '25', 'item', '我该怎样续传文件或者给一个文件续种呢？', '打开扩展名为.torrent的文件，当你的客户端软件询问保存的目录时，选择已经存在的文件存放的目录，它就能够开始续传/续种了。', '1', '5', '4');
INSERT INTO `faq` VALUES ('43', '43', '25', 'item', '为什么我的下载有时候停在99%?', '你所下载到的片段越多，寻找拥有你所缺少的片段的同伴就将变得越困难。这就是为什么有时候在下载即将完成的时候，速度会变得非常慢，甚至完全停止了。只要耐心等候，或早或晚剩下的部分一定能够下载到的。', '0', '5', '5');
INSERT INTO `faq` VALUES ('44', '44', '25', 'item', '\"部分哈希验证出错\"这条信息是什么意思？', 'BT的客户端会检查它所收到的数据的完整性。如果某一个片段在验证中出错，那么这个片段将被重新下载。偶尔的哈希验证错误是非常常见的现象，不用担心。<br />\r\n<br />\r\n有些客户端有屏蔽向你发送错误数据的其他客户端的功能。如果有这个选项，最好打开它。因为这样可以保证如果某个同伴经常向你发送错误的数据时，它将会被屏蔽。', '0', '5', '6');
INSERT INTO `faq` VALUES ('45', '45', '25', 'item', '100MB大小的种子，我怎么下了120MB的东西回来?', '参见哈希验证失败的那个问题。如果你的客户端收到了错误的数据，那么它将会重新下载这一部分，因此总下载量有可能比种子大小略微大一些。确保“屏蔽发送错误数据的客户端”的那个选项被打开了，这样可以减少额外的下载。', '0', '5', '7');
INSERT INTO `faq` VALUES ('46', '46', '25', 'item', '为什么我的客户端的Tracker服务器状态出现\"Your ratio is too low! You need to wait xx h to start\"的错误？', '在<b>新</b>种子被上传到Tracker服务器之后，有一些用户必须等一些时间才能开始下载。<br>\r\n这个延迟只会影响那些分享率较低且下载量大于10G的用户。<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.4</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延迟</td>\r\n	<td class=\"embedded\" width=\"100\">24小时</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.5</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延迟</td>\r\n	<td class=\"embedded\" width=\"100\">12小时</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.6</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延迟</td>\r\n	<td class=\"embedded\" width=\"100\">6小时</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.8</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延迟</td>\r\n	<td class=\"embedded\" width=\"100\">3小时</td>\r\n</tr>\r\n</table>', '0', '5', '8');
INSERT INTO `faq` VALUES ('47', '47', '25', 'item', '为什么发生了这个错误？ \"Port xxxx is blacklisted\"?', '你的客户端向Tracker服务器报告它正在使用某个默认的BT协议端口(6881-6889)或是任何其他常见P2P端口来作为连接端口。<br />\r\n<br />\r\n本站不允许这些通常被P2P协议默认使用的端口。原因是目前ISP常常对这些端口进行限速。<br />\r\n<br />\r\n被屏蔽的端口如下：<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Direct Connect</td>\r\n	<td class=\"embedded\" width=\"100\">411 - 413</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">BitTorrent</td>\r\n	<td class=\"embedded\" width=\"100\">6881 - 6889</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Kazza</td>\r\n	<td class=\"embedded\" width=\"100\">1214</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Gnutella</td>\r\n	<td class=\"embedded\" width=\"100\">6346 - 6347</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Emule</td>\r\n	<td class=\"embedded\" width=\"100\">4662</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">WinMX</td>\r\n	<td class=\"embedded\" width=\"100\">6699</td>\r\n  </tr>\r\n</table>\r\n<br />\r\n要使用我们的Tracker服务器，你必须配置你的客户端使用未在上面列出的端口范围(从49152到65535都是不错的选择，参看<a class=\"faqlink\" href=\"http://www.iana.org/assignments/port-numbers\">IANA</a>)。注意某些客户端，如Azureus 2.0.7.0或更高版本，对所有的种子都使用同一端口。而其他大多数客户端为每一个种子开放一个端口，你在选择端口范围应考虑到这个问题（一般来说端口范围小于10。设置一个过大的范围并不一定有好处，而且可能有安全隐患)。 <br />\r\n<br />\r\n这些端口是用于同伴间通信的，而非用于客户端连接到Tracker服务器。因此这个改动并不会影响你使用其他Tracker服务器（事实上，它甚至可能<i>加快</i>所有Tracker服务器上种子的速度）。你的客户端也仍然能够连接到那些使用默认端口的同伴。如果你的客户端不支持自己自定义端口，那么换一个吧。<br />\r\n<br />\r\n不要向我们询问，或者在论坛里面提问究竟应该选择什么端口。我们的用户选择的端口越随机，ISP就越难以捉摸清楚我们使用的端口，从而无法对我们的端口进行限速。如果我们只是简单地规定一个范围，那么ISP又会很快对那个范围内的端口进行限速的。<br />\r\n<br />\r\n最后还要说的是，记得在你的路由和/或防火墙上打开你选择的端口，如果你有这些东西的话。', '0', '5', '9');
INSERT INTO `faq` VALUES ('48', '48', '25', 'item', '那么这个呢？ “IO错误 - [错误号13] 许可被拒绝”？', '如果你只是想要解决这个问题的话，重新启动你的电脑应该就可以了。否则的话，继续读下去。<br />\r\n<br />\r\nIO错误指的是输入-输出错误，这是一个文件系统错误，而非来自我们的Tracker服务器。当你的客户端由于某些原因不能打开种子中未下载完成的文件时，这个错误就会发生。 通常原因是客户端的两个实例同时在运行：当上一次关闭客户端时因为某种原因它没有被真正关闭，从而始终在后台运行。因此文件被锁定，使得新的实例不能打开这个文件。<br />\r\n<br />\r\n另外一个不常出现的原因是因为老旧的FAT文件系统。某些系统崩溃可能导致未下载完成的文件损坏，接着就出现了这个错误。运行一次scandisk应该可以解决这个问题。注意，只有当你使用Windows 9X操作系统（只支持FAT文件系统）或者在Windows NT/2000/XP中使用FAT文件系统的时候才比较可能出现这个问题。NTFS文件系统要健壮许多，不太可能出现这样的问题。', '0', '5', '10');
INSERT INTO `faq` VALUES ('50', '50', '25', 'item', '不要马上下载新发布的种子', '下载速度主要取决于上传者/下载者比(SLR)。如果是种子是新发布的且非常受欢迎而SLR又很低的种子，下载速度低是常见的问题。<br />\r\n<br />\r\n请牢记你不喜欢低速下载。所以多<b>上传</b>让别人不用忍耐同样的困扰。\r\n<br />\r\n<br />由其是当你的带宽较窄时，不要马上下载新发布的种子。最好的下载速度通常在一个种子生命周期的一半时出现，此时SLR达到最大值（不过，这时下载的缺点是你的上传量不会很多。究竟如何平衡优点与缺点，取决于你自己)。', '1', '6', '1');
INSERT INTO `faq` VALUES ('51', '51', '25', 'item', '限制上传速度', '上传速度将从以下两种方式显著影响下载速度：\r\n<ul>\r\n    <li>Bittorrent的同伴倾向于回馈那些给它们提上传的同伴。这就意味着如果A和B正在同时下载一个文件，而A又在高速向B传送数据，那么B将会尝试着回报A。因此高速上传将导致高速下载。</li>\r\n\r\n    <li>由于TCP协议的工作方式，当A正从B下载某些东西的时候，A必须不停地向B发送成功收到B所发送来的数据的信号（被称为确认──ACK ── 某种“已收到”的信息)。如果A没有发送ACK信号，那么B将暂停向A发送数据并且进入等候状态。如果A正在全速上传，很有可能没有用来发送ACK信号的带宽，因此ACK信号被耽搁。在这种情况下，过高速度的上传导致了低速的下载。</li>\r\n</ul>\r\n实际的效果是以上两个原因的结合。上传速度应该在保证ACK能正常传输的前提下被设得尽量高。 <b>一个很好的实践理论是保持上传速度在理论上限的80%。</b>你也可以细细研究什么是最适合你的速度（同时也请记住高速上传对于你的分享率很有帮助）。<br />\r\n<br />\r\n如果你正在运行一个以上的种子任务，你应该考虑的是全局上传速度。某些客户端能限制了全局上传速度，其他的则能对每一个种子分别进行设置。了解你的客户端。如果你正在使用你的电脑做别的某些应用（比方说上网或者从FTP拖东西），也需考虑一下它们对于全局上传的影响。', '1', '6', '2');
INSERT INTO `faq` VALUES ('52', '52', '25', 'item', '限制同时连接数', '某些操作系统（例如Windows 9X）对于大量连接数支持不完善，甚至有可能因此而崩溃。也有一些家用路由（尤其当运行着NAT以及/或者打开防火墙状态检查服务时）会因大量连接数而变得很慢或者崩溃。对于连接数没有固定的最佳值，你可以试试看60或者100。记住这些连接数是累加的，所以如果你的客户端运行了两个会话，这两个数字要加在一起。', '1', '6', '3');
INSERT INTO `faq` VALUES ('53', '53', '25', 'item', '限制同时上传数', '上传数难道和连接数有什么不一样吗？是的，两者是不同的。连接数限制了你的客户端所能对话以及/或者下载的同伴数。上传数则限制了你的客户端实际能上传的同伴数。理想的数值一般要比连接数低许多，并且与你的物理带宽高度相关。', '1', '6', '4');
INSERT INTO `faq` VALUES ('54', '54', '25', 'item', '那怎么办？等待一会吧', '如我们在上面所解释的，在BT下载过程中一个同伴更加倾向于回报那些上传给它的同伴。当你开始一个新的下载任务时，你没有文件片断提高给其他同伴，因此他们通常会无视你。这使得开始阶段的下载非常缓慢，由其是当你所连接到的同伴只有很少是（或者没有）做种者。一旦你获得了一些能用于共享的文件片断，下载速度会有所改观。', '1', '6', '5');
INSERT INTO `faq` VALUES ('55', '55', '25', 'item', '为什么在我下载的时候浏览网页速度如此之慢？', '你的下载带宽是有限的。如果你正在下载一个速度很快的种子，它几乎肯定将占满你的下载带宽。这是浏览网页显然就会变慢。很多BT客户端允许你限制下载速度，你可以试试。<br />\r\n<br />\r\n浏览网页只是作为举例之一，同样的问题也会出现在游戏，即时通信软件上......', '1', '6', '6');
INSERT INTO `faq` VALUES ('56', '56', '25', 'item', '什么是代理？', '基本上说，代理就是中间人。当你通过代理访问某个站点的时候，你的请求将首先被发送到代理处，然后由代理转发到你所请求的站点，而不是你直接连通到网站。下面是几种典型的代理分类（术语不是那么的规范）：<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\" width=\"100\">&nbsp;透明代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">透明代理在客户端无需配置。他将自动把80端口的信息重定向到代理(有时候也作为非匿名代理的同义词)；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;显式代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">浏览器必须经过配置才能使用代理；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;匿名代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">代理将不会把客户标记发送至服务器端 (HTTP_X_FORWARDED_FOR头标志将不被发送。服务器也因此看不到你的IP)；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;高度匿名代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">代理将不会把客户标记或代理标记发送至服务器端 (HTTP_X_FORWARDED_FOR和HTTP_VIA and HTTP_PROXY_CONNECTION头标志将不被发送。服务器看不到你的IP，甚至不知道你正在使用代理)；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;公用</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">(不言自明了)。</td>\r\n </tr>\r\n</table>\r\n<br />\r\n透明代理可能是匿名的，也可能是非匿名的，且匿名也有相应的等级。', '1', '7', '1');
INSERT INTO `faq` VALUES ('57', '57', '25', 'item', '我该怎样发现自己正处于一个（透明的/匿名的）代理后面？', '试试看<a href=\"http://proxyjudge.org\" class=\"faqlink\">ProxyJudge</a>。它列出了服务器端从你这里所收到的HTTP的头标志。相关的几个标志是HTTP_CLIENT_IP，HTTP_X_FORWARDED_FOR和REMOTE_ADDR。', '1', '7', '2');
INSERT INTO `faq` VALUES ('75', '75', '25', 'item', '我的“可连接”是“否”尽管我并没有NAT或者防火墙？', 'Tracker服务器在寻找你的真实IP方面非常有天赋。但是这需要代理发送HTTP头标志HTTP_X_FORWARDED_FOR。如果你的ISP的代理没有这么做的话，Tracker服务器将把代理的IP当作你的客户端的IP。所以当你登录之后，Tracker服务器尝试连接你的客户端来确信你没有使用NAT/防火墙，服务器实际上将试图连接代理的IP（使用你的BT客户端报告的接收连接端口）。很自然地，代理服务器并没有监听那个端口。如此连接会失败，而Tracker服务器也因此认为你使用了NAT/防火墙。', '1', '7', '3');
INSERT INTO `faq` VALUES ('62', '62', '25', 'item', '也许是因为我的IP地址被列入黑名单了？', '这个网站有屏蔽被禁用户或攻击者的IP地址的功能。该功能在Apache/PHP层面上起作用，且只能屏蔽从这些地址<i>登录</i>网站。这不会阻止你<i>连接</i>到网站，更无法从底层的协议层面进行屏蔽。即便你的地址已经被列入了黑名单，你应该仍能够通过ping/traceroute命令连同服务器。如果你不能连通服务器，那么问题的原因在别处。<br />\r\n<br />\r\n如果你的IP地址因某种原因错误地被我们屏蔽了，请联系我们。', '1', '8', '1');
INSERT INTO `faq` VALUES ('63', '63', '25', 'item', '你的ISP屏蔽了本站的地址', '首先，这一般不像你的ISP的所作所为。DNS域名解析以及/或者网络问题是常见的真凶。\r\n<br />\r\n对此我们无能为力。你应该联系你的ISP（或者换一个）。记住你仍然可以通过代理访问本站，参看此常见问题关于代理的部分。在这种情况下，代理是否匿名或者使用哪个监听端口都不重要了。<br />\r\n<br />\r\n注意，你的“可连接状态”将因此一直被列为“否”，因为此时Tracker服务器无法检查你的BT客户端接收连接的状态。', '1', '8', '2');
INSERT INTO `faq` VALUES ('65', '65', '25', 'item', '不妨试试这个', '用任何手段在<a class=\"faqlink\" href=\"forums.php\">论坛</a>发帖。通常情况下你能得到友善而有用的帮助。这里给你一些基本的指导：<ul>\r\n<li>确保你的问题的确不在这篇FAQ中。这样的发帖导致的结果就是返回这篇FAQ。</li>\r\n<li>在发帖之前，看看置顶。很多时候，还没有被我们的FAQ所收录的最新的信息都可以在那里被找到。</li>\r\n<li>帮助我们也就是帮助你自己。不要仅仅说“嘿我这里出问题了！！”提供一些详情，这样我们就不用猜测或者浪费时间来询问了。你使用的是什么客户端？什么操作系统？怎样的网络设置？如果发生了错误，是什么样的具体错误信息？有问题的种子文件是哪个？你所提供的信息越多，对你的帮助也就越容易，你的帖子也就更加容易得到回复。</li>\r\n<li>不需要说的是：保持礼貌。趾高气扬得命令别人帮助你很少会有用。</li></ul>', '1', '9', '1');
INSERT INTO `faq` VALUES ('66', '66', '25', 'item', '什么是\"由于分享率限制! 你最多同时下载 XXX 个资源\"错误？', '这是“最大连接数系统”。最大连接数系统用于限制那些分享率较低且下载量大于10GB的用户的最大同时下载数。<br /><br />\r\n规则如下: <br /><br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大连接数</td>\r\n	<td class=\"embedded\" width=\"40\">1</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">1.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大连接数</td>\r\n	<td class=\"embedded\" width=\"40\">2</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">2.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大连接数</td>\r\n	<td class=\"embedded\" width=\"40\">3</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">3.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大连接数</td>\r\n	<td class=\"embedded\" width=\"40\">4</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率大于</td>\r\n	<td class=\"embedded\" width=\"40\">3.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大连接数</td>\r\n	<td class=\"embedded\" width=\"40\">无限制</td>\r\n</tr>\r\n</table>\r\n<br />\r\n无论何时，同时的上传数不设限。 <br />\r\n<br /><br />\r\n你可以在任意时间察看自己的连接数，该信息在页面顶端信息栏中被列出。', '1', '5', '12');
INSERT INTO `faq` VALUES ('67', '67', '25', 'item', '什么是密钥系统？它是怎么工作的？', '密钥系统在BT客户端连接Tracker服务器时起到验证身份的作用。每一个用户都有一个系统随机生成的密钥。当用户下载某个种子文件时，他的私人密钥被添加到种子文件的Tracker服务器URL中。通过这种方式，你可以在家中或者办公室使用不同的IP来做种某个文件。\r\n\r\n', '0', '5', '13');
INSERT INTO `faq` VALUES ('68', '68', '25', 'item', '“Unknown passkey”这错误是咋回事？', '首先，如果你不是我们的注册用户，将会发生这个错误。其次，有可能你没有在登录状态下从我们的网页里下载种子文件。如果是这两种情况，只要注册一个帐号或者登录后下载种子文件就可以了。<br />\r\n另外，当你注册了一个新用户并且开始第一次下载的时候，或者你刚刚重置了你的密钥时，也可能出现这个错误。原因是系统并非实时检查密钥的改变。如果是因为这个原因，那么就让种子任务等一会儿，最后一定能收到Tracker服务器发回的成功信息。', '1', '5', '14');
INSERT INTO `faq` VALUES ('69', '69', '25', 'item', '什么时候我需要重置我的密钥?', '<ul><li> 如果你的密钥被泄漏，且别的用户正在使用这个密钥（即使用你的帐户）下载文件。在这种情况下，你能在你的详情页面看到你并未下载或上传的种子。</li>\r\n<li>当你的客户端崩溃，或者你的连接并没有正常被终止。在这样的情况下，就算你已经关闭了你的客户端，你仍然在你的详情页面看到正在上传/下载的记录。通常情况下这些“冗余种子”将在30分钟之内被自动清除，但是如果你马上继续你的下载而服务器又提示“You already are downloading the same torrent”的错误，那么你需要重置你的密钥，然后重新下载种子文件，之后继续下载过程。 </li></ul>', '1', '5', '15');
INSERT INTO `faq` VALUES ('70', '70', '25', 'item', 'DHT是什么？为什么一定要关闭这个功能？', 'DHT必须从你的客户端被禁止。DHT可能导致你的数据被错误地记录，可以视为一种作弊行为。任何使用DHT的用户将因作弊而被系统禁止。<br />\r\n幸运的是，目前Tracker服务器会自动分析用户上传的种子文件，强制去除DHT的支持。这也是为什么种子发布者必须重新下载种子才能正常做种的原因之一。', '0', '5', '16');
INSERT INTO `faq` VALUES ('71', '71', '25', 'categ', 'How can I help translate the site language into my native language?', '', '0', '0', '8');
INSERT INTO `faq` VALUES ('72', '72', '25', 'item', 'What skills do I need to do the translation?', 'Translate the site into another language is quite easy. You needn\'t be skilled in PHP or dynamic website design. In fact, all you need is proficient understanding of English (the default site language) and the language you plan to translate into. Maybe some basic knowledge in HTML would help.<br /><br />\r\nMoreover, we give a detailed tutorial on how to do the translation <a href=\"#73\" class=\"faqlink\"><b>HERE</b></a>. And our coders would be more than pleased to answer the questions you may encounter.<br /><br />\r\nTranslate the whole site into another language would take estimated 10 hours. And extra time is needed to maintain the translation when site code is updated.<br /><br />\r\nSo, if you think you could help, feel free to <a class=\"faqlink\" href=\"contactstaff.php\"><b>CONTACT US</b></a>. Needless to say, you would be rewarded.', '1', '71', '1');
INSERT INTO `faq` VALUES ('73', '73', '25', 'item', 'The translation tutorial', '<ul>\r\n<li>How does multi-language work?<br />\r\nCurrently we use language files to store all the static words that a user can see on web pages. <br />\r\nEvery php code file has a corresponding language file for a certain language. And we named the language file \'lang_\' plus the filename of the php code file. i.e. the language file of the php code file \'details.php\' would be \'lang_details.php\'. <br />\r\nWe has some mechanism in php codes to read the exact language files of user\'s preferred language, and you shouldn\'t worry about that.<br /></li>\r\n<li>What\'s in language files?<br />\r\nIn a language file is an array of strings. These strings contain all the static words that a user can see on web pages. When we need to say some words on a php code file, we call for a string in the array. And the output of the php code file, that is what users see on the web pages, would show the value of the string.<br />\r\nSounds dizzying? Well, you need not care about all these. All you gotta do is translate the values of the strings in the language files into another language. <b>Let\'s see an example</b>:<br /><br />\r\nThe following is the content of the English language file \'lang_users.php\', which works for the php code file \'users.php\'. <br /><br />\r\n<img src=\"pic/langfileeng.png\" alt=\"langfileeng\" /><br />\r\nIf you wanna translate it into Simplified Chinese, all you need is edit the file into this:<br />\r\n<img src=\"pic/langfilechs.png\" alt=\"langfilechs\" /><br />\r\nSee, in every line, the left part, that is before <i>=&gt;</i>, is the name of a string, which you shouldn\'t touch. All you need to is translate the right part, after <i>=&gt;</i>, which is the value of the string, into another language.<br />\r\nSometimes you need to look at the corresponding web pages to get the context meaning of some words.<br /></li>\r\n<li>Sounds easy? See what do you need to do.<br />\r\nIf you feel like to help us, <a class=\"faqlink\" href=\"aboutnexus.php#contact\"><b>CONTACT US</b></a> and we will send you a pack of the English language files (or any other available language if you prefer). Received it, you can start translating the value of strings (which is in English), into another language. It should take you several hours to do the whole work. After this, send back the translated language files to us.<br />\r\nIf no bugs or hacking codes are found in testing, we would put the new language into work.<br />\r\nSometimes the language files need to be updated, typically adding new strings, when site codes are updated. If you feel like it, you can help maintain the language files.<br /></li>\r\n<li><font color=\"red\"><b>IMPORTANT</b></font><br />\r\nThe text of language files must be encoded in UTF-8. When saving files, be sure to set the character encoding to UTF-8. Otherwise mojibake may happen.</li></ul>', '1', '71', '2');
INSERT INTO `faq` VALUES ('74', '74', '25', 'item', '为什么我的磁盘还有充足的空间，客户端却提示磁盘剩余空间不足？', '很可能是因为你的磁盘分区的文件系统为FAT32，该文件系统不支持大于4GB的单个文件。如果你使用的是Windows系统，你可以在磁盘的属性中查看其文件系统信息。你可以将磁盘文件系统转换成更高级的NTFS来解决该问题。<br />\r\n你可以在命令行窗口使用convert命令将FAT32无损转成NTFS文件系统格式。<br /><br />\r\n<b>命令说明</b>\r\nCONVERT volume /FS:NTFS [/V] [/CvtArea:filename] [/NoSecurity] [/X]<br />\r\nvolume     指定驱动器号(后面跟一个冒号)、装载点或卷名。<br />\r\n/FS:NTFS   指定要被转换成 NTFS 的卷。<br />\r\n/V       指定 Convert 应该用详述模式运行。<br />\r\n/CvtArea:filename       将根目录中的一个接续文件指定为NTFS 系统文件的占位符。<br />\r\n/NoSecurity       指定每个人都可以访问转换的文件和目录的安全设置。<br />\r\n/X       如果必要，先强行卸载卷。该卷的所有打开的句柄则无效。 <br /><br />\r\n<b>简单说</b><br />：\r\n打开 命令提示符窗口。<br />\r\n在命令提示符窗口，请键入：<br />\r\nconvert drive_letter:/fs:ntfs<br />\r\n例如：转换D盘为NTFS，可输入convert D:/fs:ntfs', '1', '5', '17');
INSERT INTO `faq` VALUES ('374', '74', '28', 'item', '為什么我的磁碟還有充足的空間，用戶端卻輔助說明磁碟剩餘空間不足？', '很可能是因為你的磁碟割區的檔案系統為FAT32，該檔案系統不支援大于4GB的單個檔案。如果你使用的是Windows系統，你可以在磁碟的屬性中檢視其檔案系統資訊。你可以將磁碟檔案系統轉換成更進階的NTFS來解決該問題。<br />\r\n你可以在指令行視窗使用convert指令將FAT32無損轉成NTFS檔案系統格式。<br /><br />\r\n<b>指令說明</b>\r\nCONVERT volume /FS:NTFS [/V] [/CvtArea:filename] [/NoSecurity] [/X]<br />\r\nvolume     指定磁碟機號(后面跟一個冒號)、裝載點或卷名。<br />\r\n/FS:NTFS   指定要被轉換成 NTFS 的卷。<br />\r\n/V       指定 Convert 應該用詳述型態執行。<br />\r\n/CvtArea:filename       將根目錄中的一個接續檔案指定為NTFS 系統檔案的占位符。<br />\r\n/NoSecurity       指定每個人都可以存取轉換的檔案和目錄的安全設定。<br />\r\n/X       如果必要，先強行卸載卷。該卷的所有開啟的控點則無效。 <br /><br />\r\n<b>簡單說</b><br />：\r\n開啟 指令輔助說明符視窗。<br />\r\n在指令輔助說明符視窗，請鍵入：<br />\r\nconvert drive_letter:/fs:ntfs<br />\r\n例如：轉換D槃為NTFS，可匯入convert D:/fs:ntfs', '1', '5', '17');
INSERT INTO `faq` VALUES ('368', '68', '28', 'item', '“Unknown passkey”這錯誤是咋回事？', '首先，如果你不是我們的註冊用戶，將會發生這個錯誤。其次，有可能你沒有在登入狀態下從我們的網頁裡下載種子檔案。如果是這兩種情況，只要註冊一個帳號或者登入后下載種子檔案就可以了。<br />\r\n另外，當你註冊了一個新用戶并且開始第一次下載的時候，或者你剛剛重置了你的加密鍵時，也可能出現這個錯誤。原因是系統并非實時檢查加密鍵的改變。如果是因為這個原因，那么就讓種子工作等一會兒，最后一定能收到Tracker伺服器發回的成功資訊。', '1', '5', '14');
INSERT INTO `faq` VALUES ('369', '69', '28', 'item', '什么時候我需要重置我的加密鍵?', '<ul><li> 如果你的加密鍵被泄漏，且別的用戶正在使用這個加密鍵（即使用你的帳戶）下載檔案。在這種情況下，你能在你的詳情頁面看到你并未下載或上傳的種子。</li>\r\n<li>當你的用戶端崩潰，或者你的連線并沒有正常被終止。在這樣的情況下，就算你已經關閉了你的用戶端，你仍然在你的詳情頁面看到正在上傳/下載的記錄。通常情況下這些“多餘種子”將在30分鐘之內被自動清除，但是如果你馬上繼續你的下載而伺服器又輔助說明“You already are downloading the same torrent”的錯誤，那么你需要重置你的加密鍵，然后重新下載種子檔案，之后繼續下載過程。 </li></ul>', '1', '5', '15');
INSERT INTO `faq` VALUES ('370', '70', '28', 'item', 'DHT是什么？為什么一定要關閉這個功能？', 'DHT必須從你的用戶端被禁止。DHT可能導致你的資料被錯誤地記錄，可以視為一種作弊行為。任何使用DHT的用戶將因作弊而被系統禁止。<br />\r\n幸運的是，目前Tracker伺服器會自動解析用戶上傳的種子檔案，強制去除DHT的支援。這也是為什么種子發布者必須重新下載種子才能正常做種的原因之一。', '1', '5', '16');
INSERT INTO `faq` VALUES ('371', '71', '28', 'categ', 'How can I help translate the site language into my native language?', '', '1', '0', '8');
INSERT INTO `faq` VALUES ('372', '72', '28', 'item', 'What skills do I need to do the translation?', 'Translate the site into another language is quite easy. You needn\'t be skilled in PHP or dynamic website design. In fact, all you need is proficient understanding of English (the default site language) and the language you plan to translate into. Maybe some basic knowledge in HTML would help.<br /><br />\r\nMoreover, we give a detailed tutorial on how to do the translation <a href=\"#73\" class=\"faqlink\"><b>HERE</b></a>. And our coders would be more than pleased to answer the questions you may encounter.<br /><br />\r\nTranslate the whole site into another language would take estimated 10 hours. And extra time is needed to maintain the translation when site code is updated.<br /><br />\r\nSo, if you think you could help, feel free to <a class=\"faqlink\" href=\"contactstaff.php\"><b>CONTACT US</b></a>. Needless to say, you would be rewarded.', '1', '71', '1');
INSERT INTO `faq` VALUES ('373', '73', '28', 'item', 'The translation tutorial', '<ul>\r\n<li>How does multi-language work?<br />\r\nCurrently we use language files to store all the static words that a user can see on web pages. <br />\r\nEvery php code file has a corresponding language file for a certain language. And we named the language file \'lang_\' plus the filename of the php code file. i.e. the language file of the php code file \'details.php\' would be \'lang_details.php\'. <br />\r\nWe has some mechanism in php codes to read the exact language files of user\'s preferred language, and you shouldn\'t worry about that.<br /></li>\r\n<li>What\'s in language files?<br />\r\nIn a language file is an array of strings. These strings contain all the static words that a user can see on web pages. When we need to say some words on a php code file, we call for a string in the array. And the output of the php code file, that is what users see on the web pages, would show the value of the string.<br />\r\nSounds dizzying? Well, you need not care about all these. All you gotta do is translate the values of the strings in the language files into another language. <b>Let\'s see an example</b>:<br /><br />\r\nThe following is the content of the English language file \'lang_users.php\', which works for the php code file \'users.php\'. <br /><br />\r\n<img src=\"pic/langfileeng.png\" alt=\"langfileeng\" /><br />\r\nIf you wanna translate it into Simplified Chinese, all you need is edit the file into this:<br />\r\n<img src=\"pic/langfilechs.png\" alt=\"langfilechs\" /><br />\r\nSee, in every line, the left part, that is before <i>=&gt;</i>, is the name of a string, which you shouldn\'t touch. All you need to is translate the right part, after <i>=&gt;</i>, which is the value of the string, into another language.<br />\r\nSometimes you need to look at the corresponding web pages to get the context meaning of some words.<br /></li>\r\n<li>Sounds easy? See what do you need to do.<br />\r\nIf you feel like to help us, <a class=\"faqlink\" href=\"aboutnexus.php#contact\"><b>CONTACT US</b></a> and we will send you a pack of the English language files (or any other available language if you prefer). Received it, you can start translating the value of strings (which is in English), into another language. It should take you several hours to do the whole work. After this, send back the translated language files to us.<br />\r\nIf no bugs or hacking codes are found in testing, we would put the new language into work.<br />\r\nSometimes the language files need to be updated, typically adding new strings, when site codes are updated. If you feel like it, you can help maintain the language files.<br /></li>\r\n<li><font color=\"red\"><b>IMPORTANT</b></font><br />\r\nThe text of language files must be encoded in UTF-8. When saving files, be sure to set the character encoding to UTF-8. Otherwise mojibake may happen.</li></ul>', '1', '71', '2');
INSERT INTO `faq` VALUES ('362', '62', '28', 'item', '也許是因為我的IP位址被列入黑名單了？', '這個網站有屏蔽被禁用戶或攻擊者的IP位址的功能。該功能在Apache/PHP層面上起作用，且只能屏蔽從這些位址<i>登入</i>網站。這不會阻止你<i>連線</i>到網站，更無法從底層的協定層面進行屏蔽。即便你的位址已經被列入了黑名單，你應該仍能夠通過ping/traceroute指令連同伺服器。如果你無法連通伺服器，那么問題的原因在別處。<br />\r\n<br />\r\n如果你的IP位址因某種原因錯誤地被我們屏蔽了，請聯繫我們。', '1', '8', '1');
INSERT INTO `faq` VALUES ('363', '63', '28', 'item', '你的ISP屏蔽了本站的位址', '首先，這一般不像你的ISP的所作所為。DNS域名解析以及/或者網路問題是常見的真凶。\r\n<br />\r\n對此我們無能為力。你應該聯繫你的ISP（或者換一個）。記住你仍然可以通過代理存取本站，參看此常見問題關于代理的部分。在這種情況下，代理是否匿名或者使用哪個監聽通訊埠都不重要了。<br />\r\n<br />\r\n注意，你的“可連線狀態”將因此一直被列為“否”，因為此時Tracker伺服器無法檢查你的BT用戶端接收連線的狀態。', '1', '8', '2');
INSERT INTO `faq` VALUES ('365', '65', '28', 'item', '不妨試試這個', '用任何手段在<a class=\"faqlink\" href=\"forums.php\">論壇</a>發帖。通常情況下你能得到友善而有用的輔助說明。這裡給你一些基本的指導：<ul>\r\n<li>確保你的問題的確不在這篇FAQ中。這樣的發帖導致的結果就是傳回這篇FAQ。</li>\r\n<li>在發帖之前，看看置頂。很多時候，還沒有被我們的FAQ所收錄的最新的資訊都可以在那裡被找到。</li>\r\n<li>輔助說明我們也就是輔助說明你自己。不要僅僅說“嘿我這裡出問題了！！”提供一些詳情，這樣我們就不用猜測或者浪費時間來詢問了。你使用的是什么用戶端？什么作業系統？怎樣的網路設定？如果發生了錯誤，是什么樣的具體錯誤資訊？有問題的種子檔案是哪個？你所提供的資訊越多，對你的輔助說明也就越容易，你的帖子也就更加容易得到回覆。</li>\r\n<li>不需要說的是：保持禮貌。趾高氣揚得指令別人輔助說明你很少會有用。</li></ul>', '1', '9', '1');
INSERT INTO `faq` VALUES ('366', '66', '28', 'item', '什么是\"Your slot limit is reached! You may at most download xx torrents at the same time\"錯誤？', '這是“最大連線數系統”。最大連線數系統用于限制那些分享率較低且下載量大于10GB的用戶的最大同時下載數。<br /><br />\r\n規則如下: <br /><br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.5</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大連線數</td>\r\n	<td class=\"embedded\" width=\"40\">1</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.65</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大連線數</td>\r\n	<td class=\"embedded\" width=\"40\">2</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.8</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大連線數</td>\r\n	<td class=\"embedded\" width=\"40\">3</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大連線數</td>\r\n	<td class=\"embedded\" width=\"40\">4</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率大于</td>\r\n	<td class=\"embedded\" width=\"40\">0.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">最大連線數</td>\r\n	<td class=\"embedded\" width=\"40\">無限制</td>\r\n</tr>\r\n</table>\r\n<br />\r\n無論何時，同時的上傳數不設限。但是如果你目前的下載數已達到了你的最大連線數，這時開啟新的做種工作，你也會收到同樣的錯誤輔助說明。在這種情況下，你必須先關閉一個下載工作，然后開啟所有的上傳工作，然后繼續剛才關閉的下載工作。因為當你的連線數被占滿，系統將不加驗證直接拒絕任何下載或上傳的要求。 <br />\r\n<br /><br />\r\n你可以在任意時間察看自己的連線數，該資訊在頁面頂端資訊欄中被列出。', '1', '5', '12');
INSERT INTO `faq` VALUES ('367', '67', '28', 'item', '什么是加密鍵系統？它是怎么工作的？', '加密鍵系統在BT用戶端連線Tracker伺服器時起到驗證身份的作用。每一個用戶都有一個系統隨機生成的加密鍵。當用戶下載某個種子檔案時，他的私人加密鍵被添加到種子檔案的Tracker伺服器URL中。通過這種方式，你可以在家中或者辦公室使用不同的IP來做種某個檔案。\r\n\r\n', '1', '5', '13');
INSERT INTO `faq` VALUES ('301', '1', '28', 'categ', '網站資訊', '', '1', '0', '1');
INSERT INTO `faq` VALUES ('302', '2', '28', 'categ', '用戶資訊', '', '1', '0', '2');
INSERT INTO `faq` VALUES ('303', '3', '28', 'categ', '資料統計', '', '1', '0', '3');
INSERT INTO `faq` VALUES ('304', '4', '28', 'categ', '發布', '', '1', '0', '4');
INSERT INTO `faq` VALUES ('305', '5', '28', 'categ', '下載', '', '1', '0', '5');
INSERT INTO `faq` VALUES ('306', '6', '28', 'categ', '我該怎樣提升下載速度？', '', '1', '0', '6');
INSERT INTO `faq` VALUES ('307', '7', '28', 'categ', '我的網路提供商（ISP）使用了透通代理。我應該怎么做？', '', '1', '0', '7');
INSERT INTO `faq` VALUES ('308', '8', '28', 'categ', '為什么我連不上？難道我被網站屏蔽了？', '', '1', '0', '8');
INSERT INTO `faq` VALUES ('309', '9', '28', 'categ', '如果從這裡找不到我的問題的解答，我該怎么辦？', '', '1', '0', '9');
INSERT INTO `faq` VALUES ('310', '10', '28', 'item', '到底什么是BT（Bittorrent）？我要如何才能弄到這類程式？', '參看<a class=\"faqlink\" href=\"http://www.btfaq.com/\">Brian的BitTorrent FAQ及指導</a>。', '1', '1', '1');
INSERT INTO `faq` VALUES ('311', '11', '28', 'item', '我們捐出來的錢上哪兒去了？', '所有捐助的錢用于維護伺服器的費用。', '1', '1', '2');
INSERT INTO `faq` VALUES ('312', '12', '28', 'item', '我從哪裡可以搞到來源碼的拷貝？', '這個Tracker使用的是NexusPHP的程式碼。程式碼抓取事宜，請看<a class=\"faqlink\" href=\"aboutnexus.php\">這裡</a>。<br />\r\nNexusPHP的程式碼是根據TBSource的源碼改寫的。TBDev網站，Tracker來源碼以及社區論壇都在這裡：<a class=\"faqlink\" href=\"http://www.tbdev.net/\">TBDev.net</a>。', '1', '1', '3');
INSERT INTO `faq` VALUES ('313', '13', '28', 'item', '我註冊了一個賬號但是卻沒有收到驗證郵件！', '這很有可能是Tracker所在的伺服器網路出現了問題。你可以填寫<a href=\"confirm_resend.php\" class=\"faqlink\">這個表格</a>讓伺服器重發驗證郵件。<br />\r\n通常沒有得到確認的註冊帳戶會在24小時后被移除，所以你可以在第二天重試。需要注意的是，如果你第一次沒有收到確認信，第二次有很大的可能仍然無法收到確認信，所以換一個E-mail位址是一個不錯的主意。', '1', '2', '1');
INSERT INTO `faq` VALUES ('314', '14', '28', 'item', '我忘記了我的用戶名/密碼了，能幫我找回來么？', '請填寫<a class=\"faqlink\" href=\"recover.php\">這個表單</a>，我們將把登入詳情發還給你。', '1', '2', '2');
INSERT INTO `faq` VALUES ('315', '15', '28', 'item', '我可以給我的賬號改個名字么？', '我們并不支援給賬號改名。', '1', '2', '3');
INSERT INTO `faq` VALUES ('316', '16', '28', 'item', '你可以移除一個（已確認的）賬號么？', '我們一般不提供該類服務，所以不要要求移除任何一個被你邀請的帳號。', '1', '2', '4');
INSERT INTO `faq` VALUES ('317', '17', '28', 'item', '那么，什么是我的分享率（Ratio）？', '就在頁面功能割區的下面。<br />\r\n<br />\r\n<img src=\"pic/ratio.png\" alt=\"ratio\" />\r\n<br />\r\n<br />\r\n區分你的整體分享率和獨立分享率是很重要的。整體分享率關注的是自從你加入網站以來，賬號的整體上傳與下載量。而獨立分享率則針對每一個你正在下載或做種的檔案。\r\n<br />\r\n<br />\r\n你可能看到兩種象徵式來代替數字：\"Inf.\"，這個是無限（Infinity）的縮寫，意思是你的下載量為0位元組，而上傳量則是任意一個非零的值(上傳量/下載量=無窮大)；\"---\"，應該被視為“不可用”，這說明了你的下載量和上傳量都是0位元組。(上傳量/下載量=0/0 這是一個不確定的量)。\r\n', '1', '2', '5');
INSERT INTO `faq` VALUES ('318', '18', '28', 'item', '為什么我的IP位址察看在我的個人資訊頁面上？', '只有你自己和網站Moderator及以上的管理員可以看到你的IP位址和Email。普通用戶是看不到這些資訊的。', '1', '2', '6');
INSERT INTO `faq` VALUES ('321', '21', '28', 'item', '為什么我的“可連線”是“否”？（以及為什么我需要關注這個問題？）', 'Tracker伺服器認為你在防火牆后，或者在NAT橋接后，并且無法接收其他Peer的連線要求。\r\n<br />\r\n<br />\r\n這意味着其他的大批Peer無法連線到你，只能由你連線到他們。更糟糕的情況是，如果兩個Peer都處于這樣的狀態，他們將完全無法連線到對方。這對于整體速度有着非常不利的影響。\r\n<br />\r\n<br />\r\n對于這個問題，有以下解決方式：對于防火牆，開啟用于接收連線的通訊埠（即你在BT用戶端中定義的通訊埠）；對于NAT，你需要配置NAT伺服器使用Basic NAT方式而不是NAPT（不同的路線有着不同的執行方式。翻閱你的路線文件或客服論壇。你也可以在<a class=\"faqlink\" href=\"http://portforward.com/\">PortForward</a>找到關于此問題的大量資訊）。\r\n\r\n\r\n\r\n\r\n\r\n', '1', '2', '9');
INSERT INTO `faq` VALUES ('322', '22', '28', 'item', '不同的用戶等級代表了什么含義？', '<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n<td class=\"embedded\" width=\"200\" valign=\"top\">&nbsp; <b class=\"Peasant_Name\">Peasant</b></td>\r\n<td class=\"embedded\" width=\"5\">&nbsp;</td>\r\n<td class=\"embedded\"> 被降級的用戶，他們有30天時間來提升分享率，否則他們會被踢。無法發表趣味盒內容；無法申請友情鏈結；無法上傳字幕。\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">新用戶的預設級別。只能在每周六中午12點至每周日晚上11點59分發布種子。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"PowerUser_Name\">Power User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">得到一個邀請名額；可以直接發布種子；可以檢視NFO文件；可以檢視用戶清單；可以要求續種； 可以傳送邀請； 可以檢視排行榜；可以檢視其他用戶的種子曆史(如果用戶隱私等級未設定為\"強\")； 可以移除自己上傳的字幕。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"EliteUser_Name\">Elite User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\"><b class=\"EliteUser_Name\">Elite User</b>及以上用戶封存賬號后不會被移除。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"CrazyUser_Name\">Crazy User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">得到兩個邀請名額；可以在做種/下載/發布的時候選取匿名型態。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"InsaneUser_Name\">Insane User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">可以檢視普通日誌。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VeteranUser_Name\">Veteran User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">得到三個邀請名額；可以檢視其他用戶的評論、帖子曆史。<b class=\"VeteranUser_Name\">Veteran User</b>及以上用戶會永遠保留賬號。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"ExtremeUser_Name\">Extreme User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">可以更新過期的外部資訊；可以檢視Extreme User論壇。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"UltimateUser_Name\">Ultimate User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">得到五個邀請名額。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"NexusMaster_Name\">Nexus Master</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">得到十個邀請名額。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\"  valign=\"top\">&nbsp; <img class=\"star\" src=\"pic/trans.gif\" alt=\"Star\" /></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">為網站捐款的主。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VIP_Name\">貴賓(VIP)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">和<b class=\"NexusMaster_Name\">Nexus Master</b>擁有相同許可權并被認為是精英成員。免除自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">其他</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">自訂等級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Retiree_Name\">養老族(Retiree)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">退休后的管理組成員。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Uploader_Name\">發布員(Uploader)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">專注的發布者。免除自動降級；可以檢視匿名用戶的真實身份。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Moderator_Name\">總版主(Moderator)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">可以檢視管理組郵箱、舉報郵箱；管理趣味盒內容、投票內容；可以編輯或移除任何發布的種子；可以管理候選；可以管理論壇帖子、用戶評論；可以檢視機密日誌；可以移除任何字幕；可以管理日誌中的程式碼、史冊；可以檢視用戶的邀請記錄；可以管理用戶帳號的一般資訊。<b>無法</b>管理友情鏈結、最近訊息、論壇版塊；<b>無法</b>將種子設為置頂或促銷；<b>無法</b>檢視用戶IP或Email等機密資訊；無法移除賬號。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Administrator_Name\">管理員(Administrator)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">除了無法改變網站設定、管理捐贈外，可以做任何事。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"SysOp_Name\">維護開發員(Sysop)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">網站開發/維護人員，可以改變網站設定，無法管理捐贈。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"StaffLeader_Name\">主管(Staff Leader)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">網站主管，可以做任何事。</td>\r\n</tr>\r\n</table>', '1', '2', '10');
INSERT INTO `faq` VALUES ('323', '23', '28', 'item', '提升和降級又是怎樣被執行的呢？', '<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n<td class=\"embedded\" width=\"200\" valign=\"top\">&nbsp; <b class=\"Peasant_Name\">Peasant</b></td>\r\n<td class=\"embedded\" width=\"5\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">當以下情況時將被自動降至本級：<br />\r\n1.如果你已經下載了超過50GB，你應該有大于0.4的分享率。<br />\r\n2.如果你已經下載了超過100GB，你應該有大于0.5的分享率。<br />\r\n3.如果你已經下載了超過200GB，你應該有大于0.6的分享率。<br />\r\n4.如果你已經下載了超過400GB，你應該有大于0.7的分享率。<br />\r\n5.如果你已經下載了超過800GB，你應該有大于0.8的分享率。</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"PowerUser_Name\">Power User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少4周，并且下載至少50G，分享率大于1.05。<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于0.95，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"EliteUser_Name\">Elite User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少8周，并且下載至少120G，分享率大于1.55。\r\n<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于1.45，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"CrazyUser_Name\">Crazy User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少15周，并且下載至少300G，分享率大于2.05。\r\n<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于1.95，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"InsaneUser_Name\">Insane User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少25周，并且下載至少500G，分享率大于2.55。<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于2.45，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VeteranUser_Name\">Veteran User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少40周，并且下載至少750G，分享率大于3.05。<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于2.95，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"ExtremeUser_Name\">Extreme User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少60周，并且下載至少1TB，分享率大于3.55。<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于3.45，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"UltimateUser_Name\">Ultimate User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少80周，并且下載至少1.5TB，分享率大于4.05。<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于3.95，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"NexusMaster_Name\">Nexus Master</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">必須註冊至少100周，并且下載至少3TB，分享率大于4.55。<br />\r\n當條件符合時將被自動提升。注意，無論何時，如果你的分享率低于4.45，你將自動降級。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <img class=\"star\" src=\"pic/trans.gif\" alt=\"Star\" /></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">只需捐款，詳見<a class=\"faqlink\" href=\"donate.php\">這裡</a>。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VIP_Name\">貴賓(VIP)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">由管理員仔細斟酌后配置給他們認為對于網站某方面有特殊貢獻的用戶。<br />\r\n（任何索取貴賓等級的要求將被自動無視）</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">其他</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">用戶使用魔力值兌換，或由管理員仔細斟酌后授權。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Retiree_Name\">養老族(Retiree)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">由管理員授予。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Uploader_Name\">發布員(Uploader)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">由管理員配置(參見\'發布\'部分以了解詳情)。</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Moderator_Name\">總版主(Moderator)</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">無需多問，我們會找到你的！</td>\r\n</tr>\r\n</table>', '1', '2', '11');
INSERT INTO `faq` VALUES ('325', '25', '28', 'item', '為什么我的朋友無法加入？', '用戶數目有所限制（你可以檢視“首頁-&gt;網站資料-&gt;上限”）。當達到那個數目時，我們會停止接受新成員。<br />\r\n由于非活躍用戶(長期不使用賬號的用戶)引起賬號資源浪費，因此我們將清理該部分用戶，為其他想加入用戶騰出空間。<br />\r\n關于非活躍用戶清理規則，參照<a class=\"faqlink\" href=\"rules.php\">規則</a>。', '1', '2', '1');
INSERT INTO `faq` VALUES ('326', '26', '28', 'item', '怎樣自訂頭像？', '首先，找一個你喜歡的圖片，當然了它無法違反我們的<a class=\"faqlink\" href=\"rules.php\">規則</a>。然后你要找一個存放它的地方，比方說我們自己的<a class=\"faqlink\" href=\"bitbucket-upload.php\">上傳器</a>。出于伺服器負載的考慮，我們更希望你將圖片上傳到別的網站，然后將其URL黏貼到你的<a class=\"faqlink\" href=\"usercp.php?action=personal\">控制面板</a>的頭像URL部分。 <br />\r\n<br />\r\n請不要為了僅僅測試頭像而發帖。如果一切順利，你將在你的詳情頁面看到它。', '1', '2', '1');
INSERT INTO `faq` VALUES ('327', '27', '28', 'item', '最常見的資料未能得到更新的原因', '<ul>\r\n<li>伺服器超載/未回應。只要嘗試着保持階段作業直到伺服器回復回應(不建議連續手動清除，這樣會加重伺服器負載)。</li>\r\n<li>你正在使用不穩定的用戶端。如果你想要使用測試版或者CVS版本，你需要自己承擔由此帶來的風險。</li>\r\n</ul>', '1', '3', '1');
INSERT INTO `faq` VALUES ('328', '28', '28', 'item', '最佳的嘗試', '<ul>\r\n<li>如果你目前正下載/上傳的種子并不在你的用戶詳情頁面中，你可以等一會或者強制進行手動更新。</li>\r\n<li>確保你正確地關閉了用戶端軟體，否則Tracker伺服器無法收到\"event=completed\"的訊號。</li>\r\n<li>如果Tracker伺服器掛了，不要停止上傳。只要在你結束用戶端之前伺服器回復工作，所有的資料都會得到正確地更新。</li>\r\n</ul>', '1', '3', '2');
INSERT INTO `faq` VALUES ('329', '29', '28', 'item', '我可以任意選取Bittorrent用戶端軟體么？', '根據<a class=\"faqlink\" href=\"aboutnexus.php\">NexusPHP</a>對常見BitTorrent用戶端的測試，目前本站Tracker<b>只允許</b>使用以下的BitTorrent用戶端軟體。<br />\r\n<a class=\"faqlink\" href=\"aboutnexus.php\">NexusPHP</a>的測試報告可<a class=\"faqlink\" href=\"http://www.nexusphp.com/wiki/%E5%AE%A2%E6%88%B7%E7%AB%AF%E6%B5%8B%E8%AF%95%E6%8A%A5%E5%91%8A\">在此檢視</a>。\r\n<br />\r\n<b>Windows:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://www.utorrent.com\">uTorrent</a>: 1.6.1, 1.7.5, 1.7.6, 1.7.7, 1.8Beta(Build 10364), 2.0(Build 17624)及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://www.bittorrent.com\">BitTorrent</a>: 6.0.1, 6.0.2, 6.0.3及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://deluge-torrent.org\">Deluge</a>: 0.5.9.1, 1.1.6及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://rufus.sourceforge.net\">Rufus</a>: 0.6.9, 0.7.0及后續版本</li>\r\n</ul>\r\n<b>Linux:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://deluge-torrent.org\">Deluge</a>: 0.5.9.1, 1.1.6及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://rufus.sourceforge.net\">Rufus</a>: 0.6.9, 0.7.0及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://www.transmissionbt.com\">Transmission</a>: 1.21及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://libtorrent.rakshasa.no\">rTorrent</a>: 0.8.0（配合libtorrent 0.12.0或后續版本）及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://www.rahul.net/dholmes/ctorrent/\">Enhanced CTorrent</a>: 3.3.2及后續版本</li>\r\n</ul>\r\n<b>MacOS X:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://www.transmissionbt.com\">Transmission</a>: 1.21及后續版本</li>\r\n<li><a class=\"faqlink\" href=\"http://sourceforge.net/projects/bitrocket/\">BitRocket</a>: 0.3.3(32)及后續版本</li>\r\n</ul>\r\n<b>Symbian (僅供測試):</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://amorg.aut.bme.hu/projects/symtorrent\">SymTorrent</a>: 1.41及后續版本</li>\r\n</ul>\r\n<br />\r\n\r\n<b>以上用戶端在https支援方面</b>\r\n<ul>\r\n<li>uTorrent 1.61: 無法准確解析https的tracker, 同時在使用會將自己識別為uTorrent 1.5</li>\r\n<li>Rufus: 沒有https支援, 并且已經几年沒有繼續開發</li>\r\n<li>rtorrent: 需要手工設定SSL證書, 詳細資訊請自行查閱其官方網站說明</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n同時請儘量避免使用處于測試期的用戶端軟體, 如uTorrent 1.8.0B。\r\n\r\n為了從本站得到最好的下載體驗,我們高度建議<a class=\"faqlink\" href=\"http://www.utorrent.com/download.php\">uTorrent</a> 以及<a class=\"faqlink\" href=\"http://azureus.sourceforge.net/download.php\">Azureus</a>這兩個軟體的最新穩定版。', '1', '5', '3');
INSERT INTO `faq` VALUES ('330', '30', '28', 'item', '為什么我正在下載/做種的一個種子會在我的詳情頁面中被列出多次？', '如果因為某些原因(比方說死機，用戶端失去回應)你的用戶端非正常結束并且你又重新開啟它，它會被配置到一個全新的Peer ID, 這樣它察看為一個全新的種子。而舊的種子將永遠不會收到“event=completed”或“event=stopped”的訊號，因此將一直被列出直到Tracker清理逾時的Peer。 無視了它就可以了，它最后會消失的。', '1', '3', '4');
INSERT INTO `faq` VALUES ('331', '31', '28', 'item', '為什么我已經完成/取消的種子仍然在我的詳情頁面裡？', '有一些用戶端，比如說TorrentStorm和Nova Torrent，在取消或者完成一個工作的時候無法向Tracker伺服器正確傳送訊號。在那樣的情況下，Tracker伺服器將一直保持等待訊號的狀態（因此會一直列出種子的狀態為做種/下載的狀態）直到Tracker清理逾時的Peer。無視了它就可以了，它最后會消失的。', '1', '3', '5');
INSERT INTO `faq` VALUES ('333', '33', '28', 'item', '多IP（我可以從不同的電腦登入/下載嗎？）', '是的，目前Tracker伺服器支援單個用戶從任意個數的IP位址同時存取/下載。<br />\r\n然而，對于單種是有限制的。對于每個種子，最多允許3個做種的連線，最多只允許1個下載的連線（這意味着，對于某個種子你一次只能在一個地方下載）。', '1', '3', '1');
INSERT INTO `faq` VALUES ('336', '36', '28', 'item', '為什么我無法發布種子？', '請看<a class=\"faqlink\" href=\"rules.php\">規則</a>。', '1', '4', '1');
INSERT INTO `faq` VALUES ('337', '37', '28', 'item', '我需要滿足哪些條件才能加入發布小組呢？', '你所必須滿足的條件：\r\n<ul>\r\n<li>具有穩定的資源來源</li>\r\n<li>平均每周資源發布數量不少于5個</li>\r\n</ul>\r\n你必須確保發布的檔案符合以下特征:\r\n<ul>\r\n<li>不超過7天之前</li>\r\n<li>你必須要有做種的能力，或者可以確保至少有效供種24小時。</li>\r\n<li>你需要有至少達到2MBit的上傳頻寬。</li>\r\n</ul>\r\n如果你認為你符合以上條件，那么不要猶豫，<a class=\"faqlink\" href=\"contactstaff.php\">聯繫管理組</a>吧。<br />\r\n<b>記住！</b> 仔細填寫你的申請！確保申請中包含你的上傳速度以及你計划發布的內容的類別。<br />\r\n只有仔細填寫并且經過慎重考慮的申請才會納入我們的視野。', '1', '4', '2');
INSERT INTO `faq` VALUES ('338', '38', '28', 'item', '我可以發布你們這裡的種子到別的Tracker伺服器么？', '無法。我們是一個封閉的、限制用戶數的社區。只有註冊用戶才能夠使用我們的Tracker。將我們的種子檔案發布到其他Tracker伺服器是徒勞的，因為絕大多數嘗試下載這些檔案的人將無法連線到我們的伺服器。將我們的種子發布到其他Tracker只讓那裡的用戶惱怒（因為無法下載）并且對我們產生敵對情緒，所以這種行為是我們是無法容忍的。<br />\r\n<br />\r\n如果其他網站的管理員向我們舉報我們的種子被發布在他們的網站上，對此負責的用戶將因此被移出我們的社區。<br />\r\n<br />\r\n但是對于從我們這裡下載得到的檔案，你可以隨意操控它們（發布者明確說明為<b>獨占</b>的資源除外）。你可以制作另一個種子，寫入其他Tracker的位址，并發布到你喜歡的網站上。', '1', '4', '3');
INSERT INTO `faq` VALUES ('339', '39', '28', 'item', '下載來的檔案該怎么開啟？', '在這份<a class=\"faqlink\" href=\"formats.php\">指引</a>裡面找找看吧。', '1', '5', '1');
INSERT INTO `faq` VALUES ('340', '40', '28', 'item', '我下載了一部電影，但是不明白CAM/TS/TC/SCR是什么意思?', '在這份<a class=\"faqlink\" href=\"videoformats.php\">指引</a>裡面找找看吧。', '1', '5', '2');
INSERT INTO `faq` VALUES ('341', '41', '28', 'item', '為什么一個可用的種子忽然就消失了？', '以下原因都會導致這個現象的出現:<br />\r\n(<b>1</b>) 按照<a class=\"faqlink\" href=\"rules.php\">網站規則</a>，這個種子不符合規則已被移除。\r\n<br />\r\n(<b>2</b>) 發布者因為檔案存在問題而移除了它。一般來說，發布者會發布一個交替的版本的。<br />\r\n(<b>3</b>) 在長時間斷種后種子被自動移除了。', '1', '5', '3');
INSERT INTO `faq` VALUES ('342', '42', '28', 'item', '我該怎樣續傳檔案或者給一個檔案續種呢？', '開啟副檔名為.torrent的檔案，當你的用戶端軟體詢問儲存的目錄時，選取已經存在的檔案存放的目錄，它就能夠開始續傳/續種了。', '1', '5', '4');
INSERT INTO `faq` VALUES ('343', '43', '28', 'item', '為什么我的下載有時候停在99%?', '你所下載到的片段越多，搜尋擁有你所缺少的片段的同伴就將變得越困難。這就是為什么有時候在下載即將完成的時候，速度會變得非常慢，甚至完全停止了。只要耐心等候，或早或晚剩餘的部分一定能夠下載到的。', '1', '5', '5');
INSERT INTO `faq` VALUES ('344', '44', '28', 'item', '\"部分哈希驗證出錯\"這條資訊是什么意思？', 'BT的用戶端會檢查它所收到的資料的完整性。如果某一個片段在驗證中出錯，那么這個片段將被重新下載。偶爾的哈希驗證錯誤是非常常見的現象，不用擔心。<br />\r\n<br />\r\n有些用戶端有屏蔽向你傳送錯誤資料的其他用戶端的功能。如果有這個選項，最好開啟它。因為這樣可以保證如果某個同伴經常向你傳送錯誤的資料時，它將會被屏蔽。', '1', '5', '6');
INSERT INTO `faq` VALUES ('345', '45', '28', 'item', '100MB大小的種子，我怎么下了120MB的東西回來?', '參見哈希驗證失敗的那個問題。如果你的用戶端收到了錯誤的資料，那么它將會重新下載這一部分，因此總下載量有可能比種子大小略微大一些。確保“屏蔽傳送錯誤資料的用戶端”的那個選項被開啟了，這樣可以減少其餘的下載。', '1', '5', '7');
INSERT INTO `faq` VALUES ('346', '46', '28', 'item', '為什么我的用戶端的Tracker伺服器狀態出現\"Your ratio is too low! You need to wait xx h to start\"的錯誤？', '在<b>新</b>種子被上傳到Tracker伺服器之后，有一些用戶必須等一些時間才能開始下載。<br>\r\n這個延遲只會影響那些分享率較低且下載量大于10G的用戶。<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.4</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延遲</td>\r\n	<td class=\"embedded\" width=\"100\">24小時</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.5</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延遲</td>\r\n	<td class=\"embedded\" width=\"100\">12小時</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.6</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延遲</td>\r\n	<td class=\"embedded\" width=\"100\">6小時</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">分享率低于</td>\r\n	<td class=\"embedded\" width=\"40\">0.8</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">延遲</td>\r\n	<td class=\"embedded\" width=\"100\">3小時</td>\r\n</tr>\r\n</table>', '1', '5', '8');
INSERT INTO `faq` VALUES ('347', '47', '28', 'item', '為什么發生了這個錯誤？ \"Port xxxx is blacklisted\"?', '你的用戶端向Tracker伺服器報告它正在使用某個預設的BT協定通訊埠(6881-6889)或是任何其他常見P2P通訊埠來作為連線通訊埠。<br />\r\n<br />\r\n本站不允許這些通常被P2P協定預設使用的通訊埠。原因是目前ISP常常對這些通訊埠進行限速。<br />\r\n<br />\r\n被屏蔽的通訊埠如下：<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Direct Connect</td>\r\n	<td class=\"embedded\" width=\"100\">411 - 413</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">BitTorrent</td>\r\n	<td class=\"embedded\" width=\"100\">6881 - 6889</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Kazza</td>\r\n	<td class=\"embedded\" width=\"100\">1214</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Gnutella</td>\r\n	<td class=\"embedded\" width=\"100\">6346 - 6347</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Emule</td>\r\n	<td class=\"embedded\" width=\"100\">4662</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">WinMX</td>\r\n	<td class=\"embedded\" width=\"100\">6699</td>\r\n  </tr>\r\n</table>\r\n<br />\r\n要使用我們的Tracker伺服器，你必須配置你的用戶端使用未在上面列出的通訊埠範圍(從49152到65535都是不錯的選取，參看<a class=\"faqlink\" href=\"http://www.iana.org/assignments/port-numbers\">IANA</a>)。注意某些用戶端，如Azureus 2.0.7.0或更高版本，對所有的種子都使用同一通訊埠。而其他大多數用戶端為每一個種子開放一個通訊埠，你在選取通訊埠範圍應考慮到這個問題（一般來說通訊埠範圍小于10。設定一個過大的範圍并不一定有好處，而且可能有安全隱患)。 <br />\r\n<br />\r\n這些通訊埠是用于同伴間通訊的，而非用于用戶端連線到Tracker伺服器。因此這個改動并不會影響你使用其他Tracker伺服器（事實上，它甚至可能<i>加快</i>所有Tracker伺服器上種子的速度）。你的用戶端也仍然能夠連線到那些使用預設通訊埠的同伴。如果你的用戶端不支援自己自訂通訊埠，那么換一個吧。<br />\r\n<br />\r\n不要向我們詢問，或者在論壇裡面提問究竟應該選取什么通訊埠。我們的用戶選取的通訊埠越隨機，ISP就越難以捉摸清楚我們使用的通訊埠，從而無法對我們的通訊埠進行限速。如果我們只是簡單地規定一個範圍，那么ISP又會很快對那個範圍內的通訊埠進行限速的。<br />\r\n<br />\r\n最后還要說的是，記得在你的路線和/或防火牆上開啟你選取的通訊埠，如果你有這些東西的話。', '1', '5', '9');
INSERT INTO `faq` VALUES ('348', '48', '28', 'item', '那么這個呢？ “IO錯誤 - [錯誤號13] 許可被拒絕”？', '如果你只是想要解決這個問題的話，重新啟動你的電腦應該就可以了。否則的話，繼續讀下去。<br />\r\n<br />\r\nIO錯誤指的是匯入-匯出錯誤，這是一個檔案系統錯誤，而非來自我們的Tracker伺服器。當你的用戶端由于某些原因無法開啟種子中未下載完成的檔案時，這個錯誤就會發生。 通常原因是用戶端的兩個實例同時在執行：當上一次關閉用戶端時因為某種原因它沒有被真正關閉，從而始終在背景執行。因此檔案被鎖定，使得新的實例無法開啟這個檔案。<br />\r\n<br />\r\n另外一個不常出現的原因是因為老舊的FAT檔案系統。某些系統崩潰可能導致未下載完成的檔案損壞，接着就出現了這個錯誤。執行一次scandisk應該可以解決這個問題。注意，只有當你使用Windows 9X作業系統（只支援FAT檔案系統）或者在Windows NT/2000/XP中使用FAT檔案系統的時候才比對可能出現這個問題。NTFS檔案系統要健壯許多，不太可能出現這樣的問題。', '1', '5', '10');
INSERT INTO `faq` VALUES ('350', '50', '28', 'item', '不要馬上下載新發布的種子', '下載速度主要取決于上傳者/下載者比(SLR)。如果是種子是新發布的且非常受歡迎而SLR又很低的種子，下載速度低是常見的問題。<br />\r\n<br />\r\n請牢記你不喜歡低速下載。所以多<b>上傳</b>讓別人不用忍耐同樣的困擾。\r\n<br />\r\n<br />由其是當你的頻寬較窄時，不要馬上下載新發布的種子。最好的下載速度通常在一個種子生命周期的一半時出現，此時SLR達到最大值（不過，這時下載的缺點是你的上傳量不會很多。究竟如何平衡優點與缺點，取決于你自己)。', '1', '6', '1');
INSERT INTO `faq` VALUES ('351', '51', '28', 'item', '限制上傳速度', '上傳速度將從以下兩種方式顯著影響下載速度：\r\n<ul>\r\n    <li>Bittorrent的同伴傾向于回饋那些給它們提上傳的同伴。這就意味着如果A和B正在同時下載一個檔案，而A又在高速向B傳輸資料，那么B將會嘗試着回報A。因此高速上傳將導致高速下載。</li>\r\n\r\n    <li>由于TCP協定的工作方式，當A正從B下載某些東西的時候，A必須不停地向B傳送成功收到B所傳送來的資料的訊號（被稱為確認──ACK ── 某種“已收到”的資訊)。如果A沒有傳送ACK訊號，那么B將暫停向A傳送資料并且進入等候狀態。如果A正在全速上傳，很有可能沒有用來傳送ACK訊號的頻寬，因此ACK訊號被耽擱。在這種情況下，過高速度的上傳導致了低速的下載。</li>\r\n</ul>\r\n實際的效果是以上兩個原因的結合。上傳速度應該在保證ACK能正常傳送的前提下被設得儘量高。 <b>一個很好的實踐理論是保持上傳速度在理論上限的80%。</b>你也可以細細研究什么是最適合你的速度（同時也請記住高速上傳對于你的分享率很有輔助說明）。<br />\r\n<br />\r\n如果你正在執行一個以上的種子工作，你應該考慮的是全域上傳速度。某些用戶端能限制了全域上傳速度，其他的則能對每一個種子分別進行設定。了解你的用戶端。如果你正在使用你的電腦做別的某些應用（比方說上網或者從FTP拖東西），也需考慮一下它們對于全域上傳的影響。', '1', '6', '2');
INSERT INTO `faq` VALUES ('352', '52', '28', 'item', '限制同時連線數', '某些作業系統（例如Windows 9X）對于大量連線數支援不完善，甚至有可能因此而崩潰。也有一些家用路線（尤其當執行着NAT以及/或者開啟防火牆狀態檢查服務時）會因大量連線數而變得很慢或者崩潰。對于連線數沒有固定的最佳值，你可以試試看60或者100。記住這些連線數是累加的，所以如果你的用戶端執行了兩個階段作業，這兩個數字要加在一起。', '1', '6', '3');
INSERT INTO `faq` VALUES ('353', '53', '28', 'item', '限制同時上傳數', '上傳數難道和連線數有什么不一樣嗎？是的，兩者是不同的。連線數限制了你的用戶端所能對話以及/或者下載的同伴數。上傳數則限制了你的用戶端實際能上傳的同伴數。理想的數值一般要比連線數低許多，并且與你的物理頻寬高度相關。', '1', '6', '4');
INSERT INTO `faq` VALUES ('354', '54', '28', 'item', '那怎么辦？等待一會吧', '如我們在上面所解譯的，在BT下載過程中一個同伴更加傾向于回報那些上傳給它的同伴。當你開始一個新的下載工作時，你沒有檔案片斷提高給其他同伴，因此他們通常會無視你。這使得開始階段的下載非常緩慢，由其是當你所連線到的同伴只有很少是（或者沒有）做種者。一旦你獲得了一些能用于共用的檔案片斷，下載速度會有所改觀。', '1', '6', '5');
INSERT INTO `faq` VALUES ('355', '55', '28', 'item', '為什么在我下載的時候瀏覽網頁速度如此之慢？', '你的下載頻寬是有限的。如果你正在下載一個速度很快的種子，它几乎肯定將占滿你的下載頻寬。這是瀏覽網頁顯然就會變慢。很多BT用戶端允許你限制下載速度，你可以試試。<br />\r\n<br />\r\n瀏覽網頁只是作為舉例之一，同樣的問題也會出現在游戲，即時通訊軟體上......', '1', '6', '6');
INSERT INTO `faq` VALUES ('356', '56', '28', 'item', '什么是代理？', '基本上說，代理就是中間人。當你通過代理存取某個網站的時候，你的要求將首先被傳送到代理處，然后由代理轉寄到你所要求的網站，而不是你直接連通到網站。下面是几種典型的代理分類（朮語不是那么的規格）：<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\" width=\"100\">&nbsp;透通代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">透通代理在用戶端無需配置。他將自動把80通訊埠的資訊重導到代理(有時候也作為非匿名代理的同義詞)；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;顯式代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">瀏覽器必須經過配置才能使用代理；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;匿名代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">代理將不會把用戶記號傳送至伺服器端 (HTTP_X_FORWARDED_FOR頭旗標將不被傳送。伺服器也因此看不到你的IP)；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;高度匿名代理</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">代理將不會把用戶記號或代理記號傳送至伺服器端 (HTTP_X_FORWARDED_FOR和HTTP_VIA and HTTP_PROXY_CONNECTION頭旗標將不被傳送。伺服器看不到你的IP，甚至不知道你正在使用代理)；</td>\r\n </tr>\r\n <tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;公用</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">(不言自明了)。</td>\r\n </tr>\r\n</table>\r\n<br />\r\n透通代理可能是匿名的，也可能是非匿名的，且匿名也有相應的等級。', '1', '7', '1');
INSERT INTO `faq` VALUES ('357', '57', '28', 'item', '我該怎樣發現自己正處于一個（透通的/匿名的）代理后面？', '試試看<a href=\"http://proxyjudge.org\" class=\"faqlink\">ProxyJudge</a>。它列出了伺服器端從你這裡所收到的HTTP的頭旗標。相關的几個旗標是HTTP_CLIENT_IP，HTTP_X_FORWARDED_FOR和REMOTE_ADDR。', '1', '7', '2');
INSERT INTO `faq` VALUES ('375', '75', '28', 'item', '我的“可連線”是“否”儘管我并沒有NAT或者防火牆？', 'Tracker伺服器在搜尋你的真實IP方面非常有天賦。但是這需要代理髮送HTTP頭旗標HTTP_X_FORWARDED_FOR。如果你的ISP的代理沒有這么做的話，Tracker伺服器將把代理的IP當作你的用戶端的IP。所以當你登入之后，Tracker伺服器嘗試連線你的用戶端來確信你沒有使用NAT/防火牆，伺服器實際上將嘗試連線代理的IP（使用你的BT用戶端報告的接收連線通訊埠）。很自然地，代理伺服器并沒有監聽那個通訊埠。如此連線會失敗，而Tracker伺服器也因此認為你使用了NAT/防火牆。', '1', '7', '3');
INSERT INTO `faq` VALUES ('401', '1', '6', 'categ', 'Site information', '', '1', '0', '1');
INSERT INTO `faq` VALUES ('402', '2', '6', 'categ', 'User information', '', '1', '0', '2');
INSERT INTO `faq` VALUES ('403', '3', '6', 'categ', 'Stats', '', '1', '0', '3');
INSERT INTO `faq` VALUES ('404', '4', '6', 'categ', 'Uploading', '', '1', '0', '4');
INSERT INTO `faq` VALUES ('405', '5', '6', 'categ', 'Downloading', '', '1', '0', '5');
INSERT INTO `faq` VALUES ('406', '6', '6', 'categ', 'How can I improve my download speed?', '', '1', '0', '6');
INSERT INTO `faq` VALUES ('407', '7', '6', 'categ', 'My ISP uses a transparent proxy. What should I do?', '', '1', '0', '7');
INSERT INTO `faq` VALUES ('408', '8', '6', 'categ', 'Why can\'t I connect? Is the site blocking me?', '', '1', '0', '8');
INSERT INTO `faq` VALUES ('409', '9', '6', 'categ', 'What if I can\'t find the answer to my problem here?', '', '1', '0', '9');
INSERT INTO `faq` VALUES ('410', '10', '6', 'item', 'What is this bittorrent all about anyway? How do I get the files?', 'Check out <a class=\"faqlink\" href=\"http://www.btfaq.com/\">Brian\'s BitTorrent FAQ and Guide</a>.', '1', '1', '1');
INSERT INTO `faq` VALUES ('411', '11', '6', 'item', 'Where does the donated money go?', 'All donated money goes to the cost of server that this tracker is on.', '1', '1', '2');
INSERT INTO `faq` VALUES ('412', '12', '6', 'item', 'Where can I get a copy of the source code?', 'This tracker is powered by NexusPHP. If you like to use NexusPHP to power your tracker, <a class=\"faqlink\" href=\"aboutnexus.php\">Contact Us</a>.<br />\r\nThe first stage of NexusPHP forks from TBSource. You may find more information about TBSource at <a class=\"faqlink\" href=\"http://www.tbdev.net/\">TBDev.net</a>.', '1', '1', '3');
INSERT INTO `faq` VALUES ('413', '13', '6', 'item', 'I registered an account but did not receive the confirmation e-mail!', 'One possible reason may be that the network around the tracker has encountered some problems. You can use <a href=\"confirm_resend.php\" class=\"faqlink\">this form</a> ask the tracker to resend confirmation e-mail.<br />\r\nTypically registered users would be deleted after 24 hours if not confirmed, so you may try again the next day. Note though that if you didn\'t receive the email the first time it will probably not succeed the second time either so you should really try another email address.', '1', '2', '1');
INSERT INTO `faq` VALUES ('414', '14', '6', 'item', 'I\'ve lost my user name or password! Can you send it to me?', 'Please use <a class=\"faqlink\" href=\"recover.php\">this form</a> to have the login details mailed back to you.', '1', '2', '2');
INSERT INTO `faq` VALUES ('415', '15', '6', 'item', 'Can you rename my account? ', 'No, we do not rename accounts. Don\'t ask for it.', '1', '2', '3');
INSERT INTO `faq` VALUES ('416', '16', '6', 'item', 'Can you delete my (confirmed) account?', 'No, we don\'t delete accounts. Don\'t ask for it.', '1', '2', '4');
INSERT INTO `faq` VALUES ('417', '17', '6', 'item', 'So, what\'s MY ratio?', 'It\'s on the left-top of pages.<br />\r\n<br />\r\n<img src=\"pic/ratio.png\" alt=\"ratio\" />\r\n<br />\r\n<br />\r\nIt\'s important to distinguish between your overall ratio and the individual ratio on each torrent you may be seeding or leeching. The overall ratio takes into account the total uploaded and downloaded from your account since you joined the site. The individual ratio takes into account those values for each torrent.\r\n<br />\r\n<br />\r\nYou may see two symbols instead of a number: \"Inf.\", which is just an abbreviation for Infinity, and means that you have downloaded 0 bytes while uploading a non-zero amount (ul/dl becomes infinity); \"---\", which should be read as \"non-available\", and shows up when you have both downloaded and uploaded 0 bytes (ul/dl = 0/0 which is an indeterminate amount).\r\n', '1', '2', '5');
INSERT INTO `faq` VALUES ('418', '18', '6', 'item', 'Why is my IP displayed on my details page?', 'Only you and the site moderators can view your IP address and email. Regular users do not see that information.', '1', '2', '6');
INSERT INTO `faq` VALUES ('421', '21', '6', 'item', 'Why am I listed as not connectable? (And why should I care?)', 'The tracker has determined that you are firewalled or NATed and cannot accept incoming connections. \r\n<br />\r\n<br />\r\nThis means that other peers in the swarm will be unable to connect to you, only you to them. Even worse, if two peers are both in this state they will not be able to connect at all. This has obviously a detrimental effect on the overall speed. \r\n<br />\r\n<br />\r\nThe way to solve the problem involves opening the ports used for incoming connections (the same range you defined in your client) on the firewall and/or configuring your NAT server to use a basic form of NAT for that range instead of NAPT (the actual process differs widely between different router models. Check your router documentation and/or support forum. You will also find lots of information on the subject at <a class=\"faqlink\" href=\"http://portforward.com/\">PortForward</a>).\r\n\r\n\r\n\r\n\r\n\r\n', '1', '2', '9');
INSERT INTO `faq` VALUES ('422', '22', '6', 'item', 'What are the different user classes?', '<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n<td class=\"embedded\" width=\"200\" valign=\"top\">&nbsp; <b class=\"Peasant_Name\">Peasant</b></td>\r\n<td class=\"embedded\" width=\"5\">&nbsp;</td>\r\n<td class=\"embedded\"> Demoted users. They must improve their ratio within 30 days or they will be banned. Cannot post funbox item, apply for links or upload subtitles.\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">The default class of new members. may upload torrents between 12:00, Saturday and 23:59 Sunday of every week.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"PowerUser_Name\">Power User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Get a invitation. Can upload torrents, view NFO files, view user list, ask for reseed, send invitation, access Power User and External Trackers forums, view Top 10, view other users\' torrent history (if user\'s privacy level is not set \'strong\'), delete subtitle uploaded by oneself.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"EliteUser_Name\">Elite User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\"><b class=\"EliteUser_Name\">Elite User</b> or above would never be deleted if parked.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"CrazyUser_Name\">Crazy User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Get two invitations. Can be anonymous when seeding/leeching/uploading. </td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"InsaneUser_Name\">Insane User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Can view general logs.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"VeteranUser_Name\">Veteran User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Get three invitations. Can view other users\' history of comments and forum posts. <b class=\"VeteranUser_Name\">Veteran User</b> or above would never be deleted whether parked or not.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"ExtremeUser_Name\">Extreme User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Can update outdated external information and access Extreme User forum.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"UltimateUser_Name\">Ultimate User</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Get 5 invitations.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"NexusMaster_Name\">Nexus Master</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Get 10 invitations.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <img class=\"star\" src=\"pic/trans.gif\" alt=\"Star\" /></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Has donated money to this tracker.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"VIP_Name\">VIP</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">Same privileges as <b class=\"NexusMaster_Name\">Nexus Master</b> and is considered an Elite Member of this tracker. Immune to automatic demotion.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"Retiree_Name\">Retiree</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Former staff members.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b class=\"User_Name\">Other</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Customized title. </td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"Uploader_Name\">Uploader</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Dedicated uploader, immune to automatic demotion. Can view who anonymous ones are.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"Moderator_Name\">Moderator</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\" valign=\"top\">Can view staffbox and reportbox, manage funbox and polls, edit and delete any uploaded torrent, manage offers, manage forum posts and user comments, view confidential logs, delete any uploaded subtitle, manage code updates and chronicles at logs, view users\' invitation history, change general user account information. <b>Cannot</b> manage links,recent news or forums. <b>Cannot</b> set torrents sticky or on promotion.<b>Cannot</b> view users\' confidential information (e.g. IP address and Email address). <b>Cannot</b> delete user account.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"Administrator_Name\">Administrator</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Other than changing site settings and managing donation, can do just about anything.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"SysOp_Name\">SysOp</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">Dedicated site developer. Except managing donation, can do anything (including changing site settings)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"embedded\" valign=\"top\">&nbsp; <b  class=\"StaffLeader_Name\">Staff Leader</b></td>\r\n<td class=\"embedded\">&nbsp;</td>\r\n<td class=\"embedded\">The boss. Can do anything.</td>\r\n</tr>\r\n</table>', '1', '2', '10');
INSERT INTO `faq` VALUES ('423', '23', '6', 'item', 'How does this promotion thing work anyway?', '<table cellspacing=\\\\\\\\\\\\\\\"3\\\\\\\\\\\\\\\" cellpadding=\\\\\\\\\\\\\\\"0\\\\\\\\\\\\\\\">\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" width=\\\\\\\\\\\\\\\"200\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"Peasant_Name\\\\\\\\\\\\\\\">Peasant</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" width=\\\\\\\\\\\\\\\"5\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">User would be demoted to this class under any of the following circumstances:<br />\r\n1.Downloaded more than 50 GB and with ratio below 0.4<br />\r\n2.Downloaded more than 100 GB and with ratio below 0.5<br />\r\n3.Downloaded more than 200 GB and with ratio below 0.6<br />\r\n4.Downloaded more than 400 GB and with ratio below 0.7<br />\r\n5.Downloaded more than 800 GB and with ratio below 0.8</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b  class=\\\\\\\\\\\\\\\"PowerUser_Name\\\\\\\\\\\\\\\">Power User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 4 weeks, have downloaded at least 50GB and have a ratio at or above 1.05. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 0.95 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"EliteUser_Name\\\\\\\\\\\\\\\">Elite User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 8 weeks, have downloaded at least 120GB and have a ratio at or above 1.55. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 1.45 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"CrazyUser_Name\\\\\\\\\\\\\\\">Crazy User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 15 weeks, have downloaded at least 300GB and have a ratio at or above 2.05. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 1.95 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"InsaneUser_Name\\\\\\\\\\\\\\\">Insane User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 25 weeks, have downloaded at least 500GB and have a ratio at or above 2.55. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 2.45 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"VeteranUser_Name\\\\\\\\\\\\\\\">Veteran User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 40 weeks, have downloaded at least 750GB and have a ratio at or above 3.05. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 2.95 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b  class=\\\\\\\\\\\\\\\"ExtremeUser_Name\\\\\\\\\\\\\\\">Extreme User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 60 weeks, have downloaded at least 1TB and have a ratio at or above 3.55. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 3.45 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b  class=\\\\\\\\\\\\\\\"UltimateUser_Name\\\\\\\\\\\\\\\">Ultimate User</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 80 weeks, have downloaded at least 1.5TB and have a ratio at or above 4.05. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 3.95 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"NexusMaster_Name\\\\\\\\\\\\\\\">Nexus Master</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Must have been a member for at least 100 weeks, have downloaded at least 3TB and have a ratio at or above 4.55. The promotion is automatic when these conditions are met. <br />\r\nNote that you will be automatically demoted from this status if your ratio drops below 4.45 at any time.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <img class=\\\\\\\\\\\\\\\"star\\\\\\\\\\\\\\\" src=\\\\\\\\\\\\\\\"pic/trans.gif\\\\\\\\\\\\\\\" alt=\\\\\\\\\\\\\\\"Star\\\\\\\\\\\\\\\" /></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">Just donate, see <a class=\\\\\\\\\\\\\\\"faqlink\\\\\\\\\\\\\\\" href=\\\\\\\\\\\\\\\"donate.php\\\\\\\\\\\\\\\">here</a> for the details.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b  class=\\\\\\\\\\\\\\\"VIP_Name\\\\\\\\\\\\\\\">VIP</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">Assigned by mods at their discretion to users they feel contribute something special to the site. (Anyone begging for VIP status will be automatically disqualified.)</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"User_Name\\\\\\\\\\\\\\\">Other</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">Customized title. Exchanged at bonus system or granted by admins.</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b  class=\\\\\\\\\\\\\\\"Uploader_Name\\\\\\\\\\\\\\\">Uploader</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">Appointed by Admins/SysOp/Staff Leader (see the \\\\\\\\\\\\\\\'Uploading\\\\\\\\\\\\\\\' section for conditions).</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b class=\\\\\\\\\\\\\\\"Retiree_Name\\\\\\\\\\\\\\\">Retiree</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">Granted by Admins/SysOp/Staff Leader</td>\r\n</tr>\r\n<tr>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\" valign=\\\\\\\\\\\\\\\"top\\\\\\\\\\\\\\\">&nbsp; <b  class=\\\\\\\\\\\\\\\"Moderator_Name\\\\\\\\\\\\\\\">Moderator</b></td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">&nbsp;</td>\r\n<td class=\\\\\\\\\\\\\\\"embedded\\\\\\\\\\\\\\\">You don\\\\\\\\\\\\\\\'t ask us, we\\\\\\\\\\\\\\\'ll ask you!</td>\r\n</tr>\r\n</table>', '1', '2', '11');
INSERT INTO `faq` VALUES ('425', '25', '6', 'item', 'Why can\'t my friend become a member?', 'There is a users limit (it is list at Home -&gt; Tracker Statistics -&gt; Limit). When that number is reached we stop accepting new members. Accounts inactive (i.e. not logged in for a long time) are automatically deleted, so keep trying.<br />\r\nWhen are inactive user accounts deleted? See <a class=\"faqlink\" href=\"rules.php\">Rules</a>', '1', '2', '1');
INSERT INTO `faq` VALUES ('426', '26', '6', 'item', 'How do I add an avatar to my profile?', 'First, find an image that you like, and that is within the <a class=\"faqlink\" href=\"rules.php\">rules</a>. Then you will have to find a place to host it, such as our own <a class=\"faqlink\" href=\"bitbucket-upload.php\">BitBucket</a>. To lighten tracker\'s load, we recommend you upload it to other websites and copy the URL you were given when uploading it to the Avatar URL field in <a class=\"faqlink\" href=\"usercp.php?action=personal\">UserCP</a>.<br />\r\n<br />\r\nPlease do not make a post just to test your avatar. If everything is all right you\'ll see it in your details page. ', '1', '2', '1');
INSERT INTO `faq` VALUES ('427', '27', '6', 'item', 'Most common reason for stats not updating', '<ul>\r\n<li>The server is overloaded and unresponsive. Just try to keep the session open until the server responds again. (Flooding the server with consecutive manual updates is not recommended.)</li>\r\n<li>You are using a faulty client. If you want to use an experimental or CVS version you do it at your own risk.</li>\r\n</ul>', '1', '3', '1');
INSERT INTO `faq` VALUES ('428', '28', '6', 'item', 'Best practices', '<ul>\r\n<li>If a torrent you are currently leeching/seeding is not listed on your detail page, just wait or force a manual update.</li>\r\n<li>Make sure you exit your client properly, so that the tracker receives \"event=completed\".</li>\r\n<li>If the tracker is down, do not stop seeding. As long as the tracker is back up before you exit the client the stats should update properly.</li>\r\n</ul>', '1', '3', '2');
INSERT INTO `faq` VALUES ('429', '29', '6', 'item', 'May I use any bittorrent client?', 'No. According to tests of common bittorrent clients by <a class=\"faqlink\" href=\"aboutnexus.php\">NexusPHP</a>, we allowed <b>only</b> the following bittorrent clients.<br />\r\nThe test report by <a class=\"faqlink\" href=\"aboutnexus.php\">NexusPHP</a> is <a class=\"faqlink\" href=\"http://www.nexusphp.com/wiki/%E5%AE%A2%E6%88%B7%E7%AB%AF%E6%B5%8B%E8%AF%95%E6%8A%A5%E5%91%8A\">here</a>. \r\n<br />\r\n<b>Windows:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://www.utorrent.com\">uTorrent</a>: 1.6.1, 1.7.5, 1.7.6, 1.7.7, 1.8Beta(Build 10364), 2.0(Build 17624) and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://www.bittorrent.com\">BitTorrent</a>: 6.0.1, 6.0.2, 6.0.3 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://deluge-torrent.org\">Deluge</a>: 0.5.9.1, 1.1.6 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://rufus.sourceforge.net\">Rufus</a>: 0.6.9, 0.7.0 and later versions</li>\r\n</ul>\r\n<b>Linux:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://deluge-torrent.org\">Deluge</a>: 0.5.9.1, 1.1.6 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://rufus.sourceforge.net\">Rufus</a>: 0.6.9, 0.7.0 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://www.transmissionbt.com\">Transmission</a>: 1.21 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://libtorrent.rakshasa.no\">rTorrent</a>: 0.8.0(with libtorrent 0.12.0 or later) and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://www.rahul.net/dholmes/ctorrent/\">Enhanced CTorrent</a>: 3.3.2 and later versions</li>\r\n</ul>\r\n<b>MacOS X:</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://azureus.sourceforge.net\">Azureus</a>: 2.5.0.4, 3.0.5.0, 3.0.5.2 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://www.transmissionbt.com\">Transmission</a>: 1.21 and later versions</li>\r\n<li><a class=\"faqlink\" href=\"http://sourceforge.net/projects/bitrocket/\">BitRocket</a>: 0.3.3(32) and later versions</li>\r\n</ul>\r\n<b>Symbian (For Testing Only):</b>\r\n<ul>\r\n<li><a class=\"faqlink\" href=\"http://amorg.aut.bme.hu/projects/symtorrent\">SymTorrent</a>: 1.41 and later versions</li>\r\n</ul>\r\n<br />\r\n\r\n<b>Support for https:</b>\r\n<ul>\r\n<li>uTorrent 1.61: cannot parse tracker https url, and marks itself as uTorrent 1.5</li>\r\n<li>Rufus: no support for https, and development ceased for years.</li>\r\n<li>rtorrent: needs to add SSL certification manually, see User Guide at its official site.</li>\r\n</ul>\r\n\r\n<br />\r\n\r\nPlease do not use any beta or testing version of bittorrent clients, e.g. uTorrent 1.8.0B. To get the best downloading experience, we highly recommend latest stable version of <a class=\"faqlink\" href=\"http://www.utorrent.com/download.php\">uTorrent</a> and <a class=\"faqlink\" href=\"http://azureus.sourceforge.net/download.php\">Azureus</a>.', '1', '5', '3');
INSERT INTO `faq` VALUES ('430', '30', '6', 'item', 'Why is a torrent I\'m leeching/seeding listed several times in my profile?', 'If for some reason (e.g. PC crash, or frozen client) your client exits improperly and you restart it, it will have a new peer_id, so it will show as a new torrent. The old one will never receive a \"event=completed\" or \"event=stopped\" and will be listed until some tracker timeout. Just ignore it, it will eventually go away.', '1', '3', '4');
INSERT INTO `faq` VALUES ('431', '31', '6', 'item', 'I\'ve finished or cancelled a torrent. Why is it still listed in my profile?', 'Some clients, notably TorrentStorm and Nova Torrent, do not report properly to the tracker when canceling or finishing a torrent. In that case the tracker will keep waiting for some message - and thus listing the torrent as seeding or leeching - until some timeout occurs. Just ignore it, it will eventually go away.', '1', '3', '5');
INSERT INTO `faq` VALUES ('433', '33', '6', 'item', 'Multiple IPs (Can I login from different computers?)', 'Yes, the tracker is capable of following sessions from different IPs for the same user. You may access the site and seed/leech simultaneously from as many computers as you want with the same account.<br />\r\nHowever, there is a limit for a single torrent. Per torrent 3 simultaneous connections are permitted per user, and in case of leeching only 1, which means you can leech a torrent from one location only at a time.', '1', '3', '1');
INSERT INTO `faq` VALUES ('436', '36', '6', 'item', 'Why can\'t I upload torrents?', 'See <a class=\"faqlink\" href=\"rules.php\">Rules</a>.', '1', '4', '1');
INSERT INTO `faq` VALUES ('437', '37', '6', 'item', 'What criteria must I meet before I can join the Uploader team?', 'You must:\r\n<ul>\r\n<li>have steady access to resources.</li>\r\n<li>upload not less than 5 torrents per week.</li>\r\n</ul>\r\nYou must be able to provide releases that:\r\n<ul>\r\n<li>are not older than 7 days</li>\r\n<li>you\'ll be able to seed, or make sure are well-seeded, for at least 24 hours.</li>\r\n<li>Also, you should have at least 2MBit upload bandwith.</li>\r\n</ul>\r\nIf you think you can match these criteria do not hesitate to <a class=\"faqlink\" href=\"contactstaff.php\">contact the staff</a>.<br />\r\n<b>Remember!</b> Write your application carefully! Be sure to include your upload speed and what kind of stuff you\'re planning to upload.<br />\r\nOnly well written letters with serious intent will be considered.', '1', '4', '2');
INSERT INTO `faq` VALUES ('438', '38', '6', 'item', 'Can I upload your torrents to other trackers?', 'No. We are a closed, limited-membership community. Only registered users can use the tracker. Posting our torrents on other trackers is useless, since most people who attempt to download them will be unable to connect with us. This generates a lot of frustration and bad-will against us, and will therefore not be tolerated.<br />\r\n<br />\r\nComplaints from other sites\' administrative staff about our torrents being posted on their sites will result in the banning of the users responsible.\r\n<br />\r\n<br />\r\nHowever, the files you download from us are yours to do as you please (except those marked as <b>EXCLUSIVE</b> by the uploader). You can always create another torrent, pointing to some other tracker, and upload it to the site of your choice.', '1', '4', '3');
INSERT INTO `faq` VALUES ('439', '39', '6', 'item', 'How do I use the files I\'ve downloaded?', 'Check out <a class=\"faqlink\" href=\"formats.php\">this guide</a>.', '1', '5', '1');
INSERT INTO `faq` VALUES ('440', '40', '6', 'item', 'Downloaded a movie and don\'t know what CAM/TS/TC/SCR means?', 'Check out <a class=\"faqlink\" href=\"videoformats.php\">this guide</a>.', '1', '5', '2');
INSERT INTO `faq` VALUES ('441', '41', '6', 'item', 'Why did an active torrent suddenly disappear?', 'There may be three reasons for this:<br />\r\n(<b>1</b>) The torrent may have been against the site <a class=\"faqlink\" href=\"rules.php\">rules</a>.\r\n<br />\r\n(<b>2</b>) The uploader may have deleted it because it was a bad release. A replacement will probably be uploaded to take its place.<br />\r\n(<b>3</b>) Torrents are automatically deleted after being dead for a long time.', '1', '5', '3');
INSERT INTO `faq` VALUES ('442', '42', '6', 'item', 'How do I resume a broken download or reseed something?', 'Open the .torrent file. When your client asks you for a location, choose the location of the existing file(s) and it will resume/reseed the torrent.', '1', '5', '4');
INSERT INTO `faq` VALUES ('443', '43', '6', 'item', 'Why do my downloads sometimes stall at 99%?', 'The more pieces you have, the harder it becomes to find peers who have pieces you are missing. That is why downloads sometimes slow down or even stall when there are just a few percent remaining. Just be patient and you will, sooner or later, get the remaining pieces.', '1', '5', '5');
INSERT INTO `faq` VALUES ('444', '44', '6', 'item', 'What are these \"a piece has failed a hash check\" messages? ', 'Bittorrent clients check the data they receive for integrity. When a piece fails this check it is automatically re-downloaded. Occasional hash fails are a common occurrence, and you shouldn\'t worry.<br />\r\n<br />\r\nSome clients have an (advanced) option/preference to \'kick/ban clients that send you bad data\' or similar. It should be turned on, since it makes sure that if a peer repeatedly sends you pieces that fail the hash check it will be ignored in the future.', '1', '5', '6');
INSERT INTO `faq` VALUES ('445', '45', '6', 'item', 'The torrent is supposed to be 100MB. How come I downloaded 120MB? ', 'See the hash fails topic. If your client receives bad data it will have to re-download it, therefore the total downloaded may be larger than the torrent size. Make sure the \"kick/ban\" option is turned on to minimize the extra downloads.', '1', '5', '7');
INSERT INTO `faq` VALUES ('446', '46', '6', 'item', 'Why do I get a \"Your ratio is too low! You need to wait xx h to start\" error?', 'From the time that each <b>new</b> torrent is uploaded to the tracker, there is a period of time that some users must wait before they can download it.<br />\r\nThis delay in downloading will only affect users with a low ratio and downloaded amount above 10 GB.<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.4</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">delay of</td>\r\n	<td class=\"embedded\" width=\"100\">24h</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.5</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">delay of</td>\r\n	<td class=\"embedded\" width=\"100\">12h</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.6</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">delay of</td>\r\n	<td class=\"embedded\" width=\"100\">6h</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.8</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">delay of</td>\r\n	<td class=\"embedded\" width=\"100\">3h</td>\r\n</tr>\r\n</table>', '1', '5', '8');
INSERT INTO `faq` VALUES ('447', '47', '6', 'item', 'Why do I get a \"Port xxxx is blacklisted\" error?', 'Your client is reporting to the tracker that it uses one of the default bittorrent ports (6881-6889) or any other common p2p port for incoming connections.<br />\r\n<br />\r\nWe does not allow clients to use ports commonly associated with p2p protocols. The reason for this is that it is a common practice for ISPs to throttle those ports (that is, limit the bandwidth, hence the speed). <br />\r\n<br />\r\nThe blocked ports list include the following:<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Direct Connect</td>\r\n	<td class=\"embedded\" width=\"100\">411 - 413</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">BitTorrent</td>\r\n	<td class=\"embedded\" width=\"100\">6881 - 6889</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Kazza</td>\r\n	<td class=\"embedded\" width=\"100\">1214</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Gnutella</td>\r\n	<td class=\"embedded\" width=\"100\">6346 - 6347</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">Emule</td>\r\n	<td class=\"embedded\" width=\"100\">4662</td>\r\n  </tr>\r\n  <tr>\r\n	<td class=\"embedded\" width=\"100\">WinMX</td>\r\n	<td class=\"embedded\" width=\"100\">6699</td>\r\n  </tr>\r\n</table>\r\n<br />\r\nIn order to use our tracker you must configure your client to use any port range that does not contain those ports (a range within the region 49152 through 65535 is preferable,\r\ncf. <a class=\"faqlink\" href=\"http://www.iana.org/assignments/port-numbers\">IANA</a>). Notice that some clients, like Azureus 2.0.7.0 or higher, use a single port for all torrents, while most others use one port per open torrent. The size of the range you choose should take this into account (typically less than 10 ports wide. There is no benefit whatsoever in choosing a wide range, and there are possible security implications). <br />\r\n<br />\r\nThese ports are used for connections between peers, not client to tracker. Therefore this change will not interfere with your ability to use other trackers (in fact it should <i>increase</i> your speed with torrents from any tracker, not just ours). Your client will also still be able to connect to peers that are using the standard ports. If your client does not allow custom ports to be used, you will have to switch to one that does.<br />\r\n<br />\r\nDo not ask us, or in the forums, which ports you should choose. The more random the choice is the harder it will be for ISPs to catch on to us and start limiting speeds on the ports we use. If we simply define another range ISPs will start throttling that range also. <br />\r\n<br />\r\nFinally, remember to forward the chosen ports in your router and/or open them in your\r\nfirewall, should you have them.', '1', '5', '9');
INSERT INTO `faq` VALUES ('448', '48', '6', 'item', 'What\'s this \"IOError - [Errno13] Permission denied\" error?', 'If you just want to fix it reboot your computer, it should solve the problem. Otherwise read on.<br />\r\nIOError means Input-Output Error, and that is a file system error, not a tracker one. It shows up when your client is for some reason unable to open the partially downloaded torrent files. The most common cause is two instances of the client to be running simultaneously: the last time the client was closed it somehow didn\'t really close but kept running in the background, and is therefore still locking the files, making it impossible for the new instance to open them.<br />\r\nA more uncommon occurrence is a corrupted FAT. A crash may result in corruption that makes the partially downloaded files unreadable, and the error ensues. Running scandisk should solve the problem. (Note that this may happen only if you\'re running Windows 9x - which only support FAT - or NT/2000/XP with FAT formatted hard drives. NTFS is much more robust and should never permit this problem.)\r\n', '1', '5', '10');
INSERT INTO `faq` VALUES ('450', '50', '6', 'item', 'Do not immediately jump on new torrents', 'The download speed mostly depends on the seeder-to-leecher ratio (SLR). Poor download speed is mainly a problem with new and very popular torrents where the SLR is low.<br />\r\n(Note: make sure you remember that you did not enjoy the low speed. Seed so that others will not endure the same.)<br />\r\n<br />In particular, do not do it if you have a slow connection. The best speeds will be found around the half-life of a torrent, when the SLR will be at its highest. (The downside is that you will not be able to seed so much. It\'s up to you to balance the pros and cons of this.)', '1', '6', '1');
INSERT INTO `faq` VALUES ('451', '51', '6', 'item', 'Limit your upload speed', 'The upload speed affects the download speed in essentially two ways:\r\n<ul>\r\n    <li>Bittorrent peers tend to favour those other peers that upload to them. This means that if A and B are leeching the same torrent and A is sending data to B at high speed then B will try to reciprocate. So due to this effect high upload speeds lead to high download speeds.</li>\r\n\r\n    <li>Due to the way TCP works, when A is downloading something from B it has to keep telling B that it received the data sent to him. (These are called acknowledgements - ACKs -, a sort of \"got it!\" messages). If A fails to do this then B will stop sending data and wait. If A is uploading at full speed there may be no bandwidth left for the ACKs and they will be delayed. So due to this effect excessively high upload speeds lead to low download speeds.</li>\r\n</ul>\r\n\r\nThe full effect is a combination of the two. The upload should be kept as high as possible while allowing the ACKs to get through without delay. <b>A good thumb rule is keeping the upload at about 80% of the theoretical upload speed. </b>You will have to fine tune yours to find out what works best for you. (Remember that keeping the upload high has the additional benefit of helping with your ratio.) <br />\r\n<br />\r\nIf you are running more than one instance of a client it is the overall upload speed that you must take into account. Some clients limit global upload speed, others do it on a per torrent basis. Know your client. The same applies if you are using your connection for anything else (e.g. browsing or ftp), always think of the overall upload speed.', '1', '6', '2');
INSERT INTO `faq` VALUES ('452', '52', '6', 'item', 'Limit the number of simultaneous connections', 'Some operating systems (like Windows 9x) do not deal well with a large number of connections, and may even crash. Also some home routers (particularly when running NAT and/or firewall with stateful inspection services) tend to become slow or crash when having to deal with too many connections. There are no fixed values for this, you may try 60 or 100 and experiment with the value. Note that these numbers are additive, if you have two instances of a client running the numbers add up.', '1', '6', '3');
INSERT INTO `faq` VALUES ('453', '53', '6', 'item', 'Limit the number of simultaneous uploads', 'Isn\'t this the same as above? No. Connections limit the number of peers your client is talking to and/or downloading from. Uploads limit the number of peers your client is actually uploading to. The ideal number is typically much lower than the number of connections, and highly dependent on your (physical) connection.', '1', '6', '4');
INSERT INTO `faq` VALUES ('454', '54', '6', 'item', 'Just give it some time', 'As explained above peers favour other peers that upload to them. When you start leeching a new torrent you have nothing to offer to other peers and they will tend to ignore you. This makes the starts slow, in particular if, by chance, the peers you are connected to include few or no seeders. The download speed should increase as soon as you have some pieces to share.', '1', '6', '5');
INSERT INTO `faq` VALUES ('455', '55', '6', 'item', 'Why is my browsing so slow while leeching?', 'Your download speed is always finite. If you are a peer in a fast torrent it will almost certainly saturate your download bandwidth, and your browsing will suffer. Many clients allows you to limit the download speed and try it.<br />\r\n<br />\r\nBrowsing was used just as an example, the same would apply to gaming, IMing, etc...', '1', '6', '6');
INSERT INTO `faq` VALUES ('456', '56', '6', 'item', 'What is a proxy?', 'Basically a middleman. When you are browsing a site through a proxy your requests are sent to the proxy and the proxy forwards them to the site instead of you connecting directly to the site. There are several classifications (the terminology is far from standard):<br />\r\n<br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" valign=\"top\" width=\"100\">&nbsp;Transparent</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">A transparent proxy is one that needs no configuration on the clients. It works by automatically redirecting all port 80 traffic to the proxy. (Sometimes used as synonymous for non-anonymous.)</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;Explicit/Voluntary</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">Clients must configure their browsers to use them.</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;Anonymous</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">The proxy sends no client identification to the server. (HTTP_X_FORWARDED_FOR header is not sent; the server does not see your IP.)</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;Highly Anonymous</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">The proxy sends no client nor proxy identification to the server. (HTTP_X_FORWARDED_FOR, HTTP_VIA and HTTP_PROXY_CONNECTION headers are not sent; the server doesn\'t see your IP and doesn\'t even know you\'re using a proxy.)</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" valign=\"top\">&nbsp;Public</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" valign=\"top\">(Self explanatory)</td>\r\n</tr>\r\n</table>\r\n<br />\r\nA transparent proxy may or may not be anonymous, and there are several levels of anonymity.', '1', '7', '1');
INSERT INTO `faq` VALUES ('457', '57', '6', 'item', 'How do I find out if I\'m behind a (transparent/anonymous) proxy?', 'Try <a href=\"http://proxyjudge.org\" class=\"faqlink\">ProxyJudge</a>. It lists the HTTP headers that the server where it is running received from you. The relevant ones are HTTP_CLIENT_IP, HTTP_X_FORWARDED_FOR and REMOTE_ADDR.', '1', '7', '2');
INSERT INTO `faq` VALUES ('475', '75', '6', 'item', 'Why am I listed as not connectable even though I\'m not NAT/Firewalled?', 'The tracker is quite smart at finding your real IP, but it does need the proxy to send the HTTP header HTTP_X_FORWARDED_FOR. If your ISP\'s proxy does not then what happens is that the tracker will interpret the proxy\'s IP address as the client\'s IP address. So when you login and the tracker tries to connect to your client to see if you are NAT/firewalled it will actually try to connect to the proxy on the port your client reports to be using for incoming connections. Naturally the proxy will not be listening on that port, the connection will fail and the tracker will think you are NAT/firewalled.', '1', '7', '3');
INSERT INTO `faq` VALUES ('462', '62', '6', 'item', 'Maybe my address is blacklisted?', 'The site keeps a list of blocked IP addresses for banned users or attackers. This works at Apache/PHP level, and only blocks <i>logins</i> from those addresses. It should not stop you from reaching the site. In particular it does not block lower level protocols, you should be able to ping/traceroute the server even if your address is blacklisted. If you cannot then the reason for the problem lies elsewhere.<br />\r\n<br />\r\nIf somehow your address is blocked by mistake, contact us about it.', '1', '8', '1');
INSERT INTO `faq` VALUES ('463', '63', '6', 'item', 'Your ISP blocks the site\'s address', '(In first place, it\'s unlikely your ISP is doing so. DNS name resolution and/or network problems are the usual culprits.) \r\n<br />\r\nThere\'s nothing we can do. You should contact your ISP (or get a new one). Note that you can still visit the site via a proxy, follow the instructions in the relevant section. In this case it doesn\'t matter if the proxy is anonymous or not, or which port it listens to.<br />\r\n<br />\r\nNotice that you will always be listed as an \"unconnectable\" client because the tracker will be unable to check that you\'re capable of accepting incoming connections.', '1', '8', '2');
INSERT INTO `faq` VALUES ('465', '65', '6', 'item', 'You may try this', 'Post in the <a class=\"faqlink\" href=\"forums.php\">Forums</a>, by all means. You\'ll find they are usually a friendly and helpful place, provided you follow a few basic guidelines: <ul>\r\n<li>Make sure your problem is not really in this FAQ. There\'s no point in posting just to be sent back here. </li>\r\n<li>Before posting read the sticky topics (the ones at the top). Many times new information that still hasn\'t been incorporated in the FAQ can be found there.</li>\r\n<li>Help us in helping you. Do not just say \"it doesn\'t work!\". Provide details so that we don\'t have to guess or waste time asking. What client do you use? What\'s your OS? What\'s your network setup? What\'s the exact error message you get, if any? What are the torrents you are having problems with? The more you tell the easiest it will be for us, and the more probable your post will get a reply.</li>\r\n<li>And needless to say: be polite. Demanding help rarely works, asking for it usually does the trick.</li></ul>', '1', '9', '1');
INSERT INTO `faq` VALUES ('466', '66', '6', 'item', 'Why do I get a \"Your slot limit is reached! You may at most download xx torrents at the same time\" error?', 'This is part of the \"Slot System\". The slot system is being used to limit the concurrent downloads for users that have low ratio and downloaded amount above 10 GB<br /><br />\r\nRules: <br />\r\n<table cellspacing=\"3\" cellpadding=\"0\">\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.5</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">available slots</td>\r\n	<td class=\"embedded\" width=\"40\">1</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.65</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">available slots</td>\r\n	<td class=\"embedded\" width=\"100\">2</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.8</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">available slots</td>\r\n	<td class=\"embedded\" width=\"100\">3</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio below</td>\r\n	<td class=\"embedded\" width=\"40\">0.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">available slots</td>\r\n	<td class=\"embedded\" width=\"100\">4</td>\r\n</tr>\r\n<tr>\r\n	<td class=\"embedded\" width=\"100\">Ratio above</td>\r\n	<td class=\"embedded\" width=\"40\">0.95</td>\r\n	<td class=\"embedded\" width=\"10\">&nbsp;</td>\r\n	<td class=\"embedded\" width=\"100\">available slots</td>\r\n	<td class=\"embedded\" width=\"100\">unlimited</td>\r\n</tr>\r\n</table>\r\n<br />\r\nIn all cases the seeding slots are unlimited. However if you have already filled all your available download slots and try to start seeding you will receive the same error. In this case you must free at least one download slot in order to start all your seeds and then start the download. If all your download slots are filled the system will deny any connection before validating if you want to download or seed. So first start your seeds and after that your downloads. <br />\r\n<br /><br />\r\nAny time, you can check your available slots in the member bar on top of the page.', '1', '5', '12');
INSERT INTO `faq` VALUES ('467', '67', '6', 'item', 'What is the passkey System? How does it work?', 'The passkey system is implemented to verify if you are registered with the tracker. Every user has a personal passkey, a random key generated by the system. When a user tries to download a torrent, his personal passkey is imprinted in the tracker URL of the torrent, allowing to the tracker to identify any source connected on it. In this way, you can seed a torrent for example, at home and at your office simultaneously without any problem with the 2 different IPs.\r\n', '1', '5', '13');
INSERT INTO `faq` VALUES ('468', '68', '6', 'item', 'Why do I get an \"Unknown passkey\" error? ', 'You will get this error, firstly if you are not registered on our tracker, or if you haven\'t downloaded the torrent to use from our webpage, when you were logged in. In this case, just register or log in and re-download the torrent.<br />\r\nThere is a chance to get this error also, at the first time you download anything as a new user, or at the first download after you reset your passkey. The reason is simply that the tracker reviews the changes in the passkeys every few minutes and not instantly. For that reason just leave the torrent running for a few minutes, and you will get eventually an OK message from the tracker.', '1', '5', '14');
INSERT INTO `faq` VALUES ('469', '69', '6', 'item', 'When do I need to reset my passkey?', '<ul><li>If your passkey has been leaked and other user(s) uses it to download torrents using your account. In this case, you will see torrents stated in your account that you are not leeching or seeding . </li>\r\n<li>When your clients hangs up or your connection is terminated without pressing the stop button of your client. In this case, in your account you will see that you are still leeching/seeding the torrents even that your client has been closed. Normally these \"ghost peers\" will be cleaned automatically within 30 minutes, but if you want to resume your downloads and the tracker denied that due to the fact that you \"already are downloading the same torrent\" then you should reset your passkey and re-download the torrent, then resume it.  </li></ul>', '1', '5', '15');
INSERT INTO `faq` VALUES ('470', '70', '6', 'item', 'What is DHT? Why must I turn it off and how?', 'DHT must be disabled in your client. DHT can cause your stats to be recorded incorrectly and could be seen as cheating. Anyone using this will be banned for cheating the system.\r\n<br />\r\nFortunately, this tracker would parse uploaded .torrent files and automatically disable DHT. That\'s why you must re-downloaded the torrent before starting seeding.', '1', '5', '16');
INSERT INTO `faq` VALUES ('471', '71', '6', 'categ', 'How can I help translate the site language into my native language?', '', '1', '1', '8');
INSERT INTO `faq` VALUES ('472', '72', '6', 'item', 'What skills do I need to do the translation?', 'Translate the site into another language is quite easy. You needn\'t be skilled in PHP or dynamic website design. In fact, all you need is proficient understanding of English (the default site language) and the language you plan to translate into. Maybe some basic knowledge in HTML would help.<br /><br />\r\nMoreover, we give a detailed tutorial on how to do the translation <a href=\"#73\" class=\"faqlink\"><b>HERE</b></a>. And our coders would be more than pleased to answer the questions you may encounter.<br /><br />\r\nTranslate the whole site into another language would take estimated 10 hours. And extra time is needed to maintain the translation when site code is updated.<br /><br />\r\nSo, if you think you could help, feel free to <a class=\"faqlink\" href=\"contactstaff.php\"><b>CONTACT US</b></a>. Needless to say, you would be rewarded.', '1', '71', '1');
INSERT INTO `faq` VALUES ('473', '73', '6', 'item', 'The translation tutorial', '<ul>\r\n<li>How does multi-language work?<br />\r\nCurrently we use language files to store all the static words that a user can see on web pages. <br />\r\nEvery php code file has a corresponding language file for a certain language. And we named the language file \'lang_\' plus the filename of the php code file. i.e. the language file of the php code file \'details.php\' would be \'lang_details.php\'. <br />\r\nWe has some mechanism in php codes to read the exact language files of user\'s preferred language, and you shouldn\'t worry about that.<br /></li>\r\n<li>What\'s in language files?<br />\r\nIn a language file is an array of strings. These strings contain all the static words that a user can see on web pages. When we need to say some words on a php code file, we call for a string in the array. And the output of the php code file, that is what users see on the web pages, would show the value of the string.<br />\r\nSounds dizzying? Well, you need not care about all these. All you gotta do is translate the values of the strings in the language files into another language. <b>Let\'s see an example</b>:<br /><br />\r\nThe following is the content of the English language file \'lang_users.php\', which works for the php code file \'users.php\'. <br /><br />\r\n<img src=\"pic/langfileeng.png\" alt=\"langfileeng\" /><br />\r\nIf you wanna translate it into Simplified Chinese, all you need is edit the file into this:<br />\r\n<img src=\"pic/langfilechs.png\" alt=\"langfilechs\" /><br />\r\nSee, in every line, the left part, that is before <i>=&gt;</i>, is the name of a string, which you shouldn\'t touch. All you need to is translate the right part, after <i>=&gt;</i>, which is the value of the string, into another language.<br />\r\nSometimes you need to look at the corresponding web pages to get the context meaning of some words.<br /></li>\r\n<li>Sounds easy? See what do you need to do.<br />\r\nIf you feel like to help us, <a class=\"faqlink\" href=\"aboutnexus.php#contact\"><b>CONTACT US</b></a> and we will send you a pack of the English language files (or any other available language if you prefer). Received it, you can start translating the value of strings (which is in English), into another language. It should take you several hours to do the whole work. After this, send back the translated language files to us.<br />\r\nIf no bugs or hacking codes are found in testing, we would put the new language into work.<br />\r\nSometimes the language files need to be updated, typically adding new strings, when site codes are updated. If you feel like it, you can help maintain the language files.<br /></li>\r\n<li><font color=\"red\"><b>IMPORTANT</b></font><br />\r\nThe text of language files must be encoded in UTF-8. When saving files, be sure to set the character encoding to UTF-8. Otherwise mojibake may happen.</li></ul>', '1', '71', '2');
INSERT INTO `faq` VALUES ('474', '74', '6', 'item', 'Why does my client notify me of low disk space even if there is plenty left?', 'Most possible reason is that the file system of your disk partitions is FAT32, which has a maximum file size limit of 4 GB. If your operation system is Windows, consider converting file system to NTFS. Check <a class=\"faqlink\" href=\"http://technet.microsoft.com/en-us/library/bb456984.aspx\">here</a> for details.\r\n', '1', '5', '17');
INSERT INTO `faq` VALUES ('476', '27', '25', 'item', '那么，什么是我的HR？', '<ul>\r\n<li>什么是H&R？<img class=\"hrwarned\" src=\"pic/trans.gif\" alt=\"hrwarned\" /></li>\r\nH&R 是 Hit and Run 的缩写，表示下载完资源后立即关闭μTorrent不留种上传的恶劣行为，简单说就是“下完就跑”。\r\n\r\n<li>H&R考核的要求是什么？</li>\r\n每个下载完的种子，会自动记入一个考核中HR条目。<br />\r\n对于考核中的HR，在下载完成起14天内，只需要满足以下任意一条要求：<br />\r\n1:保持上传共计24小时<br />\r\n2:单个种子实际共享率≥1<br /><br />\r\n一旦达到任意一条考核标准，此种子自动变为已达标。(最长一天延迟)<br />\r\n如果以上要求未满足，将会转为未达标，此时只能使用<a class=\"faqlink\" href=\"mybonus.php\">魔力值兑换---免罪金牌</a>转变为免考核。<br />\r\n未达标HR数目大于10的用户将降级为学院新生,并且不享受全站促销政策<br />\r\nVIP及以上用户不会因为HR而降级,已退学用户不会因为HR而升级,未注册用户请先注册<br />\r\n<a class=\"faqlink\" href=\"myhr.php\">查看我的H&R</a>\r\n</ul>', '1', '2', '12');

-- ----------------------------
-- Table structure for `files`
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `torrent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `torrent` (`torrent`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1167452 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of files
-- ----------------------------

-- ----------------------------
-- Table structure for `formatcodephp2img`
-- ----------------------------
DROP TABLE IF EXISTS `formatcodephp2img`;
CREATE TABLE `formatcodephp2img` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `md5` varchar(32) NOT NULL,
  `returncode` text NOT NULL,
  `time` int(10) NOT NULL,
  `org` text NOT NULL,
  `ContentType` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `md5` (`md5`)
) ENGINE=MyISAM AUTO_INCREMENT=26244 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of formatcodephp2img
-- ----------------------------

-- ----------------------------
-- Table structure for `formatcodephp2url`
-- ----------------------------
DROP TABLE IF EXISTS `formatcodephp2url`;
CREATE TABLE `formatcodephp2url` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `md5` varchar(32) NOT NULL,
  `returncode` text NOT NULL,
  `time` int(10) NOT NULL,
  `org` text NOT NULL,
  `ContentType` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `md5` (`md5`)
) ENGINE=MyISAM AUTO_INCREMENT=26129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of formatcodephp2url
-- ----------------------------

-- ----------------------------
-- Table structure for `formatcodephping`
-- ----------------------------
DROP TABLE IF EXISTS `formatcodephping`;
CREATE TABLE `formatcodephping` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `org` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `md5` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org` (`md5`)
) ENGINE=MyISAM AUTO_INCREMENT=62797 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of formatcodephping
-- ----------------------------

-- ----------------------------
-- Table structure for `forummods`
-- ----------------------------
DROP TABLE IF EXISTS `forummods`;
CREATE TABLE `forummods` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `forumid` smallint(5) unsigned NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forumid` (`forumid`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forummods
-- ----------------------------
INSERT INTO `forummods` VALUES ('107', '4', '1');

-- ----------------------------
-- Table structure for `forums`
-- ----------------------------
DROP TABLE IF EXISTS `forums`;
CREATE TABLE `forums` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `minclassread` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `minclasswrite` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postcount` int(10) unsigned NOT NULL DEFAULT '0',
  `topiccount` int(10) unsigned NOT NULL DEFAULT '0',
  `minclasscreate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `forid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forums
-- ----------------------------
INSERT INTO `forums` VALUES ('1', '0', '{互帮互助版块}', '我才是互帮互助版块', '0', '0', '6739', '814', '0', '4');
INSERT INTO `forums` VALUES ('2', '2', '{伸手求种版块}', '楼上是互帮互助版块', '1', '1', '3593', '831', '2', '4');
INSERT INTO `forums` VALUES ('3', '0', '{水漫交大版块}', '楼下不是水漫交大版块,不信你问楼下', '1', '1', '11039', '734', '1', '3');
INSERT INTO `forums` VALUES ('4', '0', '{站务公告版块}', '楼下说的是对的', '0', '1', '48', '3', '11', '2');
INSERT INTO `forums` VALUES ('5', '1', '{建议意见版块}', '楼上才是站务公告版块', '2', '2', '1931', '174', '2', '2');
INSERT INTO `forums` VALUES ('8', '8', '{垃圾回收版块}', '楼上说的是对的', '11', '11', '165', '5', '11', '2');
INSERT INTO `forums` VALUES ('6', '3', '{使用经验版块}', '我不是互帮互助版块', '0', '2', '487', '24', '2', '4');
INSERT INTO `forums` VALUES ('7', '7', '{邀请快车版块}', '你才是互帮互助版块', '2', '2', '3808', '165', '2', '4');
INSERT INTO `forums` VALUES ('9', '9', '{资源分享版块}', '楼上不是资源分享版块,不信你看楼上', '0', '1', '342', '22', '2', '3');
INSERT INTO `forums` VALUES ('10', '10', '{博彩板块名称}', '小赌移情,大赌伤肾,强赌灰飞烟灭', '2', '2', '807', '375', '2', '3');

-- ----------------------------
-- Table structure for `friends`
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL,
  `friendid` mediumint(8) unsigned NOT NULL,
  `sname` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userfriend` (`userid`,`friendid`),
  KEY `friendid` (`friendid`)
) ENGINE=MyISAM AUTO_INCREMENT=8993 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friends
-- ----------------------------

-- ----------------------------
-- Table structure for `fun`
-- ----------------------------
DROP TABLE IF EXISTS `fun`;
CREATE TABLE `fun` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body` text,
  `title` varchar(255) NOT NULL DEFAULT '',
  `status` enum('normal','dull','notfunny','funny','veryfunny','banned') NOT NULL DEFAULT 'normal',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=664 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun
-- ----------------------------

-- ----------------------------
-- Table structure for `funcomment`
-- ----------------------------
DROP TABLE IF EXISTS `funcomment`;
CREATE TABLE `funcomment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `funid` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `text` varchar(255) CHARACTER SET gbk NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`funid`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5649 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of funcomment
-- ----------------------------

-- ----------------------------
-- Table structure for `funds`
-- ----------------------------
DROP TABLE IF EXISTS `funds`;
CREATE TABLE `funds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usd` decimal(8,2) NOT NULL DEFAULT '0.00',
  `cny` decimal(8,2) NOT NULL DEFAULT '0.00',
  `user` mediumint(8) unsigned NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `memo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of funds
-- ----------------------------
INSERT INTO `funds` VALUES ('1', '0.00', '8.00', '3632', '2011-06-29 20:42:58', '');
INSERT INTO `funds` VALUES ('2', '0.00', '10.00', '13847', '2011-08-03 09:42:12', '');
INSERT INTO `funds` VALUES ('3', '0.00', '10.00', '13847', '2011-08-03 09:42:15', '');
INSERT INTO `funds` VALUES ('4', '0.00', '10.00', '13847', '2011-08-03 09:45:09', '');
INSERT INTO `funds` VALUES ('5', '0.00', '10.00', '13847', '2011-08-03 09:48:16', '');
INSERT INTO `funds` VALUES ('6', '0.00', '1.00', '832', '2011-08-25 09:45:56', '');
INSERT INTO `funds` VALUES ('7', '0.00', '100.00', '25615', '2014-12-26 18:23:30', '2014-12-26 18:23:44');
INSERT INTO `funds` VALUES ('8', '0.00', '51.00', '43406', '2015-01-17 22:27:53', '');

-- ----------------------------
-- Table structure for `funvotes`
-- ----------------------------
DROP TABLE IF EXISTS `funvotes`;
CREATE TABLE `funvotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `funid` mediumint(8) unsigned NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote` enum('fun','dull') NOT NULL DEFAULT 'fun',
  PRIMARY KEY (`funid`,`userid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of funvotes
-- ----------------------------

-- ----------------------------
-- Table structure for `imdbdoubanurl`
-- ----------------------------
DROP TABLE IF EXISTS `imdbdoubanurl`;
CREATE TABLE `imdbdoubanurl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `imdb` int(10) NOT NULL,
  `douban` int(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `imdb_douban` (`imdb`,`douban`) USING BTREE,
  KEY `douban` (`douban`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imdbdoubanurl
-- ----------------------------

-- ----------------------------
-- Table structure for `imdbinfo`
-- ----------------------------
DROP TABLE IF EXISTS `imdbinfo`;
CREATE TABLE `imdbinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imdb` int(10) NOT NULL,
  `name` char(255) NOT NULL,
  `rating` decimal(3,1) NOT NULL DEFAULT '0.0',
  `info` text NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `imdb` (`imdb`) USING BTREE,
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7170 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imdbinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `invites`
-- ----------------------------
DROP TABLE IF EXISTS `invites`;
CREATE TABLE `invites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inviter` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invitee` varchar(80) NOT NULL DEFAULT '',
  `hash` char(32) NOT NULL,
  `time_invited` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sent` mediumint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`(3)),
  KEY `inviter` (`inviter`),
  KEY `time_invited` (`time_invited`)
) ENGINE=MyISAM AUTO_INCREMENT=43878 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invites
-- ----------------------------

-- ----------------------------
-- Table structure for `iplog`
-- ----------------------------
DROP TABLE IF EXISTS `iplog`;
CREATE TABLE `iplog` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(64) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL,
  `access` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_ip` (`userid`,`ip`),
  KEY `ip` (`ip`),
  KEY `access` (`access`)
) ENGINE=MyISAM AUTO_INCREMENT=7658192 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iplog
-- ----------------------------

-- ----------------------------
-- Table structure for `isp`
-- ----------------------------
DROP TABLE IF EXISTS `isp`;
CREATE TABLE `isp` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of isp
-- ----------------------------
INSERT INTO `isp` VALUES ('1', '中国电信');
INSERT INTO `isp` VALUES ('2', '中国网通');
INSERT INTO `isp` VALUES ('3', '中国铁通');
INSERT INTO `isp` VALUES ('4', '中国移动');
INSERT INTO `isp` VALUES ('5', '中国联通');
INSERT INTO `isp` VALUES ('6', '中国教育网');
INSERT INTO `isp` VALUES ('20', 'Other');

-- ----------------------------
-- Table structure for `language`
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(50) NOT NULL,
  `flagpic` varchar(255) NOT NULL DEFAULT '',
  `sub_lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `rule_lang` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `site_lang` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `site_lang_folder` varchar(255) NOT NULL DEFAULT '',
  `trans_state` enum('up-to-date','outdate','incomplete','need-new','unavailable') NOT NULL DEFAULT 'unavailable',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES ('1', 'Bulgarian', 'bulgaria.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('2', 'Croatian', 'croatia.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('3', 'Czech', 'czechrep.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('4', 'Danish', 'denmark.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('5', 'Dutch', 'netherlands.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('6', 'English', 'uk.gif', '1', '1', '0', 'en', 'unavailable');
INSERT INTO `language` VALUES ('7', 'Estonian', 'estonia.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('8', 'Finnish', 'finland.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('9', 'French', 'france.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('10', 'German', 'germany.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('11', 'Greek', 'greece.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('12', 'Hebrew', 'israel.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('13', 'Hungarian', 'hungary.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('14', 'Italian', 'italy.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('15', '日本語', 'japan.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('16', '한국어', 'southkorea.gif', '1', '0', '0', 'ko', 'unavailable');
INSERT INTO `language` VALUES ('17', 'Norwegian', 'norway.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('18', 'Other', 'jollyroger.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('19', 'Polish', 'poland.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('20', 'Portuguese', 'portugal.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('21', 'Romanian', 'romania.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('22', 'Russian', 'russia.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('23', 'Serbian', 'serbia.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('24', 'Slovak', 'slovakia.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('25', '简体中文', 'china.gif', '1', '1', '1', 'chs', 'up-to-date');
INSERT INTO `language` VALUES ('26', 'Spanish', 'spain.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('27', 'Swedish', 'sweden.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('28', '繁體中文', 'hongkong.gif', '1', '1', '0', 'cht', 'up-to-date');
INSERT INTO `language` VALUES ('29', 'Turkish', 'turkey.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('30', 'Slovenian', 'slovenia.gif', '1', '0', '0', '', 'unavailable');
INSERT INTO `language` VALUES ('31', 'Thai', 'thailand.gif', '1', '0', '0', 'th', 'unavailable');

-- ----------------------------
-- Table structure for `links`
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `X` int(10) unsigned NOT NULL DEFAULT '0',
  `Y` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of links
-- ----------------------------
INSERT INTO `links` VALUES ('1', '<b>百度西南交通大学吧</b>', 'http://tieba.baidu.com/f?kw=%CE%F7%C4%CF%BD%BB%CD%A8%B4%F3%D1%A7', '西南交通大学贴吧', '2', '0');
INSERT INTO `links` VALUES ('3', '百度157阶吧', 'http://tieba.baidu.com/f?kw=157%BD%D7', ' 西南交大峨眉校区百度贴吧', '3', '0');
INSERT INTO `links` VALUES ('14', '麦田PT[IPV6]', 'http://pt.nwsuaf6.edu.cn/', '西北农林科技大学', '6', '0');
INSERT INTO `links` VALUES ('17', '溪涧草堂PT[IPV6]', 'http://pt.xauat6.edu.cn/', '西安建筑科技大学', '7', '0');
INSERT INTO `links` VALUES ('20', '北洋园PT[IPV6]', 'http://pt.tju6.edu.cn/', '天津大学', '8', '0');
INSERT INTO `links` VALUES ('34', '清影PT', 'http://pt.hit.edu.cn', 'http://pt.hit.edu.cn', '5', '0');
INSERT INTO `links` VALUES ('36', '扑通PT[IPV6]', 'http://pt6.xhu.edu.cn', '西华大学', '9', '0');
INSERT INTO `links` VALUES ('37', '珞樱PT', 'http://pt.whu.edu.cn/', '武汉大学资源共享平台', '10', '0');

-- ----------------------------
-- Table structure for `locations`
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `location_main` varchar(200) NOT NULL,
  `location_sub` varchar(200) NOT NULL,
  `flagpic` varchar(50) DEFAULT NULL,
  `start_ip` varchar(64) NOT NULL,
  `end_ip` varchar(64) NOT NULL,
  `theory_upspeed` int(10) unsigned NOT NULL DEFAULT '10',
  `practical_upspeed` int(10) unsigned NOT NULL DEFAULT '10',
  `theory_downspeed` int(10) unsigned NOT NULL DEFAULT '10',
  `practical_downspeed` int(10) unsigned NOT NULL DEFAULT '10',
  `hit` int(10) unsigned NOT NULL DEFAULT '0',
  `ipv6` int(10) NOT NULL DEFAULT '1',
  `start_ip6` decimal(65,0) NOT NULL,
  `end_ip6` decimal(65,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `start_ip6, end_ip6` (`start_ip6`,`end_ip6`) USING HASH,
  KEY `end_ip6` (`end_ip6`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO `locations` VALUES ('4', '西南交通大学<b>教育网</b>', '', '', '', '218.194.0.1', '218.194.15.255', '0', '0', '0', '0', '0', '1', '290779008750895579367229193022527766528', '290779333110992912765427300991460442112');
INSERT INTO `locations` VALUES ('3', '西南交通大学<b>教育网</b>', '', '', '', '202.115.64.1', '202.115.79.255', '0', '0', '0', '0', '0', '1', '269102467440727307725021503472116170752', '269102791800824641123219611441048846336');
INSERT INTO `locations` VALUES ('5', '西南交通大学<b>教育网</b>', '', '', '', '222.18.32.1', '222.18.63.255', '0', '0', '0', '0', '0', '1', '295182725524040430049676620221747560448', '295183374402691421874601511346700812288');
INSERT INTO `locations` VALUES ('6', '西南交通大学<b>教育网</b>', '', '', '', '121.48.176.1', '121.48.191.255', '0', '0', '0', '0', '0', '1', '161089387522502897555789070427494547456', '161089711882600230953987178396427223040');
INSERT INTO `locations` VALUES ('7', '西南交通大学<b>教育网</b>', '', '', '', '180.85.0.1', '180.85.63.255', '0', '0', '0', '0', '0', '1', '239702384553488479985374700631989682176', '239703682469246788663753158068984086528');
INSERT INTO `locations` VALUES ('8', '西南交通大学<b>教育网</b>', '', '', '', '210.41.80.1', '210.41.95.255', '0', '0', '0', '0', '0', '1', '279352385958028715890467486382017216512', '279352710318126049288665594350949892096');
INSERT INTO `locations` VALUES ('9', '西南交通大学<b>网通</b>', '', '', '', '124.161.8.1', '124.161.8.255', '0', '0', '0', '0', '0', '1', '165660393610058667215893214555321401344', '165660413734011945839034963315484786688');
INSERT INTO `locations` VALUES ('10', '西南交通大学<b>网通</b>', '', '', '', '124.161.64.1', '124.161.79.255', '0', '0', '0', '0', '0', '1', '165661529424996471709436955601393418240', '165661853785093805107635063570326093824');
INSERT INTO `locations` VALUES ('11', '西南交通大学<b>网通</b>', '', '', '', '221.10.44.208', '221.10.44.223', '0', '0', '0', '0', '0', '1', '293812218942532119828507538421446606848', '293812220130954557542472602324605861888');
INSERT INTO `locations` VALUES ('12', '西南交通大学<b>网通</b>', '', '', '', '119.6.70.1', '119.6.71.255', '0', '0', '0', '0', '0', '1', '158210705127456615972518237052470296576', '158210745533819498247330409759884967936');
INSERT INTO `locations` VALUES ('13', '西南交通大学<b>网通</b>', '', '', '', '119.4.172.1', '119.4.173.255', '0', '0', '0', '0', '0', '1', '158202389339519118787644418679443030016', '158202429745882001062456591386857701376');
INSERT INTO `locations` VALUES ('14', '西南交通大学<b>网通</b>', '', '', '', '112.193.128.1', '112.193.131.255', '0', '0', '0', '0', '0', '1', '149878245049265229425611379384646631424', '149878326020447319003764399986563874816');
INSERT INTO `locations` VALUES ('15', '西南交通大学<b>网通(峨眉)</b>', '', '', '', '221.10.111.1', '221.10.111.255', '0', '0', '0', '0', '0', '1', '293813561463745924037708061023685050368', '293813581587699202660849809783848435712');
INSERT INTO `locations` VALUES ('16', '西南交通大学<b>网通(峨眉)</b>', '', '', '', '221.10.240.1', '221.10.240.255', '0', '0', '0', '0', '0', '1', '293816177894584795103192750219100946432', '293816198018538073726334498979264331776');
INSERT INTO `locations` VALUES ('17', '西南交通大学<b>网通(峨眉)</b>', '', '', '', '221.10.122.1', '221.10.122.255', '0', '0', '0', '0', '0', '1', '293813784570251564206082724443449196544', '293813804694204842829224473203612581888');
INSERT INTO `locations` VALUES ('18', '西南交通大学<b>网通(峨眉)</b>', '', '', '', '221.10.115.1', '221.10.115.255', '0', '0', '0', '0', '0', '1', '293813642593384338644389756812690194432', '293813662717337617267531505572853579776');
INSERT INTO `locations` VALUES ('20', '<b>西南交通大学</b>', '', '', '', '2001:DA8:6005::1', '2001:DA8:6006::0', '0', '0', '0', '0', '0', '0', '42540765173348598200621783198403133441', '42540765173349807126441397827577839616');
INSERT INTO `locations` VALUES ('270', '免费网络(内网)', '', '', '', '10.0.0.0', '11.0.0.0', '0', '0', '0', '0', '0', '1', '13292279957849158729038070602803445760', '14621507953634074601941877663083790336');
INSERT INTO `locations` VALUES ('271', '西南交通大学<b>网通</b>', '', '', '', '119.6.74.1', '119.6.75.255', '0', '0', '0', '0', '0', '1', '158210786257095030579199932841475440640', '158210826663457912854012105548890112000');
INSERT INTO `locations` VALUES ('272', '西南交通大学<b>网通</b>', '', '', '', '175.152.18.1', '175.152.19.254', '0', '0', '0', '0', '0', '1', '233404493547458599802034839635168854016', '233404533874593319562582674749039575040');
INSERT INTO `locations` VALUES ('273', '西南交通大学<b>网通</b>', '', '', '', '119.4.215.2', '119.4.215.254', '0', '0', '0', '0', '0', '1', '158203261562360238323736986004792279040', '158203281527857191918350059577867763712');
INSERT INTO `locations` VALUES ('274', '西南交通大学<b>网通</b>', '', '', '', '119.4.217.2', '119.4.217.254', '0', '0', '0', '0', '0', '1', '158203302127179445627077833899294851072', '158203322092676399221690907472370335744');
INSERT INTO `locations` VALUES ('275', '蓉杏园(内网)', '', '', '', '172.0.0.1', '172.255.0.1', '0', '0', '0', '0', '0', '1', '228627215354233692653719151961763217408', '229951251053160073698994428525714341888');
INSERT INTO `locations` VALUES ('276', '西南交通大学<b>网通</b>', '', '', '', '119.4.110.1', '119.4.111.1', '0', '0', '0', '0', '0', '1', '158201131830123692384078133949863297024', '158201152112533296035748557897114583040');
INSERT INTO `locations` VALUES ('277', '免费网络(内网)', '', '', '', '100.0.0.0', '101.0.0.0', '0', '0', '0', '0', '0', '1', '132922799578491587290380706028034457600', '134252027574276503163284513088314802176');

-- ----------------------------
-- Table structure for `loginattempts`
-- ----------------------------
DROP TABLE IF EXISTS `loginattempts`;
CREATE TABLE `loginattempts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(64) NOT NULL DEFAULT '',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `attempts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` enum('login','recover') NOT NULL DEFAULT 'login',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `added` (`added`)
) ENGINE=MyISAM AUTO_INCREMENT=112924 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loginattempts
-- ----------------------------
INSERT INTO `loginattempts` VALUES ('112920', '2001:250:1403:2013:40f9:ce8f:ab95:7205', '2015-05-08 17:03:13', 'no', '1', 'login');
INSERT INTO `loginattempts` VALUES ('112919', '112.193.131.242', '2015-05-08 17:01:11', 'no', '1', 'login');
INSERT INTO `loginattempts` VALUES ('112922', '2001:250:2009:61c1:28ad:a5a4:334f:2445', '2015-05-08 18:50:05', 'no', '1', 'login');
INSERT INTO `loginattempts` VALUES ('112918', '2001:250:4402:608:f88a:ec1f:9ff3:b6ca', '2015-05-08 16:46:41', 'no', '1', 'login');
INSERT INTO `loginattempts` VALUES ('112921', '121.48.180.109', '2015-05-08 17:43:44', 'no', '1', 'login');
INSERT INTO `loginattempts` VALUES ('112923', '121.48.178.146', '2015-05-08 19:10:55', 'no', '2', 'login');

-- ----------------------------
-- Table structure for `lotteryhistory`
-- ----------------------------
DROP TABLE IF EXISTS `lotteryhistory`;
CREATE TABLE `lotteryhistory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ticket` text NOT NULL,
  `type` enum('loser','winner') NOT NULL,
  `amount` int(10) NOT NULL DEFAULT '0',
  `opentime` int(10) NOT NULL DEFAULT '0',
  `user` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `time` (`opentime`),
  FULLTEXT KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=1773 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lotteryhistory
-- ----------------------------

-- ----------------------------
-- Table structure for `lottery_config`
-- ----------------------------
DROP TABLE IF EXISTS `lottery_config`;
CREATE TABLE `lottery_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lottery_config
-- ----------------------------
INSERT INTO `lottery_config` VALUES ('1', 'ticket_amount', '100');
INSERT INTO `lottery_config` VALUES ('2', 'ticket_amount_type', 'seedbonus');
INSERT INTO `lottery_config` VALUES ('3', 'user_tickets', '15');
INSERT INTO `lottery_config` VALUES ('4', 'class_allowed', '1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19');
INSERT INTO `lottery_config` VALUES ('5', 'total_winners', '10');
INSERT INTO `lottery_config` VALUES ('6', 'prize_fund', '20000');
INSERT INTO `lottery_config` VALUES ('7', 'start_date', '1431020274');
INSERT INTO `lottery_config` VALUES ('8', 'end_date', '84600');
INSERT INTO `lottery_config` VALUES ('9', 'use_prize_fund', '0');
INSERT INTO `lottery_config` VALUES ('10', 'enable', '1');
INSERT INTO `lottery_config` VALUES ('11', 'lottery_winners', '3767|41035|8310|38063|20239|28357|39057|33543|29798|36018');
INSERT INTO `lottery_config` VALUES ('12', 'lottery_winners_amount', '4410');
INSERT INTO `lottery_config` VALUES ('13', 'lottery_winners_time', '1431020274');
INSERT INTO `lottery_config` VALUES ('14', 'lottery_winnertid', '237|148|197|214|84|185|120|52|104|19');

-- ----------------------------
-- Table structure for `mail_store`
-- ----------------------------
DROP TABLE IF EXISTS `mail_store`;
CREATE TABLE `mail_store` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `trytimes` tinyint(2) NOT NULL DEFAULT '0',
  `touser` char(255) NOT NULL,
  `fromname` char(255) NOT NULL,
  `fromemail` char(255) NOT NULL,
  `subjecttitle` char(255) NOT NULL,
  `body` text NOT NULL,
  `type` char(255) NOT NULL,
  `showmsg` tinyint(1) NOT NULL,
  `multiple` tinyint(1) NOT NULL,
  `multiplemail` char(255) NOT NULL,
  `hdr_encoding` char(255) NOT NULL,
  `specialcase` char(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trytimes` (`trytimes`)
) ENGINE=MyISAM AUTO_INCREMENT=27468 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mail_store
-- ----------------------------

-- ----------------------------
-- Table structure for `management`
-- ----------------------------
DROP TABLE IF EXISTS `management`;
CREATE TABLE `management` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `userid` int(10) NOT NULL,
  `action_id` int(10) NOT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of management
-- ----------------------------
INSERT INTO `management` VALUES ('10', '10', '1152', '10', '2012-03-13');

-- ----------------------------
-- Table structure for `media`
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sort_index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES ('10', 'Windows', '0', '0');
INSERT INTO `media` VALUES ('11', 'Linux', '1', '0');
INSERT INTO `media` VALUES ('12', 'Mac', '2', '0');
INSERT INTO `media` VALUES ('13', 'Mobile', '3', '0');
INSERT INTO `media` VALUES ('14', '其他平台', '6', '0');
INSERT INTO `media` VALUES ('15', 'Android', '5', '0');

-- ----------------------------
-- Table structure for `messages`
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `receiver` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(128) NOT NULL DEFAULT '',
  `msg` text,
  `unread` enum('yes','no') NOT NULL DEFAULT 'yes',
  `location` smallint(6) NOT NULL DEFAULT '1',
  `saved` enum('no','yes') NOT NULL DEFAULT 'no',
  `identify` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receiver` (`receiver`),
  KEY `sender` (`sender`),
  KEY `receiver_unread` (`unread`,`receiver`) USING BTREE,
  KEY `location_receiver` (`location`,`receiver`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=888588 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for `modpanel`
-- ----------------------------
DROP TABLE IF EXISTS `modpanel`;
CREATE TABLE `modpanel` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of modpanel
-- ----------------------------
INSERT INTO `modpanel` VALUES ('12', '上传速度异常', 'cheaters.php', '查看作弊者');
INSERT INTO `modpanel` VALUES ('2', '重复的IP检查', 'ipcheck.php', '检查重复的IP用户');
INSERT INTO `modpanel` VALUES ('4', '广告管理', 'admanage.php', '管理您网站上刊登广告');
INSERT INTO `modpanel` VALUES ('7', 'IP 测试', 'testip.php', '测试IP是否被禁止');
INSERT INTO `modpanel` VALUES ('8', '增加魔力值', 'amountbonus.php', '增加一个或所有用户魔力值');
INSERT INTO `modpanel` VALUES ('9', '清除缓存', 'clearcache.php', '清除memcached缓存');
INSERT INTO `modpanel` VALUES ('10', '未验证用户(目前)', 'unco.php', '显示所有未验证用户');
INSERT INTO `modpanel` VALUES ('11', '搜索用户', 'usersearch.php', '搜索用户');
INSERT INTO `modpanel` VALUES ('13', '竞猜大厅管理', 'bet_admin.php', '管理竞猜');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body` text,
  `title` varchar(255) NOT NULL DEFAULT '',
  `notify` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('102', '1152', '2013-09-01 16:49:59', '[quote=对[b][size=4]部分下载模式为IPV4[/size][/b]的用户的建议][s]经过站内投票以及[color=Crimson][b]红♂姨[/b][/color]长达两年的观察 发现经过inc调整后的纯ipv6带宽受限，\r\n且存在部分残疾ipv6（ip为2001:da8:6005:5a00开头），以及大量单纯ipv4用户（ip为10开头） 下载速度[color=Crimson][b][size=4]较慢且互连相性差[/size][/b][/color]\r\n因此强烈推荐用户使用6TO4模式（即隧道ipv6）进行pt下载 详细方法见链接:http://ipv6.antsoul.com/forums.php?action=viewtopic&amp;forumid=6&amp;topicid=2983\r\n[/s]\r\n目前IPv6恢复，犀浦北区20M桌面带宽，期限未知，隧道仍处于限速，推荐纯IPv6  ——茶刀子[/quote]\r\n[quote=Caution please!][color=DarkGreen][b][size=4]爱读不读:\r\nhttp://pt6.antsoul.com/forums.php?action=viewtopic&amp;forumid=4&amp;topicid=150\r\n[/size][/b]欢迎Antsouler入群（虽然以二次元团体居多 但都是有爱并且热情的学长/[s]姐[/s] 以及永远无法脱团的一干壕）\r\n[color=Darkgreen]企鹅群号:39582157[/color]\r\n[/color]\r\n[/quote]\r\n[quote=有6v号的蚂蚁er看过来][url=http://bt.neu6.edu.cn/forum.php?mod=group&amp;fid=249]西南交通大学群组in 6v[/url]\r\n欢迎有6v号的来抱团~[/quote]', '主题什么的怎么样都可以', 'yes');

-- ----------------------------
-- Table structure for `offers`
-- ----------------------------
DROP TABLE IF EXISTS `offers`;
CREATE TABLE `offers` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(225) NOT NULL,
  `descr` text,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `allowedtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `yeah` smallint(5) unsigned NOT NULL DEFAULT '0',
  `against` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category` smallint(5) unsigned NOT NULL DEFAULT '0',
  `comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allowed` enum('allowed','pending','denied') NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=399 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of offers
-- ----------------------------

-- ----------------------------
-- Table structure for `offervotes`
-- ----------------------------
DROP TABLE IF EXISTS `offervotes`;
CREATE TABLE `offervotes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `offerid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote` enum('yeah','against') NOT NULL DEFAULT 'yeah',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2507 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of offervotes
-- ----------------------------

-- ----------------------------
-- Table structure for `otherpanel`
-- ----------------------------
DROP TABLE IF EXISTS `otherpanel`;
CREATE TABLE `otherpanel` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of otherpanel
-- ----------------------------
INSERT INTO `otherpanel` VALUES ('3', '所有客户端(目前)', 'allagents.php', '显示所有客户端（目前下载/上传/播）');
INSERT INTO `otherpanel` VALUES ('5', '上传', 'uploaders.php', '查看上传统计');
INSERT INTO `otherpanel` VALUES ('6', '统计', 'stats.php', 'Tracker 统计');
INSERT INTO `otherpanel` VALUES ('90', '手动添加种子用户', 'addseeder.php', '手动添加种子用户');

-- ----------------------------
-- Table structure for `overforums`
-- ----------------------------
DROP TABLE IF EXISTS `overforums`;
CREATE TABLE `overforums` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `minclassview` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of overforums
-- ----------------------------
INSERT INTO `overforums` VALUES ('2', '事务处理', '', '0', '0');
INSERT INTO `overforums` VALUES ('3', '闲聊天地', '', '0', '4');
INSERT INTO `overforums` VALUES ('4', '互助天地', '', '0', '1');

-- ----------------------------
-- Table structure for `peers`
-- ----------------------------
DROP TABLE IF EXISTS `peers`;
CREATE TABLE `peers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `torrent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `peer_id` binary(20) NOT NULL DEFAULT '0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ip` varchar(128) NOT NULL DEFAULT '',
  `port` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `to_go` bigint(20) unsigned NOT NULL DEFAULT '0',
  `seeder` enum('yes','no') NOT NULL DEFAULT 'no',
  `started` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `prev_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `connectable` enum('yes','no') NOT NULL DEFAULT 'yes',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `agent` varchar(60) NOT NULL DEFAULT '0',
  `finishedat` int(10) unsigned NOT NULL DEFAULT '0',
  `downloadoffset` bigint(20) unsigned NOT NULL DEFAULT '0',
  `uploadoffset` bigint(20) unsigned NOT NULL DEFAULT '0',
  `passkey` char(32) NOT NULL DEFAULT '0',
  `iptype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seedtime` int(10) unsigned NOT NULL DEFAULT '0',
  `leechtime` int(10) unsigned NOT NULL DEFAULT '0',
  `upthis` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downthis` bigint(20) unsigned NOT NULL DEFAULT '0',
  `announcetime` int(10) unsigned NOT NULL DEFAULT '0',
  `isipv4` int(1) NOT NULL DEFAULT '0',
  `next_action` int(10) NOT NULL DEFAULT '0',
  `ipv6` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `next_action` (`next_action`) USING BTREE,
  KEY `userid` (`userid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE,
  KEY `f` (`torrent`,`seeder`) USING BTREE
) ENGINE=MEMORY DEFAULT CHARSET=utf8 MAX_ROWS=4294967295;

-- ----------------------------
-- Records of peers
-- ----------------------------

-- ----------------------------
-- Table structure for `peershis`
-- ----------------------------
DROP TABLE IF EXISTS `peershis`;
CREATE TABLE `peershis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `timenow` date NOT NULL,
  `truploaded` bigint(20) NOT NULL DEFAULT '0',
  `imuploaded` bigint(20) NOT NULL DEFAULT '0',
  `trdownloaded` bigint(20) NOT NULL DEFAULT '0',
  `imdownloaded` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_timenow` (`userid`,`timenow`),
  KEY `timenow` (`timenow`)
) ENGINE=MyISAM AUTO_INCREMENT=969879 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of peershis
-- ----------------------------

-- ----------------------------
-- Table structure for `pmboxes`
-- ----------------------------
DROP TABLE IF EXISTS `pmboxes`;
CREATE TABLE `pmboxes` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL,
  `boxnumber` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmboxes
-- ----------------------------

-- ----------------------------
-- Table structure for `pollanswers`
-- ----------------------------
DROP TABLE IF EXISTS `pollanswers`;
CREATE TABLE `pollanswers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pollid` mediumint(8) unsigned NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL,
  `selection` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`),
  KEY `selection` (`selection`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=33372 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pollanswers
-- ----------------------------

-- ----------------------------
-- Table structure for `polls`
-- ----------------------------
DROP TABLE IF EXISTS `polls`;
CREATE TABLE `polls` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `question` varchar(255) NOT NULL DEFAULT '',
  `option0` varchar(40) NOT NULL DEFAULT '',
  `option1` varchar(40) NOT NULL DEFAULT '',
  `option2` varchar(40) NOT NULL DEFAULT '',
  `option3` varchar(40) NOT NULL DEFAULT '',
  `option4` varchar(40) NOT NULL DEFAULT '',
  `option5` varchar(40) NOT NULL DEFAULT '',
  `option6` varchar(40) NOT NULL DEFAULT '',
  `option7` varchar(40) NOT NULL DEFAULT '',
  `option8` varchar(40) NOT NULL DEFAULT '',
  `option9` varchar(40) NOT NULL DEFAULT '',
  `option10` varchar(40) NOT NULL DEFAULT '',
  `option11` varchar(40) NOT NULL DEFAULT '',
  `option12` varchar(40) NOT NULL DEFAULT '',
  `option13` varchar(40) NOT NULL DEFAULT '',
  `option14` varchar(40) NOT NULL DEFAULT '',
  `option15` varchar(40) NOT NULL DEFAULT '',
  `option16` varchar(40) NOT NULL DEFAULT '',
  `option17` varchar(40) NOT NULL DEFAULT '',
  `option18` varchar(40) NOT NULL DEFAULT '',
  `option19` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of polls
-- ----------------------------

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topicid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body` text,
  `ori_body` text,
  `editedby` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `editdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `topicid_id` (`topicid`,`id`),
  KEY `added` (`added`),
  FULLTEXT KEY `body` (`body`)
) ENGINE=MyISAM AUTO_INCREMENT=30356 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------

-- ----------------------------
-- Table structure for `processings`
-- ----------------------------
DROP TABLE IF EXISTS `processings`;
CREATE TABLE `processings` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sort_index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of processings
-- ----------------------------
INSERT INTO `processings` VALUES ('3', '剧场OVA', '0', '0');
INSERT INTO `processings` VALUES ('4', '完结剧集', '1', '0');
INSERT INTO `processings` VALUES ('5', '连载剧集', '2', '0');

-- ----------------------------
-- Table structure for `prolinkclicks`
-- ----------------------------
DROP TABLE IF EXISTS `prolinkclicks`;
CREATE TABLE `prolinkclicks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=18142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prolinkclicks
-- ----------------------------

-- ----------------------------
-- Table structure for `readposts`
-- ----------------------------
DROP TABLE IF EXISTS `readposts`;
CREATE TABLE `readposts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topicid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lastpostread` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `topicid` (`topicid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=169113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readposts
-- ----------------------------

-- ----------------------------
-- Table structure for `regimages`
-- ----------------------------
DROP TABLE IF EXISTS `regimages`;
CREATE TABLE `regimages` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `imagehash` varchar(32) NOT NULL DEFAULT '',
  `imagestring` varchar(16) NOT NULL DEFAULT '',
  `imdb` int(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `imagehash` (`imagehash`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of regimages
-- ----------------------------
INSERT INTO `regimages` VALUES ('1', '59eedebb33304a5620675aa3d114e3de', '7825d734', '1297768', '1431047195', '113.107.245.50');
INSERT INTO `regimages` VALUES ('2', 'da0eb8f57925a1043e522cbbf084e94f', '2060cd81', '1418052', '1431047388', '113.107.245.50');
INSERT INTO `regimages` VALUES ('4', 'db24a611ae6bae297b25be52eb480ac4', '247722ce', '10428482', '1431058026', '180.85.6.203');
INSERT INTO `regimages` VALUES ('15', 'c22196c98c857280c0cf3ef6b35ab3c3', '594638ab', '25747649', '1431085636', '119.4.217.249');

-- ----------------------------
-- Table structure for `reports`
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `addedby` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reportid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` enum('torrent','user','offer','request','post','comment','subtitle') NOT NULL DEFAULT 'torrent',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `dealtby` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dealtwith` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=351 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reports
-- ----------------------------
INSERT INTO `reports` VALUES ('349', '41714', '2015-04-25 16:33:03', '45030', 'torrent', '无下载种子的选项', '11876', '1');
INSERT INTO `reports` VALUES ('350', '25806', '2015-05-06 18:14:31', '46575', 'torrent', '没标注枪版，传一半没人了', '17961', '1');

-- ----------------------------
-- Table structure for `requests`
-- ----------------------------
DROP TABLE IF EXISTS `requests`;
CREATE TABLE `requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `request` varchar(225) CHARACTER SET gbk NOT NULL DEFAULT '',
  `descr` text CHARACTER SET gbk NOT NULL,
  `comments` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `cat` int(10) unsigned NOT NULL DEFAULT '0',
  `filledby` int(10) unsigned NOT NULL DEFAULT '0',
  `torrentid` int(10) unsigned NOT NULL DEFAULT '0',
  `finish` enum('yes','no') CHARACTER SET gbk NOT NULL DEFAULT 'no',
  `amount` int(10) NOT NULL DEFAULT '0',
  `ori_descr` varchar(255) CHARACTER SET gbk NOT NULL,
  `ori_amount` int(10) NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `finish, userid` (`finish`,`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=1250 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of requests
-- ----------------------------

-- ----------------------------
-- Table structure for `resreq`
-- ----------------------------
DROP TABLE IF EXISTS `resreq`;
CREATE TABLE `resreq` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reqid` int(10) NOT NULL,
  `torrentid` int(10) NOT NULL,
  `chosen` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `reqid` (`reqid`)
) ENGINE=MyISAM AUTO_INCREMENT=780 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resreq
-- ----------------------------

-- ----------------------------
-- Table structure for `rules`
-- ----------------------------
DROP TABLE IF EXISTS `rules`;
CREATE TABLE `rules` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` smallint(5) unsigned NOT NULL DEFAULT '6',
  `title` varchar(255) NOT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rules
-- ----------------------------
INSERT INTO `rules` VALUES ('1', '25', '总则 - <font class=striking>不遵守这些将导致帐号被封！</font>', '[*]请不要做管理员明文禁止的事情。\r\n[*]不允许发送垃圾信息。\r\n[*]账号保留规则：\r\n              1.[b]三年生上学期[/b]及以上等级用户会永远保留；\r\n              2.[b]一年生下学期[/b]及以上等级用户封存账号（在[url=usercp.php?action=personal]控制面板[/url]）后不会被删除帐号；\r\n              3.封存账号的用户连续400天不登录将被每天扣除500魔力值,魔力值小于-5000后自动删除；\r\n              4.未封存账号的用户连续150天不登录将被每天扣除500魔力值,魔力值小于1000后自动封存；\r\n              5.没有流量的用户（即上传/下载数据都为0）连续30天不登录或注册满60天将被删除帐号。\r\n[*]一切作弊的帐号会被封，请勿心存侥幸。\r\n[*]第一次在论坛或服务器中的捣乱行为会受到警告，第二次您将永远无缘[site] 。');
INSERT INTO `rules` VALUES ('57', '25', '上传规则 - <font class=striking> 谨记: 违规的种子将不经提醒而直接删除 </font>', '请遵守规则。如果你对规则有任何不清楚或不理解的地方，请[url=contactstaff.php]咨询管理组[/url]。[b]管理组保留裁决的权力。[/b]\r\n\r\n[b]上传总则[/b]\r\n        [*]上传者必须对上传的文件拥有合法的传播权。\r\n        [*]上传者必须保证上传速度与做种时间。\r\n        [*]对于自己发布的种子，发布者将获得双倍的上传量。\r\n        \r\n\r\n[b]上传者资格[/b]\r\n        [*]任何人都能发布资源,不过，有些用户需要先在[url=offers.php]候选区[/url]提交候选。\r\n		\r\n\r\n[b]不允许的资源和文件：[/b]\r\n        [*]重复的资源；\r\n        [*]涉及禁忌或敏感内容（如色情、敏感政治话题等）的资源\r\n               a.广电总局明令禁止的.\r\n               b.分级为香港III和美国R的小部分资源. \r\n               c.分级为美国NC-17以及网络上流传的禁片.\r\n        [*]损坏的文件，指在读取或回放过程中出现错误的文件；\r\n        [*]垃圾文件，如病毒、木马、网站链接、广告文档、种子中包含的种子文件等，或无关文件。\r\n\r\n[b]资源打包规则（试行）[/b]\r\n        原则上只允许以下资源打包：\r\n        [*]按套装售卖的高清电影合集（如[i]The Ultimate Matrix Collection Blu-ray Box[/i]）；\r\n        [*]整季的电视剧/综艺节目/动漫；\r\n        [*]同一专题的纪录片；\r\n        [*]同一艺术家的MV\r\n                [*]标清MV只允许按DVD打包，且不允许单曲MV单独发布；\r\n                [*]分辨率相同的高清MV；\r\n        [*]同一艺术家的音乐\r\n                [*]5张或5张以上专辑方可打包发布；\r\n                [*]两年内发售的专辑可以单独发布；\r\n                [*]打包时应剔除站内已有的资源，或者将它们都包括进来；\r\n        [*]分卷发售的动漫剧集、角色歌、广播剧等；\r\n        [*]发布组打包发布的资源。\r\n\r\n\r\n[b]种子信息[/b]\r\n        所有种子都应该有描述性的标题，必要的介绍以及其他信息。以下是一份简明的规范，完整的、详尽的规范请参阅“[url=forums.php?action=viewtopic&forumid=4&topicid=74]种子信息填写规范与指导[/url]”。\r\n\r\n对于无视规则发布该类资源的用户将给予警告2周，发帖、上传、下载权限视情况，如屡次违规，对其作Ban ID处理(上传AV的直接BAN)；\r\n \r\n				\r\n				\r\n        [*]简介\r\n                [*]电影、电视剧、动漫：\r\n                        [*]必须包含海报、横幅或BD/HDDVD/DVD封面（如果存在的话）； \r\n                        [*]请尽可能包含画面截图或其缩略图；\r\n                        [*]请尽可能包含文件的详细情况，包括格式、时长、编码、码率、分辨率、语言、字幕等；\r\n                        [*]请尽可能包含演职员名单以及剧情概要。\r\n                [*]体育节目：\r\n                        [*]请勿在文字介绍或截图/文件名/文件大小/时长中泄漏比赛结果。\r\n                [*]音乐：\r\n                        [*]必须包含专辑封面和曲目列表（如果存在的话）；\r\n                [*]PC游戏：\r\n                        [*]必须包含海报或BD/HDDVD/DVD封面（如果存在的话）；\r\n                        [*]请尽可能包含画面截图或其缩略图和链接。\r\n        [*]杂项\r\n                [*]请正确选择资源的类型和质量信息。\r\n        [*]注意事项\r\n                [*]管理员会根据规范对种子信息进行编辑。\r\n                [*]请勿改变或去除管理员对种子信息作出的修改（但上传者可以修正一些错误）。\r\n                [*]种子信息不符合规范的种子可能会被删除，视种子信息的规范程度而定。\r\n                [*]如果资源的原始发布信息基本符合规范，请尽量使用原始发布信息。');
INSERT INTO `rules` VALUES ('2', '25', '下载规则 - <font class=striking>违规将会失去下载权限！</font> 简体中文', '[*]过低的分享率会导致严重的后果，包括禁止帐号。详见[url=faq.php#22]常见问题[/url]。\r\n[*]种子促销规则：\r\n        [*]随机促销（种子上传后系统自动随机设为促销）：\r\n                [*]5%的概率成为“[color=#7c7ff6][b]50%下载[/b][/color]”；\r\n                [*]10%的概率成为“[color=#f0cc00][b]免费[/b][/color]”；\r\n                [*]2%的概率成为“[color=#aaaaaa][b]2x上传[/b][/color]”；\r\n                [*]1%的概率成为“[color=#7ad6ea][b]50%下载&2x上传[/b][/color]”；\r\n                [*]1%的概率成为“[color=#99cc66][b]免费&2x上传[/b][/color]”。\r\n\r\n        [*]文件总体积大于10GB的种子将自动成为“[color=#f0cc00][b]50%下载&2x上传[/b][/color]”。\r\n        [*]文件总体积大于20GB的种子将自动成为“[color=#f0cc00][b]免费&2x上传[/b][/color]”。\r\n        [*]关注度高的种子将被设置为促销（由管理员定夺）。\r\n        [*]促销时限：\r\n                [*]除了“[color=#aaaaaa][b]免费[/b][/color]”以外，其余类型的促销限时7天（自种子发布时起）；\r\n                [*]“[color=#aaaaaa][b]免费[/b][/color]”时限两天。\r\n        [*]所有种子在发布2个月后将自动永久成为“[color=#aaaaaa][b]免费&2x上传[/b][/color]”。            \r\n        [*]我们也将不定期开启全站[color=#f0cc00][b]免费[/b][/color]，届时尽情狂欢吧~:mml:  :mml:  :mml:\r\n[*]你只能使用允许的BT客户端下载本站资源。详见[url=faq.php#29]常见问题[/url]。');
INSERT INTO `rules` VALUES ('4', '25', '论坛总则 - <font class=striking>请遵循以下的守则，违规会受到警告！</font>', '[*]禁止攻击、挑动他人的言辞。\r\n[*]禁止恶意灌水或发布垃圾信息。请勿在论坛非Water Jar版块发布无意义主题或回复（如纯表情）等。\r\n[*]不要为了获取魔力值而大肆灌水。\r\n[*]禁止在标题或正文使用脏话。\r\n[*]不要讨论禁忌、政治敏感或当地法律禁止的话题。\r\n[*]禁止任何基于种族、国家、民族、肤色、宗教、身体或精神障碍的歧视性言辞。违规将导致账号永久性禁用。\r\n[*]请确保问题发布在相对应的板块。\r\n[*]365天无新回复的主题将被系统自动锁定.\r\n');
INSERT INTO `rules` VALUES ('6', '25', '头像使用规定 - <font class=striking>请尽量遵守以下规则</font>', '[*]允许的格式为.gif， .jpg， 和.png。\r\n[*]图片大小不能超过150KB，为了统一，系统会调整头像宽度到150像素大小（浏览器会把图片调整成合适的大小，小图片将被拉伸，而过大的图片只会浪费带宽和CPU) 。\r\n[*]请不要使用可能引起别人反感的图片，包括色情、宗教、血腥的动物/人类、宣扬某种意识形态的图片。如果你不确定某张图片是否合适，请站短管理员。');
INSERT INTO `rules` VALUES ('3', '6', '上传规则 - <font class=striking> 谨记: 违规的种子将不经提醒而直接删除 </font>简体中文[HIDE]', '请遵守规则。如果你对规则有任何不清楚或不理解的地方，请[url=contactstaff.php]咨询管理组[/url]。[b]管理组保留裁决的权力。[/b]\r\n\r\n[b]上传总则[/b]\r\n        [*]上传者必须对上传的文件拥有合法的传播权。\r\n        [*]上传者必须保证上传速度与做种时间。如果在其他人完成前撤种或做种时间不足24小时，或者故意低速上传，上传者将会被警告甚至取消上传权限。\r\n        [*]对于自己发布的种子，发布者将获得双倍的上传量。\r\n        [*]如果你有一些违规但却有价值的资源，请将详细情况[url=contactstaff.php]告知管理组[/url]，我们可能破例允许其发布。\r\n\r\n[b]上传者资格[/b]\r\n        [*]任何人都能发布资源。\r\n        [*]不过，有些用户需要先在[url=offers.php]候选区[/url]提交候选。详见常见问题中的[url=faq.php#22]相关说明[/url]。\r\n        [*]对于游戏类资源，只有[color=#DC143C][b]上传员[/b][/color]及以上等级的用户，或者是管理组特别指定的用户，才能自由上传。其他用户必须先在[url=offers.php]候选区[/url]提交候选。\r\n\r\n[b]允许的资源和文件：[/b]\r\n        [*]高清（HD）视频，包括\r\n                [*]完整高清媒介，如蓝光（Blu-ray）原碟、HD DVD原碟等，或remux，\r\n                [*]HDTV流媒体，\r\n                [*]来源于上述媒介的高清重编码（至少为720p标准），\r\n                [*]其他高清视频，如高清DV；\r\n        [*]标清（SD）视频，只能是\r\n                [*]来源于高清媒介的标清重编码（至少为480p标准）；\r\n                [*]DVDR/DVDISO，\r\n                [*]DVDRip、CNDVDRip；\r\n        [*]无损音轨（及相应cue表单），如FLAC、Monkey\'s Audio等；\r\n        [*]5.1声道或以上标准的电影音轨、音乐音轨（DTS、DTSCD镜像等），评论音轨；\r\n        [*]PC游戏（必须为原版光盘镜像）；\r\n        [*]7日内发布的高清预告片；\r\n        [*]与高清相关的软件和文档。\r\n\r\n[b]不允许的资源和文件：[/b]\r\n        [*]总体积小于100MB的资源；\r\n        [*]标清视频upscale或部分upscale而成的视频文件；\r\n        [*]属于标清级别但质量较差的视频文件，包括CAM、TC、TS、SCR、DVDSCR、R5、R5.Line、HalfCD等；\r\n        [*]RealVideo编码的视频（通常封装于RMVB或RM）、flv文件；\r\n        [*]单独的样片（样片请和正片一起上传）；\r\n        [*]未达到5.1声道标准的有损音频文件，如常见的有损MP3、有损WMA等；\r\n        [*]无正确cue表单的多轨音频文件；\r\n        [*]硬盘版、高压版的游戏资源，非官方制作的游戏镜像，第三方mod，小游戏合集，单独的游戏破解或补丁；\r\n        [*]RAR等压缩文件；\r\n        [*]重复（dupe）的资源（判定规则见下文）；\r\n        [*]涉及禁忌或敏感内容（如色情、敏感政治话题等）的资源；\r\n        [*]损坏的文件，指在读取或回放过程中出现错误的文件；\r\n        [*]垃圾文件，如病毒、木马、网站链接、广告文档、种子中包含的种子文件等，或无关文件。\r\n\r\n[b]重复（dupe）判定规则：质量重于数量[/b]\r\n        [*]视频资源按来源媒介确定优先级，主要为：Blu-ray/HD DVD > HDTV > DVD > TV。同一视频高优先级版本将使低优先级版本被判定为重复。\r\n        [*]同一视频的高清版本将使标清版本被判定为重复。\r\n        [*]对于动漫类视频资源，HDTV版本和DVD版本有相同的优先级，这是一个特例。\r\n        [*]来源于相同媒介，相同分辨率水平的高清视频重编码\r\n                [*]参考“[url=forums.php?action=viewtopic&forumid=6&topicid=1520]Scene & Internal, from Group to Quality-Degree. ONLY FOR HD-resources[/url]”按发布组确定优先级；\r\n                [*]高优先级发布组发布的版本将使低优先级或相同优先级发布组发布的其他版本被判定为重复；\r\n                [*]但是，总会保留一个当前最佳画质的来源经重编码而成的DVD5大小（即4.38 GB左右）的版本；\r\n                [*]基于无损截图对比，高质量版本将使低质量版本被视为重复。\r\n        [*]来自其他区域，包含不同配音和/或字幕的blu-ray/HD DVD原盘版本不被视为重复版本。\r\n        [*]每个无损音轨资源原则上只保留一个版本，其余不同格式的版本将被视为重复。分轨FLAC格式有最高的优先级。\r\n        [*]对于站内已有的资源，\r\n                [*]如果新版本没有旧版本中已确认的错误/画质问题，或新版本的来源有更好的质量，新版本允许发布且旧版本将被视为重复；\r\n                [*]如果旧版本已经连续断种45日以上或已经发布18个月以上，发布新版本将不受重复判定规则约束。\r\n        [*]新版本发布后，旧的、重复的版本将被保留，直至断种。\r\n\r\n[b]资源打包规则（试行）[/b]\r\n        原则上只允许以下资源打包：\r\n        [*]按套装售卖的高清电影合集（如[i]The Ultimate Matrix Collection Blu-ray Box[/i]）；\r\n        [*]整季的电视剧/综艺节目/动漫；\r\n        [*]同一专题的纪录片；\r\n        [*]7日内的高清预告片；\r\n        [*]同一艺术家的MV\r\n                [*]标清MV只允许按DVD打包，且不允许单曲MV单独发布；\r\n                [*]分辨率相同的高清MV；\r\n        [*]同一艺术家的音乐\r\n                [*]5张或5张以上专辑方可打包发布；\r\n                [*]两年内发售的专辑可以单独发布；\r\n                [*]打包时应剔除站内已有的资源，或者将它们都包括进来；\r\n        [*]分卷发售的动漫剧集、角色歌、广播剧等；\r\n        [*]发布组打包发布的资源。\r\n        打包发布的视频资源必须来源于相同类型的媒介（如蓝光原碟），有相同的分辨率水平（如720p），编码格式一致（如x264），但预告片例外。对于电影合集，发布组也必须统一。打包发布的音频资源必须编码格式一致（如全部为分轨FLAC）。打包发布后，将视情况删除相应单独的种子。\r\n        如果你对资源打包有任何不明确的地方，请[url=contactstaff.php]咨询管理组[/url]。管理组保留资源打包相关问题的解释权和处理权。\r\n\r\n[b]例外[/b]\r\n        [*]允许发布来源于TV或是DSR的体育类的标清视频。\r\n        [*]允许发布小于100MB的高清相关软件和文档。\r\n        [*]允许发布小于100MB的单曲专辑。\r\n        [*]允许发布2.0声道或以上标准的国语/粤语音轨。\r\n        [*]允许在发布的资源中附带字幕、游戏破解与补丁、字体、包装等的扫描图。上述几种文件必须统一打包或统一不打包。\r\n        [*]允许在发布音轨时附带附赠DVD的相关文件。\r\n\r\n[b]种子信息[/b]\r\n        所有种子都应该有描述性的标题，必要的介绍以及其他信息。以下是一份简明的规范，完整的、详尽的规范请参阅“[url=forums.php?action=viewtopic&topicid=3438&page=0#56711]种子信息填写规范与指导[/url]”。\r\n        [*]标题\r\n                [*]电影：[i][中文名] 名称 [年份] [剪辑版本] [发布说明] 分辨率 来源 [音频/]视频编码-发布组名称[/i]\r\n                      例：[i]蝙蝠侠:黑暗骑士 The Dark Knight 2008 PROPER 720p BluRay x264-SiNNERS[/i]\r\n                [*]电视剧：[i][中文名] 名称 [年份] S**E** [发布说明] 分辨率 来源 [音频/]视频编码-发布组名称[/i]\r\n                      例：[i]越狱 Prison Break S04E01 PROPER 720p HDTV x264-CTU[/i]\r\n                [*]音轨：[i][中文艺术家名 - 中文专辑名] 艺术家名 - 专辑名 [年份] [版本] [发布说明] 音频编码[-发布组名称][/i]\r\n                      例：[i]恩雅 - 冬季降临 Enya - And Winter Came 2008 FLAC[/i]\r\n                [*]游戏：[i][中文名] 名称 [年份] [版本] [发布说明][-发布组名称][/i]\r\n                      例：[i]红色警戒3:起义时刻 Command And Conquer Red Alert 3 Uprising-RELOADED[/i]\r\n        [*]副标题\r\n                [*]不要包含广告或求种/续种请求。\r\n        [*]外部信息\r\n                [*]电影和电视剧必须包含外部信息链接（如IMDb连接）地址（如果存在的话）。\r\n        [*]简介\r\n                [*]NFO图请写入NFO文件，而不是粘贴到简介里。\r\n                [*]电影、电视剧、动漫：\r\n                        [*]必须包含海报、横幅或BD/HDDVD/DVD封面（如果存在的话）； \r\n                        [*]请尽可能包含画面截图或其缩略图和链接；\r\n                        [*]请尽可能包含文件的详细情况，包括格式、时长、编码、码率、分辨率、语言、字幕等；\r\n                        [*]请尽可能包含演职员名单以及剧情概要。\r\n                [*]体育节目：\r\n                        [*]请勿在文字介绍或截图/文件名/文件大小/时长中泄漏比赛结果。\r\n                [*]音乐：\r\n                        [*]必须包含专辑封面和曲目列表（如果存在的话）；\r\n                [*]PC游戏：\r\n                        [*]必须包含海报或BD/HDDVD/DVD封面（如果存在的话）；\r\n                        [*]请尽可能包含画面截图或其缩略图和链接。\r\n        [*]杂项\r\n                [*]请正确选择资源的类型和质量信息。\r\n        [*]注意事项\r\n                [*]管理员会根据规范对种子信息进行编辑。\r\n                [*]请勿改变或去除管理员对种子信息作出的修改（但上传者可以修正一些错误）。\r\n                [*]种子信息不符合规范的种子可能会被删除，视种子信息的规范程度而定。\r\n                [*]如果资源的原始发布信息基本符合规范，请尽量使用原始发布信息。\r\n');
INSERT INTO `rules` VALUES ('8', '6', '管理守则 - <font class=striking>请慎用你的权限！</font>简体中文[HIDE]', '[*]最重要的一条：慎用你手中的权限！\r\n[*]对于违规行为不要怕说“不”！\r\n[*]不要公开和其他管理员冲突，一切通过私下沟通解决。\r\n[*]不要太绝情，给违规者一个改过的机会。\r\n[*]不要试图“打预防针”，等到人们犯错了再去纠正。\r\n[*]尝试去改正一个不适当的帖而不是简单的关闭它。\r\n[*]多尝试移动帖子到适合的版面而不是简单地锁帖。\r\n[*]当处理版聊帖的时候要宽容适度。\r\n[*]锁帖的时候请给予简单的操作理由。\r\n[*]在屏蔽某个用户前请先站短通知他/她, 如果有所积极回应可以考虑再给2周观察期。\r\n[*]不要禁用一个注册尚未满4周的帐户。\r\n[*]永远记得以理服人。');
INSERT INTO `rules` VALUES ('12', '28', '下載規則 - <font class=striking>違規將會失去下載權限！</font> ', '[*]過低的分享率會導致嚴重的后果，包括禁止帳號。詳見[url=faq.php#22]常見問題[/url]。\r\n[*]種子促銷規則：\r\n        [*]隨機促銷（種子上傳後系統自動隨機設為促銷）：\r\n                [*]10%的概率成為“[color=#7c7ff6][b]50%下載[/b][/color]”；\r\n                [*]5%的概率成為“[color=#f0cc00][b]免費[/b][/color]”；\r\n                [*]5%的概率成為“[color=#aaaaaa][b]2x上傳[/b][/color]”；\r\n                [*]3%的概率成為“[color=#7ad6ea][b]50%下載&2x上傳[/b][/color]”；\r\n                [*]1%的概率成為“[color=#99cc66][b]免費&2x上傳[/b][/color]”。\r\n        [*]檔總體積大於20GB的種子將自動成為“[color=#f0cc00][b]免費[/b][/color]”。\r\n        [*]Blu-ray Disk, HD DVD原盤將成為“[color=#f0cc00][b]免費[/b][/color]”。\r\n        [*]電視劇等每季的第一集將成為“[color=#f0cc00][b]免費[/b][/color]”。\r\n        [*]關注度高的種子將被設置為促銷（由管理員定奪）。\r\n        [*]促銷時限：\r\n                [*]除了“[color=#aaaaaa][b]2x上傳[/b][/color]”以外，其餘類型的促銷限時7天（自種子發佈時起）；\r\n                [*]“[color=#aaaaaa][b]2x上傳[/b][/color]”無時限。\r\n        [*]所有種子在發佈1個月後將自動永久成為“[color=#aaaaaa][b]2x上傳[/b][/color]”。            \r\n        [*]我們也將不定期開啟全站[color=#f0cc00][b]免費[/b][/color]，屆時盡情狂歡吧~:mml:  :mml:  :mml:\r\n[*]你只能使用允許的BT客戶端下載本站資源。詳見[url=faq.php#29]常見問題[/url]。');
INSERT INTO `rules` VALUES ('14', '28', '論壇總則 - <font class=striking>請遵循以下的守則，違規會受到警告！</font> ', '[*]禁止攻擊、挑動他人的言辭。\r\n[*]禁止惡意灌水或發布垃圾信息。請勿在論壇非Water Jar版塊發布無意義主題或回復（如純表情）等。\r\n[*]不要為了獲取魔力值而大肆灌水。\r\n[*]禁止在標題或正文使用臟話。\r\n[*]不要討論禁忌、政治敏感或當地法律禁止的話題。\r\n[*]禁止任何基于種族、國家、民族、膚色、宗教、性別、年齡、性取向、身體或精神障礙的歧視性言辭。違規將導致賬號永久性禁用。\r\n[*]禁止挖墳（所有挖墳帖都要被刪掉）。\r\n[*]禁止重復發帖。\r\n[*]請確保問題發布在相對應的板塊。\r\n[*]365天無新回復的主題將被系統自動鎖定。');
INSERT INTO `rules` VALUES ('5', '25', '评论总则 - <font class=striking>永远尊重上传者！</font>', '[*]无论如何，请尊重上传者！\r\n[*]所有论坛发帖的规则同样适用于评论。\r\n[*]如果你没有下载的意向，请不要随便发表否定性的评论。');
INSERT INTO `rules` VALUES ('16', '28', '頭像使用規定 - <font class=striking>請盡量遵守以下規則</font> ', '[*]允許的格式為.gif， .jpg， 和.png。\r\n[*]圖片大小不能超過150KB，為了統一，系統會調整頭像寬度到150像素大小（瀏覽器會把圖片調整成合適的大小，小圖片將被拉伸，而過大的圖片只會浪費帶寬和CPU) 。\r\n[*]請不要使用可能引起別人反感的圖片，包括色情、宗教、血腥的動物/人類、宣揚某種意識形態的圖片。如果你不確定某張圖片是否合適，請站短管理員。\r\n');
INSERT INTO `rules` VALUES ('7', '25', '趣味盒规则 - <font class=striking>在娱乐中赚分</font>', '[*]任何用户都可在趣味盒中投放笑话、趣图、搞笑视频、Flash等有趣的内容，除了色情、禁忌、政治敏感和当地法律禁止的内容。\r\n[*]正常情况下，一条趣味内容在发布24小时后过期。然而，如果获得的投票数超过20且其中“有趣”的比例低于25%，趣味内容将提前过期。\r\n[*]新的趣味内容[b]只有[/b]在旧的内容过期后才能提交。\r\n[*]若趣味内容被多数用户投票认为有趣，其发布者将得到以下奖励：\r\n           [*]票数超过25，其中认为“有趣”比例超过50%，发布者得到5个魔力值。\r\n           [*]票数超过50，其中认为“有趣”比例超过50%，发布者得到另外的5个魔力值。\r\n           [*]票数超过100，其中认为“有趣”比例超过50%，发布者得到另外的5个魔力值。\r\n           [*]票数超过200，其中认为“有趣”比例超过50%，发布者得到另外的5个魔力值。\r\n           [*]票数超过25，其中认为“有趣”比例超过75%，发布者得到1000个魔力值。\r\n           [*]票数超过50，其中认为“有趣”比例超过75%，发布者得到另外的1000个魔力值。\r\n           [*]票数超过100，其中认为“有趣”比例超过75%，发布者得到另外的1000个魔力值。\r\n           [*]票数超过200，其中认为“有趣”比例超过75%，发布者得到另外的1000个魔力值。');
INSERT INTO `rules` VALUES ('11', '28', '總則 - <font class=striking>不遵守這些將導致帳號被封！</font> ', '[*]請不要做管理員明文禁止的事情。\r\n[*]不允許發送垃圾信息。\r\n[*]賬號保留規則：\r\n              1.[b]Veteran User[/b]及以上等級用戶會永遠保留；\r\n              2.[b]Elite User[/b]及以上等級用戶封存賬號（在[url=usercp.php?action=personal]控制面板[/url]）后不會被刪除帳號；\r\n              3.封存賬號的用戶連續400天不登錄將被刪除帳號；\r\n              4.未封存賬號的用戶連續150天不登錄將被刪除帳號；\r\n              5.沒有流量的用戶（即上傳/下載數據都為0）連續100天不登錄將被刪除帳號。\r\n[*]一切作弊的帳號會被封，請勿心存僥幸。\r\n[*]注冊多個[site]賬號的用戶將匾被禁止。\r\n[*]不要把本站的種子文件上傳到其他Tracker！(具體請看 [url=faq.php#38][b]常見問題[/b][/url])\r\n[*]第一次在論壇或服務器中的搗亂行為會受到警告，第二次您將永遠無緣[site] 。');
INSERT INTO `rules` VALUES ('13', '28', '上傳規則 - <font class=striking> 謹記: 違規的種子將不經提醒而直接刪除 </font> ', '請遵守規則。如果你對規則有任何不清楚或不理解的地方，請[url=contactstaff.php]諮詢管理組[/url]。[b]管理組保留裁決的權力。[/b]\r\n\r\n[b]上傳總則[/b]\r\n        [*]上傳者必須對上傳的檔擁有合法的傳播權。\r\n        [*]上傳者必須保證上傳速度與做種時間。如果在其他人完成前撤種或做種時間不足24小時，或者故意低速上傳，上傳者將會被警告甚至取消上傳許可權。\r\n        [*]對於自己發佈的種子，發佈者將獲得雙倍的上傳量。\r\n        [*]如果你有一些違規但卻有價值的資源，請將詳細情況[url=contactstaff.php]告知管理組[/url]，我們可能破例允許其發佈。\r\n\r\n[b]上傳者資格[/b]\r\n        [*]任何人都能發佈資源。\r\n        [*]不過，有些使用者需要先在[url=offers.php]候選區[/url]提交候選。詳見常見問題中的[url=faq.php#22]相關說明[/url]。\r\n        [*]對於遊戲類資源，只有[color=#DC143C][b]上傳員[/b][/color]及以上等級的使用者，或者是管理組特別指定的用戶，才能自由上傳。其他用戶必須先在[url=offers.php]候選區[/url]提交候選。\r\n\r\n[b]允許的資源和檔：[/b]\r\n        [*]高清（HD）視頻，包括\r\n                [*]完整高清媒介，如藍光（Blu-ray）原碟、HD DVD原碟等，或remux，\r\n                [*]HDTV流媒體，\r\n                [*]來源於上述媒介的高清重編碼（至少為720p標準），\r\n                [*]其他高清視頻，如高清DV；\r\n        [*]標清（SD）視頻，只能是\r\n                [*]來源於高清媒介的標清重編碼（至少為480p標準）；\r\n                [*]DVDR/DVDISO，\r\n                [*]DVDRip、CNDVDRip；\r\n        [*]無損音軌（及相應cue表單），如FLAC、Monkey\'s Audio等；\r\n        [*]5.1聲道或以上標準的電影音軌、音樂音軌（DTS、DTSCD鏡像等），評論音軌；\r\n        [*]PC遊戲（必須為原版光碟鏡像）；\r\n        [*]7日內發佈的高清預告片；\r\n        [*]與高清相關的軟體和文檔。\r\n\r\n[b]不允許的資源和檔：[/b]\r\n        [*]總體積小於100MB的資源；\r\n        [*]標清視頻upscale或部分upscale而成的視頻檔；\r\n        [*]屬於標清級別但品質較差的視頻檔，包括CAM、TC、TS、SCR、DVDSCR、R5、R5.Line、HalfCD等；\r\n        [*]RealVideo編碼的視頻（通常封裝於RMVB或RM）、flv檔；\r\n        [*]單獨的樣片（樣片請和正片一起上傳）；\r\n        [*]未達到5.1聲道標準的有損音訊檔，如常見的有損MP3、有損WMA等；\r\n        [*]無正確cue表單的多軌音訊檔；\r\n        [*]硬碟版、高壓版的遊戲資源，非官方製作的遊戲鏡像，協力廠商mod，小遊戲合集，單獨的遊戲破解或補丁；\r\n        [*]RAR等壓縮檔；\r\n        [*]重複（dupe）的資源（判定規則見下文）；\r\n        [*]涉及禁忌或敏感內容（如色情、敏感政治話題等）的資源；\r\n        [*]損壞的檔，指在讀取或重播過程中出現錯誤的檔；\r\n        [*]垃圾檔，如病毒、木馬、網站連結、廣告文檔、種子中包含的種子檔等，或無關檔。\r\n\r\n[b]重複（dupe）判定規則：品質重於數量[/b]\r\n        [*]視頻資源按來源媒介確定優先順序，主要為：Blu-ray/HD DVD > HDTV > DVD > TV。同一視頻高優先順序版本將使低優先順序版本被判定為重複。\r\n        [*]同一視頻的高清版本將使標清版本被判定為重複。\r\n        [*]對於動漫類視頻資源，HDTV版本和DVD版本有相同的優先順序，這是一個特例。\r\n        [*]來源於相同媒介，相同解析度水準的高清視頻重編碼\r\n                [*]參考“[url=forums.php?action=viewtopic&forumid=6&topicid=1520]Scene & Internal, from Group to Quality-Degree. ONLY FOR HD-resources[/url]”按發佈組確定優先順序；\r\n                [*]高優先順序發佈組發佈的版本將使低優先順序或相同優先順序發佈組發佈的其他版本被判定為重複；\r\n                [*]但是，總會保留一個當前最佳畫質的來源經重編碼而成的DVD5大小（即4.38 GB左右）的版本；\r\n                [*]基於無損截圖對比，高品質版本將使低品質版本被視為重複。\r\n        [*]來自其他區域，包含不同配音和/或字幕的blu-ray/HD DVD原盤版本不被視為重複版本。\r\n        [*]每個無損音軌資源原則上只保留一個版本，其餘不同格式的版本將被視為重複。分軌FLAC格式有最高的優先順序。\r\n        [*]對於站內已有的資源，\r\n                [*]如果新版本沒有舊版本中已確認的錯誤/畫質問題，或新版本的來源有更好的品質，新版本允許發佈且舊版本將被視為重複；\r\n                [*]如果舊版本已經連續斷種45日以上或已經發佈18個月以上，發佈新版本將不受重複判定規則約束。\r\n        [*]新版本發佈後，舊的、重複的版本將被保留，直至斷種。\r\n\r\n[b]資源打包規則（試行）[/b]\r\n        原則上只允許以下資源打包：\r\n        [*]按套裝售賣的高清電影合集（如[i]The Ultimate Matrix Collection Blu-ray Box[/i]）；\r\n        [*]整季的電視劇/綜藝節目/動漫；\r\n        [*]同一專題的紀錄片；\r\n        [*]7日內的高清預告片；\r\n        [*]同一藝術家的MV\r\n                [*]標清MV只允許按DVD打包，且不允許單曲MV單獨發佈；\r\n                [*]解析度相同的高清MV；\r\n        [*]同一藝術家的音樂\r\n                [*]5張或5張以上專輯方可打包發佈；\r\n                [*]兩年內發售的專輯可以單獨發佈；\r\n                [*]打包時應剔除站內已有的資源，或者將它們都包括進來；\r\n        [*]分卷發售的動漫劇集、角色歌、廣播劇等；\r\n        [*]發佈組打包發佈的資源。\r\n        打包發佈的視頻資源必須來源於相同類型的媒介（如藍光原碟），有相同的解析度水準（如720p），編碼格式一致（如x264），但預告片例外。對於電影合集，發佈組也必須統一。打包發佈的音訊資源必須編碼格式一致（如全部為分軌FLAC）。打包發佈後，將視情況刪除相應單獨的種子。\r\n        如果你對資源打包有任何不明確的地方，請[url=contactstaff.php]諮詢管理組[/url]。管理組保留資源打包相關問題的解釋權和處理權。\r\n\r\n[b]例外[/b]\r\n        [*]允許發佈來源於TV或是DSR的體育類的標清視頻。\r\n        [*]允許發佈小於100MB的高清相關軟體和文檔。\r\n        [*]允許發佈小於100MB的單曲專輯。\r\n        [*]允許發佈2.0聲道或以上標準的國語/粵語音軌。\r\n        [*]允許在發佈的資源中附帶字幕、遊戲破解與補丁、字體、包裝等的掃描圖。上述幾種檔必須統一打包或統一不打包。\r\n        [*]允許在發佈音軌時附帶附贈DVD的相關檔。\r\n\r\n[b]種子資訊[/b]\r\n        所有種子都應該有描述性的標題，必要的介紹以及其他資訊。以下是一份簡明的規範，完整的、詳盡的規範請參閱“[url=forums.php?action=viewtopic&topicid=3438&page=0#56711]種子資訊填寫規範與指導[/url]”。\r\n        [*]標題\r\n                [*]電影：[i][中文名] 名稱 [年份] [剪輯版本] [發佈說明] 解析度 來源 [音訊/]視頻編碼-發佈組名稱[/i]\r\n                      例：[i]蝙蝠俠:黑暗騎士 The Dark Knight 2008 PROPER 720p BluRay x264-SiNNERS[/i]\r\n                [*]電視劇：[i][中文名] 名稱 [年份] S**E** [發佈說明] 解析度 來源 [音訊/]視頻編碼-發佈組名稱[/i]\r\n                      例：[i]越獄 Prison Break S04E01 PROPER 720p HDTV x264-CTU[/i]\r\n                [*]音軌：[i][中文藝術家名 - 中文專輯名] 藝術家名 - 專輯名 [年份] [版本] [發佈說明] 音訊編碼[-發佈組名稱][/i]\r\n                      例：[i]恩雅 - 冬季降臨 Enya - And Winter Came 2008 FLAC[/i]\r\n                [*]遊戲：[i][中文名] 名稱 [年份] [版本] [發佈說明][-發佈組名稱][/i]\r\n                      例：[i]紅色警戒3:起義時刻 Command And Conquer Red Alert 3 Uprising-RELOADED[/i]\r\n        [*]副標題\r\n                [*]不要包含廣告或求種/續種請求。\r\n        [*]外部資訊\r\n                [*]電影和電視劇必須包含外部資訊連結（如IMDb連接）位址（如果存在的話）。\r\n        [*]簡介\r\n                [*]NFO圖請寫入NFO檔，而不是粘貼到簡介裡。\r\n                [*]電影、電視劇、動漫：\r\n                        [*]必須包含海報、橫幅或BD/HDDVD/DVD封面（如果存在的話）； \r\n                        [*]請盡可能包含畫面截圖或其縮略圖和連結；\r\n                        [*]請盡可能包含檔的詳細情況，包括格式、時長、編碼、碼率、解析度、語言、字幕等；\r\n                        [*]請盡可能包含演職員名單以及劇情概要。\r\n                [*]體育節目：\r\n                        [*]請勿在文字介紹或截圖/檔案名/檔大小/時長中洩漏比賽結果。\r\n                [*]音樂：\r\n                        [*]必須包含專輯封面和曲目列表（如果存在的話）；\r\n                [*]PC遊戲：\r\n                        [*]必須包含海報或BD/HDDVD/DVD封面（如果存在的話）；\r\n                        [*]請盡可能包含畫面截圖或其縮略圖和連結。\r\n        [*]雜項\r\n                [*]請正確選擇資源的類型和品質資訊。\r\n        [*]注意事項\r\n                [*]管理員會根據規範對種子資訊進行編輯。\r\n                [*]請勿改變或去除管理員對種子資訊作出的修改（但上傳者可以修正一些錯誤）。\r\n                [*]種子資訊不符合規範的種子可能會被刪除，視種子資訊的規範程度而定。\r\n                [*]如果資源的原始發佈資訊基本符合規範，請儘量使用原始發佈資訊。\r\n');
INSERT INTO `rules` VALUES ('18', '28', '管理守則 - <font class=striking>請慎用你的權限！</font> ', '[*]最重要的一條：慎用你手中的權限！\r\n[*]對于違規行為不要怕說“不”！\r\n[*]不要公開和其他管理員沖突，一切通過私下溝通解決。\r\n[*]不要太絕情，給違規者一個改過的機會。\r\n[*]不要試圖“打預防針”，等到人們犯錯了再去糾正。\r\n[*]嘗試去改正一個不適當的帖而不是簡單的關閉它。\r\n[*]多嘗試移動帖子到適合的版面而不是簡單地鎖帖。\r\n[*]當處理版聊帖的時候要寬容適度。\r\n[*]鎖帖的時候請給予簡單的操作理由。\r\n[*]在屏蔽某個用戶前請先站短通知他/她, 如果有所積極回應可以考慮再給2周觀察期。\r\n[*]不要禁用一個注冊尚未滿4周的帳戶。\r\n[*]永遠記得以理服人。\r\n');
INSERT INTO `rules` VALUES ('17', '28', '趣味盒規則 - <font class=striking>在娛樂中賺分</font> ', '[*]任何用戶都可在趣味盒中投放笑話、趣圖、搞笑視頻、Flash等有趣的內容，除了色情、禁忌、政治敏感和當地法律禁止的內容。\r\n[*]正常情況下，一條趣味內容在發布24小時后過期。然而，如果獲得的投票數超過20且其中“有趣”的比例低于25%，趣味內容將提前過期。\r\n[*]新的趣味內容[b]只有[/b]在舊的內容過期后才能提交。\r\n[*]若趣味內容被多數用戶投票認為有趣，其發布者將得到以下獎勵：\r\n           [*]票數超過25，其中認為“有趣”比例超過50%，發布者得到5個魔力值。\r\n           [*]票數超過50，其中認為“有趣”比例超過50%，發布者得到另外的5個魔力值。\r\n           [*]票數超過100，其中認為“有趣”比例超過50%，發布者得到另外的5個魔力值。\r\n           [*]票數超過200，其中認為“有趣”比例超過50%，發布者得到另外的5個魔力值。\r\n           [*]票數超過25，其中認為“有趣”比例超過75%，發布者得到10個魔力值。\r\n           [*]票數超過50，其中認為“有趣”比例超過75%，發布者得到另外的10個魔力值。\r\n           [*]票數超過100，其中認為“有趣”比例超過75%，發布者得到另外的10個魔力值。\r\n           [*]票數超過200，其中認為“有趣”比例超過75%，發布者得到另外的10個魔力值。');
INSERT INTO `rules` VALUES ('21', '6', 'General rules - <font class=striking>Breaking these rules can and will get you banned!</font>', '[*]Do not do things we forbid.\r\n[*]Do not spam.\r\n[*]Cherish your user account. Inactive accounts would be deleted based on the following rules:\r\n              1.[b]Veteran User[/b] or above would never be deleted.\r\n              2.[b]Elite User[/b] or above would never be deleted if packed (at [url=usercp.php?action=personal]User CP[/url]).\r\n              3.Packed accounts would be deleted if users have not logged in for more than 400 days in a row.\r\n              4.Unpacked accounts would be deleted if users have not logged in for more than 150 days in a row.\r\n              5.Accounts with both uploaded and downloaded amount being 0 would be deleted if users have not logged in for more than 100 days in a row.\r\n[*]User found cheating would be deleted. Don\'t take chances!\r\n[*]Possession of multiple [site] accounts will result in a ban!\r\n[*]Do not upload our torrents to other trackers! (See the [url=faq.php#38]FAQ[/url] for details.)\r\n[*]Disruptive behavior in the forums or on the server will result in a warning. You will only get [b]one[/b] warning! After that it\'s bye bye Kansas!');
INSERT INTO `rules` VALUES ('15', '28', '評論總則 - <font class=striking>永遠尊重上傳者！</font> ', '[*]無論如何，請尊重上傳者！\r\n[*]所有論壇發帖的規則同樣適用于評論。\r\n[*]如果你沒有下載的意向，請不要隨便發表否定性的評論。');
INSERT INTO `rules` VALUES ('25', '6', 'Commenting Guidelines - <font class=striking>Always respect uploaders no matter what!</font>', '[*]Always respect uploaders no matter what!\r\n[*]All rules of forum posting apply to commenting, too.\r\n[*]Do not post negative comments about torrents that you don\'t plan to download.');
INSERT INTO `rules` VALUES ('27', '6', 'Funbox Rules - <font class=striking>Get bonus with fun!</font>', '[*]Users can submit anything funny (e.g. stories, pictures, flash, video) except things that is pornographic, taboo, political sensitive or forbidden by local laws.\r\n[*]Normally a newly-submitted funbox item would be outdated after 24 hours. However, if there are 20 or more votes on a funbox item, among which votes for \'funny\' is less than 25%, the funbox item would be outdated ahead of its due time.\r\n[*]New funbox item can be submitted [b]only[/b] when the old one is outdated.\r\n[*]User, whose funbox item is voted as [b]funny[/b], would be rewarded based on the following rules:\r\n           [*]More than 25 votes, among which votes for [i]funny[/i] exceed 50%. User gets 5 bonus.\r\n           [*]More than 50 votes, among which votes for [i]funny[/i] exceed 50%. User gets another 5 bonus.\r\n           [*]More than 100 votes, among which votes for [i]funny[/i] exceed 50%. User gets another 5 bonus.\r\n           [*]More than 200 votes, among which votes for [i]funny[/i] exceed 50%. User gets another 5 bonus.\r\n           [*]More than 25 votes, among which votes for [i]funny[/i] exceed 75%. User gets 10 bonus.\r\n           [*]More than 50 votes, among which votes for [i]funny[/i] exceed 75%. User gets another 10 bonus.\r\n           [*]More than 100 votes, among which votes for [i]funny[/i] exceed 75%. User gets another 10 bonus.\r\n           [*]More than 200 votes, among which votes for [i]funny[/i] exceed 75%. User gets another 10 bonus.');
INSERT INTO `rules` VALUES ('22', '6', 'Downloading rules - <font class=striking>By not following these rules you will lose download privileges!</font>', '[*]Low ratios may result in severe consequences, including banning accounts. See [url=faq.php#22]FAQ[/url].\r\n[*]Rules for torrent promotion:\r\n        [*]Random promotion (torrents promoted randomly by system upon uploading):\r\n                [*]10% chance becoming [color=#7c7ff6][b]50% Leech[/b][/color],\r\n                [*]5% chance becoming [color=#f0cc00][b]Free Leech[/b][/color],\r\n                [*]5% chance becoming [color=#aaaaaa][b]2X up[/b][/color],\r\n                [*]3% chance becoming [color=#7ad6ea][b]50% Leech and 2X up[/b][/color],\r\n                [*]1% chance becoming [color=#99cc66][b]Free Leech and 2X up[/b][/color].\r\n        [*]Torrents larger than 20GB will automatically be [color=#f0cc00][b]Free Leech[/b][/color].\r\n        [*]Raw Blu-ray, HD DVD Discs will be [color=#f0cc00][b]Free Leech[/b][/color].\r\n        [*]First episode of every season of TV Series, etc. will be [color=#f0cc00][b]Free Leech[/b][/color].\r\n        [*]Highly popular torrents will be on promotion (decided by admins).\r\n        [*]Promotion timeout:\r\n                [*]Except [color=#aaaaaa][b]2X up[/b][/color], all the other types of promotion will be due after 7 days (counted from the time when the torrent is uploaded).\r\n                [*][color=#aaaaaa][b]2X up[/b][/color] will never become due.\r\n        [*]ALL the torrents will be [color=#aaaaaa][b]2X up[/b][/color] forever when they are on the site for over 1 month.\r\n        [*]On special occasions, we would set the whole site [color=#f0cc00][b]Free Leech[/b][/color]. Grab as much as you can. :mml:  :mml:  :mml:\r\n[*]You may [b]only[/b] use allowed bittorrent clients at [site]. See [url=faq.php#29]FAQ[/url].');
INSERT INTO `rules` VALUES ('24', '6', 'General Forum Guidelines - <font class=stiking>Please follow these guidelines or else you might end up with a warning!</font>', '[*]No aggressive behavior or flaming in the forums.\r\n[*]No trashing of any topics (i.e. SPAM). Do not submit meaningless topics or posts (e.g. smiley only) in any forum except Water Jar.\r\n[*]Do not flood any forum in order to get bonus.\r\n[*]No foul language on title or text.\r\n[*]Do not discuss topics that are taboo, political sensitive or forbidden by local laws.\r\n[*]No language of discrimination based on race, national or ethnic origin, color, religion, gender, age, sexual preference or mental or physical disability. Violating this rule would result in permanent ban.\r\n[*]No bumping... (All bumped threads will be deleted.)\r\n[*]No double posting. \r\n[*]Please ensure all questions are posted in the correct section!\r\n[*]Topics without new reply in 365 days would be locked automatically by system.');
INSERT INTO `rules` VALUES ('26', '6', 'Avatar Guidelines - <font class=striking>Please try to follow these guidelines</font>', '[*]The allowed formats are .gif, .jpg and .png. \r\n[*]Be considerate. Resize your images to a width of 150 px and a size of no more than 150 KB. (Browsers will rescale them anyway: smaller images will be expanded and will not look good; larger images will just waste bandwidth and CPU cycles.)\r\n[*]Do not use potentially offensive material involving porn, religious material, animal / human cruelty or ideologically charged images. Staff members have wide discretion on what is acceptable. If in doubt PM one. ');
INSERT INTO `rules` VALUES ('23', '6', 'Uploading rules - <font class=striking>Torrents violating these rules may be deleted without notice</font>', 'Please respect the rules, and if you have any questions about something unclear or not understandable, please [url=contactstaff.php]consult the staff[/url]. Staff reserves the rights to adjudicate.\r\n\r\n[b]GENERAL[/b]\r\n        [*]You must have legal rights to the file you upload.\r\n        [*]Make sure your torrents are well-seeded. If you fail to seed for at least 24 hours or till someone else completes, or purposely keep a low uploading speed, you can be warned and your privilege to upload can be removed.\r\n        [*]You would get 2 times as much of uploading credit for torrents uploaded by yourself.\r\n        [*]If you have something interesting that somehow violates these rules, [url=contactstaff.php]ask the staff[/url] with a detailed description and we might make an exception.\r\n\r\n[b]PRIVILEGE[/b]\r\n        [*]Everyone can upload.\r\n        [*]However, some must go through the [url=offers.php]Offer section[/url]. See [url=faq.php#22]FAQ[/url] for details.\r\n        [*]ONLY users in the class [color=#DC143C][b]Uploader[/b][/color] or above, or users specified by staff can freely upload games. Others should go through the [url=offers.php]Offer section[/url].\r\n\r\n[b]ALLOWED CONTENTS[/b]\r\n        [*]High Definition (HD) videos, including\r\n                [*]complete HD media, e.g. Blu-ray disc, HD DVD disc, etc. or remux,\r\n                [*]captured HDTV streams,\r\n                [*]encodes from above listed sources in HD resolution (at least 720p),\r\n                [*]other HD videos such as HD DV.\r\n        [*]Standard Definition (SD) videos, only\r\n                [*]SD encodes from HD media (at least 480p),\r\n                [*]DVDR/DVDISO,\r\n                [*]DVDRip, CNDVDRip.\r\n        [*]Lossless audio tracks (and corresponding cue sheets), e.g. FLAC, Monkey\'s Audio, etc.\r\n        [*]5.1-channel (or higher) movie dubs and music tracks (DTS, DTS CD Image, etc.), and commentary tracks.\r\n        [*]PC games (must be original images).\r\n        [*]HD trailers released within 7 days.\r\n        [*]HD-related software and documents.\r\n\r\n[b]NOT ALLOWED CONTENTS[/b]\r\n        [*]Contents less than 100 MB in total.\r\n        [*]Upscaled/partially upscaled in Standard Definition mastered/produced content.\r\n        [*]Videos in SD resolution but with low quality, including CAM, TC, TS, SCR, DVDSCR, R5, R5.Line, HalfCD, etc.\r\n        [*]RealVideo encoded videos (usually contained in RMVB or RM), flv files.\r\n        [*]Individual samples (to be included in the \"Main torrent\").\r\n        [*]Lossy audios that are not 5.1-channel (or higher), e.g. common lossy MP3\'s, lossy WMAs, etc.\r\n        [*]Multi-track audio files without proper cue sheets.\r\n        [*]Installation-free or highly compressed games, unofficial game images, third-party mods, collection of tiny games, individual game cracks or patches.\r\n        [*]RAR, etc. archived files.\r\n        [*]Dupe releases. (see beneath for dupe rules.)\r\n        [*]Taboo or sensitive contents (such as porn or politically sensitive topics).\r\n        [*]Damaged files, i.e. files that are erroneous upon reading or playback.\r\n        [*]Spam files, such as viruses, trojans, website links, advertisements, torrents in torrent, etc., or irrelevant files.\r\n\r\n[b]DUPE RULES: QUALITY OVER QUANTITY[/b]\r\n        [*]Video releases are prioritized according to their source media, and mainly: Blu-ray/HD DVD > HDTV > DVD > TV. High prioritized versions will dupe other versions with low priorities of the same video.\r\n        [*]HD releases will dupe SD releases of the same video.\r\n        [*]For animes, HDTV versions are equal in priority to DVD versions. This is an exception.\r\n        [*]Encodes from the same type of media and in the same resolution \r\n                [*]They are prioritized based on \"[url=forums.php?action=viewtopic&forumid=6&topicid=1520]Scene & Internal, from Group to Quality-Degree. ONLY FOR HD-resources[/url]\".\r\n                [*]Releases from preferred groups will dupe releases from groups with the same or lower priority.\r\n                [*]However, one DVD5 sized (i.e. approx. 4.38 GB) release from the best available source will always be allowed.\r\n                [*]Based on lossless screenshots comparison, releases with higher quality will dupe those with low quality.\r\n        [*]Blu-ray Disk/HD DVD Original Copy releases from another region containing different dubbing and/or subtitle aren\'t considered to be dupe.\r\n        [*]Only one copy of the same lossless audio contents will be preserved, and copies of other formats will be duped. FLAC (in separate tracks) is most preferred.\r\n        [*]For contents already on the site\r\n                [*]If new release doesn\'t contain the confirmed errors/glitches/problems of the old release or is based on a better source, then it\'s allowed to be uploaded and the old release is duped.\r\n                [*]If the old release is dead for 45 days or longer, or exists for 18 months or longer, then the new release is free from the dupe rules.\r\n        [*]After uploading the new release, old releases won\'t be removed until they\'re dead of inactivity.\r\n\r\n[b]PACKING RULES (ON TRIAL)[/b]\r\n        ONLY the following contents are allowed to be packed in principle:\r\n        [*]HD movie collections sold as box set (e.g. [i]The Ultimate Matrix Collection Blu-ray Box[/i]).\r\n        [*]Complete season(s) of TV Series/TV shows/animes.\r\n        [*]Documentaries on the same specific subject matter.\r\n        [*]HD trailers released within 7 days.\r\n        [*]MVs of the same artist\r\n                [*]SD MVs are allowed to be packed according to DVD discs only, and no upload of individual songs is allowed.\r\n                [*]HD MVs in the same resolution.\r\n        [*]Music of the same artist\r\n                [*]Only 5 or more albums can be packed.\r\n                [*]Albums released within 2 years can be individually uploaded.\r\n                [*]Generally, contents that are already on the site should be removed from the pack upon uploading, otherwise include them all together in the pack.\r\n        [*]Animes, character songs, dramas, etc. that are released in separate volumes.\r\n        [*]Contents packed by formal groups.\r\n        Packed video contents must be from media of the same type (e.g. Blu-ray discs), in the same resolution standard (e.g. 720p), and encoded in the same video codec (e.g. x264). However, trailer are exceptions. Moreover, a movie collection should be released from the same group. Packed audio contents must be encoded in the same audio codec (e.g. all in FLAC). Corresponding individual torrents can be removed upon packing, depending on actual situation.\r\n        If you are not clear of anything about packing, please [url=contactstaff.php]consult the staff[/url]. Staff reserve all the rights to interpret and deal with packing-related issues.\r\n\r\n[b]EXCEPTIONS[/b]\r\n        [*]ALLOWED: SD videos from TV/DSR in the category \"Sports\".\r\n        [*]ALLOWED: contents less than 100 MB but related to software and documents.\r\n        [*]ALLOWED: single albums that are less than 100 MB.\r\n        [*]ALLOWED: 2.0-channel (or higher) Mandarin/Cantonese dubs.\r\n        [*]ALLOWED: attached subtitles, game cracks and patches, fonts, scans (of packages, etc.). These files must be all either archived or unarchived.\r\n        [*]ALLOWED: when uploading CD releases, attaching contents from the DVD given with the CD.\r\n\r\n[b]TORRENT INFORMATION[/b]\r\n        All torrents shall have descriptive titles, necessary descriptions and other information. Following is a brief regulation. Please refer to \"[url=forums.php?action=viewtopic&topicid=3438&page=0#56711]Standard and Guidance of Torrent Information[/url]\" (in Chinese) for complete and detailed instructions.\r\n        [*]Title\r\n                [*]Movies: [i]Name [Year] [Cut] [Release Info] Resolution Source [Audio/]Video Codec-Tag[/i]\r\n                      e.g. [i]The Dark Knight 2008 PROPER 720p BluRay x264-SiNNERS[/i]\r\n                [*]TV Series/Mini-serie: [i]Name [Year] S**E** [Release Info] Resolution Source [Audio/]Video Codec-Tag[/i]\r\n                      e.g. [i]Prison Break S04E01 PROPER 720p HDTV x264-CTU[/i]\r\n                [*]Musics: [i]Artist - Album [Year] [Version] [Release Info] Audio Codec[-Tag][/i]\r\n                      e.g. [i]Enya - And Winter Came 2008 FLAC[/i]\r\n                [*]Games: [i]Name [Year] [Version] [Release Info][-Tag][/i]\r\n                      e.g. [i]Command And Conquer Red Alert 3 Uprising-RELOADED[/i]\r\n        [*]Small description\r\n                [*]No advertisements or asking for a reseed/requests.\r\n        [*]External Info\r\n                [*]URL of external info for Movies and TV Series is required (if available).\r\n        [*]Description\r\n                [*]Do not use the description for your NFO-artwork! Limit those artistic expressions to the NFO only.\r\n                [*]For Movies, TV Series/Mini-series and animes:\r\n                        [*]Poster, banner or BD/HDDVD/DVD cover is required (If available).\r\n                        [*]Adding screenshots or thumbnails and links to the screenshots is encouraged.\r\n                        [*]Adding detailed file information regarding format, runtime, codec, bitrate, resolution, language, subtitle, etc. is encouraged.\r\n                        [*]Adding a list of staff and cast and plot outline is encouraged.\r\n                [*]For Sports:\r\n                        [*]Don\'t spoil the results trough text/screenshots/filenames/obvious filesize/detailed runtime.\r\n                [*]For Music:\r\n                        [*]The CD cover and the track list are required (if available).\r\n                [*]For PC Games:\r\n                        [*]Poster, banner or BD/HDDVD/DVD cover is required (If available).\r\n                        [*]Adding screenshots or thumbnails and links to the screenshots is encouraged.\r\n        [*]Misc\r\n                [*]Please correctly specify the category and quality info.\r\n        [*]NOTES\r\n                [*]Moderators will edit the torrent info according to the standard.\r\n                [*]Do NOT remove or alter changes done by the staff (but some mistakes can be fixed by the uploader).\r\n                [*]Torrents without required information can be deleted, depending on how they meet the standard.\r\n                [*]The original torrent information can be used if it basically meets the standard.\r\n');
INSERT INTO `rules` VALUES ('28', '6', 'Moderating Rules - <font class=striking>Use your better judgement!</font>', '[*]The most important rule: Use your better judgment!\r\n[*]Don\'t be afraid to say [b]NO[/b]!\r\n[*]Don\'t defy another staff member in public, instead send a PM or through IM.\r\n[*]Be tolerant! Give the user(s) a chance to reform.\r\n[*]Don\'t act prematurely, let the users make their mistakes and THEN correct them.\r\n[*]Try correcting any \"off topics\" rather then closing a thread.\r\n[*]Move topics rather than locking them.\r\n[*]Be tolerant when moderating the chat section (give them some slack).\r\n[*]If you lock a topic, give a brief explanation as to why you\'re locking it.\r\n[*]Before you disable a user account, send him/her a PM and if they reply, put them on a 2 week trial.\r\n[*]Don\'t disable a user account until he or she has been a member for at least 4 weeks.\r\n[*]Convince people by reasoning rather than authority.');
INSERT INTO `rules` VALUES ('54', '6', '管理组成员退休待遇简体中文[HIDE]', '满足以下条件可获得的退休待遇: \r\n\r\n[b]对于 [color=#DC143C]上传员 (Uploaders)[/color]: [/b]\r\n\r\n成为 [color=#1cc6d5][b]养老族 (Retiree) [/b]: [/color]\r\n      升职一年以上; 上传过200个以上的种子资源 (特殊情况如原碟发布, 0day更新等可以由管理组投票表决; 须被认定为作出过重大及持久的贡献).\r\n\r\n成为 [color=#009F00][b]VIP[/b]: [/color]\r\n      升职6个月以上; 上传过100个以上的种子资源 (特殊情况如原碟发布, 0day更新等可以由管理组投票表决).\r\n\r\n其他:\r\n      成为 [color=#F88C00][b]Extreme User[/b][/color] (如果你的条件满足 [color=#F88C00][b]Extreme User[/b][/color] 及以上, 则成为 [color=#38ACEC][b]Nexus Master[/b][/color]) .\r\n\r\n[b]对于 [color=#6495ED]管理员 (Moderators)[/color]: [/b]\r\n\r\n成为 [color=#1cc6d5][b]养老族 (Retiree)[/b]: [/color]\r\n      升职一年以上; 参加过至少2次站务组正式会议; 参与过 规则/答疑 的修订工作.\r\n\r\n成为 [color=#009F00][b]VIP[/b]: [/color]\r\n      若不满足成为 [color=#1cc6d5][b]养老族 (Retiree)[/b][/color] 的条件, 你可以[b]无条件[/b]成为 [color=#009F00][b]VIP[/b][/color] .\r\n\r\n[b]对于 [color=#4b0082]总管理员 (Administrators)[/color] 及 以上等级: [/b]\r\n\r\n      可以[b]直接[/b]成为 [color=#1cc6d5][b]养老族 (Retiree)[/b][/color] .\r\n');
INSERT INTO `rules` VALUES ('56', '6', '[HIDE]<font class=striking>Galgame站内定义！</font><引用自绯月?苍雪>', '注意：本定义主要为了便于对日常讨论的管理。还对[site]网站内有效。\r\n[b][通用标准][site]允许同时符合以下3点的游戏作为\"GalGame\"进行交流、讨论等。[/b] \r\n	1）有一个或多个女性角色作为故事主要人物。 \r\n	2）穿插大量含有女性角色的CG（或CG电影）。 \r\n	3）以感情故事为主线或主要辅线。 \r\n[b][附加标准]符合以上3条，但同时符合以下任意一条的，视为\"HGame\"并禁止在本站内出现。[/b] \r\n	1）含有非人形，即H场景有非人形生物参与的。 \r\n	2）含有调教，即H场景含有肉体折磨伤害等内容的。（轻度胁迫类不属于本范围）。 \r\n	3）含有真人，任何剧情内含有真人CG影象的。（剧情模式外，声优、原画、演唱等工作人员的CG影象不属于本范围）。 \r\n	4）含有巨乳元素，游戏的女主角（所有含独立结局的女角色）身体比例，乳大于头（不含头发、衣服和饰物，以平面CG的面积计算，不考虑空间体积）。\r\n	5）含有痴女向，当游戏里出现2个或2个以上“一女多男”H场景的。\r\n[b][例外条件]符合通用标准，又被附加标准判定为\"HGame\"，但同时符合以下条件，仍视为\"GalGame\"并允许正常交流讨论。[/b]\r\n	1）如游戏并非纯电子小说，类型属于RPG、SLG等有个性游戏系统的游戏。只要主线或主要人物Good End路线没有违规元素，则允许。\r\n	2）任何违反以上规定限定的游戏，只要你玩过，且觉得该游戏被错评，或者该游戏适合在[site]存在，都PM真红SAMA发表你的看法，并说明依据，我们会根据你的说明，对违规游戏选择性允许。');
INSERT INTO `rules` VALUES ('55', '28', '管理組成員退休待遇', '滿足以下條件可獲得的退休待遇: \r\n[code]\r\n[b]對於 [color=#DC143C]上傳員 (Uploaders)[/color]: [/b]\r\n成為 [color=#1cc6d5][b]養老族 (Retiree) [/b]: [/color]\r\n      升職一年以上; 上傳過200個以上的種子資源 (特殊情況如原碟發佈, 0day更新等可以由管理組投票表決; 須被認定為作出過重大及持久的貢獻).\r\n成為 [color=#009F00][b]VIP[/b]: [/color]\r\n      升職6個月以上; 上傳過100個以上的種子資源 (特殊情況如原碟發佈, 0day更新等可以由管理組投票表決).\r\n其他:\r\n      成為 [color=#F88C00][b]Extreme User[/b][/color] (如果你的條件滿足 [color=#F88C00][b]Extreme User[/b][/color] 及以上, 則成為 [color=#38ACEC][b]Nexus Master[/b][/color]) .\r\n[/code]\r\n[code]\r\n[b]對於 [color=#6495ED]管理員 (Moderators)[/color]: [/b]\r\n成為 [color=#1cc6d5][b]養老族 (Retiree)[/b]: [/color]\r\n      升職一年以上; 參加過至少2次站務組正式會議; 參與過 規則/答疑 的修訂工作.\r\n成為 [color=#009F00][b]VIP[/b]: [/color]\r\n      若不滿足成為 [color=#1cc6d5][b]養老族 (Retiree)[/b][/color] 的條件, 你可以[b]無條件[/b]成為 [color=#009F00][b]VIP[/b][/color] .\r\n[/code]\r\n[code]\r\n[b]對於 [color=#4b0082]總管理員 (Administrators)[/color] 及 以上等級: [/b]\r\n      可以[b]直接[/b]成為 [color=#1cc6d5][b]養老族 (Retiree)[/b][/color] .\r\n[/code]');
INSERT INTO `rules` VALUES ('50', '6', 'Rules for Subtitles - <font class=striking>Subtitles violating these rules will be deleted</font>', '(This text is translated from the Chinese version. In case of discrepancy, the original version in Chinese shall prevail.)\r\n\r\n[b]GENERAL PRINCIPLE:[/b]\r\n    [*]All subtitles uploaded must conform to the rules (i.e. proper or qualified). Unqualified subtitles will be deleted.\r\n    [*]Allowed file formats are srt/ssa/ass/cue/zip/rar.\r\n    [*]If you\'re uploading Vobsub (idx+sub) subtitles or subtitles of other types, or a collection (e.g. subtitles for a season pack of some TV series), please zip/rar them before uploading.\r\n    [*]Cue sheet of audio tracks is allowed as well. If there are several cue sheets, please pack them all.\r\n    [*]Uploading lrc lyrics or other non-subtitle/non-cue files is not permitted. Irrelevant files if uploaded will be directly deleted.\r\n\r\n[b]QUALIFYING SUBTITLE/CUE FILES: improper subtitle/cue files will be directly deleted.[/b]\r\n    In any of the following cases, a subtitle/cue file will be judged as improper:\r\n    [*]Fail to match the corresponding torrent.\r\n    [*]Fail to be in sync with the corresponding video/audio file.\r\n    [*]Packed Improperly.\r\n    [*]Contain irrelevant or spam stuff.\r\n    [*]Encoded incorrectly.\r\n    [*]Wrong cue file.\r\n    [*]Wrong language mark.\r\n    [*]The title is indefinite or contains redundant info/characters.\r\n    [*]Duplicate.\r\n    [*]Reported by several users and confirmed with other problems.\r\n    [b]The staff group reserves rights to judge and deal with improper subtitles.[/b]\r\n    Please refer to [url=http://www.nexushd.org/forums.php?action=viewtopic&forumid=13&topicid=2848][i]this thread[/i][/url] in the forum for detailed regulations on qualifying subtitle/cue files, other notes and suggestions on uploading subtitles, and subtitle naming and entitling guidance.\r\n\r\n[b]IMPLEMENTING REGULATIONS OF REWARDS AND PENALTIES [/b]\r\n    [*]Reporting against improper subtitles and the uploaders who purposely upload improper subtitles is always welcomed. To report an improper subtitle, please click on the [i]REPORT[/i] button of the corresponding subtitle in the subtitle section. To report a user, please click on the [i]REPORT[/i] button at the bottom of the user details page.\r\n    [*]The reporter will be rewarded 50 karma points (delivered in three days) for each case after confirmation.\r\n    [*]Improper subtitles will be deleted and the corresponding uploader will be fined 100 karma points in each case.\r\n    [*]Users who recklessly uploading improper subtitles for karma points or other purposes, or users who maliciously report, will be fined karma points or warned depending on the seriousness of the case.\r\n');
INSERT INTO `rules` VALUES ('49', '6', '字幕区规则 - <font class=striking>违规字幕将被删除</font>简体中文[HIDE]', '[b]总则：[/b]\r\n    [*]所有上传的字幕必须符合规则（即合格的）。不合格的字幕将被删除。\r\n    [*]允许上传的文件格式为srt/ssa/ass/cue/zip/rar。\r\n    [*]如果你打算上传的字幕是Vobsub格式（idx+sub）或其它格式，或者是合集（如电视剧整季的字幕），请将它们打包为zip/rar后再上传。\r\n    [*]字幕区开放音轨对应cue表单文件的上传。如有多个cue，请将它们打包起来。\r\n    [*]不允许lrc歌词或其它非字幕/cue文件的上传。上传的无关文件将被直接删除。\r\n\r\n[b]不合格字幕/cue文件判定：被判定为不合格的字幕/cue文件将被直接删除。[/b]\r\n    出现以下情况之一的字幕/cue文件将被判定为不合格：\r\n    [*]与相应种子不匹配。\r\n    [*]与相应的视频/音频文件不同步。\r\n    [*]打包错误。\r\n    [*]包含无关文件或垃圾信息。\r\n    [*]编码错误。\r\n    [*]cue文件错误。\r\n    [*]语种标识错误。\r\n    [*]标题命名不明确或包含冗余信息或字符。\r\n    [*]被判定为重复。\r\n    [*]接到多个用户举报并被证实有其它问题的。\r\n    [b]管理组保留裁定和处理不合格字幕的权力。[/b]\r\n    不合格字幕/cue文件判定细则、字幕上传的其它注意事项以及命名指引请参阅论坛的[url=http://www.nexushd.org/forums.php?action=viewtopic&forumid=13&topicid=2848]这个帖子[/url]。\r\n\r\n[b]字幕奖惩：[/b]\r\n    [*]欢迎举报不合格的字幕和恶意发布不合格字幕的用户。举报不合格字幕请在字幕区点击相应字幕的“举报”按钮。举报用户请点击相应用户详细信息页面底部的“举报”按钮。\r\n    [*]对每一例不合格字幕的举报，确认后将奖励举报者50点魔力值（三天内发放）。\r\n    [*]被确定为不合格的字幕将被删除，而在每一例中，相应的字幕上传者将被扣除100点魔力值。\r\n    [*]对为赚取积分等目的恶意上传不合格字幕的用户，或是恶意举报的用户，将视情节轻重扣除额外的魔力值甚至给予警告。\r\n');
INSERT INTO `rules` VALUES ('53', '6', 'Staff\'s retirement benefits', 'You can get retirement benefits when meeting these condition(s) below:\r\n\r\n[code]\r\n[b]for [color=#DC143C]Uploaders[/color]: [/b]\r\n\r\nTo join [color=#1cc6d5][b]Retiree[/b]: [/color]\r\n      Been promoted for more than 1 year; have posted 200 or more torrents (special cases can be decided via vote among staffs, like Source-Disc posters, scene-uploaders; should be considered as having made rare and enduring contribution).\r\n\r\nTo join [color=#009F00][b]VIP[/b]: [/color]\r\n      Been promoted for more than 6 months; have posted 100 or more torrents (special cases can be decided via vote among staffs, like Source-Disc posters, scene-uploaders).\r\n\r\nOthers:\r\n      Demoted to [color=#F88C00][b]Extreme User[/b][/color] (if your profile meets the corresponding condition of classes [color=#F88C00][b]Extreme User[/b][/color] and above, then promoted to [color=#38ACEC][b]Nexus Master[/b][/color]).\r\n[/code]\r\n\r\n[code]\r\n[b]for [color=#6495ED]Moderators[/color]: [/b]\r\n\r\nTo join [color=#1cc6d5][b]Retiree[/b]: [/color]\r\n      Been promoted for more than 1 year; Have participated at least 2 Staff [b]Official[/b] Meetings; Have participated in Rules/FAQ modifying.\r\n\r\nTo join [color=#009F00][b]VIP[/b]: [/color]\r\n      If you don\'t meet the condition of joining [color=#1cc6d5][b]Retiree[/b][/color], you can join [color=#009F00][b]VIP[/b][/color] [b]unconditionally[/b].\r\n[/code]\r\n\r\n[code]\r\n[b]for [color=#4b0082]Administrators[/color] and above: [/b]\r\n\r\n      You can join [color=#1cc6d5][b]Retiree[/b][/color] [b]unconditionally[/b].\r\n[/code]');
INSERT INTO `rules` VALUES ('51', '28', '字幕區規則 - <font class=striking>違規字幕將被刪除</font>', '[b]總則：[/b]\r\n    [*]所有上傳的字幕必須符合規則（即合格的）。不合格的字幕將被刪除。\r\n    [*]允許上傳的檔案格式為srt/ssa/ass/cue/zip/rar。\r\n    [*]如果你打算上傳的字幕是Vobsub格式（idx+sub）或其它格式，或者是合集（如電視劇整季的字幕），請將它們打包為zip/rar後再上傳。\r\n    [*]字幕區開放音軌對應cue表單文件的上傳。如有多個cue，請將它們打包起來。\r\n    [*]不允許lrc歌詞或其它非字幕/cue文件的上傳。上傳的無關檔將被直接刪除。\r\n\r\n[b]不合格字幕/cue文件判定：被判定為不合格的字幕/cue檔將被直接刪除。[/b]\r\n    出現以下情況之一的字幕/cue檔將被判定為不合格：\r\n    [*]與相應種子不匹配。\r\n    [*]與相應的視頻/音訊檔不同步。\r\n    [*]打包錯誤。\r\n    [*]包含無關檔或垃圾資訊。\r\n    [*]編碼錯誤。\r\n    [*]cue檔錯誤。\r\n    [*]語種標識錯誤。\r\n    [*]標題命名不明確或包含冗餘資訊或字元。\r\n    [*]被判定為重複。\r\n    [*]接到多個用戶舉報並被證實有其它問題的。\r\n    [b]管理組保留裁定和處理不合格字幕的權力。[/b]\r\n    不合格字幕/cue檔判定細則、字幕上傳的其它注意事項以及命名指引請參閱論壇的[url=http://www.nexushd.org/forums.php?action=viewtopic&forumid=13&topicid=2848]這個帖子[/url]。\r\n\r\n[b]字幕獎懲：[/b]\r\n    [*]歡迎舉報不合格的字幕和惡意發佈不合格字幕的用戶。舉報不合格字幕請在字幕區點擊相應字幕的“舉報”按鈕。舉報使用者請點擊相應使用者詳細資訊頁面底部的“舉報”按鈕。\r\n    [*]對每一例不合格字幕的舉報，確認後將獎勵舉報者50點魔力值（三天內發放）。\r\n    [*]被確定為不合格的字幕將被刪除，而在每一例中，相應的字幕上傳者將被扣除100點魔力值。\r\n    [*]對為賺取積分等目的惡意上傳不合格字幕的用戶，或是惡意舉報的用戶，將視情節輕重扣除額外的魔力值甚至給予警告。\r\n');

-- ----------------------------
-- Table structure for `schools`
-- ----------------------------
DROP TABLE IF EXISTS `schools`;
CREATE TABLE `schools` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schools
-- ----------------------------
INSERT INTO `schools` VALUES ('1', '南京农业大学');
INSERT INTO `schools` VALUES ('2', '中山大学');
INSERT INTO `schools` VALUES ('3', '中国石油大学');
INSERT INTO `schools` VALUES ('4', '云南大学');
INSERT INTO `schools` VALUES ('5', '河海大学');
INSERT INTO `schools` VALUES ('6', '南开大学');
INSERT INTO `schools` VALUES ('7', '兰州大学');
INSERT INTO `schools` VALUES ('8', '合肥工业大学');
INSERT INTO `schools` VALUES ('9', '上海大学');
INSERT INTO `schools` VALUES ('10', '安徽大学');
INSERT INTO `schools` VALUES ('11', '中国海洋大学');
INSERT INTO `schools` VALUES ('12', '复旦大学');
INSERT INTO `schools` VALUES ('13', '西北大学');
INSERT INTO `schools` VALUES ('14', '郑州大学');
INSERT INTO `schools` VALUES ('15', '四川大学');
INSERT INTO `schools` VALUES ('16', '华中科技大学');
INSERT INTO `schools` VALUES ('17', '天津大学');
INSERT INTO `schools` VALUES ('18', '山东大学');
INSERT INTO `schools` VALUES ('19', '中央民族大学');
INSERT INTO `schools` VALUES ('20', '苏州大学');
INSERT INTO `schools` VALUES ('21', '重庆大学');
INSERT INTO `schools` VALUES ('22', '东北农业大学');
INSERT INTO `schools` VALUES ('23', '北京工业大学');
INSERT INTO `schools` VALUES ('24', '湖南师范大学');
INSERT INTO `schools` VALUES ('25', '东北大学');
INSERT INTO `schools` VALUES ('26', '电子科技大学');
INSERT INTO `schools` VALUES ('27', '西安电子科技大学');
INSERT INTO `schools` VALUES ('28', '北京化工大学');
INSERT INTO `schools` VALUES ('29', '南京航空航天大学');
INSERT INTO `schools` VALUES ('30', '南京理工大学');
INSERT INTO `schools` VALUES ('31', '西北工业大学');
INSERT INTO `schools` VALUES ('32', '天津医科大学');
INSERT INTO `schools` VALUES ('33', '北京林业大学');
INSERT INTO `schools` VALUES ('34', '华南师范大学');
INSERT INTO `schools` VALUES ('35', '浙江大学');
INSERT INTO `schools` VALUES ('36', '长安大学');
INSERT INTO `schools` VALUES ('37', '武汉理工大学');
INSERT INTO `schools` VALUES ('38', '河北工业大学');
INSERT INTO `schools` VALUES ('39', '南京师范大学');
INSERT INTO `schools` VALUES ('40', '中国农业大学');
INSERT INTO `schools` VALUES ('41', '厦门大学');
INSERT INTO `schools` VALUES ('42', '第二军医大学');
INSERT INTO `schools` VALUES ('43', '北京理工大学');
INSERT INTO `schools` VALUES ('44', '北京大学');
INSERT INTO `schools` VALUES ('45', '上海外国语大学');
INSERT INTO `schools` VALUES ('46', '北京科技大学');
INSERT INTO `schools` VALUES ('47', '西北农林科技大学');
INSERT INTO `schools` VALUES ('48', '中南大学');
INSERT INTO `schools` VALUES ('49', '华南理工大学');
INSERT INTO `schools` VALUES ('50', '武汉大学');
INSERT INTO `schools` VALUES ('51', '福州大学');
INSERT INTO `schools` VALUES ('52', '同济大学');
INSERT INTO `schools` VALUES ('53', '中国传媒大学');
INSERT INTO `schools` VALUES ('54', '湖南大学');
INSERT INTO `schools` VALUES ('55', '上海财经大学');
INSERT INTO `schools` VALUES ('56', '国防科学技术大学');
INSERT INTO `schools` VALUES ('57', '吉林大学');
INSERT INTO `schools` VALUES ('58', '大连理工大学');
INSERT INTO `schools` VALUES ('59', '中国人民大学');
INSERT INTO `schools` VALUES ('60', '上海交通大学');
INSERT INTO `schools` VALUES ('61', '西安交通大学');
INSERT INTO `schools` VALUES ('62', '江南大学');
INSERT INTO `schools` VALUES ('63', '南京大学');
INSERT INTO `schools` VALUES ('64', '南昌大学');
INSERT INTO `schools` VALUES ('65', '太原理工大学');
INSERT INTO `schools` VALUES ('66', '中国地质大学');
INSERT INTO `schools` VALUES ('67', '清华大学');
INSERT INTO `schools` VALUES ('68', '广西大学');
INSERT INTO `schools` VALUES ('69', '中国矿业大学');
INSERT INTO `schools` VALUES ('70', '四川农业大学');
INSERT INTO `schools` VALUES ('71', '东北师范大学');
INSERT INTO `schools` VALUES ('72', '哈尔滨工业大学');
INSERT INTO `schools` VALUES ('73', '北京航空航天大学');
INSERT INTO `schools` VALUES ('74', '北京交通大学');
INSERT INTO `schools` VALUES ('75', '西南交通大学');
INSERT INTO `schools` VALUES ('76', '中国科学技术大学');
INSERT INTO `schools` VALUES ('77', '北京外国语大学');
INSERT INTO `schools` VALUES ('78', '北京邮电大学');
INSERT INTO `schools` VALUES ('79', '西安建筑科技大学');
INSERT INTO `schools` VALUES ('80', '新疆大学');
INSERT INTO `schools` VALUES ('81', '东南大学');
INSERT INTO `schools` VALUES ('82', '对外经济贸易大学');
INSERT INTO `schools` VALUES ('83', '北京中医药大学');
INSERT INTO `schools` VALUES ('84', '暨南大学');
INSERT INTO `schools` VALUES ('85', '北京语言大学');
INSERT INTO `schools` VALUES ('86', '华中师范大学');
INSERT INTO `schools` VALUES ('87', '北京师范大学');
INSERT INTO `schools` VALUES ('88', '哈尔滨工程大学');
INSERT INTO `schools` VALUES ('89', '内蒙古大学');
INSERT INTO `schools` VALUES ('90', '东华大学');
INSERT INTO `schools` VALUES ('91', '解放军信息工程大学');
INSERT INTO `schools` VALUES ('92', '上海交通大学医学院 ');
INSERT INTO `schools` VALUES ('93', '华东理工大学');
INSERT INTO `schools` VALUES ('94', '第四军医大学');
INSERT INTO `schools` VALUES ('95', '大连海事大学');
INSERT INTO `schools` VALUES ('96', '华东师范大学');
INSERT INTO `schools` VALUES ('97', '辽宁大学');
INSERT INTO `schools` VALUES ('98', '深圳大学');
INSERT INTO `schools` VALUES ('99', '中央音乐学院');
INSERT INTO `schools` VALUES ('100', '中国协和医科大学');
INSERT INTO `schools` VALUES ('101', '集美大学');

-- ----------------------------
-- Table structure for `searchbox`
-- ----------------------------
DROP TABLE IF EXISTS `searchbox`;
CREATE TABLE `searchbox` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `showsubcat` tinyint(1) NOT NULL DEFAULT '0',
  `showsource` tinyint(1) NOT NULL DEFAULT '0',
  `showmedium` tinyint(1) NOT NULL DEFAULT '0',
  `showcodec` tinyint(1) NOT NULL DEFAULT '0',
  `showstandard` tinyint(1) NOT NULL DEFAULT '0',
  `showprocessing` tinyint(1) NOT NULL DEFAULT '0',
  `showteam` tinyint(1) NOT NULL DEFAULT '0',
  `showaudiocodec` tinyint(1) NOT NULL DEFAULT '0',
  `catsperrow` smallint(5) unsigned NOT NULL DEFAULT '7',
  `catpadding` smallint(5) unsigned NOT NULL DEFAULT '25',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of searchbox
-- ----------------------------
INSERT INTO `searchbox` VALUES ('7', 'CHD', '1', '1', '1', '0', '1', '1', '1', '1', '12', '10');
INSERT INTO `searchbox` VALUES ('8', 'Special', '1', '1', '1', '0', '1', '1', '1', '1', '12', '10');
INSERT INTO `searchbox` VALUES ('9', 'HD', '1', '1', '0', '0', '1', '1', '1', '0', '8', '10');

-- ----------------------------
-- Table structure for `secondicons`
-- ----------------------------
DROP TABLE IF EXISTS `secondicons`;
CREATE TABLE `secondicons` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `source` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `medium` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `codec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `standard` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `processing` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `team` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `audiocodec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secondicons
-- ----------------------------
INSERT INTO `secondicons` VALUES ('1', '0', '1', '1', '0', '0', '0', '0', 'Blu-ray/H.264', null, 'bdh264.png');
INSERT INTO `secondicons` VALUES ('2', '0', '1', '2', '0', '0', '0', '0', 'Blu-ray/VC-1', null, 'bdvc1.png');
INSERT INTO `secondicons` VALUES ('3', '0', '1', '4', '0', '0', '0', '0', 'Blu-ray/MPEG-2', null, 'bdmpeg2.png');
INSERT INTO `secondicons` VALUES ('4', '0', '2', '1', '0', '0', '0', '0', 'HD DVD/H.264', null, 'hddvdh264.png');
INSERT INTO `secondicons` VALUES ('5', '0', '2', '2', '0', '0', '0', '0', 'HD DVD/VC-1', null, 'hddvdvc1.png');
INSERT INTO `secondicons` VALUES ('6', '0', '2', '4', '0', '0', '0', '0', 'HD DVD/MPEG-2', null, 'hddvdmpeg2.png');
INSERT INTO `secondicons` VALUES ('7', '0', '3', '1', '0', '0', '0', '0', 'Remux/H.264', null, 'remuxh264.png');
INSERT INTO `secondicons` VALUES ('8', '0', '3', '2', '0', '0', '0', '0', 'Remux/VC-1', null, 'remuxvc1.png');
INSERT INTO `secondicons` VALUES ('9', '0', '3', '4', '0', '0', '0', '0', 'Remux/MPEG-2', null, 'remuxmpeg2.png');
INSERT INTO `secondicons` VALUES ('10', '0', '4', '0', '0', '0', '0', '0', 'AVCHD', null, 'avchd.png');
INSERT INTO `secondicons` VALUES ('11', '0', '5', '1', '0', '0', '0', '0', 'HDTV/H.264', null, 'hdtvh264.png');
INSERT INTO `secondicons` VALUES ('12', '0', '5', '4', '0', '0', '0', '0', 'HDTV/MPEG-2', null, 'hdtvmpeg2.png');
INSERT INTO `secondicons` VALUES ('13', '0', '6', '0', '0', '0', '0', '0', 'DVDR', null, 'dvdr.png');
INSERT INTO `secondicons` VALUES ('14', '0', '7', '1', '0', '0', '0', '0', 'Rip/H.264', null, 'riph264.png');
INSERT INTO `secondicons` VALUES ('15', '0', '7', '3', '0', '0', '0', '0', 'Rip/Xvid', null, 'ripxvid.png');
INSERT INTO `secondicons` VALUES ('16', '0', '8', '5', '0', '0', '0', '0', 'CD/FLAC', null, 'cdflac.png');
INSERT INTO `secondicons` VALUES ('17', '0', '8', '6', '0', '0', '0', '0', 'CD/APE', null, 'cdape.png');
INSERT INTO `secondicons` VALUES ('18', '0', '8', '7', '0', '0', '0', '0', 'CD/DTS', null, 'cddts.png');
INSERT INTO `secondicons` VALUES ('19', '0', '8', '9', '0', '0', '0', '0', 'CD/Other', null, 'cdother.png');
INSERT INTO `secondicons` VALUES ('20', '0', '9', '5', '0', '0', '0', '0', 'Extract/FLAC', null, 'extractflac.png');
INSERT INTO `secondicons` VALUES ('21', '0', '9', '7', '0', '0', '0', '0', 'Extract/DTS', null, 'extractdts.png');
INSERT INTO `secondicons` VALUES ('22', '0', '9', '8', '0', '0', '0', '0', 'Extract/AC-3', null, 'extractac3.png');

-- ----------------------------
-- Table structure for `shoutbox`
-- ----------------------------
DROP TABLE IF EXISTS `shoutbox`;
CREATE TABLE `shoutbox` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `type` enum('sb','hb') NOT NULL DEFAULT 'sb',
  `ip` varchar(50) NOT NULL,
  `auto` int(10) unsigned NOT NULL DEFAULT '0',
  `trueuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `date` (`date`),
  KEY `auto_date` (`auto`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=93115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoutbox
-- ----------------------------

-- ----------------------------
-- Table structure for `sitelog`
-- ----------------------------
DROP TABLE IF EXISTS `sitelog`;
CREATE TABLE `sitelog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txt` text NOT NULL,
  `security_level` enum('normal','mod') NOT NULL DEFAULT 'normal',
  PRIMARY KEY (`id`),
  KEY `added` (`added`),
  KEY `security` (`security_level`)
) ENGINE=MyISAM AUTO_INCREMENT=424607 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sitelog
-- ----------------------------

-- ----------------------------
-- Table structure for `slave_server_ip`
-- ----------------------------
DROP TABLE IF EXISTS `slave_server_ip`;
CREATE TABLE `slave_server_ip` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `upname` char(64) DEFAULT NULL,
  `upvalue` char(128) DEFAULT NULL,
  `uptime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iptype` (`upname`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of slave_server_ip
-- ----------------------------

-- ----------------------------
-- Table structure for `snatched`
-- ----------------------------
DROP TABLE IF EXISTS `snatched`;
CREATE TABLE `snatched` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `torrentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `port` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `downloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `to_go` bigint(20) unsigned NOT NULL DEFAULT '0',
  `seedtime` int(10) unsigned NOT NULL DEFAULT '0',
  `leechtime` int(10) unsigned NOT NULL DEFAULT '0',
  `last_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `startdat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `completedat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `finished` enum('yes','no') NOT NULL DEFAULT 'no',
  `imuploaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `imdownloaded` bigint(20) unsigned NOT NULL DEFAULT '0',
  `HR` enum('A','B','C','D','H') NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id`),
  UNIQUE KEY `torrentid_userid` (`torrentid`,`userid`) USING BTREE,
  KEY `finished_torrentid` (`finished`,`torrentid`) USING BTREE,
  KEY `finished_userid_torrentid` (`finished`,`userid`,`torrentid`),
  KEY `torrentid_finished` (`torrentid`,`finished`) USING BTREE,
  KEY `userid_HR_finished` (`userid`,`HR`,`finished`),
  KEY `HR_userid` (`HR`,`userid`),
  KEY `finished_to_go` (`finished`,`to_go`)
) ENGINE=MyISAM AUTO_INCREMENT=2071435 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snatched
-- ----------------------------

-- ----------------------------
-- Table structure for `sources`
-- ----------------------------
DROP TABLE IF EXISTS `sources`;
CREATE TABLE `sources` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sort_index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sources
-- ----------------------------
INSERT INTO `sources` VALUES ('10', '日韩', '3', '0');
INSERT INTO `sources` VALUES ('7', '大陆', '0', '0');
INSERT INTO `sources` VALUES ('8', '港台', '1', '0');
INSERT INTO `sources` VALUES ('9', '欧美', '2', '0');
INSERT INTO `sources` VALUES ('11', '其他地区', '4', '0');

-- ----------------------------
-- Table structure for `sqlcache`
-- ----------------------------
DROP TABLE IF EXISTS `sqlcache`;
CREATE TABLE `sqlcache` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `keyname` char(128) NOT NULL,
  `keyvalue` text NOT NULL,
  `deadtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyname` (`keyname`),
  KEY `deadtime` (`deadtime`)
) ENGINE=MyISAM AUTO_INCREMENT=5437 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sqlcache
-- ----------------------------

-- ----------------------------
-- Table structure for `staffmessages`
-- ----------------------------
DROP TABLE IF EXISTS `staffmessages`;
CREATE TABLE `staffmessages` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sender` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `msg` text,
  `subject` varchar(128) NOT NULL DEFAULT '',
  `answeredby` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `answered` tinyint(1) NOT NULL DEFAULT '0',
  `answer` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staffmessages
-- ----------------------------

-- ----------------------------
-- Table structure for `standards`
-- ----------------------------
DROP TABLE IF EXISTS `standards`;
CREATE TABLE `standards` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sort_index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of standards
-- ----------------------------
INSERT INTO `standards` VALUES ('1', '1080P', '0', '0');
INSERT INTO `standards` VALUES ('5', '480P', '2', '0');
INSERT INTO `standards` VALUES ('3', '720P', '1', '0');
INSERT INTO `standards` VALUES ('4', '枪版视频', '99', '0');
INSERT INTO `standards` VALUES ('6', '其他码率', '99', '0');
INSERT INTO `standards` VALUES ('7', '有损音频', '97', '1');
INSERT INTO `standards` VALUES ('8', '无损音频', '98', '1');
INSERT INTO `standards` VALUES ('12', '1024*576', '7', '0');
INSERT INTO `standards` VALUES ('13', '848*480', '8', '0');
INSERT INTO `standards` VALUES ('14', '640*480', '9', '0');
INSERT INTO `standards` VALUES ('15', '704*396', '10', '0');

-- ----------------------------
-- Table structure for `stylesheets`
-- ----------------------------
DROP TABLE IF EXISTS `stylesheets`;
CREATE TABLE `stylesheets` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `addicode` text,
  `designer` varchar(50) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stylesheets
-- ----------------------------
INSERT INTO `stylesheets` VALUES ('2', 'styles/BlueGene/', 'Blue Gene', '', 'Zantetsu', 'HDBits clone');
INSERT INTO `stylesheets` VALUES ('3', 'styles/BlasphemyOrange/', 'Blasphemy Orange', '', 'Zantetsu', 'Bit-HDTV clone');
INSERT INTO `stylesheets` VALUES ('4', 'styles/Classic/', 'Classic', '', 'Zantetsu', 'TBSource original mod');
INSERT INTO `stylesheets` VALUES ('6', 'styles/DarkPassion/', 'Dark Passion', '', 'Zantetsu', '');
INSERT INTO `stylesheets` VALUES ('7', 'styles/BambooGreen/', 'Bamboo Green', '', 'Xia Zuojie', 'Baidu Hi clone');
INSERT INTO `stylesheets` VALUES ('9', 'styles/ikamusume/', 'Ikamusume', '', '真红酱', '求盗用');
INSERT INTO `stylesheets` VALUES ('10', 'styles/hatsune_miku/', 'Hatsune_Miku', '', '真红酱', '求盗用');

-- ----------------------------
-- Table structure for `subs`
-- ----------------------------
DROP TABLE IF EXISTS `subs`;
CREATE TABLE `subs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `torrent_id` mediumint(8) unsigned NOT NULL,
  `lang_id` smallint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `uppedby` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `anonymous` enum('yes','no') NOT NULL DEFAULT 'no',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ext` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `torrentid_langid` (`torrent_id`,`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3460 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subs
-- ----------------------------

-- ----------------------------
-- Table structure for `suggest`
-- ----------------------------
DROP TABLE IF EXISTS `suggest`;
CREATE TABLE `suggest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `times` int(10) DEFAULT '1',
  `newupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keywords` (`keywords`,`adddate`) USING BTREE,
  KEY `adddate` (`adddate`),
  KEY `times` (`times`),
  KEY `newupdate` (`newupdate`)
) ENGINE=MyISAM AUTO_INCREMENT=636670 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suggest
-- ----------------------------

-- ----------------------------
-- Table structure for `sysoppanel`
-- ----------------------------
DROP TABLE IF EXISTS `sysoppanel`;
CREATE TABLE `sysoppanel` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3028 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysoppanel
-- ----------------------------
INSERT INTO `sysoppanel` VALUES ('1', '删除禁用的用户', 'deletedisabled.php', '删除所有被禁用的用户');
INSERT INTO `sysoppanel` VALUES ('2', '跟踪管理论坛', 'forummanage.php', '编辑/删除论坛');
INSERT INTO `sysoppanel` VALUES ('3', 'MySQL的统计', 'mysql_stats.php', '参阅MySQL统计');
INSERT INTO `sysoppanel` VALUES ('4', '邮件群发', 'massmail.php', '发送邮件给所有用户');
INSERT INTO `sysoppanel` VALUES ('5', '清理工作', 'docleanup.php', '清除功能');
INSERT INTO `sysoppanel` VALUES ('6', '禁止系统', 'bans.php', '禁止/取消系统');
INSERT INTO `sysoppanel` VALUES ('7', '登录失败日志', 'maxlogin.php', '显示登录失败的尝试');
INSERT INTO `sysoppanel` VALUES ('8', 'Bitbucket', 'bitbucketlog.php', 'Bitbucket日志');
INSERT INTO `sysoppanel` VALUES ('9', '禁止的电子邮件地址', 'bannedemails.php', '停止登记禁止电子邮件');
INSERT INTO `sysoppanel` VALUES ('10', '接收邮件地址', 'allowedemails.php', '接收邮件登记');
INSERT INTO `sysoppanel` VALUES ('11', '位置', 'location.php', '管理位置和速度位置');
INSERT INTO `sysoppanel` VALUES ('12', '新增上传', 'amountupload.php', '新增上传到某些类别');
INSERT INTO `sysoppanel` VALUES ('13', '礼物设置', 'gift.php?action=set', '礼物功能设置');
INSERT INTO `sysoppanel` VALUES ('14', '清理附件', 'delattachments.php', '清理无用附件');
INSERT INTO `sysoppanel` VALUES ('15', 'IMDB数据更新(直接开始)', 'imdbfind.php', '校正有IMDB的豆瓣连接,更新无数据的连接');
INSERT INTO `sysoppanel` VALUES ('255', '种子HASH检查确认', 'torrenthashcheck.php', '确认种子HASH是否和种子文件一致');
INSERT INTO `sysoppanel` VALUES ('16', '乐透设置', 'lottery.php?do=config', '乐透彩券设置');
INSERT INTO `sysoppanel` VALUES ('17', '竞猜大厅管理员', 'bet_admin_sys.php', '管理员管理');

-- ----------------------------
-- Table structure for `teams`
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sort_index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of teams
-- ----------------------------
INSERT INTO `teams` VALUES ('6', 'MKV', '1', '0');
INSERT INTO `teams` VALUES ('7', 'RMVB', '2', '0');
INSERT INTO `teams` VALUES ('8', 'MP4', '3', '0');
INSERT INTO `teams` VALUES ('9', 'AVI', '4', '0');
INSERT INTO `teams` VALUES ('10', 'MPEG', '5', '0');
INSERT INTO `teams` VALUES ('11', 'TS/TP', '0', '0');
INSERT INTO `teams` VALUES ('14', 'FLV', '6', '0');

-- ----------------------------
-- Table structure for `thanks`
-- ----------------------------
DROP TABLE IF EXISTS `thanks`;
CREATE TABLE `thanks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `torrentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rated` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `torrentid_id` (`torrentid`,`id`),
  UNIQUE KEY `torrentid_userid` (`torrentid`,`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=232525 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thanks
-- ----------------------------

-- ----------------------------
-- Table structure for `tickets`
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=266 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tickets
-- ----------------------------
INSERT INTO `tickets` VALUES ('1', '20239');
INSERT INTO `tickets` VALUES ('2', '20239');
INSERT INTO `tickets` VALUES ('3', '20239');
INSERT INTO `tickets` VALUES ('4', '20239');
INSERT INTO `tickets` VALUES ('5', '20239');
INSERT INTO `tickets` VALUES ('6', '20239');
INSERT INTO `tickets` VALUES ('7', '20239');
INSERT INTO `tickets` VALUES ('8', '20239');
INSERT INTO `tickets` VALUES ('9', '20239');
INSERT INTO `tickets` VALUES ('10', '20239');
INSERT INTO `tickets` VALUES ('11', '20239');
INSERT INTO `tickets` VALUES ('12', '20239');
INSERT INTO `tickets` VALUES ('13', '20239');
INSERT INTO `tickets` VALUES ('14', '20239');
INSERT INTO `tickets` VALUES ('15', '20239');
INSERT INTO `tickets` VALUES ('16', '37806');
INSERT INTO `tickets` VALUES ('17', '37806');
INSERT INTO `tickets` VALUES ('18', '37806');
INSERT INTO `tickets` VALUES ('19', '37806');
INSERT INTO `tickets` VALUES ('20', '37806');
INSERT INTO `tickets` VALUES ('21', '37806');
INSERT INTO `tickets` VALUES ('22', '37806');
INSERT INTO `tickets` VALUES ('23', '37806');
INSERT INTO `tickets` VALUES ('24', '37806');
INSERT INTO `tickets` VALUES ('25', '37806');
INSERT INTO `tickets` VALUES ('26', '37806');
INSERT INTO `tickets` VALUES ('27', '37806');
INSERT INTO `tickets` VALUES ('28', '37806');
INSERT INTO `tickets` VALUES ('29', '37806');
INSERT INTO `tickets` VALUES ('30', '37806');
INSERT INTO `tickets` VALUES ('31', '29798');
INSERT INTO `tickets` VALUES ('32', '29798');
INSERT INTO `tickets` VALUES ('33', '29798');
INSERT INTO `tickets` VALUES ('34', '29798');
INSERT INTO `tickets` VALUES ('35', '29798');
INSERT INTO `tickets` VALUES ('36', '29798');
INSERT INTO `tickets` VALUES ('37', '29798');
INSERT INTO `tickets` VALUES ('38', '29798');
INSERT INTO `tickets` VALUES ('39', '29798');
INSERT INTO `tickets` VALUES ('40', '29798');
INSERT INTO `tickets` VALUES ('41', '29798');
INSERT INTO `tickets` VALUES ('42', '29798');
INSERT INTO `tickets` VALUES ('43', '29798');
INSERT INTO `tickets` VALUES ('44', '29798');
INSERT INTO `tickets` VALUES ('45', '29798');
INSERT INTO `tickets` VALUES ('46', '33543');
INSERT INTO `tickets` VALUES ('47', '33543');
INSERT INTO `tickets` VALUES ('48', '33543');
INSERT INTO `tickets` VALUES ('49', '33543');
INSERT INTO `tickets` VALUES ('50', '33543');
INSERT INTO `tickets` VALUES ('51', '33543');
INSERT INTO `tickets` VALUES ('52', '33543');
INSERT INTO `tickets` VALUES ('53', '33543');
INSERT INTO `tickets` VALUES ('54', '33543');
INSERT INTO `tickets` VALUES ('55', '33543');
INSERT INTO `tickets` VALUES ('56', '33543');
INSERT INTO `tickets` VALUES ('57', '33543');
INSERT INTO `tickets` VALUES ('58', '33543');
INSERT INTO `tickets` VALUES ('59', '33543');
INSERT INTO `tickets` VALUES ('60', '33543');
INSERT INTO `tickets` VALUES ('61', '39281');
INSERT INTO `tickets` VALUES ('62', '39281');
INSERT INTO `tickets` VALUES ('63', '39281');
INSERT INTO `tickets` VALUES ('64', '39281');
INSERT INTO `tickets` VALUES ('65', '39281');
INSERT INTO `tickets` VALUES ('66', '39281');
INSERT INTO `tickets` VALUES ('67', '39281');
INSERT INTO `tickets` VALUES ('68', '39281');
INSERT INTO `tickets` VALUES ('69', '39281');
INSERT INTO `tickets` VALUES ('70', '39281');
INSERT INTO `tickets` VALUES ('71', '39281');
INSERT INTO `tickets` VALUES ('72', '39281');
INSERT INTO `tickets` VALUES ('73', '39281');
INSERT INTO `tickets` VALUES ('74', '39281');
INSERT INTO `tickets` VALUES ('75', '39281');
INSERT INTO `tickets` VALUES ('76', '41035');
INSERT INTO `tickets` VALUES ('77', '41035');
INSERT INTO `tickets` VALUES ('78', '41035');
INSERT INTO `tickets` VALUES ('79', '41035');
INSERT INTO `tickets` VALUES ('80', '41035');
INSERT INTO `tickets` VALUES ('81', '41035');
INSERT INTO `tickets` VALUES ('82', '41035');
INSERT INTO `tickets` VALUES ('83', '41035');
INSERT INTO `tickets` VALUES ('84', '41035');
INSERT INTO `tickets` VALUES ('85', '41035');
INSERT INTO `tickets` VALUES ('86', '41035');
INSERT INTO `tickets` VALUES ('87', '41035');
INSERT INTO `tickets` VALUES ('88', '41035');
INSERT INTO `tickets` VALUES ('89', '41035');
INSERT INTO `tickets` VALUES ('90', '41035');
INSERT INTO `tickets` VALUES ('91', '39057');
INSERT INTO `tickets` VALUES ('92', '39057');
INSERT INTO `tickets` VALUES ('93', '39057');
INSERT INTO `tickets` VALUES ('94', '39057');
INSERT INTO `tickets` VALUES ('95', '39057');
INSERT INTO `tickets` VALUES ('96', '39057');
INSERT INTO `tickets` VALUES ('97', '39057');
INSERT INTO `tickets` VALUES ('98', '39057');
INSERT INTO `tickets` VALUES ('99', '39057');
INSERT INTO `tickets` VALUES ('100', '39057');
INSERT INTO `tickets` VALUES ('101', '39057');
INSERT INTO `tickets` VALUES ('102', '39057');
INSERT INTO `tickets` VALUES ('103', '39057');
INSERT INTO `tickets` VALUES ('104', '39057');
INSERT INTO `tickets` VALUES ('105', '39057');
INSERT INTO `tickets` VALUES ('106', '36670');
INSERT INTO `tickets` VALUES ('107', '36670');
INSERT INTO `tickets` VALUES ('108', '36670');
INSERT INTO `tickets` VALUES ('109', '36670');
INSERT INTO `tickets` VALUES ('110', '36670');
INSERT INTO `tickets` VALUES ('111', '36670');
INSERT INTO `tickets` VALUES ('112', '36670');
INSERT INTO `tickets` VALUES ('113', '36670');
INSERT INTO `tickets` VALUES ('114', '36670');
INSERT INTO `tickets` VALUES ('115', '36670');
INSERT INTO `tickets` VALUES ('116', '36670');
INSERT INTO `tickets` VALUES ('117', '36670');
INSERT INTO `tickets` VALUES ('118', '36670');
INSERT INTO `tickets` VALUES ('119', '36670');
INSERT INTO `tickets` VALUES ('120', '36670');
INSERT INTO `tickets` VALUES ('121', '28174');
INSERT INTO `tickets` VALUES ('122', '28174');
INSERT INTO `tickets` VALUES ('123', '28174');
INSERT INTO `tickets` VALUES ('124', '28174');
INSERT INTO `tickets` VALUES ('125', '28174');
INSERT INTO `tickets` VALUES ('126', '28174');
INSERT INTO `tickets` VALUES ('127', '28174');
INSERT INTO `tickets` VALUES ('128', '28174');
INSERT INTO `tickets` VALUES ('129', '28174');
INSERT INTO `tickets` VALUES ('130', '28174');
INSERT INTO `tickets` VALUES ('131', '28174');
INSERT INTO `tickets` VALUES ('132', '28174');
INSERT INTO `tickets` VALUES ('133', '28174');
INSERT INTO `tickets` VALUES ('134', '28174');
INSERT INTO `tickets` VALUES ('135', '28174');
INSERT INTO `tickets` VALUES ('136', '41746');
INSERT INTO `tickets` VALUES ('137', '41746');
INSERT INTO `tickets` VALUES ('138', '41746');
INSERT INTO `tickets` VALUES ('139', '41746');
INSERT INTO `tickets` VALUES ('140', '41746');
INSERT INTO `tickets` VALUES ('141', '27646');
INSERT INTO `tickets` VALUES ('142', '27646');
INSERT INTO `tickets` VALUES ('143', '27646');
INSERT INTO `tickets` VALUES ('144', '27646');
INSERT INTO `tickets` VALUES ('145', '27646');
INSERT INTO `tickets` VALUES ('146', '27646');
INSERT INTO `tickets` VALUES ('147', '27646');
INSERT INTO `tickets` VALUES ('148', '27646');
INSERT INTO `tickets` VALUES ('149', '27646');
INSERT INTO `tickets` VALUES ('150', '27646');
INSERT INTO `tickets` VALUES ('151', '27646');
INSERT INTO `tickets` VALUES ('152', '27646');
INSERT INTO `tickets` VALUES ('153', '27646');
INSERT INTO `tickets` VALUES ('154', '27646');
INSERT INTO `tickets` VALUES ('155', '27646');
INSERT INTO `tickets` VALUES ('156', '34496');
INSERT INTO `tickets` VALUES ('157', '34496');
INSERT INTO `tickets` VALUES ('158', '34496');
INSERT INTO `tickets` VALUES ('159', '34496');
INSERT INTO `tickets` VALUES ('160', '34496');
INSERT INTO `tickets` VALUES ('161', '34496');
INSERT INTO `tickets` VALUES ('162', '34496');
INSERT INTO `tickets` VALUES ('163', '34496');
INSERT INTO `tickets` VALUES ('164', '34496');
INSERT INTO `tickets` VALUES ('165', '34496');
INSERT INTO `tickets` VALUES ('166', '34496');
INSERT INTO `tickets` VALUES ('167', '34496');
INSERT INTO `tickets` VALUES ('168', '34496');
INSERT INTO `tickets` VALUES ('169', '34496');
INSERT INTO `tickets` VALUES ('170', '34496');
INSERT INTO `tickets` VALUES ('171', '8310');
INSERT INTO `tickets` VALUES ('172', '8310');
INSERT INTO `tickets` VALUES ('173', '8310');
INSERT INTO `tickets` VALUES ('174', '8310');
INSERT INTO `tickets` VALUES ('175', '8310');
INSERT INTO `tickets` VALUES ('176', '8310');
INSERT INTO `tickets` VALUES ('177', '8310');
INSERT INTO `tickets` VALUES ('178', '8310');
INSERT INTO `tickets` VALUES ('179', '8310');
INSERT INTO `tickets` VALUES ('180', '8310');
INSERT INTO `tickets` VALUES ('181', '8310');
INSERT INTO `tickets` VALUES ('182', '8310');
INSERT INTO `tickets` VALUES ('183', '8310');
INSERT INTO `tickets` VALUES ('184', '8310');
INSERT INTO `tickets` VALUES ('185', '8310');
INSERT INTO `tickets` VALUES ('186', '28495');
INSERT INTO `tickets` VALUES ('187', '28495');
INSERT INTO `tickets` VALUES ('188', '28495');
INSERT INTO `tickets` VALUES ('189', '28495');
INSERT INTO `tickets` VALUES ('190', '28495');
INSERT INTO `tickets` VALUES ('191', '28495');
INSERT INTO `tickets` VALUES ('192', '28495');
INSERT INTO `tickets` VALUES ('193', '28495');
INSERT INTO `tickets` VALUES ('194', '28495');
INSERT INTO `tickets` VALUES ('195', '28495');
INSERT INTO `tickets` VALUES ('196', '28495');
INSERT INTO `tickets` VALUES ('197', '28495');
INSERT INTO `tickets` VALUES ('198', '28495');
INSERT INTO `tickets` VALUES ('199', '28495');
INSERT INTO `tickets` VALUES ('200', '28495');
INSERT INTO `tickets` VALUES ('201', '36018');
INSERT INTO `tickets` VALUES ('202', '36018');
INSERT INTO `tickets` VALUES ('203', '36018');
INSERT INTO `tickets` VALUES ('204', '36018');
INSERT INTO `tickets` VALUES ('205', '36018');
INSERT INTO `tickets` VALUES ('206', '36018');
INSERT INTO `tickets` VALUES ('207', '36018');
INSERT INTO `tickets` VALUES ('208', '36018');
INSERT INTO `tickets` VALUES ('209', '36018');
INSERT INTO `tickets` VALUES ('210', '36018');
INSERT INTO `tickets` VALUES ('211', '36018');
INSERT INTO `tickets` VALUES ('212', '36018');
INSERT INTO `tickets` VALUES ('213', '36018');
INSERT INTO `tickets` VALUES ('214', '36018');
INSERT INTO `tickets` VALUES ('215', '36018');
INSERT INTO `tickets` VALUES ('216', '28357');
INSERT INTO `tickets` VALUES ('217', '28357');
INSERT INTO `tickets` VALUES ('218', '28357');
INSERT INTO `tickets` VALUES ('219', '28357');
INSERT INTO `tickets` VALUES ('220', '28357');
INSERT INTO `tickets` VALUES ('221', '28357');
INSERT INTO `tickets` VALUES ('222', '28357');
INSERT INTO `tickets` VALUES ('223', '28357');
INSERT INTO `tickets` VALUES ('224', '28357');
INSERT INTO `tickets` VALUES ('225', '28357');
INSERT INTO `tickets` VALUES ('226', '28357');
INSERT INTO `tickets` VALUES ('227', '28357');
INSERT INTO `tickets` VALUES ('228', '28357');
INSERT INTO `tickets` VALUES ('229', '28357');
INSERT INTO `tickets` VALUES ('230', '28357');
INSERT INTO `tickets` VALUES ('231', '38063');
INSERT INTO `tickets` VALUES ('232', '38063');
INSERT INTO `tickets` VALUES ('233', '38063');
INSERT INTO `tickets` VALUES ('234', '38063');
INSERT INTO `tickets` VALUES ('235', '38063');
INSERT INTO `tickets` VALUES ('236', '38063');
INSERT INTO `tickets` VALUES ('237', '38063');
INSERT INTO `tickets` VALUES ('238', '38063');
INSERT INTO `tickets` VALUES ('239', '38063');
INSERT INTO `tickets` VALUES ('240', '38063');
INSERT INTO `tickets` VALUES ('241', '38063');
INSERT INTO `tickets` VALUES ('242', '38063');
INSERT INTO `tickets` VALUES ('243', '38063');
INSERT INTO `tickets` VALUES ('244', '38063');
INSERT INTO `tickets` VALUES ('245', '38063');
INSERT INTO `tickets` VALUES ('246', '17961');
INSERT INTO `tickets` VALUES ('247', '17961');
INSERT INTO `tickets` VALUES ('248', '17961');
INSERT INTO `tickets` VALUES ('249', '17961');
INSERT INTO `tickets` VALUES ('250', '17961');
INSERT INTO `tickets` VALUES ('251', '18464');
INSERT INTO `tickets` VALUES ('252', '18464');
INSERT INTO `tickets` VALUES ('253', '18464');
INSERT INTO `tickets` VALUES ('254', '18464');
INSERT INTO `tickets` VALUES ('255', '18464');
INSERT INTO `tickets` VALUES ('256', '18464');
INSERT INTO `tickets` VALUES ('257', '18464');
INSERT INTO `tickets` VALUES ('258', '18464');
INSERT INTO `tickets` VALUES ('259', '18464');
INSERT INTO `tickets` VALUES ('260', '18464');
INSERT INTO `tickets` VALUES ('261', '18464');
INSERT INTO `tickets` VALUES ('262', '18464');
INSERT INTO `tickets` VALUES ('263', '18464');
INSERT INTO `tickets` VALUES ('264', '18464');
INSERT INTO `tickets` VALUES ('265', '18464');

-- ----------------------------
-- Table structure for `topics`
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(128) NOT NULL,
  `locked` enum('yes','no') NOT NULL DEFAULT 'no',
  `forumid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `firstpost` int(10) unsigned NOT NULL DEFAULT '0',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `sticky` enum('no','yes') NOT NULL DEFAULT 'no',
  `hlcolor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `subject` (`subject`),
  KEY `forumid_lastpost` (`forumid`,`lastpost`),
  KEY `forumid_sticky_lastpost` (`forumid`,`sticky`,`lastpost`)
) ENGINE=MyISAM AUTO_INCREMENT=3412 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topics
-- ----------------------------

-- ----------------------------
-- Table structure for `torrents`
-- ----------------------------
DROP TABLE IF EXISTS `torrents`;
CREATE TABLE `torrents` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `info_hash` binary(20) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `save_as` varchar(255) NOT NULL DEFAULT '',
  `descr` text,
  `small_descr` varchar(255) NOT NULL DEFAULT '',
  `ori_descr` text,
  `category` smallint(5) unsigned NOT NULL DEFAULT '0',
  `source` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `medium` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `codec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `standard` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `processing` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `team` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `audiocodec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` enum('single','multi') NOT NULL DEFAULT 'single',
  `numfiles` smallint(5) unsigned NOT NULL DEFAULT '0',
  `comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `times_completed` mediumint(8) NOT NULL DEFAULT '0',
  `times_uncompleted` mediumint(8) NOT NULL DEFAULT '0',
  `leechers` mediumint(8) NOT NULL DEFAULT '0',
  `seeders` mediumint(8) NOT NULL DEFAULT '0',
  `last_action` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visible` enum('yes','no') NOT NULL DEFAULT 'yes',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `owner` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `nfo` blob,
  `sp_state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `promotion_time_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `promotion_until` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `anonymous` enum('yes','no') NOT NULL DEFAULT 'no',
  `url` int(10) unsigned DEFAULT NULL,
  `pos_state` enum('normal','sticky') NOT NULL DEFAULT 'normal',
  `cache_stamp` int(10) unsigned NOT NULL DEFAULT '0',
  `picktype` enum('hot','classic','recommended','normal') NOT NULL DEFAULT 'normal',
  `picktime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_reseed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `urltype` int(1) unsigned NOT NULL DEFAULT '1',
  `havenoseed` enum('yes','no') NOT NULL DEFAULT 'no',
  `nobuymoney` enum('yes','no') NOT NULL DEFAULT 'yes',
  `quality` enum('pend','no','yes') NOT NULL DEFAULT 'pend',
  `editdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subcount` tinyint(3) NOT NULL DEFAULT '0',
  `rating` decimal(3,1) unsigned NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `need_info_hash` (`info_hash`) USING BTREE,
  KEY `visible_banned_pos_havenoseed_id` (`visible`,`banned`,`pos_state`,`havenoseed`,`id`),
  KEY `visible_pos_havenoseed_id` (`visible`,`pos_state`,`havenoseed`,`id`),
  KEY `audiocodec_visible_banned` (`audiocodec`,`visible`,`banned`),
  KEY `need_owner` (`owner`) USING BTREE,
  KEY `need_visible_banned_pos_id` (`visible`,`banned`,`pos_state`,`id`) USING BTREE,
  KEY `need_visible_pos_id` (`visible`,`pos_state`,`id`) USING BTREE,
  KEY `need_category_visible_banned` (`category`,`visible`,`banned`) USING BTREE,
  KEY `spstate_visible_banned` (`sp_state`,`visible`,`banned`) USING BTREE,
  KEY `picktype_visible_banned` (`picktype`,`visible`,`banned`),
  KEY `visible_nobuymoney_pos_haveseed_id` (`visible`,`nobuymoney`,`pos_state`,`havenoseed`,`id`) USING BTREE,
  KEY `visible_banned_nobuymoney_pos_haveseed_id` (`visible`,`banned`,`nobuymoney`,`pos_state`,`havenoseed`,`id`) USING BTREE,
  KEY `editdate` (`editdate`),
  KEY `size` (`size`),
  KEY `promotion_time_type` (`promotion_time_type`),
  KEY `added_sp_state_promotion_time_type` (`added`,`sp_state`,`promotion_time_type`),
  KEY `nobuymoney` (`nobuymoney`),
  KEY `url_urltype` (`url`,`urltype`),
  KEY `medium` (`medium`),
  KEY `codec` (`codec`),
  KEY `standard` (`standard`),
  KEY `processing` (`processing`),
  KEY `team` (`team`),
  KEY `rating` (`rating`),
  FULLTEXT KEY `need_name` (`name`),
  FULLTEXT KEY `small_descr` (`small_descr`)
) ENGINE=MyISAM AUTO_INCREMENT=46617 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of torrents
-- ----------------------------

-- ----------------------------
-- Table structure for `torrents_state`
-- ----------------------------
DROP TABLE IF EXISTS `torrents_state`;
CREATE TABLE `torrents_state` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `secondtype` int(10) NOT NULL DEFAULT '1',
  `global_sp_state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `secondtype` (`secondtype`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of torrents_state
-- ----------------------------
INSERT INTO `torrents_state` VALUES ('3', '64', '1');
INSERT INTO `torrents_state` VALUES ('4', '67', '1');
INSERT INTO `torrents_state` VALUES ('5', '63', '1');
INSERT INTO `torrents_state` VALUES ('6', '66', '1');
INSERT INTO `torrents_state` VALUES ('7', '62', '1');
INSERT INTO `torrents_state` VALUES ('8', '19', '1');
INSERT INTO `torrents_state` VALUES ('9', '20', '1');
INSERT INTO `torrents_state` VALUES ('10', '21', '1');
INSERT INTO `torrents_state` VALUES ('11', '22', '1');
INSERT INTO `torrents_state` VALUES ('12', '23', '1');
INSERT INTO `torrents_state` VALUES ('13', '34', '2');
INSERT INTO `torrents_state` VALUES ('14', '33', '2');
INSERT INTO `torrents_state` VALUES ('15', '35', '2');
INSERT INTO `torrents_state` VALUES ('16', '36', '2');
INSERT INTO `torrents_state` VALUES ('17', '37', '2');
INSERT INTO `torrents_state` VALUES ('18', '12', '1');
INSERT INTO `torrents_state` VALUES ('19', '13', '1');
INSERT INTO `torrents_state` VALUES ('20', '14', '1');
INSERT INTO `torrents_state` VALUES ('21', '15', '1');
INSERT INTO `torrents_state` VALUES ('22', '16', '1');
INSERT INTO `torrents_state` VALUES ('23', '17', '1');
INSERT INTO `torrents_state` VALUES ('24', '18', '1');
INSERT INTO `torrents_state` VALUES ('25', '25', '1');
INSERT INTO `torrents_state` VALUES ('26', '26', '1');
INSERT INTO `torrents_state` VALUES ('27', '27', '1');
INSERT INTO `torrents_state` VALUES ('28', '28', '1');
INSERT INTO `torrents_state` VALUES ('29', '29', '1');
INSERT INTO `torrents_state` VALUES ('30', '48', '1');
INSERT INTO `torrents_state` VALUES ('31', '49', '1');
INSERT INTO `torrents_state` VALUES ('32', '50', '1');
INSERT INTO `torrents_state` VALUES ('33', '51', '1');
INSERT INTO `torrents_state` VALUES ('34', '52', '1');
INSERT INTO `torrents_state` VALUES ('35', '30', '1');
INSERT INTO `torrents_state` VALUES ('36', '32', '1');
INSERT INTO `torrents_state` VALUES ('37', '31', '1');
INSERT INTO `torrents_state` VALUES ('38', '11', '1');
INSERT INTO `torrents_state` VALUES ('39', '53', '1');
INSERT INTO `torrents_state` VALUES ('40', '55', '1');
INSERT INTO `torrents_state` VALUES ('41', '38', '2');
INSERT INTO `torrents_state` VALUES ('42', '39', '2');
INSERT INTO `torrents_state` VALUES ('43', '40', '2');
INSERT INTO `torrents_state` VALUES ('44', '41', '2');
INSERT INTO `torrents_state` VALUES ('45', '42', '2');
INSERT INTO `torrents_state` VALUES ('46', '43', '2');
INSERT INTO `torrents_state` VALUES ('47', '68', '2');
INSERT INTO `torrents_state` VALUES ('48', '44', '2');
INSERT INTO `torrents_state` VALUES ('49', '45', '2');
INSERT INTO `torrents_state` VALUES ('50', '47', '2');
INSERT INTO `torrents_state` VALUES ('51', '54', '4');
INSERT INTO `torrents_state` VALUES ('52', '46', '2');
INSERT INTO `torrents_state` VALUES ('53', '56', '1');
INSERT INTO `torrents_state` VALUES ('54', '65', '1');
INSERT INTO `torrents_state` VALUES ('55', '57', '1');
INSERT INTO `torrents_state` VALUES ('56', '58', '1');
INSERT INTO `torrents_state` VALUES ('57', '60', '1');
INSERT INTO `torrents_state` VALUES ('58', '59', '1');
INSERT INTO `torrents_state` VALUES ('59', '61', '1');
INSERT INTO `torrents_state` VALUES ('61', '9999', '2');
INSERT INTO `torrents_state` VALUES ('62', '70', '1');
INSERT INTO `torrents_state` VALUES ('63', '71', '1');
INSERT INTO `torrents_state` VALUES ('64', '72', '1');
INSERT INTO `torrents_state` VALUES ('65', '73', '1');
INSERT INTO `torrents_state` VALUES ('66', '74', '1');
INSERT INTO `torrents_state` VALUES ('67', '75', '1');
INSERT INTO `torrents_state` VALUES ('68', '76', '1');

-- ----------------------------
-- Table structure for `uploadspeed`
-- ----------------------------
DROP TABLE IF EXISTS `uploadspeed`;
CREATE TABLE `uploadspeed` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uploadspeed
-- ----------------------------
INSERT INTO `uploadspeed` VALUES ('1', '64kbps');
INSERT INTO `uploadspeed` VALUES ('2', '128kbps');
INSERT INTO `uploadspeed` VALUES ('3', '256kbps');
INSERT INTO `uploadspeed` VALUES ('4', '512kbps');
INSERT INTO `uploadspeed` VALUES ('5', '768kbps');
INSERT INTO `uploadspeed` VALUES ('6', '1Mbps');
INSERT INTO `uploadspeed` VALUES ('7', '1.5Mbps');
INSERT INTO `uploadspeed` VALUES ('8', '2Mbps');
INSERT INTO `uploadspeed` VALUES ('9', '3Mbps');
INSERT INTO `uploadspeed` VALUES ('10', '4Mbps');
INSERT INTO `uploadspeed` VALUES ('11', '5Mbps');
INSERT INTO `uploadspeed` VALUES ('12', '6Mbps');
INSERT INTO `uploadspeed` VALUES ('13', '7Mbps');
INSERT INTO `uploadspeed` VALUES ('14', '8Mbps');
INSERT INTO `uploadspeed` VALUES ('15', '9Mbps');
INSERT INTO `uploadspeed` VALUES ('16', '10Mbps');
INSERT INTO `uploadspeed` VALUES ('17', '48Mbps');
INSERT INTO `uploadspeed` VALUES ('18', '100Mbit');

-- ----------------------------
-- Table structure for `usercss`
-- ----------------------------
DROP TABLE IF EXISTS `usercss`;
CREATE TABLE `usercss` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `css` text NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=688 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercss
-- ----------------------------

-- ----------------------------
-- Table structure for `useriptype`
-- ----------------------------
DROP TABLE IF EXISTS `useriptype`;
CREATE TABLE `useriptype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `torrent` int(10) unsigned NOT NULL DEFAULT '0',
  `ipv4` int(10) unsigned NOT NULL DEFAULT '0',
  `ipv6` int(10) unsigned NOT NULL DEFAULT '0',
  `reuseriptype` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`,`torrent`),
  KEY `ipv4` (`ipv4`) USING BTREE,
  KEY `ipv6` (`ipv6`) USING BTREE
) ENGINE=MEMORY DEFAULT CHARSET=utf8 MAX_ROWS=4294967295;

-- ----------------------------
-- Records of useriptype
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL DEFAULT '',
  `passhash` varchar(32) NOT NULL DEFAULT '',
  `secret` varbinary(20) NOT NULL,
  `email` varchar(80) NOT NULL DEFAULT '',
  `status` enum('pending','confirmed') NOT NULL DEFAULT 'pending',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_access` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_home` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_offer` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `forum_access` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_staffmsg` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_pm` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_comment` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_post` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_browse` int(10) unsigned NOT NULL DEFAULT '0',
  `last_music` int(10) unsigned NOT NULL DEFAULT '0',
  `last_catchup` int(10) unsigned NOT NULL DEFAULT '0',
  `editsecret` varbinary(20) NOT NULL,
  `privacy` enum('strong','normal','low') NOT NULL DEFAULT 'normal',
  `stylesheet` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `caticon` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fontsize` enum('small','medium','large') NOT NULL DEFAULT 'medium',
  `info` text,
  `acceptpms` enum('yes','friends','no') NOT NULL DEFAULT 'yes',
  `commentpm` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `max_class_once` tinyint(3) NOT NULL DEFAULT '1',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `uploaded` bigint(20) NOT NULL DEFAULT '0',
  `downloaded` bigint(20) NOT NULL DEFAULT '0',
  `seedtime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `leechtime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '107',
  `notifs` varchar(500) DEFAULT NULL,
  `modcomment` text,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `avatars` enum('yes','no') NOT NULL DEFAULT 'yes',
  `donor` enum('yes','no') NOT NULL DEFAULT 'no',
  `donated` decimal(8,2) NOT NULL DEFAULT '0.00',
  `donated_cny` decimal(8,2) NOT NULL DEFAULT '0.00',
  `donoruntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `warned` enum('yes','no') NOT NULL DEFAULT 'no',
  `warneduntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `noad` enum('yes','no') NOT NULL DEFAULT 'no',
  `noaduntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `torrentsperpage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `topicsperpage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postsperpage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `clicktopic` enum('firstpage','lastpage') NOT NULL DEFAULT 'firstpage',
  `deletepms` enum('yes','no') NOT NULL DEFAULT 'yes',
  `savepms` enum('yes','no') NOT NULL DEFAULT 'yes',
  `showhot` enum('yes','no') NOT NULL DEFAULT 'yes',
  `showclassic` enum('yes','no') NOT NULL DEFAULT 'yes',
  `support` enum('yes','no') NOT NULL DEFAULT 'no',
  `picker` enum('yes','no') NOT NULL DEFAULT 'no',
  `stafffor` varchar(255) NOT NULL,
  `supportfor` varchar(255) NOT NULL,
  `pickfor` varchar(255) NOT NULL,
  `supportlang` varchar(50) NOT NULL,
  `passkey` varchar(32) NOT NULL DEFAULT '',
  `promotion_link` varchar(32) DEFAULT NULL,
  `uploadpos` enum('yes','no') NOT NULL DEFAULT 'yes',
  `forumpost` enum('yes','no') NOT NULL DEFAULT 'yes',
  `downloadpos` enum('yes','no') NOT NULL DEFAULT 'yes',
  `clientselect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `signatures` enum('yes','no') NOT NULL DEFAULT 'yes',
  `signature` varchar(800) NOT NULL DEFAULT '',
  `lang` smallint(5) unsigned NOT NULL DEFAULT '6',
  `cheat` smallint(6) NOT NULL DEFAULT '0',
  `download` int(10) unsigned NOT NULL DEFAULT '0',
  `upload` int(10) unsigned NOT NULL DEFAULT '0',
  `isp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `invites` smallint(5) NOT NULL DEFAULT '0',
  `invited_by` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gender` enum('Male','Female','N/A') NOT NULL DEFAULT 'N/A',
  `vip_added` enum('yes','no') NOT NULL DEFAULT 'no',
  `vip_until` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seedbonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charity` decimal(10,1) NOT NULL DEFAULT '0.0',
  `bonuscomment` text,
  `parked` enum('yes','no') NOT NULL DEFAULT 'no',
  `leechwarn` enum('yes','no') NOT NULL DEFAULT 'no',
  `leechwarnuntil` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastwarned` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeswarned` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `warnedby` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sbnum` smallint(5) unsigned NOT NULL DEFAULT '20',
  `sbrefresh` smallint(5) unsigned NOT NULL DEFAULT '30',
  `hidehb` enum('yes','no') DEFAULT 'no',
  `showimdb` enum('yes','no') DEFAULT 'yes',
  `showdescription` enum('yes','no') DEFAULT 'yes',
  `showcomment` enum('yes','no') DEFAULT 'yes',
  `showclienterror` enum('yes','no') NOT NULL DEFAULT 'no',
  `showdlnotice` tinyint(1) NOT NULL DEFAULT '1',
  `tooltip` enum('minorimdb','medianimdb','off') NOT NULL DEFAULT 'off',
  `shownfo` enum('yes','no') DEFAULT 'yes',
  `timetype` enum('timeadded','timealive') DEFAULT 'timealive',
  `appendsticky` enum('yes','no') DEFAULT 'yes',
  `appendnew` enum('yes','no') DEFAULT 'yes',
  `appendpromotion` enum('highlight','word','icon','off') DEFAULT 'icon',
  `appendpicked` enum('yes','no') DEFAULT 'yes',
  `dlicon` enum('yes','no') DEFAULT 'yes',
  `bmicon` enum('yes','no') DEFAULT 'yes',
  `showsmalldescr` enum('yes','no') NOT NULL DEFAULT 'yes',
  `showcomnum` enum('yes','no') DEFAULT 'yes',
  `showlastcom` enum('yes','no') DEFAULT 'no',
  `showlastpost` enum('yes','no') NOT NULL DEFAULT 'no',
  `pmnum` tinyint(3) unsigned NOT NULL DEFAULT '10',
  `school` varchar(16) NOT NULL DEFAULT '0',
  `showfb` enum('yes','no') NOT NULL DEFAULT 'yes',
  `page` varchar(40) DEFAULT NULL,
  `MODEMAX` int(10) NOT NULL DEFAULT '0' COMMENT '今天的最高网络协议4.5.6',
  `addbonus` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '每日奖励',
  `gotgift` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '节日礼物',
  `bjwins` int(10) NOT NULL DEFAULT '0',
  `bjlosses` int(10) NOT NULL DEFAULT '0',
  `namecolour` varchar(8) NOT NULL DEFAULT '',
  `qq` int(10) NOT NULL DEFAULT '0',
  `seedbonusper` decimal(10,2) NOT NULL DEFAULT '0.00',
  `logouttime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安全_登出全部',
  `addbonusday` int(10) unsigned NOT NULL DEFAULT '0',
  `deancheck` varchar(20) NOT NULL DEFAULT '',
  `hrwarned` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `status_added` (`status`,`added`),
  KEY `ip` (`ip`),
  KEY `uploaded` (`uploaded`),
  KEY `downloaded` (`downloaded`),
  KEY `country` (`country`),
  KEY `last_access` (`last_access`),
  KEY `enabled` (`enabled`),
  KEY `warned` (`warned`),
  KEY `cheat` (`cheat`),
  KEY `class` (`class`),
  KEY `passkey` (`passkey`(8)),
  KEY `gender` (`gender`) USING BTREE,
  KEY `mode_inschool` (`MODEMAX`) USING BTREE,
  KEY `donor` (`donor`) USING BTREE,
  KEY `invited_by_add` (`invited_by`,`added`) USING BTREE,
  KEY `promotion` (`promotion_link`),
  KEY `deancheck` (`deancheck`),
  KEY `email` (`email`),
  KEY `hrwarned` (`hrwarned`),
  KEY `forum_access` (`forum_access`) USING BTREE,
  KEY `added` (`added`),
  KEY `noad` (`noad`),
  KEY `clientselect` (`clientselect`),
  KEY `seedbonusper` (`seedbonusper`),
  KEY `noaduntil` (`noaduntil`),
  KEY `leechwarn` (`leechwarn`)
) ENGINE=MyISAM AUTO_INCREMENT=45318 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
