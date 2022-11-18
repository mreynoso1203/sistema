/*
 Navicat Premium Data Transfer

 Source Server         : 172.21.8.50
 Source Server Type    : MySQL
 Source Server Version : 100231
 Source Host           : 172.21.8.50:3306
 Source Schema         : geochasq_bd_monitoreo

 Target Server Type    : MySQL
 Target Server Version : 100231
 File Encoding         : 65001

 Date: 25/09/2022 20:51:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NULL DEFAULT NULL,
  `layout` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'vertical / horizontal',
  `layout_mode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ligero / oscuro / data-layout-mode',
  `layout_width` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'fluid / en caja / data-layout-size',
  `layout_position` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'fijo / desplazable / data-layout-scrollable',
  `topbar_color` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ligero / oscuro / data-topbar',
  `sidebar_size` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'defecto / compacto / pequeña / data-sidebar-size',
  `sidebar_color` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ligero / oscuro / Brand',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 185, 'horizontal', 'light', 'fluid', 'false', 'dark', 'sm', 'dark');
INSERT INTO `settings` VALUES (2, 2, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (3, 100, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (4, 122, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (5, 177, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (6, 186, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (7, 187, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (8, 188, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (9, 189, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (10, 190, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (11, 191, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (12, 192, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (13, 193, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (14, 194, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (15, 195, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (16, 196, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (17, 198, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (18, 199, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (19, 228, 'horizontal', 'light', 'fluid', 'false', 'dark', 'sm', 'light');
INSERT INTO `settings` VALUES (20, 229, 'horizontal', 'light', 'fluid', 'false', 'dark', 'sm', 'light');
INSERT INTO `settings` VALUES (21, 230, 'horizontal', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (22, 231, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (23, 232, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (24, 233, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (25, 234, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (26, 236, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (27, 237, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (28, 238, 'vertical', 'light', 'fluid', 'false', 'light', 'sm', 'light');
INSERT INTO `settings` VALUES (29, 300, 'horizontal', 'light', 'fluid', 'false', 'dark', 'sm', 'light');
INSERT INTO `settings` VALUES (30, 303, 'horizontal', 'light', 'fluid', 'false', 'dark', 'sm', 'light');
INSERT INTO `settings` VALUES (31, 304, 'horizontal', 'light', 'fluid', 'false', 'dark', 'sm', 'light');
INSERT INTO `settings` VALUES (32, 307, 'horizontal', 'light', 'fluid', 'false', 'dark', 'sm', 'light');
INSERT INTO `settings` VALUES (33, 308, 'horizontal', 'light', 'fluid', 'false', 'dark', 'sm', 'light');

SET FOREIGN_KEY_CHECKS = 1;
