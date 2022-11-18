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

 Date: 25/09/2022 20:52:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_tipo_usuario
-- ----------------------------
DROP TABLE IF EXISTS `tb_tipo_usuario`;
CREATE TABLE `tb_tipo_usuario`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_tipo_usuario
-- ----------------------------
INSERT INTO `tb_tipo_usuario` VALUES (20, 'Asesor', 'Área de Producción');
INSERT INTO `tb_tipo_usuario` VALUES (40, 'Supervisor', 'Área de Producción');
INSERT INTO `tb_tipo_usuario` VALUES (60, 'Administrador', 'Área de Sistemas');
INSERT INTO `tb_tipo_usuario` VALUES (80, 'Super Administrador', 'Área de Sistemas');

SET FOREIGN_KEY_CHECKS = 1;
