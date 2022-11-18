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

 Date: 25/09/2022 20:52:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_usuarios2
-- ----------------------------
DROP TABLE IF EXISTS `tb_usuarios2`;
CREATE TABLE `tb_usuarios2`  (
  `coduser` int NOT NULL AUTO_INCREMENT,
  `idjefe` int NULL DEFAULT NULL,
  `nombres` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apellidos` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dni` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `f_nac` date NULL DEFAULT NULL COMMENT 'Fecha nacimiento',
  `correo` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `distrito` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `direccion` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tipo_user` int NULL DEFAULT NULL,
  `usuario` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clave` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estado` int NULL DEFAULT NULL COMMENT '0 inactivo / 1 activo',
  `fecha_alta` datetime NULL DEFAULT NULL,
  `hab_modo` int NULL DEFAULT 0 COMMENT '0 no / 1 si  - dos modos de inicio: sup o gestor',
  `f_upd` datetime NULL DEFAULT NULL,
  `foto` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del` int NULL DEFAULT 0 COMMENT '0 no / 1 si delete',
  `f_del` datetime NULL DEFAULT NULL COMMENT 'f_delete',
  `user_del` int NULL DEFAULT NULL COMMENT 'usuario elimina',
  PRIMARY KEY (`coduser`) USING BTREE,
  INDEX `fkjefe`(`idjefe`) USING BTREE,
  INDEX `fktipouser`(`tipo_user`) USING BTREE,
  CONSTRAINT `fkjefe` FOREIGN KEY (`idjefe`) REFERENCES `tb_usuarios2` (`coduser`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 309 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_usuarios2
-- ----------------------------
INSERT INTO `tb_usuarios2` VALUES (2, NULL, 'ADMINISTRADOR', 'ADMINISTRADOR', '123456789', NULL, NULL, NULL, NULL, NULL, 80, 'ADMINISTRADOR', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 0, '0000-00-00 00:00:00', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (100, 122, 'FABIOLA ANITA', 'ROJAS AYALA', '76146100', NULL, NULL, '938349961', NULL, NULL, 20, 'FROJAS', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, NULL, 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (122, NULL, 'Supervisor', 'Lima', '123456789', NULL, NULL, NULL, NULL, NULL, 60, 'SUPERVISOR', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 0, '2020-10-15 14:52:00', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (177, 122, 'SOPHIA ALEJANDRA', 'RAMIREZ AGUILAR', '74872226', NULL, 'X - SOLO AGOSTO', NULL, NULL, NULL, 10, 'R24', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, NULL, 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (185, NULL, 'TEISON MARLON', 'REYNOSO VALENTIN', '48205236', '2000-03-12', 'mreynoso@multiservicioscall.com', '', 'ATE', 'Carretera Central Km 12, Paradero Amaro. MZB LTE 2', 80, 'MREYNOSO', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-01 18:06:27', 0, '2022-08-29 15:44:50', '185_7.jpg', 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (186, 122, 'MIGUEL ANGEL', ' SALAZAR OBREGON', '70545713', NULL, 'x', NULL, NULL, NULL, 20, 'LRN', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-01 18:11:05', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (187, 122, 'KAREN', 'CASTILLO ZAVALA', '44348497', NULL, 'x', NULL, NULL, NULL, 20, 'KCZ', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 0, '2022-08-01 18:11:05', 0, '2022-09-07 15:18:02', NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (188, 122, 'KARLA', 'YALTA VALDERRAMA', '47006949', NULL, 'x', NULL, NULL, NULL, 20, 'KYV', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 0, '2022-08-01 18:11:05', 0, '2022-09-07 15:18:07', NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (189, 122, 'CRISTIAN JAVIER ', 'GAMARRA SANCHEZ', '48958667', NULL, 'x', NULL, NULL, NULL, 20, 'I1N', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-01 18:11:05', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (190, 122, 'EMANUEL ', 'MARTINEZ VENTURO', '75757944', NULL, 'x', NULL, NULL, NULL, 20, 'EMV', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-01 18:11:05', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (191, 122, 'JORDY GERSON ', 'QUINCHO RODRIGUEZ', '70886241', NULL, 'x', NULL, NULL, NULL, 20, 'JOR', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-01 18:11:05', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (192, 122, 'ANGIE', 'CASTRO FIGUEROA', '77097301', NULL, 'x', NULL, NULL, NULL, 20, 'AVO', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 0, '2022-08-01 18:11:05', 0, '2022-09-07 15:18:15', NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (193, 122, 'LEIDY', 'GLADYS MARIN SALDAÑA', '41207065', NULL, 'X - SOLO AGOSTO', NULL, NULL, NULL, 20, 'LM9', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 0, '2022-08-01 18:11:05', 0, '2022-09-07 15:18:20', NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (194, 122, 'MARY ANY', 'BULEJE SANCHEZ ', '41749734', NULL, 'x', NULL, NULL, NULL, 20, 'M55', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-01 18:11:05', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (195, 122, 'CARMEN', 'PALOMINO DELGADO', '10676746', NULL, 'X', NULL, NULL, NULL, 20, 'P83', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 0, '2022-08-01 18:11:05', 0, '2022-09-07 15:18:27', NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (196, 122, 'ANA ROCIO', 'WONG CIGARROSTEGUI', '46787009', NULL, 'X', NULL, NULL, NULL, 20, 'W67', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-01 18:11:05', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (198, 122, 'ARON', ' GARRO MANRIQUE', '70298831', NULL, NULL, NULL, NULL, NULL, 20, 'AGM', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-01 18:11:05', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (199, 122, 'JANIRA', ' RAMIREZ SANCHEZ', '72144234', NULL, NULL, NULL, NULL, NULL, 20, 'AZZ', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-01 18:11:05', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (228, 122, 'DORISA MIRELLA', 'RODRIGUEZ PECHO', '42956367', NULL, NULL, NULL, NULL, NULL, 60, 'MRP', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-01 18:11:05', 0, NULL, '228_.jpg', 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (229, 122, 'MARIBEL MAXI', 'DE LA CRUZ ALHUAYA', '46352125', NULL, NULL, NULL, NULL, NULL, 60, 'AD2', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-02 18:45:40', 0, NULL, '229_.jpg', 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (230, 122, 'HERSHEL', 'MORENO', '41656664', NULL, NULL, NULL, NULL, NULL, 80, 'HMORENO', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-02 18:45:40', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (231, 122, 'ENRIQUE ALFREDO', 'GARCIA MUÑOS', '46113470', NULL, NULL, NULL, NULL, NULL, 60, 'EGM', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-02 18:45:40', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (232, 122, 'JHOAN FAUSTINO', 'GAMARRA CASTILLO', '73897604', NULL, NULL, NULL, NULL, NULL, 60, 'OAO', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-02 18:45:40', 0, NULL, '232_.jpg', 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (233, 122, 'MIRIAN', 'MELENDEZ ESCALANTE', '70087108', NULL, NULL, NULL, NULL, NULL, 20, 'MME', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 0, '2022-08-25 16:49:38', 0, '2022-09-07 15:17:56', NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (234, 122, 'JOSE FLORES', 'TARAZONA', '76749982', NULL, NULL, NULL, NULL, NULL, 20, 'ESA', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-25 16:49:38', 0, '2022-08-31 09:13:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (236, NULL, 'PAOLA INES', 'DONAYRE CAPITAN', '73210541', NULL, NULL, NULL, NULL, NULL, 20, 'D19', NULL, 1, '2022-08-29 17:07:32', 0, '2022-08-31 09:11:44', NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (237, NULL, 'PRUEBA DE NOM', 'PRUEBA DE APE', '12345678', NULL, NULL, NULL, NULL, NULL, 20, 'ABD', NULL, 0, '2022-08-31 09:18:01', 0, NULL, NULL, 1, '2022-08-31 09:24:19', 185);
INSERT INTO `tb_usuarios2` VALUES (238, NULL, 'DATA PORUEBA', 'PORUEBA DA', '12345676', NULL, NULL, NULL, NULL, NULL, 20, 'ABC', NULL, 0, '2022-08-31 09:40:12', 0, '2022-09-07 15:16:46', NULL, 1, '2022-09-16 16:52:35', 185);
INSERT INTO `tb_usuarios2` VALUES (300, 122, 'FRANCI', 'RODRIGUEZ', '10365344', NULL, NULL, NULL, NULL, NULL, 60, 'FRP', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-08-31 09:40:12', 0, NULL, '232_.jpg', 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (301, NULL, 'PEDRO ALONSO', 'VALDIVIESO LOPEZ', '72852487', NULL, NULL, NULL, NULL, NULL, 20, 'V83', NULL, 1, '2022-09-13 15:25:16', 0, '2022-09-13 15:29:38', NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (302, NULL, 'FERNANDO', 'CABALLERO CRUZADO', '76438344', NULL, NULL, NULL, NULL, NULL, 20, 'O91', NULL, 1, '2022-09-15 14:08:03', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (303, 122, 'NICOLLS MARICIELO', 'CHIROQE CASTILLO', '73085746', NULL, NULL, NULL, NULL, NULL, 60, 'NCC', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-09-16 12:51:11', 0, NULL, '232.jpg', 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (304, 122, 'JESSICA', 'POCCORI HUAMAN', '48283459', NULL, NULL, NULL, NULL, NULL, 60, 'AIN', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-09-16 12:51:11', 0, NULL, '232.jpg', 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (305, NULL, 'PRUEBITA USUARIO1', 'REY PRUEBA', '12345675', NULL, NULL, NULL, NULL, NULL, 20, '123', NULL, 1, '2022-09-16 16:52:11', 0, '2022-09-16 16:52:48', NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (306, NULL, 'ANDREA', 'FLORES ORELLANA', '47129256', NULL, NULL, NULL, NULL, NULL, 20, 'AF9', NULL, 1, '2022-09-16 17:50:31', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (307, NULL, 'MIGUEL ANGEL', 'MOTTA BAÑOS', '45878283', NULL, NULL, NULL, NULL, NULL, 60, 'MMB', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-09-22 11:19:29', 0, NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_usuarios2` VALUES (308, NULL, 'CARLOS JESUS', 'VEGA PEINADO ', '46436552', NULL, NULL, NULL, NULL, NULL, 60, 'V52', 'c374aade4a7391e8f70371bef61932e9ba65029704fbd0427054e744602e9f3e164d7467918211384c38a91ca213d64b9dba4836cdbe0ffe8df0fb86afdc178a', 1, '2022-09-22 11:19:29', 0, NULL, NULL, 0, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
