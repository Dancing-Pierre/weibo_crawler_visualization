/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50743
 Source Host           : localhost:3306
 Source Schema         : weibo

 Target Server Type    : MySQL
 Target Server Version : 50743
 File Encoding         : 65001

 Date: 22/12/2023 12:55:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hot_search
-- ----------------------------
DROP TABLE IF EXISTS `hot_search`;
CREATE TABLE `hot_search`  (
  `date` date NOT NULL COMMENT '采集日期',
  `time` time(0) NOT NULL COMMENT '采集时间',
  `hot_index` int(11) NOT NULL COMMENT '热搜排名',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '词条',
  `raw_hot` int(11) NOT NULL COMMENT '热度',
  `label_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '链接',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1351 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hot_search
-- ----------------------------
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 1, '圣诞星', 1248263, '新', 'https://s.weibo.com/weibo?q=圣诞星', 1);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 2, '跳绳 减肥', 867470, '沸', 'https://s.weibo.com/weibo?q=跳绳 减肥', 2);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 3, '推进乡村全面振兴', 65368, '新', 'https://s.weibo.com/weibo?q=%23推进乡村全面振兴%23', 3);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 4, '张婧仪 财阀千金', 1513849, '新', 'https://s.weibo.com/weibo?q=张婧仪 财阀千金', 4);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 5, '玉玉', 1851838, '新', 'https://s.weibo.com/weibo?q=玉玉', 5);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 6, '有人从中国乘飞机往韩国背大米', 787209, '热', 'https://s.weibo.com/weibo?q=%23有人从中国乘飞机往韩国背大米%23', 6);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 7, '2023内娱TOP1', 706848, '热', 'https://s.weibo.com/weibo?q=%232023内娱TOP1%23', 7);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 8, '2岁男童误喝22倍退烧药差点肾衰竭', 691329, '暖', 'https://s.weibo.com/weibo?q=%232岁男童误喝22倍退烧药差点肾衰竭%23', 8);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 9, '一92年男子已当老丈人', 583506, '新', 'https://s.weibo.com/weibo?q=%23一92年男子已当老丈人%23', 9);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 10, '倪妮 星河玫瑰', 575206, '新', 'https://s.weibo.com/weibo?q=倪妮 星河玫瑰', 10);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 11, '艾福杰尼结婚', 1020294, '新', 'https://s.weibo.com/weibo?q=%23艾福杰尼结婚%23', 11);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 12, '周杰伦昆凌海边合照', 813003, '热', 'https://s.weibo.com/weibo?q=%23周杰伦昆凌海边合照%23', 12);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 13, '男子被判奸杀姐妹入狱21年获无罪', 648350, '', 'https://s.weibo.com/weibo?q=%23男子被判奸杀姐妹入狱21年获无罪%23', 13);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 14, '赵今麦轻熟妆', 509663, '新', 'https://s.weibo.com/weibo?q=%23赵今麦轻熟妆%23', 14);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 15, '戒毒男子得知女儿离世后回家告别', 406153, '暖', 'https://s.weibo.com/weibo?q=%23戒毒男子得知女儿离世后回家告别%23', 15);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 16, '25岁姑娘评上人才获100万补贴在杭独立买房', 365930, '暖', 'https://s.weibo.com/weibo?q=%2325岁姑娘评上人才获100万补贴在杭独立买房%23', 16);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 17, '魏晨回应流星雨是自己的养老保险', 340086, '新', 'https://s.weibo.com/weibo?q=魏晨回应流星雨是自己的养老保险', 17);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 18, '大二女生卖男士保暖衣月入两万', 339288, '暖', 'https://s.weibo.com/weibo?q=%23大二女生卖男士保暖衣月入两万%23', 18);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 19, '录6天节目给10个人道歉', 320961, '', 'https://s.weibo.com/weibo?q=录6天节目给10个人道歉', 19);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 20, '肖秀荣 24考研注意事项', 312032, '新', 'https://s.weibo.com/weibo?q=肖秀荣 24考研注意事项', 20);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 21, '杭州孕妈一颗草莓下肚口吐鲜血', 873161, '新', 'https://s.weibo.com/weibo?q=%23杭州孕妈一颗草莓下肚口吐鲜血%23', 21);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 22, '况盛 马杨', 311483, '', 'https://s.weibo.com/weibo?q=况盛 马杨', 22);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 23, '年底iPhone15价格再度跳水超千元', 440227, '新', 'https://s.weibo.com/weibo?q=%23年底iPhone15价格再度跳水超千元%23', 23);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 24, '肖战 跨年', 271663, '', 'https://s.weibo.com/weibo?q=肖战 跨年', 24);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 25, '大腿前侧凸出非常好减', 394379, '新', 'https://s.weibo.com/weibo?q=大腿前侧凸出非常好减', 25);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 26, '男主播直播喝白酒时死亡', 302085, '', 'https://s.weibo.com/weibo?q=%23男主播直播喝白酒时死亡%23', 26);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 27, '背过的诗有一天会脱口而出', 255240, '暖', 'https://s.weibo.com/weibo?q=%23背过的诗有一天会脱口而出%23', 27);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 28, '王者荣耀 特效', 251299, '新', 'https://s.weibo.com/weibo?q=王者荣耀 特效', 28);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 29, '兰蔻红毯', 220371, '', 'https://s.weibo.com/weibo?q=兰蔻红毯', 29);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 30, '震区小朋友在帐篷外玩丢手绢', 101309, '暖', 'https://s.weibo.com/weibo?q=%23震区小朋友在帐篷外玩丢手绢%23', 30);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 31, '榜样8', 212652, '新', 'https://s.weibo.com/weibo?q=榜样8', 31);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 32, '王鹤棣对接否认与迪丽热巴合作', 208968, '', 'https://s.weibo.com/weibo?q=%23王鹤棣对接否认与迪丽热巴合作%23', 32);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 33, '鸣龙少年', 202516, '新', 'https://s.weibo.com/weibo?q=鸣龙少年', 33);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 34, '刘小怂直播未半 中道崩殂', 201778, '新', 'https://s.weibo.com/weibo?q=刘小怂直播未半 中道崩殂', 34);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 35, '微博年度报告', 195750, '', 'https://s.weibo.com/weibo?q=微博年度报告', 35);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 36, '孙颖莎说回到深圳感觉非常亲切', 188326, '新', 'https://s.weibo.com/weibo?q=%23孙颖莎说回到深圳感觉非常亲切%23', 36);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 37, '减肥动力突然就有了', 183563, '新', 'https://s.weibo.com/weibo?q=减肥动力突然就有了', 37);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 38, '只有朱丹看不出周一围害羞', 167599, '', 'https://s.weibo.com/weibo?q=只有朱丹看不出周一围害羞', 38);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 39, '研究发现每一滴酒都有害', 166901, '', 'https://s.weibo.com/weibo?q=%23研究发现每一滴酒都有害%23', 39);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 40, '安徽牛肉板面 河北特产', 152907, '新', 'https://s.weibo.com/weibo?q=安徽牛肉板面 河北特产', 40);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 41, '新闻女王这句英文怎么翻译', 148584, '新', 'https://s.weibo.com/weibo?q=新闻女王这句英文怎么翻译', 41);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 42, '王俊凯 都说了少关注我年轻的时候', 147270, '', 'https://s.weibo.com/weibo?q=王俊凯 都说了少关注我年轻的时候', 42);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 43, '学生衣服里塞满纸巾真相让人感动', 141056, '暖', 'https://s.weibo.com/weibo?q=%23学生衣服里塞满纸巾真相让人感动%23', 43);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 44, '魏晨说在三大队被宠爱着', 135210, '', 'https://s.weibo.com/weibo?q=%23魏晨说在三大队被宠爱着%23', 44);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 45, '赵昭仪肯定王安宇身材', 129412, '', 'https://s.weibo.com/weibo?q=赵昭仪肯定王安宇身材', 45);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 46, '鹭卓换头像', 120893, '', 'https://s.weibo.com/weibo?q=鹭卓换头像', 46);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 47, '这是食堂还是天堂', 111738, '', 'https://s.weibo.com/weibo?q=这是食堂还是天堂', 47);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 48, '降息', 111531, '', 'https://s.weibo.com/weibo?q=降息', 48);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 49, '三大队', 109522, '新', 'https://s.weibo.com/weibo?q=三大队', 49);
INSERT INTO `hot_search` VALUES ('2023-12-21', '20:59:52', 50, '狗狗走失流泪绝食网友合力找主人', 98430, '暖', 'https://s.weibo.com/weibo?q=%23狗狗走失流泪绝食网友合力找主人%23', 50);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 1, '圣诞星', 1454388, '新', 'https://s.weibo.com/weibo?q=圣诞星', 51);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 2, '周杰伦新歌上线', 1441298, '新', 'https://s.weibo.com/weibo?q=周杰伦新歌上线', 52);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 3, '推进乡村全面振兴', 63115, '新', 'https://s.weibo.com/weibo?q=%23推进乡村全面振兴%23', 53);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 4, '张婧仪 财阀千金', 1652133, '新', 'https://s.weibo.com/weibo?q=张婧仪 财阀千金', 54);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 5, '倪妮 星河玫瑰', 677289, '新', 'https://s.weibo.com/weibo?q=倪妮 星河玫瑰', 55);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 6, '玉玉', 1787805, '新', 'https://s.weibo.com/weibo?q=玉玉', 56);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 7, '2023内娱TOP1', 669151, '热', 'https://s.weibo.com/weibo?q=%232023内娱TOP1%23', 57);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 8, '2岁男童误喝22倍退烧药差点肾衰竭', 662680, '暖', 'https://s.weibo.com/weibo?q=%232岁男童误喝22倍退烧药差点肾衰竭%23', 58);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 9, '跳绳 减肥', 636693, '沸', 'https://s.weibo.com/weibo?q=跳绳 减肥', 59);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 10, '有人从中国乘飞机往韩国背大米', 591881, '', 'https://s.weibo.com/weibo?q=%23有人从中国乘飞机往韩国背大米%23', 60);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 11, '艾福杰尼结婚', 890564, '新', 'https://s.weibo.com/weibo?q=%23艾福杰尼结婚%23', 61);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 12, '周杰伦昆凌海边合照', 827715, '热', 'https://s.weibo.com/weibo?q=%23周杰伦昆凌海边合照%23', 62);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 13, '25岁姑娘评上人才获100万补贴在杭独立买房', 590479, '暖', 'https://s.weibo.com/weibo?q=%2325岁姑娘评上人才获100万补贴在杭独立买房%23', 63);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 14, '魏晨回应流星雨是自己的养老保险', 490322, '新', 'https://s.weibo.com/weibo?q=魏晨回应流星雨是自己的养老保险', 64);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 15, '男子被判奸杀姐妹入狱21年获无罪', 488214, '', 'https://s.weibo.com/weibo?q=%23男子被判奸杀姐妹入狱21年获无罪%23', 65);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 16, '赵今麦轻熟妆', 485789, '新', 'https://s.weibo.com/weibo?q=%23赵今麦轻熟妆%23', 66);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 17, '刘小怂直播未半 中道崩殂', 468767, '新', 'https://s.weibo.com/weibo?q=刘小怂直播未半 中道崩殂', 67);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 18, '大二女生卖男士保暖衣月入两万', 464487, '暖', 'https://s.weibo.com/weibo?q=%23大二女生卖男士保暖衣月入两万%23', 68);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 19, '一92年男子已当老丈人', 449925, '', 'https://s.weibo.com/weibo?q=%23一92年男子已当老丈人%23', 69);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 20, '年底iPhone15价格再度跳水超千元', 394221, '新', 'https://s.weibo.com/weibo?q=%23年底iPhone15价格再度跳水超千元%23', 70);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 21, '杭州孕妈一颗草莓下肚口吐鲜血', 998950, '新', 'https://s.weibo.com/weibo?q=%23杭州孕妈一颗草莓下肚口吐鲜血%23', 71);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 22, '大腿前侧凸出非常好减', 341074, '新', 'https://s.weibo.com/weibo?q=大腿前侧凸出非常好减', 72);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 23, '戒毒男子得知女儿离世后回家告别', 318108, '暖', 'https://s.weibo.com/weibo?q=%23戒毒男子得知女儿离世后回家告别%23', 73);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 24, '男主播直播喝白酒时死亡', 289525, '', 'https://s.weibo.com/weibo?q=%23男主播直播喝白酒时死亡%23', 74);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 25, '肖战 跨年', 266882, '', 'https://s.weibo.com/weibo?q=肖战 跨年', 75);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 26, '况盛 马杨', 264679, '', 'https://s.weibo.com/weibo?q=况盛 马杨', 76);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 27, '录6天节目给10个人道歉', 257489, '', 'https://s.weibo.com/weibo?q=录6天节目给10个人道歉', 77);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 28, '肖秀荣 24考研注意事项', 252051, '新', 'https://s.weibo.com/weibo?q=肖秀荣 24考研注意事项', 78);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 29, '减肥动力突然就有了', 250182, '新', 'https://s.weibo.com/weibo?q=减肥动力突然就有了', 79);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 30, '摩羯座生日快乐', 235164, '新', 'https://s.weibo.com/weibo?q=摩羯座生日快乐', 80);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 31, '外卖小哥月入上万一个投诉扣300', 229258, '暖', 'https://s.weibo.com/weibo?q=%23外卖小哥月入上万一个投诉扣300%23', 81);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 32, '安徽牛肉板面 河北特产', 217998, '新', 'https://s.weibo.com/weibo?q=安徽牛肉板面 河北特产', 82);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 33, '婚前一定要聊明白的问题', 205620, '新', 'https://s.weibo.com/weibo?q=婚前一定要聊明白的问题', 83);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 34, '兰蔻活动', 201819, '新', 'https://s.weibo.com/weibo?q=兰蔻活动', 84);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 35, '三大队开播就四条人命案', 196476, '新', 'https://s.weibo.com/weibo?q=%23三大队开播就四条人命案%23', 85);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 36, '震区小朋友在帐篷外玩丢手绢', 94958, '暖', 'https://s.weibo.com/weibo?q=%23震区小朋友在帐篷外玩丢手绢%23', 86);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 37, '鸣龙少年', 192384, '新', 'https://s.weibo.com/weibo?q=鸣龙少年', 87);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 38, '背过的诗有一天会脱口而出', 187367, '暖', 'https://s.weibo.com/weibo?q=%23背过的诗有一天会脱口而出%23', 88);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 39, '王鹤棣对接否认与迪丽热巴合作', 179292, '', 'https://s.weibo.com/weibo?q=%23王鹤棣对接否认与迪丽热巴合作%23', 89);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 40, '王者荣耀 特效', 178874, '', 'https://s.weibo.com/weibo?q=王者荣耀 特效', 90);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 41, '微博年度报告', 175000, '', 'https://s.weibo.com/weibo?q=微博年度报告', 91);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 42, '孙颖莎说回到深圳感觉非常亲切', 167843, '新', 'https://s.weibo.com/weibo?q=%23孙颖莎说回到深圳感觉非常亲切%23', 92);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 43, '科技大厂生态造车', 96435, '', 'https://s.weibo.com/weibo?q=%23科技大厂生态造车%23', 93);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 44, '王俊凯 都说了少关注我年轻的时候', 148873, '', 'https://s.weibo.com/weibo?q=王俊凯 都说了少关注我年轻的时候', 94);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 45, '兰蔻红毯', 143943, '', 'https://s.weibo.com/weibo?q=兰蔻红毯', 95);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 46, '甘肃地震紧急救灾', 142476, '暖', 'https://s.weibo.com/weibo?q=%23甘肃地震紧急救灾%23', 96);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 47, '只有朱丹看不出周一围害羞', 136966, '', 'https://s.weibo.com/weibo?q=只有朱丹看不出周一围害羞', 97);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 48, '榜样8', 133321, '新', 'https://s.weibo.com/weibo?q=榜样8', 98);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 49, '震区村民说4点起床看到武警还在巡逻', 98325, '暖', 'https://s.weibo.com/weibo?q=%23震区村民说4点起床看到武警还在巡逻%23', 99);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:19:52', 50, '魏晨说在三大队被宠爱着', 122896, '', 'https://s.weibo.com/weibo?q=%23魏晨说在三大队被宠爱着%23', 100);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 1, '周杰伦新歌上线', 2069269, '新', 'https://s.weibo.com/weibo?q=周杰伦新歌上线', 101);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 2, '圣诞星', 995258, '新', 'https://s.weibo.com/weibo?q=圣诞星', 102);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 3, '推进乡村全面振兴', 58742, '新', 'https://s.weibo.com/weibo?q=%23推进乡村全面振兴%23', 103);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 4, '张婧仪 财阀千金', 1655951, '新', 'https://s.weibo.com/weibo?q=张婧仪 财阀千金', 104);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 5, '倪妮 好冷让我缓一下', 702886, '新', 'https://s.weibo.com/weibo?q=倪妮 好冷让我缓一下', 105);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 6, '2岁男童误喝22倍退烧药差点肾衰竭', 634550, '暖', 'https://s.weibo.com/weibo?q=%232岁男童误喝22倍退烧药差点肾衰竭%23', 106);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 7, '2023内娱TOP1', 594111, '热', 'https://s.weibo.com/weibo?q=%232023内娱TOP1%23', 107);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 8, '跳绳 减肥', 574537, '沸', 'https://s.weibo.com/weibo?q=跳绳 减肥', 108);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 9, '大二女生卖男士保暖衣月入两万', 570881, '暖', 'https://s.weibo.com/weibo?q=%23大二女生卖男士保暖衣月入两万%23', 109);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 10, '25岁姑娘评上人才获100万补贴在杭独立买房', 554237, '暖', 'https://s.weibo.com/weibo?q=%2325岁姑娘评上人才获100万补贴在杭独立买房%23', 110);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 11, '艾福杰尼结婚', 638720, '热', 'https://s.weibo.com/weibo?q=%23艾福杰尼结婚%23', 111);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 12, '科技大厂生态造车', 38769, '', 'https://s.weibo.com/weibo?q=%23科技大厂生态造车%23', 112);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 13, '周杰伦昆凌海边合照', 633109, '', 'https://s.weibo.com/weibo?q=%23周杰伦昆凌海边合照%23', 113);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 14, '倪妮 星河玫瑰', 553406, '新', 'https://s.weibo.com/weibo?q=倪妮 星河玫瑰', 114);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 15, '婚前一定要聊明白的问题', 450621, '新', 'https://s.weibo.com/weibo?q=婚前一定要聊明白的问题', 115);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 16, '魏晨回应流星雨是自己的养老保险', 505357, '新', 'https://s.weibo.com/weibo?q=魏晨回应流星雨是自己的养老保险', 116);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 17, '难听', 488363, '新', 'https://s.weibo.com/weibo?q=难听', 117);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 18, '年底iPhone15价格再度跳水超千元', 432197, '', 'https://s.weibo.com/weibo?q=%23年底iPhone15价格再度跳水超千元%23', 118);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 19, '刘小怂直播未半 中道崩殂', 431945, '新', 'https://s.weibo.com/weibo?q=刘小怂直播未半 中道崩殂', 119);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 20, '男子被判奸杀姐妹入狱21年获无罪', 381836, '', 'https://s.weibo.com/weibo?q=%23男子被判奸杀姐妹入狱21年获无罪%23', 120);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 21, '玉玉', 1253879, '热', 'https://s.weibo.com/weibo?q=玉玉', 121);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 22, '赵今麦轻熟妆', 482740, '新', 'https://s.weibo.com/weibo?q=%23赵今麦轻熟妆%23', 122);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 23, '杭州孕妈一颗草莓下肚口吐鲜血', 962333, '新', 'https://s.weibo.com/weibo?q=%23杭州孕妈一颗草莓下肚口吐鲜血%23', 123);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 24, '有人从中国乘飞机往韩国背大米', 304817, '', 'https://s.weibo.com/weibo?q=%23有人从中国乘飞机往韩国背大米%23', 124);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 25, '摩羯座生日快乐', 300900, '新', 'https://s.weibo.com/weibo?q=摩羯座生日快乐', 125);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 26, '男主播直播喝白酒时死亡', 299979, '', 'https://s.weibo.com/weibo?q=%23男主播直播喝白酒时死亡%23', 126);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 27, '外卖小哥月入上万一个投诉扣300', 291232, '新', 'https://s.weibo.com/weibo?q=%23外卖小哥月入上万一个投诉扣300%23', 127);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 28, '一92年男子已当老丈人', 257876, '', 'https://s.weibo.com/weibo?q=%23一92年男子已当老丈人%23', 128);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 29, '减肥动力突然就有了', 254002, '新', 'https://s.weibo.com/weibo?q=减肥动力突然就有了', 129);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 30, '震区村民说4点起床看到武警还在巡逻', 89141, '暖', 'https://s.weibo.com/weibo?q=%23震区村民说4点起床看到武警还在巡逻%23', 130);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 31, '肖战 跨年', 253628, '', 'https://s.weibo.com/weibo?q=肖战 跨年', 131);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 32, '戒毒男子得知女儿离世后回家告别', 252357, '暖', 'https://s.weibo.com/weibo?q=%23戒毒男子得知女儿离世后回家告别%23', 132);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 33, '况盛 马杨', 237952, '', 'https://s.weibo.com/weibo?q=况盛 马杨', 133);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 34, '大腿前侧凸出非常好减', 230983, '', 'https://s.weibo.com/weibo?q=大腿前侧凸出非常好减', 134);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 35, '世间再无阿音了', 224108, '新', 'https://s.weibo.com/weibo?q=世间再无阿音了', 135);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 36, '7小时睡眠或降低死亡率', 221504, '新', 'https://s.weibo.com/weibo?q=%237小时睡眠或降低死亡率%23', 136);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 37, '隐哥 爆炸王', 221069, '新', 'https://s.weibo.com/weibo?q=隐哥 爆炸王', 137);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 38, '三大队开播就四条人命案', 206359, '新', 'https://s.weibo.com/weibo?q=%23三大队开播就四条人命案%23', 138);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 39, '瑜伽裤当秋裤', 206027, '新', 'https://s.weibo.com/weibo?q=瑜伽裤当秋裤', 139);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 40, '肖秀荣 24考研注意事项', 199036, '新', 'https://s.weibo.com/weibo?q=肖秀荣 24考研注意事项', 140);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 41, '考研人同款精神状态', 198519, '新', 'https://s.weibo.com/weibo?q=%23考研人同款精神状态%23', 141);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 42, '流浪小猫带我参观了它的家', 192991, '新', 'https://s.weibo.com/weibo?q=流浪小猫带我参观了它的家', 142);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 43, '安徽牛肉板面 河北特产', 190748, '新', 'https://s.weibo.com/weibo?q=安徽牛肉板面 河北特产', 143);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 44, '录6天节目给10个人道歉', 176566, '', 'https://s.weibo.com/weibo?q=录6天节目给10个人道歉', 144);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 45, '鸣龙少年', 169770, '新', 'https://s.weibo.com/weibo?q=鸣龙少年', 145);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 46, '微博年度报告', 160870, '', 'https://s.weibo.com/weibo?q=微博年度报告', 146);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 47, '王鹤棣对接否认与迪丽热巴合作', 152831, '', 'https://s.weibo.com/weibo?q=%23王鹤棣对接否认与迪丽热巴合作%23', 147);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 48, '王者荣耀 特效', 141753, '', 'https://s.weibo.com/weibo?q=王者荣耀 特效', 148);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 49, '魏晨说在三大队被宠爱着', 130213, '', 'https://s.weibo.com/weibo?q=%23魏晨说在三大队被宠爱着%23', 149);
INSERT INTO `hot_search` VALUES ('2023-12-21', '21:48:19', 50, '冬至前日乾清宫5条金龙依次被照亮', 119218, '暖', 'https://s.weibo.com/weibo?q=%23冬至前日乾清宫5条金龙依次被照亮%23', 150);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 1, '周杰伦新歌上线', 1973642, '新', 'https://s.weibo.com/weibo?q=周杰伦新歌上线', 151);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 2, '圣诞星', 893459, '沸', 'https://s.weibo.com/weibo?q=圣诞星', 152);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 3, '推进乡村全面振兴', 55842, '新', 'https://s.weibo.com/weibo?q=%23推进乡村全面振兴%23', 153);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 4, '张婧仪 财阀千金', 1575223, '热', 'https://s.weibo.com/weibo?q=张婧仪 财阀千金', 154);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 5, '难听', 1342654, '新', 'https://s.weibo.com/weibo?q=难听', 155);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 6, '大二女生卖男士保暖衣月入两万', 770214, '暖', 'https://s.weibo.com/weibo?q=%23大二女生卖男士保暖衣月入两万%23', 156);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 7, '倪妮 好冷让我缓一下', 760657, '新', 'https://s.weibo.com/weibo?q=倪妮 好冷让我缓一下', 157);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 8, '2岁男童误喝22倍退烧药差点肾衰竭', 599803, '暖', 'https://s.weibo.com/weibo?q=%232岁男童误喝22倍退烧药差点肾衰竭%23', 158);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 9, '婚前一定要聊明白的问题', 526485, '新', 'https://s.weibo.com/weibo?q=婚前一定要聊明白的问题', 159);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 10, '25岁姑娘评上人才获100万补贴在杭独立买房', 516482, '暖', 'https://s.weibo.com/weibo?q=%2325岁姑娘评上人才获100万补贴在杭独立买房%23', 160);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 11, '周杰伦昆凌海边合照', 574657, '', 'https://s.weibo.com/weibo?q=%23周杰伦昆凌海边合照%23', 161);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 12, '艾福杰尼结婚', 569211, '热', 'https://s.weibo.com/weibo?q=%23艾福杰尼结婚%23', 162);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 13, '科技大厂生态造车', 20330, '', 'https://s.weibo.com/weibo?q=%23科技大厂生态造车%23', 163);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 14, '2023内娱TOP1', 533737, '热', 'https://s.weibo.com/weibo?q=%232023内娱TOP1%23', 164);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 15, '好多明星去了兰蔻活动', 38266, '', 'https://s.weibo.com/weibo?q=%23好多明星去了兰蔻活动%23', 165);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 16, '魏晨回应流星雨是自己的养老保险', 533625, '新', 'https://s.weibo.com/weibo?q=魏晨回应流星雨是自己的养老保险', 166);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 17, '跳绳 减肥', 440224, '', 'https://s.weibo.com/weibo?q=跳绳 减肥', 167);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 18, '年底iPhone15价格再度跳水超千元', 378904, '', 'https://s.weibo.com/weibo?q=%23年底iPhone15价格再度跳水超千元%23', 168);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 19, '瑜伽裤当秋裤', 361426, '新', 'https://s.weibo.com/weibo?q=瑜伽裤当秋裤', 169);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 20, '刘小怂直播未半 中道崩殂', 361415, '新', 'https://s.weibo.com/weibo?q=刘小怂直播未半 中道崩殂', 170);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 21, '杭州孕妈一颗草莓下肚口吐鲜血', 903843, '新', 'https://s.weibo.com/weibo?q=%23杭州孕妈一颗草莓下肚口吐鲜血%23', 171);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 22, '赵今麦轻熟妆', 487895, '', 'https://s.weibo.com/weibo?q=%23赵今麦轻熟妆%23', 172);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 23, '倪妮 星河玫瑰', 437299, '新', 'https://s.weibo.com/weibo?q=倪妮 星河玫瑰', 173);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 24, '虾 我命由我不由天', 431952, '新', 'https://s.weibo.com/weibo?q=虾 我命由我不由天', 174);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 25, '男子被判奸杀姐妹入狱21年获无罪', 351707, '', 'https://s.weibo.com/weibo?q=%23男子被判奸杀姐妹入狱21年获无罪%23', 175);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 26, '男主播直播喝白酒时死亡', 283484, '', 'https://s.weibo.com/weibo?q=%23男主播直播喝白酒时死亡%23', 176);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 27, '摩羯座生日快乐', 277417, '新', 'https://s.weibo.com/weibo?q=摩羯座生日快乐', 177);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 28, '世间再无阿音了', 270007, '新', 'https://s.weibo.com/weibo?q=世间再无阿音了', 178);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 29, '外卖小哥月入上万一个投诉扣300', 254762, '新', 'https://s.weibo.com/weibo?q=%23外卖小哥月入上万一个投诉扣300%23', 179);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 30, '震区村民说4点起床看到武警还在巡逻', 89935, '暖', 'https://s.weibo.com/weibo?q=%23震区村民说4点起床看到武警还在巡逻%23', 180);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 31, '7小时睡眠或降低死亡率', 261754, '新', 'https://s.weibo.com/weibo?q=%237小时睡眠或降低死亡率%23', 181);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 32, '有人从中国乘飞机往韩国背大米', 244246, '', 'https://s.weibo.com/weibo?q=%23有人从中国乘飞机往韩国背大米%23', 182);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 33, '肖战 跨年', 243972, '', 'https://s.weibo.com/weibo?q=肖战 跨年', 183);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 34, '戒毒男子得知女儿离世后回家告别', 243105, '暖', 'https://s.weibo.com/weibo?q=%23戒毒男子得知女儿离世后回家告别%23', 184);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 35, '减肥动力突然就有了', 235900, '新', 'https://s.weibo.com/weibo?q=减肥动力突然就有了', 185);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 36, '隐哥 爆炸王', 233907, '新', 'https://s.weibo.com/weibo?q=隐哥 爆炸王', 186);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 37, '况盛 马杨', 229387, '', 'https://s.weibo.com/weibo?q=况盛 马杨', 187);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 38, '一92年男子已当老丈人', 207691, '', 'https://s.weibo.com/weibo?q=%23一92年男子已当老丈人%23', 188);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 39, '安徽牛肉板面 河北特产', 195706, '新', 'https://s.weibo.com/weibo?q=安徽牛肉板面 河北特产', 189);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 40, '玉玉', 1161520, '', 'https://s.weibo.com/weibo?q=玉玉', 190);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 41, '大腿前侧凸出非常好减', 194559, '', 'https://s.weibo.com/weibo?q=大腿前侧凸出非常好减', 191);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 42, '三大队开播就四条人命案', 190366, '新', 'https://s.weibo.com/weibo?q=%23三大队开播就四条人命案%23', 192);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 43, '流浪小猫带我参观了它的家', 179703, '新', 'https://s.weibo.com/weibo?q=流浪小猫带我参观了它的家', 193);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 44, '莲香楼面临被摘中华老字号', 178117, '新', 'https://s.weibo.com/weibo?q=%23莲香楼面临被摘中华老字号%23', 194);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 45, '肖秀荣 24考研注意事项', 171100, '新', 'https://s.weibo.com/weibo?q=肖秀荣 24考研注意事项', 195);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 46, '鸣龙少年', 157962, '新', 'https://s.weibo.com/weibo?q=鸣龙少年', 196);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 47, '录6天节目给10个人道歉', 152505, '', 'https://s.weibo.com/weibo?q=录6天节目给10个人道歉', 197);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 48, '王鹤棣对接否认与迪丽热巴合作', 142856, '', 'https://s.weibo.com/weibo?q=%23王鹤棣对接否认与迪丽热巴合作%23', 198);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 49, '微博年度报告', 142588, '', 'https://s.weibo.com/weibo?q=微博年度报告', 199);
INSERT INTO `hot_search` VALUES ('2023-12-21', '22:02:32', 50, '考研人同款精神状态', 138113, '新', 'https://s.weibo.com/weibo?q=%23考研人同款精神状态%23', 200);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 1, '吴宣仪 我是男人的话一定追钟楚曦', 1036810, '热', 'https://s.weibo.com/weibo?q=吴宣仪 我是男人的话一定追钟楚曦', 1251);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 2, '冬至', 798433, '沸', 'https://s.weibo.com/weibo?q=冬至', 1252);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 3, '你的肩膀我的依靠', 17512, '暖', 'https://s.weibo.com/weibo?q=%23你的肩膀我的依靠%23', 1253);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 4, '范迪塞尔被控性侵', 1518795, '新', 'https://s.weibo.com/weibo?q=%23范迪塞尔被控性侵%23', 1254);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 5, '电商收到退货穿黑磨损的雪地靴', 1205460, '热', 'https://s.weibo.com/weibo?q=%23电商收到退货穿黑磨损的雪地靴%23', 1255);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 6, '安慕希 白鹿', 719937, '新', 'https://s.weibo.com/weibo?q=安慕希 白鹿', 1256);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 7, '吃饺子是为了纪念谁', 608479, '暖', 'https://s.weibo.com/weibo?q=%23吃饺子是为了纪念谁%23', 1257);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 8, '11时27分迎来冬至节气', 599634, '', 'https://s.weibo.com/weibo?q=%2311时27分迎来冬至节气%23', 1258);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 9, '秦岚情绪稳定的原因', 539363, '新', 'https://s.weibo.com/weibo?q=秦岚情绪稳定的原因', 1259);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 10, '赵露思替身发文', 483725, '热', 'https://s.weibo.com/weibo?q=%23赵露思替身发文%23', 1260);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 11, '地震致青海海东市31人遇难', 480511, '新', 'https://s.weibo.com/weibo?q=%23地震致青海海东市31人遇难%23', 1261);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 12, '烤奶', 449802, '新', 'https://s.weibo.com/weibo?q=烤奶', 1262);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 13, '倪妮 新中式羽绒服', 449286, '热', 'https://s.weibo.com/weibo?q=倪妮 新中式羽绒服', 1263);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 14, '微博之夜 投票', 442802, '', 'https://s.weibo.com/weibo?q=微博之夜 投票', 1264);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 15, '杨天真在蚂蚁财富养基场做嘴替', 36513, '', 'https://s.weibo.com/weibo?q=%23杨天真在蚂蚁财富养基场做嘴替%23', 1265);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 16, '微信上线吃饺子汤圆限定状态', 440498, '新', 'https://s.weibo.com/weibo?q=%23微信上线吃饺子汤圆限定状态%23', 1266);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 17, '青海海东3人因地震失联', 409472, '新', 'https://s.weibo.com/weibo?q=%23青海海东3人因地震失联%23', 1267);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 18, '哑舍 刘宇宁', 385136, '', 'https://s.weibo.com/weibo?q=哑舍 刘宇宁', 1268);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 19, '赵今麦 化妆师', 383504, '', 'https://s.weibo.com/weibo?q=赵今麦 化妆师', 1269);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 20, '涉事医生回应手术时捶压老人头部', 325953, '', 'https://s.weibo.com/weibo?q=%23涉事医生回应手术时捶压老人头部%23', 1270);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 21, '女子花7元打特惠车被司机嘲讽一路', 316784, '', 'https://s.weibo.com/weibo?q=%23女子花7元打特惠车被司机嘲讽一路%23', 1271);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 22, '美ONE转让旗下公司股权给李佳琦母亲', 276545, '新', 'https://s.weibo.com/weibo?q=%23美ONE转让旗下公司股权给李佳琦母亲%23', 1272);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 23, '杭州孕妈一颗草莓下肚口吐鲜血', 249590, '', 'https://s.weibo.com/weibo?q=%23杭州孕妈一颗草莓下肚口吐鲜血%23', 1273);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 24, '嘘国王在冬眠官宣虞书欣林一', 242210, '新', 'https://s.weibo.com/weibo?q=%23嘘国王在冬眠官宣虞书欣林一%23', 1274);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 25, '女子身份被冒用头胎竟变二胎', 233806, '', 'https://s.weibo.com/weibo?q=%23女子身份被冒用头胎竟变二胎%23', 1275);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 26, '管泽元', 219587, '', 'https://s.weibo.com/weibo?q=管泽元', 1276);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 27, '幽门螺杆菌跟胃癌直接相关', 216348, '新', 'https://s.weibo.com/weibo?q=%23幽门螺杆菌跟胃癌直接相关%23', 1277);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 28, '谷爱凌收入排名女运动员第二位', 210976, '', 'https://s.weibo.com/weibo?q=%23谷爱凌收入排名女运动员第二位%23', 1278);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 29, '丫丫狂炫冬至美食', 208286, '暖', 'https://s.weibo.com/weibo?q=%23丫丫狂炫冬至美食%23', 1279);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 30, '迪丽热巴也逃不过发光鞋', 195191, '', 'https://s.weibo.com/weibo?q=迪丽热巴也逃不过发光鞋', 1280);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 31, '幽门螺杆菌为啥是致癌物', 186644, '', 'https://s.weibo.com/weibo?q=%23幽门螺杆菌为啥是致癌物%23', 1281);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 32, '当你的真名很像网名时', 185277, '', 'https://s.weibo.com/weibo?q=当你的真名很像网名时', 1282);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 33, '鹭卓 投票', 178420, '', 'https://s.weibo.com/weibo?q=鹭卓 投票', 1283);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 34, '你买过农科院零食吗', 176948, '新', 'https://s.weibo.com/weibo?q=%23你买过农科院零食吗%23', 1284);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 35, '网红零食切莫伪装高学历', 166868, '新', 'https://s.weibo.com/weibo?q=%23网红零食切莫伪装高学历%23', 1285);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 36, '天津跳水大爷快乐60秒新招', 165693, '暖', 'https://s.weibo.com/weibo?q=%23天津跳水大爷快乐60秒新招%23', 1286);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 37, 'vivo称手机行业正从寒冬复苏', 158534, '', 'https://s.weibo.com/weibo?q=%23vivo称手机行业正从寒冬复苏%23', 1287);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 38, 'AppleWatch禁令美国落地', 149136, '', 'https://s.weibo.com/weibo?q=%23AppleWatch禁令美国落地%23', 1288);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 39, '北京地铁1号线发生供电设备故障', 148997, '', 'https://s.weibo.com/weibo?q=%23北京地铁1号线发生供电设备故障%23', 1289);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 40, '女孩零下18度光手跑步险截肢', 145846, '', 'https://s.weibo.com/weibo?q=%23女孩零下18度光手跑步险截肢%23', 1290);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 41, '张婧仪 财阀千金', 144762, '', 'https://s.weibo.com/weibo?q=张婧仪 财阀千金', 1291);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 42, '李晨 我不是明星是文艺工作者', 141537, '', 'https://s.weibo.com/weibo?q=李晨 我不是明星是文艺工作者', 1292);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 43, '余震后小猫安心躲进消防员帽子', 140005, '暖', 'https://s.weibo.com/weibo?q=%23余震后小猫安心躲进消防员帽子%23', 1293);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 44, '存款利率年内第三次下调', 138304, '新', 'https://s.weibo.com/weibo?q=%23存款利率年内第三次下调%23', 1294);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 45, '7小时睡眠或降低死亡率', 132164, '', 'https://s.weibo.com/weibo?q=%237小时睡眠或降低死亡率%23', 1295);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 46, '倪妮工作室', 125589, '', 'https://s.weibo.com/weibo?q=倪妮工作室', 1296);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 47, '难听', 123089, '', 'https://s.weibo.com/weibo?q=难听', 1297);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 48, '周杰伦的调调', 120651, '', 'https://s.weibo.com/weibo?q=周杰伦的调调', 1298);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 49, '赵今麦捡起张凌赫的暖宝宝', 117500, '', 'https://s.weibo.com/weibo?q=%23赵今麦捡起张凌赫的暖宝宝%23', 1299);
INSERT INTO `hot_search` VALUES ('2023-12-22', '10:48:42', 50, '今天冬至踩踩小人', 117431, '', 'https://s.weibo.com/weibo?q=今天冬至踩踩小人', 1300);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 1, '22岁女老师被7旬老人开老头乐撞死', 3933095, '新', 'https://s.weibo.com/weibo?q=%2322岁女老师被7旬老人开老头乐撞死%23', 1301);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 2, '建议冬至放一天假的理由', 2374779, '新', 'https://s.weibo.com/weibo?q=建议冬至放一天假的理由', 1302);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 3, '冬至愿美好如约而至', 57445, '暖', 'https://s.weibo.com/weibo?q=%23冬至愿美好如约而至%23', 1303);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 4, '上个班没必要扭扭捏捏', 947833, '热', 'https://s.weibo.com/weibo?q=上个班没必要扭扭捏捏', 1304);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 5, '老头乐', 923774, '新', 'https://s.weibo.com/weibo?q=老头乐', 1305);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 6, '网剧冬至', 717247, '新', 'https://s.weibo.com/weibo?q=网剧冬至', 1306);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 7, '安慕希 白鹿', 673464, '热', 'https://s.weibo.com/weibo?q=安慕希 白鹿', 1307);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 8, '虞书欣林一演情侣', 624628, '', 'https://s.weibo.com/weibo?q=%23虞书欣林一演情侣%23', 1308);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 9, '杨丽萍团队跳科目三', 582418, '新', 'https://s.weibo.com/weibo?q=%23杨丽萍团队跳科目三%23', 1309);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 10, '所有网络游戏须设置用户充值限额', 577442, '新', 'https://s.weibo.com/weibo?q=%23所有网络游戏须设置用户充值限额%23', 1310);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 11, '范迪塞尔被控性侵', 775130, '热', 'https://s.weibo.com/weibo?q=%23范迪塞尔被控性侵%23', 1311);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 12, 'TODS 肖战', 543035, '新', 'https://s.weibo.com/weibo?q=TODS 肖战', 1312);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 13, '吃饺子是为了纪念谁', 480757, '', 'https://s.weibo.com/weibo?q=%23吃饺子是为了纪念谁%23', 1313);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 14, '吃雪糕时掉一块致人摔倒伤残', 448199, '新', 'https://s.weibo.com/weibo?q=%23吃雪糕时掉一块致人摔倒伤残%23', 1314);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 15, '鸡块妹打工实录', 78459, '', 'https://s.weibo.com/weibo?q=%23鸡块妹打工实录%23', 1315);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 16, '微博之夜 投票', 424987, '', 'https://s.weibo.com/weibo?q=微博之夜 投票', 1316);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 17, '赵露思替身发文', 393137, '热', 'https://s.weibo.com/weibo?q=%23赵露思替身发文%23', 1317);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 18, '冬至', 390521, '', 'https://s.weibo.com/weibo?q=冬至', 1318);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 19, '11时27分迎来冬至节气', 380621, '', 'https://s.weibo.com/weibo?q=%2311时27分迎来冬至节气%23', 1319);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 20, '晒出你的2023年度用车账单', 51880, '', 'https://s.weibo.com/weibo?q=%23晒出你的2023年度用车账单%23', 1320);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 21, '刘亦菲喂你吃饭', 141105, '', 'https://s.weibo.com/weibo?q=%23刘亦菲喂你吃饭%23', 1321);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 22, '在暴雪时分', 327801, '新', 'https://s.weibo.com/weibo?q=在暴雪时分', 1322);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 23, '十个勤天', 327483, '新', 'https://s.weibo.com/weibo?q=十个勤天', 1323);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 24, '秦岚情绪稳定的原因', 321153, '', 'https://s.weibo.com/weibo?q=秦岚情绪稳定的原因', 1324);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 25, '吴宣仪 我是男人的话一定追钟楚曦', 314345, '热', 'https://s.weibo.com/weibo?q=吴宣仪 我是男人的话一定追钟楚曦', 1325);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 26, '网络游戏不得设置首充等诱导性奖励', 291410, '新', 'https://s.weibo.com/weibo?q=%23网络游戏不得设置首充等诱导性奖励%23', 1326);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 27, '明天考研', 285001, '新', 'https://s.weibo.com/weibo?q=明天考研', 1327);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 28, '港股游戏股大跌', 274622, '新', 'https://s.weibo.com/weibo?q=%23港股游戏股大跌%23', 1328);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 29, '穿加绒牛仔裤为什么会冷', 272486, '', 'https://s.weibo.com/weibo?q=穿加绒牛仔裤为什么会冷', 1329);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 30, '赵今麦 化妆师', 270881, '', 'https://s.weibo.com/weibo?q=赵今麦 化妆师', 1330);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 31, '光腿神器可能引发妇科炎症', 286390, '新', 'https://s.weibo.com/weibo?q=%23光腿神器可能引发妇科炎症%23', 1331);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 32, '李现王紫璇河神后二搭', 268254, '新', 'https://s.weibo.com/weibo?q=%23李现王紫璇河神后二搭%23', 1332);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 33, '2023十大出圈角色', 266019, '新', 'https://s.weibo.com/weibo?q=%232023十大出圈角色%23', 1333);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 34, '倪妮 新中式羽绒服', 241098, '', 'https://s.weibo.com/weibo?q=倪妮 新中式羽绒服', 1334);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 35, '电商收到退货穿黑磨损的雪地靴', 230521, '', 'https://s.weibo.com/weibo?q=%23电商收到退货穿黑磨损的雪地靴%23', 1335);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 36, '谢娜 和武艺聊天都不会让我失望', 226955, '新', 'https://s.weibo.com/weibo?q=谢娜 和武艺聊天都不会让我失望', 1336);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 37, '幽门螺杆菌跟胃癌直接相关', 222441, '', 'https://s.weibo.com/weibo?q=%23幽门螺杆菌跟胃癌直接相关%23', 1337);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 38, '哑舍 刘宇宁', 217538, '', 'https://s.weibo.com/weibo?q=哑舍 刘宇宁', 1338);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 39, '倪妮看张婧仪的表情', 231135, '', 'https://s.weibo.com/weibo?q=%23倪妮看张婧仪的表情%23', 1339);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 40, '女子花7元打特惠车被司机嘲讽一路', 211255, '', 'https://s.weibo.com/weibo?q=%23女子花7元打特惠车被司机嘲讽一路%23', 1340);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 41, '李现任敏演警察', 210510, '', 'https://s.weibo.com/weibo?q=%23李现任敏演警察%23', 1341);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 42, '胡海泉100万股权被冻结', 194879, '新', 'https://s.weibo.com/weibo?q=%23胡海泉100万股权被冻结%23', 1342);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 43, '相亲中的下头行为', 194261, '新', 'https://s.weibo.com/weibo?q=%23相亲中的下头行为%23', 1343);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 44, '美ONE转让旗下公司股权给李佳琦母亲', 189448, '', 'https://s.weibo.com/weibo?q=%23美ONE转让旗下公司股权给李佳琦母亲%23', 1344);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 45, '地震灾区女孩吃面带着微笑却看泪目', 187346, '暖', 'https://s.weibo.com/weibo?q=%23地震灾区女孩吃面带着微笑却看泪目%23', 1345);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 46, '考研男生憧憬2024拿录取通知书扇扇子', 181385, '暖', 'https://s.weibo.com/weibo?q=%23考研男生憧憬2024拿录取通知书扇扇子%23', 1346);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 47, '公安部新闻发布会', 172849, '新', 'https://s.weibo.com/weibo?q=%23公安部新闻发布会%23', 1347);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 48, '丫丫养的小鸟肉眼可见的胖了', 165065, '暖', 'https://s.weibo.com/weibo?q=%23丫丫养的小鸟肉眼可见的胖了%23', 1348);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 49, '恋与深空全球定档', 158737, '新', 'https://s.weibo.com/weibo?q=%23恋与深空全球定档%23', 1349);
INSERT INTO `hot_search` VALUES ('2023-12-22', '12:53:07', 50, '四川人才知道这碗羊肉汤的含金量', 157820, '暖', 'https://s.weibo.com/weibo?q=%23四川人才知道这碗羊肉汤的含金量%23', 1350);

SET FOREIGN_KEY_CHECKS = 1;
