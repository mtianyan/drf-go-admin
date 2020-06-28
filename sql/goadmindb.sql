/*
 Navicat Premium Data Transfer

 Source Server         : mtianyan_mac_local
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : test_go_admin

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 28/06/2020 15:50:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule` (
  `p_type` varchar(100) DEFAULT NULL,
  `v0` varchar(100) DEFAULT NULL,
  `v1` varchar(100) DEFAULT NULL,
  `v2` varchar(100) DEFAULT NULL,
  `v3` varchar(100) DEFAULT NULL,
  `v4` varchar(100) DEFAULT NULL,
  `v5` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=631 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
BEGIN;
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/calendar', 'GET', NULL, NULL, NULL, 1);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/calendar', 'POST', NULL, NULL, NULL, 2);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/calendar/:id', 'DELETE', NULL, NULL, NULL, 3);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/calendar/:id', 'PUT', NULL, NULL, NULL, 4);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/config', 'POST', NULL, NULL, NULL, 5);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/config', 'PUT', NULL, NULL, NULL, 6);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/config/:id', 'DELETE', NULL, NULL, NULL, 7);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/config/:id', 'GET', NULL, NULL, NULL, 8);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 9);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/configList', 'GET', NULL, NULL, NULL, 10);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dept', 'POST', NULL, NULL, NULL, 11);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dept', 'PUT', NULL, NULL, NULL, 12);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dept/:id', 'DELETE', NULL, NULL, NULL, 13);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dept/:id', 'GET', NULL, NULL, NULL, 14);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/deptList', 'GET', NULL, NULL, NULL, 15);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/deptTree', 'GET', NULL, NULL, NULL, 16);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/data', 'POST', NULL, NULL, NULL, 17);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/data/', 'PUT', NULL, NULL, NULL, 18);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/data/:id', 'DELETE', NULL, NULL, NULL, 19);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/data/:id', 'GET', NULL, NULL, NULL, 20);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/databytype/', 'GET', NULL, NULL, NULL, 21);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/databytype/:id', 'GET', NULL, NULL, NULL, 22);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/datalist', 'GET', NULL, NULL, NULL, 23);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/type', 'POST', NULL, NULL, NULL, 24);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/type', 'PUT', NULL, NULL, NULL, 25);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/type/:id', 'DELETE', NULL, NULL, NULL, 26);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/type/:id', 'GET', NULL, NULL, NULL, 27);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/typelist', 'GET', NULL, NULL, NULL, 28);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/typeoptionselect', 'GET', NULL, NULL, NULL, 29);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor', 'GET', NULL, NULL, NULL, 30);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor', 'POST', NULL, NULL, NULL, 31);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor/:id', 'DELETE', NULL, NULL, NULL, 32);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor/:id', 'PUT', NULL, NULL, NULL, 33);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor/pic/', 'POST', NULL, NULL, NULL, 34);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/getinfo', 'GET', NULL, NULL, NULL, 35);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/loginlog/:id', 'DELETE', NULL, NULL, NULL, 36);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/loginloglist', 'GET', NULL, NULL, NULL, 37);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/logout', 'POST', NULL, NULL, NULL, 38);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/member', 'GET', NULL, NULL, NULL, 39);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/member', 'POST', NULL, NULL, NULL, 40);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/member/:id', 'DELETE', NULL, NULL, NULL, 41);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/member/:id', 'PUT', NULL, NULL, NULL, 42);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menu', 'POST', NULL, NULL, NULL, 43);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menu', 'PUT', NULL, NULL, NULL, 44);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 45);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menu/:id', 'GET', NULL, NULL, NULL, 46);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menuids', 'GET', NULL, NULL, NULL, 47);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 48);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menurole', 'GET', NULL, NULL, NULL, 49);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL, 50);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/operloglist', 'GET', NULL, NULL, NULL, 51);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders', 'GET', NULL, NULL, NULL, 52);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders', 'POST', NULL, NULL, NULL, 53);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders/:id', 'DELETE', NULL, NULL, NULL, 54);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders/:id', 'GET', NULL, NULL, NULL, 55);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders/:id', 'PUT', NULL, NULL, NULL, 56);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/post', 'POST', NULL, NULL, NULL, 57);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/post', 'PUT', NULL, NULL, NULL, 58);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/post/:id', 'DELETE', NULL, NULL, NULL, 59);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/post/:id', 'GET', NULL, NULL, NULL, 60);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/postlist', 'GET', NULL, NULL, NULL, 61);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/role', 'POST', NULL, NULL, NULL, 62);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/role', 'PUT', NULL, NULL, NULL, 63);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/role/:id', 'DELETE', NULL, NULL, NULL, 64);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/role/:id', 'GET', NULL, NULL, NULL, 65);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/roledatascope', 'PUT', NULL, NULL, NULL, 66);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL, 67);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/rolelist', 'GET', NULL, NULL, NULL, 68);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/rolemenu', 'GET', NULL, NULL, NULL, 69);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/rolemenu', 'POST', NULL, NULL, NULL, 70);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/rolemenu/:id', 'DELETE', NULL, NULL, NULL, 71);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/roleMenuTreeselect/:id', 'GET', NULL, NULL, NULL, 72);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL, 73);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL, 74);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 75);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu', 'POST', NULL, NULL, NULL, 76);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/databytype/', 'GET', NULL, NULL, NULL, 77);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu', 'PUT', NULL, NULL, NULL, 78);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 79);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUserList', 'GET', NULL, NULL, NULL, 80);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser/:id', 'GET', NULL, NULL, NULL, 81);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser/', 'GET', NULL, NULL, NULL, 82);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser', 'POST', NULL, NULL, NULL, 83);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser', 'PUT', NULL, NULL, NULL, 84);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser/:id', 'DELETE', NULL, NULL, NULL, 85);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/user/profile', 'GET', NULL, NULL, NULL, 86);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/rolelist', 'GET', NULL, NULL, NULL, 87);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/role/:id', 'GET', NULL, NULL, NULL, 88);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/role', 'POST', NULL, NULL, NULL, 89);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/role', 'PUT', NULL, NULL, NULL, 90);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/role/:id', 'DELETE', NULL, NULL, NULL, 91);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/configList', 'GET', NULL, NULL, NULL, 92);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/config/:id', 'GET', NULL, NULL, NULL, 93);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 94);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/config', 'POST', NULL, NULL, NULL, 95);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/config', 'PUT', NULL, NULL, NULL, 96);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/config/:id', 'DELETE', NULL, NULL, NULL, 97);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menurole', 'GET', NULL, NULL, NULL, 98);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/roleMenuTreeselect/:id', 'GET', NULL, NULL, NULL, 99);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL, 100);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/rolemenu', 'GET', NULL, NULL, NULL, 101);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/rolemenu', 'POST', NULL, NULL, NULL, 102);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/rolemenu/:id', 'DELETE', NULL, NULL, NULL, 103);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/deptList', 'GET', NULL, NULL, NULL, 104);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dept/:id', 'GET', NULL, NULL, NULL, 105);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dept', 'POST', NULL, NULL, NULL, 106);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dept', 'PUT', NULL, NULL, NULL, 107);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dept/:id', 'DELETE', NULL, NULL, NULL, 108);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/datalist', 'GET', NULL, NULL, NULL, 109);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/data/:id', 'GET', NULL, NULL, NULL, 110);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/databytype/:id', 'GET', NULL, NULL, NULL, 111);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/data', 'POST', NULL, NULL, NULL, 112);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/data/', 'PUT', NULL, NULL, NULL, 113);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/data/:id', 'DELETE', NULL, NULL, NULL, 114);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/typelist', 'GET', NULL, NULL, NULL, 115);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/type/:id', 'GET', NULL, NULL, NULL, 116);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/type', 'POST', NULL, NULL, NULL, 117);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/type', 'PUT', NULL, NULL, NULL, 118);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/type/:id', 'DELETE', NULL, NULL, NULL, 119);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/postlist', 'GET', NULL, NULL, NULL, 120);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/post/:id', 'GET', NULL, NULL, NULL, 121);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/post', 'POST', NULL, NULL, NULL, 122);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/post', 'PUT', NULL, NULL, NULL, 123);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/post/:id', 'DELETE', NULL, NULL, NULL, 124);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 125);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu/:id', 'GET', NULL, NULL, NULL, 126);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu', 'POST', NULL, NULL, NULL, 127);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu/:id', 'PUT', NULL, NULL, NULL, 128);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 129);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menuids', 'GET', NULL, NULL, NULL, 130);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/loginloglist', 'GET', NULL, NULL, NULL, 131);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/loginlog/:id', 'DELETE', NULL, NULL, NULL, 132);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/operloglist', 'GET', NULL, NULL, NULL, 133);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/getinfo', 'GET', NULL, NULL, NULL, 134);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/roledatascope', 'PUT', NULL, NULL, NULL, 135);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL, 136);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/deptTree', 'GET', NULL, NULL, NULL, 137);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 138);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/logout', 'POST', NULL, NULL, NULL, 139);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL, 140);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL, 141);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/typeoptionselect', 'GET', NULL, NULL, NULL, 142);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 143);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu', 'POST', NULL, NULL, NULL, 144);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/databytype/', 'GET', NULL, NULL, NULL, 145);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu', 'PUT', NULL, NULL, NULL, 146);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 147);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUserList', 'GET', NULL, NULL, NULL, 148);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser/:id', 'GET', NULL, NULL, NULL, 149);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser/', 'GET', NULL, NULL, NULL, 150);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser', 'POST', NULL, NULL, NULL, 151);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser', 'PUT', NULL, NULL, NULL, 152);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser/:id', 'DELETE', NULL, NULL, NULL, 153);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/user/profile', 'GET', NULL, NULL, NULL, 154);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolelist', 'GET', NULL, NULL, NULL, 155);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role/:id', 'GET', NULL, NULL, NULL, 156);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role', 'POST', NULL, NULL, NULL, 157);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role', 'PUT', NULL, NULL, NULL, 158);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role/:id', 'DELETE', NULL, NULL, NULL, 159);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/configList', 'GET', NULL, NULL, NULL, 160);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config/:id', 'GET', NULL, NULL, NULL, 161);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 162);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config', 'POST', NULL, NULL, NULL, 163);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config', 'PUT', NULL, NULL, NULL, 164);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config/:id', 'DELETE', NULL, NULL, NULL, 165);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menurole', 'GET', NULL, NULL, NULL, 166);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/roleMenuTreeselect/:id', 'GET', NULL, NULL, NULL, 167);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL, 168);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolemenu', 'GET', NULL, NULL, NULL, 169);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolemenu', 'POST', NULL, NULL, NULL, 170);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolemenu/:id', 'DELETE', NULL, NULL, NULL, 171);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/deptList', 'GET', NULL, NULL, NULL, 172);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept/:id', 'GET', NULL, NULL, NULL, 173);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept', 'POST', NULL, NULL, NULL, 174);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept', 'PUT', NULL, NULL, NULL, 175);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept/:id', 'DELETE', NULL, NULL, NULL, 176);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/datalist', 'GET', NULL, NULL, NULL, 177);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data/:id', 'GET', NULL, NULL, NULL, 178);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/databytype/:id', 'GET', NULL, NULL, NULL, 179);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data', 'POST', NULL, NULL, NULL, 180);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data/', 'PUT', NULL, NULL, NULL, 181);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data/:id', 'DELETE', NULL, NULL, NULL, 182);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/typelist', 'GET', NULL, NULL, NULL, 183);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type/:id', 'GET', NULL, NULL, NULL, 184);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type', 'POST', NULL, NULL, NULL, 185);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type', 'PUT', NULL, NULL, NULL, 186);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type/:id', 'DELETE', NULL, NULL, NULL, 187);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/postlist', 'GET', NULL, NULL, NULL, 188);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post/:id', 'GET', NULL, NULL, NULL, 189);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post', 'POST', NULL, NULL, NULL, 190);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post', 'PUT', NULL, NULL, NULL, 191);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post/:id', 'DELETE', NULL, NULL, NULL, 192);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 193);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'GET', NULL, NULL, NULL, 194);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu', 'POST', NULL, NULL, NULL, 195);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'PUT', NULL, NULL, NULL, 196);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 197);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menuids', 'GET', NULL, NULL, NULL, 198);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/loginloglist', 'GET', NULL, NULL, NULL, 199);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/loginlog/:id', 'DELETE', NULL, NULL, NULL, 200);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/operloglist', 'GET', NULL, NULL, NULL, 201);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/getinfo', 'GET', NULL, NULL, NULL, 202);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/roledatascope', 'PUT', NULL, NULL, NULL, 203);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL, 204);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/deptTree', 'GET', NULL, NULL, NULL, 205);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 206);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/logout', 'POST', NULL, NULL, NULL, 207);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL, 208);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL, 209);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/typeoptionselect', 'GET', NULL, NULL, NULL, 210);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/calendar', 'GET', NULL, NULL, NULL, 211);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/calendar', 'POST', NULL, NULL, NULL, 212);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/calendar/:id', 'DELETE', NULL, NULL, NULL, 213);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/calendar/:id', 'PUT', NULL, NULL, NULL, 214);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/config', 'POST', NULL, NULL, NULL, 215);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/config', 'PUT', NULL, NULL, NULL, 216);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/config/:id', 'DELETE', NULL, NULL, NULL, 217);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/config/:id', 'GET', NULL, NULL, NULL, 218);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 219);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/configList', 'GET', NULL, NULL, NULL, 220);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dept', 'POST', NULL, NULL, NULL, 221);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dept', 'PUT', NULL, NULL, NULL, 222);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dept/:id', 'DELETE', NULL, NULL, NULL, 223);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dept/:id', 'GET', NULL, NULL, NULL, 224);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/deptList', 'GET', NULL, NULL, NULL, 225);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/deptTree', 'GET', NULL, NULL, NULL, 226);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/data', 'POST', NULL, NULL, NULL, 227);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/data/', 'PUT', NULL, NULL, NULL, 228);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/data/:id', 'DELETE', NULL, NULL, NULL, 229);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/data/:id', 'GET', NULL, NULL, NULL, 230);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/databytype/', 'GET', NULL, NULL, NULL, 231);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/databytype/:id', 'GET', NULL, NULL, NULL, 232);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/datalist', 'GET', NULL, NULL, NULL, 233);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/type', 'POST', NULL, NULL, NULL, 234);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/type', 'PUT', NULL, NULL, NULL, 235);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/type/:id', 'DELETE', NULL, NULL, NULL, 236);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/type/:id', 'GET', NULL, NULL, NULL, 237);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/typelist', 'GET', NULL, NULL, NULL, 238);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/typeoptionselect', 'GET', NULL, NULL, NULL, 239);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor', 'GET', NULL, NULL, NULL, 240);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor', 'POST', NULL, NULL, NULL, 241);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor/:id', 'DELETE', NULL, NULL, NULL, 242);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor/:id', 'PUT', NULL, NULL, NULL, 243);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor/pic/', 'POST', NULL, NULL, NULL, 244);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/getinfo', 'GET', NULL, NULL, NULL, 245);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/loginlog/:id', 'DELETE', NULL, NULL, NULL, 246);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/loginloglist', 'GET', NULL, NULL, NULL, 247);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/logout', 'POST', NULL, NULL, NULL, 248);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/member', 'GET', NULL, NULL, NULL, 249);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/member', 'POST', NULL, NULL, NULL, 250);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/member/:id', 'DELETE', NULL, NULL, NULL, 251);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/member/:id', 'PUT', NULL, NULL, NULL, 252);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menu', 'POST', NULL, NULL, NULL, 253);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menu', 'PUT', NULL, NULL, NULL, 254);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 255);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menu/:id', 'GET', NULL, NULL, NULL, 256);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menuids', 'GET', NULL, NULL, NULL, 257);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 258);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menurole', 'GET', NULL, NULL, NULL, 259);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL, 260);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/operloglist', 'GET', NULL, NULL, NULL, 261);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders', 'GET', NULL, NULL, NULL, 262);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders', 'POST', NULL, NULL, NULL, 263);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders/:id', 'DELETE', NULL, NULL, NULL, 264);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders/:id', 'GET', NULL, NULL, NULL, 265);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders/:id', 'PUT', NULL, NULL, NULL, 266);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/post', 'POST', NULL, NULL, NULL, 267);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/post', 'PUT', NULL, NULL, NULL, 268);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/post/:id', 'DELETE', NULL, NULL, NULL, 269);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/post/:id', 'GET', NULL, NULL, NULL, 270);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/postlist', 'GET', NULL, NULL, NULL, 271);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/role', 'POST', NULL, NULL, NULL, 272);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/role', 'PUT', NULL, NULL, NULL, 273);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/role/:id', 'DELETE', NULL, NULL, NULL, 274);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/role/:id', 'GET', NULL, NULL, NULL, 275);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/roledatascope', 'PUT', NULL, NULL, NULL, 276);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL, 277);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/rolelist', 'GET', NULL, NULL, NULL, 278);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/rolemenu', 'GET', NULL, NULL, NULL, 279);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/rolemenu', 'POST', NULL, NULL, NULL, 280);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/rolemenu/:id', 'DELETE', NULL, NULL, NULL, 281);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/roleMenuTreeselect/:id', 'GET', NULL, NULL, NULL, 282);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL, 283);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL, 284);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 285);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu', 'POST', NULL, NULL, NULL, 286);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/databytype/', 'GET', NULL, NULL, NULL, 287);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu', 'PUT', NULL, NULL, NULL, 288);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 289);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUserList', 'GET', NULL, NULL, NULL, 290);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser/:id', 'GET', NULL, NULL, NULL, 291);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser/', 'GET', NULL, NULL, NULL, 292);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser', 'POST', NULL, NULL, NULL, 293);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser', 'PUT', NULL, NULL, NULL, 294);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser/:id', 'DELETE', NULL, NULL, NULL, 295);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/user/profile', 'GET', NULL, NULL, NULL, 296);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/rolelist', 'GET', NULL, NULL, NULL, 297);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/role/:id', 'GET', NULL, NULL, NULL, 298);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/role', 'POST', NULL, NULL, NULL, 299);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/role', 'PUT', NULL, NULL, NULL, 300);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/role/:id', 'DELETE', NULL, NULL, NULL, 301);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/configList', 'GET', NULL, NULL, NULL, 302);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/config/:id', 'GET', NULL, NULL, NULL, 303);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 304);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/config', 'POST', NULL, NULL, NULL, 305);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/config', 'PUT', NULL, NULL, NULL, 306);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/config/:id', 'DELETE', NULL, NULL, NULL, 307);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menurole', 'GET', NULL, NULL, NULL, 308);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/roleMenuTreeselect/:id', 'GET', NULL, NULL, NULL, 309);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL, 310);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/rolemenu', 'GET', NULL, NULL, NULL, 311);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/rolemenu', 'POST', NULL, NULL, NULL, 312);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/rolemenu/:id', 'DELETE', NULL, NULL, NULL, 313);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/deptList', 'GET', NULL, NULL, NULL, 314);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dept/:id', 'GET', NULL, NULL, NULL, 315);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dept', 'POST', NULL, NULL, NULL, 316);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dept', 'PUT', NULL, NULL, NULL, 317);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dept/:id', 'DELETE', NULL, NULL, NULL, 318);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/datalist', 'GET', NULL, NULL, NULL, 319);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/data/:id', 'GET', NULL, NULL, NULL, 320);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/databytype/:id', 'GET', NULL, NULL, NULL, 321);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/data', 'POST', NULL, NULL, NULL, 322);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/data/', 'PUT', NULL, NULL, NULL, 323);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/data/:id', 'DELETE', NULL, NULL, NULL, 324);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/typelist', 'GET', NULL, NULL, NULL, 325);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/type/:id', 'GET', NULL, NULL, NULL, 326);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/type', 'POST', NULL, NULL, NULL, 327);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/type', 'PUT', NULL, NULL, NULL, 328);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/type/:id', 'DELETE', NULL, NULL, NULL, 329);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/postlist', 'GET', NULL, NULL, NULL, 330);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/post/:id', 'GET', NULL, NULL, NULL, 331);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/post', 'POST', NULL, NULL, NULL, 332);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/post', 'PUT', NULL, NULL, NULL, 333);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/post/:id', 'DELETE', NULL, NULL, NULL, 334);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 335);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu/:id', 'GET', NULL, NULL, NULL, 336);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu', 'POST', NULL, NULL, NULL, 337);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu/:id', 'PUT', NULL, NULL, NULL, 338);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 339);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menuids', 'GET', NULL, NULL, NULL, 340);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/loginloglist', 'GET', NULL, NULL, NULL, 341);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/loginlog/:id', 'DELETE', NULL, NULL, NULL, 342);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/operloglist', 'GET', NULL, NULL, NULL, 343);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/getinfo', 'GET', NULL, NULL, NULL, 344);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/roledatascope', 'PUT', NULL, NULL, NULL, 345);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL, 346);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/deptTree', 'GET', NULL, NULL, NULL, 347);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 348);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/logout', 'POST', NULL, NULL, NULL, 349);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL, 350);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL, 351);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/typeoptionselect', 'GET', NULL, NULL, NULL, 352);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 353);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu', 'POST', NULL, NULL, NULL, 354);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/databytype/', 'GET', NULL, NULL, NULL, 355);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu', 'PUT', NULL, NULL, NULL, 356);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 357);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUserList', 'GET', NULL, NULL, NULL, 358);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser/:id', 'GET', NULL, NULL, NULL, 359);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser/', 'GET', NULL, NULL, NULL, 360);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser', 'POST', NULL, NULL, NULL, 361);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser', 'PUT', NULL, NULL, NULL, 362);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser/:id', 'DELETE', NULL, NULL, NULL, 363);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/user/profile', 'GET', NULL, NULL, NULL, 364);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolelist', 'GET', NULL, NULL, NULL, 365);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role/:id', 'GET', NULL, NULL, NULL, 366);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role', 'POST', NULL, NULL, NULL, 367);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role', 'PUT', NULL, NULL, NULL, 368);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role/:id', 'DELETE', NULL, NULL, NULL, 369);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/configList', 'GET', NULL, NULL, NULL, 370);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config/:id', 'GET', NULL, NULL, NULL, 371);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 372);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config', 'POST', NULL, NULL, NULL, 373);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config', 'PUT', NULL, NULL, NULL, 374);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config/:id', 'DELETE', NULL, NULL, NULL, 375);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menurole', 'GET', NULL, NULL, NULL, 376);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/roleMenuTreeselect/:id', 'GET', NULL, NULL, NULL, 377);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL, 378);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolemenu', 'GET', NULL, NULL, NULL, 379);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolemenu', 'POST', NULL, NULL, NULL, 380);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolemenu/:id', 'DELETE', NULL, NULL, NULL, 381);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/deptList', 'GET', NULL, NULL, NULL, 382);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept/:id', 'GET', NULL, NULL, NULL, 383);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept', 'POST', NULL, NULL, NULL, 384);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept', 'PUT', NULL, NULL, NULL, 385);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept/:id', 'DELETE', NULL, NULL, NULL, 386);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/datalist', 'GET', NULL, NULL, NULL, 387);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data/:id', 'GET', NULL, NULL, NULL, 388);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/databytype/:id', 'GET', NULL, NULL, NULL, 389);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data', 'POST', NULL, NULL, NULL, 390);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data/', 'PUT', NULL, NULL, NULL, 391);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data/:id', 'DELETE', NULL, NULL, NULL, 392);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/typelist', 'GET', NULL, NULL, NULL, 393);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type/:id', 'GET', NULL, NULL, NULL, 394);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type', 'POST', NULL, NULL, NULL, 395);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type', 'PUT', NULL, NULL, NULL, 396);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type/:id', 'DELETE', NULL, NULL, NULL, 397);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/postlist', 'GET', NULL, NULL, NULL, 398);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post/:id', 'GET', NULL, NULL, NULL, 399);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post', 'POST', NULL, NULL, NULL, 400);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post', 'PUT', NULL, NULL, NULL, 401);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post/:id', 'DELETE', NULL, NULL, NULL, 402);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 403);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'GET', NULL, NULL, NULL, 404);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu', 'POST', NULL, NULL, NULL, 405);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'PUT', NULL, NULL, NULL, 406);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 407);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menuids', 'GET', NULL, NULL, NULL, 408);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/loginloglist', 'GET', NULL, NULL, NULL, 409);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/loginlog/:id', 'DELETE', NULL, NULL, NULL, 410);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/operloglist', 'GET', NULL, NULL, NULL, 411);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/getinfo', 'GET', NULL, NULL, NULL, 412);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/roledatascope', 'PUT', NULL, NULL, NULL, 413);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL, 414);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/deptTree', 'GET', NULL, NULL, NULL, 415);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 416);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/logout', 'POST', NULL, NULL, NULL, 417);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL, 418);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL, 419);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/typeoptionselect', 'GET', NULL, NULL, NULL, 420);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/calendar', 'GET', NULL, NULL, NULL, 421);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/calendar', 'POST', NULL, NULL, NULL, 422);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/calendar/:id', 'DELETE', NULL, NULL, NULL, 423);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/calendar/:id', 'PUT', NULL, NULL, NULL, 424);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/config', 'POST', NULL, NULL, NULL, 425);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/config', 'PUT', NULL, NULL, NULL, 426);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/config/:id', 'DELETE', NULL, NULL, NULL, 427);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/config/:id', 'GET', NULL, NULL, NULL, 428);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 429);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/configList', 'GET', NULL, NULL, NULL, 430);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dept', 'POST', NULL, NULL, NULL, 431);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dept', 'PUT', NULL, NULL, NULL, 432);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dept/:id', 'DELETE', NULL, NULL, NULL, 433);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dept/:id', 'GET', NULL, NULL, NULL, 434);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/deptList', 'GET', NULL, NULL, NULL, 435);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/deptTree', 'GET', NULL, NULL, NULL, 436);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/data', 'POST', NULL, NULL, NULL, 437);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/data/', 'PUT', NULL, NULL, NULL, 438);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/data/:id', 'DELETE', NULL, NULL, NULL, 439);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/data/:id', 'GET', NULL, NULL, NULL, 440);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/databytype/', 'GET', NULL, NULL, NULL, 441);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/databytype/:id', 'GET', NULL, NULL, NULL, 442);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/datalist', 'GET', NULL, NULL, NULL, 443);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/type', 'POST', NULL, NULL, NULL, 444);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/type', 'PUT', NULL, NULL, NULL, 445);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/type/:id', 'DELETE', NULL, NULL, NULL, 446);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/type/:id', 'GET', NULL, NULL, NULL, 447);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/typelist', 'GET', NULL, NULL, NULL, 448);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/dict/typeoptionselect', 'GET', NULL, NULL, NULL, 449);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor', 'GET', NULL, NULL, NULL, 450);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor', 'POST', NULL, NULL, NULL, 451);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor/:id', 'DELETE', NULL, NULL, NULL, 452);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor/:id', 'PUT', NULL, NULL, NULL, 453);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/doctor/pic/', 'POST', NULL, NULL, NULL, 454);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/getinfo', 'GET', NULL, NULL, NULL, 455);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/loginlog/:id', 'DELETE', NULL, NULL, NULL, 456);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/loginloglist', 'GET', NULL, NULL, NULL, 457);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/logout', 'POST', NULL, NULL, NULL, 458);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/member', 'GET', NULL, NULL, NULL, 459);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/member', 'POST', NULL, NULL, NULL, 460);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/member/:id', 'DELETE', NULL, NULL, NULL, 461);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/member/:id', 'PUT', NULL, NULL, NULL, 462);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menu', 'POST', NULL, NULL, NULL, 463);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menu', 'PUT', NULL, NULL, NULL, 464);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 465);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menu/:id', 'GET', NULL, NULL, NULL, 466);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menuids', 'GET', NULL, NULL, NULL, 467);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 468);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menurole', 'GET', NULL, NULL, NULL, 469);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL, 470);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/operloglist', 'GET', NULL, NULL, NULL, 471);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders', 'GET', NULL, NULL, NULL, 472);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders', 'POST', NULL, NULL, NULL, 473);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders/:id', 'DELETE', NULL, NULL, NULL, 474);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders/:id', 'GET', NULL, NULL, NULL, 475);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/orders/:id', 'PUT', NULL, NULL, NULL, 476);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/post', 'POST', NULL, NULL, NULL, 477);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/post', 'PUT', NULL, NULL, NULL, 478);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/post/:id', 'DELETE', NULL, NULL, NULL, 479);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/post/:id', 'GET', NULL, NULL, NULL, 480);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/postlist', 'GET', NULL, NULL, NULL, 481);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/role', 'POST', NULL, NULL, NULL, 482);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/role', 'PUT', NULL, NULL, NULL, 483);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/role/:id', 'DELETE', NULL, NULL, NULL, 484);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/role/:id', 'GET', NULL, NULL, NULL, 485);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/roledatascope', 'PUT', NULL, NULL, NULL, 486);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL, 487);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/rolelist', 'GET', NULL, NULL, NULL, 488);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/rolemenu', 'GET', NULL, NULL, NULL, 489);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/rolemenu', 'POST', NULL, NULL, NULL, 490);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/rolemenu/:id', 'DELETE', NULL, NULL, NULL, 491);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/roleMenuTreeselect/:id', 'GET', NULL, NULL, NULL, 492);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL, 493);
INSERT INTO `casbin_rule` VALUES ('p', 'Tester', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL, 494);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 495);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu', 'POST', NULL, NULL, NULL, 496);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/databytype/', 'GET', NULL, NULL, NULL, 497);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu', 'PUT', NULL, NULL, NULL, 498);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 499);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUserList', 'GET', NULL, NULL, NULL, 500);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser/:id', 'GET', NULL, NULL, NULL, 501);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser/', 'GET', NULL, NULL, NULL, 502);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser', 'POST', NULL, NULL, NULL, 503);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser', 'PUT', NULL, NULL, NULL, 504);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/sysUser/:id', 'DELETE', NULL, NULL, NULL, 505);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/user/profile', 'GET', NULL, NULL, NULL, 506);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/rolelist', 'GET', NULL, NULL, NULL, 507);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/role/:id', 'GET', NULL, NULL, NULL, 508);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/role', 'POST', NULL, NULL, NULL, 509);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/role', 'PUT', NULL, NULL, NULL, 510);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/role/:id', 'DELETE', NULL, NULL, NULL, 511);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/configList', 'GET', NULL, NULL, NULL, 512);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/config/:id', 'GET', NULL, NULL, NULL, 513);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 514);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/config', 'POST', NULL, NULL, NULL, 515);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/config', 'PUT', NULL, NULL, NULL, 516);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/config/:id', 'DELETE', NULL, NULL, NULL, 517);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menurole', 'GET', NULL, NULL, NULL, 518);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/roleMenuTreeselect/:id', 'GET', NULL, NULL, NULL, 519);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL, 520);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/rolemenu', 'GET', NULL, NULL, NULL, 521);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/rolemenu', 'POST', NULL, NULL, NULL, 522);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/rolemenu/:id', 'DELETE', NULL, NULL, NULL, 523);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/deptList', 'GET', NULL, NULL, NULL, 524);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dept/:id', 'GET', NULL, NULL, NULL, 525);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dept', 'POST', NULL, NULL, NULL, 526);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dept', 'PUT', NULL, NULL, NULL, 527);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dept/:id', 'DELETE', NULL, NULL, NULL, 528);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/datalist', 'GET', NULL, NULL, NULL, 529);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/data/:id', 'GET', NULL, NULL, NULL, 530);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/databytype/:id', 'GET', NULL, NULL, NULL, 531);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/data', 'POST', NULL, NULL, NULL, 532);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/data/', 'PUT', NULL, NULL, NULL, 533);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/data/:id', 'DELETE', NULL, NULL, NULL, 534);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/typelist', 'GET', NULL, NULL, NULL, 535);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/type/:id', 'GET', NULL, NULL, NULL, 536);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/type', 'POST', NULL, NULL, NULL, 537);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/type', 'PUT', NULL, NULL, NULL, 538);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/type/:id', 'DELETE', NULL, NULL, NULL, 539);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/postlist', 'GET', NULL, NULL, NULL, 540);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/post/:id', 'GET', NULL, NULL, NULL, 541);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/post', 'POST', NULL, NULL, NULL, 542);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/post', 'PUT', NULL, NULL, NULL, 543);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/post/:id', 'DELETE', NULL, NULL, NULL, 544);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 545);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu/:id', 'GET', NULL, NULL, NULL, 546);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu', 'POST', NULL, NULL, NULL, 547);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu/:id', 'PUT', NULL, NULL, NULL, 548);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 549);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/menuids', 'GET', NULL, NULL, NULL, 550);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/loginloglist', 'GET', NULL, NULL, NULL, 551);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/loginlog/:id', 'DELETE', NULL, NULL, NULL, 552);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/operloglist', 'GET', NULL, NULL, NULL, 553);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/getinfo', 'GET', NULL, NULL, NULL, 554);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/roledatascope', 'PUT', NULL, NULL, NULL, 555);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL, 556);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/deptTree', 'GET', NULL, NULL, NULL, 557);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 558);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/logout', 'POST', NULL, NULL, NULL, 559);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL, 560);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL, 561);
INSERT INTO `casbin_rule` VALUES ('p', 'common', '/api/v1/dict/typeoptionselect', 'GET', NULL, NULL, NULL, 562);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 563);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu', 'POST', NULL, NULL, NULL, 564);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/databytype/', 'GET', NULL, NULL, NULL, 565);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu', 'PUT', NULL, NULL, NULL, 566);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 567);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUserList', 'GET', NULL, NULL, NULL, 568);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser/:id', 'GET', NULL, NULL, NULL, 569);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser/', 'GET', NULL, NULL, NULL, 570);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser', 'POST', NULL, NULL, NULL, 571);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser', 'PUT', NULL, NULL, NULL, 572);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/sysUser/:id', 'DELETE', NULL, NULL, NULL, 573);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/user/profile', 'GET', NULL, NULL, NULL, 574);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolelist', 'GET', NULL, NULL, NULL, 575);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role/:id', 'GET', NULL, NULL, NULL, 576);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role', 'POST', NULL, NULL, NULL, 577);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role', 'PUT', NULL, NULL, NULL, 578);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/role/:id', 'DELETE', NULL, NULL, NULL, 579);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/configList', 'GET', NULL, NULL, NULL, 580);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config/:id', 'GET', NULL, NULL, NULL, 581);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 582);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config', 'POST', NULL, NULL, NULL, 583);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config', 'PUT', NULL, NULL, NULL, 584);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/config/:id', 'DELETE', NULL, NULL, NULL, 585);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menurole', 'GET', NULL, NULL, NULL, 586);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/roleMenuTreeselect/:id', 'GET', NULL, NULL, NULL, 587);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menuTreeselect', 'GET', NULL, NULL, NULL, 588);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolemenu', 'GET', NULL, NULL, NULL, 589);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolemenu', 'POST', NULL, NULL, NULL, 590);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/rolemenu/:id', 'DELETE', NULL, NULL, NULL, 591);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/deptList', 'GET', NULL, NULL, NULL, 592);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept/:id', 'GET', NULL, NULL, NULL, 593);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept', 'POST', NULL, NULL, NULL, 594);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept', 'PUT', NULL, NULL, NULL, 595);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dept/:id', 'DELETE', NULL, NULL, NULL, 596);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/datalist', 'GET', NULL, NULL, NULL, 597);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data/:id', 'GET', NULL, NULL, NULL, 598);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/databytype/:id', 'GET', NULL, NULL, NULL, 599);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data', 'POST', NULL, NULL, NULL, 600);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data/', 'PUT', NULL, NULL, NULL, 601);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/data/:id', 'DELETE', NULL, NULL, NULL, 602);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/typelist', 'GET', NULL, NULL, NULL, 603);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type/:id', 'GET', NULL, NULL, NULL, 604);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type', 'POST', NULL, NULL, NULL, 605);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type', 'PUT', NULL, NULL, NULL, 606);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/type/:id', 'DELETE', NULL, NULL, NULL, 607);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/postlist', 'GET', NULL, NULL, NULL, 608);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post/:id', 'GET', NULL, NULL, NULL, 609);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post', 'POST', NULL, NULL, NULL, 610);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post', 'PUT', NULL, NULL, NULL, 611);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/post/:id', 'DELETE', NULL, NULL, NULL, 612);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menulist', 'GET', NULL, NULL, NULL, 613);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'GET', NULL, NULL, NULL, 614);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu', 'POST', NULL, NULL, NULL, 615);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'PUT', NULL, NULL, NULL, 616);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menu/:id', 'DELETE', NULL, NULL, NULL, 617);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/menuids', 'GET', NULL, NULL, NULL, 618);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/loginloglist', 'GET', NULL, NULL, NULL, 619);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/loginlog/:id', 'DELETE', NULL, NULL, NULL, 620);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/operloglist', 'GET', NULL, NULL, NULL, 621);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/getinfo', 'GET', NULL, NULL, NULL, 622);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/roledatascope', 'PUT', NULL, NULL, NULL, 623);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/roleDeptTreeselect/:id', 'GET', NULL, NULL, NULL, 624);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/deptTree', 'GET', NULL, NULL, NULL, 625);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/configKey/:id', 'GET', NULL, NULL, NULL, 626);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/logout', 'POST', NULL, NULL, NULL, 627);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/user/avatar', 'POST', NULL, NULL, NULL, 628);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/user/pwd', 'PUT', NULL, NULL, NULL, 629);
INSERT INTO `casbin_rule` VALUES ('p', 'admin', '/api/v1/dict/typeoptionselect', 'GET', NULL, NULL, NULL, 630);
COMMIT;

-- ----------------------------
-- Table structure for sys_columns
-- ----------------------------
DROP TABLE IF EXISTS `sys_columns`;
CREATE TABLE `sys_columns` (
  `column_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) DEFAULT NULL,
  `column_name` varchar(128) DEFAULT NULL,
  `column_comment` varchar(128) DEFAULT NULL,
  `column_type` varchar(128) DEFAULT NULL,
  `go_type` varchar(128) DEFAULT NULL,
  `go_field` varchar(128) DEFAULT NULL,
  `json_field` varchar(128) DEFAULT NULL,
  `is_pk` char(4) DEFAULT NULL,
  `is_increment` char(4) DEFAULT NULL,
  `is_required` char(4) DEFAULT NULL,
  `is_insert` char(4) DEFAULT NULL,
  `is_edit` char(4) DEFAULT NULL,
  `is_list` char(4) DEFAULT NULL,
  `is_query` char(4) DEFAULT NULL,
  `query_type` varchar(128) DEFAULT NULL,
  `html_type` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `sort` int(4) DEFAULT NULL,
  `list` char(1) DEFAULT NULL,
  `pk` char(1) DEFAULT NULL,
  `required` char(1) DEFAULT NULL,
  `super_column` char(1) DEFAULT NULL,
  `usable_column` char(1) DEFAULT NULL,
  `increment` char(1) DEFAULT NULL,
  `insert` char(1) DEFAULT NULL,
  `edit` char(1) DEFAULT NULL,
  `query` char(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_By` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`column_id`),
  KEY `idx_sys_columns_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_columns
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `config_name` varchar(128) DEFAULT NULL,
  `config_key` varchar(128) DEFAULT NULL,
  `config_value` varchar(255) DEFAULT NULL,
  `config_type` varchar(64) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`config_id`),
  KEY `idx_sys_config_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys_index_skinName', 'skin-blue', 'Y', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow', '1', '1', '2020-02-29 10:37:48', '2020-04-08 13:03:21', NULL);
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', '初始化密码 123456', '1', '1', '2020-02-29 10:38:23', '2020-03-11 00:35:28', NULL);
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys_index_sideTheme', 'theme-dark', 'Y', '深色主题theme-dark，浅色主题theme-light', '1', '1', '2020-02-29 10:39:01', '2020-04-07 23:21:50', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `dept_path` varchar(255) DEFAULT NULL,
  `dept_name` varchar(128) DEFAULT NULL,
  `sort` int(4) DEFAULT NULL,
  `leader` varchar(128) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dept_id`),
  KEY `idx_sys_dept_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (1, 0, '/0/1', '爱拓科技', 0, 'aituo', '13782218188', 'atuo@aituo.com', 0, '1', '1', '2020-02-27 15:30:19', '2020-03-10 21:09:21', NULL);
INSERT INTO `sys_dept` VALUES (7, 1, '/0/1/7', '研发部', 1, '', '', '', 0, '1', '1', '2020-03-08 23:10:59', '2020-04-08 13:00:03', NULL);
INSERT INTO `sys_dept` VALUES (8, 1, '/0/1/8', '运维部', 0, '', '', '', 0, '1', NULL, '2020-03-08 23:11:08', '2020-03-10 16:50:27', NULL);
INSERT INTO `sys_dept` VALUES (9, 1, '/0/1/9', '客服部', 0, '', '', '', 0, '1', NULL, '2020-03-08 23:11:15', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dept` VALUES (10, 1, '/0/1/10', '人力资源', 3, '张三', '', '', 1, '1', '1', '2020-04-07 23:48:38', '2020-04-07 23:48:46', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` int(11) NOT NULL AUTO_INCREMENT,
  `dict_sort` int(4) DEFAULT NULL,
  `dict_label` varchar(128) DEFAULT NULL,
  `dict_value` varchar(255) DEFAULT NULL,
  `dict_type` varchar(64) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `list_class` varchar(128) DEFAULT NULL,
  `is_default` varchar(8) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `default` varchar(8) DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dict_code`),
  KEY `idx_sys_dict_data_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` VALUES (1, 0, '正常', '0', 'sys_normal_disable', '', '', '', 0, '', '1', '', '系统正常', '2020-02-28 20:55:34', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (2, 0, '停用', '1', 'sys_normal_disable', '', '', '', 0, '', '1', '', '系统停用', '2020-02-28 21:10:41', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (3, 0, '男', '0', 'sys_user_sex', '', '', '', 0, '', '1', '', '性别男', '2020-02-28 21:37:28', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (4, 0, '女', '1', 'sys_user_sex', '', '', '', 0, '', '1', '', '性别女', '2020-02-28 21:37:40', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (5, 0, '未知', '2', 'sys_user_sex', '', '', '', 0, '', '1', '', '性别未知', '2020-02-28 21:38:05', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (6, 0, '显示', '0', 'sys_show_hide', '', '', '', 0, '', '1', '', '显示菜单', '2020-02-28 21:38:36', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (7, 0, '隐藏', '1', 'sys_show_hide', '', '', '', 0, '', '1', '', '隐藏菜单', '2020-02-28 21:38:50', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (8, 0, '是', 'Y', 'sys_yes_no', '', '', '', 0, '', '1', '', '系统默认是', '2020-02-28 21:39:40', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (9, 0, '否', 'N', 'sys_yes_no', '', '', '', 0, '', '1', '', '系统默认否', '2020-02-28 21:40:06', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (10, 0, '正常', '0', 'sys_job_status', '', '', '', 0, '', '1', '', '正常状态', '2020-02-28 21:41:02', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (11, 0, '停用', '1', 'sys_job_status', '', '', '', 0, '', '1', '', '停用状态', '2020-02-28 21:41:15', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (12, 0, '默认', 'DEFAULT', 'sys_job_group', '', '', '', 0, '', '1', '', '默认分组', '2020-02-28 21:41:48', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (13, 0, '系统', 'SYSTEM', 'sys_job_group', '', '', '', 0, '', '1', '', '系统分组', '2020-02-28 21:42:02', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (14, 0, '通知', '1', 'sys_notice_type', '', '', '', 0, '', '1', '', '通知', '2020-02-28 21:42:43', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (15, 0, '公告', '2', 'sys_notice_type', '', '', '', 0, '', '1', '', '公告', '2020-02-28 21:42:53', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (16, 0, '正常', '0', 'sys_common_status', '', '', '', 0, '', '1', '', '正常状态', '2020-02-28 21:43:21', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (17, 0, '关闭', '1', 'sys_common_status', '', '', '', 0, '', '1', '', '关闭状态', '2020-02-28 21:43:31', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (18, 0, '新增', '1', 'sys_oper_type', '', '', '', 0, '', '1', '', '新增操作', '2020-02-28 21:44:14', '2020-02-28 22:00:22', NULL);
INSERT INTO `sys_dict_data` VALUES (19, 0, '修改', '2', 'sys_oper_type', '', '', '', 0, '', '1', '', '修改操作', '2020-02-28 21:44:34', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (20, 0, '删除', '3', 'sys_oper_type', '', '', '', 0, '', '1', '', '删除操作', '2020-02-28 21:44:52', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (21, 0, '授权', '4', 'sys_oper_type', '', '', '', 0, '', '1', '', '授权操作', '2020-02-28 21:45:18', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (22, 0, '导出', '5', 'sys_oper_type', '', '', '', 0, '', '1', '', '导出操作', '2020-02-28 21:45:44', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (23, 0, '导入', '6', 'sys_oper_type', '', '', '', 0, '', '1', '', '导入操作', '2020-02-28 21:46:02', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (24, 0, '强退', '7', 'sys_oper_type', '', '', '', 0, '', '1', '', '强退操作', '2020-02-28 21:46:25', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (25, 0, '生成代码', '8', 'sys_oper_type', '', '', '', 0, '', '1', '', '生成操作', '2020-02-28 21:46:53', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (26, 0, '清空数据', '9', 'sys_oper_type', '', '', '', 0, '', '1', '', '清空操作', '2020-02-28 21:47:15', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (27, 0, '成功', '0', 'sys_notice_status', '', '', '', 0, '', '1', '', '成功状态', '2020-02-28 22:03:24', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (28, 0, '失败', '1', 'sys_notice_status', '', '', '', 0, '', '1', '', '失败状态', '2020-02-28 22:03:39', '2020-03-08 23:11:15', NULL);
INSERT INTO `sys_dict_data` VALUES (29, 0, '登录', '10', 'sys_oper_type', '', '', '', 0, '', '1', '1', '登录操作', '2020-03-15 18:35:23', '2020-03-15 18:39:30', NULL);
INSERT INTO `sys_dict_data` VALUES (30, 0, '退出', '11', 'sys_oper_type', '', '', '', 0, '', '1', '', '', '2020-03-15 18:35:39', '2020-03-15 18:35:39', NULL);
INSERT INTO `sys_dict_data` VALUES (31, 0, '获取验证码', '12', 'sys_oper_type', '', '', '', 0, '', '1', '', '获取验证码', '2020-03-15 18:38:42', '2020-03-15 18:35:39', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` int(11) NOT NULL AUTO_INCREMENT,
  `dict_name` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `create_by` varchar(11) DEFAULT NULL,
  `update_by` varchar(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`dict_id`),
  KEY `idx_sys_dict_type_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` VALUES (1, '系统开关', 'sys_normal_disable', 0, '1', '1', '系统开关列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (2, '用户性别', 'sys_user_sex', 0, '1', '', '用户性别列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (3, '菜单状态', 'sys_show_hide', 0, '1', '', '菜单状态列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (4, '系统是否', 'sys_yes_no', 0, '1', '', '系统是否列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (5, '任务状态', 'sys_job_status', 0, '1', '', '任务状态列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (6, '任务分组', 'sys_job_group', 0, '1', '', '任务分组列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', 0, '1', '', '通知类型列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (8, '系统状态', 'sys_common_status', 0, '1', '', '登录状态列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', 0, '1', '', '操作类型列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (10, '通知状态', 'sys_notice_status', 0, '1', '', '通知状态列表', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (11, '1', '1', 1, '1', '1', '1', '2020-04-11 15:52:48', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_loginlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginlog`;
CREATE TABLE `sys_loginlog` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddr` varchar(255) DEFAULT NULL,
  `login_location` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_loginlog_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_loginlog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `path` varchar(128) DEFAULT NULL,
  `paths` varchar(128) DEFAULT NULL,
  `menu_type` varchar(1) DEFAULT NULL,
  `action` varchar(16) DEFAULT NULL,
  `permission` varchar(32) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `no_cache` char(1) DEFAULT NULL,
  `breadcrumb` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `sort` int(4) DEFAULT NULL,
  `visible` char(1) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `is_frame` int(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`),
  KEY `idx_sys_menu_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (2, 'Upms', '系统管理', 'example', '/upms', '/0/2', 'M', '无', '', 0, '1', '', 'Layout', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (3, 'Sysuser', '用户管理', 'user', 'sysuser', '/0/2/3', 'C', '无', 'system:sysuser:list', 2, NULL, NULL, '/sysuser/index', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 11:10:42', NULL);
INSERT INTO `sys_menu` VALUES (43, NULL, '新增用户', NULL, '/api/v1/sysuser', '/0/2/3/43', 'F', 'POST', 'system:sysuser:add', 3, NULL, NULL, NULL, 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (44, NULL, '查询用户', NULL, '/api/v1/sysuser', '/0/2/3/44', 'F', 'GET', 'system:sysuser:query', 3, NULL, NULL, NULL, 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (45, NULL, '修改用户', NULL, '/api/v1/sysuser/', '/0/2/3/45', 'F', 'PUT', 'system:sysuser:edit', 3, NULL, NULL, NULL, 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (46, NULL, '删除用户', NULL, '/api/v1/sysuser/', '/0/2/3/46', 'F', 'DELETE', 'system:sysuser:remove', 3, NULL, NULL, NULL, 0, '0', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 15:32:45', NULL);
INSERT INTO `sys_menu` VALUES (51, 'Menu', '菜单管理', 'tree-table', 'menu', '/0/2/51', 'C', '无', 'system:sysmenu:list', 2, '1', '', '/menu/index', 3, '0', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 11:16:30', NULL);
INSERT INTO `sys_menu` VALUES (52, 'Role', '角色管理', 'peoples', 'role', '/0/2/52', 'C', '无', 'system:sysrole:list', 2, '1', '', '/role/index', 2, '0', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 11:16:19', NULL);
INSERT INTO `sys_menu` VALUES (56, 'Dept', '部门管理', 'tree', 'dept', '/0/2/56', 'C', '无', 'system:sysdept:list', 2, '0', '', '/dept/index', 4, '0', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 11:16:47', NULL);
INSERT INTO `sys_menu` VALUES (57, 'post', '岗位管理', 'pass', 'post', '/0/2/57', 'C', '无', 'system:syspost:list', 2, '0', '', '/post/index', 5, '0', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 11:16:53', NULL);
INSERT INTO `sys_menu` VALUES (58, 'Dict', '字典管理', 'education', 'dict', '/0/2/58', 'C', '无', 'system:sysdicttype:list', 2, '0', '', '/dict/index', 6, '0', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 11:17:04', NULL);
INSERT INTO `sys_menu` VALUES (59, 'DictData', '字典数据', 'education', 'dict/data/:dictId', '/0/2/59', 'C', '无', 'system:sysdictdata:list', 2, '0', '', '/dict/data', 100, '1', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 11:17:25', NULL);
INSERT INTO `sys_menu` VALUES (60, 'Tools', '系统工具', 'component', '/tools', '/0/60', 'M', '无', '', 0, '0', '', 'Layout', 3, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (61, 'Swagger', '系统接口', 'guide', 'swagger', '/0/60/61', 'C', '无', '', 60, '0', '', '/tools/swagger/index', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (62, 'Config', '参数设置', 'list', '/config', '/0/2/62', 'C', '无', 'system:sysconfig:list', 2, '0', '', '/config/index', 7, '0', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 11:17:16', NULL);
INSERT INTO `sys_menu` VALUES (63, '', '接口权限', 'bug', '', '/0/63', 'M', '', '', 0, '0', '', '', 99, '1', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 16:39:32', NULL);
INSERT INTO `sys_menu` VALUES (64, '', '用户管理', 'user', '', '/0/63/64', 'M', '', '', 63, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (66, '', '菜单管理', 'tree-table', '', '/0/63/66', 'C', '', '', 63, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (67, '', '菜单列表', 'tree-table', '/api/v1/menulist', '/0/63/66/67', 'A', 'GET', '', 66, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (68, '', '新建菜单', 'tree', '/api/v1/menu', '/0/63/66/68', 'A', 'POST', '', 66, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (69, '', '字典', 'dict', '', '/0/63/69', 'M', '', '', 63, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (70, '', '类型', 'dict', '', '/0/63/69/70', 'C', '', '', 69, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (71, '', '字典类型获取', 'tree', '/api/v1/dict/databytype/', '/0/63/256/71', 'A', 'GET', '', 256, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (72, '', '修改菜单', 'bug', '/api/v1/menu', '/0/63/66/72', 'A', 'PUT', '', 66, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (73, '', '删除菜单', 'bug', '/api/v1/menu/:id', '/0/63/66/73', 'A', 'DELETE', '', 66, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (74, NULL, '管理员列表', 'bug', '/api/v1/sysUserList', '/0/63/64/74', 'A', 'GET', NULL, 64, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (75, NULL, '根据id获取管理员', 'bug', '/api/v1/sysUser/:id', '/0/63/64/75', 'A', 'GET', NULL, 64, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (76, NULL, '获取管理员', 'bug', '/api/v1/sysUser/', '/0/63/64/76', 'A', 'GET', NULL, 64, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (77, NULL, '创建管理员', 'bug', '/api/v1/sysUser', '/0/63/64/77', 'A', 'POST', NULL, 64, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (78, NULL, '修改管理员', 'bug', '/api/v1/sysUser', '/0/63/64/78', 'A', 'PUT', NULL, 64, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (79, NULL, '删除管理员', 'bug', '/api/v1/sysUser/:id', '/0/63/64/79', 'A', 'DELETE', NULL, 64, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (80, NULL, '当前用户个人信息', 'bug', '/api/v1/user/profile', '/0/63/256/267/80', 'A', 'GET', NULL, 267, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', '2020-05-03 20:50:40', NULL);
INSERT INTO `sys_menu` VALUES (81, NULL, '角色列表', 'bug', '/api/v1/rolelist', '/0/63/201/81', 'A', 'GET', NULL, 201, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (82, NULL, '获取角色信息', 'bug', '/api/v1/role/:id', '/0/63/201/82', 'A', 'GET', NULL, 201, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (83, NULL, '创建角色', 'bug', '/api/v1/role', '/0/63/201/83', 'A', 'POST', NULL, 201, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (84, NULL, '修改角色', 'bug', '/api/v1/role', '/0/63/201/84', 'A', 'PUT', NULL, 201, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (85, NULL, '删除角色', 'bug', '/api/v1/role/:id', '/0/63/201/85', 'A', 'DELETE', NULL, 201, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (86, NULL, '参数列表', 'bug', '/api/v1/configList', '/0/63/202/86', 'A', 'GET', NULL, 202, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (87, NULL, '根据id获取参数', 'bug', '/api/v1/config/:id', '/0/63/202/87', 'A', 'GET', NULL, 202, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (88, NULL, '根据key获取参数', 'bug', '/api/v1/configKey/:id', '/0/63/256/88', 'A', 'GET', NULL, 256, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', '2020-05-03 20:54:37', NULL);
INSERT INTO `sys_menu` VALUES (89, NULL, '创建参数', 'bug', '/api/v1/config', '/0/63/202/89', 'A', 'POST', NULL, 202, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (90, NULL, '修改参数', 'bug', '/api/v1/config', '/0/63/202/90', 'A', 'PUT', NULL, 202, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (91, NULL, '删除参数', 'bug', '/api/v1/config/:id', '/0/63/202/91', 'A', 'DELETE', NULL, 202, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (92, NULL, '获取角色菜单', 'bug', '/api/v1/menurole', '/0/63/201/92', 'A', 'GET', NULL, 201, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (93, NULL, '根据角色id获取角色', 'bug', '/api/v1/roleMenuTreeselect/:id', '/0/63/201/93', 'A', 'GET', NULL, 201, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (94, NULL, '获取菜单树', 'bug', '/api/v1/menuTreeselect', '/0/63/256/94', 'A', 'GET', NULL, 256, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', '2020-05-03 20:52:11', NULL);
INSERT INTO `sys_menu` VALUES (95, NULL, '获取角色菜单', 'bug', '/api/v1/rolemenu', '/0/63/205/95', 'A', 'GET', NULL, 205, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (96, NULL, '创建角色菜单', 'bug', '/api/v1/rolemenu', '/0/63/205/96', 'A', 'POST', NULL, 205, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (97, NULL, '删除用户菜单数据', 'bug', '/api/v1/rolemenu/:id', '/0/63/205/97', 'A', 'DELETE', NULL, 205, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (103, NULL, '部门菜单列表', 'bug', '/api/v1/deptList', '/0/63/203/103', 'A', 'GET', NULL, 203, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (104, NULL, '根据id获取部门信息', 'bug', '/api/v1/dept/:id', '/0/63/203/104', 'A', 'GET', NULL, 203, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (105, NULL, '创建部门', 'bug', '/api/v1/dept', '/0/63/203/105', 'A', 'POST', NULL, 203, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (106, NULL, '修改部门', 'bug', '/api/v1/dept', '/0/63/203/106', 'A', 'PUT', NULL, 203, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (107, NULL, '删除部门', 'bug', '/api/v1/dept/:id', '/0/63/203/107', 'A', 'DELETE', NULL, 203, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (108, NULL, '字典数据列表', 'bug', '/api/v1/dict/datalist', '/0/63/69/206/108', 'A', 'GET', NULL, 206, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (109, NULL, '通过编码获取字典数据', 'bug', '/api/v1/dict/data/:id', '/0/63/69/206/109', 'A', 'GET', NULL, 206, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (110, NULL, '通过字典类型获取字典数据', 'bug', '/api/v1/dict/databytype/:id', '/0/63/256/110', 'A', 'GET', NULL, 256, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (111, NULL, '创建字典数据', 'bug', '/api/v1/dict/data', '/0/63/69/206/111', 'A', 'POST', NULL, 206, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (112, NULL, '修改字典数据', 'bug', '/api/v1/dict/data/', '/0/63/69/206/112', 'A', 'PUT', NULL, 206, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (113, NULL, '删除字典数据', 'bug', '/api/v1/dict/data/:id', '/0/63/69/206/113', 'A', 'DELETE', NULL, 206, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (114, NULL, '字典类型列表', 'bug', '/api/v1/dict/typelist', '/0/63/69/70/114', 'A', 'GET', NULL, 70, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (115, NULL, '通过id获取字典类型', 'bug', '/api/v1/dict/type/:id', '/0/63/69/70/115', 'A', 'GET', NULL, 70, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (116, NULL, '创建字典类型', 'bug', '/api/v1/dict/type', '/0/63/69/70/116', 'A', 'POST', NULL, 70, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (117, NULL, '修改字典类型', 'bug', '/api/v1/dict/type', '/0/63/69/70/117', 'A', 'PUT', NULL, 70, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (118, NULL, '删除字典类型', 'bug', '/api/v1/dict/type/:id', '/0/63/69/70/118', 'A', 'DELETE', NULL, 70, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (119, NULL, '获取岗位列表', 'bug', '/api/v1/postlist', '/0/63/204/119', 'A', 'GET', NULL, 204, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (120, NULL, '通过id获取岗位信息', 'bug', '/api/v1/post/:id', '/0/63/204/120', 'A', 'GET', NULL, 204, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (121, NULL, '创建岗位', 'bug', '/api/v1/post', '/0/63/204/121', 'A', 'POST', NULL, 204, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (122, NULL, '修改岗位', 'bug', '/api/v1/post', '/0/63/204/122', 'A', 'PUT', NULL, 204, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (123, NULL, '删除岗位', 'bug', '/api/v1/post/:id', '/0/63/204/123', 'A', 'DELETE', NULL, 204, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (137, NULL, '菜单列表', 'bug', '/api/v1/menulist', '/0/63/66/137', 'A', 'GET', NULL, 66, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (138, NULL, '获取根据id菜单信息', 'bug', '/api/v1/menu/:id', '/0/63/66/138', 'A', 'GET', NULL, 66, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (139, NULL, '创建菜单', 'bug', '/api/v1/menu', '/0/63/66/139', 'A', 'POST', NULL, 66, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (140, NULL, '修改菜单', 'bug', '/api/v1/menu/:id', '/0/63/66/140', 'A', 'PUT', NULL, 66, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (141, NULL, '删除菜单', 'bug', '/api/v1/menu/:id', '', 'A', 'DELETE', NULL, 66, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (142, NULL, '获取角色对应的菜单id数组', 'bug', '/api/v1/menuids', '/0/63/256/142', 'A', 'GET', NULL, 256, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (201, '', '角色管理', 'peoples', '', '/0/63/201', 'C', 'GET', '', 63, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (202, '', '参数设置', 'list', '', '/0/63/202', 'C', 'DELETE', '', 63, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (203, '', '部门管理', 'tree', '', '/0/63/203', 'C', 'POST', '', 63, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (204, '', '岗位管理', 'pass', '', '/0/63/204', 'C', '', '', 63, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (205, '', '角色菜单管理', 'nested', '', '/0/63/205', 'C', '', '', 63, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (206, '', '数据', '', '', '/0/63/69/206', 'C', 'PUT', '', 69, '0', '', '', 2, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (211, 'Log', '日志管理', 'log', '/log', '/0/2/211', 'M', '', '', 2, '0', '', '/log/index', 8, '0', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 11:15:32', NULL);
INSERT INTO `sys_menu` VALUES (212, 'LoginLog', '登录日志', 'logininfor', '/loginlog', '/0/2/211/212', 'C', '', 'system:sysloginlog:list', 211, '0', '', '/loginlog/index', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (213, NULL, '获取登录日志', 'bug', '/api/v1/loginloglist', '/0/63/214/213', 'A', 'GET', NULL, 214, NULL, NULL, NULL, 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (214, '', '日志管理', 'log', '', '/0/63/214', 'M', 'GET', '', 63, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (215, '', '删除日志', 'bug', '/api/v1/loginlog/:id', '/0/63/214/215', 'A', 'DELETE', '', 214, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (216, 'OperLog', '操作日志', 'skill', '/operlog', '/0/2/211/216', 'C', '', 'system:sysoperlog:list', 211, '0', '', '/operlog/index', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (217, '', '获取操作日志', 'bug', '/api/v1/operloglist', '/0/63/214/217', 'A', 'GET', '', 214, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (220, '', '新增菜单', '', '', '/0/2/51/220', 'F', '', 'system:sysmenu:add', 51, '0', '', '', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (221, '', '修改菜单', 'edit', '', '/0/2/51/221', 'F', '', 'system:sysmenu:edit', 51, '0', '', '', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (222, '', '查询菜单', 'search', '', '/0/2/51/222', 'F', '', 'system:sysmenu:query', 51, '0', '', '', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (223, '', '删除菜单', '', '', '/0/2/51/223', 'F', '', 'system:sysmenu:remove', 51, '0', '', '', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (224, '', '新增角色', '', '', '/0/2/52/224', 'F', '', 'system:sysrole:add', 52, '0', '', '', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (225, '', '查询角色', '', '', '/0/2/52/225', 'F', '', 'system:sysrole:query', 52, '0', '', '', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (226, '', '修改角色', '', '', '/0/2/52/226', 'F', '', 'system:sysrole:edit', 52, '0', '', '', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (227, '', '删除角色', '', '', '/0/2/52/227', 'F', '', 'system:sysrole:remove', 52, '0', '', '', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (228, '', '查询部门', '', '', '/0/2/56/228', 'F', '', 'system:sysdept:query', 56, '0', '', '', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (229, '', '新增部门', '', '', '/0/2/56/229', 'F', '', 'system:sysdept:add', 56, '0', '', '', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (230, '', '修改部门', '', '', '/0/2/56/230', 'F', '', 'system:sysdept:edit', 56, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (231, '', '删除部门', '', '', '/0/2/56/231', 'F', '', 'system:sysdept:remove', 56, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (232, '', '查询岗位', '', '', '/0/2/57/232', 'F', '', 'system:syspost:query', 57, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (233, '', '新增岗位', '', '', '/0/2/57/233', 'F', '', 'system:syspost:add', 57, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (234, '', '修改岗位', '', '', '/0/2/57/234', 'F', '', 'system:syspost:edit', 57, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (235, '', '删除岗位', '', '', '/0/2/57/235', 'F', '', 'system:syspost:remove', 57, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (236, '', '字典查询', '', '', '/0/2/58/236', 'F', '', 'system:sysdicttype:query', 58, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (237, '', '新增类型', '', '', '/0/2/58/237', 'F', '', 'system:sysdicttype:add', 58, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (238, '', '修改类型', '', '', '/0/2/58/238', 'F', '', 'system:sysdicttype:edit', 58, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (239, '', '删除类型', '', '', '/0/2/58/239', 'F', '', 'system:sysdicttype:remove', 58, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (240, '', '查询数据', '', '', '/0/2/59/240', 'F', '', 'system:sysdictdata:query', 59, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (241, '', '新增数据', '', '', '/0/2/59/241', 'F', '', 'system:sysdictdata:add', 59, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (242, '', '修改数据', '', '', '/0/2/59/242', 'F', '', 'system:sysdictdata:edit', 59, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (243, '', '删除数据', '', '', '/0/2/59/243', 'F', '', 'system:sysdictdata:remove', 59, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (244, '', '查询参数', '', '', '/0/2/62/244', 'F', '', 'system:sysconfig:query', 62, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (245, '', '新增参数', '', '', '/0/2/62/245', 'F', '', 'system:sysconfig:add', 62, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (246, '', '修改参数', '', '', '/0/2/62/246', 'F', '', 'system:sysconfig:edit', 62, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (247, '', '删除参数', '', '', '/0/2/62/247', 'F', '', 'system:sysconfig:remove', 62, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (248, '', '查询登录日志', '', '', '/0/2/211/212/248', 'F', '', 'system:sysloginlog:query', 212, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (249, '', '删除登录日志', '', '', '/0/2/211/212/249', 'F', '', 'system:sysloginlog:remove', 212, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (250, '', '查询操作日志', '', '', '/0/2/211/216/250', 'F', '', 'system:sysoperlog:query', 216, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (251, '', '删除操作日志', '', '', '/0/2/211/216/251', 'F', '', 'system:sysoperlog:remove', 216, '0', '', '', 0, '0', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (252, '', '获取登录用户信息', '', '/api/v1/getinfo', '/0/63/256/252', 'A', 'GET', '', 256, '0', '', '', 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (253, '', '角色数据权限', '', '/api/v1/roledatascope', '/0/63/201/253', 'A', 'PUT', '', 201, '0', '', '', 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (254, '', '部门树接口【数据权限】', '', '/api/v1/roleDeptTreeselect/:id', '/0/63/256/254', 'A', 'GET', '', 256, '0', '', '', 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (255, '', '部门树【用户列表】', '', '/api/v1/deptTree', '/0/63/256/255', 'A', 'GET', '', 256, '0', '', '', 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (256, '', '必开接口', '', '', '/0/63/256', 'M', 'GET', '', 63, '0', '', '', 0, '1', '1', '', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (257, '', '通过key获取参数', 'bug', '/api/v1/configKey/:id', '/0/63/256/257', 'A', 'GET', '', 256, '0', '', '', 1, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (258, '', '退出登录', '', '/api/v1/logout', '/0/63/256/258', 'A', 'POST', '', 256, '0', '', '', 0, '1', '1', '1', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (259, '', '头像上传', '', '/api/v1/user/avatar', '/0/63/256/267/259', 'A', 'POST', '', 267, '0', '', '', 0, '1', '1', '1', 0, '2020-04-11 15:52:48', '2020-05-03 20:50:05', NULL);
INSERT INTO `sys_menu` VALUES (260, '', '修改密码', '', '/api/v1/user/pwd', '/0/63/256/260', 'A', 'PUT', '', 256, '0', '', '', 0, '1', '1', '', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (261, 'Gen', '代码生成', 'code', 'gen', '/0/60/261', 'C', '', '', 60, '0', '', '/tools/gen/index', 2, '0', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 11:18:12', NULL);
INSERT INTO `sys_menu` VALUES (262, 'EditTable', '代码生成修改', 'build', 'editTable', '/0/60/262', 'C', '', '', 60, '0', '', '/tools/gen/editTable', 100, '1', '1', '1', 0, '2020-04-11 15:52:48', '2020-05-03 20:38:36', NULL);
INSERT INTO `sys_menu` VALUES (263, '', '字典类型下拉框【生成功能】', '', '/api/v1/dict/typeoptionselect', '/0/63/256/263', 'A', 'GET', '', 256, '0', '', '', 0, '1', '1', '', 0, '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_menu` VALUES (264, 'Build', '表单构建', 'build', 'build', '/0/60/264', 'C', '', '', 60, '0', '', '/tools/build/index', 1, '0', '1', '1', 0, '2020-04-11 15:52:48', '2020-04-12 11:18:05', NULL);
INSERT INTO `sys_menu` VALUES (267, '', '个人中心', '', '', '/0/63/256/267', 'M', '', '', 256, '0', '', '', 0, '1', '1', '', 1, '2020-05-03 20:49:39', '2020-05-03 20:49:39', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_operlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_operlog`;
CREATE TABLE `sys_operlog` (
  `oper_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `business_type` varchar(128) DEFAULT NULL,
  `business_types` varchar(128) DEFAULT NULL,
  `method` varchar(128) DEFAULT NULL,
  `request_method` varchar(128) DEFAULT NULL,
  `operator_type` varchar(128) DEFAULT NULL,
  `oper_name` varchar(128) DEFAULT NULL,
  `dept_name` varchar(128) DEFAULT NULL,
  `oper_url` varchar(255) DEFAULT NULL,
  `oper_ip` varchar(128) DEFAULT NULL,
  `oper_location` varchar(128) DEFAULT NULL,
  `oper_param` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `oper_time` timestamp NULL DEFAULT NULL,
  `json_result` varchar(255) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `latency_time` varchar(128) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_operlog_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_operlog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_name` varchar(128) DEFAULT NULL,
  `post_code` varchar(128) DEFAULT NULL,
  `sort` int(4) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `idx_sys_post_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` VALUES (1, '首席执行官', 'CEO', 0, 0, '首席执行官', '1', '2020-03-08 23:11:15', '2020-04-11 15:52:48', NULL, NULL);
INSERT INTO `sys_post` VALUES (2, '首席技术执行官', 'CTO', 2, 0, '首席技术执行官', '1', '1', '2020-04-11 15:52:48', '2020-05-03 20:58:01', NULL);
INSERT INTO `sys_post` VALUES (3, '首席运营官', 'COO', 3, 0, '测试工程师', '1', '1', '2020-04-11 15:52:48', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(128) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `role_key` varchar(128) DEFAULT NULL,
  `role_sort` int(4) DEFAULT NULL,
  `flag` varchar(128) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `admin` char(1) DEFAULT NULL,
  `data_scope` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `idx_sys_role_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '系统管理员', 0, 'admin', 1, NULL, '1', NULL, NULL, '0', NULL, '2020-04-11 15:52:48', '2020-05-03 21:35:17', NULL);
INSERT INTO `sys_role` VALUES (2, '普通角色', 0, 'common', 2, NULL, '1', NULL, NULL, '0', '2', '2020-04-11 15:52:48', '2020-05-03 21:32:59', NULL);
INSERT INTO `sys_role` VALUES (3, '测试角色', 0, 'Tester', 3, '', '1', NULL, NULL, '0', NULL, '2020-04-11 15:52:48', '2020-04-12 14:10:52', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `role_name` varchar(128) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (2, 2, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 3, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 44, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 51, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 52, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 63, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 64, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 66, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 67, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 68, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 69, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 70, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 71, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 72, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 73, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 74, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 75, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 76, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 77, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 78, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 79, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 80, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 81, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 82, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 83, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 84, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 85, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 86, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 87, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 88, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 89, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 90, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 91, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 92, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 93, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 94, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 95, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 96, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 97, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 103, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 104, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 105, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 106, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 107, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 108, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 109, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 110, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 111, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 112, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 113, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 114, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 115, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 116, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 117, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 118, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 119, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 120, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 121, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 122, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 123, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 137, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 138, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 139, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 140, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 141, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 142, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 201, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 202, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 203, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 204, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 205, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 206, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 213, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 214, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 215, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 217, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 222, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 225, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 252, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 253, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 254, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 255, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 256, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 257, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 258, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 259, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 260, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 263, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (2, 267, 'common', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 2, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 3, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 43, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 44, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 45, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 46, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 51, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 52, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 56, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 57, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 58, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 59, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 60, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 61, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 62, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 63, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 64, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 66, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 67, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 68, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 69, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 70, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 71, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 72, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 73, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 74, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 75, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 76, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 77, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 78, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 79, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 80, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 81, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 82, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 83, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 84, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 85, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 86, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 87, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 88, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 89, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 90, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 91, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 92, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 93, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 94, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 95, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 96, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 97, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 103, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 104, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 105, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 106, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 107, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 108, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 109, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 110, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 111, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 112, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 113, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 114, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 115, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 116, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 117, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 118, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 119, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 120, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 121, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 122, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 123, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 137, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 138, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 139, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 140, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 141, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 142, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 201, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 202, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 203, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 204, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 205, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 206, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 211, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 212, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 213, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 214, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 215, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 216, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 217, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 220, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 221, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 222, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 223, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 224, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 225, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 226, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 227, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 228, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 229, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 230, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 231, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 232, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 233, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 234, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 235, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 236, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 237, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 238, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 239, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 240, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 241, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 242, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 243, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 244, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 245, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 246, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 247, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 248, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 249, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 250, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 251, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 252, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 253, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 254, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 255, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 256, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 257, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 258, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 259, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 260, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 261, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 262, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 263, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 264, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 267, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 92, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 93, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 94, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 95, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 96, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 97, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 103, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 104, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 105, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 106, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 107, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 108, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 109, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 110, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 111, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 112, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 113, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 114, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 115, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 116, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 117, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 118, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 119, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 120, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 121, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 122, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 123, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 137, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 138, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 139, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 140, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 141, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 142, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 201, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 202, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 203, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 204, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 205, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 206, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 211, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 212, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 213, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 214, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 215, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 216, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 217, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 220, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 221, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 222, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 223, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 224, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 225, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 226, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 227, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 228, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 229, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 230, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 231, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 232, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 233, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 234, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 235, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 236, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 237, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 238, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 239, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 240, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 241, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 242, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 243, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 244, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 245, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 246, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 247, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 248, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 249, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 250, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 251, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 252, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 253, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 254, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 255, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 256, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 257, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 258, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 259, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 260, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 261, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 262, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 263, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 264, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 267, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 92, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 93, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 94, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 95, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 96, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 97, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 103, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 104, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 105, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 106, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 107, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 108, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 109, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 110, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 111, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 112, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 113, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 114, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 115, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 116, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 117, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 118, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 119, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 120, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 121, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 122, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 123, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 137, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 138, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 139, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 140, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 141, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 142, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 201, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 202, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 203, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 204, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 205, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 206, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 211, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 212, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 213, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 214, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 215, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 216, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 217, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 220, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 221, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 222, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 223, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 224, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 225, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 226, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 227, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 228, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 229, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 230, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 231, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 232, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 233, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 234, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 235, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 236, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 237, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 238, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 239, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 240, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 241, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 242, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 243, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 244, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 245, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 246, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 247, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 248, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 249, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 250, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 251, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 252, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 253, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 254, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 255, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 256, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 257, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 258, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 259, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 260, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 261, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 262, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 263, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 264, 'admin', NULL, NULL);
INSERT INTO `sys_role_menu` VALUES (1, 267, 'admin', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_tables
-- ----------------------------
DROP TABLE IF EXISTS `sys_tables`;
CREATE TABLE `sys_tables` (
  `table_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) DEFAULT NULL,
  `table_comment` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `tpl_category` varchar(255) DEFAULT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `function_name` varchar(255) DEFAULT NULL,
  `function_author` varchar(255) DEFAULT NULL,
  `pk_column` varchar(255) DEFAULT NULL,
  `pk_go_field` varchar(255) DEFAULT NULL,
  `pk_json_field` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `tree_code` varchar(255) DEFAULT NULL,
  `tree_parent_code` varchar(255) DEFAULT NULL,
  `tree_name` varchar(255) DEFAULT NULL,
  `tree` char(1) DEFAULT NULL,
  `crud` char(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_logical_delete` char(1) DEFAULT NULL,
  `logical_delete` char(1) DEFAULT NULL,
  `logical_delete_column` varchar(128) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`table_id`),
  KEY `idx_sys_tables_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_tables
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(128) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `create_by` varchar(128) DEFAULT NULL,
  `update_by` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_sys_user_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'zhangwj', '13818888888', 1, NULL, '', '0', '1@qq.com', 1, 1, '1', '1', NULL, 0, '2019-11-10 14:05:55', '2020-05-03 20:45:59', NULL, 'admin', '$2a$10$cKFFTCzGOvaIHHJY2K45Zuwt8TD6oPzYi4s5MzYIBAWCLL6ZhouP2');
INSERT INTO `sys_user` VALUES (2, 'zhangwj', '13211111111', 3, NULL, NULL, '0', 'q@q.com', 8, 2, '1', '1', NULL, 0, '2019-11-12 18:28:27', '2020-03-14 20:08:43', NULL, 'zhangwj', '$2a$10$CqMwHahA3cNrNv16CoSxmeD4XMPU.BiKHPEAeaG5oXMavOKrjInXi');
INSERT INTO `sys_user` VALUES (3, '李四', '13838385438', 2, '', '', '0', 'qq@qq.com', 7, 2, '1', '1', '', 0, '2020-04-07 22:17:38', '2020-05-03 20:31:00', NULL, 'lisi', '$2a$10$DejldFea5.hGZGC7/oVN9OLDrHAWgu9l29RDz9FomLnWnro4umYl2');
INSERT INTO `sys_user` VALUES (4, '王五', '13535353535', 3, '', '', '2', 'qq@qq.com', 8, 2, '1', '1', '', 0, '2020-04-12 14:06:49', '2020-04-12 14:07:09', NULL, 'wangwu', '$2a$10$3.RT6rpXANXvvlibX6PzU.FGA2CvfDxd1UmJ2H5zTzF4sYocbvsTO');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
