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

 Date: 25/09/2022 20:48:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ag_cronograma
-- ----------------------------
DROP TABLE IF EXISTS `ag_cronograma`;
CREATE TABLE `ag_cronograma`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tipo_evento` int NULL DEFAULT NULL,
  `id_usuario` int NULL DEFAULT NULL,
  `observacion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `f_inicio` datetime NULL DEFAULT NULL,
  `f_fin` datetime NULL DEFAULT NULL,
  `del` int NULL DEFAULT 0 COMMENT '0 no / 1 si',
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `f_registro` datetime NULL DEFAULT NULL,
  `estado` int NULL DEFAULT 0,
  `f_delete` datetime NULL DEFAULT NULL,
  `f_upd` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ag_cronograma
-- ----------------------------
INSERT INTO `ag_cronograma` VALUES (58, 4, 185, 'Prueba de pruebas.', '2022-09-06 11:00:00', '2022-09-06 11:00:00', 0, 'Prueba Evento', '2022-09-06 16:52:47', 0, NULL, NULL);
INSERT INTO `ag_cronograma` VALUES (59, 5, 229, 'Data', '2022-09-06 15:00:00', '2022-09-06 15:00:00', 0, 'MI evento', '2022-09-06 16:53:49', 0, NULL, NULL);
INSERT INTO `ag_cronograma` VALUES (60, 2, 185, 'https://pucp.zoom.us/j/98655870971?pwd=OVlvNW03QjFOKzFzSlVsS2oyUXVyUT09', '2022-09-09 15:00:00', '2022-09-09 15:00:00', 0, 'Católica', '2022-09-07 14:58:47', 0, NULL, '2022-09-08 11:09:38');
INSERT INTO `ag_cronograma` VALUES (61, 2, 185, 'https://pucp.zoom.us/j/98655870971?pwd=OVlvNW03QjFOKzFzSlVsS2oyUXVyUT09', '2022-09-08 15:00:00', '2022-09-08 17:00:00', 1, 'Católica', '2022-09-07 17:37:02', 0, '2022-09-07 17:09:05', NULL);

-- ----------------------------
-- Table structure for ag_tipo_evento
-- ----------------------------
DROP TABLE IF EXISTS `ag_tipo_evento`;
CREATE TABLE `ag_tipo_evento`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estado` int NULL DEFAULT 0,
  `f_registro` datetime NULL DEFAULT NULL,
  `f_upd` datetime NULL DEFAULT NULL,
  `class1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data_class` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ag_tipo_evento
-- ----------------------------
INSERT INTO `ag_tipo_evento` VALUES (1, 'Nuevo evento planeado', 0, '2022-07-26 10:36:51', NULL, 'text-success', 'bg-soft-success', 'bg-success');
INSERT INTO `ag_tipo_evento` VALUES (2, 'Reunión', 0, '2022-07-26 10:36:51', NULL, 'text-info', 'bg-soft-info', 'bg-info');
INSERT INTO `ag_tipo_evento` VALUES (3, 'Generar reporte', 0, '2022-07-26 10:36:51', NULL, 'text-warning', 'bg-soft-warning', 'bg-warning');
INSERT INTO `ag_tipo_evento` VALUES (4, 'Crear nuevos temas', 0, '2022-07-26 10:36:51', NULL, 'text-danger', 'bg-soft-danger', 'bg-danger');
INSERT INTO `ag_tipo_evento` VALUES (5, 'Reunión de equipo', 0, '2022-07-26 10:41:16', NULL, 'text-dark', 'bg-soft-dark', 'bg-dark');

-- ----------------------------
-- Table structure for geo_semanas
-- ----------------------------
DROP TABLE IF EXISTS `geo_semanas`;
CREATE TABLE `geo_semanas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NULL DEFAULT NULL,
  `nro_semana` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of geo_semanas
-- ----------------------------
INSERT INTO `geo_semanas` VALUES (1, '2022-08-01', 1);
INSERT INTO `geo_semanas` VALUES (2, '2022-08-02', 1);
INSERT INTO `geo_semanas` VALUES (3, '2022-08-03', 1);
INSERT INTO `geo_semanas` VALUES (4, '2022-08-04', 1);
INSERT INTO `geo_semanas` VALUES (5, '2022-08-05', 1);
INSERT INTO `geo_semanas` VALUES (6, '2022-08-06', 1);
INSERT INTO `geo_semanas` VALUES (7, '2022-08-07', 1);
INSERT INTO `geo_semanas` VALUES (8, '2022-08-08', 2);
INSERT INTO `geo_semanas` VALUES (9, '2022-08-09', 2);
INSERT INTO `geo_semanas` VALUES (10, '2022-08-10', 2);
INSERT INTO `geo_semanas` VALUES (11, '2022-08-11', 2);
INSERT INTO `geo_semanas` VALUES (12, '2022-08-12', 2);
INSERT INTO `geo_semanas` VALUES (13, '2022-08-13', 2);
INSERT INTO `geo_semanas` VALUES (14, '2022-08-14', 2);
INSERT INTO `geo_semanas` VALUES (15, '2022-08-15', 3);
INSERT INTO `geo_semanas` VALUES (16, '2022-08-16', 3);
INSERT INTO `geo_semanas` VALUES (17, '2022-08-17', 3);
INSERT INTO `geo_semanas` VALUES (18, '2022-08-18', 3);
INSERT INTO `geo_semanas` VALUES (19, '2022-08-19', 3);
INSERT INTO `geo_semanas` VALUES (20, '2022-08-20', 3);
INSERT INTO `geo_semanas` VALUES (21, '2022-08-21', 3);
INSERT INTO `geo_semanas` VALUES (22, '2022-08-22', 4);
INSERT INTO `geo_semanas` VALUES (23, '2022-08-23', 4);
INSERT INTO `geo_semanas` VALUES (24, '2022-08-24', 4);
INSERT INTO `geo_semanas` VALUES (25, '2022-08-25', 4);
INSERT INTO `geo_semanas` VALUES (26, '2022-08-26', 4);
INSERT INTO `geo_semanas` VALUES (27, '2022-08-27', 4);
INSERT INTO `geo_semanas` VALUES (28, '2022-08-28', 4);
INSERT INTO `geo_semanas` VALUES (29, '2022-08-29', 5);
INSERT INTO `geo_semanas` VALUES (30, '2022-08-30', 5);
INSERT INTO `geo_semanas` VALUES (31, '2022-08-31', 5);
INSERT INTO `geo_semanas` VALUES (32, '2022-09-01', 1);
INSERT INTO `geo_semanas` VALUES (33, '2022-09-02', 1);
INSERT INTO `geo_semanas` VALUES (34, '2022-09-03', 1);
INSERT INTO `geo_semanas` VALUES (35, '2022-09-04', 1);
INSERT INTO `geo_semanas` VALUES (36, '2022-09-05', 2);
INSERT INTO `geo_semanas` VALUES (37, '2022-09-06', 2);
INSERT INTO `geo_semanas` VALUES (38, '2022-09-07', 2);
INSERT INTO `geo_semanas` VALUES (39, '2022-09-08', 2);
INSERT INTO `geo_semanas` VALUES (40, '2022-09-09', 2);
INSERT INTO `geo_semanas` VALUES (41, '2022-09-10', 2);
INSERT INTO `geo_semanas` VALUES (42, '2022-09-11', 2);
INSERT INTO `geo_semanas` VALUES (43, '2022-09-12', 3);
INSERT INTO `geo_semanas` VALUES (44, '2022-09-13', 3);
INSERT INTO `geo_semanas` VALUES (45, '2022-09-14', 3);
INSERT INTO `geo_semanas` VALUES (46, '2022-09-15', 3);
INSERT INTO `geo_semanas` VALUES (47, '2022-09-16', 3);
INSERT INTO `geo_semanas` VALUES (48, '2022-09-17', 3);
INSERT INTO `geo_semanas` VALUES (49, '2022-09-18', 3);
INSERT INTO `geo_semanas` VALUES (50, '2022-09-19', 4);
INSERT INTO `geo_semanas` VALUES (51, '2022-09-20', 4);
INSERT INTO `geo_semanas` VALUES (52, '2022-09-21', 4);
INSERT INTO `geo_semanas` VALUES (53, '2022-09-22', 4);
INSERT INTO `geo_semanas` VALUES (54, '2022-09-23', 4);
INSERT INTO `geo_semanas` VALUES (55, '2022-09-24', 4);
INSERT INTO `geo_semanas` VALUES (56, '2022-09-25', 4);
INSERT INTO `geo_semanas` VALUES (57, '2022-09-26', 5);
INSERT INTO `geo_semanas` VALUES (58, '2022-09-27', 5);
INSERT INTO `geo_semanas` VALUES (59, '2022-09-28', 5);
INSERT INTO `geo_semanas` VALUES (60, '2022-09-29', 5);
INSERT INTO `geo_semanas` VALUES (61, '2022-09-30', 5);

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

-- ----------------------------
-- Table structure for system_cliente
-- ----------------------------
DROP TABLE IF EXISTS `system_cliente`;
CREATE TABLE `system_cliente`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estado` int NULL DEFAULT 0 COMMENT '0 habilitado / 1 deshabilitado',
  `del` int NULL DEFAULT 0 COMMENT '0 no / 1 si',
  `f_del` datetime NULL DEFAULT NULL,
  `user_del` int NULL DEFAULT NULL,
  `f_registro` datetime NULL DEFAULT NULL,
  `f_upd` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_cliente
-- ----------------------------
INSERT INTO `system_cliente` VALUES (1, 'LINDLEY', 0, 0, NULL, NULL, '2022-09-08 17:43:32', '2022-09-09 10:09:43');
INSERT INTO `system_cliente` VALUES (2, 'AFP INTEGRA', 0, 0, NULL, NULL, '2022-09-08 17:44:41', NULL);
INSERT INTO `system_cliente` VALUES (3, 'MADISSON', 0, 0, NULL, NULL, '2022-09-08 17:45:07', NULL);
INSERT INTO `system_cliente` VALUES (4, 'PAGINAS MSC', 0, 0, NULL, NULL, '2022-09-09 11:06:54', NULL);
INSERT INTO `system_cliente` VALUES (5, 'EUROCONNECT', 0, 0, NULL, NULL, '2022-09-09 11:35:26', NULL);
INSERT INTO `system_cliente` VALUES (6, 'PEPSICO', 0, 0, NULL, NULL, '2022-09-09 11:36:49', NULL);
INSERT INTO `system_cliente` VALUES (7, 'AUTO PLAN', 0, 0, NULL, NULL, '2022-09-09 11:44:16', NULL);

-- ----------------------------
-- Table structure for system_link
-- ----------------------------
DROP TABLE IF EXISTS `system_link`;
CREATE TABLE `system_link`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NULL DEFAULT NULL,
  `id_tipo_recurso` int NULL DEFAULT NULL,
  `descripcion` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `estado` int NULL DEFAULT 0 COMMENT '0 habilitado / 1 deshabilitado',
  `del` int NULL DEFAULT 0 COMMENT '0',
  `f_del` datetime NULL DEFAULT NULL,
  `user_del` int NULL DEFAULT NULL,
  `f_registro` datetime NULL DEFAULT NULL,
  `f_upd` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_link
-- ----------------------------
INSERT INTO `system_link` VALUES (1, 1, 1, 'SISTEMA', 'https://geochasqui.com/sistema_lindley', 0, 0, NULL, NULL, '2022-09-09 08:43:47', '2022-09-09 11:04:58');
INSERT INTO `system_link` VALUES (2, 3, 2, 'CLAVE VPN', 'Plataform@', 0, 0, NULL, NULL, '2022-09-09 09:20:22', '2022-09-09 11:05:13');
INSERT INTO `system_link` VALUES (3, 3, 1, 'DIAUTO', 'http://10.170.24.10/diautolim01/agente', 0, 0, NULL, NULL, '2022-09-09 09:21:55', NULL);
INSERT INTO `system_link` VALUES (4, 3, 2, 'EXTENSIONES', '95001 - 95025', 0, 0, NULL, NULL, '2022-09-09 09:22:25', '2022-09-09 09:55:58');
INSERT INTO `system_link` VALUES (6, 4, 1, 'Sistema de Ecuesta', 'http://172.21.8.50/encuesta/index.php/admin/authentication/sa/login', 0, 0, NULL, NULL, '2022-09-09 11:08:50', NULL);
INSERT INTO `system_link` VALUES (7, 4, 1, 'Marcador MSC', 'http://172.21.8.50/vicidial/welcome.php', 0, 0, NULL, NULL, '2022-09-09 11:13:40', NULL);
INSERT INTO `system_link` VALUES (8, 4, 1, 'Números reportados', 'http://172.21.8.50/sistema/modulo_madison', 0, 0, NULL, NULL, '2022-09-09 11:15:37', NULL);
INSERT INTO `system_link` VALUES (9, 4, 1, 'GeoChasqui', 'https://geochasqui.com/', 0, 0, NULL, NULL, '2022-09-09 11:15:48', NULL);
INSERT INTO `system_link` VALUES (10, 4, 1, 'Descargas 54', 'http://172.21.8.54/descarga/', 0, 0, NULL, NULL, '2022-09-09 11:16:04', NULL);
INSERT INTO `system_link` VALUES (11, 4, 1, 'MSC', 'https://multiservicioscall.com/', 0, 0, NULL, NULL, '2022-09-09 11:16:15', NULL);
INSERT INTO `system_link` VALUES (12, 4, 1, 'compuempresa.com', 'https://compuempresa.com/', 0, 0, NULL, NULL, '2022-09-09 11:16:28', NULL);
INSERT INTO `system_link` VALUES (13, 4, 1, 'paginaspyme', 'https://paginaspyme.com/', 0, 0, NULL, NULL, '2022-09-09 11:16:38', NULL);
INSERT INTO `system_link` VALUES (14, 4, 1, 'deperu', 'https://www.deperu.com/', 0, 0, NULL, NULL, '2022-09-09 11:16:46', NULL);
INSERT INTO `system_link` VALUES (15, 4, 1, 'doolbox', 'https://www.doolbox.com/?action=business', 0, 0, NULL, NULL, '2022-09-09 11:16:57', NULL);
INSERT INTO `system_link` VALUES (16, 4, 1, 'Envio WhatsApp', 'https:http://172.21.8.50/whatsapp/demo/', 0, 0, NULL, NULL, '2022-09-09 11:17:07', NULL);
INSERT INTO `system_link` VALUES (17, 2, 2, 'BS - CONSULTA DE AFILIADOS', 'RUC : 20514480495 | CONTRASEÑA: 2004', 0, 0, NULL, NULL, '2022-09-09 11:18:28', NULL);
INSERT INTO `system_link` VALUES (18, 2, 1, 'Sistema de Contactos', 'http://10.219.114.40:9080/WebContactCenter/login.jsf', 0, 0, NULL, NULL, '2022-09-09 11:18:38', NULL);
INSERT INTO `system_link` VALUES (19, 2, 1, 'SAC', 'http://10.219.114.108:9080/sac/login/serviceLogin.jsf', 0, 0, NULL, NULL, '2022-09-09 11:18:47', NULL);
INSERT INTO `system_link` VALUES (20, 2, 1, 'Inconcert', 'http://i6.sura.pe/inconcert/apps/agent/login', 0, 0, NULL, NULL, '2022-09-09 11:18:58', NULL);
INSERT INTO `system_link` VALUES (21, 2, 1, 'Citas', 'http://10.219.114.40:9080/WebCitas/cargar.do?metodo=inicio', 0, 0, NULL, NULL, '2022-09-09 11:19:06', NULL);
INSERT INTO `system_link` VALUES (22, 2, 1, 'CONSTANCIAS(Intranet AFP Integra)', 'http://10.219.114.40:9080/WebSiteIntranet/InicioProyectarPension.do?metodo=inicio', 0, 0, NULL, NULL, '2022-09-09 11:19:18', NULL);
INSERT INTO `system_link` VALUES (23, 2, 2, 'PORTAL AGENCIAS', 'Usario: multiservicios.afp@sura.pe | Clave: Multi.2022', 0, 0, NULL, NULL, '2022-09-09 11:19:27', NULL);
INSERT INTO `system_link` VALUES (24, 2, 1, 'GEO Afp Integra', 'http://172.21.8.50/sistema_controlafp/', 0, 0, NULL, NULL, '2022-09-09 11:19:39', NULL);
INSERT INTO `system_link` VALUES (25, 2, 1, 'Desafiliación', 'http://200.121.128.113:9080/ciad/login.jsp', 0, 0, NULL, NULL, '2022-09-09 11:19:53', NULL);
INSERT INTO `system_link` VALUES (26, 2, 2, 'CIERRE RECL. RENTA-PLANTILLAS E INFORMACION (CORREO MULTI)', 'Usario: multiservicios.afp@sura.pe | Clave: Multi.2022', 0, 0, NULL, NULL, '2022-09-09 11:20:07', NULL);
INSERT INTO `system_link` VALUES (27, 2, 2, 'ECLAMO RENTABILIDAD - CUENTA NOREPLY', 'Usario: noreplysoluciones@integra.com.pe | Clave: Reclamos1', 0, 0, NULL, NULL, '2022-09-09 11:20:19', NULL);
INSERT INTO `system_link` VALUES (28, 2, 1, 'PORTAL 360', 'https://consulta-360.sura.net.pe/', 0, 0, NULL, NULL, '2022-09-09 11:20:27', NULL);
INSERT INTO `system_link` VALUES (29, 2, 2, 'CORREO AFP EN LINEA ¨SIN INCONCERT¨', 'usuario: afpenlinea@integra.com.pe | clave: Mum98003', 0, 0, NULL, NULL, '2022-09-09 11:20:37', NULL);
INSERT INTO `system_link` VALUES (30, 2, 2, 'CORREO SERVICIO EMPLEADOR SIN INCONCERT¨', 'usuario: servicioalempleador@integra.com.pe | clave: Empresas01', 0, 0, NULL, NULL, '2022-09-09 11:20:48', NULL);
INSERT INTO `system_link` VALUES (31, 2, 1, 'RUTA SHAREPOINT- REDES INTEGRA', 'https://suraperu.sharepoint.com/sites/MetricasRedes-CanalRemoto/Lists/PRODUCION REDES1/Allitemsg.aspx?xsdata=MDV8MDF8fDYxNDZlNTQ0MjY2OTQyOTE4OTc1MDhkYTgwOTA2YjcyfGEyNGRmNjI4MGUzZDRhZmE4Yjc3OTQ2MjgyNDIwYzE4fDB8MHw2Mzc5NjM2NTQ5OTI2NjA4NTN8R29vZHxWR1ZoYlhOVFpXTjFjbWwwZVZObGNuWnBZMlY4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazkwYUdWeUlpd2lWMVFpT2pFeGZRPT18MXxNVGs2YldWbGRHbHVaMTlaVjFsNFRWUlJNbGw2VFhSWlYwWnBXbE13TUU5WFZUSk1WR3hxV1RKUmRGa3lWVEZPZW10NFdYcG5lVTlYVVROQWRHaHlaV0ZrTG5ZeXx8&sdata=NDUvam9GUGJqenlTTTdlYWNtZldjUzEyK1dEWkJkMmRzY1VZTElJOEI0Yz0=&ovuser=a24df628-0e3d-4afa-8b77-946282420c18,maria.babiche@sura.pe&OR=Teams-HL&CT=1660768701720&clickparams=eyJBcHBOYW1lIjoiVGVhbXMtRGVza3RvcCIsIkFwcFZlcnNpb24iOiIyNy8yMjA3MDMwMDgxNSIsIkhhc0ZlZGVyYXRlZFVzZXIiOmZhbHNlfQ==', 0, 0, NULL, NULL, '2022-09-09 11:29:09', NULL);
INSERT INTO `system_link` VALUES (32, 5, 1, 'grupoeuromotors.crm2.dynamics', 'https://grupoeuromotors.crm2.dynamics.com/Apps/uniquename/cree5_CallCenterExterno', 0, 0, NULL, NULL, '2022-09-09 11:35:47', NULL);
INSERT INTO `system_link` VALUES (33, 5, 2, 'Usuario: vw_essa@grupoeuromotors.onmicrosoft.com', 'Contraseña: BdcPostventa2021*', 0, 0, NULL, NULL, '2022-09-09 11:36:06', NULL);
INSERT INTO `system_link` VALUES (34, 5, 1, 'Cronograma de Encuestas PDI/Taller – International', 'https://docs.google.com/spreadsheets/d/1sGKrUtnOf_MozbsP7anTW59foCR3pwFkGV-fI-TeYY4/edit#gid=0', 0, 0, NULL, NULL, '2022-09-09 11:36:18', NULL);
INSERT INTO `system_link` VALUES (35, 6, 1, 'WEBMAIL / CORREO', 'pepsico@multiservicioscall.com', 0, 0, NULL, NULL, '2022-09-09 11:38:25', NULL);
INSERT INTO `system_link` VALUES (36, 6, 2, 'pepsico@multiservicioscall.com', 'pepsico@multiservicioscall.com', 0, 0, NULL, NULL, '2022-09-09 11:38:39', NULL);
INSERT INTO `system_link` VALUES (37, 6, 2, 'Clave', 'MSC@112020', 0, 0, NULL, NULL, '2022-09-09 11:38:50', NULL);
INSERT INTO `system_link` VALUES (38, 7, 1, 'Seguimiento AutoPlan', 'http://172.21.8.50/sistema_ventas', 0, 0, NULL, NULL, '2022-09-09 11:44:37', NULL);
INSERT INTO `system_link` VALUES (39, 7, 2, 'Usuario', '2011 / 2023', 0, 0, NULL, NULL, '2022-09-09 11:44:48', NULL);
INSERT INTO `system_link` VALUES (40, 7, 2, 'Clave', '12345', 0, 0, NULL, NULL, '2022-09-09 11:45:04', NULL);
INSERT INTO `system_link` VALUES (41, 7, 1, 'link AutoPlan', 'https://postventas.alesecorp.pe/taller/servlet/home', 0, 0, NULL, NULL, '2022-09-09 11:45:41', NULL);
INSERT INTO `system_link` VALUES (42, 7, 1, 'Mall Digital posventa', 'https://alesesac-my.sharepoint.com/:x:/g/personal/saquije_autoplan_pe/ESjhAPi9-4tHv8_xjTAu-mIB0VFK8q1_MIUGqcOWzAKpTQ?rtime=AGfDAMoY2kg', 0, 0, NULL, NULL, '2022-09-09 11:45:51', NULL);
INSERT INTO `system_link` VALUES (43, 7, 2, 'Clave', 'xxx', 0, 0, NULL, NULL, '2022-09-09 11:46:01', NULL);
INSERT INTO `system_link` VALUES (44, 7, 1, 'Drive Google', 'https://drive.google.com/?tab=ro&authuser=0', 0, 0, NULL, NULL, '2022-09-09 11:46:11', NULL);

-- ----------------------------
-- Table structure for system_tipo_recurso
-- ----------------------------
DROP TABLE IF EXISTS `system_tipo_recurso`;
CREATE TABLE `system_tipo_recurso`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estado` int NULL DEFAULT 0 COMMENT '0 hab / 1 deshab',
  `del` int NULL DEFAULT 0 COMMENT '0 no delete / 1 delete',
  `f_del` datetime NULL DEFAULT NULL,
  `f_upd` datetime NULL DEFAULT NULL,
  `user_del` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_tipo_recurso
-- ----------------------------
INSERT INTO `system_tipo_recurso` VALUES (1, 'Link', 0, 0, NULL, NULL, NULL);
INSERT INTO `system_tipo_recurso` VALUES (2, 'Texto', 0, 0, NULL, NULL, NULL);
INSERT INTO `system_tipo_recurso` VALUES (3, 'Documento', 1, 0, NULL, NULL, NULL);
INSERT INTO `system_tipo_recurso` VALUES (4, 'Imagen', 1, 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_actividad
-- ----------------------------
DROP TABLE IF EXISTS `tb_actividad`;
CREATE TABLE `tb_actividad`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `f_registro` datetime NULL DEFAULT NULL,
  `f_upd` datetime NULL DEFAULT NULL,
  `estado` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_actividad
-- ----------------------------
INSERT INTO `tb_actividad` VALUES (1, 'CORRECION', '2022-08-02 07:08:14', NULL, 0);
INSERT INTO `tb_actividad` VALUES (2, 'SOLO ESCUCHA', '2022-08-02 07:08:18', NULL, 0);

-- ----------------------------
-- Table structure for tb_calificacion
-- ----------------------------
DROP TABLE IF EXISTS `tb_calificacion`;
CREATE TABLE `tb_calificacion`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `f_registro` datetime NULL DEFAULT NULL,
  `f_upd` datetime NULL DEFAULT NULL,
  `estado` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_calificacion
-- ----------------------------
INSERT INTO `tb_calificacion` VALUES (7, 'Buena', '2022-07-14 10:07:57', NULL, 0);
INSERT INTO `tb_calificacion` VALUES (8, 'Mala', '2022-07-14 10:07:01', '2022-07-22 12:07:08', 0);

-- ----------------------------
-- Table structure for tb_campania
-- ----------------------------
DROP TABLE IF EXISTS `tb_campania`;
CREATE TABLE `tb_campania`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estado` int NULL DEFAULT NULL COMMENT '0 deshabilitado / 1 habilitado',
  `id_tipo_servicio` int NULL DEFAULT NULL,
  `f_registro` datetime NULL DEFAULT NULL,
  `f_upd` datetime NULL DEFAULT NULL,
  `del` int NULL DEFAULT 0 COMMENT '0 no / 1 si',
  `f_del` datetime NULL DEFAULT NULL,
  `user_del` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_id_tipo_servicio`(`id_tipo_servicio`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_campania
-- ----------------------------
INSERT INTO `tb_campania` VALUES (1, 'PEPSICO1', 0, 28, '2022-08-01 17:08:52', '2022-08-22 12:08:33', 0, NULL, NULL);
INSERT INTO `tb_campania` VALUES (2, 'INTERNATIONAL CAMIONES', 0, 29, '2022-08-01 17:08:00', NULL, 0, NULL, NULL);
INSERT INTO `tb_campania` VALUES (5, 'CCR CUORE', 0, 29, '2022-08-01 17:08:24', NULL, 0, NULL, NULL);
INSERT INTO `tb_campania` VALUES (8, 'CANVIA', 0, 30, '2022-08-17 16:08:13', '2022-08-17 16:08:08', 0, NULL, NULL);
INSERT INTO `tb_campania` VALUES (9, 'IBM MAISON', 0, 30, '2022-08-17 18:08:19', NULL, 0, NULL, NULL);
INSERT INTO `tb_campania` VALUES (10, 'Euroferia(confirmación)', 0, 30, '2022-08-18 10:08:29', NULL, 0, NULL, NULL);
INSERT INTO `tb_campania` VALUES (11, 'MADISSON (CLARO.NPS.MASIVO.COMPETENCIA)', 0, 29, '2022-08-24 12:08:10', '2022-08-24 12:08:25', 0, NULL, NULL);
INSERT INTO `tb_campania` VALUES (12, 'AMICAR PRESTAMOS PRE APROBADOS', 0, 30, '2022-08-29 17:08:34', NULL, 0, NULL, NULL);
INSERT INTO `tb_campania` VALUES (13, 'Universidad Católica del Perú', 0, 29, '2022-09-07 15:09:59', NULL, 0, NULL, NULL);
INSERT INTO `tb_campania` VALUES (14, 'INTERNATIONAL CAMIONES', 0, 31, '2022-09-07 16:09:21', NULL, 0, NULL, NULL);
INSERT INTO `tb_campania` VALUES (16, 'DATA1', 0, 28, '2022-09-16 13:09:09', '2022-09-16 13:09:12', 1, '2022-09-16 13:14:48', 185);

-- ----------------------------
-- Table structure for tb_criterio
-- ----------------------------
DROP TABLE IF EXISTS `tb_criterio`;
CREATE TABLE `tb_criterio`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tipo_criterio` int NULL DEFAULT NULL,
  `descripcion` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estado` int NULL DEFAULT NULL COMMENT '0 habilitado / 1 deshabilitado',
  `concepto` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `f_registro` datetime NULL DEFAULT NULL,
  `f_upd` datetime NULL DEFAULT NULL,
  `del` int NULL DEFAULT 0 COMMENT '0 / 1 si',
  `f_del` datetime NULL DEFAULT NULL,
  `user_del` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_criterio
-- ----------------------------
INSERT INTO `tb_criterio` VALUES (17, 1, 'PRESENTACIÓN', 0, 'Empezamos con buenos, Dias, tardes o noches, y solicitamos hablar con el contacto interesado, el afiliado, el invitado al evento, o cliente, indicado seguidamente nuestro nombre (primer nombre, primer apellido) y diciendo de donde nos comunicamos. ', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (18, 1, 'ESCUCHA ACTIVA', 0, 'Escuchamos al contacto sin interrumpirlo, no hablamos sobre él  o le interrumpimos de forma indebida, dejamos que exprese la molestia que pudiera tener. (Se debe de tener en cuenta que no se escuchara a un contacto si este nos  agrede de manera verbal, si ese es el caso se procederá a  terminar con la llamada de forma cortés )', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (19, 1, 'LENGUAJE Y COMUNICACIÓN', 0, 'En este ítem se evalúa la capacidad que tiene el teleoperador para comunicarse de una forma clara ( lenguaje claro , entendible,  buena pronunciación, no muletillas,  no silencios en la llamada  no lenguaje coloquial  y la correcta entonación de la voz es decir no denotar cansancio, aburrimiento o apatía)', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (20, 2, 'FIN DE LLAMADA', 0, 'En este ítem se evalúa si el teleoperador termina de  forma correcta la llamada, siempre indicando ; \" Muchas gracias por su atención buenos días , tardes ,noches \"  queda prohibido que el teleoperador corte la llamada si el contacto se encuentra hablando\"  ', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (21, 2, 'CORTESIA / RESPETO AL CLIENTE', 0, 'En este ítem se evalúa la forma que tiene el teleoperador para dirigirse al contacto.  ( no tutearlo, siempre personalizar la llamada, usar las debidas frases de cortesía \"gracias , por favor, gracias por la espera,  un momento por favor”, cuidar sobre todo la entonación de voz,  no ser cortante , ni descortés) ', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (22, 2, 'EMPATIA', 0, 'En este ítem se evalúa  la capacidad que tiene el teleoperador de ponerse en el lugar del contacto y  tomar su inquietud como propia para buscar una rápida solución ', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (23, 3, 'PREGUNTAS DE VALIDACION', 0, 'Antes de realizar la coordinación de entrega de tarjeta, deben de formularse de manera obligatoria las preguntas filtro o de identificación, salvo en el caso de que la entrega sea en agencia de Citibank', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (24, 3, 'SOLICITA DATOS ADICIONALES DEL CLIENTE', 0, 'Según los requerimientos de la campaña, en este ítem se evalúa como el teleoperador solicita o levanta datos  que no pudieran estar o estén desactualizados en la base ', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (25, 3, 'MANEJOS  DE OBJECIONES', 0, 'Despejar dudas a las objeciones indicadas por el contacto demostrando conocimiento, resolviendo inconvenientes en lo posible y orientándolo de manera adecuada.', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (26, 3, 'REALIZA TODAS LAS PREGUNTAS', 0, 'Realizar el total de las preguntas que figuran en la encuesta, sin omitir ninguna o formulándolas de manera distintas a lo establecido.', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (27, 3, 'CONFIRMA LA ASISTENCIA CON UNA PERSONA VALIDADA', 0, 'Realiza el escalamiento necesario hasta llegar el contacto invitado al evento y obtener de el la confirmación o en  su defecto con otro contacto que se pueda considerar valido', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (28, 3, 'RESUELVE CONSULTA', 0, 'Este item evalua la resolucion de la consulta planteada por del contacto, el teleoperador debe  mostrar amplios conocimientos , de la campaña para dejar satisfecho al contacto. ', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (29, 3, 'INFORMACIÓN DEL SERVICIO DEACUERDO A LA CAMPAÑA (SPEECH)', 0, 'Respetar el Speech establecido por el cliente,  sin  omitir ningun punto del mismo', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (30, 3, 'REGISTRO CORRECTO DE LLAMADA EN SISTEMA', 0, 'Llenar correctamente los datos en el sistema dependiendo el resultado de la gestion. se verificara mediante un muestreo que el llenado sea el solicitado ', '2022-08-01 17:49:49', NULL, 0, NULL, NULL);
INSERT INTO `tb_criterio` VALUES (50, NULL, 'Prueba de criterio1', 0, NULL, '2022-09-19 12:09:14', '2022-09-19 12:09:10', 1, '2022-09-19 12:47:02', 185);

-- ----------------------------
-- Table structure for tb_criteriosxservicio
-- ----------------------------
DROP TABLE IF EXISTS `tb_criteriosxservicio`;
CREATE TABLE `tb_criteriosxservicio`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tipo_servicio` int NULL DEFAULT NULL,
  `id_criterio` int NULL DEFAULT NULL,
  `id_calificacion` int NULL DEFAULT NULL,
  `porcentaje` decimal(5, 2) NULL DEFAULT NULL,
  `f_registro` datetime NULL DEFAULT NULL,
  `f_upd` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_criterio`(`id_criterio`) USING BTREE,
  INDEX `fk_id_calificacion`(`id_calificacion`) USING BTREE,
  INDEX `fk_id_tipo_servicio`(`id_tipo_servicio`) USING BTREE,
  CONSTRAINT `fk_criterio` FOREIGN KEY (`id_criterio`) REFERENCES `tb_criterio` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_id_calificacion` FOREIGN KEY (`id_calificacion`) REFERENCES `tb_calificacion` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_id_tipo_servicio` FOREIGN KEY (`id_tipo_servicio`) REFERENCES `tb_tipo_servicio` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_criteriosxservicio
-- ----------------------------
INSERT INTO `tb_criteriosxservicio` VALUES (1, 29, 17, 7, 6.66, '2022-08-01 17:08:20', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (2, 29, 18, 7, 6.66, '2022-08-01 17:08:28', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (3, 29, 19, 7, 6.68, '2022-08-01 17:08:35', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (4, 29, 20, 7, 15.00, '2022-08-01 17:08:41', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (5, 29, 21, 7, 15.00, '2022-08-01 17:08:52', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (6, 29, 24, 7, 10.00, '2022-08-01 17:08:04', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (7, 29, 25, 7, 10.00, '2022-08-01 17:08:11', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (8, 29, 26, 7, 10.00, '2022-08-01 17:08:25', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (9, 29, 29, 7, 10.00, '2022-08-01 17:08:40', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (10, 29, 30, 7, 10.00, '2022-08-01 17:08:56', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (11, 29, 17, 8, 0.00, '2022-08-01 17:08:20', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (12, 29, 18, 8, 0.00, '2022-08-01 17:08:28', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (13, 29, 19, 8, 0.00, '2022-08-01 17:08:35', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (14, 29, 20, 8, 0.00, '2022-08-01 17:08:41', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (15, 29, 21, 8, 0.00, '2022-08-01 17:08:52', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (16, 29, 24, 8, 0.00, '2022-08-01 17:08:04', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (17, 29, 25, 8, 0.00, '2022-08-01 17:08:11', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (18, 29, 26, 8, 0.00, '2022-08-01 17:08:25', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (19, 29, 29, 8, 0.00, '2022-08-01 17:08:40', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (20, 29, 30, 8, 0.00, '2022-08-01 17:08:56', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (21, 28, 17, 7, 6.66, '2022-08-01 17:08:42', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (22, 28, 18, 7, 6.68, '2022-08-01 17:08:48', '2022-09-05 09:09:23');
INSERT INTO `tb_criteriosxservicio` VALUES (23, 28, 19, 7, 6.66, '2022-08-01 17:08:58', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (24, 28, 20, 7, 10.00, '2022-08-01 17:08:09', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (25, 28, 21, 7, 10.00, '2022-08-01 17:08:16', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (26, 28, 22, 7, 10.00, '2022-08-01 17:08:21', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (27, 28, 24, 7, 10.00, '2022-08-01 17:08:31', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (28, 28, 25, 7, 10.00, '2022-08-01 17:08:37', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (29, 28, 28, 7, 10.00, '2022-08-01 17:08:46', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (30, 28, 29, 7, 10.00, '2022-08-01 17:08:52', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (31, 28, 30, 7, 10.00, '2022-08-01 17:08:57', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (32, 28, 17, 8, 0.00, '2022-08-01 17:59:24', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (33, 28, 18, 8, 0.00, '2022-08-01 17:59:24', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (34, 28, 19, 8, 0.00, '2022-08-01 17:59:24', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (35, 28, 20, 8, 0.00, '2022-08-01 17:59:24', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (36, 28, 21, 8, 0.00, '2022-08-01 17:59:24', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (37, 28, 22, 8, 0.00, '2022-08-01 17:59:24', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (38, 28, 24, 8, 0.00, '2022-08-01 17:59:24', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (39, 28, 25, 8, 0.00, '2022-08-01 17:59:24', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (40, 28, 28, 8, 0.00, '2022-08-01 17:59:24', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (41, 28, 29, 8, 0.00, '2022-08-01 17:59:24', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (42, 28, 30, 8, 0.00, '2022-08-01 17:59:24', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (43, 31, 17, 7, 6.66, '2022-08-01 18:08:27', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (44, 31, 18, 7, 6.67, '2022-08-01 18:08:33', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (45, 31, 19, 7, 6.67, '2022-08-01 18:08:40', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (46, 31, 20, 7, 15.00, '2022-08-01 18:08:50', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (47, 31, 21, 7, 15.00, '2022-08-01 18:08:55', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (48, 31, 24, 7, 12.50, '2022-08-01 18:08:05', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (49, 31, 25, 7, 12.50, '2022-08-01 18:08:12', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (50, 31, 29, 7, 12.50, '2022-08-01 18:08:19', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (51, 31, 30, 7, 12.50, '2022-08-01 18:08:23', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (52, 31, 17, 8, 0.00, '2022-08-01 18:08:23', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (53, 31, 18, 8, 0.00, '2022-08-01 18:08:23', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (54, 31, 19, 8, 0.00, '2022-08-01 18:08:23', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (55, 31, 20, 8, 0.00, '2022-08-01 18:08:23', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (56, 31, 21, 8, 0.00, '2022-08-01 18:08:23', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (57, 31, 24, 8, 0.00, '2022-08-01 18:08:23', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (58, 31, 25, 8, 0.00, '2022-08-01 18:08:23', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (59, 31, 29, 8, 0.00, '2022-08-01 18:08:23', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (60, 31, 30, 8, 0.00, '2022-08-01 18:08:23', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (61, 30, 17, 7, 6.66, '2022-08-01 18:08:22', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (62, 30, 18, 7, 6.67, '2022-08-01 18:08:27', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (63, 30, 19, 7, 6.67, '2022-08-01 18:08:38', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (64, 30, 20, 7, 15.00, '2022-08-01 18:08:50', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (65, 30, 21, 7, 15.00, '2022-08-01 18:08:55', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (66, 30, 24, 7, 10.00, '2022-08-01 18:08:02', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (67, 30, 25, 7, 10.00, '2022-08-01 18:08:07', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (68, 30, 27, 7, 10.00, '2022-08-01 18:08:13', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (69, 30, 29, 7, 10.00, '2022-08-01 18:08:19', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (70, 30, 30, 7, 10.00, '2022-08-01 18:08:25', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (71, 30, 17, 8, 0.00, '2022-08-01 18:04:09', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (72, 30, 18, 8, 0.00, '2022-08-01 18:04:09', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (73, 30, 19, 8, 0.00, '2022-08-01 18:04:09', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (74, 30, 20, 8, 0.00, '2022-08-01 18:04:09', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (75, 30, 21, 8, 0.00, '2022-08-01 18:04:09', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (76, 30, 24, 8, 0.00, '2022-08-01 18:04:09', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (77, 30, 25, 8, 0.00, '2022-08-01 18:04:09', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (78, 30, 27, 8, 0.00, '2022-08-01 18:04:09', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (79, 30, 29, 8, 0.00, '2022-08-01 18:04:09', NULL);
INSERT INTO `tb_criteriosxservicio` VALUES (80, 30, 30, 8, 0.00, '2022-08-01 18:04:09', NULL);

-- ----------------------------
-- Table structure for tb_monitoreo
-- ----------------------------
DROP TABLE IF EXISTS `tb_monitoreo`;
CREATE TABLE `tb_monitoreo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuarioxcampania` int NULL DEFAULT NULL,
  `id_actividad` int NULL DEFAULT NULL,
  `f_registro` datetime NULL DEFAULT NULL,
  `observacion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `id_monitor` int NULL DEFAULT NULL,
  `f_control` date NULL DEFAULT NULL,
  `lead_contacto` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `c_final` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Conclusión final',
  `del` int NULL DEFAULT 0 COMMENT '0 no / 1 si',
  `f_del` datetime NULL DEFAULT NULL COMMENT 'fecha eliminada',
  `user_del` int NULL DEFAULT NULL COMMENT 'usuario delete',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 519 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_monitoreo
-- ----------------------------
INSERT INTO `tb_monitoreo` VALUES (17, 79, 2, '2022-08-08 14:08:18', 'GESTIÓN CORRECTA, CUMPLE CON LOS ATRIBUTOS.', 229, '2022-08-08', '123456', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (18, 79, 2, '2022-08-08 14:08:33', 'GESTIÓN CORRECTA, CUMPLE CON LOS ATRIBUTOS.', 229, '2022-08-08', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (19, 79, 2, '2022-08-08 14:08:37', 'GESTIÓN CORRECTA, CUMPLE CON LOS ATRIBUTOS.', 229, '2022-08-08', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (20, 76, 2, '2022-08-08 14:08:39', 'GESTIÓN CORRECTA, CUMPLE CON LOS ATRIBUTOS.', 229, '2022-08-08', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (21, 79, 2, '2022-08-08 14:08:06', 'GESTIÓN CORRECTA, CUMPLE CON LOS ATRIBUTOS.', 229, '2022-08-08', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (22, 76, 2, '2022-08-08 14:08:23', 'GESTIÓN CORRECTA, CUMPLE CON LOS ATRIBUTOS.', 229, '2022-08-08', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (23, 79, 2, '2022-08-08 14:08:55', 'GESTIÓN CORRECTA, CUMPLE CON LOS ATRIBUTOS.', 229, '2022-08-08', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (24, 76, 2, '2022-08-08 15:08:13', NULL, 229, '2022-08-08', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (25, 76, 2, '2022-08-08 15:08:07', 'GESTIÓN CORRECTA, CUMPLE CON LOS ATRIBUTOS.', 229, '2022-08-08', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (26, 77, 2, '2022-08-08 15:08:07', NULL, 231, '2022-08-05', NULL, NULL, 1, '2022-08-08 18:08:04', NULL);
INSERT INTO `tb_monitoreo` VALUES (27, 76, 2, '2022-08-08 15:08:51', 'GESTIÓN CORRECTA, CUMPLE CON LOS ATRIBUTOS.', 229, '2022-08-08', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (28, 69, 2, '2022-08-08 15:08:31', 'todo conforme, siguió el protocolo correspondiente.', 231, '2022-08-05', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (29, 78, 2, '2022-08-08 16:19:06', 'conforme con la encuesta.', 231, '2022-08-05', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (30, 78, 2, '2022-08-08 16:22:05', NULL, 231, '2022-08-05', NULL, NULL, 1, '2022-08-08 18:08:51', NULL);
INSERT INTO `tb_monitoreo` VALUES (31, 54, 1, '2022-08-08 18:04:52', NULL, 229, '2022-07-19', NULL, NULL, 1, '2022-08-08 18:08:02', NULL);
INSERT INTO `tb_monitoreo` VALUES (32, 79, 2, '2022-08-09 09:06:17', 'CONFORME CON LA ATENCIÓN CLARA Y CONCISA.', 232, '2022-08-09', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (33, 76, 2, '2022-08-09 10:31:33', NULL, 232, '2022-08-09', NULL, NULL, 1, '2022-08-09 10:08:25', NULL);
INSERT INTO `tb_monitoreo` VALUES (34, 76, 2, '2022-08-09 10:34:24', 'CONFORME CON LA ATENCIÓN, CLARA Y CONCISA.', 232, '2022-08-09', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (35, 70, 1, '2022-08-09 11:19:10', 'LE FALTA TENER UNA FLUIDEZ DE PALABRAS AL MOMENTO DE COMUNICARSE CON EL ENCUESTADO Y POR LO CONSIGUIENTE NO PUEDE MANEJAR LA SITUACIÓN QUE SE PRESENTE CORRECTAMENTE ANTE UNA OBJECIÓN.', 232, '2022-08-09', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (36, 74, 2, '2022-08-09 11:31:37', 'ENCUESTA CONFORME, CLIENTE TARDO EN ENTENDER Y SUPO CONCRETAR.', 231, '2022-08-09', '1007753', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (37, 74, 2, '2022-08-09 11:35:36', 'CONFORME  CON EL AUDIO', 231, '2022-08-09', '1023691', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (38, 74, 2, '2022-08-09 11:37:25', 'CONFORME CON LA ENCUESTA', 231, '2022-08-09', '1022006', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (39, 74, 2, '2022-08-09 11:41:17', 'CONFORME CON LA ENCUESTA', 231, '2022-08-09', '1012381', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (40, 79, 2, '2022-08-09 11:53:22', 'CONFORME  CON LA ENCUESTA', 231, '2022-08-09', '1974', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (41, 79, 2, '2022-08-09 12:07:00', 'ECUESTA CONFORME,  SE PUDO SALVAR ESTA ENCUESTA YA QUE EN LA LLAMADA INICIAL NO SE CONCLUYO Y LA ASESORA FUE HABIL EN CULMINAR.', 231, '2022-08-09', '3333', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (42, 101, 2, '2022-08-09 12:17:33', 'encuesta conforme', 231, '2022-08-09', '2175', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (43, 79, 2, '2022-08-09 12:18:58', 'encuesta conforme', 231, '2022-08-09', '3076', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (44, 101, 2, '2022-08-09 12:20:27', 'encuesta  conforme', 231, '2022-08-09', '2625', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (45, 101, 2, '2022-08-09 12:26:09', 'encuesta conforme', 231, '2022-08-09', '2858', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (46, 101, 2, '2022-08-09 12:28:12', 'encuesta conforme', 231, '2022-08-09', '2839', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (47, 101, 2, '2022-08-09 12:30:25', 'encuesta conforme', 231, '2022-08-09', '2941', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (48, 79, 2, '2022-08-09 12:32:40', 'encuesta  conforme', 231, '2022-08-09', '2933', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (49, 101, 2, '2022-08-09 12:41:17', 'encuesta conforme', 231, '2022-08-09', '2951', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (50, 79, 2, '2022-08-09 12:46:19', 'encuesta conforme', 231, '2022-08-09', '1399', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (51, 101, 2, '2022-08-09 12:50:04', 'encuesta conforme', 231, '2022-08-09', '2210', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (52, 79, 2, '2022-08-09 12:53:21', 'encuesta conforme', 231, '2022-08-09', '2434', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (53, 101, 2, '2022-08-09 12:57:16', 'encuesta conforme', 231, '2022-08-09', '2843', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (54, 79, 2, '2022-08-09 12:59:04', 'encuesta conforme', 231, '2022-08-09', '2532', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (55, 101, 2, '2022-08-09 13:07:37', 'encuesta conforme', 231, '2022-08-09', '2545', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (56, 79, 2, '2022-08-09 14:08:38', 'encuesta conforme', 231, '2022-08-09', '2665', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (57, 101, 2, '2022-08-09 14:11:25', 'encuesta conforme', 231, '2022-08-09', '2665', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (58, 101, 2, '2022-08-09 14:16:26', 'encuesta conforme', 231, '2022-08-09', '2665', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (59, 101, 2, '2022-08-09 14:18:43', 'encuesta conforme', 231, '2022-08-09', '2242', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (60, 101, 2, '2022-08-09 14:20:37', 'encuesta conforme', 231, '2022-08-09', '2242', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (61, 101, 2, '2022-08-09 14:22:03', 'encuesta conforme', 231, '2022-08-09', '1090', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (62, 79, 2, '2022-08-09 14:24:09', 'encuesta conforme', 231, '2022-08-09', '1577', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (63, 101, 2, '2022-08-09 14:40:05', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (64, 67, 2, '2022-08-09 15:02:51', 'CONFORME CON LA ATENCIÓN QUE BRINDA.', 229, '2022-08-09', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (65, 67, 2, '2022-08-09 15:04:56', 'CONFORME CON SU ATENCIÓN AL CLIENTE', 229, '2022-08-09', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (66, 79, 2, '2022-08-09 15:05:51', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (67, 67, 2, '2022-08-09 15:07:53', 'CONFORME CON SU ATENCIÓN AL CLIENTE', 232, '2022-08-09', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (68, 77, 2, '2022-08-09 15:09:12', 'CONFORME CON LA ATENCIÓN AL CLIENTE', 232, '2022-08-09', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (69, 101, 2, '2022-08-09 15:10:01', 'CONFORME CON SU ATENCIÓN AL CLIENTE', 232, '2022-08-09', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (70, 69, 2, '2022-08-09 15:15:29', 'CONFORME CON SU ATENCIÓN AL CLIENTE.', 232, '2022-08-09', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (71, 71, 1, '2022-08-09 15:20:36', 'TIENE UN POCO DE DIFICULTAD DE SEGUIR CON LA  FLUIDEZ DE LA CONVERSACIÓN YA QUE EN SU MAYORÍA TIENE MULETILLAS MUY CONTINUAS, Y POR LO CONSIGUIENTE DEMORA EN SABER MANEJAR ALGUNAS OBJECIONES.', 232, '2022-08-09', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (72, 79, 2, '2022-08-09 15:29:28', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (73, 79, 2, '2022-08-09 15:37:36', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (74, 101, 2, '2022-08-09 15:43:07', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (75, 78, 2, '2022-08-09 15:58:49', 'ENCUESTA CONFORME', 231, '2022-08-09', '1577', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (76, 78, 2, '2022-08-09 16:03:08', 'ENCUESTA CONFORME', 231, '2022-08-09', '2017521', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (77, 78, 2, '2022-08-09 16:07:09', 'ENCUESTA  CONFORME', 231, '2022-08-09', '2008722', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (78, 101, 2, '2022-08-09 16:08:52', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (79, 78, 2, '2022-08-09 16:09:39', 'ENCUESTA CONFORME', 231, '2022-08-09', '2000558', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (80, 79, 2, '2022-08-09 16:11:23', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (81, 79, 2, '2022-08-09 16:14:09', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (82, 101, 2, '2022-08-09 16:19:23', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (83, 79, 2, '2022-08-09 16:21:08', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (84, 79, 2, '2022-08-09 16:29:27', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (85, 101, 2, '2022-08-09 16:45:33', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (86, 101, 2, '2022-08-09 16:49:59', NULL, 229, '2022-08-09', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (87, 78, 2, '2022-08-09 17:01:58', 'CONFORME CON SU ATENCIÓN, AL CLIENTE.', 232, '2022-08-09', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (88, 78, 2, '2022-08-10 10:24:01', 'ENCUESTA CONFORME', 231, '2022-08-10', '1723', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (89, 78, 2, '2022-08-10 10:26:27', 'ENCUESTA CONFORME', 231, '2022-08-10', '2402', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (90, 101, 2, '2022-08-10 10:40:37', 'ENCUESTA CONFORME', 231, '2022-08-10', '1021789', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (91, 101, 2, '2022-08-10 10:49:47', 'ENCUESTA CONFORME', 231, '2022-08-10', '1013492', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (92, 101, 2, '2022-08-10 11:09:11', 'ENCUESTA CONFORME', 231, '2022-08-10', '1004478', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (93, 101, 2, '2022-08-10 11:56:53', 'encuesta conforme', 231, '2022-08-10', '1033458', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (94, 101, 2, '2022-08-10 11:58:12', 'encuesta conforme', 231, '2022-08-10', '1004316', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (95, 101, 2, '2022-08-10 12:08:17', 'encuesta conforme', 231, '2022-08-10', '1009781', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (96, 34, 1, '2022-08-11 10:37:19', 'Se  reforzó en indagar mas las repuestas del reclamo y hacer las preguntas en el momento preciso para una mejor respuesta.', 229, '2022-08-11', 'CORPORACION REYMAR S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (97, 76, 2, '2022-08-11 10:51:13', 'CONFORME CON SU ATENCIÓN AL CLIENTE.', 232, '2022-08-11', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (98, 69, 2, '2022-08-11 10:56:57', 'CONFORME CON SU ATENCIÓN AL CLIENTE.', 232, '2022-08-11', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (99, 74, 2, '2022-08-11 11:05:59', 'CONFORME CON SU ATENCIÓN AL CLIENTE.', 232, '2022-08-11', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (100, 72, 2, '2022-08-11 11:06:47', 'CONFORME CON SU ATENCIÓN AL CLIENTE.', 232, '2022-08-11', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (101, 78, 2, '2022-08-11 11:08:24', 'CONFORME CON SU ATENCIÓN.', 232, '2022-08-11', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (102, 0, 2, '2022-08-11 11:08:43', NULL, 229, '2022-08-11', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (103, 67, 2, '2022-08-11 11:11:54', 'CONFORME CON SU ATENCIÓN AL CLIENTE.', 232, '2022-08-11', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (104, 70, 1, '2022-08-11 11:16:41', 'MEJORANDO EN SU ATENCIÓN AL CLIENTE, LE FALTA MANEJAR OBJECIONES POR PARTE DEL ENCUESTADO.', 232, '2022-08-11', '', NULL, 1, '2022-08-11 11:22:40', NULL);
INSERT INTO `tb_monitoreo` VALUES (105, 79, 2, '2022-08-11 11:21:37', 'CONFORME CON SU ATENCIÓN AL CLIENTE.', 232, '2022-08-11', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (106, 70, 1, '2022-08-11 11:22:51', 'MEJORANDO LA FLUIDEZ DE PALABRA, FALTA MEJORAR EN EL MANEJO DE LAS OBJECIONES.', 232, '2022-08-11', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (107, 66, 1, '2022-08-11 11:52:07', 'LE FALTA TENER FLUIDEZ AL CONVERSAR CON EL CLIENTE Y DE IGUAL FORMA FALTA SABER MANEJAR LAS OBEJCIONES.', 232, '2022-08-11', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (108, 77, 2, '2022-08-11 12:01:10', 'CONFORME CON SU ATENCIÓN AL CLIENTE.', 232, '2022-08-11', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (109, 34, 1, '2022-08-11 16:02:51', 'Prueba de valuación.', 185, '2022-08-11', '', NULL, 1, '2022-08-11 16:23:26', NULL);
INSERT INTO `tb_monitoreo` VALUES (110, 10, 1, '2022-08-11 16:40:05', 'data', 185, '2022-08-11', '', NULL, 1, '2022-08-11 17:00:57', NULL);
INSERT INTO `tb_monitoreo` VALUES (111, 34, 1, '2022-08-12 07:45:58', 'PRUEBA DE USUARIO', 185, '2022-08-12', '', NULL, 1, '2022-08-12 08:12:08', NULL);
INSERT INTO `tb_monitoreo` VALUES (112, 34, 2, '2022-08-12 12:09:57', 'Cumple con los atributos, se esmera en indagar a que se refiere con que todo esta bien alguna acotación de la atención.', 229, '2022-08-11', 'REPRESENTACIONES TRANS MEZA E.I.R.L', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (113, 34, 2, '2022-08-12 12:11:46', 'Logro puntaje alto, se esmera en indagar mejor respuesta.', 229, '2022-08-11', 'PRESTACION DE SERV.GENERALES MOTTA S.R.L', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (114, 34, 2, '2022-08-12 12:59:04', NULL, 229, '2022-08-11', NULL, NULL, 1, '2022-08-12 12:59:49', NULL);
INSERT INTO `tb_monitoreo` VALUES (115, 30, 2, '2022-08-12 13:00:08', 'Se logró puntaje alto, comunicación fluida, cumple con los atributos de la campaña.', 229, '2022-08-11', 'TRANSPORTES ESTELITA S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (116, 35, 2, '2022-08-15 10:57:22', 'Conforme con su atención al cliente.', 232, '2022-08-15', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (117, 37, 2, '2022-08-15 12:28:53', 'Conforme con su atención al cliente.', NULL, '2022-08-15', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (118, 37, 2, '2022-08-15 12:40:26', 'Conforme con su atención al cliente.', 232, '2022-08-15', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (119, 48, 2, '2022-08-17 12:39:12', 'Conforme con la atención al cliente.', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (120, 38, 2, '2022-08-17 12:51:34', '', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (121, 38, 1, '2022-08-17 12:52:51', 'Se necesita mejorar en el lenguaje mas fluido, manejar las objeciones, y por ende tener una escucha activa, cortar la llamada y no mantenerse activo.', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (122, 48, 2, '2022-08-17 14:24:30', 'conforme con su atención al cliente.', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (123, 38, 1, '2022-08-17 14:42:22', 'Se tiene que seguir induciendo a la mejora de la escucha activa y con el fin de la llamada.', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (124, 37, 2, '2022-08-17 15:12:00', 'Conforme con su atención al cliente', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (125, 25, 2, '2022-08-17 15:19:30', 'conforme con su atención al cliente.', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (126, 36, 2, '2022-08-17 15:22:08', 'Conforme con su atención al cliente.', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (127, 26, 2, '2022-08-17 16:35:00', 'Es amable con el cliente, menciona las preguntas de la encuesta, gestión correcta.', 229, '2022-08-17', 'NEOCARGO S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (128, 26, 2, '2022-08-17 16:44:09', '', 229, '2022-08-17', 'EMPRESA REGIONAL DE SERVICIO PUBLICO DE ELECTRICID', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (129, 116, 2, '2022-08-17 16:51:19', 'Conforme con su atención al cliente.', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (130, 106, 1, '2022-08-17 16:52:54', 'Necesita mejorar en tener un lenguaje mas fluido y por ende tener una escucha activa, mejorar en cuanto a las objeciones.', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (131, 106, 2, '2022-08-17 16:56:14', NULL, 232, '2022-08-17', NULL, NULL, 1, '2022-08-17 17:00:36', NULL);
INSERT INTO `tb_monitoreo` VALUES (132, 116, 2, '2022-08-17 17:07:06', 'Conforme con su atención al cliente.', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (133, 106, 1, '2022-08-17 17:12:38', 'Se nota una mejora por el asesor, pero aun seguimos teniendo una escucha no muy buena de igual manera el manejo de objeciones y seguimos con el error de demora en cortar la llamada.', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (134, 106, 1, '2022-08-17 17:14:52', 'Se obtuvo una mejora por considerable, pero aun sigue con una escucha activa no muy buena.', 232, '2022-08-17', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (135, 32, 2, '2022-08-17 17:57:57', 'Comunicación fluida, sigue con las preguntas, gestión correcta.', 229, '2022-08-17', 'EMPRESA DE TRANSPORTE DE CARGA Y SERVICIOS GENERALES DON VICTOR E.I.R.L', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (136, 32, 2, '2022-08-17 18:03:05', 'Se presenta correctamente, sigue la secuencia de la encuesta, indaga a que se refiere con TODO BIEN.', 229, '2022-08-17', 'CRL SOLUCIONES Y SERVICIOS E.I.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (137, 32, 2, '2022-08-17 18:16:26', 'Maneja las objeciones del cliente, es un reclamo y toma nota de manera correcta en el sistema.', 229, '2022-08-17', 'BEVERAGES CORP S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (138, 117, 2, '2022-08-17 18:22:41', NULL, 231, '2022-08-17', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (139, 33, 2, '2022-08-17 18:23:03', 'Cliente menciona que no tuvo inconvenientes, consulta si podría detallar cual seria su  sugerencia, luego obtiene mejor respuesta.', 229, '2022-08-17', 'ESTACION DE ENERGIAS EL CENTENARIO SOCIEDAD ANONIMA CERRADA', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (140, 33, 2, '2022-08-17 18:34:14', 'Comunicación fluida, menciona las preguntas de manera correcta, gestión correcta.', 229, '2022-08-17', 'TRANSPORTE Y SERVICIOS ROVISA E.I.R.L', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (141, 26, 2, '2022-08-17 18:51:32', '', 229, '2022-08-17', 'EXPRESO CARGOSUR E.I.R.L.', NULL, 1, '2022-09-05 16:24:51', 229);
INSERT INTO `tb_monitoreo` VALUES (142, 33, 2, '2022-08-18 09:30:31', 'Conforme con su presentación, su escucha activa, su lenguaje fluido, respetando el SPEECH, con mucha cortesía de principio a fin.', 232, '2022-08-18', 'GEOTEC S A.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (143, 28, 1, '2022-08-18 09:40:44', 'Solo le falta mejorar en tener un lenguaje fluido y una buena comunicación, se le estará haciendo seguimiento al asesor.', 232, '2022-08-18', 'CONSORCIO Y FERRETERIA SAN LUIS E.I.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (144, 29, 2, '2022-08-18 09:54:16', 'Llamada correcta con el SPEECH bien mencionado, respeto de inicio a fin, falta un poco el menajo de objeciones pero lo realizo de manera correcta, la encuesta fue muy fluida.', 232, '2022-08-18', 'SANKARE S.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (145, 26, 2, '2022-08-18 10:03:09', 'Muy buena su encuesta, de inicio a fin es presentable muy amable y atenta, con una buena tonalidad de voz.', 232, '2022-08-18', 'CAMPO FRUIT S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (146, 32, 2, '2022-08-18 10:13:34', 'Conforme con su atención al cliente.', 232, '2022-08-18', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (147, 106, 1, '2022-08-18 10:30:36', 'Asesor va mejorando en los puntos indicados y aun falta mejora el lenguaje fluido y se continuara con el seguimiento necesario.', 232, '2022-08-18', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (148, 118, 1, '2022-08-18 13:11:30', 'Prueba de obs', 185, '2022-08-18', 'Data prueba', NULL, 1, '2022-08-18 13:15:52', NULL);
INSERT INTO `tb_monitoreo` VALUES (149, 119, 2, '2022-08-18 15:10:58', 'Conforme con su audio, ya que es amable, es fluida en su comunicación, maneja las objeciones.', 232, '2022-08-18', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (150, 131, 2, '2022-08-18 15:14:23', 'Realiza una buena confirmación manejando las objeciones, y un lenguaje fluido.', 232, '2022-08-18', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (151, 130, 2, '2022-08-18 15:18:45', 'Una buena presentación, fluida su comunicación maneja bien las objeciones y es amable de inicio a fin.', 232, '2022-08-18', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (152, 119, 2, '2022-08-18 15:22:15', 'Conforme con manera de solicitar su datos y a la vez manejar las objeciones y un lenguaje fluido.', 232, '2022-08-18', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (153, 130, 2, '2022-08-18 15:25:53', 'Es correcta su presentación, de manera fluida realiza la confirmación, es atenta y amble.', 232, '2022-08-18', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (154, 131, 2, '2022-08-18 15:28:41', 'Un buen audio por que es cortes amable, se presenta correctamente, tiene un lenguaje comunicacional y entendible.', 232, '2022-08-18', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (155, 117, 2, '2022-08-18 16:36:43', 'se comunico de manera correcta', 231, '2022-08-18', '974940597', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (156, 117, 2, '2022-08-18 16:40:20', 'particularmente se traba para explicarse al tener contacto', 231, '2022-08-18', '920077616', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (157, 117, 2, '2022-08-18 16:42:49', 'supo explicarse y manejo muy bien las objeciones.', 231, '2022-08-18', '997103570', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (158, 117, 2, '2022-08-18 16:45:56', 'supo  manejar la objecion, pero deja correr la llamada demora en colgar.', 231, '2022-08-18', '992789523', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (159, 117, 2, '2022-08-18 16:49:22', 'demora en cortar la llamada', 231, '2022-08-18', '989166007', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (160, 34, 1, '2022-08-18 16:51:44', 'Le falta tener un lenguaje correcto hay momentos en las que no pronuncia como debe ser las palabras, se le hizo el seguimiento para su conocimiento de su error y mejorar.', 232, '2022-08-18', 'CORPORACION MEDIOAMBIENTAL AMPCO PERU SOCIEDAD ANONIMA CERRADA', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (161, 33, 2, '2022-08-18 17:07:05', 'Una llamada correcta por mantener una comunicación fluida, respetando el SPEECH, manejando objeciones con una escucha activa buena, de manera cortes y atenta de inicio a fin.', 232, '2022-08-18', 'VIVENDIS S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (162, 26, 2, '2022-08-18 17:19:13', 'Una encuesta correcta amable y cortes, maneja las objeciones pero aun falta por mejorar para que lo haga mejor.', 232, '2022-08-18', 'CARTONES VILLA MARINA S.A.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (163, 34, 2, '2022-08-19 09:43:13', 'Conforme con su manera correcta de realizar la encuesta manteniendo un correcto lenguaje fluido de manera muy atenta de inicio a fin.', 232, '2022-08-19', 'INVERSIONES DAVILA SA', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (164, 28, 2, '2022-08-19 09:59:38', 'Conforme con la encuesta realizada mantiene una comunicación adecuada, aun falta un poco más en el manejo de objeciones pero lo hizo bien, es cortes de inicio a fin.', 232, '2022-08-19', 'INVERSIONES DAVILA SA.', NULL, 1, '2022-08-22 16:24:19', NULL);
INSERT INTO `tb_monitoreo` VALUES (165, 26, 2, '2022-08-19 10:10:07', 'Audio correcta, es amable, maneja objeciones, realiza la encuesta de acuerdo al SPEECH.', 232, '2022-08-19', 'MT METALES SOCIEDAD ANONIMA CERRADA.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (166, 34, 2, '2022-08-22 09:03:35', 'Buena presentación, maneja objeciones y su escucha es activa, y lenguaje correcto.', 232, '2022-08-22', 'CORPORACION MEDIOAMBIENTAL AMPCO PERU SOCIEDAD ANONIMA CERRADA', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (167, 34, 2, '2022-08-22 10:15:30', 'Conforme con la atención al cliente, la observación que se le hizo llegar la tomo en cuenta y mejoró, realizando una correcta llamada.', 232, '2022-08-18', 'METALURGICA PERUANA JOJA SAC', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (168, 34, 2, '2022-08-22 10:16:24', 'Conforme con la atención al cliente, mantiene la ilación de la llamada, realiza la encuesta conforme al spech realizando las preguntas de una forma correcta.', 232, '2022-08-18', 'MOLINOS CALCAREOS S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (169, 34, 2, '2022-08-22 10:17:57', 'Realiza una buena encuesta, conforme al speech solicitado, maneja las objeciones del encuestado de manera cortés.', 232, '2022-08-18', 'SANKARE S.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (170, 34, 2, '2022-08-22 10:18:50', 'Realiza una encuesta buena manteniendo una escucha correcta, manejando las objeciones y realizando de manera correcta las encuestas de acorde al SPEECH.', 232, '2022-08-18', 'SOLUCIONES MANTENIMIENTO Y TECNOLOGIA S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (171, 34, 2, '2022-08-22 10:22:01', 'Conforme con la llamada, ya que mantiene un tono de voz adecuado, realiza bien la encuesta con un lenguaje activo y comunicacional.', 232, '2022-08-18', 'TRANSPORTES AUSTRAL GROUP S.A.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (172, 34, 2, '2022-08-22 10:22:48', 'Conforme con su audio ya que se le escucha de manera buena muy clara y entendible, realizando la encuesta de manera satisfactoria.', 232, '2022-08-18', 'TRANSPORTES DANIEL VIZCARRA S.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (173, 34, 2, '2022-08-22 10:23:37', 'Se realiza una encuesta satisfactoria, por mantener una escucha buena y poder manejar las objeciones correctamente, su presentación y el respeto lo mantiene de inicio a fin.', 232, '2022-08-18', 'TRANSPORTES KALÁ SOCIEDAD ANONIMA CERRADA.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (174, 34, 2, '2022-08-22 10:24:26', 'Culmina con la encuesta satisfactoriamente, mantiene el lenguaje fluido con la cortesía correcta de inicio a fin.', 232, '2022-08-18', 'TRANSPORTES KALÁ SOCIEDAD ANONIMA CERRADA.', NULL, 1, '2022-08-22 16:25:17', NULL);
INSERT INTO `tb_monitoreo` VALUES (175, 34, 2, '2022-08-22 10:24:57', 'Conforme con la llamada, por que es fluida con el lenguaje y la comunicación, es cortes y maneja correctamente las objeciones.', 232, '2022-08-18', 'TRANSPORTES VHDC EIRL.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (176, 34, 2, '2022-08-22 10:25:38', 'Se mantiene dentro de los parámetros indicados, y aun sigue mejorando una comunicación adecuada de inicio a fin, con una cortesía correcta.', 232, '2022-08-18', 'YACZ CARGO SAC.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (177, 33, 2, '2022-08-22 10:27:36', 'Conforme con la llamada, por que respeta el SPEECH indicado, con una comunicación fluida, buen tono de voz, y de manera cortes de principio a fin.', 232, '2022-08-17', 'JH & VR REPRESENTACIONES GENERALES E.I.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (178, 33, 2, '2022-08-22 10:28:33', 'Conforme con la atención al cliente.', 232, '2022-08-18', '', NULL, 1, '2022-08-22 10:29:49', NULL);
INSERT INTO `tb_monitoreo` VALUES (179, 0, 2, '2022-08-22 10:31:34', NULL, 232, '2022-08-18', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (180, 28, 2, '2022-08-22 10:32:33', 'Una llamada correcta, viene mejorando en su comunicación fluida, pudo realizar la encuesta de manera correcta, es cortes de inicio a fin, ya maneja mejor las objeciones.', 232, '2022-08-18', 'COPEP DEL PERU S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (181, 28, 2, '2022-08-22 10:33:08', 'Conforme con su llamada y su atención ya que mejoro en su presentación la encuesta la hizo mas fluida, mantuvo su cortesía de manera correcta.', 232, '2022-08-18', 'JLC INVESTMENTS S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (182, 28, 2, '2022-08-22 10:34:19', 'Una atención mucha mas fluida, mejor presentación, un correcto manejo de objeciones.', 232, '2022-08-19', 'SOLRAC S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (183, 28, 2, '2022-08-22 10:34:42', 'Una llamada correcta fluida con mas seguridad, realiza el SPEECH tal como lo indicado, es cortes atento de inicio a fin.', 232, '2022-08-19', 'TRANSPORTES KALÁ SOCIEDAD ANONIMA CERRADA.', NULL, 1, '2022-08-22 16:16:19', NULL);
INSERT INTO `tb_monitoreo` VALUES (184, 26, 2, '2022-08-22 10:38:06', 'Es adecuado su forma de realizar la encuesta muy presentable y fluido.', 232, '2022-08-17', 'NEOCARGO S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (185, 26, 2, '2022-08-22 10:39:07', 'Brinda una buena atención respetando el SPEECH, es fluido la comunicación, es cortes de inicio a fin.', 232, '2022-08-17', 'SERVICIOS MULTIPLES JASEB E.I.R.L', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (186, 26, 2, '2022-08-22 10:40:09', 'Encuesta correcta, de manera fluida, atenta y amable, de acorde al SPEECH realizando las encuestas con una buena tonalidad de voz y entendible.', 232, '2022-08-18', 'DISTRIBUIDORA NORTE PACASMAYO SRL.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (187, 26, 2, '2022-08-22 10:40:36', 'Una llamada adecuada, fluida y manejando las objeciones, es cortes y amable de inicio a fin.', 232, '2022-08-18', 'EMPRESA DE TRANSPORTES GENERALES GRUPO R&B SOCIEDAD ANONIMA CERRADA.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (188, 26, 2, '2022-08-22 10:41:02', 'Una buena atención, siempre cortés y muy amable, realiza el SPEECH, de acorde a lo indicado.', 232, '2022-08-18', 'EMPRESA DE TRANSPORTES HUAMANI SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (189, 26, 2, '2022-08-22 10:41:42', 'Buena presentación, una encuesta correcta, respeta todo los parámetros indicados.', 232, '2022-08-18', 'EMPRESA DE TRANSPORTES PATY S.C.R.LTDA.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (190, 26, 2, '2022-08-22 10:42:09', 'Conforme con su llamada se le escucha con mas seguridad de inicio a fin manteniendo el respeto y realizando la encuesta correctamente.', 232, '2022-08-18', 'GMJ E.I.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (191, 26, 2, '2022-08-22 10:42:38', 'Una presentación correcta, realizando la encuesta con todos los parámetros indicados con una fluidez buena.', 232, '2022-08-18', 'INVERSIONES RAMLEI EIRL.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (192, 26, 2, '2022-08-22 10:43:17', 'Conforme con su llamada y atención, es muy fluida y cortes de inicio a fin maneja bien las objeciones.', 232, '2022-08-18', 'M. & P. REPRESENTACIONES GENERALES S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (193, 26, 2, '2022-08-22 10:43:52', 'Un buen uso de palabras para convencer a realizar la encuesta, fluida clara y realiza la encuesta satisfactoriamente.', 232, '2022-08-18', 'PROCESADORA SANTIAGO EIRL.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (194, 26, 2, '2022-08-22 10:44:28', 'Una buena atención, buena presentación, lenguaje fluido, respeta el SPEECH indicado.', 232, '2022-08-18', 'RACIONALIZACION EMPRESARIAL SA.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (195, 26, 2, '2022-08-22 10:45:08', 'Conforme con su presentación y su atención es muy amable cortes y realiza la encuesta de manera fluida.', 232, '2022-08-18', 'TRANSPORTE Y COMERCIO INTERNACIONAL PERU S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (196, 26, 2, '2022-08-22 10:45:49', 'Brinda una llamada adecuada con la cortesía y amabilidad, realiza la encuesta de acuerdo al SPEECH  y maneja objeciones.', 232, '2022-08-18', 'TRANSPORTES SSI S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (197, 26, 2, '2022-08-22 10:46:21', 'Realiza una buena encuesta, es amable, mantiene un lenguaje activo y muy fluido y maneja objeciones.', 232, '2022-08-18', 'TRANSPORTES TURISTICOS SAKURA S.A.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (198, 26, 2, '2022-08-22 10:48:16', 'Buena presentación, amable cortes, lenguaje fluido, y manejas las objeciones.', 232, '2022-08-19', 'RAZO CHOQUE, TULA.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (199, 26, 2, '2022-08-22 10:49:01', 'Mantiene una conversación amena, realiza bien la encuesta, es respetuosa, cumple con los parámetros indicados.', 232, '2022-08-19', 'TRANSPORTES DANI UNION E.I.R.L', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (200, 26, 2, '2022-08-22 10:49:31', 'Brinda una buena atención es amable cortes, realiza la encuesta de acorde a lo indicado, un lenguaje fluido.', 232, '2022-08-19', 'TRANSPORTES KALÁ SOCIEDAD ANONIMA CERRADA.', NULL, 1, '2022-08-22 16:16:37', NULL);
INSERT INTO `tb_monitoreo` VALUES (201, 26, 2, '2022-08-22 10:51:22', NULL, 232, '2022-08-17', NULL, NULL, 1, '2022-08-22 10:51:37', NULL);
INSERT INTO `tb_monitoreo` VALUES (202, 32, 2, '2022-08-22 10:52:03', 'Audio correcto, respeta los parámetros indicados, es amable, maneja objeciones, lenguaje fluido.', 232, '2022-08-17', 'BORJAS CHAVEZ LUIS ALBERTO.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (203, 32, 2, '2022-08-22 10:52:50', 'Una buena presentación, maneja las objeciones, y lenguaje correcto, es cortes y amable.', 232, '2022-08-17', 'PORCELANATOS & ACABADOS 3A EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (204, 32, 2, '2022-08-22 10:53:15', 'Buena presentación, realiza la encuesta respetando los parámetros indicados, es cortes y amable de inicio a fin.', 232, '2022-08-17', 'TRANSPORTES SAN GABRIEL S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (205, 27, 2, '2022-08-22 15:27:23', 'Maneja las objeciones que ya dieron la encuesta la vez pasada, asesor indica es una encuesta muy breve  de solo 2 minutos fácil y sencilla, luego obtiene encuesta, indaga a que se refiere con todo perfecto.', 229, '2022-08-22', 'RVC NEGOCIACIONES E.I.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (206, 27, 2, '2022-08-22 16:56:10', NULL, 229, '2022-08-22', NULL, NULL, 1, '2022-08-22 18:25:29', NULL);
INSERT INTO `tb_monitoreo` VALUES (207, 36, 2, '2022-08-23 16:34:40', 'Conforme con su presentación, con su lenguaje fluido su escucha activa y el manejo de objeciones, en la escucha activa esta regular.', 232, '2022-08-22', 'SERVIMELSA EMPRESA DE RESPONSABILIDAD LIMITADA', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (208, 36, 2, '2022-08-23 16:38:10', 'Asesor hacer correcta la presentación, aquí se traba en la objeción en un estado regular dentro de esta llamada, pide datos adicionales al encuestado de forma correcta, su escucha activa va mejorando.', 232, '2022-08-22', 'EMPRESA DE TRANSPORTES HUANCUIRE', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (209, 36, 2, '2022-08-23 16:41:56', 'Conforme con su presentación, mejora en su escucha activa, pide datos adicionales de forma correcta, su lenguaje es fluido cortes y amable de principio a fin.', 232, '2022-08-22', 'P Y Q TRANSPORTISTAS GENERALES', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (210, 36, 2, '2022-08-23 16:44:07', 'Conforme con su atención, su presentación, manejo de objeciones mejoro, su lenguaje fluido, la escucha activa va mejorando.', 232, '2022-08-23', 'SERVICIOS GENERALES MULTIPLES LA ROCA S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (211, 27, 2, '2022-08-23 17:01:31', 'Asesor convence de manera eficaz a realizar la encuesta, ademas de ello conforme con su lenguaje fluido, una buena escucha activa, y saber manejar las objeciones.', 232, '2022-08-22', 'INDUAMERICA SERVICIOS LOGISTICOS S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (212, 27, 2, '2022-08-23 17:11:33', 'Asesor realizo la encuesta de manera correcta con su presentación, manejo de objeciones, su escucha activa y su lenguaje fluido.', 232, '2022-08-22', 'RENTING S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (213, 27, 2, '2022-08-23 17:18:01', 'Asesor tiene un manejo adecuado de objeciones, lenguaje muy fluido, cortes y amable de inicio a fin, sabe solicitar datos adicionales al cliente.', 232, '2022-08-22', 'TRANSPORTES Y SERVICIOS GENERALES CARRIL S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (214, 27, 2, '2022-08-23 17:24:01', 'Asesor es cortes de inicio a fin, buen lenguaje comunicacional, maneja bien las objeciones, una buena escucha activa, solicita bien los datos adicionales al encuestado.', 232, '2022-08-22', 'SUM VEHICULOS S.A.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (215, 36, 2, '2022-08-23 17:44:32', 'Se presenta con datos completos, en la pregunta de recomendación le dicen todo bien, asesor indaga a que se refiere con ello y obtiene mejor respuesta ¨el espacio deberia ser mas amplio¨', 229, '2022-08-23', 'XPLOMINE S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (216, 36, 2, '2022-08-24 08:19:33', 'Asesor se presenta de manera correcta, lenguaje fluido, cortes de inicio a fin, la escucha activa va mucho mejor y brinda la información de acuerdo al SPEECH.', 232, '2022-08-23', 'CHINGUDI TRANSPORTE DE CARGA', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (217, 134, 2, '2022-08-24 12:33:49', NULL, 232, '2022-08-24', NULL, NULL, 1, '2022-08-24 14:06:48', NULL);
INSERT INTO `tb_monitoreo` VALUES (218, 134, 2, '2022-08-24 12:59:19', 'Realiza la encuesta de manera satisfactoria, con algunos inconvenientes con las preguntas como trabarse, no tener seguridad en realizar la encuesta, pero a pesar de ello sabe seguir pese al nerviosismo.', 232, '2022-08-24', '16277147', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (219, 143, 2, '2022-08-24 19:09:50', 'Asesora realiza todas las preguntas según el speech, pausada tiene una escucha activa, lenguaje y comunicación bajo lo correcto, maneja las objeciones, solo hay un detalle que tiene un poco de duda al decir la pregunta pero las hace bien.', 232, '2022-08-24', '963073111', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (220, 143, 2, '2022-08-24 19:17:13', 'Asesora se pone nerviosa se traba  al momento de decir el speech al inicio de la llamada luego poco a poco mejoro pero no tuvo en general un buen lenguaje comunicacional.', 232, '2022-08-24', '985724555(2)', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (221, 145, 1, '2022-08-25 10:09:24', 'Comunicación  dice masomenos, disculpe mi ignorancia, no indica la información correcta de masivo o corporativo, en la pregunta NPS  cliente le dice no hay buena cobertura se va la linea   donde asesor le explica lo de señal ( espacios pequeños dentro de un lugar), le hacen consultas extras   y solo indica es en base al servicio cuando debió decir al culminar esta llamada se le brindara un numero de atención al cliente de su operador.', 229, '2022-08-24', '16277826', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (222, 144, 1, '2022-08-25 10:11:22', 'Asesora se presenta correctamente, pero no puede manejar las objeciones ante el cliente corta llamada sin poder rebatirle.', 232, '2022-08-24', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (223, 144, 1, '2022-08-25 10:26:21', 'Asesora realiza una buena presentación, en momentos no pronuncia bien algunas palabras se traba, mejoro las objeciones.', 232, '2022-08-24', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (224, 145, 1, '2022-08-25 11:07:45', 'En la pregunta NPS  le dan puntaje 7, cliente  informa que notifique sus linea, de los productos deseo renovar mi equipo y ponen pretexto, luego asesor indica se refiere  al servicio de la linea del productos móviles  que le faltaría para que recomiende , cliente dice NADA TODO ESTA BIEN, asesor consulta por momentos que  esta bien?, cliente dice HASTA EL MOMENTO TODO ESTA BIEN ,luego asesor asume y cuando debió orientar  y reformular  ¨en base a la experiencia que tuvo con su operador cual sería su sugerencia, detálleme por favor¨, al final solo dice algo mas que quisiera agregar, solo se basa a lo bueno del servicio y NO A LA SUGERENCIA.', 229, '2022-08-24', '16277294', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (225, 133, 1, '2022-08-25 11:54:19', 'Asesor no es seguro al realizar la encuesta, se traba muchas veces, no mantiene un lenguaje fluido, induce en dos oportunidades a la respuesta, no maneja bien las objeciones una escucha regular.', 232, '2022-08-25', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (226, 141, 1, '2022-08-25 16:10:51', 'Asesora se pone nerviosa, tiene un lenguaje regular, con las objeciones emite un silencio pero luego procede.', 232, '2022-08-25', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (227, 142, 1, '2022-08-25 16:43:06', NULL, 232, '2022-08-25', NULL, NULL, 1, '2022-08-25 16:48:35', NULL);
INSERT INTO `tb_monitoreo` VALUES (228, 145, 1, '2022-08-25 16:50:13', 'Asesor se presenta correctamente, manejo de objeciones va mejorando, su escucha activa no es buena, le falta mejorar en su lenguaje fluido, constantemente utiliza las muletillas de !ehhh!.', 232, '2022-08-24', '', NULL, 1, '2022-08-25 17:49:02', NULL);
INSERT INTO `tb_monitoreo` VALUES (229, 143, 1, '2022-08-25 17:06:15', 'Asesora se presenta de manera adecuada, se sigue equivocando al mencionar las preguntas, aun no se siente muy segura, le falta pronunciar bien las palabras, una escucha activa regular.', 232, '2022-08-24', '993802454', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (230, 143, 1, '2022-08-25 17:12:02', 'Asesora se presenta correctamente, rebate al cliente para realizar la encuesta, no pronuncia bien las palabras, un lenguaje poco fluido, su escucha activa que falta mejorar para poder rebatir.', 232, '2022-08-24', '965356047', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (231, 143, 1, '2022-08-25 17:24:04', 'Realiza un presentación adecuada, el rebate falta mejorar para poder manejar las objeciones, no pronuncia bien las palabras, una escucha activa baja.', 232, '2022-08-24', '991848805', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (232, 134, 1, '2022-08-25 17:42:57', NULL, 229, '2022-08-24', NULL, NULL, 1, '2022-08-29 15:07:15', NULL);
INSERT INTO `tb_monitoreo` VALUES (233, 142, 1, '2022-08-25 17:55:01', 'Asesora, se traba en las preguntas, las objeciones no son buenas pero se esfuerza en tratar de llegar a la respuesta.', 232, '2022-08-24', '942425491', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (234, 142, 1, '2022-08-25 18:17:21', 'Asesora en la pregunta si el celular es masivo como persona natural, se demora en mencionarlo por que duda en decirlo se queda callada hasta que el cliente le pregunta como dijo?? no fue clara en esa pregunta.', 232, '2022-08-24', '970617175', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (235, 142, 1, '2022-08-25 18:51:41', 'Asesora mejora en la pronunciación de las preguntas, las realiza con muchas confianza, le falta solicitar datos al principio el asesor realiza de otra forma la pregunta y luego lo vuelve a repetir por el cliente le dijo como?.', 232, '2022-08-24', '971340643', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (236, 132, 1, '2022-08-25 19:06:59', 'Asesora induce a la respuesta a que compañía cuando pudo usar otros sinónimos y llegar a que le responda de manera correcta, no realiza bien la pregunta y/o se traba en decir por que recomendaría a su compañía.', 232, '2022-08-24', '16278265', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (237, 132, 1, '2022-08-25 19:22:09', 'No realiza bien la pregunta que tan probable es que usted recomiende a la compañía, se traba mucho, no tiene un lenguaje fluido y no  vocaliza bien, y así de igual manera sucede consecutivamente en las siguientes preguntas.', 232, '2022-08-24', '16277137', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (238, 132, 1, '2022-08-25 19:48:36', 'Asesora aun se  confunde al mencionar las preguntas,  se traba, se pone nerviosa no vocaliza bien no tiene un lenguaje bueno.', 232, '2022-08-24', '16277864', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (239, 143, 1, '2022-08-27 10:46:33', 'POSTPAGO -CLARO, EN LA PREGUNTA  NPS  BRINDAN PUNTAJE 5 - 6 , ASESORA ASUME QUE ES 5, CLIENTE INDICA EL SERVICIO  DE LA CALIDAD DEL INTERNET ES LENTO, RECARGA 100 SOLES EN 5 DÍAS, ASESORA INDUCE POR PROMOCIONES EN TODO CASO NO LE DURA,  CONSULTA  PERO ES PREPAGO O POSTPAGO, RESPONDEN POSTPAGO,  NO SE PUEDE PASAR LA ENCUESTA YA QUE ASESORA INDUCE Y NO PROFUNDIZA DE MANERA ADECUADA LAS PREGUNTAS ABIERTAS, ENCUESTA NO VALIDA.', 229, '2022-08-25', '952376727', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (240, 132, 1, '2022-08-27 11:23:18', 'MOVISTAR -EN LA PREGUNTA DE SATISFACCION NPS DAN  9 ,  TIENE COBERTURA A NIVEL NACIONAL, ASESORA SOLO DICE OTRA RECOMENDACION , LUEGO LE DICEN NO SE VA LA SEÑAL EN SITIOS REMOTOS, ASESORA SOLO CONTINUA CUANDO DEBIO EXPLICAR EL TERMINO COBERTURA Y SEÑAL NO PUEDEN IR LOS DOS Y EN QUE TEMA EN ESPECIFICO DEL SERVICIO MOVIL ME PODRIA DETALLAR, SIGUE CON LAS OTRAS PREGUNTAS PERO ENCUESTA NO PASA.', 229, '2022-08-25', '16278265', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (241, 132, 1, '2022-08-27 11:28:50', 'CLARO - POSTPAGO, EN LA PREGUNTA DE SATISFACCIÓN NPS DAN 7, CLIENTE MENCIONA LA COBERTURA NO LLEGA A NIVEL NACIONAL, ASESORA CONSULTA CUAL SERIA SU RECOMENDACION EN BASE A ESE PROBLEMA, CLIENTE DICE HAY LUGARES QUE NO TIENE COBERTURA DEBERIAN BRINDAR MAS ANTENAS, ASESORA ASUME QUE ESTA BIEN CUANDO DEBIO DECIR ¨ ENTONCES  EN BASE A LO QUE ME ESTA MENCIONANDO QUE TENDRÍAMOS QUE MEJORAR EN QUE TEMA EN ESPECIFICO DE LA COBERTURA LO ESCUCHO PARA QUE EN UN FUTURO PUEDA CALIFICAR A MOVISTAR CON UN 9 O 10', 229, '2022-08-25', '16278369', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (242, 134, 1, '2022-08-27 11:29:04', 'SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN.. SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN.. SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN.. SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN.. SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN..SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN..SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN.. SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN..SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN.. SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN.. SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN.. SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN.. SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN.. SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN..SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN..SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN.. SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN..SE PROCEDE CON LA PRUEBA CORRESPONDIENTE, CLIENTE OMITE SUS DETALLES ETC. PERO SE DEJA CONSTANCIA QUE CORRECTAMENTE CUMPLE LA FUNCIÓN..', 185, '2022-08-27', 'DATA_COD_PRUEBA', NULL, 1, '2022-08-31 12:46:46', 185);
INSERT INTO `tb_monitoreo` VALUES (243, 133, 1, '2022-08-27 11:59:38', 'POR MOMENTOS SE ENREDA  CON SUS PALABRAS, NO VOCALIZA BIEN, OPERADOR  BITEL, EN LA PREGUNTA NPS- CLIENTE INDICA 8 Y ES POR EL INTERNET, ASESOR INDUCE ¨NO TIENE UNA BUENA SEÑAL DE INTERNET¨ LUEGO CLIENTE DICE A VECES , ASUME QUE ESTA BIEN CUANDO DEBERÍA DAR RECOMENDACIONES O SUGERENCIAS DE TODO LO MALO QUE SUCEDE CON EL SERVICIO MOVIL DE BITEL, SOLO CONTINUA CON LAS OTRAS PREGUNTAS, ENCUESTA NO VALIDA.', 229, '2022-08-25', '16278955', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (244, 133, 1, '2022-08-27 12:06:16', 'COMUNCIACION NO FLUIDA, MULETILLAS EH, OPERADOR ENTEL- EN LA PREGUNTA DE SATISFACCIÓN DAN 10, CLIENTE MENCIONA TENGO UN BUEN SERVICIO DE LLAMADAS E INTERNET HAY BUENA COBERTURA,  PORQUE CUANDO TENIA MOVISTAR  EN BAYOVAR  NO TENIA SEÑAL, EN LA PREGUNTA DE ACCIONES LO DICE DE MANERA RÁPIDA Y NO ESPERANDO LAS RESPUESTAS DE CADA UNA, EN LA PREGUNTA DEL MOTIVO DE  CALL CENTER , CLIENTE MENCIONA DE UN CELULAR QUE USA SU HIJO PERO NO QUE ELLA ES USUARIA DE LA LINEA , ASESOR ASUME QUE ESTA BIEN Y CONTINUA LA SATISFACCION DEL CALL CENTER Y CLIENTE SOLO SIGUE RESPONDIENDO PERO NO COMO USUARIO SINO QUE ELLA PAGA DEL PROBLEMA DEL EQUIPO. ENCUESTA NO VALIDA.', 229, '2022-08-25', '16278140.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (245, 141, 1, '2022-08-27 12:24:42', 'OPERADOR BITEL- RECARGA , EN LA PREGUNTA NPS BRINDAN 10, CLIENTE MENCIONA PORQUE TODA LA FAMILIA TIENE BITEL, ASESORA SOLO DICE ALGUNA OTRA RAZÓN POR QUE RECOMENDARÍA, LUEGO LE DICEN SIEMPRE HE TENIDO Y NO TUVE PROBLEMAS, ASESORA ASUME Y CONTINUA CON LAS DEMÁS PREGUNTAS, DEBIÓ PROFUNDIZAR QUE ES LO QUE MAS LE AGRADA DEL SERVICIO EN QUE TEMA EN PARTICULAR YA QUE CALIFICO CON 10, ENCUESTA NO VALIDA.', 229, '2022-08-25', '922412682', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (246, 141, 1, '2022-08-27 12:28:37', 'OPERADOR CLARO- POSTPAGO, EN LA PREGUNTA NPS LE DAN  4,  CLIENTE MENCIONA SERVICIO DE CLARO ES MUY CARO , YA QUE BITEL DAN INTERNET Y LLAMADAS ILIMITADAS POR 15 DÍAS COBRAN 15 SOLES  PERO CLARO COBRA TODO 80 SOLES MUCHA DIFERENCIA, ASESORA SOLO DICE A PARTE DE LOS PRECIOS ALGUNA OTRA RAZÓN CUANDO DEBIÓ INDAGAR MAS Y  DECIR BASEMONOS A CLARO POR QUE DICE QUE ES MUY CARO EN QUE TEMA EN ESPECIFICO POR FAVOR NO SOLO ASUME DEL OTRO OPERADOR, ENCUESTA NO VALIDA.', 229, '2022-08-25', '920674957', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (247, 142, 1, '2022-08-29 09:30:48', 'OPERADOR CLARO - EN LA PREGUNTA NPS LE DAN PUNTAJE 9, CLIENTE MENCIONA EL SERVICIO DE INTERNET TIENE MEJOR COBERTURA  Y SEÑAL QUE OTROS OPERADORES,  ASESORA SOLO DICE ALGO MAS QUE ME PUEDA AGREGAR - CUANDO DEBIÓ EXPLICAR EL TERMINO DE COBERTURA Y SEÑAL YA QUE NO PUEDEN IR LOS DOS, CONTINUA CON LAS OTRAS PREGUNTAS, ENCUESTA NO VALIDA.', 229, '2022-08-25', '994950991', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (248, 141, 1, '2022-08-29 09:58:26', 'NO CUMPLE CON EL SPEECH, DICE 3 MINUTOS DE SU TIEMPO, OBVIA LA PREGUNTA AZ1.1 ¿Por qué calificó con 9 la recomendación de BITEL?¿Alguna otra razón?, NO PROFUNDIZA, NI ORIENA PARA OBTENER LAS RESPUESAS CORRECTAS E  INDUCE EN LAS RESPUESTAS.', 228, '2022-08-27', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (249, 136, 2, '2022-08-29 09:58:44', 'OPERADOR ENTEL -POSTPAGO, EN LA PREGUNTA NPS LE DAN PUNTAJE 7, CLIENTE MENCIONA CALIDAD EN SU SERVICIO Y EN ALGUNAS  PROVINCIAS NO INGRESA LA SEÑAL  Y RAPIDEZ EN SU INTERNET, ASESOR EXPLICA TERMINO DE COBERTURA Y SEÑAL EN CUANTO A ELLO QUE LE FALTARÍA A ENTEL PARA QUE  LA RECOMIENDE, LUEGO CLIENTE MENCIONA RAZONES NEGATIVAS, DESPUÉS SE ESO ASESOR ORIENTA EN BASE A LO INDICADO QUE LE GUSTARÍA, LE DICEN MAS INTERNET Y SEÑAL PARA PODER REALIZAR LLAMADAS, CONTINUA CON LAS OTRAS PREGUNTAS  DE ACCIONES, GESTIÓN CORRECTA.', 229, '2022-08-25', '935553110', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (250, 138, 1, '2022-08-29 10:11:30', 'OPERADOR BITEL - PREPAGO, POR MOMENTOS NO VOCALIZA BIEN ALGUNAS PALABRAS, MUCHOS TIEMPOS DE ESPERA, MULETILLAS EH, EN ESTE CASO,OK,  EN  LA PREGUNTA NPS LE DAN PUNTAJE 6 o 7, ASESOR ASUME ESAS RESPUESTAS CUANDO SOLO DEBE QUEDARSE CON UNA,  LUEGO DICE POR QUE CALIFICO CON 6?,  LUEGO LE DICEN POR QUE ES MUY LENTO EL INTERNET, NO INDAGA ALGUNA OTRA RAZÓN,  EN LA PREGUNTA DE ACCIONES HA LLAMADO AL CALL CENTER DE BITEL -  NO RECALCA DURANTE LOS ÚLTIMOS 12 MESES, EN LA PREGUNTA DE SATISFACCIÓN EN EL CENTRO DE ATENCIÓN PRESENCIAL DE BITEL LE DAN 8, LUEGO CONSULTA QUE LE FALTARÍA DONDE RESPONDEN MAS OFERTAS COMO UN KIT DE REGALO , ASESOR SOLO CONTINUA CUANDO DEBIÓ INDICAR HAY QUE BASARNOS A LA ATENCIÓN BRINDADA EN LA AGENCIA POR SU SERVICIO, ENCUESTA NO VALIDA.', 229, '2022-08-25', '16279244', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (251, 141, 1, '2022-08-29 11:05:59', 'NO CUMPLE CON EL SPEECH, CAMBIA LAS PREGUNTAS, NO ORIENTA DE MANERA CORRECTA, LE FALTA MANEJO DE OBJECIONES', 228, '2022-08-27', 'M55', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (252, 147, 1, '2022-08-29 11:07:19', 'OPERADOR BITEL POSTPAGO, EN LA PREGUNTA NPS LE DAN PUNTAJE 6, CLIENTE MENCIONA  MUY LENTO ES SU LINEA, ASESOR CONSULTA CON QUE PLAN CUENTA USTED, CUANDO DEBIÓ ESPECIFICAR A QUE TEMA SE REFIERE CON SU SERVICIO POSTPAGO, SOLO CONTINUA CON LAS OTRAS PREGUNTAS  NO ORIENTA BIEN AL CLIENTE,  COMUNICACIÓN  NO FLUIDA, MULETILLAS, ENCUESTA NO VALIDA.', 229, '2022-08-26', 'NO REGISTRO ID', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (253, 147, 1, '2022-08-29 11:16:29', NULL, 229, '2022-08-26', NULL, NULL, 1, '2022-08-29 11:46:16', NULL);
INSERT INTO `tb_monitoreo` VALUES (254, 144, 1, '2022-08-29 11:47:34', 'OPERADOR ENTEL - POST PAGO, EN LA PREGUNTA NPS PUNTAJE 8, CLIENTE INDICA SU ATENCIÓN AL CLIENTE, ASESORA INDAGA A QUE SE REFIERE, LUEGO LE DICEN CUANDO LAMO POR CELULAR NO ME DAN UNA RPTA AL MOMENTO O SOLUCIÓN, FALTA INDAGAR Y QUE SUCEDIÓ POR  CUAL NO BRINDARON SOLUCIÓN(  PARA PODER SACAR DE AHÍ LA RECOMENDACIÓN ) SOLO DICE ALGO MAS EN GENERAL, LE DICEN NO , CONTINUA CON LAS OTRAS PREGUNTAS , ENCUESTA NO VALIDA.', 229, '2022-08-26', 'NO REGISTRO ID', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (255, 137, 1, '2022-08-29 12:06:21', 'OPERADOR MOVISTAR- PREPAGO, COMUNICACIÓN NO FLUIDA SE ENREDA EN DAR LAS PREGUNTAS, MUCHO TIEMPO EN ESPERA,  EN LA PREGUNTA NPS  LE DAN PUNTAJE  10  CLIENTE DICE NO SE, ASESOR INDUCE O NO LE PARECE ESA NOTA DE 10  - HAGA MEMORIA, LA  ESPERO O ES UNA NOTA MAS BAJA , NO ESTA ORIENTADO AL CLIENTE DE MANERA CORRECTA, LUEGO CLIENTE CAMBIA DE PUNTAJE POR PRESIÓN DEL ASESOR BRINDA 7 YA QUE NO HAY COMUNICACIÓN A LOS SITIOS MAS LEJANOS - ESTA FALLANDO, ASESOR VUELVE A INDUCIR EL INTERNET FALLA O LA SEÑAL  CUANDO DEBIÓ  INDICAR EN BASE A ESA EXPERIENCIA QUE DEBERÍAMOS DE MEJORAR EN QUE TEMA EN ESPECIFICO, ENCUESTA NO VALIDA.', 229, '2022-08-26', '16280674', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (256, 141, 1, '2022-08-29 12:40:49', 'NO CUMPLE CON EL SPEECH, INDUCE EN LAS RESPUESTAS, NO LEE TODAS LAS PREGUNTAS, LE FALTA MANEJO DE OBJECIONES, LA REDACCION NO ES CLARA', 228, '2022-08-27', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (257, 141, 1, '2022-08-29 13:40:47', 'CUMPLE EL SPEECH DE LA PRESENTACION, SIN EMBARGO  LE FALTA MANEJO DE OBJECION, PARA  ORIENTAR Y PROFUNDIZAR DE MANERA CORRECTA', 228, '2022-08-29', 'M55', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (258, 141, 1, '2022-08-29 13:57:42', 'NO ORIENTA NI PROFUNDIZA DE MANERA CORRECTA, CLIENTE LE DICE MALA SEÑAL Y OPERADORA LE DICE ES SEÑAL O COBERTURA, NO ORIENTA NI PROFUNDIZA DE MANERA CORRECTA LE FALTA MANEJO DE OBJECIONES.', 228, '2022-08-29', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (259, 134, 1, '2022-08-29 14:06:46', 'OPERADOR BITEL - POST PAGO, EN LA PREGUNTA NPS  DAN PUNTAJE 3 , CLIENTE INDICA  EN ESTA ZONA RURAL SOLO LO UTILIZO POR LA SEÑAL  PERO EN EL CASO DEL INTERNET ESTA BIEN SOLO 5 DÍAS Y DESPUÉS  ES LENTO, ASESORA NO  ORIENTA BIEN Y MENCIONA ¨ TIENE PROBLEMAS DE COBERTURA¨  CUANDO DEBIÓ ENFOCARSE EN  LA SEÑAL , FALTA INDICAR ALGUNA OTRA RAZÓN CON RESPECTO AL SERVICIO BRINDADO , EN LA PREGUNTA DE ACCIONES NO MENCIONA DURANTE LOS ÚLTIMOS 12 MESES,  EN LA SATISFACCIÓN EN EL CENTRO DE ATENCIÓN PRESENCIAL DE BITEL, LE DAN 4 YA QUE HIZO SU RECLAMO DE QUE EL INTERNET ESTA BAJO. ENCUESTA NO VALIDA.', 229, '2022-08-27', '943856969', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (260, 134, 1, '2022-08-29 14:35:13', 'OPERADOR MOVISTAR - TRIÓ -CELULAR, EN LA PREGUNTA NPS - PRODUCTOS FIJOS  DAN PUNTAJE  8. CLIENTE MENCIONA  A VECES SE VA LA SEÑAL Y ES MUY LENTA, ASESORA INDAGA LA SEÑAL ES DENTRO O FUERA DE CASA, CLIENTE INDICA EN TODA LA ZONA, ASESORA ASUME  ¨ENTONCES TAMBIÉN ES LA COBERTURA¨ ,  CUANDO DEBIÓ EXPLICAR EL TERMINO DE COBERTURA Y SEÑAL PARA  DISCERNIR UNO DE ESOS DOS, INDUCE  TAMBIÉN PRESENTE PROBLEMAS CON LAS LLAMADAS  Y LUEGO DICE ME PUEDE INDICAR, LUEGO LE DICEN EL INTERNET, ENCUESTA NO VALIDA NO RESPETA LAS PROTOCOLOS DE LA ENCUESTA.', 229, '2022-08-27', '970466237', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (261, 145, 1, '2022-08-29 15:08:21', 'OPERADOR CLARO - POSTPAGO - PRODUCTOS FIJOS, EN LA PREGUNTA NPS LE DAN 8%, ASESOR ASUME QUE ESTA BIEN , CLIENTE MENCIONA QUE SOLUCIONEN SU CABLE VOY DIEZ DÍAS SIN ELLO LLAMO Y SOLO DICEN ESPEREN LA SOLICITUD , ASESOR CONSULTA CON RESPECTO AL SERVICIO DEL CABLE QUE NO LE VA BIEN  POR ELLO ME PODRÍA  ESPECIFICAR QUE ES LO QUE TIENE QUE MEJORAR PARA QUE SEA ALTAMENTE  PROBABLE QUE LA RECOMIENDE CON RELACIÓN AL CABLE E INDICA QUE ES LO QUE ESTA FALLANDO PARA PODER COLOCARLO ESPECÍFICAMENTE( NO ESTA ORIENTANDO DE MANERA CORRECTA) , LUEGO CLIENTE MENCIONA LAS RAZONES NEGATIVAS  Y NUNCA BRINDO SUGERENCIA,  DESPUÉS ASESOR CONTINUA CON  LAS OTRAS PREGUNTAS, GESTIÓN NO VALIDA', 229, '2022-08-25', '16277526', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (262, 99, 2, '2022-08-29 15:12:37', 'SE PRESENTA CON DATOS COMPLETOS, ES CÁLIDA EN LA LLAMADA , CLIENTE DESEA ADQUIRIR PRODUCTOS DE GATORADE, SOLICITA DATOS DE MANERA CORRECTA, ENVÍA CORREO ELECTRÓNICO, GESTIÓN CORRECTA.', 229, '2022-08-15', 'MARIBEL YENY SOTELO ZAVALETA', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (263, 99, 2, '2022-08-29 15:17:01', 'Comunicación con cliente, le dicen que quiere cotización para comprar, asesora consulta si van hacer alrededor de 100 unidades, le dicen que SI , consulta sus datos, agradece por la llamada, envia correo al encargado de ZONA SUR.', 229, '2022-08-15', 'GERMAN ALONSO SARMIENTO RODRIGUEZ', NULL, 1, '2022-08-29 15:27:20', NULL);
INSERT INTO `tb_monitoreo` VALUES (264, 141, 1, '2022-08-29 15:22:38', 'NO MANEJA LA LLAMAD DE MANERA CORRECTA, CLIENTE LE DICE TENGO MALA SEÑAL Y OPERADORA DICE ENTONCES EL PROBLEMA ES CON LA COBERTURA, NO ORIENTA NI PROFUNDIZA DE MANERA CORRECTA, ASUME RESPUESTAS.', 228, '2022-08-29', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (265, 99, 2, '2022-08-29 15:27:24', 'Comunicación con cliente, le dicen que quiere cotización para comprar, asesora consulta si van hacer alrededor de 100 unidades, le dicen que SI , consulta sus datos, agradece por la llamada, envia correo al encargado de ZONA SUR.', 229, '2022-08-16', 'GERMAN ALONSO SARMIENTO RODRIGUEZ', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (266, 99, 2, '2022-08-29 15:27:57', 'Presentación correcta, cliente desea  adquirir productos de gatorade, pepsi y agua san carlos a mayor a 100 unidades, se esmera en solicitar los datos para poder enviar al área especializada, al final agradece por la llamada.', 229, '2022-08-18', 'CHRISTIAN GUILLERMO ORTIZ GIL', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (267, 99, 2, '2022-08-29 15:29:52', 'Consultan si es PEPSICO, confirma que si,  desean  productos a mayor 100 unidades de GATORADE, solicita los datos y hace mención que el tiempo aproximado es de 24 horas sin contar feriados,  cliente acepta, envía correo al encargado de ZONA PROVINCIA.', 229, '2022-08-29', 'ROBERT RICHARD AMAYA  FERNANDEZ', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (268, 147, 1, '2022-08-29 15:32:00', 'OPERADOR MOVISTAR-POSTPAGO, EN LA PREGUNTA NPS LE DAN 8 CLIENTE INDICA  SIEMPRE HAY PROBLEMAS CON LA SEÑAL, ASESOR INDAGA ESE PROBLEMA SE DA EN TODA SU CASA O ALGÚN LUGAR EN ESPECIFICO, LUEGO CLIENTE MENCIONA TAMBIÉN CUANDO SALIMOS, ASESOR NO ORIENTA BIEN  SOLO SE ENREDA  Y NO INDAGA A QUE TEMA EN  ESPECIFICO EN CUANTO A LA SEÑAL, SOLO ASUME Y SIGUE CON LAS PREGUNTAS, ENCUESTA NO VALIDA.', 229, '2022-08-26', 'NO REGISTRO ID', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (269, 143, 1, '2022-08-29 15:53:21', 'FALTA ESCUCHA ACTIVA CLIENTE LE DICE QUE TRABAJA CON OPERADOR MOVISTAR Y OPERADORA LE DICE CLARO Y CLIENTE LE TIENE QUE CORREGIR, NO ORIENTA NI PROFUNDIZA  DE LA MANERA CORRECTA', 228, '2022-08-26', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (270, 133, 1, '2022-08-29 16:05:21', 'OPERADOR  -ENTEL POSTPAGO , NO ES FLUIDA LA COMUNICACIÓN, EN LA PREGUNTA NPS  DAN PUNTAJE  5 o 6 , ASESOR ASUME QUE ESTA BIEN RESPUESTA, LUEGO CLIENTE BRINDA MOTIVO  NO RECOMDARIA TENGO UN PLAN PERO ME VOY A CAMBIAR A BITEL, EL INTERNET QUE PAGO ES 80 SOLES EL INTERNET ES PÉSIMO, ASESOR DICE AH ENTIENDO  ALGUNA OTRA RAZÓN,  CLIENTE INDICA PERDÍ MI CELULAR Y ALGUIEN SACO CON MI NOMBRE, ASESOR NO INDAGA A QUE SE REFIERE CON SU INTERNET ES PÉSIMO ME PDDRIA DETALLAR ,', 229, '2022-08-26', '16280561', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (271, 143, 1, '2022-08-29 16:06:43', 'PREGUNTA POR EL NOMBRE DE LA BASE, CUANDO DEBERIA PREGUNTA POR EL USUARIO DEL SERVICIO, INDUCE EN LAS RESPUESTAS, NO ORIENTA NI PROFUNDIZA DE LA MANERA CORRECTA.', 228, '2022-08-26', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (272, 143, 1, '2022-08-29 16:13:15', NULL, 228, '2022-08-26', NULL, NULL, 1, '2022-08-31 11:31:01', 185);
INSERT INTO `tb_monitoreo` VALUES (273, 143, 1, '2022-08-29 16:27:52', 'CLIENTE BRINDA RESPUESTAS AMBIGUAS Y OPERADORA NO PROFUNDIZA NI ORIENTA BIEN,  ASUME RESPUESTAS, NO TIENE ESCUCHA ACTIVA', 228, '2022-08-26', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (274, 143, 1, '2022-08-29 16:45:20', NULL, 228, '2022-08-26', NULL, NULL, 1, '2022-08-31 11:30:59', 185);
INSERT INTO `tb_monitoreo` VALUES (275, 144, 1, '2022-08-29 17:00:05', 'OPERADOR ENTEL , EN LA PREGUNTA NPS LE DAN 10  PORQUE EL EQUIPO Y LA LINEA ES MEJOR QUE OTROS OPERADORES  Y DAN BENEFICIOS, ASESORA SOLO DICE ALGUNA OTRA RAZÓN CUANDO DEBIÓ INDAGAR A QUE TEMA  EN ESPECIFICO SE REFIERE CON LA LINEA Y  EN CUANTO A LOS BENEFICIOS  QUE LE BRINDAN A USTED, NO PROFUNDIZA Y SOLO CONTINUA CON LAS PREGUNTAS  DE ACCIONES, PERMANENCIA, ENCUESTA  NO VALIDA.', 229, '2022-08-26', 'NO REGISTRO ID', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (276, 143, 1, '2022-08-29 17:09:11', 'SE PRESENTA DE MANERA CORRECTA, LOGRA ORIENTAR AL CLIENTE, PERO AUN LE FALTA MANEJO DE OBJECION YA QUE SE ENRIEDA CON SUS PALABRAS', 228, '2022-08-26', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (277, 150, 1, '2022-08-29 17:11:42', 'OPERADOR MOVISTAR -POSTPAGO, EN LA PREGUNTA NPS DAN PUNTAJE 5 CLIENTE INDICA LA COBERTURA NO ES MUY BUENA EN ALGUNOS LUGARES, ASESORA EXPLICA TERMINO DE SEÑAL Y COBERTURA CUANDO YA LE BRINDARON RESPUESTA,LUEGO LE DICEN ES COBERTURA, ASESORA NO INDAGO A QUE TEMA SE REFIERE EN CUANTO A LA COBERTURA, SOLO CONTINUA CON LAS OTRAS PREGUNTAS, ENCUESTA NO VALIDA.', 229, '2022-08-26', '976066401', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (278, 150, 1, '2022-08-29 17:14:56', 'OPERADOR CLARO-POSTPAGO, EN LA PREGUNTA NPS DAN PUNTAJE 5, CLIENTE INDICA SU SERVICIO ES PÉSIMO HAY ZONAS QUE NO CAPTA SEÑAL EL INTERNET SE HACE LENTO Y TUVE UN PROBLEMA DE FACTURACIÓN, ASESORA EXPLICA TERMINO DE COBERTURA Y SEÑAL, CLIENTE SIGUE DICIENDO EN CASA LA SEÑAL Y COBERTURA FUERA EN MI TRABAJO, ASESORA NO ORIENTA BIEN CUAL HA IMPACTADO MAS LA SEÑAL O COBERTURA - NO LLEGA A PROFUNDIZAR E INDUCE ME INDICO PROMOCIONES, LO CUAL LA CLIENTE SOLO DICE SI, ENCUESTA NO VALIDA.', 229, '2022-08-26', '927596946', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (279, 151, 2, '2022-08-29 17:22:30', 'NO  REGISTRO BIEN LOS DATOS', 231, '2022-08-27', '71608883', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (280, 132, 1, '2022-08-29 17:22:34', 'OPERADOR CLARO - POSTPAGO, EN LA PREGUNTA NPS  DAN PUNTAJE 10  E INDICA TIENE MEJOR COBERTURA , ASESORA SOLO DICE ALGUNA OTRA RAZÓN,  SOLO LE DICEN UTILIZO PARA LLAMADAS   Y COMIENZA A QUEJARSE DAN MENOS MEGAS , ASESORA SOLO ASUME QUE ESTA BIEN PERO NO PROFUNDIZA A QUE TEMA SE REFIERE CON COBERTURA EN ESPECIFICO QUE ES LO QUE LE AGRADO DEL SERVICIO, CONTINUA CON LAS PREGUNTAS DE ACCIONES Y PERMANENCIA, ENCUESTA NO VALIDA.', 229, '2022-08-26', '16279521', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (281, 151, 1, '2022-08-29 17:24:09', 'NO ENTENDIO AL CLIENTE.', 231, '2022-08-27', '42744566', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (282, 151, 2, '2022-08-29 17:29:37', 'TARDA EN COLGAR CUANDO EL CLIENTE YA CORTA.', 231, '2022-08-27', '44921297', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (283, 136, 1, '2022-08-29 17:30:13', 'OPERADOR MOVISTAR-POSTPAGO , EN LA PREGUNTA NPS BRINDAN PUNTAJE 5 CLIENTE INDICA BUENA ATENCIÓN  Y EL INTERNET ES BUENO SOLO POR RATOS NO TAN BIEN,  ASESOR INDAGA QUE SUCEDIÓ, LUEGO CLIENTE MENCIONA SU QUEJA QUE NO INGRESA LA SEÑAL DEL INTERNET  SE VA Y NO CARGA LOS VIDEOS EN UNA ZONA DE SU CIUDAD, ASESOR EXPLICA EL TERMINO DE SEÑAL Y COBERTURA, HACE ENTENDER Y MENCIONA AL ÁREA DE COBERTURA, DESPUÉS CONSULTA ALGUNA OTRA RAZÓN , LE DICEN NO,  EN LA PREGUNTA DE ACCIONES  SI LLAMO AL CALL CENTER SE ADELANTE Y DICE Y CUAL FUE EL MOTIVO Y HACE CUANTOS DICE FUE - NO SIGUE LA SECUENCIA DE LAS OTRAS ACCIONES LLAMADA DESORDENADA, LUEGO PREGUNTA SI USO LA APLICACION MOVISTAR APP - HACE CUANTOS DIAS. ENCUESTA NO VALIDA.', 229, '2022-08-26', '920737478', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (284, 151, 2, '2022-08-29 17:34:11', 'MUY SERIA CUANDO HABLA, HABLA MUY BAJO LOS CLIENTES NO LA ENTIENDEN.', 231, '2022-08-27', '41661002', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (285, 151, 1, '2022-08-29 17:42:59', 'HSBLA MUY  DESPACIO, NO CUELGA A TIEMPO', 231, '2022-08-27', '43390051', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (286, 136, 1, '2022-08-29 17:55:17', NULL, 229, '2022-08-26', NULL, NULL, 1, '2022-08-29 17:55:30', NULL);
INSERT INTO `tb_monitoreo` VALUES (287, 136, 1, '2022-08-29 18:02:12', 'OPERADOR ENTEL - EN LA PREGUNTA NPS LE DAN  10  PORQUE LA ATENCIÓN ES RÁPIDA Y ES LO QUE UNO NECESITA,  ASESOR  INDAGA CON RESPECTO AL SERVICIO  MÓVIL COMO HA SIDO, LUEGO LE DICEN SI HAY BUENA SEÑAL  - PERO SE QUEJA DE LA ZONA DE ZÁRATE, ASESOR EXPLICA EL TERMINO DE COBERTURA Y SEÑAL , LUEGO LE DICEN ES COBERTURA , ASESOR PROFUNDIZA ESTO DE TENER BUENA COBERTURA EN QUE LE HA BENEFICIADO, HACE ENTENDER A USUARIO Y MENCIONA EN LAS LLAMADAS  Y RECIBIR LOS MENSAJES,  PERO AUN FALTA OBTENER MEJOR RESPUESTA EJM ¨COMO SON LAS LLAMADAS ESPECIFÍQUEME¨, SOLO CONTINUA CON LAS OTRAS PREGUNTAS, ENCUESTA NO VALIDA', 229, '2022-08-26', '994556423', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (288, 138, 1, '2022-08-29 18:43:37', 'OPERADOR CLARO, COMUNICACIÓN NO FLUIDA, MULETILLAS EH, SE ENREDA CON LAS PREGUNTAS,  EN LA PREGUNTA NPS DAN PUNTAJE 8 PORQUE HAY LUGARES QUE SON DE LARGA DISTANCIA Y NO LLEGAN  EL INTERNET - LA SEÑAL NO LLEGA NÍTIDA , ASESOR INDUCE Y DICE QUE LLEGUE LA SEÑAL A LUGARES ALEJADOS, CUANDO DEBIÓ INDAGAR Y DECIR EN BASE A ELLO CUAL SERIA SU RECOMENDACIÓN, SOLO CONTINUA  EN LA PREGUNTA HA USADO LA APLICACIÓN DE MI CLARO APP, LE DICEN QUE SI, LUEGO CONSULTA LA SATISFACCIÓN DE CLARO APP Y LE DAN 8,  CLIENTE NO TIENE NINGUNA RECOMENDACIÓN - ASESOR INDUCE ALGO QUE DESEO HACER Y NO HA PODIDO OBTENER  POR EJM SU RECIBO Y CON ELLO QUE DEBERÍA, ENCUESTA NO VALIDA.', 229, '2022-08-26', '16279145', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (289, 138, 1, '2022-08-29 18:58:29', 'OPERADOR ENTEL, EN LA PREGUNTA NPS DAN PUNTAJE 8, CLIENTE MENCIONA COSAS DE INSATISFACCIÓN QUE LA VELOCIDAD SE ESTA  ACABANDO ANTES DE FIN DE MES, LUEGO ASESOR INDAGA A QUE TIPO DE SERVICIO, PERO  EN REITERADAS COMUNICACIONES SE ENREDA CON SUS PALABRAS,MULETILLAS EH, OK, LUEGO INDUCE RESPUESTA ES EL SERVICIO  DEL INTERNET, CUANDO DEBIÓ INDAGAR A QUE TEMA SE REFIERE CON LA VELOCIDAD Y DE ACUERDO A ELLO CUAL SERIA SU SUGERENCIA, CONTINUA CON PREGUNTAS DE ACCIONES, PERMANENCIA, ENCUESTA NO VALIDA.', 229, '2022-08-26', '16280780', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (290, 137, 1, '2022-08-29 19:12:22', 'OPERADOR CLARO-POSTPAGO, EN LA PREGUNTA NPS DAN PUNTAJE 7, POR MOMENTO EL ASESOR NO FORMULA BIEN LAS PREGUNTAS SE ENREDA, LUEGO CLIENTE DICE LA SEÑAL ES DÉBIL  DE VEZ EN CUANDO Y PEOR ESTA MOVISTAR, ASESOR INDUCE - CON CLARO LA SEÑAL ES BUENA, DESPUÉS ASESOR ASUME ENTONCES LA SEÑAL QUE ERA DÉBIL ERA POR MOVISTAR- FALTA ORDENARSE  Y MANEJAR BIEN AL MOMENTO DE PROFUNDIZAR, DESPUÉS USUARIO  DICE FALTA MAS INTENSIDAD DE SEÑAL - SIGUE DICIENDO COSAS NEGATIVAS QUE ES LENTO EL INTERNET - ASESOR NO CONSULTO EN BASE A ELLO QUE TENDRÍAMOS QUE MEJORAR, ENCUESTA NO VALIDA.', 229, '2022-08-26', '966313184', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (291, 137, 1, '2022-08-29 19:23:23', 'OPERADOR CLARO, EN LA PREGUNTA NPS - DAN 10 PORQUE AGARRA LA SEÑAL ASÍ ESTE LEJOS, ASESOR SOLO INDICA ALGUNA OTRA RAZÓN QUE TENGA PARA QUE CALIFIQUE CON 10, LE DICEN BUENA CALIDAD DE LA SEÑAL - DAN OFERTAS Y PROMOCIONES, ASESOR NO INDAGA A QUE TEMA SE REFIERE CON RESPECTO A LA SEÑAL ME PODRÍA ESPECIFICAR Y EN CUANTO A QUE LE BRINDAN OFERTAS Y PROMOCIONES CUALES SON Y QUE MAS LE AGRADA DEL SERVICIO, SOLO CONTINUA CON LAS OTRAS PREGUNTAS, ENCUESTA NO VALIDA.', 229, '2022-08-27', '989207536', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (292, 144, 1, '2022-08-29 19:49:36', 'OPERADOR CLARO - MÓVIL, EN LA PREGUNTA NPS DAN PUNTAJE 5 PORQUE EL INTERNET ES DEMASIADO LENTO A PESAR QUE TENGO UN INTERNET DE ALTA VELOCIDAD, ASESORA CONSULTA ALGUNA OTRA RAZÓN, LUEGO LE DICEN A VECES SIN SOLICITAR LA COMPRA DE MEGAS ME ADICIONAN Y EL RECIBO VIENEN FUERA DEL MONTO ESPECIFICADO,  OPERADOR MOVISTAR - CABLE E INTERNET FIJO - EN LA PREGUNTA NPS  DAN PUNTAJE 5  PORQUE EL INTERNET ES MUY LENTO, SU HIJO ESTA EN CLASES Y SE CUELGA , ASESORA CONSULTA ALGUNA OTRA RAZÓN , LE DICEN QUE NO , LUEGO PREGUNTA Y COMO LE VAN CON EL CABLE , LE DICEN NO ES RECOMENDABLE, LOS CANALES SON MUY LIMITADOS, ASESORA NO INDAGA A QUE SE REFIERE CON QUE ES MUY LIMITADO BASÁNDONOS EN DICHO SERVICIO , SOLO ASUME Y CONTINUA, FALTO PROFUNDIZAR MAS LA RESPUESTA, ENCUESTA NO VALIDA.', 229, '2022-08-27', 'NO REGISTRO ID', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (293, 153, 1, '2022-08-31 11:05:17', 'COD DE PRUEBITA', 185, '2022-08-31', 'PRUEBITA', NULL, 1, '2022-08-31 11:10:24', 185);
INSERT INTO `tb_monitoreo` VALUES (294, 147, 1, '2022-08-31 11:29:03', 'OPERADOR MOVISTAR- RECARGA, EN LA PREGUNTA NPS  DAN PUNTAJE  3 CLIENTE INDICA NO DAN BUENA COBERTURA, ASESOR EXPLICA TERMINA COBERTURA Y SEÑA CUANDO NO ES NECESARIO,  LUEGO CLIENTE DICE SEÑAL  SUENA OCUPADO CUANDO LLAMO, INDUCE HACIENDO QUE COSA CON SU CELULAR CUANDO DEBERÍA  PROFUNDIZAR DE MANERA CORRECTA  ¨A QUE TEMA SE REFIERE ME PODRÍA ESPECIFICAR¨, NO SIGUE LA SECUENCIA DE LAS PREGUNTAS , ENCUESTA NO VALIDA.', 229, '2022-08-27', 'NO REGISTRO ID', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (295, 147, 1, '2022-08-31 11:49:55', 'OPERADOR MOVISTAR - TRÍO, EN LA PREGUNTA  DAN PUNTAJE 8  CLIENTE INDICA SE HA IDO EL INTERNET  Y NO HE PODIDO CONECTARSE POR ONLINE EN SU TRABAJO, ASESOR SOLO DICE ALGUNA OTRA RAZÓN , LE DICEN  QUE NO, DEBIÓ ORIENTAR EN BASE A ELLO QUE PODRÍAMOS MEJORAR EN CUANTO AL SERVICIO DEL INTERNET FIJO COMO LE GUSTARÍA QUE SEA PARA QUE EN ALGÚN FUTURO LO CALIFIQUE CON 9 O 10,  ENCUESTA NO VALIDA.', 229, '2022-08-27', 'NO REGISTRO ID', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (296, 132, 1, '2022-08-31 12:14:01', 'OPERADOR ENTEL- POSTPAGO,  EN LA PREGUNTA NPS LE DAN  PUNTAJE 6 CLIENTE INDICA EL PROBLEMA DE RECARGA, ASESORA DICE EN BASE AL POSTPAGO, LUEGO LE DICEN DESEO PAGAR EN 20.90 Y NO QUIEREN, ME CORTAN LA LINEA POR NO PAGAR( ESTO ES ALGO QUE SE REALIZA Y NO POR UN MAL SERVICIO),  ASESORA NO INDAGA Y EN BASE AL SERVICIO BRINDADO QUE SUCEDIÓ EN QUE TEMA EN ESPECIFICO ME PODRÍA ESPECIFICAR, SOLO CONTINUA CON LAS OTRAS PREGUNTAS. ENCUESTA NO VALIDA.', 229, '2022-08-27', '16280904', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (297, 132, 1, '2022-08-31 12:35:23', 'OPERADOR BITEL-PREPAGO, EN LA PREGUNTA NPS DAN PUNTAJE 7 , CLIENTE INDICA NOSE, ASESORA MENCIONA QUE RECOMEMDARIA UD. PARA QUE MEJORE , LUEGO DICEN LA\nMAS COSAS NEGATIVAS SOLO DAN 4 DÍAS Y SE CONSUME RÁPIDO ES LENTO,  ASESORA ASUME QUE ENTONCES RECOMENDARÍA POR LA VELOCIDAD DEL INTERNET Y CONTINUA, NO ESTA ORIENTANDO BIEN AL CLIENTE PARA BUSCAR UNA RESPUESTA DE SUGERENCIA, ENCUESTA VALIDA.', 229, '2022-08-27', '16281608', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (298, 136, 1, '2022-08-31 12:56:14', '', 229, '2022-08-27', '924681533', NULL, 1, '2022-08-31 12:58:38', 229);
INSERT INTO `tb_monitoreo` VALUES (299, 136, 1, '2022-08-31 14:12:23', 'OPERADOR MOVISTAR, PRODUCTOS FIJOS,  EN LA PREGUNTA NPS DAN PUNTAJE 0, CLIENTE MENCIONA ES MALO EL SERVICIO, ASESOR INDAGA A QUE TEMA SE REFIERE CON MALO, LUEGO INDICA SE VA LA SEÑAL DE INTERNET, FALTÓ PREGUNTAR ME PODRÍA DETALLAR QUE SUCEDIÓ O A QUE SE REFIERE CON SE VA LA SEÑAL- ESPECIFIQUEME,  SOLO CONTINUA CON LAS PREGUNTAS DE ACCIONES, PERMANENCIA, ENCUESTA NO VALIDA.', 229, '2022-08-27', '924681533', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (300, 136, 1, '2022-08-31 14:23:39', 'OPERADOR CLARO-POSTPAGO,  EN LA PREGUNTA NPS DAN PUNTAJE 5, CLIENTE INDICA SEGÚN LA ZONA  NO AGARRA CLARO SINO OTRA COMPAÑÍA -NO LLEGA LA SEÑAL  MUY BIEN, ASESOR EXPLICA TERMINO DE SEÑAL Y COBERTURA, PERO CLIENTE SIGUE MENCIONANDO LOS DOS COBERTURA Y SEÑAL, ASESOR SE BASA EN COBERTURA -CUANDO DEBIÓ INDICAR EN BASE A ESAS DOS. DONDE ESTA IMPACTANDO MÁS Y QUEDARSE CON UNA SOLA RESPUESTA, INDAGA DE COBERTURA Y LE DICEN NO INGRESA LAS LLAMADAS EL INTERNET DEMORA EN LLEGAR, ENCUESTA NO VALIDA.', 229, '2022-08-27', '920115798', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (301, 145, 1, '2022-08-31 14:37:43', 'OPERADOR ENTEL-POSTPAGO, EN LA PREGUNTA NPS LE DAN PUNTAJE 8, CLIENTE INDICA ESTA BIEN, ASESOR CONSULTA QUE LE FALTA A ENTEL PARA QUE SE CONVIERTE EN 9 o 10 EN CUANTO AL SERVICIO, LUEGO CLIENTE MENCIONA MAS BENEFICIOS  EN SU APP DE ENTEL YA SEA CON TELÉFONOS ACCESORIOS, PARA IR A COMPRAR ALGÚN CENTRO COMERCIAL O COMIDA EN GENERAL QUE TENGA UN TIPO DE DESCUENTO POR USAR ENTEL, ASESOR CONFIRMA ENTONCES BRINDAR ESAS PROMOCIONES, EN LA PREGUNTA ACCIONES  EN EL CALL CENTER DE ENTEL DAN PUNTAJE DE 6 CLIENTE MENCIONA ME DIJO UN MONTO DE PAGO Y CUANDO RECIBÍ EL RECIBO ERA MUCHO MENOS Y ESTABA DETALLADO, ASESOR NO ORIENTA BIEN AL CLIENTE ¨DEBIÓ DECIR PERO HAY QUE BASARNOS EN LA ATENCIÓN DEL CALL CENTER  EN ESE MOMENTO QUE FUE LO QUE SUCEDIÓ PODRÍA DETALLARME¨ , SOLO CONTINUA CON LAS OTRAS PREGUNTAS, ENCUESTA NO VALIDA', 229, '2022-08-27', '16281240', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (302, 145, 1, '2022-08-31 14:56:35', 'OPERADOR MOVISTAR-POSTPAGO, EN LA PREGUNTA NPS 10%, ASESOR ASUME RESPUESTA PERO NO ES EN PORCENTAJE, LUEGO MENCIONA DAN BUENA PROMOCIONES Y NO TENGO MUCHOS PROBLEMAS CON LA LINEA, DAN BUENA ATENCIÓN, CONSULTA A QUE SE REFIERE QUE BRINDAN MUCHAS PROMOCIONES, ME PODRÍA ESPECIFICAR  ?\nLE DICEN PROMOCIONES DE PLAN, RENOVACIÓN DE EQUIPOS, FALTA INDAGAR Y DECIR POR QUE DECIDIÓ SEGUIR RENOVANDO CON NOSOTROS O QUE BUENAS EXPERIENCIAS OBTUVO DE LA LINEA, SOLO ASUME Y SIGUE CON LAS OTRAS PREGUNTAS, ENCUESTA NO VALIDA.', 229, '2022-08-27', '16281756', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (303, 133, 1, '2022-08-31 15:38:50', 'NO CUMPLE CON EL SPEECH, CLIENTE LE DICE A QUE TE REFIERES CON TIPO DE EMOCION Y OPERADOR OMITE SU CONSULTA Y CONTINUA, EN LA PREGUNTA NPS LE DICE TODO CONFORME Y NO ORIENTA NI PROFUNDIZA SE CONFORMA CON LA RESPUESTA', 228, '2022-08-31', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (304, 150, 1, '2022-08-31 15:48:42', NULL, 229, '2022-08-27', NULL, NULL, 1, '2022-08-31 15:50:20', 229);
INSERT INTO `tb_monitoreo` VALUES (305, 150, 1, '2022-08-31 15:50:09', 'TIENE ESCUCHA ACTIVA, SIN EMBARGO LE FALTA MAS ORIENTAR Y PROFUNDIZAR;   YA QUE CLIENTE LE DICE EN LA PREGUNTA NPS QUE BAJEN LAS TARIFAS Y OPERADORA NO PROFUNDIZA, DE IGUAL FORMA SUCEDE EN LA PREGUNTA ¿Cuál es su grado de consideración de permanecer o abandonar la compañía en los próximos 6 meses?, PERO EN TERMINOS GENERALES CUMPLE CON EL SPEECH.', 228, '2022-08-29', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (306, 133, 1, '2022-08-31 15:51:08', 'SE ENREDA POR MOMENTOS EN LA COMUNICACIÓN, OPERADOR BITEL, EN LA PREGUNTA NPS DAN PUNTAJE 8 CLIENTE INDICA MAYOR COBERTURA, ASESOR SOLO CONTINUA CON LAS OTRAS PREGUNTAS, CUANDO DEBIÓ INDAGAR A QUE TEMA SE REFIERE ME PODRÍA ESPECIFICAR  PARA QUE EN ALGÚN FUTURO PUEDA RECOMENDAR CON UN 9 o 10, CONTINUA CON LAS PREGUNTAS DE ACCIONES, ENCUESTA NO VALIDA.', 229, '2022-08-29', '16282543', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (307, 133, 1, '2022-08-31 16:00:29', 'OPERADOR ENTEL-RECARGA, EN LA PREGUNTA NPS DAN PUNTAJE 9, CLIENTE DICE NO SABE PORQUE, ASESOR NO ORIENTA DE MANERA CORRECTA SOLO DICE ¨QUE LE PARECE ESTA CONFORME¨ , LUEGO CLIENTE DICE PORQUE SI, ASESOR ASUME QUE ESTA BIEN LA RESPUESTA DEL CLIENTE, CONTINUA CON LAS OTRAS PREGUNTAS, ENCUESTA NO VALIDA.', 229, '2022-08-29', '16281891', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (308, 147, 1, '2022-08-31 16:12:13', 'OPERADOR ENTEL-MÓVIL , EN LA PREGUNTA NPS LE DAN PUNTAJE 6 CLIENTE INDICA BENEFICIOS DE MEGAS DE INTERNET, ASESOR SOLO DICE ALGUNA OTRA RAZÓN , CUANDO DEBIÓ DECIR EN BASE A ELLO QUE SUCEDIÓ YA QUE  HA CALIFICADO CON 6 DETALLEME, ASUME QUE ESTA BIEN Y CONTINUA CON LAS OTRAS PREGUNTAS, ENCUESTA NO VALIDA.', 229, '2022-08-31', '952347897', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (309, 150, 1, '2022-08-31 16:14:13', 'OPERADORA LEE CALL,  EN LA PREGUNTA NPS NO PROFUNDIZA NI ORIENTA DE MANERA CORRECTA, EN LA PREGUNTA D17  QUE ES RESPUESTA ESPONTANEA OPERADORA LEE LAS ALTERNATIVAS.', 228, '2022-08-29', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (310, 142, 1, '2022-08-31 16:34:51', 'NO FORMULA LAS PREGUNTAS DE MANERA CORRECTA, SE ENREDA CON SUS PALABRAS, NO ORIENTA NI PROFUNDIZA BIEN, CLIENTE EN LA PREGUNTA DE SATISFACCION  LE RESPONDE  DE 8 HACIA ADELANTE Y OPERADORA ASUME LA RESPUESTA EN LUGAR DE REAFIRMAR LA PREGUNTA PARA OBTENER LA RESPUESTA CORRECTA.', 228, '2022-08-29', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (311, 147, 1, '2022-08-31 16:58:20', 'OPERADOR  CLARO, EN LA PREGUNTA NPS PUNTAJE 6, CLIENTE MENCIONA EN LA COSTA NO DA PERO EN LA SIERRA SI , ASESOR INDAGA A QUE TEMA EN ESPECIFICO SE REFIERE, LUEGO MENCIONAN NO HAY COBERTURA EN SU CASA, ASESOR NO EXPLICA EL TERMINO DE COBERTURA O SEÑAL, SOLO ASUME QUE ESTA BIEN, DEBIÓ  ORIENTAR MEJOR PARA SOLO QUEDARSE CON UNA SOLA RESPUESTA. ENCUESTA NO VALIDA.', 229, '2022-08-31', '930761009', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (312, 142, 1, '2022-08-31 17:22:45', 'SE ENREDA CON SUS PALABRAS, NO LOGRA ORIENTAR DE MANERA CORRECTA, EN LA PREGUNTA NPS SE ENFOCA MAS EN QUE LE BRINDEN LA DIRECCION DEL PROBLEMA, EN LUGAR DE BRINDAR CORRECTAMENTE LA DIFINICION DE SEÑAL Y COBERTURA PARA OBTENER  RESPUESTA CORRECTA DEL CLIENTE.', 228, '2022-08-31', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (313, 144, 1, '2022-08-31 17:30:49', 'OPERADOR BITEL-PREPAGO, EN LA PREGUNTA NPS DAN PUNTAJE 5, CLIENTE INDICA EL INTERNET ES MUY LENTO, ASESORA INDAGA QUE ES LO QUE PASA CON EL INTERNET, LUEGO CLIENTE DICE POR SU ZONA CUANDO LLUEVE ESTA LENTO Y SE VA , CONSULTA ALGUNA OTRA RAZÓN , LE DICEN NO, EN LA PREGUNTA DE ACCIONES  SE ACERCO AL CENTRO DE ATENCIÓN PRESENCIAL , DAN UN PUNTAJE DE SATISFACCIÓN DE 8, CLIENTE INDICA MUY LENTO ES LA LINEA, DAR UNA BUENA EXPLICACIÓN, ASESORA INDAGA ¨AL REFERIRSE EN UNA BUENA EXPLICACIÓN A QUE SE REFIERE¨, LUEGO CLIENTE INDICA QUE SEA MAS ORGANIZADO Y EXPLIQUEN MEJORAR LOS COSAS, ASESORA SOLO DICE ALGO MAS EN GENERAL, ( CLIENTE NUNCA ESPECIFICO A QUE TEMA SE REFIERE ), FALTO PROFUNDIZAR EN BASE A ELLO -EXPLICAR MEJOR EN QUE TEMA POR FAVOR, ENCUESTA NO VALIDA.', 229, '2022-08-29', '16280111', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (314, 144, 1, '2022-08-31 17:42:31', 'OPERADOR CLARO -EN LA PREGUNTA NPS DAN PUNTAJE 9, CLIENTE INDICA  ES UN POCO CONFIABLE, ASESORA SOLO CONSULTA A QUE SE REFIERE CON UN POCO CONFIABLE ( NO ESTA DANDO DE TODO SU SATISFACCIÓN- DEBIÓ DECIR  LA ESCALA  NUEVAMENTE) , LUEGO DICE TE DAN PROMOCIONES , ASESORA INDICA EN CUANTO A PROMOCIONES A QUE SE REFIERE, DONDE LE MENCIONAN A CANJEAR EN INTERNET-BRINDAN MEGAS POR LAS RECARGAS,  OPERADOR BITEL - EN LA PREGUNTA NPS  DAN PUNTAJE  9 CLIENTE INDICA HAY PARA CANJEAR PROMOCIONES, ASESORA SOLO DICE ALGO MAS EN GENERAL- CUANDO ES  A QUE TEMA EN ESPECIFICO ME PODRÍA DETALLAR EN CUANTO A SU SERVICIO BITEL , ENCUESTA NO VALIDA.', 229, '2022-08-29', '16283082', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (315, 144, 1, '2022-09-01 16:14:55', 'OPERADOR MOVISTAR- TELÉFONO FIJO, EN LA PREGUNTA NPS 3 CLIENTE INDICA', 229, '2022-09-01', '16284566', NULL, 1, '2022-09-01 16:26:11', 229);
INSERT INTO `tb_monitoreo` VALUES (316, 145, 1, '2022-09-01 16:27:10', 'OPERADOR BITEL-POSTPAGO, EN LA PREGUNTA NPS DAN PUNTAJE 8, CLIENTE MENCIONA MAS LINEA  Y DA RAZONES NEGATIVAS DE LA ZONA,SU HOGAR PERO EN VERANO VA BIEN, LUEGO ASESOR  EXPLICA EL TÉRMINO COBERTURA Y SEÑAL DONDE CLIENTE MENCIONA ES COBERTURA,  TAMBIÉN INDAGA A QUE SE REFIERE  CON MÁS LÍNEA, RESPONDE USUARIO EL PANEL ESTA EN EL  CENTRO Y HAY LINEA PERO SI VUELVO AL HOGAR, LUEGO ASESOR CONSULTA CUANDO REALIZA QUE, LE DICEN POR EL INTERNET ( COSAS NEGATIVAS) , ASESOR INDUCE ENTONCES QUE MEJORE LA LINEA DEL INTERNET LO CUAL EN NINGÚN MOMENTO LA USUARIO DIJO ESO, LUEGO CLIENTE REPITE SI QUE MEJORA LA LINEA DE INTERNET PARA QUE NO NOS AFECTE, ENCUESTA NO VALIDA.', 229, '2022-09-01', '16284461', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (317, 143, 1, '2022-09-01 17:07:53', 'OPERADOR CLARO -, EN LA PREGUNTA NPS DAN PUNTAJE 10, CLIENTE INDICA NO FALLA ES VELOZ NO HAY INTERFERENCIA, ASESORA ASUME QUE ESTA BIEN CUANDO DEBIÓ PROFUNDIZAR A QUE TEMA SE REFIERE CON QUE ES VELOZ , CONTINUA LAS OTRAS PREGUNTAS DE ACCIONES E INFORMA USUARIO QUE NO LO HA HECHO. ENCUESTA NO VÁLIDA.', 229, '2022-09-01', '981613458', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (318, 132, 1, '2022-09-01 17:31:46', 'OPERADOR BITEL, EN LA PREGUNTA NPS DAN PUNTAJE 9 CLIENTE INDICA POR LAS TARIFAS CÓMODAS LUEGO ASESORA CONSULTA ALGUNA OTRA RAZÓN POR LA CUAL SI RECOMENDARÍA EL SERVICIO DONDE LE DICEN NO HAY PROBLEMA CON LA LINEA  DEL TELÉFONO, CONSULTA EN QUE SENTIDO O CARACTERÍSTICAS , RESPONDEN CON LLAMADA PUEDO HACERLO EN CUALQUIER  LUGAR SON BUENAS  Y EL INTERNET ( NO TAN LENTO Y NI TAN RÁPIDO) , FALTA ORIENTAR Y DECIR QUE LE GUSTA ENTONCES DEL INTERNET ( YA QUE CLIENTE NO DA RESPUESTA EXACTA DEL INTERNET , ASESORA ASUME QUE ESTA BIEN Y PROSIGUE, ENCUESTA NO VÁLIDA.', 229, '2022-09-01', '16283075', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (319, 147, 1, '2022-09-01 18:12:46', 'OPERADOR MOVISTAR -EN LA PREGUNTA NPS DAN PUNTAJE 8 CLIENTE INDICA SE VA LA LINEA Y DESEO QUE LA LINEA SEA  MEJOR,  ASESOR INDAGA ESPECÍFICAMENTE A QUE SE REFIERE  A QUE LA LINEA SEA MEJOR, LUEGO LE DICEN EN INTERNET, LUEGO ASESOR MENCIONA EN CUANTO AL INTERNET EN BASE A SU EXPERIENCIA COMO ES EL SERVICIO ¨NO ESTA ORIENTANDO DE MANERA CORRECTA LA SUGERENCIA YA QUE USUARIO SOLO INFORMA COSAS NEGATIVAS ¨  CLIENTE MENCIONA SE VA EL INTERNET CUANDO ESTOY FUERA DE CASA, ENCUESTA NO VALIDA.', 229, '2022-09-01', '951027284', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (320, 133, 1, '2022-09-01 18:22:03', 'NPS : EN LA PREGUNTA DE QUE TAN PROBABLE ES QUE USTED RECOMIENDE ENTEL A COLEGAS,FAMILIARES O AMIGOS?  EL CLIENTE INDICA  6, EL ASESOR LE BRINDA LAS DEFINICIONES  PARA AYUDAR AL ENCUESTADO PERO NO PROFUNDIZA MAS. // EN LA PREGUNTA CUAL DE ESTAS FRACES DESCRIBE EL SERVICIO QUE BRINDA TELEVENTA ?? CLIENTE NO ENTIENDE LA PREGUNTA  Y EN LA RESPUESTA SE CONFUNDE CON LA ESCALA DEL 0 AL 10 PERO  EL ASESOR LE REPITE LAS OPCIONES.// EN LA PREGUNTA DE PORQUE A PREFERIDO CONTRATAR LOS SERVICIOS? CLIENTE INDICA QUE ES POR NECESIDAD Y EL ASESOR NO PROFUNDIZA RESPUESTA.', 231, '2022-09-01', '16284909', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (321, 133, 1, '2022-09-01 18:36:27', 'NPS : EL LA PREGUNTA DE QUE TAN PROBABLE ES QUE RECOMIENDE ENTEL ? CLIENTE INDICO 8 Y EN LA RESPUESTA EL ASESOR NO PRUNDIZO LA RESPUESTA.', 231, '2022-09-01', '16285010', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (322, 133, 1, '2022-09-01 18:44:25', 'EN LA PREGUNTA NPS  QUE TAN PROBABLE ES QUE USTED RECOMIENDE (OPERADOR) A UN COLEGA, FAMILIAR O AMIGO? NO SUPO EXPLICARLE EL NIVEL DE SATISFACCION CUANDO EL CLIENTE REPREGUNTABA O INDICABA QUE ESTABA  BIEN.', 231, '2022-09-01', '16285182', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (323, 144, 1, '2022-09-01 18:52:05', '', 229, '2022-09-01', '16280432', NULL, 1, '2022-09-01 19:01:13', 229);
INSERT INTO `tb_monitoreo` VALUES (324, 133, 1, '2022-09-01 19:01:29', 'SE CORTO LA LLAMADA Y NO CONCLUYO ENCUESTA', 231, '2022-09-01', '111417', NULL, 1, '2022-09-02 11:25:37', 231);
INSERT INTO `tb_monitoreo` VALUES (325, 144, 1, '2022-09-02 09:17:23', 'OPERADOR MOVISTAR - EN LA PREGUNTA NPS 7 CLIENTE INDICA HAY VECES NO AGARRA BIEN LA SEÑAL , ASESORA CONSULTA ¨ENTONCES QUE LE FALTARÍA A MOVISTAR PARA UD. LA RECOMIENDE¨, LUEGO LE DICEN NO FALLAR LA SEÑAL, INDAGA A QUE SE REFIERE CON QUE NO AGARRA LA SEÑAL, CLIENTE MENCIONA CUANDO SALE AL CAMPO ( DA RAZONES NEGATIVAS), LUEGO ASESORA EXPLICA DE MANERA CORRECTA COBERTURA Y SEÑAL, HACE ENTENDER Y AFIRMAN QUE ES COBERTURA, SIGUE CONSULTANDO ¨QUE CREE QUE LE FALTARÍA A MOVISTAR¨ , USUARIA SOLO RESPONDE QUE CAPTE DONDE SEA, NO ESPECIFICA  LA SUGERENCIA, ASESORA ASUME QUE ESTA BIEN Y SOLO SIGUE CON LAS OTRAS PREGUNTAS, ENCUESTA NO VALIDA', 229, '2022-09-01', '16280432', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (326, 137, 1, '2022-09-02 09:30:06', 'PRESENTACIÓN CORRECTA, OPERADOR CLARO, EN LA PREGUNTA NPS-DAN PUNTAJE 0 CLIENTE MENCIONA TUVE INCONVENIENTES - VINCULARON UN CONTRATO CON UNA COMPRA DE CELULAR Y UN PLAN-POSTPAGO  DE 18 MESES SIN SU CONSENTIMIENTO, ASESOR CONSULTA ALGUNA OTRA RAZÓN  CLIENTE DA SUGERENCIA LOS RECLAMOS SE DEBEN VERIFICAR  MAS CUANDO ES UN CONTRATO SIN CONSENTIMIENTO, EN LA PREGUNTA DE SATISFACCIÓN DEL CALL CENTER BRINDA PUNTAJE  0  CLIENTE MENCIONA NO SE DIO LA INFORMACIÓN CORRESPONDIENTE Y POSTERGARON PARA OTRO DÍA, ASESOR NO INDAGA ¨QUE HA SUCEDIDO - COMENTEME  POR FAVOR YA QUE CALIFICADO CON 0¨ , SOLO DICE  ALGUNA OTRA RAZÓN LE DICEN NO, ENCUESTA NO VALIDA,', 229, '2022-09-01', '16284979', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (327, 150, 1, '2022-09-02 10:38:25', 'COMUNICACIÓN FLUIDA, PRESENTACIÓN CORRECTA,  OPERADOR ENTEL -  EN LA PREGUNTA NPS  DA PUNTAJE  3 CLIENTE INDICA HICE RECLAMO Y NO ME SOLUCIONARON, ASESORA CONSULTA  CUAL ES EL PROBLEMA DEL RECLAMO QUE SUCEDIÓ, SOLO LE DICEN LA RED DEL INTERNET, LUEGO ASESORA SOLO ASUME Y CONTINUA CON LA OTRA PREGUNTA CUANDO DEBIÓ INDAGAR A QUE SE REFIERE CON LA RED DEL INTERNET EN BASE A SU RECLAMO PODRÍA INDICARME , EN LA PREGUNTA DE SATISFACCIÓN CALL CENTER LE DAN PUNTAJE 5 CLIENTE MENCIONA (NI BUENO -NI MALO)  QUE ATIENDAN SU RECLAMO, ASESORA NO INDAGA A QUE TEMA SE REFIERE PODRÍA DETALLARME, ENCUESTA NO VALIDA,', 229, '2022-09-01', '16284485', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (328, 133, 1, '2022-09-02 10:52:47', 'INCIO LA PRESENTACION Y CLIENTE CORTO LA LLAMADA  // LA ENCUESTA NO SE REALIZO', 231, '2022-09-01', '111417', NULL, 1, '2022-09-02 11:24:51', 231);
INSERT INTO `tb_monitoreo` VALUES (329, 133, 1, '2022-09-02 10:54:24', 'CLIENTE INDICA QUE YA HABIA REALIZADO LA ENCUESTA.', 231, '2022-09-01', '111550', NULL, 1, '2022-09-02 11:24:39', 231);
INSERT INTO `tb_monitoreo` VALUES (330, 133, 1, '2022-09-02 10:58:45', 'CLIENTE INDICA QUE NO PUEDE REALIZAR LA ENCUESTA Y EL ASESOR PREGUNTA EN QUE ,MOMENTO SE PUEDE DEVOLVER LA LLAMADA.', 231, '2022-09-01', '112116', NULL, 1, '2022-09-02 11:24:30', 231);
INSERT INTO `tb_monitoreo` VALUES (331, 133, 1, '2022-09-02 11:02:22', 'EL ASESOR INCIO LA PRESENTACION YSE CORTA LA LLAMADA // NO SE COMPLETO', 231, '2022-09-01', '112244', NULL, 1, '2022-09-02 11:24:22', 231);
INSERT INTO `tb_monitoreo` VALUES (332, 133, 1, '2022-09-02 11:05:06', 'CLIENTE NO QUIZO CONTINUAR CON LA ENCUESTA // EL ASESOR NO CULMINO LA DEBIDA PRESENTACION // DEBIO PEGUNTAR AL CLIENTE PARA QUE QUEDE GRABADO DESEA CONTINUAR CON LA LLAMADA? Y/O DESEA REALIZAR LA ENCUESTA ? CON UNA POSIBLE RESPUESTA SI O NO', 231, '2022-09-01', '112714', NULL, 1, '2022-09-02 11:24:11', 231);
INSERT INTO `tb_monitoreo` VALUES (333, 133, 1, '2022-09-02 11:09:02', 'CLIENTE NO PUDO REALIZAR ENCUESTA Y SOLICITO LA VUELVAN A LLAMAR //  ASESOR SE PRESENTO COMO CORRESPONDE // CUANDO PREGUNTA ME PERMITE CONTINUAR CON LA LLAMADA ? CLIENTE NO CONFIRMA SI O NO // Y ENTIENDO QUE DEBIO AGENDAR LA LLAMADA.', 231, '2022-09-01', '112907', NULL, 1, '2022-09-02 11:23:52', 231);
INSERT INTO `tb_monitoreo` VALUES (334, 133, 1, '2022-09-02 11:13:27', NULL, 231, '2022-09-01', NULL, NULL, 1, '2022-09-02 11:23:42', 231);
INSERT INTO `tb_monitoreo` VALUES (335, 133, 1, '2022-09-02 11:43:45', 'CUANDO PREGUNTA SI PERMITE CONTINUAR CON LA LLAMADA EL ASESOR NO CONFIRMA CON UN SI O NO //  EN LA PREGUNTA QUE TAN PROBABLE ES QUE RECOMIENDO A MOVISTAR ? CLIENTE NO ENTIENDE MUY BIEN LA ESCALA. // QUE TAN DEACUERDO ESTA CON CADA FRACE ?  CLIENTE NO ENTIENDE LA PREGUNTA,EL ASESOR PUDO EXPLICARLE', 231, '2022-09-01', '16285247', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (336, 141, 1, '2022-09-02 12:03:25', 'CUANDO PREGUNTA EN RELACION AL PROBLEMA DE LA SEÑAL LA ASESORA SOLICITA MAYOR REFERENCIA DE DONDE SE VA LA SEÑAL, EL CLIENTE NO RESPONDE DE MANERA ESPONTANEA.', 231, '2022-09-01', '931658774', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (337, 141, 1, '2022-09-02 12:14:18', 'EN LA PREGUNTA ME PERMITE CONTINUAR CON LA LLAMADA ? CIENTE NO CONFIRMA CON UN SI O NO // LA PREGUNTA CORRECTA ES POR QUE PREFIRIO EL OPERADOR QUE TIENE ACTUALMENTE Y LA ASESORA CONFUNDIO AL CLIENTE REFIRIENDOSE AL EQUIPO DE CELULAR.', 231, '2022-09-01', '941952129', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (338, 141, 1, '2022-09-02 12:36:27', '', 231, '2022-09-01', '', NULL, 1, '2022-09-02 14:37:14', 231);
INSERT INTO `tb_monitoreo` VALUES (339, 145, 1, '2022-09-02 16:00:06', 'COMUNICACIÓN FLUIDA, OPERADOR CLARO  - EN LA PREGUNTA NPS DAN PUNTAJE 8 CLIENTE INDICA MAYOR COBERTURA EN LAS CIUDADES, ASESOR MENCIONA EN QUE ZONA O DISTRITO Y CUAL SERIA SU SUGERENCIA, ¨DEBIÓ DECIR A QUE TEMA SE REFIERE MAYOR COBERTURA Y EN BASE A ELLO QUE TENDRÍAMOS QUE MEJORAR ¨, CLIENTE MENCIONA MAYOR ANTENAS PARA COBERTURA Y APERTURAR MÁS SEÑAL , ASESOR NO EXPLICA EL TERMINO DE COBERTURA Y SEÑAL, INDICA DE MANERA ERRADA  EN LA ORIENTACIÓN ¨¨CUAL  HA SIDO LA EXPERIENCIA ¨, LUEGO CLIENTE  DICE  ¨DEBERÍAN AVISAR PARA PAGAR Y NO DEMORAN EN CONTESTAR PARA  LOS RECLAMOS¨, NO PROFUNDIZA Y CONTINUA CON LAS PREGUNTAS ACCIONES - SATISFACCIÓN, ENCUESTA NO VALIDA.', 229, '2022-09-02', '16285834', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (340, 144, 1, '2022-09-02 16:30:25', 'ES CÁLIDA EN LA LLAMADA, OPERADOR CLARO, EN LA PREGUNTA NPS DAN PUNTAJE  10 CLIENTE INDICA  TIENE COBERTURA EN PROVINCIA - NO SE CORTA-TENGO FAMILIARES EN PROVINCIA Y PREFIERO A  CLARO, ASESOR MENCIONA A QUE SE REFIERE - QUE ES LO QUE PASA CUANDO USTED SE COMUNICA (ESTA INDUCIENDO EN BASE A LA COMUNICACIÓN)  LUEGO CLIENTE MENCIONA TIENE BUENA SEÑAL, ASESORA PREGUNTA A QUE SE REFIERE , CLIENTE DICE NO HAY CORTES EN LA LLAMADAS , TAMPOCO EN EL INTERNET,  ENCUESTA NO VALIDA NO CUMPLIÓ CON LOS PARÁMETROS.', 229, '2022-09-02', '16285963', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (341, 147, 1, '2022-09-02 17:08:42', 'SE PRESENTA CON DATOS COMPLETOS, OPERADOR -MOVISTAR, EN LA PREGUNTA NPS DAN PUNTAJE 8 CLIENTE INDICA  CUANDO ESTA EN PROVINCIA Y LLAMA SU LINEA FALLA , ASESOR CONSULTA QUE LE FALTARÍA A MOVISTAR PARA QUE LO RECOMIENDE, LUEGO LE DICEN SOLUCIONAR LA COBERTURA EN PROVINCIA,  LUEGO PREGUNTA ¨ESPECÍFICAMENTE  EN COBERTURA A QUE SE REFIERE¨ - CLIENTE MENCIONA A LA LINEA DE LLAMADAS E INTERNET YA QUE ES MUY LENTO, ASESOR NO INDAGA EN CUANTO A LA RECOMENDACIÓN DEL INTERNET COMO LE GUSTARÍA QUE SEA??,   EN LA PREGUNTA  DE SATISFACCIÓN DE CALL CENTER LE DAN PUNTAJE 10 CLIENTE MENCIONA ME DIERON LA SOLUCIÓN Y ME HICIERON ENTENDER, EN NINGÚN MOMENTO ASESOR INDAGÓ QUE SUCEDIÓ Y CUAL FUE LA SOLUCIÓN , ASUME QUE ESTA BIEN Y CONTINUA CON LO DEMÁS ,ENCUESTA NO VÁLIDA.', 229, '2022-09-02', '977652579', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (342, 132, 1, '2022-09-02 17:21:44', 'SE PRESENTA CON DATOS COMPLETOS, ES AMABLE EN LA LLAMADA, OPERADOR ENTEL - EN LA PREGUNTA NPS LE DAN PUNTAJE 8 CLIENTE INDICA LA COBERTURA EN ALGUNAS LUGARES - MEJORAR LA SEÑAL, ASESORA DICE ¨LA SEÑAL DE QUE , ME PUEDE ESPECIFICAR, ¨  CUANDO PRIMERO DEBIÓ EXPLICAR EL TERMINO DE COBERTURA Y SEÑAL (NO PUEDEN IR LOS DOS Y CONTAR CON UNA RESPUESTA MAS CONCRETA ) , LUEGO CLIENTE DEL INTERNET , ASESORA ASUME ELLO, EN LA PREGUNTA DE SATISFACCIÓN CALL CENTER DAN PUNTAJE 10 CLIENTE INDICA  ME EXPLICARON Y  DIERON SOLUCIÓN AL PROBLEMA ASESORA NO INDAGA QUE SUCEDIÓ DETALLAME POR FAVOR YA QUE AH BRINDADO UN PUNTAJE DE 10, SOLO DICE ALGUNA OTRA RAZÓN,  SOLO DICE TODO BIEN SON AMABLES, ENCUESTA NO VALIDA.', 229, '2022-09-02', '16285928', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (343, 133, 1, '2022-09-02 17:42:41', 'NO PRONUNCIA BIEN ALGUNAS PALABRAS TIEMPOS VACÍOS, OPERADOR CLARO EN LA PREGUNTA  NPS  DAN PUNTAJE 8 , CLIENTE INDICA EN IQUITOS EL INTERNET ES PÉSIMO - NO LLEGA BIEN, ASESOR CONSULTA ESTO SUCEDE EN TODO EL LUGAR O ALGÚN ES ESPECIFICO( DEBIÓ EXPLICAR DE MANERA ADECUADA EL TÉRMINO DE COBERTURA Y SEÑAL)  LUEGO CLIENTE MENCIONA TODO IQUITOS,  NO ORIENTO  E INDICO EN BASE A ELLO QUE TENDRÍAMOS QUE MEJORAR - CUAL ES SU SUGERENCIA POR FAVOR, EN LA PREGUNTA SATISFACCIÓN CALL CENTER DAN PUNTAJE 5 CLIENTE MENCIONA NO LE DIERON SOLUCIÓN A NADA RECIÉN EL DÍA JUEVES OBTUVE LA LINEA SIN ALGUNA EXPLICACIÓN , ASESOR NO INDAGA Y MENCIONA QUE SUCEDIÓ DETALLEME POR FAVOR , ENCUESTA NO VALIDA.', 229, '2022-09-02', '16286089', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (344, 141, 1, '2022-09-06 09:50:05', 'CLIENTE LE INDICA QUE TIENE 2 SERVICIOS DE OPERADORES Y TELEOPERADORA SE CONFUNDE Y LEE EN EN UNA MISMA PREGUNTA POR AMBOS OPERADORES , SE ENREDA CON SUS PALBRAS AL PREGUNTAR EL TIPO DE SERVICIO, DEJA ESPERANDO AL CLIENTE Y NO RETOMA LA LLAMADA DE LA MANERA CORRECTA, EN LA PREGUNTA NPS NO PROFUNDIZA NI ORIENTA DE MANERA CORRECTA', 228, '2022-09-05', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (345, 141, 1, '2022-09-06 10:53:45', 'EN LAS PREGUNTAS QUE SON DE ESCALA DE CALIFICACION, LE FALTA PROFUNDIZAR, ORIENTAR AL CLIENTE', 228, '2022-09-05', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (346, 133, 1, '2022-09-06 11:18:40', 'EN LA PREGUNTA NPS NO PROFUNDIZA DE MANERA CORRECTA, SE CONFUNDE AL BRINDAR LA DEFINICION DE SEÑAL Y COBERTURA, EN LAS PREGUNTAS ABIERTAS LE ESTA FALTANDO MANEJO DE OBJECION', 228, '2022-09-05', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (347, 141, 1, '2022-09-06 11:53:50', NULL, 231, '2022-09-01', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (348, 143, 1, '2022-09-06 14:13:16', 'OPERADOR MOVISTAR- POSTPAGO, EN LA PREGUNTA NPS DAN PUNTAJE  7, CLIENTE INDICA ESTA FALLANDO LAS COBERTURAS, ASESORA INDUCE ¨ESTA FALLANDO -NO PUEDE GENERAR LLAMADAS, NO PUEDE INGRESAR AL INTERNET, NO PUEDE ENVIAR MENSAJES,¨  CUANDO NO ESTA PERMITIDO, TENDRÍA QUE HABER REALIZADO LO SIGUIENTE  ¨INDAGAR MÁS A QUE TEMA SE REFIERE QUE ESTA FALLANDO LAS COBERTURA - PUEDE ESPECIFICAR¨, LUEGO CLIENTE LE DICE EN ESO FALLA INTERNET-LLAMADAS NO INGRESA, ASESORA  NO MANEJA LA INFORMACIÓN EXPLICA SEÑAL CUANDO CLIENTE EN NINGÚN MOMENTO MENCIONA, TAMPOCO SE LLEGÓ A BUSCAR ALGUNA RECOMENDACIÓN , ENCUESTA NO VALIDA.', 229, '2022-09-06', '956076453', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (349, 143, 1, '2022-09-06 14:27:08', 'PRESENTACIÓN CORRECTA, OPERADOR MOVISTAR-POSTPAGO, - EN LA PREGUNTA NPS DAN PUNTAJE 8 , CLIENTE INDICA MAS POTENCIA EN  LA SEÑAL , EL INTERNET , LA COBERTURA MÁS QUE NADA, ASESORA NO ORIENTA Y EXPLICA DE MANERA CORRECTA  LOS TÉRMINOS DE COBERTURA Y SEÑAL- SOLO DICE ¨CUANDO VIAJA O VA OTRO TIPO DE PROVINCIA Y NO LLEGA LA SEÑAL - NO HAY COBERTURA¨ , LUEGO CLIENTE DICE  EN LA CIUDAD- SEÑAL,  ASESORA NO BUSCA NINGUNA RECOMENDACIÓN PRECISA SOLO ASUME Y CONTINUA,  ENCUESTA NO VALIDA,', 229, '2022-09-06', '978281503', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (350, 143, 1, '2022-09-06 14:42:44', 'OPERADOR CLARO-PREPAGO, EN LA PREGUNTA NPS DAN PUNTAJE 10, CLIENTE INDICA LLEGA CON BASTANTE FRECUENCIA LA SEÑAL, ASESORA SOLO ASUME QUE ESTA BIEN Y CONTINUA, CUANDO DEBIÓ INDAGAR MÁS A QUE TEMA O ACCIÓN EN ESPECÍFICO SE REFIERE YA QUE MENCIONA ¨BASTANTE FRECUENCIA LA SEÑAL¨,  EN LA PREGUNTA DE SATISFACCIÓN CALL CENTER DAN PUNTAJE 10,  CLIENTE SOLO INDICA POR QUE DESDE QUE LLAME TENGO SEÑAL, ASESORA TOMA DEL MOTIVO DE LA RESPUESTA ANTERIOR - CUANDO DEBIÓ PROFUNDIZAR QUE HA SUCEDIDO Y DESPUÉS DE ELLO CUAL FUE EL PROCESO Y/O SOLUCIÓN QUE OBTUVO, ENCUESTA NO VÁLIDA.', 229, '2022-09-06', '913105464', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (351, 147, 1, '2022-09-06 14:56:56', 'PRESENTACIÓN CORRECTA,  OPERADOR MOVISTAR-PREPAGO, EN LA PREGUNTA NPS DAN PUNTAJE 9  CLIENTE INDICA BUENA EMPRESA- BUEN CELULAR Y MARCA, ASESOR CONSULTA EN BASE A SU SERVICIO MÓVIL  POR QUE CALIFICO CON 9?  LUEGO CLIENTE SOLO DICE ES CONFIABLE Y BUENA MARCA, OFERTAS,  NO UTILIZÓ  MUCHO EL CELULAR EN LAS LLAMADAS, ASESOR NO ORIENTA DE LA MANERA CORRECTA SE BASA A LO QUE NO USA Y NO ENFOCA DEBIÓ DECIR ¨QUE LE AGRADA DEL SERVICIO YA QUE MENCIONÓ BUENA MARCA, CONFIABLE Y OFERTAS DETALLEME POR FAVOR¨ ,  AL FINAL SOLO LE DICEN  ME VA BIEN EN LAS LLAMADAS, ASESOR CONTINUA  Y EN LAS PREGUNTAS DE ACCIONES NO HA REALIZADO,  ENCUESTA NO VALIDA.', 229, '2022-09-06', '16293676', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (352, 147, 1, '2022-09-06 15:17:08', 'OPERADOR CLARO-PREPAGO, EN LA PREGUNTA NPS  DAN PUNTAJE 8 CLIENTE INDICA HAY ZONAS EN DONDE NO AGARRA BIEN Y DEBERÍAN HABILITAR, ASESOR MENCIONA QUE LE GUSTARÍA QUE ESTABILICEN,  SOLO LE DICEN PUEDAN LLEGAR A MAS LUGARES, ASESOR PROFUNDIZA EN BASE AL SERVICIO, CLIENTE INDICA  TODO ESTA BIEN , SOLO MEJORAR EN LOS PRECIOS- CUANDO ESTO NO IRÍA EN LA ENCUESTA YA QUE POR CONTRATO SI HAY CLAUSULAS DE PRECIO, ASESOR SOLO CONTINUA CON LA GESTIÓN, ENCUESTA NO VÁLIDA.', 229, '2022-09-06', '16295413', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (353, 147, 1, '2022-09-06 15:26:26', 'OPERADOR CLARO - POSTPAGO, EN LA PREGUNTA NPS DAN PUNTAJE 10 CLIENTE INDICA HAY LUGARES DONDE  HAY LINEA, ASESOR INDICA ALGUNA OTRA RAZÓN, LE DICEN NO, LLAMADA DESORDENADA LUEGO CONSULTA ME PODRÍA DETALLAR  A QUE SE REFIERE CON HAY LINEA EN MUCHOS LUGARES, CLIENTE INDICA  HAY LUGARES QUE NO HAY SEÑAL, ASESOR DEBIÓ EXPLICAR EL TERMINO DE SEÑAL Y COBERTURA PARA HACER ENTENDER A CLIENTE, AL FINAL EL ASESOR SOLO DICE  EN LA SEÑAL QUE SUCEDE  - INDUCE ENTONCES SU LINEA FUNCIONA BIEN CUANDO DEBIÓ INDAGAR MAS, ENCUESTA  NO VÁLIDA.', 229, '2022-09-06', '16531099', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (354, 133, 1, '2022-09-06 15:53:50', 'OPERADOR  CLARO-POSTPAGO, EN LA  PREGUNTA NPS   DAN PUNTAJE 4 CLIENTE INDICA NO HAY BUENA  COBERTURA Y ESTABILIDAD, ASESOR EXPLICA EL TERMINO DE COBERTURA Y SEÑAL CUANDO NO ES NECESARIO YA QUE CLIENTE SOLO MENCIONÓ COBERTURA, HACE ENREDAR AL CLIENTE Y LUEGO LE DICE ES LIMITADO  EN CASA, EL ASESOR NO INDAGÓ A QUE TEMA SE REFIERE PODRÍA ESPECIFICAR, SOLO ASUME Y CONTINUA CON OPERADOR MOVISTAR-POSTPAGO, EN LA PREGUNTA NPS  DAN PUNTAJE 9 CLIENTE INDICA CUANDO HAY PROBLEMAS DEL TELÉFONO ME SOLUCIONAN - HABLA DE CLARO Y ASESOR NO ENFOCA AL SERVICIO EVALUADO MOVISTAR , TAMPOCO PROFUNDIZO QUE SUCEDIÓ Y EN BASE A ELLO  CUAL FUE LA SOLUCIÓN! SOLO ASUME Y CONTINUA, ENCUESTA NO VÁLIDA.', 229, '2022-09-06', '16530962', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (355, 133, 1, '2022-09-06 16:08:16', 'OPERADOR MOVISTAR-PREPAGO, EN LA PREGUNTA NPS DAN PUNTAJE 1 CLIENTE INDICA MOVISTAR ES BUENO CUANDO TE DAN PROMOCIONES MULTIPLICAN POR 6 MESES PAGAS TANTO PERO  SI NO HAY PROMOCIÓN ES MAS CARO! ASESOR ASUME QUE ESTA BIEN Y CONTINUA, CUANDO DEBIÓ INDAGAR COMO LE FUE CON EL SERVICIO MUY APARTE DE QUE SI SE TERMINÓ LA PROMOCIÓN, EN LA PREGUNTA DE SATISFACCIÓN CALL CENTER LE DAN PUNTAJE  0 CLIENTE INDICA NO TIENE TRATO A LA PERSONA , ASESOR ASUME Y PASA, CUANDO DEBIÓ INDAGAR EN BASE A SU EXPERIENCIA AL CALL CENTER QUE SUCEDIÓ DETÁLLEME POR FAVOR, ENCUESTA NO VÁLIDA.', 229, '2022-09-06', '16294519', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (356, 133, 1, '2022-09-06 16:18:22', 'OPERADOR CLARO- POSTPAGO, EN LA PREGUNTA NPS DAN PUNTAJE 6 CLIENTE INDICA EL INTERNET  SE VA - LOS MEGAS, ASESOR INDUCE ES LENTO- EXPLICA TERMINO DE SEÑAL CUANDO NO ERA NECESARIO YA QUE CLIENTE NO MENCIONÓ ELLO, LUEGO CLIENTE  POR RESPUESTA DE ASESOR DICE DONDE VAYA- ASESOR  CONTINUA, CUANDO NO PROFUNDIZÓ DE MANERA CORRECTA, EN LA PREGUNTA DE SATISFACCIÓN ATENCIÓN PRESENCIAL LE DAN PUNTAJE 7 CLIENTE INDICA NO DIERON OPCIÓN A RENOVAR EQUIPOS , ASESOR ASUME CUANDO ESTO NO ES UN TEMA DE EXPERIENCIA - NO HACEMOS HISTORIAL CREDITICIO, ENCUESTA NO VALIDA,', 229, '2022-09-06', '16531400', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (357, 145, 1, '2022-09-06 16:43:54', 'SOLO DICE SU NOMBRE EN LA PRESENTACIÓN,  OPERADOR  BITEL -POSTPAGO, EN LA PREGUNTA NPS  DAN PUNTAJE  8 CLIENTE INDICA  AMPLIACIÓN DE SEÑAL YA QUE HAY PARTES QUE NO LLEGA, ASESOR INDAGA A QUE SE REFIERE -ME PODRÍA DETALLAR - EN QUE ACCIONES, LUEGO CLIENTE INDICA UNA MEJOR COBERTURA, DONDE ASESOR EXPLICA EL TERMINO DE  COBERTURA Y SEÑAL - LA AMPLIACIÓN SERIAN EN LOS DOS ? CLIENTE DICE QUE SI,  CUANDO  NO PUEDE IR LOS DOS!!! \nLUEGO ASESOR ASUME EMPECEMOS CON COBERTURA DE LA AMPLIACIÓN, CLIENTE INDICA MÁS ANTENAS, ASESOR INDICA CUAL SERIA SU RECOMENDACIÓN Y EN QUE ASPECTO DE LA LINEA QUE UTILIZA DEBERÍAN MEJORAR, LUEGO CLIENTE DICE MEJOR SEÑAL DE INTERNET, CUANDO NO QUEDA CLARO SI ES COBERTURA O SEÑAL, EN LA PREGUNTA SATISFACCIÓN DE CALL CENTER DAN PUNTAJE 5 CLIENTE INDICA NO LE DIERON RESPUESTA  COMO DESEABA , NO INDAGA QUE SUCEDIÓ SOLO ASUME DE LA PREGUNTA ANTERIOR, ENCUESTA NO VÁLIDA.', 229, '2022-09-06', '16295097', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (358, 145, 1, '2022-09-06 17:09:17', 'NO INDICA SU APELLIDO EN LA PRESENTACIÓN,  OPERADOR NPS EN LA PREGUNTA', 229, '2022-09-06', '16531016', NULL, 1, '2022-09-06 17:29:17', 229);
INSERT INTO `tb_monitoreo` VALUES (359, 144, 1, '2022-09-07 13:26:03', NULL, 228, '2022-09-07', NULL, NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (360, 144, 1, '2022-09-07 14:37:12', 'MOVISTAR - PREPAGO,  EN LA PREGUNTA NPS DAN PUNTAJE 10 , CLIENTE INDICA ESTA LINEA ES PERFECTA NO TIENE NINGÚN PROBLEMA, ASESORA MENCIONA ALGO MÁS? LUEGO LE DICEN  A DONDE VA SIEMPRE HAY COBERTURA-NO FALLA -SEÑAL, ASESORA EXPLICA TÉRMINO DE SEÑAL Y COBERTURA, CLIENTE MENCIONA AMBAS , ASESORA CONSULTA Y QUE ES LO QUE ESTA BIEN - PODRÍA INDICAR, AL FINAL SOLO CLIENTE DICE TENGO LINEA ME LLAMAN NORMAL, ESTO NO ES SUFICIENTE YA QUE NO TENEMOS EL DETALLE  DE LA EXPERIENCIA, EN LA PREGUNTA DE SATISFACCIÓN CALL CENTER DAN PUNTAJE 10 CLIENTE INDICA - PORQUE ATENDIERON BIEN Y BRINDO DATOS COMPLETOS, LUEGO ASESORA CONSULTA Y CUAL FUE EL MOTIVO, LE DICEN PARA EL RECUPERO DEL CHIP Y DIERON LA FACILIDAD,  PERO LA ENCUESTA  NO ES VALIDA  POR LA PREGUNTA NPS.', 229, '2022-09-06', '16531380', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (361, 144, 1, '2022-09-07 15:08:16', 'OPERADOR CLARO - INTERNET FIJO, EN LA PREGUNTA NPS DAN PUNTAJE 10, CLIENTE INDICA BUEN SERVICIO, ASESORA INDAGA A QUE SE REFIERE CON UN BUEN SERVICIO  TENIENDO EN CUENTA QUE ES EL INTERNET FIJO, DESPUÉS LE DICEN INGRESO A WIFI, PC  DONDE EL INTERNET NO SE CUELGA,  EN LA PREGUNTA DE SATISFACCIÓN CALL CENTER DAN PUNTAJE 9 CLIENTE INDICA SIEMPRE ES VIABLE HABLAR AL CALL CENTER -NO SE DEMORAN MUCHO, ASESORA INDAGA  A QUE SE REFIERE COMO VIABLE?  LUEGO CLIENTE DICE ACCESO A INGRESAR UN RECLAMO -PIDIÓ BLOQUEAR UN EQUIPO QUE FUE ROBADO, ASESORA MENCIONA Y QUE RESPUESTA PUDO OBTENER, RESPONDEN  BLOQUEARON Y BRINDARON UN CÓDIGO, EN LA PREGUNTA DE SATISFACCIÓN CENTRO DE ATENCIÓN PRESENCIAL  DAN PUNTAJE 8 CLIENTE INDICA HAY MUCHA COLA - ASESORA NO ORIENTA BIEN DE MANERA CORRECTA INDICA ¨DONDE HAY MUCHA COLA-AFUERA O  DENTRO DE LA TIENDA¨ SE ENFOCA EN ELLO- QUE TENDRÍA QUE PASAR  CON LA COLA¨- CUANDO SE TIENE QUE EVALUAR  EL TEMA DE EXPERIENCIA CUANDO INGRESO!! al final indica fui por renovación de equipo PERO AUN ASI NO SE BASA QUE ES LO QUE PASO-QUE SUCEDIÓ DETALLEME Y EN BASE A ELLO CUAL SERIA SU RECOMENDACIÓN', 229, '2022-09-06', '16297003', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (362, 144, 1, '2022-09-07 15:47:26', 'OPERADOR ENTEL-POSTPAGO,  EN LA PREGUNTA NPS DAN PUNTAJE 8 CLIENTE INDICA TENER MEJORES EQUIPOS -YA QUE SON DEFECTUOSOS Y TENGO QUE IR A REPARARLOS, ASESORA MENCIONA SOBRE EL PRODUCTO MÓVIL ALGO MAS -QUE LE FALTARÍA , LE DICEN NO,  ESTO NO PASARÍA YA QUE NO ES UN TEMA DE EXPERIENCIA,  EN LA PREGUNTA DE SATISFACCIÓN CALL CENTER  DAN PUNTAJE 6, CLIENTE INDICA PAGO UNA DEUDA PERO IGUAL SEGUÍAN COBRANDO, LUEGO ASESORA INDAGA PORQUE CALIFICA CON 6 LA ATENCIÓN QUE RECIBIÓ DEL CALL CENTER, DONDE MENCIONAN NO SOLUCIONARON SU PROBLEMA - DEL PLAN-POSTPAGO UN MONTO MUY ELEVADO - CLIENTE NO DESEA ESPECIFICAR ,   ENCUESTA NO VALIDA.', 229, '2022-09-07', '16529587', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (363, 136, 1, '2022-09-07 16:15:18', 'OPERADOR ENTEL-POSTPAGO, EN LA PREGUNTA DE SATISFACCIÓN DAN PUNTAJE 7 CLIENTE INDICA MEJORAR SUS SERVICIOS, ASESOR INDAGA A QUE TIPO DE SERVICIOS? LUEGO CLIENTE DICE INTERNET, LLAMADAS  Y LA SEÑAL, ASESOR PROFUNDIZA COMO LE GUSTARÍA QUE SEA EL INTERNET , DONDE LE DICEN MÁS RÁPIDO , ASESOR  PREGUNTA COMO SON  LAS LLAMADAS - CLIENTE SOLO MENCIONA SU INSATISFACCIÓN -SON ENTRECORTADAS - EN NINGÚN MOMENTO MENCIONA LA RECOMENDACIÓN , ASESOR ASUME DE TODO LO NEGATIVO Y MENCIONA ENTONCES QUE NO SEAN LLAMADAS ENTRECORTADAS', 229, '2022-09-07', '16529489', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (364, 147, 1, '2022-09-07 16:20:05', 'ORIENTO DE MANERA CORRECTA Y PROFUNDIZO DE MANERA CORRECTA,  SOLO DEBE  EVITAR DECIR MULETILLAS COMO:  MUY BIEN, DE ACUERDO Y CORRECTO', 228, '2022-09-07', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (365, 144, 2, '2022-09-07 16:39:48', 'ORIENTA Y PROFUNDIZA DE MANERA CORRECTA, SOLO DEBE EVITAR DECIR MULETILLAS.', 228, '2022-09-07', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (366, 136, 2, '2022-09-07 17:00:33', 'OPERADOR CLARO-POSTPAGO , EN LA PREGUNTA NPS  DAN PUNTAJE  6 CLIENTE INDICA  ES BUENA LA SEÑAL CUANDO ESTOY EN MI CIUDAD PERO CUANDO VA A LIMA NO TIENE COBERTURA  EL  INTERNET ES LENTO, LUEGO ASESOR  EXPLICA TERMINO COBERTURA Y SEÑAL, HACE ENTENDER Y CLIENTE LE DICE ES SEÑAL, LUEGO CONSULTA ALGUNA OTRA RAZÓN - LE DICEN NO, EN LA PREGUNTA DE ACCIONES LE DICEN QUE NO HA REALIZADO,  RESPETA LAS PREGUNTAS DE LA ENCUESTA - NO INDUCE Y ORIENTA DE MANERA ADECUADA - ENCUESTA VALIDA.', 229, '2022-09-07', '16299006', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (367, 132, 1, '2022-09-07 17:12:39', 'OPERADOR ENTEL, EN LA PREGUNTA NPS LE DAN PUNTAJE 10 , CLIENTE INDICA ES LO MEJOR QUE HAY, ASESORA INDAGA POR QUE RAZÓN SI LE GUSTA EL SERVICIO ENTEL, LUEGO CLIENTE DICE POR EL INTERNET Y EN LLAMADAS A DONDE VAYAS SIEMPRE HAY COBERTURAS, ASESORA PREGUNTA COMO ES EL INTERNET DONDE LE RESPONDEN ES BUENO LA VELOCIDAD, EN LA PREGUNTA DE SATISFACCIÓN  CALL CENTER DAN PUNTAJE 9 CLIENTE INDICA NO TARDARON EN RESPONDER LUEGO ASESORA INDAGA COMO FUE LA ATENCIÓN  QUE RECIBIÓ EN EL CALL CENTER , DONDE CLIENTE MENCIONA BUENA ATENCIÓN - EXPLICAN LOS PUNTOS - ASESORA NO PROFUNDIZO QUE ES LO QUE SUCEDIÓ SOLO ASUME DE LA PREGUNTA ANTERIOR EL MOTIVO - ENCUESTA NO VÁLIDA.', 229, '2022-09-07', '16523696', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (368, 132, 1, '2022-09-07 17:24:36', 'MOVISTAR - POSTPAGO, EN LA PREGUNTA NPS CLIENTE DAN PUNTAJE 8 CLIENTE INDICA INTERNET MÁS VELOZ - AHORA NO TIENEN EQUIPOS Y PROMOCIONES PARA PODER RENOVAR, ASESORA SOLO DICE ALGUNA OTRA RAZÓN CUANDO DEBIÓ ENFOCARSE EN LAS  PROMOCIONES CUAL SERIA SU RECOMENDACIÓN EN BASE A LA EXPERIENCIA CON SU SERVICIO MÓVIL(NO CONSIDERAR RENOVACIÓN) , EN LAS PREGUNTAS DE ACCIONES NO HA REALIZADO,. ENCUESTA NO VÁLIDA', 229, '2022-09-07', '16299103', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (369, 145, 1, '2022-09-07 17:42:48', 'OPERADOR MOVISTAR, EN LA PREGUNTA NPS LE DAN PUNTAJE 0 CLIENTE INDICA  CUANDO UNO VA RECLAMAR SOLO DERIVAN -PAGA PUNTUAL Y NO BAJAN EL MONTO DE COBRO, ASESOR  INDUCE ME PODRÍA INDICAR LA RAZÓN NEGATIVA PORQUE CALIFICA CON 0 CUANDO DEBIÓ INDAGAR EL MOTIVO DE SU RECLAMO, SOLO ASUME  Y NO OBTIENE MEJOR RESPUESTA, ENCUESTA NO VÁLIDA.', 229, '2022-09-06', '16294692', NULL, 1, '2022-09-07 18:02:57', 229);
INSERT INTO `tb_monitoreo` VALUES (370, 145, 1, '2022-09-07 18:03:07', 'OPERADOR MOVISTAR, EN LA PREGUNTA NPS LE DAN PUNTAJE 0 CLIENTE INDICA  CUANDO UNO VA RECLAMAR SOLO DERIVAN -PAGA PUNTUAL Y NO BAJAN EL MONTO DE COBRO, ASESOR  INDUCE ME PODRÍA INDICAR LA RAZÓN NEGATIVA PORQUE CALIFICA CON 0 CUANDO DEBIÓ INDAGAR EL MOTIVO DE SU RECLAMO, SOLO ASUME  Y NO OBTIENE MEJOR RESPUESTA, ENCUESTA NO VÁLIDA.', 229, '2022-09-06', '16294692', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (371, 145, 1, '2022-09-08 09:09:43', 'OPERADOR BITEL-PREPAGO , EN LA PREGUNTA NPS DAN PUNTAJE  7 CLIENTE INDICA  VELOCIDAD DE INTERNET CUANDO UNO HACE RECARGA,  SE ESMERA EN BUSCAR INFORMACIÓN DE RECOMENDACIÓN, EN LA PREGUNTA DE SATISFACCIÓN APP DE BITEL DAN PUNTAJE 9, CLIENTE INDICA REGALAN MEGAS, LUEGO ASESOR INDAGA CUANDO USA LA APLICACIÓN DE BITEL APP POR QUE CALIFICA CON 9, LUEGO CLIENTE MENCIONA CUANDO JUEGA EN LA APP LE REGALAN MEGAS', 229, '2022-09-06', '16531996', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (372, 138, 1, '2022-09-08 10:19:56', 'OPERADOR MOVISTAR, EN LA PREGUNTA NPS 0 CLIENTE INDICA SE VA LA SEÑAL -COBRAN IGUAL , ASESOR NO ORIENTA DE MANERA ADECUADA EXPLICA COBERTURA  CUANDO CLIENTE NO MENCIONO ELLO, FALTA MANEJO DE INFORMACIÓN SOLO CUANDO SE REQUIERE, CONTINUA CON LAS OTRAS PREGUNTAS CUANDO DEBIÓ INDAGAR A QUE TEMA SE REFIERE CON QUE SE VA LA SEÑAL EN QUE ACCIONES,  ENCUESTA NO VÁLIDA.', 229, '2022-09-05', '16292617', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (373, 138, 1, '2022-09-08 10:34:45', 'OPERADOR  MOVISTAR - EN LA PREGUNTA NPS DAN PUNTAJE 8 CLIENTE INDICA ES LA MEJOR LÍNEA QUE HAY - SON BUENOS - CUANDO  ESTA VIAJANDO COMENTA COSAS DE BITEL , ASESOR CONFIRMA QUE ES COBERTURA PERO  INDUCE ]¨ENTONCES ENTONCES  LE VA BIEN EN LLAMADAS E INTERNET¨ , CLIENTE SOLO DICE QUE SI , NUNCA  DIÓ CLIENTE SUGERENCIA, ASESOR SOLO CONTINUA CON LAS OTRAS PREGUNTAS, ENCUESTA NO VÁLIDA.', 229, '2022-09-05', '16292718', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (374, 138, 1, '2022-09-08 10:45:30', 'OPERADOR  BITEL, EN LA PREGUNTA NPS LE DAN PUNTAJE 5, LUEGO ASESOR NO ORIENTA DE MANERA ADECUADA ¨ MENCIONA QUE PASÓ Y CUAL SERIA SU RECOMENDACIÓN PARA QUE PUEDA MEJORAR SU EMPRESA¨, DESPUÉS DE ELLO CLIENTE  MENCIONA MEJORAR  EN LAS SEÑALES DE 5G, ASESOR  INDUCE ¨TIENE PROBLEMAS CON LA SEÑAL¨ SE ENREDA CON SUS PALABRAS., MULETILLAS CONSTANTES, INDUCE EN LA SEÑAL SE REFIERE AL TEMA DE INTERNET  O DE LAS LLAMADAS.', 229, '2022-09-06', '16297108', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (375, 147, 1, '2022-09-08 12:14:54', 'OPERADOR MOVISTAR-INTERNET FIJO   , EN LA PREGUNTA NPS 7 CLIENTE INDICA CUANDO ESTA NUBLADO EL SISTEMA SE VA- LA SEÑAL ES BAJA, ASESOR MENCIONA QUE RECOMENDARÍA PARA QUE EL SERVICIO MEJORE, LUEGO DICE LAS REPETIDORAS DEBEN  ESTAR EN LUGARES MÁS ALTOS , ESTO NO PASARÍA YA QUE FALTÓ PROFUNDIZAR Y DECIR COMO LE GUSTARÍA QUE SEA EL INTERNET DEJANDO DE LADO LAS REPETIDORAS,  ENCUESTA NO VÁLIDA.', 229, '2022-09-07', '16523708', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (376, 147, 2, '2022-09-08 14:04:37', 'OPERADOR  BITEL , EN LA PREGUNTA NPS DAN PUNTAJE 9 CLIENTE INDICA NO TUVE NINGUNA DIFICULTAD, ASESOR INDAGA QUE ES LO QUE AGRADA EL SERVICIO, LUEGO CLIENTE DICE ES ILIMITADO YOUTUBE-TIK TOK- REDES SOCIALES ,  CONSULTA ALGUNA OTRA RAZÓN? RESPONDEN TAMBIÉN EN LLAMADAS, EN LA PREGUNTA DE SATISFACCIÓN CENTRO DE ATENCIÓN PRESENCIAL DAN PUNTAJE 10, CLIENTE INDICA ATENCIÓN RÁPIDA, LUEGO DE ELLO ASESOR INDAGA ¨PODRÍA DETALLAR QUE ES LO QUE REALIZÓ¨, DONDE LE DICEN RECUPERAR SU CHIP YA QUE LO HABÍA PERDIDO,  SIGUE CON LAS DEMÁS PREGUNTAS- ACTIVALO-NUMERO DE TELEVENTAS, ENCUESTA VÁLIDA.', 229, '2022-09-07', '16300739', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (377, 136, 1, '2022-09-08 14:26:50', 'OPERADOR CLARO, EN LA PREGUNTA NPS DAN PUNTAJE 8 CLIENTE INDICA MAS  SEÑAL DE ANTENAS  PARA SERVICIO DE INTERNET EN PROVINCIA, ASESOR EXPLICA TERMINO SEÑAL Y COBERTURA, LUEGO CLIENTE MENCIONA EN EL COLEGIO, ASESOR INDAGA Y EN BASE A ELLO CUAL SERÍA SU SUGERENCIA - COMO LE GUSTARÍA QUE SEA EL INTERNET, SOLO LE DICEN ACCESO AL AULA - ASESOR INDUCE ¨ENTONCES QUE MEJORE EL INTERNET PARA QUE NO  SE CORTE EN LUGARES CERRADOS, CUANDO EN NINGÚN MOMENTO SE OBTUVO UNA RESPUESTA EN ESPECIFICO.', 229, '2022-09-08', '16530787', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (378, 136, 1, '2022-09-08 14:36:44', 'OPERADOR MOVISTAR, EN LA PREGUNTA NPS DAN PUNTAJE 5 CLIENTE INDICA HA BAJADO SU SEÑAL  Y TENGO PROBLEMAS - ES LENTO,  ASESOR INDAGA ESTO DE LA BAJA SEÑAL EN QUE LO ESTA LIMITANDO Y EN QUE TEMA, DONDE LE DICEN EL INTERNET ES LENTO - LAS LLAMADAS EN ALGUNOS SITIOS NO INGRESA - NO SE ESCUCHA, ASESOR INDAGA EN CUANTO A LAS LLAMADAS ES EN EL TRABAJO O AFUERA, LE DICEN LOS DOS, LUEGO  ASESOR EXPLICA TERMINO DE COBERTURA Y SEÑAL, CLIENTE DICE LOS DOS, CUANDO NO PUEDEN IR LOS DOS, SOLO CONTINUA CON LAS DEMÁS PREGUNTAS, ENCUESTA NO VÁLIDA.', 229, '2022-09-08', '16530734', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (379, 141, 1, '2022-09-08 15:08:50', 'OPERADOR ENTEL, EN LA PREGUNTA NPS LE DAN 8 CLIENTE INDICA PROMOCIONES ACCESIBLES PARA PODER HACER RENOVACIONES DE EQUIPO, ASESORA ASUME QUE ESTÁ BIEN Y CONTINUA , ESTO NO PASARÍA YA QUE NO ES UN TEMA DE EXPERIENCIA DEBIÓ INDICA EN BASE AL SERVICIO BRINDADO CUAL ES SU RECOMENDACIÓN, EN LA PREGUNTA DE SATISFACCIÓN DEL CHAT DE LA PÁGINA  O FACEBOOK MSN DE ENTEL, DAN PUNTAJE 3  CLIENTE INDICA NO CONVENÍA EL PLAN DE LA PROMOCIÓN QUE LE ESTÁN BRINDADO POR LA RENOVACIÓN DEL EQUIPO.', 229, '2022-09-08', '945727014', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (380, 141, 1, '2022-09-08 15:45:26', 'OPERADOR CLARO, EN LA PREGUNTA NPS DAN PUNTAJE 6, CLIENTE INDICA HAY TIEMPOS EN QUE FALLA,  ASESORA INDAGA FALLA EN QUE SENTIDO, LUEGO LE DICEN A VECES NO HAY SEÑAL  FUERA DE CASA - EN LLAMADAS ,  ASESORA EXPLICA TÉRMINO DE COBERTURA Y SEÑAL, DONDE RESPONDEN ES  POR LA PLAZA DE ARMAS (COBERTURA), EN LA PREGUNTA SATISFACCIÓN  CALL CENTER DAN PUNTAJE 8 CLIENTE INDICA LLAMÉ VARIAS VECES,  ASESORA DA EJEMPLOS PORQUE NO LE RESPONDÍAN -SE DEMORABAN  Y QUE LE RESPONDIERON ( NO PODEMOS DAR ALTERNATIVAS) LUEGO CLIENTE DICE FUERON AMABLES , ASESORA CONTINUA CUANDO DEBIÓ INDAGAR EN BASE A LA ATENCIÓN BRINDADA CUAL SERIA SU RECOMENDACIÓN, ENCUESTA NO VÁLIDA.', 229, '2022-09-08', '974636295', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (381, 143, 1, '2022-09-08 16:53:35', 'OPERADOR ENTEL, EN LA PREGUNTA NPS DAN PUNTAJE  7 CLIENTE INDICA SU COBERTURA NO DA A LUGARES NO TAN CÉNTRICAS, ASESORA CONFIRMA NO HAY COBERTURA EN VARIAS ZONAS PERO NO INDAGA EN BASE A ELLO EN QUE TEMA O ACCIONES EN ESPECÍFICOS DEBERÍAMOS MEJORAR, EN LA PREGUNTA DE SATISFACCIÓN CALL CENTER  DAN PUNTAJE   9 CLIENTE INDICA POR EL TIEMPO DE ATENCIÓN QUE DIERON FUE RÁPIDO - ASESORA NO INDICA QUE FUE ES LO QUE SUCEDIÓ Y QUE SOLUCIONARON  YA QUE CALIFICA CON 9, EN LA PREGUNTA SATISFACCIÓN CENTRO DE ATENCIÓN PRESENCIAL DAN PUNTAJE 8 CLIENTE INDICA ¨NO TE SABRÍA DECIR¨ ASESORA  MENCIONA COMO LE RECIBIERON ALGUNA ACOTACIÓN QUE NOS BRINDE¨, LE DICEN NO , FALTA ORIENTAR Y DECIR ¨HACE UN MOMENTO ME DIJO EL MOTIVO QUE SE ACERCO - EN BASE A ESA ATENCIÓN QUE DEBERÍAMOS MEJORAR, ENCUESTA NO VÁLIDA.', 229, '2022-09-08', '930158714', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (382, 143, 1, '2022-09-08 17:21:43', 'OPERADOR MOVISTAR, EN LA PREGUNTA NPS DAN PUNTAJE 8 CLIENTE INDICA FALTARÍA  BUENA ATENCIÓN, ASESORA INDAGA ES EN CUANTO AL ASESOR O SERVICIO QUE BRINDA, CLIENTE MENCIONA AL ASESOR Y  LO QUE BRINDA LAS PROMOCIONES,  ASESORA NO INDAGA Y COMO LE GUSTARÍA QUE SEAN LAS PROMOCIONES EN BASE  AL SERVICIO BRINDADO , SOLO ASUME QUE ESTA BIEN Y CONTINUA CON LAS PREGUNTAS DE INTERACCIÓN PERO NO MENCIONA EN LOS ÚLTIMOS 12 MESES - ESTO HACE QUE  CLIENTE DIGA FUI HACE 3 AÑOS AL CENTRO DE ATENCIÓN PRESENCIAL - PARA QUE LUEGO CORRIJA Y CLASIFIQUE CON UN NO, ENCUESTA NO VÁLIDA.', 229, '2022-09-08', '968219808', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (383, 133, 1, '2022-09-08 17:41:52', 'ENTEL-PREPAGO, EN LA PREGUNTA NPS DAN PUNTAJE 9 CLIENTE INDICA HAY BUENA SEÑAL * CUANDO RECARGA TE DAN BENEFICIOS - ASESOR INDUCE A QUE LE DIGAN COSAS NEGATIVAS¨NO TIENE NINGÚN INCONVENIENTE CON EL TEMA DE LA SEÑAL¨ LE DICEN NO, CUANDO DEBIÓ INDAGAR ¨QUE BENEFICIOS LE BRINDA PODRÍA ESPECIFICARME EN QUE TEMA , EN LA PREGUNTA DE SATISFACCIÓN DE CALL CENTER  DAN PUNTAJE 9 CLIENTE INDICA ATENCIÓN BUENA, ASESOR NO INDICA QUE SUCEDIÓ Y QUE RESPUESTA LE BRINDARON, ENCUESTA NO VALIDA', 229, '2022-09-08', '16530030', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (384, 133, 1, '2022-09-09 09:31:01', 'OPERADOR MOVISTAR, EN LA PREGUNTA NPS DAN PUNTAJE 9 CLIENTE POR LA ATENCIÓN  Y EL MONTO EXACTO QUE COBRA, ASESOR ASUME QUE ESTA BIEN Y CONTINUA ,  CUANDO DEBIÓ DECIR ¨QUE ES LO QUE AGRADA DEL SERVICIO - YA QUE CALIFICÓ  CON 9¨', 229, '2022-09-08', '16530219', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (385, 158, 1, '2022-09-10 12:38:07', 'Es cálida en la llamada, no menciona la pregunta ¨Una pareja de mujeres lesbianas puede criar a un hijo tan bien como una pareja de hombre y mujer¨,  en la pregunta ¨ Hacer las compras¨ le dicen  SIEMPRE USTED y registra  HABITUALMENTE USTED,', 229, '2022-09-10', '995115318', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (386, 159, 1, '2022-09-12 09:58:42', 'EN LA PREGUNTA Un padre solo puede criar a un hijo tan bien como el padre y la madre juntos, LEE MAL LAS ALTERNATIVAS, Y EN ALGUNAS PREGUNTAS CAMBIA ALGUNAS PALABRAS', 228, '2022-09-12', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (387, 157, 1, '2022-09-12 11:29:43', 'Omite parte de la presentación, cambia las alternativas de las preguntas, cliente menciona solo feliz donde asesor asume que es muy feliz, nunca brindo respuesta, cliente no desea responder algunas preguntas falta manejo de las objeciones y decir recuerde que es para fines estadístico.', 229, '2022-09-10', '976756677', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (388, 155, 1, '2022-09-12 12:04:17', 'EN LA PREGUNTA  En promedio, ¿cuántas horas a la semana dedica su pareja al trabajo doméstico, sin incluir las actividades de tiempo libre y cuidado de los niños?  COLOCA EN HORAS MAS NO EN SEMANAS COMO DEBERIA DE SER, EN TERMINOS GENERALES ORIENTA Y PROFUNDIZA DE MANERA CORRECTA', 228, '2022-09-12', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (389, 157, 1, '2022-09-12 18:35:31', 'Al momento de hacer las preguntas no menciona las alternativas de manera correcta, cliente brinda dos alternativas y asesor asume cuando debió rebatir la objeción y decir cual de ellas es la mas importante para ud.Cuál fue el último año de estudios que usted completó o aprobó?', 229, '2022-09-10', '997637207', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (390, 156, 1, '2022-09-12 19:01:48', 'Se presenta de manera correcta, al momento de solicitar las horas  datos del trabajo domestico de la pareja le dicen que no apoya ya que trabaja,  asesor no maneja la llamada y asume que son horas cuando es 0.', 229, '2022-09-10', '930951570', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (391, 161, 1, '2022-09-12 19:35:56', 'Presentación correcta, cliente menciona en nombre del liugar  DISTRITO,  asesor asume ZONA RURAL cuando  debió rebatir y decir en base a las opciones brindadas, en la pregunta .¨Actualmente, ¿Cuál es su ocupación principal? cliete da tres opciones cuando debió indagar por la mas importante.', 229, '2022-09-10', '967351453', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (392, 154, 1, '2022-09-13 10:01:21', 'En la pregunta ¨El deber de un hombre es ganar dinero; el deber de una mujer es cuidar de su casa y su familia¨¨ cliente menciona  EN DESACUERDO asesora registra DE ACUERDO', 229, '2022-09-12', '921591264', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (393, 154, 1, '2022-09-13 11:05:30', 'NO ORIENTA NI PROFUNDIZA DE MANERA CORRECTA, ASUME RESPUESTAS, EN LA PREGUNTA 12 NO REALIZA TODA LA PREGUNTA, LE FALTA MANEJO DE OBJECIONES Y  ESCUCHA ACTIVA', 228, '2022-09-12', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (394, 165, 1, '2022-09-13 15:31:46', 'CAMBIA LAS PREGUNTAS NO MENCIONA DE MANERA ADECUADA, EN LA PREGUNTA El deber de un hombre es ganar dinero; el deber de una mujer es cuidar de su casa y su familia , cliente menciona  EN DESACUERDO , asesor registra DE ACUERDO, EN LA PREGUNTA ¿cuántas horas a la semana dedica al cuidado de los miembros de la familia (por ejemplo, niños, familiares ancianos, enfermos o discapacitados)?  cliente le dice  NO TENGO  DONDE ASESOR REGISTRA 10 CUANDO ES 0 ,  EN LA PREGUNTA  Teniendo en cuenta su vida en general, ¿cómo se consideraría Ud. CLIENTE MENCIONA FELIZ,', 229, '2022-09-12', '983601583', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (395, 165, 1, '2022-09-13 17:36:33', 'EN EL SEGMENTO ROLES DE GÉNERO EN EL HOGAR Y TRABAJO REMUNERADO -  ASESOR NO MENCIONA LA PREGUNTA DE MANERA CORRECTA , EN LA PREGUNTA Actualmente, ¿Cuál es su ocupación principal?  ASESOR NO MENCIONA TODAS LAS ALTERNATIVAS, EN LA PREGUNTA  Rector o rectora de una universidad  ASESOR NO MENCIONA TODAS LAS ALTERNATIVAS, EN LA PREGUNTA ¿A qué sistema de salud está usted afiliado? MENCIONA ALGUNAS ALTERNATIVAS  Y DESORDENADAS.', 229, '2022-09-12', '980985960', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (396, 165, 1, '2022-09-13 18:50:46', 'No se presenta de manera adecuada, en el segmento ¨ROLES DE GÉNERO EN EL HOGAR Y TRABAJO REMUNERADO¨   asesor  no menciona de manera correcta  cambia las palabras ¨Para empezar, ¿podría decirme si está Ud. muy de acuerdo, de acuerdo, en desacuerdo o muy en desacuerdo con cada una de las frases que le voy a leer? , EN LAS OTRAS PREGUNTAS NO  MENCIONA LAS ALTERNATIVAS CLIENTE LE DICE ES UN 50 ASESOR ASUME NO ORIENTA EN BASE A LAS ALTERNATIVAS , EN LA PREGUNTA  ¿Cuál es el número ideal de hijos que una familia debe tener? CLIENTE MENCIONA 2 o 3 ASESOR SOLO ASUME QUE ESTA BIEN, EN LA PREGUNTA En su hogar, ¿quién se hace cargo de las siguientes tareas? CLIENTE MENCIONA AMBOS Y ASESOR REGISTRA EN EL SISTEMA ¨SIEMPRE SU CONYUGUE¨, EN LA PREGUNTA Cuidar a los miembros de la familia que están enfermos  LE DICEN AMBOS y ASESOR REGISTRA ¨SIEMPRE SU CONYUGUE¨', 229, '2022-09-12', '992356341', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (397, 154, 1, '2022-09-14 10:36:55', 'ASESORA AGREGA PALABRAS  EN LA PREGUNTA¨Después de que el hijo más pequeño, o único hijo, haya empezado a ir a la escuela¨  CUANDO NO ES NECESARIO YA QUE PUEDE CONFUNDIR AL ENCUESTADO, EN LA PREGUNTA  en promedio, ¿cuántas horas a la semana dedica usted personalmente al trabajo doméstico/tareas del hogar, sin incluir las actividades de cuidado de los niños o personas en el hogar ni tiempo libre? ASESORA AGREGA EJEMPLOS -CUANDO NO ES NECESARIO, NO MENCIONA DE MANERA COMPLETA LA PREGUNTA 12  ¨Si vive actualmente con su esposo(a)/ conviviente / pareja¨ EN LA PREGUNTA Lavar la ropa  NO MENCIONA DE MANERA COMPLETA LAS ALTERNATIVAS , EN LA PREGUNTA Hacer las compras , agrega la palabra QUIEN LO GENERA?NO  MENCIONA LA PREGUNTA   Ha vuelto del trabajo demasiado cansada/o para hacer las tareas de la casa, EN LA PREGUNTA  Seguro FF.AA./Policiales,  SOLO MENCIONA ¨SEGURO POLICIAL¨', 229, '2022-09-12', '955640730', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (398, 164, 1, '2022-09-14 12:00:53', 'POR MOMENTOS ENREDA AL MENCIONAR LAS PREGUNTAS Y/O NO VOCALIZA BIEN ALGUNAS PALABRAS, SE ESMERA EN DECIR TODAS LAS PREGUNTAS Y ALTERNATIVAS, OBTIENE BUENA RESPUESTA, ENCUESTA VALIDA.', 229, '2022-09-12', '955981025', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (399, 162, 1, '2022-09-15 10:43:45', 'PREGUNTA Nombre del lugar, urbanización, barrio, comunidad o centro poblado, OPERADORA NO ORIENTA DE MANERA CORRECTA Y ASUME LA RESPUESTA, NO LEE LAS PREGUNTAS DE MANERA ORDENADA, NO TIENE ESCUCHA ACTIVA, MANEJO DE OBJECION POR ELLO NO PROFUNDIZA NI ORIENTA DE MANERA CORRECTA', 228, '2022-09-15', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (400, 161, 1, '2022-09-15 11:17:13', 'EN  LA PREGUNTA ¨Ser ama de casa es tan gratificante como trabajar por un salario¨  CLIENTE NO MENCIONA EN DESACUERDO- ASESOR ASUME ELLO, EN LA PREGUNTA Después de que el hijo más pequeño, o único hijo, haya empezado a ir a la escuela - ASESOR AGREGA PALABRA ¨LA MUJER¨,  ¨USTED PUEDE RESPONDER CON ¨ , ¨PARA LA FUNCION¨, LUEGO CLIENTE  MENCIONA 3 O 4 HORAS A LA SEMANA- ASESOR ASUME QUE SON 3 HORAS, EN LA PREGUNTA Cuántas horas a la semana dedica al cuidado de los miembros de la familia- LE DICEN NO DEDICO TIEMPO A NADIE,- ASESOR INSISTE QUE LE DE UNA NUMERACIÓN , NO MENCIONA LAS ALTERNATIVAS COMPLETAS, EN LA PREGUNTA En su hogar, ¿cuenta con alguno de los siguientes bienes, artefactos o servicios? - MENCIONA ASESOR ME VA RESPONDER CON UN SI o NO - CUANDO NO ESTA ESO EN LA ENCUESTA', 229, '2022-09-12', '957201847', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (401, 155, 1, '2022-09-15 11:53:34', 'REALIZA TODAS LAS PREGUNTAS DE MANERA CORRECTA, ORIENTA Y PROFUNDIZA BIEN, REGISTRA TODA LA INFORMACION EN EL SISTEMA CORRECTAMENTE', 228, '2022-09-15', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (402, 163, 1, '2022-09-15 12:37:03', 'NO CUMPLE CON EL PARAMETRO DEL SPEECH, OBVIA PALABRAS EN LA PREGUNTA, LEE MAL LAS ALTERNATIVAS, NO TIENE ESCUCHA ACTICA,  MANEJO DE OBJECIONES, POR ELLO NO  ORIENTA NI PROFUNDIZA DE MANERA CORRECTA.', 228, '2022-09-15', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (403, 155, 2, '2022-09-15 13:08:28', 'REALIAZA CORRECTAMENTE CADA UNA DE LAS PREGUNTAS,  ORIENTA Y PROFUNDIZA DE MANERA ADECUADA', 228, '2022-09-15', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (404, 162, 1, '2022-09-15 13:52:34', 'ORIENTO Y PROFUNDIZO DE MANERA CORRECTA, REALIZO TODAS LAS PREGUNTAS CORRECTAMENTE,  SALVO  LA PREGUNTA 17 SE EQUIVOCO  AL LEER  UNA ALTERNATIVAS QUE NO SE DEBIA MENCIONAR ,   PERO EN TERMINOS GENERALES REALIZO BIEN LA ENCUESTA.', 228, '2022-09-15', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (405, 166, 1, '2022-09-15 14:09:17', 'Cambia el speech con sus palabras, agrega enunciados al comenzar con las preguntas, TOSE EN TODA SU LLAMADA, NO MENCIONA LAS PREGUNTAS, AGREGA PALABRAS¨ SU RESPUESTA SERIA¨, NO MENCIONA TODAS LAS ALTERNATIVAS , EN LA PREGUNTA Y quién cree usted que debe cubrir principalmente los costos de esta ayuda a los adultos mayores? CLIENTE MENCIONA GOBIERNO Y SU FAMILIA - ASESOR ASUME LAS DOS RESPUESTAS,  EN LA PREGUNTA ¿cuántas horas a la semana dedica usted personalmente al trabajo doméstico/tareas del hogar, sin incluir las actividades de cuidado de los niños o personas en el hogar ni tiempo libre? CLIENTE DICE 5 o 6 , ASESOR ASUME SON 5 HORAS , NO AYUDA AL ENCUESTADO EN MULTIPLICAR LAS HORAS DE LA SEMANA, CLIENTE DESEA BRINDAR SU RESPUESTA PERO ASESOR POR MOMENTOS INTERRUMPE, INDUCE RESPUESTA AMBOS??? ,  NO MENCIONA LA PALABRA COMPLETA ¨Mucho más importante pa la mujer¨', 229, '2022-09-13', '925290625', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (406, 34, 2, '2022-09-15 16:33:35', 'Explica que le brindaron este número de referencia ya que es el encargado de la unidad, le dicen que si, tiene ahínco en seguir con la encuesta, obtiene buena respuesta y recomendación.', 229, '2022-09-15', 'VIVENDIS S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (407, 163, 1, '2022-09-15 17:49:50', 'NO RESPETA EL ORDEN DE LAS PREGUNTAS, CAMBIA PALABRAS EN ALGUNAS PREGUNTAS, NO TIENE ESCUCHA ACTIVA Y MANEJO DE OBJECION POR ELLO NO PROFUNDIZA NI ORIENTA DE  MANERA CORRECTA  Y REGISTRA MAL LA INFORMACION EN EL SISTEMA.', 228, '2022-09-15', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (408, 165, 1, '2022-09-15 18:48:00', 'EN LA PREGUNTA Cuando hay un hijo que todavía no tiene edad para ir a la escuela, como los menores de 5 años , ASESOR AGREGA PALABRAS, NO MENCIONA LAS ALTERNATIVA  Trabajar a jornada completa, Trabajar a tiempo parcial, No deberían trabajar, NO MENCIONA Si vive actualmente con su esposo(a)/ conviviente / pareja, EN LAS OTRAS PREGUNTAS OMITE LAS ALTERNATIVAS, CLIENTE BRINDA DOS OPCIONES Y ASUME CUANDO DEBIO INDAGAR MEJOR RESPUESTA , CLIENTE MENCIONA A LA SEMANA PERO SOLO UNA VEZ O DOS VECES- FALTO RECONFIRMAR, CLASIFICA DE MANERA ERRONEA ¨Varias veces a la semana¨ , NO MENCIONA Por favor, para cada una de los siguientes puestos, indique cuál es la respuesta que se acerca más a su propia opinión.  ¿Las mujeres son mucho más apropiadas?, ¿Las mujeres son algo más apropiadas? ¿Por igual las mujeres y los hombres? ¿Los hombres son algo más apropiados? ¿Los hombres son mucho más apropiados?', 229, '2022-09-13', '949214071', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (409, 165, 1, '2022-09-15 19:45:35', 'NO MENCIONA LAS ALTERNATIVAS  Muy de acuerdo, De acuerdo, En desacuerdo, Muy en desacuerdo, CLIENTE MENCIONA 4 o 5 HORAS  - ASESOR ASUME QUE ES LA 5 HORAS CUANDO DEBIO DECIR CUAL DE ESAS DOS', 229, '2022-09-13', '922681871', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (410, 158, 1, '2022-09-16 08:57:54', 'ORIENTA Y PROFUNDIZA DE MANERA DE CORRECTA,  SIN EMBARGO HUBO UNA PREGUNTA QUE NO LO REALIZO Y ASUMIO RESPUESTA', 228, '2022-09-16', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (411, 158, 1, '2022-09-16 09:38:08', '', 228, '2022-09-16', '', NULL, 1, '2022-09-16 16:22:09', 228);
INSERT INTO `tb_monitoreo` VALUES (412, 158, 2, '2022-09-16 11:04:45', 'ORIENTA Y PROFUNDIZA DE MANERA CORRECTA,  CUMPLE CON EL PROTOCOLO DEL SPEECH, INDICA TODAS LAS PREGUNTAS Y REGISTRA DE MANERA CORRECTA', 228, '2022-09-16', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (413, 158, 1, '2022-09-16 14:07:44', 'ORIENTA Y PROFUNDIZA DE MANERA CORRECTA, SOLO EN LA PREGUNTA  17 INDUCE EN LA RESPUESTA', 228, '2022-09-16', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (414, 154, 1, '2022-09-16 16:20:11', 'jjm', 229, '2022-09-14', '947800533', NULL, 1, '2022-09-16 16:54:19', 229);
INSERT INTO `tb_monitoreo` VALUES (415, 159, 1, '2022-09-16 16:58:01', 'Asesora cuenta con muy buen manejo de la llamada, cumple con el protocolo de la encuesta', 304, '2022-09-14', '931654664', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (416, 155, 1, '2022-09-16 17:21:35', 'Asesor cumple con todas las preguntas .En la pregunta 10 explica de manera correcta y concisa la consulta de clienta .', 303, '2022-09-16', '938862938', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (417, 155, 1, '2022-09-16 17:55:11', 'En la pregunta 14 ¿Cuál de las frases siguientes describe mejor la forma en que se reparten las tareas domésticas ud. y su cónyuge (o pareja)? - asesor menciona todas las alternativas y clienta indica solo  : \"YO HAGO MAS\" a lo que el asesor contesta:  entonces \"Usted hace mucho más de lo que le corresponde\" y marca eso , mas no le da la otra alternativa , lo correcto seria : \"Usted hace algo más de lo que le corresponde\" o \"\"Usted hace mucho más de lo que le corresponde\"  .\nEn la pregunta 15 Actualmente, ¿Cuál es su ocupación principal? - asesor brinda todas las alternativas a lo que clienta contesta : \"Actualmente no trabajo , soy ama de casa , tengo un niño especial\" ,pero asesor cuestiona sin dar alternativas sino induce a cliente a decir que esta desempleada y marca \"Actualmente está desempleado\"  .', 303, '2022-09-16', '938321280', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (418, 168, 1, '2022-09-16 18:13:00', 'EN LA PREGUNTA Cuando la mujer tiene un trabajo a jornada completa, la vida familiar se perjudica CLIENTE MENCIONA ¨NO ESTOY EN DESACUERDO¨ ASESORA ASUME QUE ESTA BIEN CUANDO DEBIÓ ORIENTAR SU RPTA SERIA ... , NO DA GUARDAR EN LA OPCION   DPTO-PROV -DIST,  EN LA PREGUNTA Tener hijos aumenta el prestigio social de las personas en la sociedad CLIENTE MENCIONA ¨MUY EN DESACUERDO¨  ASESORA REGISTRA  MAL ¨ EN DESACUERDO¨, EN LA PREGUNTA Ha vuelto del trabajo demasiado cansada/o para hacer las tareas de la casa CLIENTE MENCIONA ¨NO TRABAJO¨  ASESORA SIGUE RECALCANDO LAS ALTERNATIVAS (CUANDO DEBERÍA TOMAR MATENCIÓN Y SELECCIÓN) ESTABA DEMÁS PREGUNTAR B-C-D , EN LA PREGUNTA Pensando en la importancia de seguir estudios superiores CLIENTE MENCIONA ¨PARA AMBOS IGUAL¨  ASESORA INSISTE ¨ MUCHO MAS IMPORTANTE -ALGO MAS IMPORTANTE¨', 229, '2022-09-16', '980558497', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (419, 155, 1, '2022-09-16 18:31:41', 'En la pregunta 9 b - En promedio, ¿cuántas horas a la semana dedica al cuidado de los miembros de la familia (por ejemplo, niños, familiares ancianos, enfermos o discapacitados)?- Clienta contesta : \"Yo no cuido a ninguno\" a lo que asesor debió poner 0 y continuar con la pregunta 10, pero este re formula la pregunta hasta en 2 ocasiones , también consulta : Su respuesta entonces en valor de numero seria ?.. y finalmente menciona: \"Me indico ninguna entonces seria 0 correcto?\" . Este proceso desde el minuto 12:30 al 13:10 se pudo evitar para hacer mas corta y concisa la encuesta .', 303, '2022-09-16', '970522393', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (420, 160, 1, '2022-09-16 19:27:25', 'NO TIENE ESCUCHA ACTIV A, MANEJO DE OBJECION, POR ELLO NO ORIENTA NI PROFUNDIZA DE MANERA ADECUADA, SE ENREDA CON SUS PALABRAS, ES MUY REDUNDANTE, CAMBIA LAS PREGUNTAS DEL SPEECH, REGISTRA MAL LA RESPUESTA EN EL SISTEMA', 228, '2022-09-16', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (421, 168, 1, '2022-09-16 19:31:32', 'NO SE PRESENTA DE MANERA ADECUADA- AGREGA PALABARAS ¨ LA SIGUIENTE PREGUNTA ES¨ , EN LA PREGUNTA ¿podría decirme si está Ud. muy de acuerdo, de acuerdo, en desacuerdo o muy en desacuerdo con cada una de las frases que le voy a leer?  CLIENTE MENCIONA ¨ EN DESACUERDO¨ ASESORA NO ESCUCHA CON ATENCION Y REGISTRA MAL ¨ DE ACUERDO¨ , POR MOMENTOS DICE EHHHH, ESPACIOS VACIOS', 229, '2022-09-16', '971023826', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (422, 160, 1, '2022-09-16 20:01:15', 'NO TIENE ESCUCHA ACTIVA, MANEJO DE OBJECIONES, POR ENDE NO ORIENDA NI PROFUNDIZA DE MANERA CORRECTA, SE ENREDA CON SUS PROPIAS PALABRAS, ASUME RESPUESTAS', 228, '2022-09-16', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (423, 155, 2, '2022-09-17 09:32:24', 'Asesor realiza todas las preguntas de manera correcta , en la pregunta 9 orienta al cliente con paciencia y siempre enfocado en llegar a una respuesta concisa. En la pregunta 11 repite de manera clara y explica de forma concreta para que cliente entienda mejor y de la respuesta que mas se apegue a su realidad .', 303, '2022-09-17', '998615415', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (424, 155, 2, '2022-09-17 09:35:51', 'En la pregunta 5:Las personas tienen diferentes puntos de vista relativos al quién debe cuidar a los niños y niñas en edad preescolar, me refiero a niños que no tienen edad para ir a la escuela / menores de 5 años. ¿Quién cree usted que debe proporcionar principalmente el cuidado de niños y niñas en edad preescolar? Asesor repite con paciencia y buena voz la pregunta y las alternativas .  \nEn la pregunta 9 a. .En promedio, ¿cuántas horas a la semana dedica usted personalmente al trabajo doméstico/tareas del hogar, sin incluir las actividades de cuidado de los niños o personas en el hogar ni tiempo libre? - Clienta se confunde ya que indica que sus horarios son partidos pero asesor dirige bien la llamada y llega a una respuesta concreta. En la pregunta 23. ¿A qué sistema de salud está usted afiliado?- Clienta antes de que le mencionen las alternativas indica que solamente a SIS , sin embargo asesor repite  las 2 alternativas mas que se piden como mínimo . De la misma manera con la pregunta 26 ¿A qué sistema de salud está afiliada la persona que aporta más ingresos a su hogar?.', 303, '2022-09-17', '931842228', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (425, 34, 2, '2022-09-17 09:53:35', 'Se presenta con datos completos, es cálida en la llamada, cliente indica no realizaron reparación solo cambio de aceite, asesora menciona es en base a la atención brindada sigue con la encuesta, gestión correcta.', 229, '2022-09-14', 'BAZAN GARCIA MIGUEL', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (426, 34, 2, '2022-09-17 10:03:22', 'Comunicación fluida, se esmera en obtener mejor respuesta en base a las alternativas, en la pregunta de recomendación  ¨LE DICEN NO¨   indaga algo que pueda acotar e indicar al momento que se acercó, luego obtiene respuesta.', 229, '2022-09-14', 'GRUPO DELGADO VELARDE EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (427, 34, 2, '2022-09-17 10:17:17', 'CLIENTE MENCIONA QUEJAS, ASESORA MANEJA LA LLAMADA Y LOGRA HACER LA ENCUESTA, EN LA PREGUNTA Notamos que tu experiencia en nuestro taller no cumplió con tus expectativas, cuéntanos que sucedió: INDAGA EL MOTIVO , LUEGO  MENCIONAN TIENE FALLAS MECÁNICAS Y NO SOLUCIONARON.', 229, '2022-09-14', 'GRUPO FERROCENTER S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (428, 34, 2, '2022-09-17 10:21:01', 'Pregunta por el encargado de la empresa, llamada de seguimiento, es amable en la llamada, realiza las preguntas,  en la de recomendacion  le dicen TODO ESTA BIEN- CONFORME, asesora indaga a que se refiere con todo conforme - algo mas que desea indicar, le dicen con el servicio.', 229, '2022-09-14', 'HALEMA S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (429, 28, 2, '2022-09-17 10:33:45', 'Se presenta, confirma que sea la empresa,  menciona las preguntas,  no le dan puntuación asesor menciona la escala del 0 al 10 , le dan respuesta 10, en la de recomendación le dicen TODO BIEN, luego indaga en base a la atención, luego obtiene mejor respuesta.', 229, '2022-09-14', 'CELIA ORDOÑEZ CENTENO', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (430, 155, 1, '2022-09-17 10:41:25', 'En la pregunta 9 a.En promedio, ¿cuántas horas a la semana dedica usted personalmente al trabajo doméstico/tareas del hogar, sin incluir las actividades de cuidado de los niños o personas en el hogar ni tiempo libre?- Clienta duda en las horas y en primera instancia indica 4 horas a lo que asesor cuestiona y luego clienta da una respuesta de 8 horas sin embargo asesor sigue cuestionando si es al día o a la semana ,si es solamente trabajo domestico y alarga llamada , vuelve a repetir pregunta completa y clienta finalmente da una tercera respuesta que seria 6 horas   (eliminar del minuto 11:20 hasta 13:35 )\nEn la pregunta 15 Actualmente, ¿Cuál es su ocupación principal? - Clienta indica :\"Estoy desempleada ,soy ama de casa\" . A lo que asesor cuestiona : ¿Usted trabaja como ama de casa ...o no? a lo que clienta niega y el asesor afirma : \"Entonces usted es ama de casa , no genera ingresos\",  y clienta responde \"no , no nada de ingresos\". Finalmente asesor indica : Entonces seria Actualmente está desempleado y marca esa tipificación (eliminar desde  21:56 a 22:02)\nEn la pregunta 20  Pensando en el total de ingresos de su hogar, incluidas las fuentes de ingresos de todos los miembros del hogar que contribuyen a éste, ¿Qué tan difícil o fácil es actualmente para su hogar llegar a fin de mes? En general, ¿diría usted que es …?  - asesor utiliza un tono de voz no adecuado , cuestiona la respuesta de cliente que menciono \"Ni fácil ni difícil \" hace que ella se cuestione y pida le repitan la pregunta a lo que da la misma respuesta \" Ni fácil ni difícil\" ( eliminar desde minuto 24:56 hasta 25:39)', 303, '2022-09-17', '931840681', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (431, 28, 2, '2022-09-17 11:18:57', 'Cliente le dice rápido que sea la llamada, asesor maneja la llamada  y realiza las preguntas  sin demorarse , en la de recomendación indaga cual fue su experiencia - algo que le gustó de la atención, obtiene mejor respuesta MÁS PROMOCIONES EN TEMA DE REPUESTOS, gestión correcta.', 229, '2022-09-14', 'CISCO S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (432, 28, 2, '2022-09-17 11:22:55', 'Presentación correcta, se esmera en hacer las pregunta de la encuesta, en la de recomendación  LE DICEN TODO CONFORME - luego asesor indaga que le agradó del servicio , mencionan TODO BIEN Y CONFORME CON EL SERVICIO, SE CUMPLIÓ EL PLAZO ESTABLECIDO Y SE ENVIÓ LA COTIZACIÓN A TIEMPO.', 229, '2022-09-14', 'EMPRESA DE TRANSPORTES PATY S.C.R.LTDA.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (433, 28, 2, '2022-09-17 11:28:21', 'Menciona las preguntas de manera adecuada,  le dicen regular y menciona en base a las alternativas cual seria su respuesta, en la pregunta de reclamo - obtiene buen argumento y registra de manera correcta.', 229, '2022-09-14', 'G Y M GREEN LOGISTICS S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (434, 169, 2, '2022-09-17 11:54:27', 'Al comienzo de la llamada confirma que sea la empresa, se esmera en hacer las preguntas, en la pregunta de recomendación   le dicen TENER MAS SEDES, PORQUE ESTÁN MUY ALEJADAS., luego asesora indaga algo mas que desea indicar - LE DICEN NO.', 229, '2022-09-14', 'EMPRESA CARHUAMAYO S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (435, 169, 2, '2022-09-17 12:00:56', 'Es amable en la gestión, comunicación fluida, sigue con las preguntas , en la de recomendación le dicen NINGUNA, asesora indaga que es lo que mas le agradó, donde le mencionan ES BUENA LA ATENCIÓN Y LA RECEPCIÓN DEL VEHÍCULO.', 229, '2022-09-14', 'EMPRESA DE TRANSPORTES DE MERCANCIAS R & V S.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (436, 169, 2, '2022-09-17 12:03:30', 'Menciona las preguntas de manera adecuada, tiene ahínco el lograr respuesta en base a las alternativas, en la de recomendación le dicen NINGUNA, asesora indaga que tal fue la experiencia o que es lo que mas le agradó, donde le dicen  AGRADÓ LA ATENCIÓN.', 229, '2022-09-14', 'TRANSPORTES DASIL S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (437, 169, 2, '2022-09-17 12:16:01', 'Es proactiva la llamada y cálida,  menciona las preguntas de manera correcta, en la de recomendación le dicen QUE EN LOS SÁBADOS LA ATENCIÓN DEBERÍA SER SEA HASTA LAS 5:00  o 5:30 PM, al final agradece por la llamada.', 229, '2022-09-14', 'TRANSPORTES LA ESMERALDA S.R.L', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (438, 34, 2, '2022-09-17 12:24:24', 'Comunicación con encargado adulto mayor, tiene paciencia en hacer  la encuesta, en la  de recomendación indaga y le dicen  EN EL TEMA DE UNA COTIZACIÓN ADICIONAL PARA ALGUNOS REPUESTOS DONDE  TOMARON MUCHO TIEMPO EN BRINDARME.', 229, '2022-09-14', 'TOTAL SERVICE AQP S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (439, 28, 2, '2022-09-17 12:44:54', 'Cliente menciona dos alternativas  ES MUY BUENO - BUENO, asesora indaga cual de esas dos seria su respuesta , donde le dicen  BUENO,  en el reclamo, menciona la disconformidad del taller que hubo fallas.', 229, '2022-09-14', 'GARRIDO EIRL', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (440, 34, 2, '2022-09-19 09:40:17', 'Comunicación fluida, se esmera al hacer las preguntas ya que cliente no escucha, obtiene respuesta, en la de recomendación le dicen TODO ESTA BIEN, asesora indaga el motivo  donde responden que ESTA PENSANDO ESTE AÑO QUIZÁ SACAR  3 O 4 TRANSPORTES MAS.', 229, '2022-09-14', 'S&R SERLOMIN S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (441, 34, 2, '2022-09-19 09:57:36', 'Llamada de seguimiento, hace entender que nos brindaron este número de referencia, acepta la encuesta,  en la de recomendación mencionan BUENA ATENCIÓN y EL GERENTE ES BUENA PERSONA.', 229, '2022-09-14', 'QUISPE NINA FREDY', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (442, 34, 2, '2022-09-19 10:37:20', 'Es amable con el encargado de la unidad, acepta hacer la encuesta,  procede en hacer las preguntas de la encuesta, en la de recomendación indaga  y obtiene buena respuesta.', 229, '2022-09-14', 'NEXOS OPERADOR LOGISTICO S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (443, 34, 2, '2022-09-19 12:10:19', 'Presentación con datos completos, maneja la llamada, en la pregunta no cumplió con sus expectativas le dicen ES CARO, asesora indaga a que se refiere con que es caro, luego mencionan LOS REPUESTOS.', 229, '2022-09-14', 'TRANSPORTES ZUMAETA S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (444, 34, 2, '2022-09-19 12:17:32', 'Al consultar si es la persona que lleva la unidad al taller , le dicen que SI pero esta ocupado, maneja la llamada y que solo va durar 2 minutos, prosigue con la encuesta , en la de recomendación le dicen MANTENER LA MISMA ATENCIÓN, PREDISPOSICIÓN DE APOYO AL CLIENTE, EN ESTA OPORTUNIDAD ACUDÍ A UN TALLER EXTERNO PARA UN TORNO  QUE NO HABÍA EN USTEDES,  PERO POR LO DEMÁS SE CUMPLIÓ CON  EL PLAZO ESTABLECIDO.', 229, '2022-09-14', 'TRANSPORTES EL OLIVAR EIRL', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (445, 34, 2, '2022-09-19 14:47:03', 'Confirma que sea la empresa, sigue con las preguntas  de la encuesta, en la de recomendación le dicen NO TENGO NINGUNA SUGERENCIA, asesora consulta nada que nos tenga que acotar, mencionan que NO.', 229, '2022-09-14', 'SANKARE S.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (446, 34, 2, '2022-09-19 14:55:18', 'Es cálida en la llamada, tiene ahínco en seguir con los protocolos de la encuesta, en la pregunta de  experiencia que no cumplió, le dicen DEMORA EN LA ATENCIÓN , asesora indaga LA PARTE  MECÁNICA DEL TALLER.', 229, '2022-09-14', 'LOS TIGRES DE PIURA E.I.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (447, 34, 2, '2022-09-19 15:21:56', 'Cliente indica que sea rápido, maneja la llamada e informa que no se preocupara, realiza la encuesta, en la de recomendación le dicen TODO ESTA PERFECTO, asesora indaga que le ha gustado del servicio,', 229, '2022-09-14', 'HELATONY\'S SOCIEDAD ANONIMA CERRADA', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (448, 34, 2, '2022-09-19 15:52:29', 'Se presenta con datos completos,  menciona el motivo de llamada, cliente acepta encuesta, en la de recomendación  obtiene buena respuesta ¨ME PARECE MUY BIEN, LOS SERVICIOS QUE HE TENIDO  HASTA AHORA NO TENGO NINGÚN INCONVENIENTE¨.', 229, '2022-09-14', 'TRANSPORTES DON RAFA E.I.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (449, 34, 2, '2022-09-19 15:59:07', '', 229, '2022-09-14', 'SILMEN S.A.C.', NULL, 1, '2022-09-19 16:05:42', 229);
INSERT INTO `tb_monitoreo` VALUES (450, 34, 2, '2022-09-19 16:05:55', 'Comunicación fluida,  menciona las preguntas de las encuestas,  en la de recomendación le dicen NINGUNA, asesora consulta algo más que desea acotar e indicar, luego le dicen LA COLA ES MUY LARGA EN EL TIEMPO DE ESPERA AL MOMENTO DE IR A DEJAR LA UNIDAD.', 229, '2022-09-15', 'AMEZAGA ARELLANO S.A.C.INGENIEROS', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (451, 34, 2, '2022-09-19 16:36:26', 'Presentación con el cliente, procede con las  preguntas de la encuesta,  en la  de recomendación le dicen CUMPLEN CON EL REPUESTO Y EL MANTENIMIENTO PERO HAY MUCHA DEMORA EN EL TEMA DE LA COTIZACIÓN Y EN LA ENTREGA DEL VEHÍCULO.', 229, '2022-09-15', 'AUTOSERVICIOS JHON E.I.R.L', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (452, 34, 2, '2022-09-19 16:47:33', NULL, 229, '2022-09-15', NULL, NULL, 1, '2022-09-19 16:47:42', 229);
INSERT INTO `tb_monitoreo` VALUES (453, 28, 2, '2022-09-19 16:47:53', 'Cliente indica por que a esta hora la encuesta. asesor maneja la llamada  y acepta encuesta, en la de recomendación indaga en base a su experiencia,  obtiene mejor respuesta.', 229, '2022-09-15', 'SERVICENTRO RAMIREZ S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (454, 28, 2, '2022-09-19 16:55:55', 'Comunicación con el cliente, menciona las preguntas de la encuesta,  en la de recomendación le dicen que ESTA CONFORME CON EL SERVICIO,  asesor indaga que le ha gustado de la atención en base a la experiencia, al final le dicen TODO ESTA BIEN.', 229, '2022-09-15', 'TRANSPORTES E INVERSIONES MEDINA S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (455, 169, 2, '2022-09-19 17:02:24', 'Cliente consulta de que placa es?, asesora al  no contar con la información en el sistema menciona en base a la atención desde el 16/08 al 31/08, acepta en hacer la encuesta,   gestión correcta.', 229, '2022-09-15', 'INDUSTRIAS METALICAS ALYER SRLTDA', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (456, 28, 2, '2022-09-19 17:08:39', 'Llamada de seguimiento, se presenta e indica motivo de llamada,  aceptan en hacer la encuesta, en la pregunta de experiencia que no cumplió le dicen  NO ENTREGARON EN EL TIEMPO PACTADO  Y TAMPOCO DETALLARON LOS CAMBIOS DE LAS PIEZAS QUE REALIZAN POR CORREO.', 229, '2022-09-16', 'YACZ CARGO SAC', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (457, 34, 1, '2022-09-19 17:21:47', 'LLamada de seguimiento,   no menciona su nombre, indica las preguntas, en la de recomendación obtiene buena respuesta ¨ES BUENA LA ATENCIÓN,  LOS MECÁNICOS SABEN SU TRABAJO, LO HACEN BIEN. POR AHORA LAS 4  VECES QUE ESTOY LLEVANDO  EL CAMIÓN A MANTENIMIENTO TODO BIEN Y CONFORME.¨', 229, '2022-09-15', 'DECOR STONE  S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (458, 34, 2, '2022-09-19 17:38:43', 'Presentación correcta, explica motivo de llamada, en la pregunta  de experiencia que no cumplió le dicen TODO BIEN ,asesora consulta que sucedio ya que nos indico en otras preguntas su insatisfacción , luego obtiene mejor respuesta.', 229, '2022-09-15', 'EMPRESA DE TRANSPORTES HUANCUIRE SOCIEDAD ANONIMA CERRADA - ETRANSHUANCUIRE S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (459, 34, 2, '2022-09-19 17:52:07', 'LLamada de seguimiento,  se presenta de manera adecuada, cliente menciona regular la atención brindada, en la de experiencia no cumplió- le dicen  LA DEMORA POR UN CAMBIO DE ACEITE MAS DE MEDIO DIA, gestión correcta.', 229, '2022-09-15', 'EUROTUBO S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (460, 34, 2, '2022-09-19 18:11:18', 'Brindaron referencia, confirma que sea el encargado, se presenta con datos completos, sigue la secuencia de la encuesta, en la pregunta de experiencia no cumplió le dicen que DEMORAN MUCHO EN ATENDER Y AL DÍA SIGUIENTE LO ATENDIERON.', 229, '2022-09-15', 'FERRONOR SAC', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (461, 34, 2, '2022-09-19 18:23:39', 'Confirma que sea el encargado, se presenta con datos completos, en la pregunta de recomendación le dicen NO POR AHORA, asesora indaga algo mas que desea acotar e indagar, le dicen NO, gestión correcta.', 229, '2022-09-15', 'LUIS SANCHEZ RODRIGUEZ', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (462, 34, 2, '2022-09-19 18:38:40', 'Confirma que sea el chofer encargado de la unidad, le dicen que está manejando,asesora maneja la llamada y que solo va durar 1 minuto, cliente acepta, prosigue con la encuesta, en la de experiencia  no cumplió le dicen ¨ALEXANDER TORRES VILCHEZ - FUI A REALIZAR UN MANTENIMIENTO Y CAMBIO DE AMORTIGUADORES DONDE NO ERAN LAS MEDIDAS Y TUVE QUE VOLVER POR QUE SE ESTUVO CAYENDO EL REFRIGERANTE NO LO AJUSTARON,  NOS DURO UNA SEMANA POR QUE SE ROMPIÓ NO ERA LA MEDIDA¨', 229, '2022-09-15', 'PARAIBA TRANSPORTS S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (463, 34, 2, '2022-09-19 18:50:00', 'CLIENTE OCUPADO, ASESORA MANEJA LA LLAMADA MENCIONA SOLO SERA UN MINUTO,  en la pregunta de recomendación le dicen NINGÚN COMENTARIO, asesora indaga algo que desea indicar, le dicen NO.', 229, '2022-09-15', 'RB & RD S.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (464, 34, 1, '2022-09-19 18:53:02', 'Asesora no  menciona su nombre en la presentacion , indica motivo de su llamada,  en la pregunta de recomendación le dicen  ¨AL INGRESO ES UN POCO COMPLICADO YA QUE NUESTRAS UNIDADES SON MUY GRANDES SERIA BUENO QUE EN LA PUERTA NOS AYUDEN A PARAR EL TRAFICO ASÍ EVITAMOS ACCIDENTES Y ENTRAMOS SIN INCONVENIENTES¨.', 229, '2022-09-15', 'TECHINT  S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (465, 34, 1, '2022-09-19 19:01:14', 'No menciona su nombre en la presentación, confirma que sea la empresa,  acepta la encuesta,en la pregunta de recomendación le dicen BUENA ATENCIÓN, HAN CUMPLIDO CON EL TIEMPO DE ENTREGA Y CADA VEZ QUE YO HE LLAMADO SIEMPRE ME HAN DADO DETALLE  DEL AVANCE DE LOS CAMIONES.', 229, '2022-09-15', 'TRANSPORTES 77 S.A.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (466, 34, 2, '2022-09-19 19:12:03', 'Presentación correcta, se esmera en seguir con las preguntas de la encuesta, en la de recomendación le dicen LA ATENCIÓN,RECEPCIÓN Y COMUNICACIÓN  CON LOS ASESORES REDENTAS ALFREDO, JIMY, JORGE, OSCAR SN BUENAS, ESTOY CONTENTO CON EL SERVICIO.', 229, '2022-09-15', 'TRANSPORTES SAN GABRIEL S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (467, 34, 1, '2022-09-19 19:33:17', 'No menciona su NOMBRE,   es amable con cliente,  indica las preguntas de la encuesta, en la pregunta de recomendación le dicen EL RESPONSABLE DE PLANTA U OPERADOR SUPUESTAMENTE INDICA AL JEFE DEL TALLER QUE EL TRABAJO ESTA REALIZADO, PERO  AL PARECER EN OCASIONES NO HA PODIDO SUPERVISAR EL REPSONSABLE  Y QUEDARON TRABAJOS PENDIENTES  PERO SE PUDO RESOLVER ESA SITUACION.', 229, '2022-09-16', 'TRANSPORTES DANI UNION E.I.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (468, 34, 2, '2022-09-19 19:38:40', 'Comunicación fluida, cliente acepta hacer la encuesta, le dicen en la pregunta de recomendación le dicen  ESTOY UN POCO PREOCUPADO POR LA CALIDAD DE LAS PIEZAS DE LOS CAMIONES,LLEVE HACER UNA REPARACIÓN,  llena el formulario de manera correcta.', 229, '2022-09-16', 'GRIFOS SAGITARIO S.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (469, 34, 2, '2022-09-19 19:44:00', 'Comunicación fluida, se presenta con datos completos, acepta hacer la encuesta, en la pregunta de recomendación le dicen todo esta bien, asesora indaga algo mas que desea acotar le dicen ESTA ACORDE A LA NECESIDAD.', 229, '2022-09-16', 'ALIDA METAL E.I.R.L', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (470, 34, 1, '2022-09-20 09:39:35', 'NO MENCIONA SU NOMBRE,  ES AMABLE EN LA LLAMADA, INDICA LAS PREGUNTAS DE LA ENCUESTA, EN LA DE RECOMENDACIÓN LE DICEN ¨ ESTA CONTENTO Y SATISFECHO CON LA ATENCIÓN¨', 229, '2022-09-16', 'A & M TRANSPORTES S.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (471, 34, 2, '2022-09-20 09:48:21', 'Confirma el nombre de la empresa, le dicen que es el trabajador, acepta hacer la encuesta, sigue los protocolos de la gestión.', 229, '2022-09-16', 'CORP.ELECTROMECANICA EN ING.Y CONSTR.SAC', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (472, 34, 2, '2022-09-20 09:53:47', 'Comunicación fluida,  es paciente con el encuestado, formula las preguntas, en la de experiencia  que no cumplió le dicen \nLO LLEVO  POR UN SINIESTRO, MANDE A PLANCHAR Y  NO HAN LLEGADO AL COLOR AMARILLO DEL CARRO, NO CENTRARON BIEN  EL CAPO  Y TODO ESTA QUIÑADO .', 229, '2022-09-16', 'DOIL INTERNATIONAL S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (473, 34, 2, '2022-09-20 10:01:07', 'Es amable en la llamada, le  dan otra respuesta, recalca las alternativas, en la de recomendación le dicen A VECES DEMORAN EN LA ENTREGA, NO REALIZAN EN EL DÍA PROGRAMADO.', 229, '2022-09-16', 'EMPRESA DE TRANSPORTES HUAMANI SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (474, 34, 2, '2022-09-20 10:08:54', 'Se presenta con datos completos, sigue con las preguntas de la encuesta, en la de recomendación le TODO BIEN, asesora indaga algo más que pueda acotar le dicen POR EL MOMENTO TODO ESTA BIEN, ME HAN RECIBIDO MUY BIEN.', 229, '2022-09-16', 'EMPRESA DE TRANSPORTES MAJUFRA S.A.C', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (475, 34, 2, '2022-09-20 10:29:51', 'Cliente acepta hacer la encuesta, le dan doble respuesta, asesora  orienta a que le brinde una sola respuesta, en la de recomendación le dicen  TODO EXCELENTE CON LA ATENCIÓN.', 229, '2022-09-16', 'INVERSIONES Y SERVICIOS ARIANA E.I.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (476, 34, 2, '2022-09-20 10:36:10', 'Presentación adecuada, le dicen que si hará encuesta, en la de recomendación  le dicen DEBEN HACER EL LAVADO DEL TRACTO CUANDO ENVIO HACER MANTENIMIENTO YA QUE EN OTROS SITIOS SI LO HACEN.', 229, '2022-09-16', 'MONTEVERDE ADUANERA LOGISTICA INTEGRADA S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (477, 34, 2, '2022-09-20 10:40:44', 'Comunicación con el encargado, se esmera en obtener mejor respuesta,  en la pregunta de experiencia no cumplió - le dicen DEMORAN EN LA COTIZACIÓN Y REPUESTOS', 229, '2022-09-16', 'OPERADORES LOGISTICOS ANDINOS S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (478, 169, 2, '2022-09-20 11:18:47', '', 229, '2022-09-16', 'TRANSPORTE SAFE PERU S.A.C.', NULL, 1, '2022-09-20 11:22:19', 229);
INSERT INTO `tb_monitoreo` VALUES (479, 169, 2, '2022-09-20 11:22:29', 'Comunicación fluida, se esmera en hacer las preguntas de la encuesta, es cálida, en la de recomendación  le dicen FALTA ALGUNAS COSAS, asesora indaga a que se refiere con falta mas cosas luego obtiene mejores respuesta FALTA ESPACIO MÁS GRANDE PARA RECIBIR LOS CAMIONES.', 229, '2022-09-17', 'TRANSPORTE SAFE PERU S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (480, 169, 2, '2022-09-20 11:31:23', 'Comunicación con cliente, acepta la encuesta, menciona las preguntas y alternativas, en la pregunta de recomendación le  dicen TODO BIEN, asesora indaga que le faltaría  para que este totalmente satisfecho, luego recibe mejor respuesta.', 229, '2022-09-17', 'TRANSPORTES DAP S.A.C.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (481, 169, 2, '2022-09-20 11:46:29', 'Encuestado menciona que no demore en la llamada, asesora maneja la llamada y obtiene encuesta, en la pregunta experiencia-no cumplió le dicen UN MANTENIMIENTO O REPARACIÓN DE MOTOR Y A LA FECHA SIGO TENIENDO PROBLEMAS, YA LO LLEVE EN DOS OPORTUNIDADES Y NO LE DAN SOLUCIÓN.', 229, '2022-09-17', 'YARINGAÑO ROSALES CARLOS RAFAEL', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (482, 169, 2, '2022-09-20 12:19:59', 'Se llamó en dos oportunidades, maneja la llamada, procede con las preguntas de la encuesta,  en la de recomendación  le dicen BUENA ATENCIÓN Y TIENE REPUESTOS.', 229, '2022-09-17', 'LLAMA GAS S A', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (483, 24, 1, '2022-09-20 12:25:46', 'AL COMIENZO DE LA LLAMADA NO SE PRESENTA,  indica motivo de llamada, menciona  las preguntas, en la de recomendación le dicen TODO ESTA BIEN, asesor indaga para nuestra mejora de nosotros, al final le dicen NINGUNA SUGERENCIA.', 229, '2022-09-19', 'ALLEN ANTONY TRANSPORTES PERU E IMPORTACIONES E.I.R.L.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (484, 24, 1, '2022-09-20 12:36:22', 'Presentación correcta,  indica motivo de llamada pero se enreda con sus palabras, en la pregunta experiencia - no cumplió, le dicen TENER  DISPONIBILIDAD DE REPUESTOS EN STOCK.', 229, '2022-09-19', 'TRANSPORTES AUSTRAL GROUP S.A', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (485, 24, 2, '2022-09-20 12:51:57', 'Maneja la llamad cuando le consultan cuantos minutos se va a demorar, le  dice solo 2 minutos, sigue con la encuesta, en la pregunta de recomendación le dicen que NO TIENE SUGERENCIA, asesor indaga algo que le gustaría que mejore, obtiene igual respuesta.', 229, '2022-09-19', 'TRANSPORTES TURISTICOS SAKURA S.A.', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (486, 34, 2, '2022-09-20 14:07:44', '', 229, '2022-09-16', 'MACONMIN SRL', NULL, 1, '2022-09-20 14:41:47', 229);
INSERT INTO `tb_monitoreo` VALUES (487, 165, 1, '2022-09-20 18:02:53', 'Cumple con el speech de presentación,  en la pregunta Cuántos hijos tiene o ha tenido Ud.?, cliente menciona NINGUN HIJO, donde asesor registra de manera errónea 0 cuando es NINGUNO, en la pregunta . ¿Cuál fue el último año de estudios que usted completó o aprobó? cliente menciona SUPERIOR TECNICA INCOMPLETA  asesor persiste en decirle es SECUNDARIA COMPLETA cuando no esta bien, NO MENCIONA Para terminar, quiero pedirle que nos proporcione algunos datos socio económicos de su hogar:', 229, '2022-09-14', '925355244', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (488, 165, 2, '2022-09-20 18:55:33', 'Comunicación fluida, menciona las preguntas y alternativas de la empresa, se esmera en seguir los protocolos, gestión correcta.', 229, '2022-09-14', '994331172', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (489, 166, 1, '2022-09-21 15:25:58', 'NO TIENE ESCUCHA ACTIVA, MANEJO DE OBJECION, POR ENDE NO ORIENTA DE MANERA CORRECTA AL CLIENTE,  INDICA MUCHO LA MULETILLA CORRECTO, NO CUMPLE CON EL SPEECH, NO LEE CORRECTAMENTE LAS PREGUNTAS Y ALTERNATIVAS.', 228, '2022-09-21', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (490, 166, 1, '2022-09-21 16:18:19', 'NO TIENE ESCUCHA ACTIVA, MANEJO DE OBJECIONES,  POR ENDE NO  PROFUNDIZA NI ORIENTA DE  MANERA CORRECTA, NO LEE CORRECTAMENTE LAS PREGUNTAS,  TAMPOCO LEE TODAS  LAS ALTERNATIVAS.', 228, '2022-09-21', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (491, 166, 1, '2022-09-21 16:26:25', 'INDUCE EN LAS RESPUESTAS, NO CUMPLE CON EL SPEECH, ASUME RESPUESTAS, NO TIENE ESCUCHA ACTIVA NI MANEJO DE OBJECIONES', 228, '2022-09-21', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (492, 166, 1, '2022-09-21 16:27:18', 'NO TIENE ESUCHA ACTIVA, LE FALTA MANEJO DE OBJECIONES, NO CUMPLE CON EL PROTOCOLO DE SPEECH, DICE MUCHO LA PALABRA CORRECTO, REGISTRA MAL LA INFORMACION EN EL SISTEMA', 228, '2022-09-21', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (493, 165, 1, '2022-09-21 16:37:15', 'COMUNICACION FLUIDA, SE ESMERA EN SEGUIR LA SECUENCIA DE LA ENCUESTA,  EN LA PREGUNTA  Rector o rectora de una universidad , MENCIONA LAS ALTERNATIVAS DESORDENADA, EN LA PREGUNTA 23. ¿A qué sistema de salud está usted afiliado? - NO MENCIONA LOS DEMÁS SEGUROS - OMITE INFORMACIÓN Y SOLO ASUME', 229, '2022-09-14', '969244689', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (494, 165, 1, '2022-09-21 18:47:18', 'Se presenta con datos completos,  menciona las preguntas de la encuesta, en la pregunta ¿A qué sistema de salud está usted afiliado? ,  ASESOR NO MENCIONA LOS DEMÁS SEGUROS, OMITE LA INFORMACION.', 229, '2022-09-14', '936865537', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (495, 155, 2, '2022-09-22 11:04:36', 'ORIENTA Y PROFUNDIZA DE MANERA CORRECTA, CUMPLE CON EL PROTOLO DEL SPEECH', 228, '2022-09-22', '980853814', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (496, 165, 1, '2022-09-22 12:07:39', 'Es llamada  de seguimiento pero no brinda el speech de presentación de  manera completa , en la pregunta  Actualmente, ¿Cuál es su ocupación principal?  , cliente menciona que ayuda en el trabajo de empresa de transporte , ASESOR asume que es independiente cuando hay otras opciones que debió informar  para quedarse con una buena respuesta,', 229, '2022-09-14', '967992288', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (497, 159, 1, '2022-09-22 12:12:19', NULL, 308, '2022-09-15', NULL, NULL, 1, '2022-09-22 12:13:11', 308);
INSERT INTO `tb_monitoreo` VALUES (498, 159, 2, '2022-09-22 12:12:51', NULL, 308, '2022-09-15', NULL, NULL, 1, '2022-09-22 12:13:18', 308);
INSERT INTO `tb_monitoreo` VALUES (499, 159, 2, '2022-09-22 12:14:18', 'Orienta bien a la persona encuestada sobre el objetivo de la encuesta ///Cuenta con escucha activa // Buen lenguaje y comunicación - tiene empatía con la encuestada  // buen manejo de llamada// omite pregunta (Seguro Escolar Privado) // Brinda Specch correcto en ingreso de llamada y preguntas en general //realiza registro correcto en sistema.', 308, '2022-09-15', '556337', NULL, 1, '2022-09-22 14:41:17', 308);
INSERT INTO `tb_monitoreo` VALUES (500, 155, 2, '2022-09-22 14:37:37', 'Asesor persuade bien al cliente, buen lexico', 307, '2022-09-22', '623491', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (501, 159, 2, '2022-09-22 14:41:38', 'Orienta bien a la persona encuestada sobre el objetivo de la encuesta ///Cuenta con escucha activa // Buen lenguaje y comunicación - tiene empatía con la encuestada  // buen manejo de llamada// omite pregunta (Seguro Escolar Privado) // Brinda Specch correcto en ingreso de llamada y preguntas en general //realiza registro correcto en sistema.', 308, '2022-09-22', '556337', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (502, 155, 2, '2022-09-22 15:01:54', '', 307, '2022-09-22', '563615', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (503, 155, 2, '2022-09-22 15:03:35', 'asesor persuade bien al cliente , buen lexico , mas concentracion al momento de registrar en el sistema', 307, '2022-09-22', '608812', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (504, 155, 2, '2022-09-22 15:32:28', 'asesor persuade bien al cliente, buen léxico,', 307, '2022-09-22', '571699', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (505, 159, 2, '2022-09-22 15:54:04', NULL, 308, '2022-09-15', NULL, NULL, 1, '2022-09-22 15:54:20', 308);
INSERT INTO `tb_monitoreo` VALUES (506, 159, 2, '2022-09-22 15:55:11', 'Al iniciar la llamada inmediatamente indica si es el usuario y después recién comienza con el Specch; en el minuto (04:13) se siente en la voz de asesora que cuestiona la respuesta del encuestado;', 308, '2022-09-22', '567860', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (507, 159, 2, '2022-09-22 16:10:14', 'En el minuto (01:11) no completa la pregunta si es titular o usuario; no tiene escucha activa, ya que  se escucha que dice NO entre los segundos (20:45 - 20:48), se asume que quería corregir ese su ultima respuesta.', 308, '2022-09-22', '572851', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (508, 155, 2, '2022-09-22 16:50:10', 'el asesor persuade bien; comete error en inicio de Speech e pronuncia una palabra incompleta; comete error al brindar opciones de una pregunta; se tiene que generar edicion con voz de asesor en formulacion de pregunta.', 307, '2022-09-22', '611858', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (509, 159, 2, '2022-09-22 17:00:24', 'Escucha activa - en la pregunta 1 opción 2 el encuestado indica que es mayor de edad con nacionalidad peruana y adiciona que tiene 55 años, (01:13 - 01:14) Recomendación: se tuvo que hacer la pregunta en mención y adicionar la respuesta previamente dicha por el encuestado para evitar incomodidad y se vea la escucha activa en la llamada.', 308, '2022-09-22', '573230', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (510, 159, 2, '2022-09-22 17:48:55', '', 308, '2022-09-22', '641179', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (511, 155, 2, '2022-09-22 17:51:35', 'asesor brinda información correcta muy objetivo ; buen léxico al hablar con el cliente; buena orientación y amabilidad.', 307, '2022-09-22', '565574', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (512, 159, 2, '2022-09-22 18:25:52', 'Borrar desde (14:56 - 14:57) ingresar con voz de asesora (EsSalud) con respuesta de cliente (NO) y después (Seguro FF.AA./Policiales) con la voz de agente ya que dijo rápidamente y se unió en el mismo segundo borrado que estoy solicitando la edición.', 308, '2022-09-22', '618538', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (513, 165, 1, '2022-09-23 11:56:54', 'Comunicación fluida, al comienzo de la llamada le dicen cuanto tiempo va durar maneja la llamada le dicen  7 a 10 minutos, cliente acepta, no menciona todas  las alternativas  de la pregunta ¿A qué sistema de salud está usted afiliado?, lo dice de manera desordenada cuando tiene que seguir los parámetros de la encuesta.', 229, '2022-09-14', '986472943', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (514, 165, 2, '2022-09-23 12:16:57', 'Comunicación fluida,  menciona las pregunta de la encuesta de manera adecuada, muestra empatía  con el encuestado cuando no escucha las preguntas, gestión correcta.', 229, '2022-09-14', '946834212', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (515, 155, 2, '2022-09-23 15:05:21', 'TIENE ESCUCHA ACTIVA, ORIENTA Y MANEJA LA LLAMADA DE MANERA CORRECTA, CUMPLE CON EL PROTOCOLO DELSPEECH, REGISTRA DE MANERA CORRECTA AL SISTEMA', 228, '2022-09-23', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (516, 166, 1, '2022-09-23 15:20:46', 'Cuando se presenta lo dice de manera incompleta, en la pregunta   ¿Quién principalmente cree usted que debe cubrir los costos de cuidado de niños y niñas en edad preescolar (que todavía no van a la escuela) cliente menciona dos opciones ASESOR ASUME QUE ESTA BIEN, cuando debió orientar cuál es la más importante, NO MENCIONA LA PREGUNTA DE MANERA COMPLETA En promedio, ¿cuántas horas a la semana dedica usted personalmente al trabajo doméstico/tareas del hogar, sin incluir las actividades de cuidado de los niños o personas en el hogar ni tiempo libre?, NO MENCIONA DE MANERA COMPLETA LAS ALTERNATIVAS DE LA PREGUNTA Actualmente, ¿Cuál es su ocupación principal? , EN LA PREGUNTA  Pensando en la importancia de seguir estudios superiores para hombres y mujeres, ¿diría usted que seguir estudios superiores es …?  CLIENTE MENCIONA PARA A,BOS, ASESOR CLASIFICA OTRA RPTA Y EXIGE EN DAR OTRA RESPUESTA, NO INDICA DE MANERA COMPLETA ¨ Teniendo en cuenta su vida en general, ¿cómo se consideraría Ud.¨ , NO MENCIONA LAS ALTERNATIVAS DE MANERA CORRECTA  Cuál fue el último año de estudios que usted completó o aprobó?', 229, '2022-09-15', '', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (517, 166, 1, '2022-09-23 16:37:35', 'NO SE PRESENTA DE MANERA ADECUADA, OMITE INFORMACIÓN en  Para empezar, ¿podría decirme si está Ud. muy de acuerdo, de acuerdo, en desacuerdo o muy en desacuerdo con cada una de las frases que le voy a leer? , CLIENTE  NO MENCIONA  RESPUESTA DE UNA DE LAS ALTERNATIVA,  ASESOR ASUME DE MANERA EQUIVOCADA Y NO ORIENTA PARA LOGRAR RESPUESTA CORRECTA, EN LA PREGUNTA Ahora me gustaría que me dijera si Ud. cree que las mujeres deberían trabajar fuera de casa a jornada completa, trabajar a tiempo parcial o cree que no deberían trabajar CLIENTE INDICA ¨TIEMPO COMPLETO¨ , ASESOR EXIGE A QUE RESPONDA PARCIAL CUANDO YA CONTABA CON RESPUESTA, NO INDICA LA PREGUNTA DE MANERA COMPLETA Ahora, pensando en su propia situación:  a.En promedio, ¿cuántas horas a la semana dedica usted personalmente al trabajo doméstico/tareas del hogar, sin incluir las actividades de cuidado de los niños o personas en el hogar ni tiempo libre?, EN LA PREGUNTA Actualmente, ¿Cuál es su ocupación principal?  NO MENCIONA LAS ALTERNATIVAS, NO MENCIONA LA PREGUNTA COMPLETA- FALTA DECIR algunas de las situaciones que se describen a continuación? ¿Varias veces a la semana, Varias veces al mes, Una o dos veces, Nunca? ¿o no trabaja?, EN LA PREGUNTA ensando en la importancia de seguir estudios superiores para hombres y mujeres, ¿diría usted que seguir estudios superiores es …? CLIENTE INDICA AMBOS , ASESOR INGRESA AL SISTEMA EN OTRA OPCIÓN Y PERSISTE EN DAR OTRA RESPUESTA , NO INDICA Por favor, para cada una de los siguientes puestos, indique cuál es la respuesta que se acerca más a su propia opinión. ¿Las mujeres son mucho más apropiadas?, ¿Las mujeres son algo más apropiadas? ¿Por igual las mujeres y los hombres? ¿Los hombres son algo más apropiados? ¿Los hombres son mucho más apropiados?, NO INDICA Teniendo en cuenta su vida en general, ¿cómo se consideraría Ud., NO MENCIONA LAS ALTERNATIVAS DE LA PREGUNTA ¿Cuál fue el último año de estudios que usted completó o aprobó?,  NO MENCIONA Para terminar, quiero pedirle que nos proporcione algunos datos socioeconómicos de su hogar:', 229, '2022-09-15', '942196777', NULL, 0, NULL, NULL);
INSERT INTO `tb_monitoreo` VALUES (518, 166, 1, '2022-09-23 18:18:17', 'INDICA PRESENTACIÓN DE MANERA INCOMPLETA Y DESORDENADA, NO INDAGA POR Nombre del lugar, urbanización, barrio, comunidad o centro poblado: SOLO PASA A LA SIGUIENTE, NO MENCIONA LA PREGUNTA  Para empezar, ¿podría decirme si está Ud. muy de acuerdo, de acuerdo, en desacuerdo o muy en desacuerdo con cada una de las frases que le voy a leer?, NO MENCIONA En promedio, ¿cuántas horas a la semana dedica usted personalmente al trabajo doméstico/tareas del hogar, sin incluir las actividades de cuidado de los niños o personas en el hogar ni tiempo libre?  , NO INDICA LA PREGUNTA ¿Siempre usted, Habitualmente usted, Más o menos por igual o ambos a la vez, Habitualmente su cónyuge/pareja, Siempre su cónyuge/pareja, Siempre o habitualmente hijas mujeres, Siempre o habitualmente hijos hombres, u otra persona? , NO MENCIONA LA PREGUNTA Algunas de las situaciones que se describen a continuación?¿Varias veces a la semana, Varias veces al mes, Una o dos veces, Nunca? ¿o no trabaja? , NO INDICA Por favor, para cada una de los siguientes puestos, indique cuál es la respuesta que se acerca más a su propia opinión. ¿Las mujeres son mucho más apropiadas?, ¿Las mujeres son algo más apropiadas? ¿Por igual las mujeres y los hombres? ¿Los hombres son algo más apropiados? ¿Los hombres son mucho más apropiados? , NO SIGUE LOS PARÁMETROS DE LA ENCUESTA ¨Teniendo en cuenta su vida en general, ¿cómo se consideraría Ud.¨', 229, '2022-09-15', '992778351', NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for tb_monitoreo_detalle
-- ----------------------------
DROP TABLE IF EXISTS `tb_monitoreo_detalle`;
CREATE TABLE `tb_monitoreo_detalle`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_criterioxservicio` int NULL DEFAULT NULL,
  `id_monitoreo` int NULL DEFAULT NULL,
  `f_registro` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5089 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_monitoreo_detalle
-- ----------------------------
INSERT INTO `tb_monitoreo_detalle` VALUES (208, 1, 17, '2022-08-08 14:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (209, 2, 17, '2022-08-08 14:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (210, 3, 17, '2022-08-08 14:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (211, 4, 17, '2022-08-08 14:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (212, 5, 17, '2022-08-08 14:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (213, 6, 17, '2022-08-08 14:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (214, 7, 17, '2022-08-08 14:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (215, 8, 17, '2022-08-08 14:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (216, 9, 17, '2022-08-08 14:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (219, 10, 17, '2022-08-08 14:08:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (220, 1, 18, '2022-08-08 14:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (221, 2, 18, '2022-08-08 14:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (222, 3, 18, '2022-08-08 14:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (223, 4, 18, '2022-08-08 14:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (224, 5, 18, '2022-08-08 14:08:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (225, 6, 18, '2022-08-08 14:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (226, 7, 18, '2022-08-08 14:08:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (227, 8, 18, '2022-08-08 14:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (228, 9, 18, '2022-08-08 14:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (229, 10, 18, '2022-08-08 14:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (230, 1, 19, '2022-08-08 14:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (231, 2, 19, '2022-08-08 14:08:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (232, 3, 19, '2022-08-08 14:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (233, 4, 19, '2022-08-08 14:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (234, 5, 19, '2022-08-08 14:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (235, 6, 19, '2022-08-08 14:08:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (236, 7, 19, '2022-08-08 14:08:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (237, 8, 19, '2022-08-08 14:08:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (238, 9, 19, '2022-08-08 14:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (239, 10, 19, '2022-08-08 14:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (240, 1, 20, '2022-08-08 14:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (241, 2, 20, '2022-08-08 14:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (242, 3, 20, '2022-08-08 14:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (243, 4, 20, '2022-08-08 14:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (244, 5, 20, '2022-08-08 14:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (245, 6, 20, '2022-08-08 14:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (246, 7, 20, '2022-08-08 14:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (247, 8, 20, '2022-08-08 14:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (248, 9, 20, '2022-08-08 14:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (249, 10, 20, '2022-08-08 14:08:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (250, 1, 21, '2022-08-08 14:08:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (251, 2, 21, '2022-08-08 14:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (252, 3, 21, '2022-08-08 14:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (253, 4, 21, '2022-08-08 14:08:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (254, 5, 21, '2022-08-08 14:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (255, 6, 21, '2022-08-08 14:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (256, 7, 21, '2022-08-08 14:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (257, 8, 21, '2022-08-08 14:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (258, 9, 21, '2022-08-08 14:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (259, 10, 21, '2022-08-08 14:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (260, 1, 22, '2022-08-08 14:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (261, 2, 22, '2022-08-08 14:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (262, 3, 22, '2022-08-08 14:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (263, 4, 22, '2022-08-08 14:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (264, 5, 22, '2022-08-08 14:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (265, 6, 22, '2022-08-08 14:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (266, 7, 22, '2022-08-08 14:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (267, 8, 22, '2022-08-08 14:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (268, 9, 22, '2022-08-08 14:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (269, 10, 22, '2022-08-08 14:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (270, 1, 23, '2022-08-08 14:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (271, 2, 23, '2022-08-08 14:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (272, 3, 23, '2022-08-08 14:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (273, 4, 23, '2022-08-08 14:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (274, 5, 23, '2022-08-08 14:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (275, 6, 23, '2022-08-08 14:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (276, 7, 23, '2022-08-08 14:08:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (277, 8, 23, '2022-08-08 14:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (278, 9, 23, '2022-08-08 14:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (279, 10, 23, '2022-08-08 14:08:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (280, 1, 24, '2022-08-08 15:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (281, 2, 24, '2022-08-08 15:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (282, 3, 24, '2022-08-08 15:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (283, 4, 24, '2022-08-08 15:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (284, 5, 24, '2022-08-08 15:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (285, 6, 24, '2022-08-08 15:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (286, 7, 24, '2022-08-08 15:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (287, 8, 24, '2022-08-08 15:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (288, 9, 24, '2022-08-08 15:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (289, 10, 24, '2022-08-08 15:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (290, 1, 25, '2022-08-08 15:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (291, 2, 25, '2022-08-08 15:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (292, 3, 25, '2022-08-08 15:08:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (293, 4, 25, '2022-08-08 15:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (294, 5, 25, '2022-08-08 15:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (295, 6, 25, '2022-08-08 15:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (296, 7, 25, '2022-08-08 15:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (297, 8, 25, '2022-08-08 15:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (298, 10, 25, '2022-08-08 15:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (299, 9, 25, '2022-08-08 15:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (300, 10, 27, '2022-08-08 15:08:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (301, 9, 27, '2022-08-08 15:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (302, 8, 27, '2022-08-08 15:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (303, 7, 27, '2022-08-08 15:08:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (304, 6, 27, '2022-08-08 15:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (305, 5, 27, '2022-08-08 15:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (306, 4, 27, '2022-08-08 15:08:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (307, 3, 27, '2022-08-08 15:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (308, 1, 27, '2022-08-08 15:08:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (309, 2, 27, '2022-08-08 15:08:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (310, 1, 28, '2022-08-08 15:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (311, 2, 28, '2022-08-08 15:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (312, 3, 28, '2022-08-08 15:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (313, 5, 28, '2022-08-08 15:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (314, 6, 28, '2022-08-08 15:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (315, 8, 28, '2022-08-08 15:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (316, 9, 28, '2022-08-08 15:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (317, 10, 28, '2022-08-08 15:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (318, 7, 28, '2022-08-08 15:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (319, 4, 28, '2022-08-08 15:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (320, 1, 29, '2022-08-08 16:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (321, 2, 29, '2022-08-08 16:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (322, 3, 29, '2022-08-08 16:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (323, 5, 29, '2022-08-08 16:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (324, 6, 29, '2022-08-08 16:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (325, 7, 29, '2022-08-08 16:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (326, 8, 29, '2022-08-08 16:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (327, 9, 29, '2022-08-08 16:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (328, 10, 29, '2022-08-08 16:08:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (329, 4, 29, '2022-08-08 16:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (330, 43, 31, '2022-08-08 18:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (331, 44, 31, '2022-08-08 18:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (332, 1, 32, '2022-08-09 09:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (333, 2, 32, '2022-08-09 09:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (334, 3, 32, '2022-08-09 09:08:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (335, 4, 32, '2022-08-09 09:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (336, 5, 32, '2022-08-09 09:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (337, 6, 32, '2022-08-09 09:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (338, 7, 32, '2022-08-09 09:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (339, 8, 32, '2022-08-09 09:08:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (340, 9, 32, '2022-08-09 09:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (341, 10, 32, '2022-08-09 09:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (342, 1, 34, '2022-08-09 10:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (343, 2, 34, '2022-08-09 10:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (344, 3, 34, '2022-08-09 10:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (345, 4, 34, '2022-08-09 10:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (346, 5, 34, '2022-08-09 10:08:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (347, 6, 34, '2022-08-09 10:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (348, 7, 34, '2022-08-09 10:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (349, 8, 34, '2022-08-09 10:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (350, 9, 34, '2022-08-09 10:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (351, 10, 34, '2022-08-09 10:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (352, 1, 35, '2022-08-09 11:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (353, 2, 35, '2022-08-09 11:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (354, 13, 35, '2022-08-09 11:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (355, 4, 35, '2022-08-09 11:08:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (356, 5, 35, '2022-08-09 11:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (357, 6, 35, '2022-08-09 11:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (358, 17, 35, '2022-08-09 11:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (359, 8, 35, '2022-08-09 11:08:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (360, 9, 35, '2022-08-09 11:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (361, 10, 35, '2022-08-09 11:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (362, 1, 36, '2022-08-09 11:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (363, 2, 36, '2022-08-09 11:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (364, 3, 36, '2022-08-09 11:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (365, 5, 36, '2022-08-09 11:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (366, 6, 36, '2022-08-09 11:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (367, 7, 36, '2022-08-09 11:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (368, 8, 36, '2022-08-09 11:08:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (369, 9, 36, '2022-08-09 11:08:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (370, 10, 36, '2022-08-09 11:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (371, 4, 36, '2022-08-09 11:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (372, 1, 37, '2022-08-09 11:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (373, 2, 37, '2022-08-09 11:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (374, 3, 37, '2022-08-09 11:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (375, 4, 37, '2022-08-09 11:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (376, 5, 37, '2022-08-09 11:08:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (377, 6, 37, '2022-08-09 11:08:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (378, 7, 37, '2022-08-09 11:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (379, 8, 37, '2022-08-09 11:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (380, 9, 37, '2022-08-09 11:08:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (381, 10, 37, '2022-08-09 11:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (382, 1, 38, '2022-08-09 11:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (383, 2, 38, '2022-08-09 11:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (384, 3, 38, '2022-08-09 11:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (385, 4, 38, '2022-08-09 11:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (386, 5, 38, '2022-08-09 11:08:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (387, 6, 38, '2022-08-09 11:08:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (388, 7, 38, '2022-08-09 11:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (389, 8, 38, '2022-08-09 11:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (390, 9, 38, '2022-08-09 11:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (391, 10, 38, '2022-08-09 11:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (392, 1, 39, '2022-08-09 11:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (393, 2, 39, '2022-08-09 11:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (394, 3, 39, '2022-08-09 11:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (395, 7, 39, '2022-08-09 11:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (396, 4, 39, '2022-08-09 11:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (397, 5, 39, '2022-08-09 11:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (398, 6, 39, '2022-08-09 11:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (399, 8, 39, '2022-08-09 11:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (400, 9, 39, '2022-08-09 11:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (401, 10, 39, '2022-08-09 11:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (402, 1, 40, '2022-08-09 11:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (403, 2, 40, '2022-08-09 11:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (404, 3, 40, '2022-08-09 11:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (405, 4, 40, '2022-08-09 11:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (406, 5, 40, '2022-08-09 11:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (407, 6, 40, '2022-08-09 11:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (408, 7, 40, '2022-08-09 11:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (409, 8, 40, '2022-08-09 11:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (410, 9, 40, '2022-08-09 11:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (411, 10, 40, '2022-08-09 11:08:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (412, 1, 41, '2022-08-09 12:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (413, 2, 41, '2022-08-09 12:08:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (414, 3, 41, '2022-08-09 12:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (415, 4, 41, '2022-08-09 12:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (416, 5, 41, '2022-08-09 12:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (417, 6, 41, '2022-08-09 12:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (418, 7, 41, '2022-08-09 12:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (419, 8, 41, '2022-08-09 12:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (420, 9, 41, '2022-08-09 12:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (421, 10, 41, '2022-08-09 12:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (422, 1, 42, '2022-08-09 12:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (423, 2, 42, '2022-08-09 12:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (424, 3, 42, '2022-08-09 12:08:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (425, 4, 42, '2022-08-09 12:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (426, 5, 42, '2022-08-09 12:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (427, 6, 42, '2022-08-09 12:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (428, 7, 42, '2022-08-09 12:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (429, 8, 42, '2022-08-09 12:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (430, 9, 42, '2022-08-09 12:08:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (431, 10, 42, '2022-08-09 12:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (432, 1, 43, '2022-08-09 12:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (433, 2, 43, '2022-08-09 12:08:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (434, 3, 43, '2022-08-09 12:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (435, 4, 43, '2022-08-09 12:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (436, 5, 43, '2022-08-09 12:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (437, 6, 43, '2022-08-09 12:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (438, 7, 43, '2022-08-09 12:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (439, 8, 43, '2022-08-09 12:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (440, 9, 43, '2022-08-09 12:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (441, 10, 43, '2022-08-09 12:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (442, 1, 44, '2022-08-09 12:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (443, 2, 44, '2022-08-09 12:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (444, 3, 44, '2022-08-09 12:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (445, 4, 44, '2022-08-09 12:08:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (446, 5, 44, '2022-08-09 12:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (447, 6, 44, '2022-08-09 12:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (448, 7, 44, '2022-08-09 12:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (449, 8, 44, '2022-08-09 12:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (450, 9, 44, '2022-08-09 12:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (451, 10, 44, '2022-08-09 12:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (452, 1, 45, '2022-08-09 12:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (453, 2, 45, '2022-08-09 12:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (454, 3, 45, '2022-08-09 12:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (455, 4, 45, '2022-08-09 12:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (456, 5, 45, '2022-08-09 12:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (457, 6, 45, '2022-08-09 12:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (458, 7, 45, '2022-08-09 12:08:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (459, 8, 45, '2022-08-09 12:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (460, 9, 45, '2022-08-09 12:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (461, 10, 45, '2022-08-09 12:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (462, 1, 46, '2022-08-09 12:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (463, 2, 46, '2022-08-09 12:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (464, 3, 46, '2022-08-09 12:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (465, 4, 46, '2022-08-09 12:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (466, 5, 46, '2022-08-09 12:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (467, 6, 46, '2022-08-09 12:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (468, 7, 46, '2022-08-09 12:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (469, 8, 46, '2022-08-09 12:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (470, 9, 46, '2022-08-09 12:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (471, 10, 46, '2022-08-09 12:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (472, 1, 47, '2022-08-09 12:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (473, 2, 47, '2022-08-09 12:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (474, 3, 47, '2022-08-09 12:08:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (475, 4, 47, '2022-08-09 12:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (476, 5, 47, '2022-08-09 12:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (477, 6, 47, '2022-08-09 12:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (478, 7, 47, '2022-08-09 12:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (479, 8, 47, '2022-08-09 12:08:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (480, 9, 47, '2022-08-09 12:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (481, 10, 47, '2022-08-09 12:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (482, 1, 48, '2022-08-09 12:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (483, 2, 48, '2022-08-09 12:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (484, 3, 48, '2022-08-09 12:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (485, 4, 48, '2022-08-09 12:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (486, 5, 48, '2022-08-09 12:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (487, 6, 48, '2022-08-09 12:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (488, 7, 48, '2022-08-09 12:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (489, 8, 48, '2022-08-09 12:08:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (490, 9, 48, '2022-08-09 12:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (491, 10, 48, '2022-08-09 12:08:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (492, 1, 49, '2022-08-09 12:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (493, 2, 49, '2022-08-09 12:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (494, 3, 49, '2022-08-09 12:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (495, 4, 49, '2022-08-09 12:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (496, 5, 49, '2022-08-09 12:08:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (497, 6, 49, '2022-08-09 12:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (498, 7, 49, '2022-08-09 12:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (499, 8, 49, '2022-08-09 12:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (500, 9, 49, '2022-08-09 12:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (501, 10, 49, '2022-08-09 12:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (502, 1, 50, '2022-08-09 12:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (503, 2, 50, '2022-08-09 12:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (504, 3, 50, '2022-08-09 12:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (505, 4, 50, '2022-08-09 12:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (506, 5, 50, '2022-08-09 12:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (507, 6, 50, '2022-08-09 12:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (508, 7, 50, '2022-08-09 12:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (509, 8, 50, '2022-08-09 12:08:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (510, 9, 50, '2022-08-09 12:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (511, 10, 50, '2022-08-09 12:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (512, 1, 51, '2022-08-09 12:08:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (513, 2, 51, '2022-08-09 12:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (514, 3, 51, '2022-08-09 12:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (515, 4, 51, '2022-08-09 12:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (516, 5, 51, '2022-08-09 12:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (517, 6, 51, '2022-08-09 12:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (518, 7, 51, '2022-08-09 12:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (519, 8, 51, '2022-08-09 12:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (520, 9, 51, '2022-08-09 12:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (521, 10, 51, '2022-08-09 12:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (522, 1, 52, '2022-08-09 12:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (523, 2, 52, '2022-08-09 12:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (524, 3, 52, '2022-08-09 12:08:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (525, 4, 52, '2022-08-09 12:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (526, 5, 52, '2022-08-09 12:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (527, 6, 52, '2022-08-09 12:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (528, 7, 52, '2022-08-09 12:08:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (529, 8, 52, '2022-08-09 12:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (530, 9, 52, '2022-08-09 12:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (531, 10, 52, '2022-08-09 12:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (532, 1, 53, '2022-08-09 12:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (533, 2, 53, '2022-08-09 12:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (534, 3, 53, '2022-08-09 12:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (535, 4, 53, '2022-08-09 12:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (536, 5, 53, '2022-08-09 12:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (537, 6, 53, '2022-08-09 12:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (538, 7, 53, '2022-08-09 12:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (539, 8, 53, '2022-08-09 12:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (540, 9, 53, '2022-08-09 12:08:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (541, 10, 53, '2022-08-09 12:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (542, 1, 54, '2022-08-09 12:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (543, 2, 54, '2022-08-09 12:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (544, 3, 54, '2022-08-09 12:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (545, 4, 54, '2022-08-09 12:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (546, 5, 54, '2022-08-09 12:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (547, 6, 54, '2022-08-09 12:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (548, 7, 54, '2022-08-09 12:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (549, 8, 54, '2022-08-09 12:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (550, 9, 54, '2022-08-09 12:08:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (551, 10, 54, '2022-08-09 12:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (552, 1, 55, '2022-08-09 13:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (553, 2, 55, '2022-08-09 13:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (554, 3, 55, '2022-08-09 13:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (555, 4, 55, '2022-08-09 13:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (556, 5, 55, '2022-08-09 13:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (557, 6, 55, '2022-08-09 13:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (558, 7, 55, '2022-08-09 13:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (559, 8, 55, '2022-08-09 13:08:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (560, 9, 55, '2022-08-09 13:08:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (561, 10, 55, '2022-08-09 13:08:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (562, 1, 56, '2022-08-09 14:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (563, 2, 56, '2022-08-09 14:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (564, 3, 56, '2022-08-09 14:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (565, 4, 56, '2022-08-09 14:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (566, 5, 56, '2022-08-09 14:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (567, 6, 56, '2022-08-09 14:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (568, 7, 56, '2022-08-09 14:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (569, 8, 56, '2022-08-09 14:08:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (570, 9, 56, '2022-08-09 14:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (571, 10, 56, '2022-08-09 14:08:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (572, 1, 57, '2022-08-09 14:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (573, 2, 57, '2022-08-09 14:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (574, 3, 57, '2022-08-09 14:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (575, 4, 57, '2022-08-09 14:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (576, 5, 57, '2022-08-09 14:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (577, 6, 57, '2022-08-09 14:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (578, 7, 57, '2022-08-09 14:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (579, 8, 57, '2022-08-09 14:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (580, 9, 57, '2022-08-09 14:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (581, 10, 57, '2022-08-09 14:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (582, 1, 58, '2022-08-09 14:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (583, 2, 58, '2022-08-09 14:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (584, 3, 58, '2022-08-09 14:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (585, 4, 58, '2022-08-09 14:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (586, 5, 58, '2022-08-09 14:08:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (587, 6, 58, '2022-08-09 14:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (588, 7, 58, '2022-08-09 14:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (589, 8, 58, '2022-08-09 14:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (590, 9, 58, '2022-08-09 14:08:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (591, 10, 58, '2022-08-09 14:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (592, 1, 59, '2022-08-09 14:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (593, 2, 59, '2022-08-09 14:08:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (594, 3, 59, '2022-08-09 14:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (595, 4, 59, '2022-08-09 14:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (596, 5, 59, '2022-08-09 14:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (597, 6, 59, '2022-08-09 14:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (598, 7, 59, '2022-08-09 14:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (599, 8, 59, '2022-08-09 14:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (600, 9, 59, '2022-08-09 14:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (601, 10, 59, '2022-08-09 14:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (602, 1, 60, '2022-08-09 14:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (603, 2, 60, '2022-08-09 14:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (604, 3, 60, '2022-08-09 14:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (605, 4, 60, '2022-08-09 14:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (606, 5, 60, '2022-08-09 14:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (607, 6, 60, '2022-08-09 14:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (608, 7, 60, '2022-08-09 14:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (609, 8, 60, '2022-08-09 14:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (610, 9, 60, '2022-08-09 14:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (611, 10, 60, '2022-08-09 14:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (612, 1, 61, '2022-08-09 14:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (613, 2, 61, '2022-08-09 14:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (614, 3, 61, '2022-08-09 14:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (615, 4, 61, '2022-08-09 14:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (616, 5, 61, '2022-08-09 14:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (617, 6, 61, '2022-08-09 14:08:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (618, 7, 61, '2022-08-09 14:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (619, 8, 61, '2022-08-09 14:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (620, 9, 61, '2022-08-09 14:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (621, 10, 61, '2022-08-09 14:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (622, 1, 62, '2022-08-09 14:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (623, 2, 62, '2022-08-09 14:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (624, 3, 62, '2022-08-09 14:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (625, 4, 62, '2022-08-09 14:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (626, 5, 62, '2022-08-09 14:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (627, 6, 62, '2022-08-09 14:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (628, 7, 62, '2022-08-09 14:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (629, 8, 62, '2022-08-09 14:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (630, 9, 62, '2022-08-09 14:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (631, 10, 62, '2022-08-09 14:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (632, 1, 63, '2022-08-09 14:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (633, 2, 63, '2022-08-09 14:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (634, 4, 63, '2022-08-09 14:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (635, 3, 63, '2022-08-09 14:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (636, 5, 63, '2022-08-09 14:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (637, 6, 63, '2022-08-09 14:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (638, 7, 63, '2022-08-09 14:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (639, 8, 63, '2022-08-09 14:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (640, 9, 63, '2022-08-09 14:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (641, 10, 63, '2022-08-09 14:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (642, 1, 64, '2022-08-09 15:08:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (643, 2, 64, '2022-08-09 15:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (644, 3, 64, '2022-08-09 15:08:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (645, 4, 64, '2022-08-09 15:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (646, 5, 64, '2022-08-09 15:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (647, 6, 64, '2022-08-09 15:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (648, 7, 64, '2022-08-09 15:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (649, 8, 64, '2022-08-09 15:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (650, 9, 64, '2022-08-09 15:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (651, 10, 64, '2022-08-09 15:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (652, 1, 65, '2022-08-09 15:08:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (653, 2, 65, '2022-08-09 15:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (654, 3, 65, '2022-08-09 15:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (655, 4, 65, '2022-08-09 15:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (656, 5, 65, '2022-08-09 15:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (657, 6, 65, '2022-08-09 15:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (658, 7, 65, '2022-08-09 15:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (659, 8, 65, '2022-08-09 15:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (660, 9, 65, '2022-08-09 15:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (661, 10, 65, '2022-08-09 15:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (662, 1, 66, '2022-08-09 15:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (663, 2, 66, '2022-08-09 15:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (664, 3, 66, '2022-08-09 15:08:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (665, 4, 66, '2022-08-09 15:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (666, 5, 66, '2022-08-09 15:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (667, 6, 66, '2022-08-09 15:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (668, 7, 66, '2022-08-09 15:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (669, 8, 66, '2022-08-09 15:08:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (670, 9, 66, '2022-08-09 15:08:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (671, 10, 66, '2022-08-09 15:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (672, 1, 67, '2022-08-09 15:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (673, 2, 67, '2022-08-09 15:08:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (674, 3, 67, '2022-08-09 15:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (675, 4, 67, '2022-08-09 15:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (676, 5, 67, '2022-08-09 15:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (677, 6, 67, '2022-08-09 15:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (678, 7, 67, '2022-08-09 15:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (679, 8, 67, '2022-08-09 15:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (680, 9, 67, '2022-08-09 15:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (681, 10, 67, '2022-08-09 15:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (682, 1, 68, '2022-08-09 15:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (683, 2, 68, '2022-08-09 15:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (684, 3, 68, '2022-08-09 15:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (685, 4, 68, '2022-08-09 15:08:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (686, 5, 68, '2022-08-09 15:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (687, 6, 68, '2022-08-09 15:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (688, 7, 68, '2022-08-09 15:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (689, 8, 68, '2022-08-09 15:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (690, 9, 68, '2022-08-09 15:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (691, 10, 68, '2022-08-09 15:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (692, 1, 69, '2022-08-09 15:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (693, 2, 69, '2022-08-09 15:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (694, 3, 69, '2022-08-09 15:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (695, 4, 69, '2022-08-09 15:08:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (696, 5, 69, '2022-08-09 15:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (697, 6, 69, '2022-08-09 15:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (698, 7, 69, '2022-08-09 15:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (699, 8, 69, '2022-08-09 15:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (700, 9, 69, '2022-08-09 15:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (701, 10, 69, '2022-08-09 15:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (702, 1, 70, '2022-08-09 15:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (703, 2, 70, '2022-08-09 15:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (704, 3, 70, '2022-08-09 15:08:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (705, 4, 70, '2022-08-09 15:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (706, 5, 70, '2022-08-09 15:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (707, 6, 70, '2022-08-09 15:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (708, 7, 70, '2022-08-09 15:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (709, 8, 70, '2022-08-09 15:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (710, 9, 70, '2022-08-09 15:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (711, 10, 70, '2022-08-09 15:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (712, 1, 71, '2022-08-09 15:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (713, 2, 71, '2022-08-09 15:08:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (714, 3, 71, '2022-08-09 15:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (715, 4, 71, '2022-08-09 15:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (716, 5, 71, '2022-08-09 15:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (717, 6, 71, '2022-08-09 15:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (718, 17, 71, '2022-08-09 15:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (719, 8, 71, '2022-08-09 15:08:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (720, 9, 71, '2022-08-09 15:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (721, 10, 71, '2022-08-09 15:08:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (722, 1, 72, '2022-08-09 15:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (723, 2, 72, '2022-08-09 15:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (724, 3, 72, '2022-08-09 15:08:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (725, 4, 72, '2022-08-09 15:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (726, 5, 72, '2022-08-09 15:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (727, 6, 72, '2022-08-09 15:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (728, 7, 72, '2022-08-09 15:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (729, 8, 72, '2022-08-09 15:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (730, 9, 72, '2022-08-09 15:08:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (731, 10, 72, '2022-08-09 15:08:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (732, 1, 73, '2022-08-09 15:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (733, 2, 73, '2022-08-09 15:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (734, 3, 73, '2022-08-09 15:08:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (735, 4, 73, '2022-08-09 15:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (736, 5, 73, '2022-08-09 15:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (737, 6, 73, '2022-08-09 15:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (738, 7, 73, '2022-08-09 15:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (739, 8, 73, '2022-08-09 15:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (740, 9, 73, '2022-08-09 15:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (741, 10, 73, '2022-08-09 15:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (742, 1, 74, '2022-08-09 15:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (743, 2, 74, '2022-08-09 15:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (744, 3, 74, '2022-08-09 15:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (745, 4, 74, '2022-08-09 15:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (746, 5, 74, '2022-08-09 15:08:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (747, 6, 74, '2022-08-09 15:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (748, 7, 74, '2022-08-09 15:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (749, 8, 74, '2022-08-09 15:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (750, 9, 74, '2022-08-09 15:08:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (751, 10, 74, '2022-08-09 15:08:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (752, 1, 75, '2022-08-09 15:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (753, 2, 75, '2022-08-09 15:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (754, 3, 75, '2022-08-09 15:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (755, 4, 75, '2022-08-09 15:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (756, 5, 75, '2022-08-09 15:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (757, 6, 75, '2022-08-09 15:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (758, 7, 75, '2022-08-09 15:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (759, 8, 75, '2022-08-09 15:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (760, 9, 75, '2022-08-09 15:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (761, 10, 75, '2022-08-09 15:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (762, 1, 76, '2022-08-09 16:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (763, 2, 76, '2022-08-09 16:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (764, 4, 76, '2022-08-09 16:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (765, 3, 76, '2022-08-09 16:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (766, 5, 76, '2022-08-09 16:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (767, 6, 76, '2022-08-09 16:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (768, 7, 76, '2022-08-09 16:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (769, 8, 76, '2022-08-09 16:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (770, 9, 76, '2022-08-09 16:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (771, 10, 76, '2022-08-09 16:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (772, 1, 77, '2022-08-09 16:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (773, 2, 77, '2022-08-09 16:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (774, 3, 77, '2022-08-09 16:08:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (775, 4, 77, '2022-08-09 16:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (776, 5, 77, '2022-08-09 16:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (777, 6, 77, '2022-08-09 16:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (778, 7, 77, '2022-08-09 16:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (779, 8, 77, '2022-08-09 16:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (780, 9, 77, '2022-08-09 16:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (781, 10, 77, '2022-08-09 16:08:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (783, 1, 79, '2022-08-09 16:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (784, 1, 78, '2022-08-09 16:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (785, 2, 79, '2022-08-09 16:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (786, 2, 78, '2022-08-09 16:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (787, 3, 79, '2022-08-09 16:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (788, 3, 78, '2022-08-09 16:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (789, 4, 78, '2022-08-09 16:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (790, 5, 78, '2022-08-09 16:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (791, 4, 79, '2022-08-09 16:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (792, 6, 78, '2022-08-09 16:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (793, 5, 79, '2022-08-09 16:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (794, 7, 78, '2022-08-09 16:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (795, 6, 79, '2022-08-09 16:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (796, 8, 78, '2022-08-09 16:08:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (797, 7, 79, '2022-08-09 16:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (798, 9, 78, '2022-08-09 16:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (799, 8, 79, '2022-08-09 16:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (800, 10, 78, '2022-08-09 16:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (801, 9, 79, '2022-08-09 16:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (802, 10, 79, '2022-08-09 16:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (803, 1, 80, '2022-08-09 16:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (804, 2, 80, '2022-08-09 16:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (805, 3, 80, '2022-08-09 16:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (806, 4, 80, '2022-08-09 16:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (807, 5, 80, '2022-08-09 16:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (808, 6, 80, '2022-08-09 16:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (809, 7, 80, '2022-08-09 16:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (810, 8, 80, '2022-08-09 16:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (811, 9, 80, '2022-08-09 16:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (812, 10, 80, '2022-08-09 16:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (813, 1, 81, '2022-08-09 16:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (814, 2, 81, '2022-08-09 16:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (815, 3, 81, '2022-08-09 16:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (816, 4, 81, '2022-08-09 16:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (817, 5, 81, '2022-08-09 16:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (818, 6, 81, '2022-08-09 16:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (819, 7, 81, '2022-08-09 16:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (820, 8, 81, '2022-08-09 16:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (821, 9, 81, '2022-08-09 16:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (822, 10, 81, '2022-08-09 16:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (823, 1, 82, '2022-08-09 16:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (824, 2, 82, '2022-08-09 16:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (825, 3, 82, '2022-08-09 16:08:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (826, 4, 82, '2022-08-09 16:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (827, 5, 82, '2022-08-09 16:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (828, 6, 82, '2022-08-09 16:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (829, 7, 82, '2022-08-09 16:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (830, 8, 82, '2022-08-09 16:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (831, 9, 82, '2022-08-09 16:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (832, 10, 82, '2022-08-09 16:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (833, 1, 83, '2022-08-09 16:08:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (834, 2, 83, '2022-08-09 16:08:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (835, 3, 83, '2022-08-09 16:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (836, 4, 83, '2022-08-09 16:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (837, 5, 83, '2022-08-09 16:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (838, 6, 83, '2022-08-09 16:08:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (839, 7, 83, '2022-08-09 16:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (840, 8, 83, '2022-08-09 16:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (841, 9, 83, '2022-08-09 16:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (842, 10, 83, '2022-08-09 16:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (843, 1, 84, '2022-08-09 16:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (844, 2, 84, '2022-08-09 16:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (845, 3, 84, '2022-08-09 16:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (846, 4, 84, '2022-08-09 16:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (847, 5, 84, '2022-08-09 16:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (848, 6, 84, '2022-08-09 16:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (849, 7, 84, '2022-08-09 16:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (850, 8, 84, '2022-08-09 16:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (851, 9, 84, '2022-08-09 16:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (852, 10, 84, '2022-08-09 16:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (853, 1, 85, '2022-08-09 16:08:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (854, 2, 85, '2022-08-09 16:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (855, 3, 85, '2022-08-09 16:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (856, 4, 85, '2022-08-09 16:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (857, 5, 85, '2022-08-09 16:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (858, 6, 85, '2022-08-09 16:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (859, 7, 85, '2022-08-09 16:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (860, 8, 85, '2022-08-09 16:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (861, 9, 85, '2022-08-09 16:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (862, 10, 85, '2022-08-09 16:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (863, 1, 86, '2022-08-09 16:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (864, 2, 86, '2022-08-09 16:08:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (865, 3, 86, '2022-08-09 16:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (866, 4, 86, '2022-08-09 16:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (867, 5, 86, '2022-08-09 16:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (868, 6, 86, '2022-08-09 16:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (869, 7, 86, '2022-08-09 16:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (870, 8, 86, '2022-08-09 16:08:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (871, 9, 86, '2022-08-09 16:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (872, 10, 86, '2022-08-09 16:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (873, 1, 87, '2022-08-09 17:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (874, 2, 87, '2022-08-09 17:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (875, 3, 87, '2022-08-09 17:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (876, 4, 87, '2022-08-09 17:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (877, 5, 87, '2022-08-09 17:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (878, 6, 87, '2022-08-09 17:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (879, 7, 87, '2022-08-09 17:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (880, 8, 87, '2022-08-09 17:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (881, 9, 87, '2022-08-09 17:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (882, 10, 87, '2022-08-09 17:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (883, 1, 88, '2022-08-10 10:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (884, 2, 88, '2022-08-10 10:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (885, 3, 88, '2022-08-10 10:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (886, 4, 88, '2022-08-10 10:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (887, 5, 88, '2022-08-10 10:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (888, 6, 88, '2022-08-10 10:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (889, 7, 88, '2022-08-10 10:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (890, 8, 88, '2022-08-10 10:08:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (891, 9, 88, '2022-08-10 10:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (892, 10, 88, '2022-08-10 10:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (893, 1, 89, '2022-08-10 10:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (894, 2, 89, '2022-08-10 10:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (895, 3, 89, '2022-08-10 10:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (896, 4, 89, '2022-08-10 10:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (897, 5, 89, '2022-08-10 10:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (898, 6, 89, '2022-08-10 10:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (899, 7, 89, '2022-08-10 10:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (900, 8, 89, '2022-08-10 10:08:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (901, 9, 89, '2022-08-10 10:08:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (902, 10, 89, '2022-08-10 10:08:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (903, 1, 90, '2022-08-10 10:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (904, 2, 90, '2022-08-10 10:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (905, 3, 90, '2022-08-10 10:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (906, 4, 90, '2022-08-10 10:08:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (907, 5, 90, '2022-08-10 10:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (908, 6, 90, '2022-08-10 10:08:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (909, 7, 90, '2022-08-10 10:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (910, 8, 90, '2022-08-10 10:08:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (911, 9, 90, '2022-08-10 10:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (912, 10, 90, '2022-08-10 10:08:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (913, 1, 91, '2022-08-10 10:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (914, 2, 91, '2022-08-10 10:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (915, 3, 91, '2022-08-10 10:08:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (916, 4, 91, '2022-08-10 10:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (917, 5, 91, '2022-08-10 10:08:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (918, 6, 91, '2022-08-10 10:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (919, 7, 91, '2022-08-10 10:08:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (920, 8, 91, '2022-08-10 10:08:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (921, 9, 91, '2022-08-10 10:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (922, 10, 91, '2022-08-10 10:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (923, 1, 92, '2022-08-10 11:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (924, 2, 92, '2022-08-10 11:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (925, 3, 92, '2022-08-10 11:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (926, 4, 92, '2022-08-10 11:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (927, 5, 92, '2022-08-10 11:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (928, 6, 92, '2022-08-10 11:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (929, 7, 92, '2022-08-10 11:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (930, 8, 92, '2022-08-10 11:08:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (931, 9, 92, '2022-08-10 11:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (932, 10, 92, '2022-08-10 11:08:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (933, 1, 93, '2022-08-10 11:08:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (934, 2, 93, '2022-08-10 11:08:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (935, 3, 93, '2022-08-10 11:08:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (936, 4, 93, '2022-08-10 11:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (937, 5, 93, '2022-08-10 11:08:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (938, 6, 93, '2022-08-10 11:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (939, 7, 93, '2022-08-10 11:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (940, 8, 93, '2022-08-10 11:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (941, 9, 93, '2022-08-10 11:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (942, 10, 93, '2022-08-10 11:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (943, 1, 94, '2022-08-10 11:08:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (944, 2, 94, '2022-08-10 11:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (945, 3, 94, '2022-08-10 11:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (946, 4, 94, '2022-08-10 11:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (947, 5, 94, '2022-08-10 11:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (948, 6, 94, '2022-08-10 11:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (949, 7, 94, '2022-08-10 11:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (950, 8, 94, '2022-08-10 11:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (951, 9, 94, '2022-08-10 11:08:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (952, 10, 94, '2022-08-10 11:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (953, 1, 95, '2022-08-10 12:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (954, 2, 95, '2022-08-10 12:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (955, 3, 95, '2022-08-10 12:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (956, 4, 95, '2022-08-10 12:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (957, 5, 95, '2022-08-10 12:08:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (958, 6, 95, '2022-08-10 12:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (959, 7, 95, '2022-08-10 12:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (960, 8, 95, '2022-08-10 12:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (961, 9, 95, '2022-08-10 12:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (962, 10, 95, '2022-08-10 12:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (963, 16, 96, '2022-08-11 10:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (965, 18, 96, '2022-08-11 10:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (966, 1, 96, '2022-08-11 10:08:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (967, 2, 96, '2022-08-11 10:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (968, 3, 96, '2022-08-11 10:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (969, 1, 97, '2022-08-11 10:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (970, 2, 97, '2022-08-11 10:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (971, 3, 97, '2022-08-11 10:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (972, 4, 97, '2022-08-11 10:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (973, 5, 97, '2022-08-11 10:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (974, 6, 97, '2022-08-11 10:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (975, 7, 97, '2022-08-11 10:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (976, 8, 97, '2022-08-11 10:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (977, 9, 97, '2022-08-11 10:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (978, 10, 97, '2022-08-11 10:08:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (979, 9, 96, '2022-08-11 10:08:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (980, 4, 96, '2022-08-11 10:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (981, 5, 96, '2022-08-11 10:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (982, 7, 96, '2022-08-11 10:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (983, 10, 96, '2022-08-11 10:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (984, 1, 98, '2022-08-11 10:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (985, 2, 98, '2022-08-11 10:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (986, 3, 98, '2022-08-11 10:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (987, 4, 98, '2022-08-11 10:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (988, 5, 98, '2022-08-11 10:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (989, 6, 98, '2022-08-11 10:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (990, 7, 98, '2022-08-11 10:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (991, 8, 98, '2022-08-11 10:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (992, 9, 98, '2022-08-11 10:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (993, 10, 98, '2022-08-11 10:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (994, 1, 99, '2022-08-11 11:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (995, 2, 99, '2022-08-11 11:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (996, 3, 99, '2022-08-11 11:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (997, 4, 99, '2022-08-11 11:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (998, 5, 99, '2022-08-11 11:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (999, 6, 99, '2022-08-11 11:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1000, 7, 99, '2022-08-11 11:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1001, 8, 99, '2022-08-11 11:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1002, 9, 99, '2022-08-11 11:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1003, 10, 99, '2022-08-11 11:08:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1004, 1, 100, '2022-08-11 11:08:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1005, 2, 100, '2022-08-11 11:08:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1006, 3, 100, '2022-08-11 11:08:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1007, 4, 100, '2022-08-11 11:08:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1008, 5, 100, '2022-08-11 11:08:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (1009, 6, 100, '2022-08-11 11:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1010, 7, 100, '2022-08-11 11:08:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1011, 8, 100, '2022-08-11 11:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1012, 9, 100, '2022-08-11 11:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1013, 10, 100, '2022-08-11 11:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1014, 1, 101, '2022-08-11 11:08:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (1015, 2, 101, '2022-08-11 11:08:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (1016, 3, 101, '2022-08-11 11:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1017, 4, 101, '2022-08-11 11:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1018, 5, 101, '2022-08-11 11:08:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1019, 6, 101, '2022-08-11 11:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1020, 7, 101, '2022-08-11 11:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1021, 8, 101, '2022-08-11 11:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1022, 9, 101, '2022-08-11 11:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1023, 10, 101, '2022-08-11 11:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1024, 1, 102, '2022-08-11 11:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1025, 2, 102, '2022-08-11 11:08:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1026, 3, 102, '2022-08-11 11:08:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1027, 4, 102, '2022-08-11 11:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1028, 5, 102, '2022-08-11 11:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1029, 6, 102, '2022-08-11 11:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1030, 7, 102, '2022-08-11 11:08:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1031, 8, 102, '2022-08-11 11:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1032, 9, 102, '2022-08-11 11:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1033, 10, 102, '2022-08-11 11:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1034, 1, 103, '2022-08-11 11:08:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1035, 2, 103, '2022-08-11 11:08:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1036, 3, 103, '2022-08-11 11:08:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1037, 4, 103, '2022-08-11 11:08:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1038, 5, 103, '2022-08-11 11:08:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1039, 6, 103, '2022-08-11 11:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1040, 7, 103, '2022-08-11 11:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1041, 8, 103, '2022-08-11 11:08:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1042, 9, 103, '2022-08-11 11:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1043, 10, 103, '2022-08-11 11:08:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1044, 1, 104, '2022-08-11 11:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1045, 2, 104, '2022-08-11 11:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1046, 3, 104, '2022-08-11 11:08:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1047, 4, 104, '2022-08-11 11:08:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1048, 5, 104, '2022-08-11 11:08:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1049, 6, 104, '2022-08-11 11:08:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1050, 7, 104, '2022-08-11 11:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1051, 8, 104, '2022-08-11 11:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1052, 9, 104, '2022-08-11 11:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1053, 10, 104, '2022-08-11 11:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1054, 1, 105, '2022-08-11 11:21:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1055, 2, 105, '2022-08-11 11:21:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1056, 3, 105, '2022-08-11 11:21:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1057, 4, 105, '2022-08-11 11:21:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1058, 5, 105, '2022-08-11 11:21:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1059, 6, 105, '2022-08-11 11:21:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1060, 7, 105, '2022-08-11 11:21:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1061, 8, 105, '2022-08-11 11:22:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1062, 9, 105, '2022-08-11 11:22:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1063, 10, 105, '2022-08-11 11:22:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1064, 1, 106, '2022-08-11 11:23:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (1065, 2, 106, '2022-08-11 11:23:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (1066, 3, 106, '2022-08-11 11:23:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (1067, 4, 106, '2022-08-11 11:23:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (1068, 5, 106, '2022-08-11 11:23:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1069, 6, 106, '2022-08-11 11:23:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (1071, 8, 106, '2022-08-11 11:23:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (1072, 9, 106, '2022-08-11 11:23:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (1073, 10, 106, '2022-08-11 11:23:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1074, 17, 106, '2022-08-11 11:23:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1075, 1, 107, '2022-08-11 11:53:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1076, 2, 107, '2022-08-11 11:53:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1077, 13, 107, '2022-08-11 11:53:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1078, 4, 107, '2022-08-11 11:53:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1079, 5, 107, '2022-08-11 11:53:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1080, 6, 107, '2022-08-11 11:53:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1081, 17, 107, '2022-08-11 11:54:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1082, 8, 107, '2022-08-11 11:54:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1083, 9, 107, '2022-08-11 11:54:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1084, 10, 107, '2022-08-11 11:54:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1085, 1, 108, '2022-08-11 12:01:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1086, 2, 108, '2022-08-11 12:01:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1087, 3, 108, '2022-08-11 12:01:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1088, 4, 108, '2022-08-11 12:01:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (1089, 5, 108, '2022-08-11 12:01:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1090, 6, 108, '2022-08-11 12:01:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (1091, 7, 108, '2022-08-11 12:01:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (1092, 8, 108, '2022-08-11 12:01:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1093, 9, 108, '2022-08-11 12:01:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (1094, 10, 108, '2022-08-11 12:01:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1095, 1, 109, '2022-08-11 16:03:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1097, 3, 109, '2022-08-11 16:03:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1098, 4, 109, '2022-08-11 16:03:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1099, 5, 109, '2022-08-11 16:03:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1100, 16, 109, '2022-08-11 16:03:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1101, 7, 109, '2022-08-11 16:03:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1102, 8, 109, '2022-08-11 16:03:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1103, 19, 109, '2022-08-11 16:03:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (1104, 10, 109, '2022-08-11 16:03:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1105, 12, 109, '2022-08-11 16:20:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1106, 21, 110, '2022-08-11 16:40:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1107, 33, 110, '2022-08-11 16:40:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1108, 23, 110, '2022-08-11 16:40:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1109, 35, 110, '2022-08-11 16:40:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1110, 25, 110, '2022-08-11 16:40:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1111, 37, 110, '2022-08-11 16:40:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1112, 27, 110, '2022-08-11 16:40:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1113, 28, 110, '2022-08-11 16:40:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1114, 29, 110, '2022-08-11 16:40:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1115, 41, 110, '2022-08-11 16:40:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1116, 31, 110, '2022-08-11 16:40:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1117, 1, 111, '2022-08-12 07:59:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1118, 2, 111, '2022-08-12 07:59:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1119, 13, 111, '2022-08-12 07:59:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1120, 4, 111, '2022-08-12 08:00:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1121, 5, 111, '2022-08-12 08:00:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1122, 6, 111, '2022-08-12 08:00:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1123, 17, 111, '2022-08-12 08:00:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1124, 8, 111, '2022-08-12 08:00:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1125, 19, 111, '2022-08-12 08:00:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1126, 10, 111, '2022-08-12 08:00:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1127, 1, 112, '2022-08-12 12:10:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1128, 2, 112, '2022-08-12 12:10:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1129, 3, 112, '2022-08-12 12:10:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1130, 4, 112, '2022-08-12 12:10:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1131, 5, 112, '2022-08-12 12:10:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1132, 6, 112, '2022-08-12 12:10:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1133, 7, 112, '2022-08-12 12:10:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1134, 8, 112, '2022-08-12 12:10:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1135, 9, 112, '2022-08-12 12:10:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1136, 10, 112, '2022-08-12 12:10:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1137, 1, 113, '2022-08-12 12:58:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1138, 2, 113, '2022-08-12 12:58:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1139, 3, 113, '2022-08-12 12:58:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1140, 4, 113, '2022-08-12 12:58:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1141, 5, 113, '2022-08-12 12:58:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1142, 6, 113, '2022-08-12 12:58:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1143, 7, 113, '2022-08-12 12:58:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1144, 8, 113, '2022-08-12 12:58:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1145, 9, 113, '2022-08-12 12:59:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1146, 10, 113, '2022-08-12 12:59:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1147, 1, 115, '2022-08-12 13:00:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1148, 2, 115, '2022-08-12 13:00:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1149, 3, 115, '2022-08-12 13:00:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1150, 4, 115, '2022-08-12 14:01:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (1151, 5, 115, '2022-08-12 14:01:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (1152, 6, 115, '2022-08-12 14:01:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1153, 7, 115, '2022-08-12 14:01:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (1154, 8, 115, '2022-08-12 14:01:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (1155, 9, 115, '2022-08-12 14:01:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (1156, 10, 115, '2022-08-12 14:01:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (1157, 1, 116, '2022-08-15 10:57:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1158, 2, 116, '2022-08-15 10:57:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1159, 3, 116, '2022-08-15 10:57:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (1160, 9, 116, '2022-08-15 10:58:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1161, 10, 116, '2022-08-15 10:58:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1162, 8, 116, '2022-08-15 10:58:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1163, 4, 116, '2022-08-15 11:14:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1164, 5, 116, '2022-08-15 11:14:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1165, 6, 116, '2022-08-15 11:14:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1166, 7, 116, '2022-08-15 11:14:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1167, 1, 117, '2022-08-15 12:28:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1168, 2, 117, '2022-08-15 12:28:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1169, 3, 117, '2022-08-15 12:29:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1170, 4, 117, '2022-08-15 12:29:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1171, 5, 117, '2022-08-15 12:29:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (1172, 6, 117, '2022-08-15 12:29:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1173, 7, 117, '2022-08-15 12:29:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1174, 8, 117, '2022-08-15 12:29:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1175, 9, 117, '2022-08-15 12:30:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1176, 10, 117, '2022-08-15 12:30:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1177, 1, 118, '2022-08-15 12:40:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1178, 2, 118, '2022-08-15 12:40:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1179, 3, 118, '2022-08-15 12:40:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1180, 4, 118, '2022-08-15 12:40:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1181, 5, 118, '2022-08-15 12:40:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1182, 6, 118, '2022-08-15 12:40:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1183, 7, 118, '2022-08-15 12:40:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1184, 8, 118, '2022-08-15 12:40:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1185, 9, 118, '2022-08-15 12:40:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1186, 10, 118, '2022-08-15 12:40:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1187, 61, 119, '2022-08-17 12:43:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1188, 62, 119, '2022-08-17 12:43:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1189, 63, 119, '2022-08-17 12:43:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1190, 64, 119, '2022-08-17 12:43:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1191, 65, 119, '2022-08-17 12:43:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1192, 66, 119, '2022-08-17 12:43:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1193, 67, 119, '2022-08-17 12:44:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1194, 68, 119, '2022-08-17 12:44:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1195, 69, 119, '2022-08-17 12:44:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1196, 70, 119, '2022-08-17 12:44:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1197, 61, 121, '2022-08-17 12:52:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1199, 72, 121, '2022-08-17 12:53:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1201, 73, 121, '2022-08-17 12:53:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1202, 74, 121, '2022-08-17 12:53:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1203, 65, 121, '2022-08-17 12:53:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1204, 66, 121, '2022-08-17 12:53:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1205, 77, 121, '2022-08-17 12:53:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (1206, 68, 121, '2022-08-17 12:53:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1207, 69, 121, '2022-08-17 12:53:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1208, 70, 121, '2022-08-17 12:53:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1209, 61, 122, '2022-08-17 14:24:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (1210, 62, 122, '2022-08-17 14:24:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1211, 63, 122, '2022-08-17 14:24:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (1212, 64, 122, '2022-08-17 14:24:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1213, 65, 122, '2022-08-17 14:24:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (1214, 66, 122, '2022-08-17 14:24:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (1215, 67, 122, '2022-08-17 14:24:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1216, 68, 122, '2022-08-17 14:24:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1217, 69, 122, '2022-08-17 14:24:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1218, 70, 122, '2022-08-17 14:24:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1219, 61, 123, '2022-08-17 14:42:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1220, 72, 123, '2022-08-17 14:42:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1221, 63, 123, '2022-08-17 14:42:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (1222, 74, 123, '2022-08-17 14:42:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1223, 65, 123, '2022-08-17 14:43:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1224, 66, 123, '2022-08-17 14:43:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1225, 67, 123, '2022-08-17 14:43:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1226, 68, 123, '2022-08-17 14:43:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1227, 69, 123, '2022-08-17 14:43:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1228, 70, 123, '2022-08-17 14:43:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1229, 1, 124, '2022-08-17 15:12:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1230, 2, 124, '2022-08-17 15:12:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1231, 3, 124, '2022-08-17 15:12:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1232, 4, 124, '2022-08-17 15:12:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1233, 5, 124, '2022-08-17 15:12:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1234, 6, 124, '2022-08-17 15:12:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1235, 7, 124, '2022-08-17 15:12:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (1236, 8, 124, '2022-08-17 15:12:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1237, 9, 124, '2022-08-17 15:12:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1238, 10, 124, '2022-08-17 15:12:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1239, 1, 125, '2022-08-17 15:19:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (1240, 2, 125, '2022-08-17 15:19:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1241, 3, 125, '2022-08-17 15:19:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (1242, 4, 125, '2022-08-17 15:19:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1243, 5, 125, '2022-08-17 15:19:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (1244, 6, 125, '2022-08-17 15:19:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (1245, 7, 125, '2022-08-17 15:19:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (1246, 8, 125, '2022-08-17 15:19:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1247, 9, 125, '2022-08-17 15:19:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1248, 10, 125, '2022-08-17 15:19:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1249, 1, 126, '2022-08-17 15:22:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1250, 2, 126, '2022-08-17 15:22:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1251, 3, 126, '2022-08-17 15:22:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1252, 4, 126, '2022-08-17 15:22:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1253, 5, 126, '2022-08-17 15:22:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1254, 6, 126, '2022-08-17 15:22:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1255, 7, 126, '2022-08-17 15:22:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1256, 8, 126, '2022-08-17 15:22:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1257, 9, 126, '2022-08-17 15:22:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1258, 10, 126, '2022-08-17 15:22:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1259, 1, 127, '2022-08-17 16:35:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (1260, 2, 127, '2022-08-17 16:36:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1261, 3, 127, '2022-08-17 16:36:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1262, 10, 127, '2022-08-17 16:36:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (1263, 9, 127, '2022-08-17 16:36:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (1264, 8, 127, '2022-08-17 16:36:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1265, 7, 127, '2022-08-17 16:36:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1266, 4, 127, '2022-08-17 16:39:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1267, 5, 127, '2022-08-17 16:39:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1268, 6, 127, '2022-08-17 16:39:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1269, 61, 129, '2022-08-17 16:51:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1270, 62, 129, '2022-08-17 16:51:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1271, 63, 129, '2022-08-17 16:51:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1272, 64, 129, '2022-08-17 16:51:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1273, 65, 129, '2022-08-17 16:51:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (1274, 66, 129, '2022-08-17 16:51:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1275, 67, 129, '2022-08-17 16:51:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (1276, 68, 129, '2022-08-17 16:51:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1277, 69, 129, '2022-08-17 16:51:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (1278, 70, 129, '2022-08-17 16:51:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1279, 61, 130, '2022-08-17 16:52:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1280, 72, 130, '2022-08-17 16:53:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1281, 73, 130, '2022-08-17 16:53:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1282, 74, 130, '2022-08-17 16:53:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1283, 65, 130, '2022-08-17 16:53:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1285, 76, 130, '2022-08-17 16:53:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1286, 77, 130, '2022-08-17 16:53:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1287, 68, 130, '2022-08-17 16:53:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1288, 69, 130, '2022-08-17 16:53:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1289, 70, 130, '2022-08-17 16:53:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1290, 10, 128, '2022-08-17 16:58:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1291, 9, 128, '2022-08-17 16:58:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1292, 8, 128, '2022-08-17 16:58:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1293, 7, 128, '2022-08-17 16:58:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1294, 6, 128, '2022-08-17 16:58:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1295, 4, 128, '2022-08-17 16:59:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1296, 5, 128, '2022-08-17 16:59:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1297, 3, 128, '2022-08-17 16:59:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1298, 2, 128, '2022-08-17 16:59:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1299, 1, 128, '2022-08-17 16:59:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1300, 61, 132, '2022-08-17 17:07:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1301, 62, 132, '2022-08-17 17:07:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1302, 63, 132, '2022-08-17 17:07:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1303, 64, 132, '2022-08-17 17:07:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1304, 65, 132, '2022-08-17 17:07:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1305, 66, 132, '2022-08-17 17:07:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1306, 67, 132, '2022-08-17 17:07:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1307, 68, 132, '2022-08-17 17:07:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1308, 69, 132, '2022-08-17 17:07:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (1309, 70, 132, '2022-08-17 17:07:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1310, 61, 133, '2022-08-17 17:12:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (1311, 72, 133, '2022-08-17 17:12:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1313, 74, 133, '2022-08-17 17:12:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1314, 63, 133, '2022-08-17 17:12:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1315, 65, 133, '2022-08-17 17:12:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1316, 66, 133, '2022-08-17 17:12:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1317, 77, 133, '2022-08-17 17:12:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1318, 68, 133, '2022-08-17 17:13:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1319, 69, 133, '2022-08-17 17:13:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1320, 70, 133, '2022-08-17 17:13:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1321, 61, 134, '2022-08-17 17:14:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1322, 72, 134, '2022-08-17 17:14:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1323, 63, 134, '2022-08-17 17:14:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1324, 64, 134, '2022-08-17 17:15:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1325, 65, 134, '2022-08-17 17:15:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1326, 66, 134, '2022-08-17 17:15:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1327, 67, 134, '2022-08-17 17:15:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1328, 68, 134, '2022-08-17 17:15:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1329, 69, 134, '2022-08-17 17:15:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1330, 70, 134, '2022-08-17 17:15:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1331, 1, 135, '2022-08-17 17:58:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1332, 2, 135, '2022-08-17 17:58:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1333, 3, 135, '2022-08-17 17:58:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1334, 4, 135, '2022-08-17 17:58:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1335, 5, 135, '2022-08-17 17:58:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1336, 6, 135, '2022-08-17 17:58:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1337, 7, 135, '2022-08-17 17:58:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1338, 8, 135, '2022-08-17 17:58:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1339, 9, 135, '2022-08-17 17:58:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1340, 10, 135, '2022-08-17 17:58:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1342, 1, 136, '2022-08-17 18:14:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1343, 2, 136, '2022-08-17 18:14:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1344, 3, 136, '2022-08-17 18:14:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1345, 4, 136, '2022-08-17 18:14:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1346, 5, 136, '2022-08-17 18:14:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1347, 6, 136, '2022-08-17 18:14:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1348, 7, 136, '2022-08-17 18:14:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1349, 8, 136, '2022-08-17 18:14:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1350, 9, 136, '2022-08-17 18:14:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (1351, 10, 136, '2022-08-17 18:14:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1352, 1, 137, '2022-08-17 18:19:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1353, 2, 137, '2022-08-17 18:19:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1354, 3, 137, '2022-08-17 18:19:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1355, 4, 137, '2022-08-17 18:19:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1356, 5, 137, '2022-08-17 18:19:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1357, 6, 137, '2022-08-17 18:19:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1358, 7, 137, '2022-08-17 18:19:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1359, 8, 137, '2022-08-17 18:19:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1360, 9, 137, '2022-08-17 18:19:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1361, 10, 137, '2022-08-17 18:19:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1362, 61, 138, '2022-08-17 18:23:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1363, 62, 138, '2022-08-17 18:23:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (1364, 63, 138, '2022-08-17 18:23:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1365, 64, 138, '2022-08-17 18:23:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1366, 65, 138, '2022-08-17 18:23:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1367, 66, 138, '2022-08-17 18:23:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1368, 67, 138, '2022-08-17 18:23:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1369, 68, 138, '2022-08-17 18:23:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1370, 1, 139, '2022-08-17 18:31:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1371, 2, 139, '2022-08-17 18:32:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1372, 3, 139, '2022-08-17 18:32:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1373, 4, 139, '2022-08-17 18:32:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1374, 5, 139, '2022-08-17 18:32:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1375, 6, 139, '2022-08-17 18:32:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1376, 7, 139, '2022-08-17 18:32:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1377, 8, 139, '2022-08-17 18:32:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1378, 9, 139, '2022-08-17 18:32:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1379, 10, 139, '2022-08-17 18:32:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (1380, 1, 140, '2022-08-17 18:38:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1381, 2, 140, '2022-08-17 18:38:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1382, 3, 140, '2022-08-17 18:38:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1383, 4, 140, '2022-08-17 18:38:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1384, 5, 140, '2022-08-17 18:38:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1385, 6, 140, '2022-08-17 18:38:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1386, 7, 140, '2022-08-17 18:38:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1387, 8, 140, '2022-08-17 18:38:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1388, 9, 140, '2022-08-17 18:38:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1389, 10, 140, '2022-08-17 18:38:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1390, 1, 141, '2022-08-17 18:53:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1391, 2, 141, '2022-08-17 18:53:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1392, 3, 141, '2022-08-17 18:53:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1393, 4, 141, '2022-08-17 18:53:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1394, 5, 141, '2022-08-17 18:53:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1395, 6, 141, '2022-08-17 18:53:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1396, 7, 141, '2022-08-17 18:53:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1397, 8, 141, '2022-08-17 18:53:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1398, 9, 141, '2022-08-17 18:53:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1399, 10, 141, '2022-08-17 18:53:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1400, 1, 142, '2022-08-18 09:30:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (1401, 2, 142, '2022-08-18 09:30:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1402, 3, 142, '2022-08-18 09:30:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (1403, 4, 142, '2022-08-18 09:30:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (1404, 5, 142, '2022-08-18 09:30:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1405, 6, 142, '2022-08-18 09:30:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1406, 7, 142, '2022-08-18 09:30:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1407, 8, 142, '2022-08-18 09:30:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1408, 9, 142, '2022-08-18 09:30:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1409, 10, 142, '2022-08-18 09:30:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1410, 1, 143, '2022-08-18 09:40:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1411, 2, 143, '2022-08-18 09:40:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1412, 13, 143, '2022-08-18 09:40:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1413, 4, 143, '2022-08-18 09:40:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1414, 5, 143, '2022-08-18 09:40:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1415, 6, 143, '2022-08-18 09:41:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1416, 7, 143, '2022-08-18 09:41:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1417, 8, 143, '2022-08-18 09:41:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1418, 9, 143, '2022-08-18 09:41:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1419, 10, 143, '2022-08-18 09:41:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1420, 1, 144, '2022-08-18 09:54:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1421, 2, 144, '2022-08-18 09:54:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1422, 3, 144, '2022-08-18 09:54:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1423, 4, 144, '2022-08-18 09:54:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1424, 5, 144, '2022-08-18 09:54:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1425, 6, 144, '2022-08-18 09:54:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (1426, 7, 144, '2022-08-18 09:54:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1427, 8, 144, '2022-08-18 09:54:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (1428, 9, 144, '2022-08-18 09:54:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1429, 10, 144, '2022-08-18 09:54:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1430, 1, 145, '2022-08-18 10:03:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1431, 2, 145, '2022-08-18 10:03:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1433, 3, 145, '2022-08-18 10:03:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1434, 4, 145, '2022-08-18 10:03:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1435, 5, 145, '2022-08-18 10:03:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1436, 6, 145, '2022-08-18 10:03:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1437, 7, 145, '2022-08-18 10:03:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1438, 8, 145, '2022-08-18 10:03:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1439, 9, 145, '2022-08-18 10:03:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1440, 10, 145, '2022-08-18 10:03:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1441, 1, 146, '2022-08-18 10:13:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (1442, 2, 146, '2022-08-18 10:13:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (1443, 3, 146, '2022-08-18 10:13:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (1444, 4, 146, '2022-08-18 10:13:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1445, 5, 146, '2022-08-18 10:13:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1446, 6, 146, '2022-08-18 10:13:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1447, 7, 146, '2022-08-18 10:13:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1448, 8, 146, '2022-08-18 10:13:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1449, 9, 146, '2022-08-18 10:13:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1450, 10, 146, '2022-08-18 10:13:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1451, 61, 147, '2022-08-18 10:30:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (1452, 62, 147, '2022-08-18 10:30:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (1453, 73, 147, '2022-08-18 10:30:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1454, 64, 147, '2022-08-18 10:30:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1455, 65, 147, '2022-08-18 10:30:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1456, 66, 147, '2022-08-18 10:30:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1457, 67, 147, '2022-08-18 10:30:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1458, 68, 147, '2022-08-18 10:30:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1459, 69, 147, '2022-08-18 10:30:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1460, 70, 147, '2022-08-18 10:30:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1461, 61, 148, '2022-08-18 13:11:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1462, 72, 148, '2022-08-18 13:11:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1463, 63, 148, '2022-08-18 13:11:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1464, 64, 148, '2022-08-18 13:11:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1465, 75, 148, '2022-08-18 13:11:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1466, 66, 148, '2022-08-18 13:11:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1467, 77, 148, '2022-08-18 13:11:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1468, 68, 148, '2022-08-18 13:11:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1469, 79, 148, '2022-08-18 13:11:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1470, 70, 148, '2022-08-18 13:11:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1471, 61, 149, '2022-08-18 15:11:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1472, 62, 149, '2022-08-18 15:11:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1473, 63, 149, '2022-08-18 15:11:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1474, 64, 149, '2022-08-18 15:11:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1475, 65, 149, '2022-08-18 15:11:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1477, 66, 149, '2022-08-18 15:11:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1478, 67, 149, '2022-08-18 15:11:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1479, 68, 149, '2022-08-18 15:11:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1480, 69, 149, '2022-08-18 15:11:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1481, 70, 149, '2022-08-18 15:11:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1482, 61, 150, '2022-08-18 15:14:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1483, 62, 150, '2022-08-18 15:14:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1484, 64, 150, '2022-08-18 15:14:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (1485, 65, 150, '2022-08-18 15:14:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1486, 66, 150, '2022-08-18 15:14:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (1487, 67, 150, '2022-08-18 15:14:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1488, 68, 150, '2022-08-18 15:14:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (1489, 69, 150, '2022-08-18 15:14:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1490, 70, 150, '2022-08-18 15:14:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (1491, 63, 150, '2022-08-18 15:15:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1492, 61, 151, '2022-08-18 15:18:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1493, 62, 151, '2022-08-18 15:18:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1494, 63, 151, '2022-08-18 15:18:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1495, 64, 151, '2022-08-18 15:18:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1496, 65, 151, '2022-08-18 15:18:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1497, 66, 151, '2022-08-18 15:18:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1498, 67, 151, '2022-08-18 15:18:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1499, 68, 151, '2022-08-18 15:18:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1500, 69, 151, '2022-08-18 15:18:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1501, 70, 151, '2022-08-18 15:18:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1502, 61, 152, '2022-08-18 15:22:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1503, 62, 152, '2022-08-18 15:22:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1504, 63, 152, '2022-08-18 15:22:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1505, 64, 152, '2022-08-18 15:22:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1506, 65, 152, '2022-08-18 15:22:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1507, 66, 152, '2022-08-18 15:22:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1508, 67, 152, '2022-08-18 15:22:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1509, 68, 152, '2022-08-18 15:22:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1510, 69, 152, '2022-08-18 15:22:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1511, 70, 152, '2022-08-18 15:22:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (1512, 61, 153, '2022-08-18 15:25:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1513, 62, 153, '2022-08-18 15:26:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1514, 63, 153, '2022-08-18 15:26:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1515, 64, 153, '2022-08-18 15:26:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1516, 65, 153, '2022-08-18 15:26:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1517, 66, 153, '2022-08-18 15:26:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1518, 67, 153, '2022-08-18 15:26:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1519, 68, 153, '2022-08-18 15:26:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1520, 69, 153, '2022-08-18 15:26:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1521, 70, 153, '2022-08-18 15:26:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1522, 70, 154, '2022-08-18 15:28:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1523, 69, 154, '2022-08-18 15:28:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1524, 68, 154, '2022-08-18 15:28:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1525, 67, 154, '2022-08-18 15:28:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1526, 66, 154, '2022-08-18 15:28:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1527, 65, 154, '2022-08-18 15:28:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1528, 64, 154, '2022-08-18 15:28:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1529, 63, 154, '2022-08-18 15:28:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1530, 62, 154, '2022-08-18 15:28:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1531, 61, 154, '2022-08-18 15:28:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1532, 61, 155, '2022-08-18 16:39:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (1533, 62, 155, '2022-08-18 16:39:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (1534, 63, 155, '2022-08-18 16:39:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1535, 64, 155, '2022-08-18 16:39:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1536, 65, 155, '2022-08-18 16:39:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1537, 66, 155, '2022-08-18 16:39:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1538, 67, 155, '2022-08-18 16:39:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1539, 68, 155, '2022-08-18 16:39:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1540, 69, 155, '2022-08-18 16:39:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1541, 70, 155, '2022-08-18 16:39:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1542, 61, 156, '2022-08-18 16:41:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1543, 62, 156, '2022-08-18 16:41:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1544, 73, 156, '2022-08-18 16:42:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1545, 64, 156, '2022-08-18 16:42:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1546, 65, 156, '2022-08-18 16:42:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1547, 66, 156, '2022-08-18 16:42:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (1548, 67, 156, '2022-08-18 16:42:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1549, 68, 156, '2022-08-18 16:42:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1550, 69, 156, '2022-08-18 16:42:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (1551, 70, 156, '2022-08-18 16:42:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (1552, 61, 157, '2022-08-18 16:44:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1553, 62, 157, '2022-08-18 16:44:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1554, 63, 157, '2022-08-18 16:44:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1555, 64, 157, '2022-08-18 16:44:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1556, 65, 157, '2022-08-18 16:45:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1557, 66, 157, '2022-08-18 16:45:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1558, 67, 157, '2022-08-18 16:45:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1559, 68, 157, '2022-08-18 16:45:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1560, 69, 157, '2022-08-18 16:45:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1561, 70, 157, '2022-08-18 16:45:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1562, 61, 158, '2022-08-18 16:48:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1563, 62, 158, '2022-08-18 16:48:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1564, 63, 158, '2022-08-18 16:48:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1565, 74, 158, '2022-08-18 16:48:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1566, 65, 158, '2022-08-18 16:48:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1567, 66, 158, '2022-08-18 16:48:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1568, 67, 158, '2022-08-18 16:48:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1569, 68, 158, '2022-08-18 16:49:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1570, 69, 158, '2022-08-18 16:49:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1571, 70, 158, '2022-08-18 16:49:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1572, 61, 159, '2022-08-18 16:51:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1573, 62, 159, '2022-08-18 16:51:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (1574, 63, 159, '2022-08-18 16:51:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (1575, 74, 159, '2022-08-18 16:51:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1576, 65, 159, '2022-08-18 16:51:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1577, 1, 160, '2022-08-18 16:51:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1578, 66, 159, '2022-08-18 16:51:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1579, 2, 160, '2022-08-18 16:51:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1581, 67, 159, '2022-08-18 16:51:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1582, 4, 160, '2022-08-18 16:51:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1583, 68, 159, '2022-08-18 16:51:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1584, 5, 160, '2022-08-18 16:51:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1585, 69, 159, '2022-08-18 16:52:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1586, 6, 160, '2022-08-18 16:52:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1587, 7, 160, '2022-08-18 16:52:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1588, 70, 159, '2022-08-18 16:52:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1589, 8, 160, '2022-08-18 16:52:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1590, 9, 160, '2022-08-18 16:52:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1591, 10, 160, '2022-08-18 16:52:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1592, 13, 160, '2022-08-18 16:52:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1593, 1, 161, '2022-08-18 17:07:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1594, 2, 161, '2022-08-18 17:07:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1595, 3, 161, '2022-08-18 17:07:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1596, 4, 161, '2022-08-18 17:07:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1597, 5, 161, '2022-08-18 17:07:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1598, 6, 161, '2022-08-18 17:07:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1599, 7, 161, '2022-08-18 17:07:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1600, 8, 161, '2022-08-18 17:07:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1601, 9, 161, '2022-08-18 17:07:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1602, 10, 161, '2022-08-18 17:07:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1603, 1, 162, '2022-08-18 17:19:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1604, 2, 162, '2022-08-18 17:19:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1605, 3, 162, '2022-08-18 17:19:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1606, 4, 162, '2022-08-18 17:19:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1607, 5, 162, '2022-08-18 17:19:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1608, 6, 162, '2022-08-18 17:19:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1609, 7, 162, '2022-08-18 17:19:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1610, 8, 162, '2022-08-18 17:19:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1611, 9, 162, '2022-08-18 17:19:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1612, 10, 162, '2022-08-18 17:19:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1613, 1, 163, '2022-08-19 09:43:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1614, 2, 163, '2022-08-19 09:43:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1615, 3, 163, '2022-08-19 09:43:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1616, 4, 163, '2022-08-19 09:43:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1618, 5, 163, '2022-08-19 09:43:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1619, 6, 163, '2022-08-19 09:43:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1620, 7, 163, '2022-08-19 09:43:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1621, 8, 163, '2022-08-19 09:43:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1622, 9, 163, '2022-08-19 09:43:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1623, 10, 163, '2022-08-19 09:44:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1624, 1, 164, '2022-08-19 09:59:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1625, 2, 164, '2022-08-19 09:59:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1626, 3, 164, '2022-08-19 09:59:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1627, 4, 164, '2022-08-19 09:59:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1628, 5, 164, '2022-08-19 09:59:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1629, 6, 164, '2022-08-19 10:00:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1630, 7, 164, '2022-08-19 10:00:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1631, 8, 164, '2022-08-19 10:00:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1632, 9, 164, '2022-08-19 10:00:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1633, 10, 164, '2022-08-19 10:00:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1634, 1, 165, '2022-08-19 10:11:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1635, 2, 165, '2022-08-19 10:11:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1636, 3, 165, '2022-08-19 10:11:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1637, 4, 165, '2022-08-19 10:11:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1638, 5, 165, '2022-08-19 10:11:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1639, 6, 165, '2022-08-19 10:11:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1640, 7, 165, '2022-08-19 10:11:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1641, 8, 165, '2022-08-19 10:11:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1642, 9, 165, '2022-08-19 10:11:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1643, 10, 165, '2022-08-19 10:11:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1644, 1, 166, '2022-08-22 09:04:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1645, 2, 166, '2022-08-22 09:04:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1646, 3, 166, '2022-08-22 09:04:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1647, 4, 166, '2022-08-22 09:04:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1648, 5, 166, '2022-08-22 09:04:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1649, 6, 166, '2022-08-22 09:04:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1650, 7, 166, '2022-08-22 09:04:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1651, 8, 166, '2022-08-22 09:04:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1652, 9, 166, '2022-08-22 09:04:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1653, 10, 166, '2022-08-22 09:04:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1654, 1, 167, '2022-08-22 10:15:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1655, 2, 167, '2022-08-22 10:15:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1656, 3, 167, '2022-08-22 10:15:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1657, 4, 167, '2022-08-22 10:15:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1659, 5, 167, '2022-08-22 10:15:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1660, 6, 167, '2022-08-22 10:16:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1661, 7, 167, '2022-08-22 10:16:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1662, 8, 167, '2022-08-22 10:16:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1663, 9, 167, '2022-08-22 10:16:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1664, 10, 167, '2022-08-22 10:16:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1665, 1, 168, '2022-08-22 10:16:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1666, 2, 168, '2022-08-22 10:16:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1667, 3, 168, '2022-08-22 10:16:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1668, 4, 168, '2022-08-22 10:16:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1669, 5, 168, '2022-08-22 10:16:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1670, 6, 168, '2022-08-22 10:17:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1671, 7, 168, '2022-08-22 10:17:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1672, 8, 168, '2022-08-22 10:17:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1673, 9, 168, '2022-08-22 10:17:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1674, 10, 168, '2022-08-22 10:17:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1675, 1, 169, '2022-08-22 10:18:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1676, 2, 169, '2022-08-22 10:18:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1677, 3, 169, '2022-08-22 10:18:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1678, 4, 169, '2022-08-22 10:18:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (1679, 5, 169, '2022-08-22 10:18:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1680, 6, 169, '2022-08-22 10:18:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (1681, 7, 169, '2022-08-22 10:18:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1682, 8, 169, '2022-08-22 10:18:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (1683, 9, 169, '2022-08-22 10:18:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (1684, 10, 169, '2022-08-22 10:18:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1685, 1, 170, '2022-08-22 10:19:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1686, 2, 170, '2022-08-22 10:19:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1687, 3, 170, '2022-08-22 10:19:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1688, 4, 170, '2022-08-22 10:19:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (1689, 5, 170, '2022-08-22 10:19:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1690, 6, 170, '2022-08-22 10:19:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1691, 7, 170, '2022-08-22 10:19:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1693, 0, 170, '2022-08-22 10:19:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1694, 8, 170, '2022-08-22 10:19:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1695, 9, 170, '2022-08-22 10:19:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1696, 10, 170, '2022-08-22 10:19:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1697, 1, 171, '2022-08-22 10:22:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1698, 2, 171, '2022-08-22 10:22:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1699, 3, 171, '2022-08-22 10:22:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1700, 4, 171, '2022-08-22 10:22:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1701, 5, 171, '2022-08-22 10:22:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1702, 6, 171, '2022-08-22 10:22:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1703, 7, 171, '2022-08-22 10:22:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1704, 8, 171, '2022-08-22 10:22:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1705, 9, 171, '2022-08-22 10:22:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1706, 10, 171, '2022-08-22 10:22:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (1707, 1, 172, '2022-08-22 10:23:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1708, 2, 172, '2022-08-22 10:23:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1709, 3, 172, '2022-08-22 10:23:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1710, 4, 172, '2022-08-22 10:23:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1711, 5, 172, '2022-08-22 10:23:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1712, 6, 172, '2022-08-22 10:23:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1713, 7, 172, '2022-08-22 10:23:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1714, 8, 172, '2022-08-22 10:23:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1715, 9, 172, '2022-08-22 10:23:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1716, 10, 172, '2022-08-22 10:23:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1717, 1, 173, '2022-08-22 10:23:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1718, 2, 173, '2022-08-22 10:23:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1719, 3, 173, '2022-08-22 10:23:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1720, 4, 173, '2022-08-22 10:24:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1721, 5, 173, '2022-08-22 10:24:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1722, 6, 173, '2022-08-22 10:24:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1723, 7, 173, '2022-08-22 10:24:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1724, 8, 173, '2022-08-22 10:24:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1725, 9, 173, '2022-08-22 10:24:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1726, 10, 173, '2022-08-22 10:24:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1727, 1, 174, '2022-08-22 10:24:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (1728, 2, 174, '2022-08-22 10:24:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1729, 3, 174, '2022-08-22 10:24:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (1730, 4, 174, '2022-08-22 10:24:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (1731, 5, 174, '2022-08-22 10:24:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1732, 6, 174, '2022-08-22 10:24:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (1733, 7, 174, '2022-08-22 10:24:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (1734, 8, 174, '2022-08-22 10:24:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (1735, 9, 174, '2022-08-22 10:24:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1736, 10, 174, '2022-08-22 10:24:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1737, 1, 175, '2022-08-22 10:25:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1738, 2, 175, '2022-08-22 10:25:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1739, 3, 175, '2022-08-22 10:25:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1740, 4, 175, '2022-08-22 10:25:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1741, 5, 175, '2022-08-22 10:25:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1742, 6, 175, '2022-08-22 10:25:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1743, 7, 175, '2022-08-22 10:25:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (1744, 8, 175, '2022-08-22 10:25:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1745, 9, 175, '2022-08-22 10:25:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1746, 10, 175, '2022-08-22 10:25:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1747, 1, 176, '2022-08-22 10:25:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1748, 2, 176, '2022-08-22 10:25:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1749, 3, 176, '2022-08-22 10:25:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1750, 4, 176, '2022-08-22 10:25:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1751, 5, 176, '2022-08-22 10:25:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1752, 6, 176, '2022-08-22 10:25:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1753, 7, 176, '2022-08-22 10:25:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1754, 8, 176, '2022-08-22 10:25:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1755, 9, 176, '2022-08-22 10:25:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1756, 10, 176, '2022-08-22 10:25:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1757, 1, 177, '2022-08-22 10:27:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1758, 2, 177, '2022-08-22 10:27:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1759, 3, 177, '2022-08-22 10:27:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1761, 4, 177, '2022-08-22 10:27:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1762, 5, 177, '2022-08-22 10:27:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1763, 6, 177, '2022-08-22 10:27:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1764, 7, 177, '2022-08-22 10:27:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1765, 8, 177, '2022-08-22 10:27:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1766, 9, 177, '2022-08-22 10:27:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1767, 10, 177, '2022-08-22 10:27:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1768, 1, 178, '2022-08-22 10:28:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (1769, 2, 178, '2022-08-22 10:28:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (1770, 3, 178, '2022-08-22 10:28:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (1771, 4, 178, '2022-08-22 10:28:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (1772, 5, 178, '2022-08-22 10:28:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1773, 6, 178, '2022-08-22 10:28:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1774, 7, 178, '2022-08-22 10:28:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1775, 8, 178, '2022-08-22 10:28:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1776, 9, 178, '2022-08-22 10:28:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1777, 10, 178, '2022-08-22 10:28:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1778, 1, 179, '2022-08-22 10:31:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (1779, 2, 179, '2022-08-22 10:31:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (1780, 3, 179, '2022-08-22 10:31:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (1781, 4, 179, '2022-08-22 10:31:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1782, 5, 179, '2022-08-22 10:31:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1783, 6, 179, '2022-08-22 10:31:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1784, 7, 179, '2022-08-22 10:31:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1785, 8, 179, '2022-08-22 10:31:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1786, 9, 179, '2022-08-22 10:31:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1787, 10, 179, '2022-08-22 10:31:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1788, 1, 180, '2022-08-22 10:32:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1789, 2, 180, '2022-08-22 10:32:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (1790, 3, 180, '2022-08-22 10:32:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (1791, 4, 180, '2022-08-22 10:32:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (1792, 5, 180, '2022-08-22 10:32:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (1793, 6, 180, '2022-08-22 10:32:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1794, 7, 180, '2022-08-22 10:32:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1795, 8, 180, '2022-08-22 10:32:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (1796, 9, 180, '2022-08-22 10:32:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1797, 10, 180, '2022-08-22 10:32:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1798, 1, 181, '2022-08-22 10:33:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1799, 2, 181, '2022-08-22 10:33:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1800, 3, 181, '2022-08-22 10:33:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1801, 4, 181, '2022-08-22 10:33:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1802, 5, 181, '2022-08-22 10:33:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1803, 6, 181, '2022-08-22 10:33:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1804, 7, 181, '2022-08-22 10:33:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1805, 8, 181, '2022-08-22 10:33:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1806, 9, 181, '2022-08-22 10:33:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1807, 10, 181, '2022-08-22 10:33:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1808, 1, 182, '2022-08-22 10:34:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1809, 2, 182, '2022-08-22 10:34:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1810, 3, 182, '2022-08-22 10:34:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1811, 4, 182, '2022-08-22 10:34:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1812, 5, 182, '2022-08-22 10:34:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1813, 6, 182, '2022-08-22 10:34:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1814, 7, 182, '2022-08-22 10:34:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (1815, 8, 182, '2022-08-22 10:34:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1816, 9, 182, '2022-08-22 10:34:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (1817, 10, 182, '2022-08-22 10:34:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (1818, 1, 183, '2022-08-22 10:34:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1819, 2, 183, '2022-08-22 10:34:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1820, 3, 183, '2022-08-22 10:34:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1821, 4, 183, '2022-08-22 10:34:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1822, 5, 183, '2022-08-22 10:34:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1823, 6, 183, '2022-08-22 10:34:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1824, 7, 183, '2022-08-22 10:34:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1825, 8, 183, '2022-08-22 10:34:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1826, 9, 183, '2022-08-22 10:35:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (1827, 10, 183, '2022-08-22 10:35:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1828, 1, 184, '2022-08-22 10:38:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1829, 2, 184, '2022-08-22 10:38:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (1830, 3, 184, '2022-08-22 10:38:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1831, 4, 184, '2022-08-22 10:38:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1832, 5, 184, '2022-08-22 10:38:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1833, 6, 184, '2022-08-22 10:38:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1834, 7, 184, '2022-08-22 10:38:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1835, 8, 184, '2022-08-22 10:38:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1836, 9, 184, '2022-08-22 10:38:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1837, 10, 184, '2022-08-22 10:38:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1838, 1, 185, '2022-08-22 10:39:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1839, 2, 185, '2022-08-22 10:39:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1840, 3, 185, '2022-08-22 10:39:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1841, 4, 185, '2022-08-22 10:39:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1842, 5, 185, '2022-08-22 10:39:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1843, 6, 185, '2022-08-22 10:39:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1844, 7, 185, '2022-08-22 10:39:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1845, 9, 185, '2022-08-22 10:39:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1846, 10, 185, '2022-08-22 10:39:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1847, 8, 185, '2022-08-22 10:39:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1848, 1, 186, '2022-08-22 10:40:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1849, 2, 186, '2022-08-22 10:40:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1850, 3, 186, '2022-08-22 10:40:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1851, 4, 186, '2022-08-22 10:40:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1852, 5, 186, '2022-08-22 10:40:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1853, 6, 186, '2022-08-22 10:40:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1854, 7, 186, '2022-08-22 10:40:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1855, 8, 186, '2022-08-22 10:40:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1856, 9, 186, '2022-08-22 10:40:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1857, 10, 186, '2022-08-22 10:40:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1858, 1, 187, '2022-08-22 10:40:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (1859, 2, 187, '2022-08-22 10:40:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1860, 3, 187, '2022-08-22 10:40:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1861, 4, 187, '2022-08-22 10:40:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1862, 5, 187, '2022-08-22 10:40:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1863, 6, 187, '2022-08-22 10:40:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1864, 7, 187, '2022-08-22 10:40:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1865, 8, 187, '2022-08-22 10:40:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1866, 9, 187, '2022-08-22 10:40:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1867, 10, 187, '2022-08-22 10:40:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1868, 1, 188, '2022-08-22 10:41:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1869, 2, 188, '2022-08-22 10:41:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1870, 3, 188, '2022-08-22 10:41:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1871, 4, 188, '2022-08-22 10:41:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1872, 5, 188, '2022-08-22 10:41:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1873, 6, 188, '2022-08-22 10:41:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1874, 7, 188, '2022-08-22 10:41:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1875, 8, 188, '2022-08-22 10:41:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1876, 9, 188, '2022-08-22 10:41:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1877, 10, 188, '2022-08-22 10:41:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1878, 1, 189, '2022-08-22 10:41:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1879, 2, 189, '2022-08-22 10:41:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1880, 3, 189, '2022-08-22 10:41:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (1881, 4, 189, '2022-08-22 10:41:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1882, 5, 189, '2022-08-22 10:41:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1883, 6, 189, '2022-08-22 10:41:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1884, 7, 189, '2022-08-22 10:41:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1885, 8, 189, '2022-08-22 10:41:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1886, 9, 189, '2022-08-22 10:41:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1887, 10, 189, '2022-08-22 10:42:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1888, 1, 190, '2022-08-22 10:42:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (1889, 2, 190, '2022-08-22 10:42:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1890, 3, 190, '2022-08-22 10:42:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1891, 4, 190, '2022-08-22 10:42:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1892, 5, 190, '2022-08-22 10:42:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1893, 6, 190, '2022-08-22 10:42:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (1894, 7, 190, '2022-08-22 10:42:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1895, 8, 190, '2022-08-22 10:42:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1896, 9, 190, '2022-08-22 10:42:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1897, 10, 190, '2022-08-22 10:42:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1898, 1, 191, '2022-08-22 10:42:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1899, 2, 191, '2022-08-22 10:42:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1900, 3, 191, '2022-08-22 10:42:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1901, 4, 191, '2022-08-22 10:42:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (1902, 5, 191, '2022-08-22 10:42:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (1903, 6, 191, '2022-08-22 10:42:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (1904, 7, 191, '2022-08-22 10:42:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (1905, 8, 191, '2022-08-22 10:42:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (1906, 9, 191, '2022-08-22 10:42:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (1907, 10, 191, '2022-08-22 10:42:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1908, 1, 192, '2022-08-22 10:43:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1909, 2, 192, '2022-08-22 10:43:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (1910, 3, 192, '2022-08-22 10:43:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1911, 4, 192, '2022-08-22 10:43:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1912, 5, 192, '2022-08-22 10:43:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1913, 6, 192, '2022-08-22 10:43:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (1914, 7, 192, '2022-08-22 10:43:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (1915, 8, 192, '2022-08-22 10:43:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (1916, 9, 192, '2022-08-22 10:43:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1917, 10, 192, '2022-08-22 10:43:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (1918, 1, 193, '2022-08-22 10:43:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (1919, 2, 193, '2022-08-22 10:43:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1920, 3, 193, '2022-08-22 10:43:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1921, 4, 193, '2022-08-22 10:44:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1922, 5, 193, '2022-08-22 10:44:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1923, 6, 193, '2022-08-22 10:44:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1924, 7, 193, '2022-08-22 10:44:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (1925, 8, 193, '2022-08-22 10:44:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1926, 9, 193, '2022-08-22 10:44:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (1927, 10, 193, '2022-08-22 10:44:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (1928, 1, 194, '2022-08-22 10:44:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1929, 2, 194, '2022-08-22 10:44:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (1930, 3, 194, '2022-08-22 10:44:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1931, 4, 194, '2022-08-22 10:44:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (1932, 5, 194, '2022-08-22 10:44:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1933, 6, 194, '2022-08-22 10:44:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (1934, 7, 194, '2022-08-22 10:44:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (1935, 8, 194, '2022-08-22 10:44:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1936, 9, 194, '2022-08-22 10:44:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (1937, 10, 194, '2022-08-22 10:44:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1938, 1, 195, '2022-08-22 10:45:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1939, 2, 195, '2022-08-22 10:45:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1940, 3, 195, '2022-08-22 10:45:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1941, 4, 195, '2022-08-22 10:45:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1942, 5, 195, '2022-08-22 10:45:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1943, 6, 195, '2022-08-22 10:45:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (1944, 7, 195, '2022-08-22 10:45:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1945, 8, 195, '2022-08-22 10:45:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (1946, 9, 195, '2022-08-22 10:45:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1947, 10, 195, '2022-08-22 10:45:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (1948, 1, 196, '2022-08-22 10:45:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (1949, 2, 196, '2022-08-22 10:45:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (1950, 3, 196, '2022-08-22 10:45:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (1951, 4, 196, '2022-08-22 10:45:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (1952, 5, 196, '2022-08-22 10:45:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (1953, 6, 196, '2022-08-22 10:46:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (1954, 7, 196, '2022-08-22 10:46:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (1955, 8, 196, '2022-08-22 10:46:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (1956, 9, 196, '2022-08-22 10:46:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (1957, 10, 196, '2022-08-22 10:46:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1958, 1, 197, '2022-08-22 10:46:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1959, 2, 197, '2022-08-22 10:46:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1960, 3, 197, '2022-08-22 10:46:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (1961, 4, 197, '2022-08-22 10:46:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1962, 5, 197, '2022-08-22 10:46:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (1963, 6, 197, '2022-08-22 10:46:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1964, 7, 197, '2022-08-22 10:46:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (1965, 8, 197, '2022-08-22 10:46:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1966, 9, 197, '2022-08-22 10:46:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (1967, 10, 197, '2022-08-22 10:46:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1968, 1, 198, '2022-08-22 10:48:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1969, 2, 198, '2022-08-22 10:48:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (1970, 3, 198, '2022-08-22 10:48:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (1971, 4, 198, '2022-08-22 10:48:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (1972, 5, 198, '2022-08-22 10:48:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (1973, 6, 198, '2022-08-22 10:48:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (1974, 7, 198, '2022-08-22 10:48:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (1975, 8, 198, '2022-08-22 10:48:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (1976, 9, 198, '2022-08-22 10:48:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (1977, 10, 198, '2022-08-22 10:48:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (1978, 1, 199, '2022-08-22 10:49:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (1979, 2, 199, '2022-08-22 10:49:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (1980, 3, 199, '2022-08-22 10:49:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (1981, 4, 199, '2022-08-22 10:49:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1982, 5, 199, '2022-08-22 10:49:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (1983, 6, 199, '2022-08-22 10:49:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (1984, 7, 199, '2022-08-22 10:49:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (1985, 8, 199, '2022-08-22 10:49:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (1986, 9, 199, '2022-08-22 10:49:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (1987, 10, 199, '2022-08-22 10:49:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (1988, 1, 200, '2022-08-22 10:49:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (1989, 2, 200, '2022-08-22 10:49:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (1990, 3, 200, '2022-08-22 10:49:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (1991, 4, 200, '2022-08-22 10:49:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (1992, 5, 200, '2022-08-22 10:49:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (1993, 6, 200, '2022-08-22 10:49:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (1994, 7, 200, '2022-08-22 10:49:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (1995, 8, 200, '2022-08-22 10:49:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (1996, 9, 200, '2022-08-22 10:49:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (1997, 10, 200, '2022-08-22 10:49:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (1998, 1, 202, '2022-08-22 10:52:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (1999, 2, 202, '2022-08-22 10:52:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2000, 3, 202, '2022-08-22 10:52:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2001, 4, 202, '2022-08-22 10:52:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2002, 5, 202, '2022-08-22 10:52:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2003, 6, 202, '2022-08-22 10:52:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2004, 7, 202, '2022-08-22 10:52:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2005, 8, 202, '2022-08-22 10:52:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2006, 9, 202, '2022-08-22 10:52:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2007, 10, 202, '2022-08-22 10:52:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2008, 1, 203, '2022-08-22 10:52:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2009, 2, 203, '2022-08-22 10:52:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (2010, 3, 203, '2022-08-22 10:52:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2011, 4, 203, '2022-08-22 10:52:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2012, 5, 203, '2022-08-22 10:53:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (2013, 6, 203, '2022-08-22 10:53:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2014, 7, 203, '2022-08-22 10:53:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (2015, 8, 203, '2022-08-22 10:53:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (2016, 9, 203, '2022-08-22 10:53:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2017, 10, 203, '2022-08-22 10:53:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2018, 1, 204, '2022-08-22 10:53:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2019, 2, 204, '2022-08-22 10:53:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2020, 3, 204, '2022-08-22 10:53:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2021, 4, 204, '2022-08-22 10:53:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2022, 5, 204, '2022-08-22 10:53:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2023, 6, 204, '2022-08-22 10:53:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2024, 7, 204, '2022-08-22 10:53:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2025, 8, 204, '2022-08-22 10:53:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2026, 9, 204, '2022-08-22 10:53:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2027, 10, 204, '2022-08-22 10:53:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2028, 1, 205, '2022-08-22 15:30:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2029, 2, 205, '2022-08-22 15:30:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2030, 3, 205, '2022-08-22 16:05:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2031, 4, 205, '2022-08-22 16:05:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2032, 5, 205, '2022-08-22 16:05:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2033, 6, 205, '2022-08-22 16:05:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2034, 7, 205, '2022-08-22 16:05:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2035, 8, 205, '2022-08-22 16:05:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2036, 9, 205, '2022-08-22 16:05:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2037, 10, 205, '2022-08-22 16:05:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2038, 1, 207, '2022-08-23 16:37:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2039, 2, 207, '2022-08-23 16:37:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2040, 3, 207, '2022-08-23 16:37:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2041, 4, 207, '2022-08-23 16:37:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2042, 5, 207, '2022-08-23 16:37:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2043, 6, 207, '2022-08-23 16:37:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2044, 7, 207, '2022-08-23 16:37:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2045, 8, 207, '2022-08-23 16:37:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2046, 9, 207, '2022-08-23 16:37:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2047, 10, 207, '2022-08-23 16:37:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2048, 1, 208, '2022-08-23 16:41:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2049, 2, 208, '2022-08-23 16:41:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2050, 3, 208, '2022-08-23 16:41:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2051, 4, 208, '2022-08-23 16:41:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2052, 5, 208, '2022-08-23 16:41:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2053, 6, 208, '2022-08-23 16:41:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2054, 7, 208, '2022-08-23 16:41:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2055, 8, 208, '2022-08-23 16:41:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2056, 9, 208, '2022-08-23 16:41:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2057, 10, 208, '2022-08-23 16:41:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2058, 1, 209, '2022-08-23 16:43:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2059, 2, 209, '2022-08-23 16:43:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2060, 3, 209, '2022-08-23 16:43:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2061, 4, 209, '2022-08-23 16:43:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2062, 5, 209, '2022-08-23 16:43:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2063, 6, 209, '2022-08-23 16:43:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2064, 7, 209, '2022-08-23 16:43:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2065, 8, 209, '2022-08-23 16:43:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2066, 9, 209, '2022-08-23 16:43:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2067, 10, 209, '2022-08-23 16:43:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2068, 1, 210, '2022-08-23 16:50:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2069, 2, 210, '2022-08-23 16:50:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2070, 3, 210, '2022-08-23 16:50:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2071, 4, 210, '2022-08-23 16:50:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2072, 5, 210, '2022-08-23 16:50:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2073, 6, 210, '2022-08-23 16:50:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2074, 7, 210, '2022-08-23 16:50:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2075, 8, 210, '2022-08-23 16:50:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2076, 9, 210, '2022-08-23 16:50:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2077, 10, 210, '2022-08-23 16:50:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2078, 1, 211, '2022-08-23 17:03:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2079, 2, 211, '2022-08-23 17:03:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2080, 3, 211, '2022-08-23 17:03:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2081, 4, 211, '2022-08-23 17:03:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2082, 5, 211, '2022-08-23 17:03:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2083, 6, 211, '2022-08-23 17:03:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2084, 7, 211, '2022-08-23 17:03:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2085, 8, 211, '2022-08-23 17:03:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2086, 9, 211, '2022-08-23 17:03:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2087, 10, 211, '2022-08-23 17:03:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2088, 1, 212, '2022-08-23 17:12:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2089, 2, 212, '2022-08-23 17:12:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2090, 3, 212, '2022-08-23 17:12:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2091, 4, 212, '2022-08-23 17:12:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2092, 5, 212, '2022-08-23 17:12:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2093, 6, 212, '2022-08-23 17:12:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2094, 7, 212, '2022-08-23 17:12:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2095, 8, 212, '2022-08-23 17:12:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2096, 9, 212, '2022-08-23 17:12:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2097, 10, 212, '2022-08-23 17:12:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2098, 1, 213, '2022-08-23 17:19:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2099, 2, 213, '2022-08-23 17:19:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2100, 3, 213, '2022-08-23 17:19:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2101, 4, 213, '2022-08-23 17:19:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2102, 5, 213, '2022-08-23 17:19:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2103, 6, 213, '2022-08-23 17:19:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2105, 7, 213, '2022-08-23 17:19:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2106, 8, 213, '2022-08-23 17:19:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2107, 9, 213, '2022-08-23 17:19:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2108, 10, 213, '2022-08-23 17:19:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2109, 1, 214, '2022-08-23 17:26:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2110, 2, 214, '2022-08-23 17:26:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2111, 3, 214, '2022-08-23 17:26:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (2112, 4, 214, '2022-08-23 17:26:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2113, 5, 214, '2022-08-23 17:26:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2114, 6, 214, '2022-08-23 17:26:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2115, 7, 214, '2022-08-23 17:26:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2116, 8, 214, '2022-08-23 17:26:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2117, 9, 214, '2022-08-23 17:26:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2118, 10, 214, '2022-08-23 17:26:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2119, 1, 215, '2022-08-23 17:55:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2120, 2, 215, '2022-08-23 17:55:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2121, 3, 215, '2022-08-23 17:55:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2122, 4, 215, '2022-08-23 17:55:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2123, 5, 215, '2022-08-23 17:55:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2124, 6, 215, '2022-08-23 17:55:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2125, 7, 215, '2022-08-23 17:55:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2126, 8, 215, '2022-08-23 17:55:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2127, 9, 215, '2022-08-23 17:55:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2128, 10, 215, '2022-08-23 17:55:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2129, 1, 216, '2022-08-24 08:22:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2130, 2, 216, '2022-08-24 08:22:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2131, 3, 216, '2022-08-24 08:22:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2132, 4, 216, '2022-08-24 08:22:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (2133, 5, 216, '2022-08-24 08:22:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2134, 6, 216, '2022-08-24 08:22:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2135, 7, 216, '2022-08-24 08:22:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2136, 8, 216, '2022-08-24 08:22:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2137, 9, 216, '2022-08-24 08:22:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2138, 10, 216, '2022-08-24 08:22:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2139, 1, 218, '2022-08-24 13:05:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2140, 2, 218, '2022-08-24 13:05:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2141, 13, 218, '2022-08-24 13:05:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2142, 4, 218, '2022-08-24 13:05:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2143, 5, 218, '2022-08-24 13:05:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2144, 6, 218, '2022-08-24 13:05:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2145, 7, 218, '2022-08-24 13:06:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2146, 8, 218, '2022-08-24 13:06:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (2147, 9, 218, '2022-08-24 13:06:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2148, 10, 218, '2022-08-24 13:06:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2149, 1, 219, '2022-08-24 19:16:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2150, 2, 219, '2022-08-24 19:16:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2151, 3, 219, '2022-08-24 19:16:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2152, 4, 219, '2022-08-24 19:16:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2153, 5, 219, '2022-08-24 19:16:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2154, 6, 219, '2022-08-24 19:16:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2155, 7, 219, '2022-08-24 19:16:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2156, 8, 219, '2022-08-24 19:16:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2157, 9, 219, '2022-08-24 19:16:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2158, 10, 219, '2022-08-24 19:16:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2160, 11, 220, '2022-08-24 19:51:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2161, 2, 220, '2022-08-24 19:51:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2162, 13, 220, '2022-08-24 19:51:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2163, 4, 220, '2022-08-24 19:52:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2164, 5, 220, '2022-08-24 19:52:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2165, 6, 220, '2022-08-24 19:52:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2166, 7, 220, '2022-08-24 19:52:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2167, 8, 220, '2022-08-24 19:52:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2168, 9, 220, '2022-08-24 19:52:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2169, 10, 220, '2022-08-24 19:52:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2170, 13, 221, '2022-08-25 10:12:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2171, 1, 221, '2022-08-25 10:12:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2172, 1, 222, '2022-08-25 10:13:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2173, 2, 222, '2022-08-25 10:13:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2175, 3, 222, '2022-08-25 10:13:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2176, 14, 222, '2022-08-25 10:13:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2177, 5, 222, '2022-08-25 10:18:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2178, 16, 222, '2022-08-25 10:18:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2179, 17, 222, '2022-08-25 10:18:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2180, 18, 222, '2022-08-25 10:18:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2181, 9, 222, '2022-08-25 10:18:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (2182, 20, 222, '2022-08-25 10:19:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2183, 5, 221, '2022-08-25 10:23:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2184, 16, 221, '2022-08-25 10:23:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2185, 17, 221, '2022-08-25 10:23:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2186, 19, 221, '2022-08-25 10:23:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2187, 18, 221, '2022-08-25 10:23:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2188, 10, 223, '2022-08-25 10:28:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2189, 9, 223, '2022-08-25 10:28:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2192, 7, 223, '2022-08-25 10:31:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2193, 6, 223, '2022-08-25 10:31:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2194, 5, 223, '2022-08-25 10:31:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2195, 14, 223, '2022-08-25 10:31:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2196, 13, 223, '2022-08-25 10:31:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2197, 2, 223, '2022-08-25 10:31:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2198, 1, 223, '2022-08-25 10:31:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2199, 8, 223, '2022-08-25 10:32:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (2200, 10, 221, '2022-08-25 11:04:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2201, 4, 221, '2022-08-25 11:04:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (2202, 2, 221, '2022-08-25 11:04:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (2203, 10, 225, '2022-08-25 11:56:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2204, 1, 225, '2022-08-25 11:57:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2206, 13, 225, '2022-08-25 11:57:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2207, 5, 225, '2022-08-25 11:57:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2208, 6, 225, '2022-08-25 11:58:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (2209, 17, 225, '2022-08-25 11:58:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (2211, 4, 225, '2022-08-25 12:00:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2212, 9, 225, '2022-08-25 12:00:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2213, 12, 225, '2022-08-25 12:00:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2214, 18, 225, '2022-08-25 12:01:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2215, 1, 224, '2022-08-25 12:47:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2216, 2, 224, '2022-08-25 12:47:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2217, 3, 224, '2022-08-25 13:00:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2218, 4, 224, '2022-08-25 13:00:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2219, 5, 224, '2022-08-25 13:00:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2220, 16, 224, '2022-08-25 13:00:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (2221, 17, 224, '2022-08-25 13:00:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2222, 18, 224, '2022-08-25 13:00:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2223, 19, 224, '2022-08-25 13:00:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (2224, 10, 224, '2022-08-25 13:01:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (2225, 1, 226, '2022-08-25 16:32:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2226, 2, 226, '2022-08-25 16:32:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2228, 13, 226, '2022-08-25 16:32:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2229, 4, 226, '2022-08-25 16:32:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2230, 5, 226, '2022-08-25 16:41:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2231, 6, 226, '2022-08-25 16:41:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2232, 7, 226, '2022-08-25 16:41:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (2233, 8, 226, '2022-08-25 16:41:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2234, 9, 226, '2022-08-25 16:41:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2235, 10, 226, '2022-08-25 16:41:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2236, 5, 228, '2022-08-25 16:57:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2237, 12, 228, '2022-08-25 16:58:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2238, 1, 228, '2022-08-25 16:58:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2239, 7, 228, '2022-08-25 16:59:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2240, 8, 228, '2022-08-25 16:59:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2241, 9, 228, '2022-08-25 16:59:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2242, 10, 228, '2022-08-25 16:59:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2243, 13, 228, '2022-08-25 17:00:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2244, 4, 228, '2022-08-25 17:00:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2245, 6, 228, '2022-08-25 17:00:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2246, 9, 229, '2022-08-25 17:08:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2247, 17, 229, '2022-08-25 17:09:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2248, 13, 229, '2022-08-25 17:09:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2249, 1, 229, '2022-08-25 17:10:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2250, 2, 229, '2022-08-25 17:10:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2251, 4, 229, '2022-08-25 17:11:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (2252, 5, 229, '2022-08-25 17:11:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2253, 6, 229, '2022-08-25 17:11:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2254, 8, 229, '2022-08-25 17:11:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2255, 10, 229, '2022-08-25 17:11:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2256, 1, 230, '2022-08-25 17:21:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (2258, 13, 230, '2022-08-25 17:22:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (2259, 4, 230, '2022-08-25 17:22:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2260, 5, 230, '2022-08-25 17:22:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2261, 12, 230, '2022-08-25 17:22:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2262, 6, 230, '2022-08-25 17:23:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2263, 17, 230, '2022-08-25 17:23:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2264, 8, 230, '2022-08-25 17:23:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2265, 9, 230, '2022-08-25 17:23:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2266, 10, 230, '2022-08-25 17:23:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2267, 7, 231, '2022-08-25 17:26:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2268, 8, 231, '2022-08-25 17:26:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2269, 9, 231, '2022-08-25 17:26:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (2270, 10, 231, '2022-08-25 17:26:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2271, 1, 231, '2022-08-25 17:27:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2272, 6, 231, '2022-08-25 17:28:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (2273, 5, 231, '2022-08-25 17:43:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2274, 4, 231, '2022-08-25 17:43:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2275, 13, 231, '2022-08-25 17:43:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2276, 12, 231, '2022-08-25 17:43:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2277, 1, 233, '2022-08-25 18:07:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2278, 10, 233, '2022-08-25 18:10:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2279, 8, 233, '2022-08-25 18:16:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2280, 9, 233, '2022-08-25 18:16:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2281, 16, 233, '2022-08-25 18:16:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2282, 17, 233, '2022-08-25 18:16:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2283, 5, 233, '2022-08-25 18:16:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2284, 4, 233, '2022-08-25 18:16:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2285, 3, 233, '2022-08-25 18:17:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (2286, 12, 233, '2022-08-25 18:17:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2287, 19, 234, '2022-08-25 18:28:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2288, 10, 234, '2022-08-25 18:28:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2289, 8, 234, '2022-08-25 18:29:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2290, 17, 234, '2022-08-25 18:29:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (2291, 6, 234, '2022-08-25 18:29:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2292, 5, 234, '2022-08-25 18:29:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2293, 4, 234, '2022-08-25 18:29:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2294, 13, 234, '2022-08-25 18:29:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2295, 2, 234, '2022-08-25 18:29:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2296, 1, 234, '2022-08-25 18:29:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2298, 16, 235, '2022-08-25 18:53:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2299, 13, 235, '2022-08-25 18:55:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2300, 19, 235, '2022-08-25 18:55:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2301, 10, 235, '2022-08-25 18:55:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (2302, 8, 235, '2022-08-25 18:55:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2303, 7, 235, '2022-08-25 18:55:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2304, 5, 235, '2022-08-25 18:56:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2305, 2, 235, '2022-08-25 18:56:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (2306, 1, 235, '2022-08-25 18:56:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2307, 4, 235, '2022-08-25 18:59:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2308, 1, 236, '2022-08-25 19:10:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2309, 13, 236, '2022-08-25 19:18:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2310, 4, 236, '2022-08-25 19:18:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2311, 5, 236, '2022-08-25 19:18:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2312, 6, 236, '2022-08-25 19:18:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2313, 17, 236, '2022-08-25 19:18:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2314, 19, 236, '2022-08-25 19:18:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2315, 8, 236, '2022-08-25 19:18:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2316, 10, 236, '2022-08-25 19:18:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2317, 2, 236, '2022-08-25 19:18:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2318, 19, 237, '2022-08-25 19:32:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2319, 10, 237, '2022-08-25 19:32:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2320, 8, 237, '2022-08-25 19:32:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2321, 17, 237, '2022-08-25 19:33:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2322, 6, 237, '2022-08-25 19:33:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2323, 5, 237, '2022-08-25 19:33:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (2324, 4, 237, '2022-08-25 19:33:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2325, 13, 237, '2022-08-25 19:33:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2326, 2, 237, '2022-08-25 19:33:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2327, 1, 237, '2022-08-25 19:33:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2328, 10, 238, '2022-08-25 19:51:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (2330, 19, 238, '2022-08-25 19:51:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2331, 8, 238, '2022-08-25 19:51:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2332, 7, 238, '2022-08-25 19:51:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2333, 6, 238, '2022-08-25 19:51:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2334, 5, 238, '2022-08-25 19:51:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (2335, 4, 238, '2022-08-25 19:51:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (2336, 13, 238, '2022-08-25 19:51:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2337, 12, 238, '2022-08-25 19:52:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2338, 1, 238, '2022-08-25 19:52:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (2340, 1, 239, '2022-08-27 10:57:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2341, 3, 239, '2022-08-27 11:15:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2342, 4, 239, '2022-08-27 11:15:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2343, 5, 239, '2022-08-27 11:15:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2344, 16, 239, '2022-08-27 11:16:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (2345, 17, 239, '2022-08-27 11:16:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2346, 18, 239, '2022-08-27 11:16:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (2347, 19, 239, '2022-08-27 11:16:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2348, 10, 239, '2022-08-27 11:16:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2349, 1, 240, '2022-08-27 11:28:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2350, 2, 240, '2022-08-27 11:28:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2351, 3, 240, '2022-08-27 11:28:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2352, 4, 240, '2022-08-27 11:28:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2353, 5, 240, '2022-08-27 11:28:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2354, 16, 240, '2022-08-27 11:28:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2355, 17, 240, '2022-08-27 11:28:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2356, 18, 240, '2022-08-27 11:28:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2357, 10, 240, '2022-08-27 11:28:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2358, 19, 240, '2022-08-27 11:28:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2359, 1, 242, '2022-08-27 11:29:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2360, 2, 242, '2022-08-27 11:29:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2361, 13, 242, '2022-08-27 11:29:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2362, 4, 242, '2022-08-27 11:29:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2363, 5, 242, '2022-08-27 11:29:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2364, 6, 242, '2022-08-27 11:29:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2365, 7, 242, '2022-08-27 11:29:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2366, 8, 242, '2022-08-27 11:29:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2367, 9, 242, '2022-08-27 11:29:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2368, 20, 242, '2022-08-27 11:29:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2369, 1, 241, '2022-08-27 11:40:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2370, 2, 241, '2022-08-27 11:40:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2371, 3, 241, '2022-08-27 11:40:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2372, 4, 241, '2022-08-27 11:40:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2373, 5, 241, '2022-08-27 11:40:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2374, 16, 241, '2022-08-27 11:40:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2375, 17, 241, '2022-08-27 11:40:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2376, 18, 241, '2022-08-27 11:40:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2377, 19, 241, '2022-08-27 11:40:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2378, 10, 241, '2022-08-27 11:40:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2379, 1, 243, '2022-08-27 12:03:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2380, 2, 243, '2022-08-27 12:03:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2381, 13, 243, '2022-08-27 12:04:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2383, 4, 243, '2022-08-27 12:05:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2384, 5, 243, '2022-08-27 12:05:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2385, 16, 243, '2022-08-27 12:05:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2386, 17, 243, '2022-08-27 12:05:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2387, 18, 243, '2022-08-27 12:05:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2388, 19, 243, '2022-08-27 12:05:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2389, 10, 243, '2022-08-27 12:05:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2390, 13, 244, '2022-08-27 12:07:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2391, 2, 244, '2022-08-27 12:07:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2392, 1, 244, '2022-08-27 12:07:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2393, 4, 244, '2022-08-27 12:11:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (2394, 5, 244, '2022-08-27 12:11:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (2395, 16, 244, '2022-08-27 12:11:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2398, 19, 244, '2022-08-27 12:11:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2399, 10, 244, '2022-08-27 12:11:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2400, 7, 244, '2022-08-27 12:15:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2401, 8, 244, '2022-08-27 12:15:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2402, 1, 245, '2022-08-27 12:27:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2403, 2, 245, '2022-08-27 12:27:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (2404, 3, 245, '2022-08-27 12:27:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2405, 4, 245, '2022-08-27 12:27:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2406, 5, 245, '2022-08-27 12:27:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2407, 16, 245, '2022-08-27 12:27:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (2408, 17, 245, '2022-08-27 12:27:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2409, 18, 245, '2022-08-27 12:27:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (2410, 19, 245, '2022-08-27 12:27:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2411, 10, 245, '2022-08-27 12:27:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2412, 1, 246, '2022-08-27 12:29:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2413, 2, 246, '2022-08-27 12:29:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2414, 3, 246, '2022-08-27 12:29:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2416, 4, 246, '2022-08-27 12:37:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2417, 5, 246, '2022-08-27 12:37:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2418, 16, 246, '2022-08-27 12:37:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2419, 17, 246, '2022-08-27 12:37:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (2420, 18, 246, '2022-08-27 12:37:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2421, 19, 246, '2022-08-27 12:37:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2423, 10, 246, '2022-08-27 12:51:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2424, 1, 247, '2022-08-29 09:56:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2425, 2, 247, '2022-08-29 09:56:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2426, 3, 247, '2022-08-29 09:56:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2427, 4, 247, '2022-08-29 09:56:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2428, 5, 247, '2022-08-29 09:56:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2429, 16, 247, '2022-08-29 09:56:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2430, 17, 247, '2022-08-29 09:56:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2431, 18, 247, '2022-08-29 09:56:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2432, 19, 247, '2022-08-29 09:56:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2433, 10, 247, '2022-08-29 09:56:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2435, 2, 248, '2022-08-29 10:06:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2436, 3, 248, '2022-08-29 10:06:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2437, 1, 249, '2022-08-29 10:09:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2438, 2, 249, '2022-08-29 10:09:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2439, 3, 249, '2022-08-29 10:09:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2440, 4, 249, '2022-08-29 10:09:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2441, 5, 249, '2022-08-29 10:09:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2442, 6, 249, '2022-08-29 10:09:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2443, 7, 249, '2022-08-29 10:09:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (2444, 8, 249, '2022-08-29 10:09:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2445, 9, 249, '2022-08-29 10:09:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2446, 10, 249, '2022-08-29 10:09:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2447, 1, 250, '2022-08-29 10:17:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2448, 2, 250, '2022-08-29 10:17:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2449, 13, 250, '2022-08-29 10:17:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2450, 4, 250, '2022-08-29 10:17:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2451, 5, 250, '2022-08-29 10:17:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2452, 16, 250, '2022-08-29 10:17:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2453, 17, 250, '2022-08-29 10:17:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2454, 18, 250, '2022-08-29 10:17:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2455, 19, 250, '2022-08-29 10:17:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2456, 10, 250, '2022-08-29 10:17:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2457, 11, 248, '2022-08-29 10:25:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2458, 18, 248, '2022-08-29 10:25:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2459, 2, 239, '2022-08-29 10:57:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2460, 14, 248, '2022-08-29 11:00:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2461, 5, 248, '2022-08-29 11:00:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2462, 16, 248, '2022-08-29 11:00:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2463, 17, 248, '2022-08-29 11:00:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2464, 19, 248, '2022-08-29 11:00:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2465, 20, 248, '2022-08-29 11:00:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2466, 1, 252, '2022-08-29 11:13:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (2467, 2, 252, '2022-08-29 11:13:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2468, 13, 252, '2022-08-29 11:13:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2469, 4, 252, '2022-08-29 11:13:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2470, 5, 252, '2022-08-29 11:13:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2471, 16, 252, '2022-08-29 11:13:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2472, 17, 252, '2022-08-29 11:13:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2473, 18, 252, '2022-08-29 11:13:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2474, 19, 252, '2022-08-29 11:13:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2476, 1, 251, '2022-08-29 11:44:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2477, 12, 251, '2022-08-29 11:44:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2478, 3, 251, '2022-08-29 11:44:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2479, 4, 251, '2022-08-29 11:44:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2480, 10, 252, '2022-08-29 11:44:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2481, 5, 251, '2022-08-29 11:44:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2482, 16, 251, '2022-08-29 11:44:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (2483, 17, 251, '2022-08-29 11:44:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2484, 18, 251, '2022-08-29 11:44:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2485, 19, 251, '2022-08-29 11:44:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2486, 20, 251, '2022-08-29 11:44:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2487, 1, 254, '2022-08-29 12:01:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2488, 2, 254, '2022-08-29 12:01:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2490, 3, 254, '2022-08-29 12:01:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2491, 4, 254, '2022-08-29 12:01:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2492, 5, 254, '2022-08-29 12:01:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2493, 16, 254, '2022-08-29 12:01:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2494, 17, 254, '2022-08-29 12:01:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2495, 18, 254, '2022-08-29 12:01:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2496, 9, 254, '2022-08-29 12:01:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (2497, 10, 254, '2022-08-29 12:01:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2498, 1, 256, '2022-08-29 12:40:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (2499, 12, 256, '2022-08-29 12:40:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2500, 3, 256, '2022-08-29 12:41:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (2501, 4, 256, '2022-08-29 12:41:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (2502, 5, 256, '2022-08-29 12:41:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2503, 16, 256, '2022-08-29 12:41:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2504, 17, 256, '2022-08-29 12:41:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2505, 18, 256, '2022-08-29 12:41:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2506, 19, 256, '2022-08-29 12:41:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2507, 20, 256, '2022-08-29 12:41:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2508, 1, 255, '2022-08-29 12:56:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2509, 2, 255, '2022-08-29 13:00:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2511, 4, 255, '2022-08-29 13:00:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2512, 15, 255, '2022-08-29 13:00:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2513, 16, 255, '2022-08-29 13:00:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2514, 17, 255, '2022-08-29 13:00:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2515, 18, 255, '2022-08-29 13:00:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2516, 19, 255, '2022-08-29 13:00:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (2517, 20, 255, '2022-08-29 13:00:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2519, 13, 255, '2022-08-29 13:01:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2520, 1, 257, '2022-08-29 13:40:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2521, 12, 257, '2022-08-29 13:40:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2522, 3, 257, '2022-08-29 13:40:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2523, 4, 257, '2022-08-29 13:40:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2524, 5, 257, '2022-08-29 13:41:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (2525, 16, 257, '2022-08-29 13:41:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2526, 17, 257, '2022-08-29 13:41:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (2527, 8, 257, '2022-08-29 13:41:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2528, 19, 257, '2022-08-29 13:41:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2529, 10, 257, '2022-08-29 13:41:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2530, 1, 258, '2022-08-29 13:57:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2531, 2, 258, '2022-08-29 13:57:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2532, 3, 258, '2022-08-29 13:57:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2533, 5, 258, '2022-08-29 13:57:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2534, 16, 258, '2022-08-29 13:57:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2535, 17, 258, '2022-08-29 13:57:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2536, 8, 258, '2022-08-29 13:58:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (2537, 19, 258, '2022-08-29 13:58:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (2539, 10, 258, '2022-08-29 13:58:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2540, 1, 259, '2022-08-29 14:31:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2541, 2, 259, '2022-08-29 14:31:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2542, 3, 259, '2022-08-29 14:31:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2543, 4, 259, '2022-08-29 14:31:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2544, 5, 259, '2022-08-29 14:31:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2545, 16, 259, '2022-08-29 14:31:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2546, 17, 259, '2022-08-29 14:34:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2547, 18, 259, '2022-08-29 14:34:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2548, 19, 259, '2022-08-29 14:34:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2549, 10, 259, '2022-08-29 14:34:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2550, 1, 260, '2022-08-29 14:52:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2551, 2, 260, '2022-08-29 14:52:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2552, 3, 260, '2022-08-29 14:53:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2553, 4, 260, '2022-08-29 14:53:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2554, 5, 260, '2022-08-29 14:53:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (2555, 16, 260, '2022-08-29 14:53:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2556, 17, 260, '2022-08-29 14:53:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2557, 18, 260, '2022-08-29 14:53:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2559, 19, 260, '2022-08-29 14:53:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2560, 10, 260, '2022-08-29 14:53:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2561, 21, 262, '2022-08-29 15:12:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2562, 22, 262, '2022-08-29 15:12:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2563, 23, 262, '2022-08-29 15:12:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2564, 24, 262, '2022-08-29 15:12:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2565, 25, 262, '2022-08-29 15:12:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2566, 26, 262, '2022-08-29 15:12:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2567, 27, 262, '2022-08-29 15:12:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2568, 28, 262, '2022-08-29 15:12:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2569, 29, 262, '2022-08-29 15:12:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2570, 30, 262, '2022-08-29 15:12:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2571, 31, 262, '2022-08-29 15:12:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2572, 21, 263, '2022-08-29 15:17:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2573, 22, 263, '2022-08-29 15:17:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2574, 23, 263, '2022-08-29 15:17:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2575, 24, 263, '2022-08-29 15:17:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2576, 25, 263, '2022-08-29 15:17:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2577, 26, 263, '2022-08-29 15:17:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2578, 27, 263, '2022-08-29 15:17:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2579, 28, 263, '2022-08-29 15:17:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2580, 29, 263, '2022-08-29 15:17:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2581, 30, 263, '2022-08-29 15:17:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2582, 31, 263, '2022-08-29 15:17:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2583, 1, 261, '2022-08-29 15:24:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2584, 2, 261, '2022-08-29 15:24:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2585, 3, 261, '2022-08-29 15:24:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2586, 4, 261, '2022-08-29 15:24:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2587, 5, 261, '2022-08-29 15:24:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2588, 16, 261, '2022-08-29 15:24:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (2589, 17, 261, '2022-08-29 15:24:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2590, 18, 261, '2022-08-29 15:24:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2591, 19, 261, '2022-08-29 15:24:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2592, 10, 261, '2022-08-29 15:24:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2593, 21, 265, '2022-08-29 15:27:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2594, 22, 265, '2022-08-29 15:27:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2595, 23, 265, '2022-08-29 15:27:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2596, 24, 265, '2022-08-29 15:27:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2597, 25, 265, '2022-08-29 15:27:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2598, 26, 265, '2022-08-29 15:27:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2599, 27, 265, '2022-08-29 15:27:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2600, 28, 265, '2022-08-29 15:27:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2601, 29, 265, '2022-08-29 15:27:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2602, 30, 265, '2022-08-29 15:27:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2603, 31, 265, '2022-08-29 15:27:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2604, 21, 266, '2022-08-29 15:29:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2605, 22, 266, '2022-08-29 15:29:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2606, 23, 266, '2022-08-29 15:29:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2607, 24, 266, '2022-08-29 15:29:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2608, 25, 266, '2022-08-29 15:29:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2609, 26, 266, '2022-08-29 15:29:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (2610, 27, 266, '2022-08-29 15:29:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2611, 28, 266, '2022-08-29 15:29:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2612, 29, 266, '2022-08-29 15:29:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2613, 30, 266, '2022-08-29 15:29:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2614, 31, 266, '2022-08-29 15:29:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2615, 21, 267, '2022-08-29 15:31:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2616, 22, 267, '2022-08-29 15:31:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (2617, 23, 267, '2022-08-29 15:31:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2618, 24, 267, '2022-08-29 15:31:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2619, 25, 267, '2022-08-29 15:31:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2620, 26, 267, '2022-08-29 15:31:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2621, 27, 267, '2022-08-29 15:31:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2622, 28, 267, '2022-08-29 15:31:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2623, 29, 267, '2022-08-29 15:31:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2624, 30, 267, '2022-08-29 15:31:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2625, 31, 267, '2022-08-29 15:31:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2626, 1, 268, '2022-08-29 15:37:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2627, 2, 268, '2022-08-29 15:37:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2628, 3, 268, '2022-08-29 15:37:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2629, 4, 268, '2022-08-29 15:37:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2630, 5, 268, '2022-08-29 15:37:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2631, 16, 268, '2022-08-29 15:37:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2632, 17, 268, '2022-08-29 15:37:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2633, 18, 268, '2022-08-29 15:37:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2634, 19, 268, '2022-08-29 15:37:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2635, 10, 268, '2022-08-29 15:37:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2636, 1, 264, '2022-08-29 15:43:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2637, 2, 264, '2022-08-29 15:43:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2638, 3, 264, '2022-08-29 15:43:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2639, 4, 264, '2022-08-29 15:48:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2640, 5, 264, '2022-08-29 15:48:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2642, 16, 264, '2022-08-29 15:48:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2643, 17, 264, '2022-08-29 15:49:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2644, 18, 264, '2022-08-29 15:49:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2645, 19, 264, '2022-08-29 15:49:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2646, 20, 264, '2022-08-29 15:49:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2647, 1, 269, '2022-08-29 16:05:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2648, 12, 269, '2022-08-29 16:05:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2649, 3, 269, '2022-08-29 16:06:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (2650, 4, 269, '2022-08-29 16:06:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2651, 5, 269, '2022-08-29 16:06:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2652, 16, 269, '2022-08-29 16:06:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2653, 17, 269, '2022-08-29 16:06:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2654, 18, 269, '2022-08-29 16:06:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2655, 19, 269, '2022-08-29 16:06:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2656, 20, 269, '2022-08-29 16:06:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2657, 1, 270, '2022-08-29 16:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2658, 2, 270, '2022-08-29 16:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2659, 13, 270, '2022-08-29 16:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2660, 11, 271, '2022-08-29 16:12:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2661, 12, 271, '2022-08-29 16:12:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2662, 3, 271, '2022-08-29 16:12:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2663, 4, 271, '2022-08-29 16:12:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2664, 15, 271, '2022-08-29 16:12:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2665, 16, 271, '2022-08-29 16:12:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2666, 17, 271, '2022-08-29 16:12:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2667, 8, 271, '2022-08-29 16:12:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2668, 19, 271, '2022-08-29 16:12:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (2669, 20, 271, '2022-08-29 16:12:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2670, 4, 270, '2022-08-29 16:16:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2671, 5, 270, '2022-08-29 16:16:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2672, 16, 270, '2022-08-29 16:16:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2673, 17, 270, '2022-08-29 16:16:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2674, 18, 270, '2022-08-29 16:16:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2675, 19, 270, '2022-08-29 16:16:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2676, 10, 270, '2022-08-29 16:16:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2677, 1, 273, '2022-08-29 16:31:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2678, 12, 273, '2022-08-29 16:31:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2679, 3, 273, '2022-08-29 16:31:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2680, 4, 273, '2022-08-29 16:31:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2681, 5, 273, '2022-08-29 16:31:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2682, 16, 273, '2022-08-29 16:31:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2683, 17, 273, '2022-08-29 16:31:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2684, 18, 273, '2022-08-29 16:31:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2685, 19, 273, '2022-08-29 16:31:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2686, 20, 273, '2022-08-29 16:31:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2687, 1, 276, '2022-08-29 17:13:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2688, 2, 276, '2022-08-29 17:13:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2690, 13, 276, '2022-08-29 17:13:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2691, 4, 276, '2022-08-29 17:13:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2692, 5, 276, '2022-08-29 17:13:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2693, 16, 276, '2022-08-29 17:13:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2694, 17, 276, '2022-08-29 17:13:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2695, 1, 277, '2022-08-29 17:13:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2696, 2, 277, '2022-08-29 17:13:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2697, 18, 276, '2022-08-29 17:13:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2698, 3, 277, '2022-08-29 17:13:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2699, 4, 277, '2022-08-29 17:13:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2700, 5, 277, '2022-08-29 17:13:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2701, 9, 276, '2022-08-29 17:13:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2702, 16, 277, '2022-08-29 17:13:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2703, 10, 276, '2022-08-29 17:13:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2704, 17, 277, '2022-08-29 17:13:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2705, 18, 277, '2022-08-29 17:13:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2706, 19, 277, '2022-08-29 17:14:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (2707, 10, 277, '2022-08-29 17:14:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2708, 1, 278, '2022-08-29 17:15:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2709, 2, 278, '2022-08-29 17:15:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2710, 3, 278, '2022-08-29 17:15:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2711, 4, 278, '2022-08-29 17:15:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2712, 5, 278, '2022-08-29 17:15:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2714, 16, 278, '2022-08-29 17:15:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2717, 17, 278, '2022-08-29 17:15:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2718, 18, 278, '2022-08-29 17:15:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2719, 19, 278, '2022-08-29 17:15:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2720, 10, 278, '2022-08-29 17:15:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2721, 1, 275, '2022-08-29 17:19:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2722, 2, 275, '2022-08-29 17:19:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2723, 3, 275, '2022-08-29 17:19:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2724, 4, 275, '2022-08-29 17:20:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (2725, 5, 275, '2022-08-29 17:20:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (2726, 16, 275, '2022-08-29 17:20:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2727, 17, 275, '2022-08-29 17:20:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2729, 18, 275, '2022-08-29 17:20:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2730, 19, 275, '2022-08-29 17:20:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (2731, 10, 275, '2022-08-29 17:20:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (2732, 71, 279, '2022-08-29 17:22:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2733, 72, 279, '2022-08-29 17:22:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2734, 73, 279, '2022-08-29 17:22:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2735, 74, 279, '2022-08-29 17:22:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2736, 65, 279, '2022-08-29 17:23:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2737, 66, 279, '2022-08-29 17:23:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2738, 77, 279, '2022-08-29 17:23:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2739, 68, 279, '2022-08-29 17:23:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2740, 79, 279, '2022-08-29 17:23:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2741, 80, 279, '2022-08-29 17:23:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2742, 61, 281, '2022-08-29 17:28:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2743, 72, 281, '2022-08-29 17:28:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2744, 63, 281, '2022-08-29 17:28:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2745, 74, 281, '2022-08-29 17:28:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2746, 65, 281, '2022-08-29 17:28:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2747, 1, 280, '2022-08-29 17:28:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2748, 2, 280, '2022-08-29 17:28:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (2749, 76, 281, '2022-08-29 17:28:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2750, 3, 280, '2022-08-29 17:28:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2751, 77, 281, '2022-08-29 17:28:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2752, 78, 281, '2022-08-29 17:28:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2753, 79, 281, '2022-08-29 17:28:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2754, 4, 280, '2022-08-29 17:28:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2755, 5, 280, '2022-08-29 17:28:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2756, 80, 281, '2022-08-29 17:28:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (2757, 16, 280, '2022-08-29 17:29:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (2758, 17, 280, '2022-08-29 17:29:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (2759, 18, 280, '2022-08-29 17:29:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2760, 19, 280, '2022-08-29 17:29:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2761, 10, 280, '2022-08-29 17:29:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2762, 61, 282, '2022-08-29 17:32:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (2763, 62, 282, '2022-08-29 17:32:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2764, 63, 282, '2022-08-29 17:32:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2765, 74, 282, '2022-08-29 17:32:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2766, 65, 282, '2022-08-29 17:32:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2767, 76, 282, '2022-08-29 17:32:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2768, 67, 282, '2022-08-29 17:32:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2769, 68, 282, '2022-08-29 17:32:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2771, 70, 282, '2022-08-29 17:33:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2772, 69, 282, '2022-08-29 17:33:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2773, 61, 284, '2022-08-29 17:35:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2774, 72, 284, '2022-08-29 17:35:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2775, 73, 284, '2022-08-29 17:35:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2776, 74, 284, '2022-08-29 17:35:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2777, 65, 284, '2022-08-29 17:35:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2778, 76, 284, '2022-08-29 17:35:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (2779, 77, 284, '2022-08-29 17:36:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2780, 68, 284, '2022-08-29 17:41:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2781, 69, 284, '2022-08-29 17:41:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2782, 70, 284, '2022-08-29 17:41:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2783, 61, 285, '2022-08-29 17:44:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (2784, 72, 285, '2022-08-29 17:44:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2785, 63, 285, '2022-08-29 17:44:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2787, 1, 283, '2022-08-29 17:45:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2788, 2, 283, '2022-08-29 17:45:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2789, 3, 283, '2022-08-29 17:45:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2790, 4, 283, '2022-08-29 17:45:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2791, 65, 285, '2022-08-29 17:45:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2792, 74, 285, '2022-08-29 17:45:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2793, 66, 285, '2022-08-29 17:45:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2794, 67, 285, '2022-08-29 17:45:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2795, 68, 285, '2022-08-29 17:45:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (2796, 69, 285, '2022-08-29 17:45:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (2797, 70, 285, '2022-08-29 17:47:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (2798, 5, 283, '2022-08-29 17:49:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2799, 16, 283, '2022-08-29 17:49:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2800, 17, 283, '2022-08-29 17:49:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2801, 18, 283, '2022-08-29 17:49:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2802, 19, 283, '2022-08-29 17:49:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2803, 10, 283, '2022-08-29 17:49:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2804, 1, 287, '2022-08-29 18:42:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2806, 2, 287, '2022-08-29 18:42:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2807, 3, 287, '2022-08-29 18:42:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2808, 4, 287, '2022-08-29 18:42:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2809, 5, 287, '2022-08-29 18:42:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2810, 16, 287, '2022-08-29 18:42:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2811, 17, 287, '2022-08-29 18:42:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2812, 18, 287, '2022-08-29 18:42:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2813, 19, 287, '2022-08-29 18:42:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2814, 10, 287, '2022-08-29 18:42:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2815, 1, 288, '2022-08-29 18:58:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (2816, 2, 288, '2022-08-29 18:58:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2817, 13, 288, '2022-08-29 18:58:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (2819, 4, 288, '2022-08-29 18:58:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2820, 5, 288, '2022-08-29 18:58:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2821, 16, 288, '2022-08-29 18:58:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2822, 17, 288, '2022-08-29 18:58:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2823, 18, 288, '2022-08-29 18:58:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2824, 19, 288, '2022-08-29 18:58:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2825, 10, 288, '2022-08-29 18:58:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2826, 1, 289, '2022-08-29 19:10:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2827, 2, 289, '2022-08-29 19:10:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2828, 13, 289, '2022-08-29 19:10:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2829, 4, 289, '2022-08-29 19:10:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (2830, 5, 289, '2022-08-29 19:10:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2831, 16, 289, '2022-08-29 19:10:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2832, 17, 289, '2022-08-29 19:10:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2833, 18, 289, '2022-08-29 19:10:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2834, 19, 289, '2022-08-29 19:10:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2835, 10, 289, '2022-08-29 19:10:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2836, 1, 290, '2022-08-29 19:22:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2837, 2, 290, '2022-08-29 19:22:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2838, 13, 290, '2022-08-29 19:22:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (2839, 4, 290, '2022-08-29 19:22:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2840, 5, 290, '2022-08-29 19:22:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2841, 16, 290, '2022-08-29 19:22:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (2842, 17, 290, '2022-08-29 19:22:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2843, 18, 290, '2022-08-29 19:22:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2844, 19, 290, '2022-08-29 19:22:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2845, 10, 290, '2022-08-29 19:22:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2846, 1, 291, '2022-08-29 19:33:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (2847, 2, 291, '2022-08-29 19:33:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2848, 3, 291, '2022-08-29 19:33:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2849, 4, 291, '2022-08-29 19:33:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2850, 5, 291, '2022-08-29 19:33:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2851, 16, 291, '2022-08-29 19:33:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2852, 17, 291, '2022-08-29 19:33:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2853, 18, 291, '2022-08-29 19:33:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2854, 19, 291, '2022-08-29 19:33:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2855, 10, 291, '2022-08-29 19:33:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (2856, 1, 292, '2022-08-29 19:54:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2857, 2, 292, '2022-08-29 19:54:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2858, 3, 292, '2022-08-29 19:54:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2859, 4, 292, '2022-08-29 19:54:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (2860, 5, 292, '2022-08-29 19:54:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (2861, 16, 292, '2022-08-29 20:02:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2862, 17, 292, '2022-08-29 20:02:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2863, 18, 292, '2022-08-29 20:02:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2864, 19, 292, '2022-08-29 20:02:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2865, 10, 292, '2022-08-29 20:02:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2866, 1, 293, '2022-08-31 11:05:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2867, 2, 293, '2022-08-31 11:05:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2868, 3, 293, '2022-08-31 11:05:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2869, 14, 293, '2022-08-31 11:05:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (2870, 5, 293, '2022-08-31 11:05:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2871, 16, 293, '2022-08-31 11:05:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2872, 7, 293, '2022-08-31 11:05:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2873, 8, 293, '2022-08-31 11:05:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2874, 9, 293, '2022-08-31 11:05:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (2875, 10, 293, '2022-08-31 11:05:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2876, 1, 294, '2022-08-31 11:44:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (2877, 2, 294, '2022-08-31 11:44:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2878, 3, 294, '2022-08-31 11:44:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (2879, 4, 294, '2022-08-31 11:44:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2880, 5, 294, '2022-08-31 11:44:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2881, 16, 294, '2022-08-31 11:44:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2882, 17, 294, '2022-08-31 11:44:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (2883, 18, 294, '2022-08-31 11:49:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2884, 19, 294, '2022-08-31 11:49:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2885, 10, 294, '2022-08-31 11:49:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2886, 1, 295, '2022-08-31 12:05:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2887, 2, 295, '2022-08-31 12:05:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (2888, 3, 295, '2022-08-31 12:05:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2889, 4, 295, '2022-08-31 12:05:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2890, 5, 295, '2022-08-31 12:05:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2891, 16, 295, '2022-08-31 12:05:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2892, 17, 295, '2022-08-31 12:05:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2893, 18, 295, '2022-08-31 12:05:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2894, 19, 295, '2022-08-31 12:05:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (2895, 10, 295, '2022-08-31 12:05:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2896, 1, 296, '2022-08-31 12:34:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (2897, 2, 296, '2022-08-31 12:34:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2898, 3, 296, '2022-08-31 12:34:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2899, 4, 296, '2022-08-31 12:34:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2900, 5, 296, '2022-08-31 12:34:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2901, 16, 296, '2022-08-31 12:34:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2902, 17, 296, '2022-08-31 12:34:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2903, 18, 296, '2022-08-31 12:34:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (2904, 19, 296, '2022-08-31 12:34:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2905, 10, 296, '2022-08-31 12:34:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (2906, 1, 297, '2022-08-31 12:41:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2908, 3, 297, '2022-08-31 12:41:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2909, 4, 297, '2022-08-31 12:41:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2910, 2, 297, '2022-08-31 12:48:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2911, 5, 297, '2022-08-31 12:48:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2912, 6, 297, '2022-08-31 12:48:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2913, 17, 297, '2022-08-31 12:48:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2914, 18, 297, '2022-08-31 12:48:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2915, 19, 297, '2022-08-31 12:48:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (2916, 10, 297, '2022-08-31 12:48:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2917, 1, 299, '2022-08-31 14:21:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2918, 2, 299, '2022-08-31 14:21:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2919, 3, 299, '2022-08-31 14:21:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (2920, 4, 299, '2022-08-31 14:21:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2921, 5, 299, '2022-08-31 14:21:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2922, 16, 299, '2022-08-31 14:22:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (2923, 17, 299, '2022-08-31 14:22:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2924, 18, 299, '2022-08-31 14:22:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (2925, 19, 299, '2022-08-31 14:22:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (2927, 10, 299, '2022-08-31 14:22:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2928, 1, 300, '2022-08-31 14:34:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2929, 2, 300, '2022-08-31 14:34:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2930, 3, 300, '2022-08-31 14:34:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2931, 4, 300, '2022-08-31 14:35:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (2932, 5, 300, '2022-08-31 14:35:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (2933, 16, 300, '2022-08-31 14:35:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2934, 17, 300, '2022-08-31 14:35:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (2935, 18, 300, '2022-08-31 14:35:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2936, 19, 300, '2022-08-31 14:35:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2937, 10, 300, '2022-08-31 14:35:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (2938, 1, 301, '2022-08-31 14:56:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (2939, 2, 301, '2022-08-31 14:56:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (2940, 3, 301, '2022-08-31 14:56:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2941, 4, 301, '2022-08-31 14:56:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (2942, 5, 301, '2022-08-31 14:56:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2943, 16, 301, '2022-08-31 14:56:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (2944, 17, 301, '2022-08-31 14:56:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2945, 18, 301, '2022-08-31 14:56:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2946, 19, 301, '2022-08-31 14:56:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (2947, 10, 301, '2022-08-31 14:56:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (2948, 1, 302, '2022-08-31 15:15:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (2949, 2, 302, '2022-08-31 15:15:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2950, 3, 302, '2022-08-31 15:15:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2951, 4, 302, '2022-08-31 15:15:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (2952, 5, 302, '2022-08-31 15:15:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2953, 16, 302, '2022-08-31 15:15:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2955, 17, 302, '2022-08-31 15:16:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (2956, 18, 302, '2022-08-31 15:16:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2957, 19, 302, '2022-08-31 15:16:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (2958, 10, 302, '2022-08-31 15:16:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (2959, 11, 303, '2022-08-31 15:44:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (2960, 12, 303, '2022-08-31 15:44:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (2961, 3, 303, '2022-08-31 15:44:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (2962, 4, 303, '2022-08-31 15:44:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (2963, 5, 303, '2022-08-31 15:44:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (2964, 16, 303, '2022-08-31 15:44:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (2965, 17, 303, '2022-08-31 15:44:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (2966, 8, 303, '2022-08-31 15:44:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (2967, 19, 303, '2022-08-31 15:44:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2968, 20, 303, '2022-08-31 15:44:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2969, 1, 305, '2022-08-31 15:52:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (2970, 1, 306, '2022-08-31 15:54:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (2971, 2, 306, '2022-08-31 15:55:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (2972, 2, 305, '2022-08-31 15:56:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (2973, 3, 305, '2022-08-31 15:56:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2974, 4, 305, '2022-08-31 15:56:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (2975, 5, 305, '2022-08-31 15:56:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (2976, 16, 305, '2022-08-31 15:56:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (2977, 7, 305, '2022-08-31 15:56:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2978, 8, 305, '2022-08-31 15:56:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (2979, 9, 305, '2022-08-31 15:57:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (2980, 10, 305, '2022-08-31 15:57:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (2981, 13, 306, '2022-08-31 15:59:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (2982, 4, 306, '2022-08-31 15:59:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (2983, 5, 306, '2022-08-31 15:59:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (2988, 10, 306, '2022-08-31 15:59:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (2989, 16, 306, '2022-08-31 15:59:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (2990, 17, 306, '2022-08-31 15:59:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (2991, 18, 306, '2022-08-31 15:59:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (2992, 19, 306, '2022-08-31 15:59:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (2993, 1, 307, '2022-08-31 16:09:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2994, 2, 307, '2022-08-31 16:09:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (2995, 3, 307, '2022-08-31 16:09:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (2996, 4, 307, '2022-08-31 16:09:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (2998, 5, 307, '2022-08-31 16:09:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (2999, 16, 307, '2022-08-31 16:09:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3000, 17, 307, '2022-08-31 16:09:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3002, 18, 307, '2022-08-31 16:09:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3003, 19, 307, '2022-08-31 16:09:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3005, 10, 307, '2022-08-31 16:09:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3006, 1, 309, '2022-08-31 16:14:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3007, 2, 309, '2022-08-31 16:14:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3008, 3, 309, '2022-08-31 16:14:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3009, 4, 309, '2022-08-31 16:14:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3010, 5, 309, '2022-08-31 16:14:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3012, 7, 309, '2022-08-31 16:21:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3014, 9, 309, '2022-08-31 16:21:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3015, 10, 309, '2022-08-31 16:21:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3016, 16, 309, '2022-08-31 16:21:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3017, 18, 309, '2022-08-31 16:24:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3018, 1, 310, '2022-08-31 16:46:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3019, 12, 310, '2022-08-31 16:46:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3020, 13, 310, '2022-08-31 16:46:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3021, 4, 310, '2022-08-31 16:46:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3022, 5, 310, '2022-08-31 16:46:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3023, 16, 310, '2022-08-31 16:46:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3024, 17, 310, '2022-08-31 16:46:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (3025, 8, 310, '2022-08-31 16:46:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (3026, 19, 310, '2022-08-31 16:46:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3027, 10, 310, '2022-08-31 16:46:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3028, 1, 308, '2022-08-31 16:54:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3029, 2, 308, '2022-08-31 16:54:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3030, 3, 308, '2022-08-31 16:54:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3031, 4, 308, '2022-08-31 16:54:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3032, 5, 308, '2022-08-31 16:54:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3033, 16, 308, '2022-08-31 16:54:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3034, 17, 308, '2022-08-31 16:54:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3035, 18, 308, '2022-08-31 16:54:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3036, 19, 308, '2022-08-31 16:54:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3037, 10, 308, '2022-08-31 16:54:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3038, 1, 311, '2022-08-31 17:19:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3039, 2, 311, '2022-08-31 17:19:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3040, 3, 311, '2022-08-31 17:19:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3043, 4, 311, '2022-08-31 17:20:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (3044, 5, 311, '2022-08-31 17:20:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3045, 16, 311, '2022-08-31 17:20:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3046, 17, 311, '2022-08-31 17:20:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3047, 18, 311, '2022-08-31 17:20:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3048, 19, 311, '2022-08-31 17:20:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3049, 10, 311, '2022-08-31 17:20:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3050, 1, 312, '2022-08-31 17:27:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3051, 12, 312, '2022-08-31 17:27:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (3053, 13, 312, '2022-08-31 17:27:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3055, 4, 312, '2022-08-31 17:29:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (3056, 5, 312, '2022-08-31 17:29:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3057, 16, 312, '2022-08-31 17:29:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3058, 17, 312, '2022-08-31 17:29:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3059, 8, 312, '2022-08-31 17:29:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3060, 19, 312, '2022-08-31 17:29:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3061, 20, 312, '2022-08-31 17:29:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3062, 1, 313, '2022-08-31 17:32:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (3063, 2, 313, '2022-08-31 17:32:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3064, 3, 313, '2022-08-31 17:32:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (3065, 4, 313, '2022-08-31 17:32:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3066, 5, 313, '2022-08-31 17:32:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3067, 16, 313, '2022-08-31 17:32:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3068, 17, 313, '2022-08-31 17:32:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3069, 18, 313, '2022-08-31 17:32:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3070, 19, 313, '2022-08-31 17:32:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3071, 10, 313, '2022-08-31 17:32:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3072, 1, 314, '2022-08-31 17:58:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3073, 2, 314, '2022-08-31 17:58:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3074, 3, 314, '2022-08-31 17:58:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3075, 4, 314, '2022-08-31 17:59:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3076, 5, 314, '2022-08-31 17:59:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3077, 16, 314, '2022-08-31 17:59:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3078, 17, 314, '2022-08-31 17:59:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3079, 18, 314, '2022-08-31 17:59:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3080, 19, 314, '2022-08-31 17:59:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (3081, 10, 314, '2022-08-31 17:59:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3082, 1, 316, '2022-09-01 16:57:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3083, 2, 316, '2022-09-01 16:57:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3084, 3, 316, '2022-09-01 16:57:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3085, 4, 316, '2022-09-01 16:57:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3086, 5, 316, '2022-09-01 16:57:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3087, 16, 316, '2022-09-01 16:57:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3088, 17, 316, '2022-09-01 16:57:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3089, 18, 316, '2022-09-01 16:57:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3090, 19, 316, '2022-09-01 16:57:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3092, 10, 316, '2022-09-01 16:57:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3093, 1, 317, '2022-09-01 17:25:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3094, 2, 317, '2022-09-01 17:25:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3095, 3, 317, '2022-09-01 17:25:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3096, 4, 317, '2022-09-01 17:25:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3097, 5, 317, '2022-09-01 17:25:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3098, 16, 317, '2022-09-01 17:25:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3099, 17, 317, '2022-09-01 17:25:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (3100, 18, 317, '2022-09-01 17:25:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3101, 19, 317, '2022-09-01 17:25:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3102, 10, 317, '2022-09-01 17:25:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3103, 1, 318, '2022-09-01 17:46:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3104, 2, 318, '2022-09-01 17:46:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3105, 3, 318, '2022-09-01 17:46:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (3106, 4, 318, '2022-09-01 17:46:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3107, 5, 318, '2022-09-01 17:46:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3108, 16, 318, '2022-09-01 17:46:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3109, 17, 318, '2022-09-01 17:46:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (3110, 18, 318, '2022-09-01 17:46:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3111, 19, 318, '2022-09-01 17:46:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3112, 10, 318, '2022-09-01 17:46:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3113, 1, 320, '2022-09-01 18:22:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3114, 3, 320, '2022-09-01 18:22:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3115, 5, 320, '2022-09-01 18:22:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3118, 2, 320, '2022-09-01 18:23:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (3119, 8, 320, '2022-09-01 18:24:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (3121, 10, 320, '2022-09-01 18:26:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3122, 4, 320, '2022-09-01 18:35:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3123, 1, 321, '2022-09-01 18:39:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3124, 2, 321, '2022-09-01 18:39:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3125, 3, 321, '2022-09-01 18:39:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3126, 5, 321, '2022-09-01 18:40:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3130, 8, 321, '2022-09-01 18:40:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (3131, 9, 321, '2022-09-01 18:40:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3132, 10, 321, '2022-09-01 18:40:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3133, 4, 321, '2022-09-01 18:43:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3134, 1, 319, '2022-09-01 18:47:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3135, 2, 319, '2022-09-01 18:47:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3136, 1, 322, '2022-09-01 18:50:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3137, 12, 322, '2022-09-01 18:50:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3138, 3, 322, '2022-09-01 18:50:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3139, 5, 322, '2022-09-01 18:50:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3140, 6, 322, '2022-09-01 18:50:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3141, 17, 322, '2022-09-01 18:50:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3142, 8, 322, '2022-09-01 18:51:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3143, 9, 322, '2022-09-01 18:51:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3144, 10, 322, '2022-09-01 18:51:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3145, 3, 319, '2022-09-01 18:51:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3146, 4, 319, '2022-09-01 18:51:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3147, 5, 319, '2022-09-01 18:51:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3148, 16, 319, '2022-09-01 18:51:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3149, 17, 319, '2022-09-01 18:51:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3150, 18, 319, '2022-09-01 18:51:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3151, 19, 319, '2022-09-01 18:51:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3152, 10, 319, '2022-09-01 18:51:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3153, 4, 322, '2022-09-01 18:59:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3154, 1, 324, '2022-09-01 19:03:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3155, 12, 324, '2022-09-01 19:03:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3156, 3, 324, '2022-09-01 19:03:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3157, 14, 324, '2022-09-01 19:03:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3158, 5, 324, '2022-09-01 19:03:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3159, 6, 324, '2022-09-01 19:03:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3160, 17, 324, '2022-09-01 19:03:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3161, 18, 324, '2022-09-01 19:03:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3162, 19, 324, '2022-09-01 19:03:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (3163, 20, 324, '2022-09-01 19:03:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3164, 1, 325, '2022-09-02 09:25:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3165, 2, 325, '2022-09-02 09:25:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3166, 3, 325, '2022-09-02 09:25:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3167, 4, 325, '2022-09-02 09:25:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3168, 5, 325, '2022-09-02 09:25:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3169, 16, 325, '2022-09-02 09:25:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3170, 17, 325, '2022-09-02 09:28:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3171, 18, 325, '2022-09-02 09:28:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3172, 19, 325, '2022-09-02 09:28:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3174, 10, 325, '2022-09-02 09:29:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3175, 1, 326, '2022-09-02 10:24:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3176, 2, 326, '2022-09-02 10:24:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3177, 3, 326, '2022-09-02 10:24:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3178, 4, 326, '2022-09-02 10:24:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3179, 5, 326, '2022-09-02 10:24:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3180, 16, 326, '2022-09-02 10:24:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3181, 17, 326, '2022-09-02 10:25:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3182, 18, 326, '2022-09-02 10:25:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3183, 19, 326, '2022-09-02 10:25:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3184, 10, 326, '2022-09-02 10:25:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3185, 17, 321, '2022-09-02 10:34:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3186, 16, 321, '2022-09-02 10:34:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3187, 17, 320, '2022-09-02 10:45:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3188, 19, 320, '2022-09-02 10:46:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (3189, 16, 320, '2022-09-02 10:46:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3190, 1, 328, '2022-09-02 10:53:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3191, 12, 328, '2022-09-02 10:53:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3192, 13, 328, '2022-09-02 10:53:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3193, 14, 328, '2022-09-02 10:53:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3194, 5, 328, '2022-09-02 10:53:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3195, 16, 328, '2022-09-02 10:53:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3196, 17, 328, '2022-09-02 10:53:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3197, 18, 328, '2022-09-02 10:53:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3198, 19, 328, '2022-09-02 10:53:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3199, 20, 328, '2022-09-02 10:54:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3200, 1, 329, '2022-09-02 10:57:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3201, 2, 329, '2022-09-02 10:57:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3202, 3, 329, '2022-09-02 10:57:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3203, 19, 329, '2022-09-02 10:57:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3204, 18, 329, '2022-09-02 10:57:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3205, 17, 329, '2022-09-02 10:57:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3206, 16, 329, '2022-09-02 10:57:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3207, 5, 329, '2022-09-02 10:57:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3208, 4, 329, '2022-09-02 10:58:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3209, 20, 329, '2022-09-02 10:58:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3210, 1, 330, '2022-09-02 11:01:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (3211, 2, 330, '2022-09-02 11:01:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3212, 3, 330, '2022-09-02 11:01:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3213, 6, 330, '2022-09-02 11:01:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (3214, 17, 330, '2022-09-02 11:01:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3215, 18, 330, '2022-09-02 11:01:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (3216, 19, 330, '2022-09-02 11:01:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3217, 20, 330, '2022-09-02 11:01:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3218, 5, 330, '2022-09-02 11:01:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3219, 4, 330, '2022-09-02 11:02:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3220, 11, 331, '2022-09-02 11:04:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3221, 12, 331, '2022-09-02 11:04:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3222, 13, 331, '2022-09-02 11:04:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3223, 14, 331, '2022-09-02 11:04:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3224, 15, 331, '2022-09-02 11:04:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3225, 16, 331, '2022-09-02 11:04:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3226, 17, 331, '2022-09-02 11:04:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (3227, 18, 331, '2022-09-02 11:04:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3228, 19, 331, '2022-09-02 11:04:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (3229, 20, 331, '2022-09-02 11:04:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3230, 11, 332, '2022-09-02 11:07:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (3231, 12, 332, '2022-09-02 11:07:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3232, 13, 332, '2022-09-02 11:07:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3233, 14, 332, '2022-09-02 11:07:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3234, 5, 332, '2022-09-02 11:07:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3235, 16, 332, '2022-09-02 11:07:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3236, 17, 332, '2022-09-02 11:07:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3237, 18, 332, '2022-09-02 11:07:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (3238, 19, 332, '2022-09-02 11:07:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3239, 20, 332, '2022-09-02 11:07:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3240, 1, 333, '2022-09-02 11:11:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3242, 3, 333, '2022-09-02 11:11:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3243, 4, 333, '2022-09-02 11:11:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3244, 5, 333, '2022-09-02 11:11:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3245, 6, 333, '2022-09-02 11:11:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3246, 17, 333, '2022-09-02 11:11:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3247, 8, 333, '2022-09-02 11:11:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3249, 10, 333, '2022-09-02 11:11:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3250, 12, 333, '2022-09-02 11:12:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3251, 19, 333, '2022-09-02 11:13:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3252, 1, 327, '2022-09-02 11:35:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (3253, 2, 327, '2022-09-02 11:35:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (3254, 3, 327, '2022-09-02 11:35:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (3255, 4, 327, '2022-09-02 11:35:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (3256, 5, 327, '2022-09-02 11:35:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3257, 16, 327, '2022-09-02 11:35:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (3258, 17, 327, '2022-09-02 11:35:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (3259, 18, 327, '2022-09-02 11:35:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3260, 19, 327, '2022-09-02 11:35:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3261, 10, 327, '2022-09-02 11:35:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3262, 11, 335, '2022-09-02 11:46:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3263, 2, 335, '2022-09-02 11:46:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (3264, 3, 335, '2022-09-02 11:46:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3265, 5, 335, '2022-09-02 11:46:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3267, 7, 335, '2022-09-02 11:52:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3268, 8, 335, '2022-09-02 11:52:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3269, 9, 335, '2022-09-02 11:52:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3270, 10, 335, '2022-09-02 11:53:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3271, 16, 335, '2022-09-02 11:53:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3272, 4, 335, '2022-09-02 12:01:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3273, 1, 336, '2022-09-02 12:09:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3274, 2, 336, '2022-09-02 12:09:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3275, 5, 336, '2022-09-02 12:09:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3276, 3, 336, '2022-09-02 12:09:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3277, 6, 336, '2022-09-02 12:10:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3278, 9, 336, '2022-09-02 12:12:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3279, 8, 336, '2022-09-02 12:12:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3280, 10, 336, '2022-09-02 12:12:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (3282, 4, 336, '2022-09-02 12:13:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3283, 17, 336, '2022-09-02 12:14:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3284, 11, 337, '2022-09-02 12:16:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3285, 7, 337, '2022-09-02 12:18:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3286, 6, 337, '2022-09-02 12:18:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3287, 5, 337, '2022-09-02 12:18:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3289, 3, 337, '2022-09-02 12:30:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (3290, 8, 337, '2022-09-02 12:30:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3291, 9, 337, '2022-09-02 12:30:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3292, 10, 337, '2022-09-02 12:34:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (3293, 12, 337, '2022-09-02 12:35:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3294, 4, 337, '2022-09-02 12:35:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3295, 1, 338, '2022-09-02 12:52:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (3296, 2, 338, '2022-09-02 12:52:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3298, 3, 338, '2022-09-02 12:54:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3300, 14, 338, '2022-09-02 14:36:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3301, 15, 338, '2022-09-02 14:36:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3302, 16, 338, '2022-09-02 14:36:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3303, 17, 338, '2022-09-02 14:36:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3304, 18, 338, '2022-09-02 14:37:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3305, 19, 338, '2022-09-02 14:37:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3306, 20, 338, '2022-09-02 14:37:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (3307, 1, 339, '2022-09-02 16:29:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3308, 2, 339, '2022-09-02 16:29:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3309, 3, 339, '2022-09-02 16:29:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (3310, 4, 339, '2022-09-02 16:29:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3311, 5, 339, '2022-09-02 16:29:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3313, 16, 339, '2022-09-02 16:29:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3314, 17, 339, '2022-09-02 16:29:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3315, 18, 339, '2022-09-02 16:29:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3317, 19, 339, '2022-09-02 16:29:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3318, 10, 339, '2022-09-02 16:29:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3319, 1, 340, '2022-09-02 17:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3320, 2, 340, '2022-09-02 17:08:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3321, 3, 340, '2022-09-02 17:08:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3322, 4, 340, '2022-09-02 17:08:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3324, 16, 340, '2022-09-02 17:08:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3325, 5, 340, '2022-09-02 17:08:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (3326, 17, 340, '2022-09-02 17:08:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3327, 18, 340, '2022-09-02 17:08:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3329, 19, 340, '2022-09-02 17:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3330, 20, 340, '2022-09-02 17:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3331, 1, 341, '2022-09-02 17:19:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3332, 2, 341, '2022-09-02 17:19:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3333, 3, 341, '2022-09-02 17:19:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3334, 4, 341, '2022-09-02 17:19:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3335, 5, 341, '2022-09-02 17:19:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3336, 16, 341, '2022-09-02 17:19:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3337, 17, 341, '2022-09-02 17:19:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3338, 18, 341, '2022-09-02 17:19:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3339, 19, 341, '2022-09-02 17:19:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3340, 10, 341, '2022-09-02 17:19:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3341, 1, 342, '2022-09-02 17:42:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3342, 2, 342, '2022-09-02 17:42:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3343, 3, 342, '2022-09-02 17:42:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3344, 4, 342, '2022-09-02 17:42:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3345, 5, 342, '2022-09-02 17:42:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3346, 16, 342, '2022-09-02 17:42:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3347, 17, 342, '2022-09-02 17:42:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3348, 18, 342, '2022-09-02 17:42:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3349, 19, 342, '2022-09-02 17:42:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3350, 10, 342, '2022-09-02 17:42:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (3351, 1, 343, '2022-09-02 18:46:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3352, 2, 343, '2022-09-02 18:46:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3353, 3, 343, '2022-09-02 18:46:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3354, 4, 343, '2022-09-02 18:46:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3355, 5, 343, '2022-09-02 18:46:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3356, 16, 343, '2022-09-02 18:46:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3357, 17, 343, '2022-09-02 18:46:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3358, 18, 343, '2022-09-02 18:47:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3359, 19, 343, '2022-09-02 18:47:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3360, 10, 343, '2022-09-02 18:47:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3361, 1, 344, '2022-09-06 09:51:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3362, 12, 344, '2022-09-06 10:17:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3363, 13, 344, '2022-09-06 10:25:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3364, 4, 344, '2022-09-06 10:25:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3365, 5, 344, '2022-09-06 10:25:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3366, 16, 344, '2022-09-06 10:25:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3367, 17, 344, '2022-09-06 10:25:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3368, 8, 344, '2022-09-06 10:25:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3369, 19, 344, '2022-09-06 10:25:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3370, 20, 344, '2022-09-06 10:25:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3371, 1, 345, '2022-09-06 10:55:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (3372, 2, 345, '2022-09-06 11:13:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3373, 3, 345, '2022-09-06 11:13:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3374, 4, 345, '2022-09-06 11:13:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3375, 5, 345, '2022-09-06 11:13:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3376, 16, 345, '2022-09-06 11:15:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (3377, 17, 345, '2022-09-06 11:15:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3378, 8, 345, '2022-09-06 11:15:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3379, 19, 345, '2022-09-06 11:15:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (3380, 10, 345, '2022-09-06 11:15:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3382, 1, 347, '2022-09-06 12:04:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3383, 2, 347, '2022-09-06 12:04:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3385, 13, 347, '2022-09-06 12:05:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3386, 8, 347, '2022-09-06 12:05:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3387, 7, 347, '2022-09-06 12:05:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3388, 16, 347, '2022-09-06 12:06:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3389, 5, 347, '2022-09-06 12:06:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3390, 9, 347, '2022-09-06 12:06:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3391, 10, 347, '2022-09-06 12:06:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3392, 1, 346, '2022-09-06 13:33:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3393, 2, 346, '2022-09-06 13:34:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3394, 3, 346, '2022-09-06 13:34:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3395, 4, 346, '2022-09-06 13:34:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (3397, 5, 346, '2022-09-06 13:34:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (3400, 17, 346, '2022-09-06 13:34:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3401, 8, 346, '2022-09-06 13:34:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3405, 16, 346, '2022-09-06 13:41:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3406, 9, 346, '2022-09-06 13:41:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3407, 10, 346, '2022-09-06 13:41:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3408, 1, 348, '2022-09-06 14:26:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (3409, 2, 348, '2022-09-06 14:26:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3410, 3, 348, '2022-09-06 14:26:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3411, 4, 348, '2022-09-06 14:26:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3412, 5, 348, '2022-09-06 14:26:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3413, 16, 348, '2022-09-06 14:26:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (3414, 17, 348, '2022-09-06 14:26:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (3415, 18, 348, '2022-09-06 14:26:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (3416, 19, 348, '2022-09-06 14:26:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3417, 10, 348, '2022-09-06 14:26:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3418, 1, 349, '2022-09-06 14:41:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3419, 2, 349, '2022-09-06 14:41:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3420, 3, 349, '2022-09-06 14:41:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3421, 4, 349, '2022-09-06 14:41:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3422, 5, 349, '2022-09-06 14:41:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3423, 16, 349, '2022-09-06 14:42:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3424, 17, 349, '2022-09-06 14:42:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3425, 18, 349, '2022-09-06 14:42:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3426, 19, 349, '2022-09-06 14:42:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (3427, 10, 349, '2022-09-06 14:42:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3428, 1, 350, '2022-09-06 14:55:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3429, 2, 350, '2022-09-06 14:55:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3430, 3, 350, '2022-09-06 14:55:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (3431, 4, 350, '2022-09-06 14:55:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (3432, 5, 350, '2022-09-06 14:55:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (3433, 16, 350, '2022-09-06 14:55:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (3434, 17, 350, '2022-09-06 14:55:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3435, 18, 350, '2022-09-06 14:55:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3437, 19, 350, '2022-09-06 14:55:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3438, 10, 350, '2022-09-06 14:55:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3439, 1, 351, '2022-09-06 15:15:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3440, 2, 351, '2022-09-06 15:15:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3441, 3, 351, '2022-09-06 15:15:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3442, 4, 351, '2022-09-06 15:15:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3443, 5, 351, '2022-09-06 15:16:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (3444, 16, 351, '2022-09-06 15:16:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3445, 17, 351, '2022-09-06 15:16:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3446, 18, 351, '2022-09-06 15:16:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3447, 19, 351, '2022-09-06 15:16:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3448, 10, 351, '2022-09-06 15:16:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3449, 1, 352, '2022-09-06 15:25:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3450, 2, 352, '2022-09-06 15:25:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3451, 3, 352, '2022-09-06 15:25:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3452, 4, 352, '2022-09-06 15:25:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3453, 5, 352, '2022-09-06 15:25:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3455, 16, 352, '2022-09-06 15:26:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3456, 17, 352, '2022-09-06 15:26:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3458, 18, 352, '2022-09-06 15:26:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3459, 19, 352, '2022-09-06 15:26:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3460, 10, 352, '2022-09-06 15:26:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3461, 1, 353, '2022-09-06 15:36:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3462, 2, 353, '2022-09-06 15:36:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3463, 3, 353, '2022-09-06 15:36:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3464, 4, 353, '2022-09-06 15:36:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3465, 5, 353, '2022-09-06 15:36:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3466, 16, 353, '2022-09-06 15:36:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (3467, 17, 353, '2022-09-06 15:36:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3468, 18, 353, '2022-09-06 15:36:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3469, 19, 353, '2022-09-06 15:36:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (3470, 10, 353, '2022-09-06 15:36:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3471, 1, 354, '2022-09-06 16:07:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (3472, 2, 354, '2022-09-06 16:07:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3473, 3, 354, '2022-09-06 16:07:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3474, 4, 354, '2022-09-06 16:07:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3475, 15, 354, '2022-09-06 16:07:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3476, 16, 354, '2022-09-06 16:07:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3477, 17, 354, '2022-09-06 16:07:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3478, 18, 354, '2022-09-06 16:07:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (3479, 19, 354, '2022-09-06 16:07:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3480, 10, 354, '2022-09-06 16:07:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3481, 1, 355, '2022-09-06 16:16:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3482, 2, 355, '2022-09-06 16:16:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3483, 3, 355, '2022-09-06 16:16:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3484, 4, 355, '2022-09-06 16:17:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3485, 5, 355, '2022-09-06 16:17:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3486, 16, 355, '2022-09-06 16:17:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (3487, 17, 355, '2022-09-06 16:17:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3488, 18, 355, '2022-09-06 16:17:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3489, 19, 355, '2022-09-06 16:17:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (3490, 10, 355, '2022-09-06 16:17:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (3491, 1, 356, '2022-09-06 16:25:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3492, 2, 356, '2022-09-06 16:25:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3493, 3, 356, '2022-09-06 16:25:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3494, 4, 356, '2022-09-06 16:25:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (3495, 5, 356, '2022-09-06 16:25:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3496, 16, 356, '2022-09-06 16:32:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (3497, 17, 356, '2022-09-06 16:32:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (3498, 18, 356, '2022-09-06 16:32:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3499, 19, 356, '2022-09-06 16:32:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (3500, 10, 356, '2022-09-06 16:32:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3501, 11, 357, '2022-09-06 16:57:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3502, 2, 357, '2022-09-06 16:57:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3503, 3, 357, '2022-09-06 16:57:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3504, 4, 357, '2022-09-06 17:00:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3505, 5, 357, '2022-09-06 17:00:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3507, 17, 357, '2022-09-06 17:00:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3508, 18, 357, '2022-09-06 17:00:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3509, 16, 357, '2022-09-06 17:01:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3510, 19, 357, '2022-09-06 17:01:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (3511, 10, 357, '2022-09-06 17:08:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3512, 11, 358, '2022-09-06 17:09:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3513, 1, 359, '2022-09-07 13:27:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3514, 2, 359, '2022-09-07 13:27:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3515, 1, 360, '2022-09-07 15:07:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3516, 2, 360, '2022-09-07 15:07:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3517, 3, 360, '2022-09-07 15:07:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3518, 4, 360, '2022-09-07 15:07:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3519, 5, 360, '2022-09-07 15:07:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3520, 16, 360, '2022-09-07 15:07:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3521, 17, 360, '2022-09-07 15:07:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3522, 18, 360, '2022-09-07 15:07:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (3523, 19, 360, '2022-09-07 15:07:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (3524, 10, 360, '2022-09-07 15:07:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3525, 1, 361, '2022-09-07 15:36:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3526, 2, 361, '2022-09-07 15:36:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3527, 3, 361, '2022-09-07 15:37:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3528, 4, 361, '2022-09-07 15:37:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3529, 5, 361, '2022-09-07 15:37:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3531, 16, 361, '2022-09-07 15:37:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3532, 17, 361, '2022-09-07 15:37:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (3533, 18, 361, '2022-09-07 15:37:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3534, 9, 361, '2022-09-07 15:37:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (3535, 10, 361, '2022-09-07 15:37:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3536, 1, 362, '2022-09-07 16:11:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3537, 2, 362, '2022-09-07 16:11:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3538, 3, 362, '2022-09-07 16:11:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (3539, 4, 362, '2022-09-07 16:11:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3540, 5, 362, '2022-09-07 16:11:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (3541, 16, 362, '2022-09-07 16:11:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3542, 17, 362, '2022-09-07 16:11:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (3543, 18, 362, '2022-09-07 16:11:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3544, 19, 362, '2022-09-07 16:11:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (3545, 10, 362, '2022-09-07 16:11:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3546, 1, 364, '2022-09-07 16:21:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3547, 2, 364, '2022-09-07 16:25:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3548, 3, 364, '2022-09-07 16:25:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3549, 4, 364, '2022-09-07 16:25:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3550, 5, 364, '2022-09-07 16:25:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3551, 6, 364, '2022-09-07 16:30:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3552, 7, 364, '2022-09-07 16:30:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3553, 8, 364, '2022-09-07 16:30:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3554, 9, 364, '2022-09-07 16:31:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3555, 10, 364, '2022-09-07 16:31:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3556, 1, 365, '2022-09-07 16:43:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3558, 3, 365, '2022-09-07 16:43:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (3559, 2, 365, '2022-09-07 16:43:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3560, 1, 363, '2022-09-07 16:59:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3561, 2, 363, '2022-09-07 17:00:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3562, 3, 363, '2022-09-07 17:00:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (3563, 4, 363, '2022-09-07 17:00:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3564, 5, 363, '2022-09-07 17:00:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3565, 16, 363, '2022-09-07 17:00:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (3566, 17, 363, '2022-09-07 17:00:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3567, 18, 363, '2022-09-07 17:00:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (3568, 19, 363, '2022-09-07 17:00:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (3569, 10, 363, '2022-09-07 17:00:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3570, 1, 366, '2022-09-07 17:07:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3571, 2, 366, '2022-09-07 17:07:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3572, 3, 366, '2022-09-07 17:07:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3573, 4, 366, '2022-09-07 17:07:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3574, 5, 366, '2022-09-07 17:07:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3575, 6, 366, '2022-09-07 17:07:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3576, 7, 366, '2022-09-07 17:07:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3577, 8, 366, '2022-09-07 17:07:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3578, 9, 366, '2022-09-07 17:07:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3579, 10, 366, '2022-09-07 17:07:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3580, 5, 365, '2022-09-07 17:12:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3581, 4, 365, '2022-09-07 17:12:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3582, 1, 367, '2022-09-07 17:23:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (3583, 2, 367, '2022-09-07 17:23:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3584, 3, 367, '2022-09-07 17:23:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3585, 4, 367, '2022-09-07 17:23:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3586, 5, 367, '2022-09-07 17:23:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3588, 16, 367, '2022-09-07 17:23:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3589, 17, 367, '2022-09-07 17:24:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3590, 18, 367, '2022-09-07 17:24:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (3591, 19, 367, '2022-09-07 17:24:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3592, 10, 367, '2022-09-07 17:24:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3593, 6, 365, '2022-09-07 17:27:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3594, 7, 365, '2022-09-07 17:27:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3595, 8, 365, '2022-09-07 17:27:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3596, 9, 365, '2022-09-07 17:27:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3597, 10, 365, '2022-09-07 17:27:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3598, 1, 368, '2022-09-07 17:35:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (3599, 2, 368, '2022-09-07 17:35:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3600, 3, 368, '2022-09-07 17:35:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3601, 4, 368, '2022-09-07 17:35:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3602, 5, 368, '2022-09-07 17:35:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3603, 16, 368, '2022-09-07 17:35:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3604, 17, 368, '2022-09-07 17:35:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3605, 18, 368, '2022-09-07 17:35:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3606, 19, 368, '2022-09-07 17:35:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3607, 10, 368, '2022-09-07 17:41:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (3608, 11, 369, '2022-09-07 17:51:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3609, 2, 369, '2022-09-07 18:01:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3610, 19, 369, '2022-09-07 18:01:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3611, 10, 369, '2022-09-07 18:01:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3612, 5, 369, '2022-09-07 18:01:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3613, 16, 369, '2022-09-07 18:01:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3614, 17, 369, '2022-09-07 18:01:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3615, 18, 369, '2022-09-07 18:01:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3616, 4, 369, '2022-09-07 18:01:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3617, 3, 369, '2022-09-07 18:02:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3619, 2, 370, '2022-09-07 18:03:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3620, 11, 370, '2022-09-07 18:03:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3621, 3, 370, '2022-09-07 18:03:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3622, 4, 370, '2022-09-07 18:03:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3623, 5, 370, '2022-09-07 18:03:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3624, 16, 370, '2022-09-07 18:03:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3625, 17, 370, '2022-09-07 18:03:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3626, 18, 370, '2022-09-07 18:03:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3627, 19, 370, '2022-09-07 18:03:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (3628, 10, 370, '2022-09-07 18:03:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3630, 1, 371, '2022-09-08 09:10:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3631, 2, 371, '2022-09-08 09:16:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3632, 3, 371, '2022-09-08 09:16:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3633, 4, 371, '2022-09-08 09:17:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3634, 5, 371, '2022-09-08 09:17:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3635, 6, 371, '2022-09-08 10:04:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3636, 7, 371, '2022-09-08 10:04:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3638, 8, 371, '2022-09-08 10:04:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3639, 9, 371, '2022-09-08 10:04:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3640, 10, 371, '2022-09-08 10:04:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (3641, 1, 372, '2022-09-08 10:20:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3642, 2, 372, '2022-09-08 10:33:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (3643, 3, 372, '2022-09-08 10:33:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3644, 4, 372, '2022-09-08 10:33:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3645, 5, 372, '2022-09-08 10:33:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (3646, 16, 372, '2022-09-08 10:34:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (3647, 17, 372, '2022-09-08 10:34:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3648, 18, 372, '2022-09-08 10:34:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (3649, 19, 372, '2022-09-08 10:34:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3650, 10, 372, '2022-09-08 10:34:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3651, 1, 373, '2022-09-08 10:44:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3652, 2, 373, '2022-09-08 10:44:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3653, 3, 373, '2022-09-08 10:44:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3654, 4, 373, '2022-09-08 10:44:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3655, 5, 373, '2022-09-08 10:44:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3656, 16, 373, '2022-09-08 10:45:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3657, 17, 373, '2022-09-08 10:45:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3658, 18, 373, '2022-09-08 10:45:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3659, 19, 373, '2022-09-08 10:45:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3660, 10, 373, '2022-09-08 10:45:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (3661, 1, 374, '2022-09-08 11:25:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3662, 2, 374, '2022-09-08 11:25:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3663, 3, 374, '2022-09-08 11:25:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3664, 4, 374, '2022-09-08 11:25:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3665, 5, 374, '2022-09-08 11:25:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3666, 16, 374, '2022-09-08 11:25:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3667, 17, 374, '2022-09-08 11:25:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3668, 18, 374, '2022-09-08 11:25:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3669, 19, 374, '2022-09-08 11:25:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3670, 10, 374, '2022-09-08 11:25:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3671, 1, 375, '2022-09-08 12:55:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (3672, 2, 375, '2022-09-08 12:55:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3673, 3, 375, '2022-09-08 12:55:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (3674, 4, 375, '2022-09-08 12:55:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3675, 5, 375, '2022-09-08 12:55:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (3676, 16, 375, '2022-09-08 12:55:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3677, 17, 375, '2022-09-08 12:55:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3678, 18, 375, '2022-09-08 12:55:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3679, 19, 375, '2022-09-08 12:55:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3680, 10, 375, '2022-09-08 12:55:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3681, 1, 376, '2022-09-08 14:24:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3682, 2, 376, '2022-09-08 14:24:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3683, 3, 376, '2022-09-08 14:24:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3684, 4, 376, '2022-09-08 14:24:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3685, 5, 376, '2022-09-08 14:24:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3686, 6, 376, '2022-09-08 14:24:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3687, 7, 376, '2022-09-08 14:24:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3688, 8, 376, '2022-09-08 14:24:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3689, 9, 376, '2022-09-08 14:24:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3690, 10, 376, '2022-09-08 14:24:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3691, 1, 377, '2022-09-08 14:35:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (3692, 2, 377, '2022-09-08 14:35:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3693, 3, 377, '2022-09-08 14:35:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3694, 4, 377, '2022-09-08 14:35:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3695, 5, 377, '2022-09-08 14:35:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3696, 16, 377, '2022-09-08 14:36:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3697, 17, 377, '2022-09-08 14:36:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3698, 18, 377, '2022-09-08 14:36:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3699, 19, 377, '2022-09-08 14:36:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3700, 10, 377, '2022-09-08 14:36:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (3701, 1, 378, '2022-09-08 15:07:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3702, 2, 378, '2022-09-08 15:07:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3703, 3, 378, '2022-09-08 15:07:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3704, 4, 378, '2022-09-08 15:07:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3705, 5, 378, '2022-09-08 15:07:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3706, 16, 378, '2022-09-08 15:07:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3707, 17, 378, '2022-09-08 15:07:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3708, 18, 378, '2022-09-08 15:07:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (3709, 19, 378, '2022-09-08 15:07:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3710, 10, 378, '2022-09-08 15:07:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3711, 1, 379, '2022-09-08 15:44:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3712, 2, 379, '2022-09-08 15:44:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3713, 3, 379, '2022-09-08 15:44:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3714, 4, 379, '2022-09-08 15:44:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3715, 5, 379, '2022-09-08 15:44:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3716, 16, 379, '2022-09-08 15:44:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3717, 17, 379, '2022-09-08 15:44:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3718, 18, 379, '2022-09-08 15:44:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3719, 19, 379, '2022-09-08 15:44:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3720, 10, 379, '2022-09-08 15:44:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3721, 1, 380, '2022-09-08 16:52:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3722, 2, 380, '2022-09-08 16:52:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3723, 3, 380, '2022-09-08 16:52:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3724, 4, 380, '2022-09-08 16:52:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3725, 5, 380, '2022-09-08 16:52:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3726, 16, 380, '2022-09-08 16:52:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3727, 17, 380, '2022-09-08 16:52:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3728, 18, 380, '2022-09-08 16:52:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3729, 19, 380, '2022-09-08 16:52:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3730, 10, 380, '2022-09-08 16:52:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3731, 1, 381, '2022-09-08 17:21:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3732, 2, 381, '2022-09-08 17:21:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3733, 3, 381, '2022-09-08 17:21:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3734, 4, 381, '2022-09-08 17:21:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3735, 5, 381, '2022-09-08 17:21:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (3736, 16, 381, '2022-09-08 17:21:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3737, 17, 381, '2022-09-08 17:21:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3738, 18, 381, '2022-09-08 17:21:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3739, 19, 381, '2022-09-08 17:21:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3740, 10, 381, '2022-09-08 17:21:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3741, 1, 382, '2022-09-08 17:35:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3742, 2, 382, '2022-09-08 17:35:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3743, 3, 382, '2022-09-08 17:35:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3744, 4, 382, '2022-09-08 17:35:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3745, 5, 382, '2022-09-08 17:35:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3746, 16, 382, '2022-09-08 17:35:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3747, 17, 382, '2022-09-08 17:35:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3748, 18, 382, '2022-09-08 17:35:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (3749, 19, 382, '2022-09-08 17:35:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3750, 10, 382, '2022-09-08 17:35:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3751, 1, 383, '2022-09-08 17:52:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3752, 2, 383, '2022-09-08 17:52:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3753, 3, 383, '2022-09-08 17:52:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3754, 4, 383, '2022-09-08 17:52:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3755, 5, 383, '2022-09-08 17:52:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (3756, 16, 383, '2022-09-08 17:52:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3757, 17, 383, '2022-09-08 17:52:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (3758, 18, 383, '2022-09-08 17:52:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3759, 19, 383, '2022-09-08 17:57:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3760, 10, 383, '2022-09-08 17:57:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3761, 16, 385, '2022-09-10 12:52:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3762, 18, 385, '2022-09-10 12:52:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3763, 7, 385, '2022-09-10 12:52:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3764, 9, 385, '2022-09-10 12:52:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3765, 20, 385, '2022-09-10 13:00:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3766, 1, 385, '2022-09-10 13:11:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3767, 2, 385, '2022-09-10 13:11:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3768, 3, 385, '2022-09-10 13:11:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (3769, 4, 385, '2022-09-10 13:11:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3770, 5, 385, '2022-09-10 13:11:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3771, 1, 386, '2022-09-12 10:38:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3772, 2, 386, '2022-09-12 10:38:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3773, 3, 386, '2022-09-12 10:38:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3774, 4, 386, '2022-09-12 10:38:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3775, 5, 386, '2022-09-12 10:38:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3776, 6, 386, '2022-09-12 10:38:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3777, 7, 386, '2022-09-12 10:38:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3778, 18, 386, '2022-09-12 10:38:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3779, 9, 386, '2022-09-12 10:38:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3780, 10, 386, '2022-09-12 10:38:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (3782, 0, 387, '2022-09-12 11:52:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3783, 11, 387, '2022-09-12 11:52:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3784, 18, 387, '2022-09-12 12:11:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3785, 2, 387, '2022-09-12 12:13:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3786, 3, 387, '2022-09-12 12:13:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3787, 4, 387, '2022-09-12 12:13:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3788, 5, 387, '2022-09-12 12:13:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (3791, 9, 387, '2022-09-12 12:16:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3792, 20, 387, '2022-09-12 12:35:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3793, 17, 387, '2022-09-12 12:36:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3794, 16, 387, '2022-09-12 12:36:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3795, 1, 388, '2022-09-12 12:52:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3796, 2, 388, '2022-09-12 12:52:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3797, 3, 388, '2022-09-12 12:52:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3798, 4, 388, '2022-09-12 12:52:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (3799, 5, 388, '2022-09-12 12:52:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3800, 6, 388, '2022-09-12 12:52:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3801, 7, 388, '2022-09-12 12:52:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3802, 8, 388, '2022-09-12 12:53:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3803, 9, 388, '2022-09-12 12:53:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (3804, 20, 388, '2022-09-12 12:53:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3805, 1, 389, '2022-09-12 18:42:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (3806, 2, 389, '2022-09-12 18:42:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3807, 3, 389, '2022-09-12 18:42:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3808, 18, 389, '2022-09-12 18:42:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3812, 6, 389, '2022-09-12 18:42:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3813, 9, 389, '2022-09-12 18:42:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3814, 17, 389, '2022-09-12 18:54:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3815, 4, 389, '2022-09-12 18:59:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (3816, 5, 389, '2022-09-12 18:59:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3817, 10, 389, '2022-09-12 18:59:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3818, 20, 390, '2022-09-12 19:03:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3819, 16, 390, '2022-09-12 19:20:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3820, 17, 390, '2022-09-12 19:22:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3821, 1, 390, '2022-09-12 19:33:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3822, 2, 390, '2022-09-12 19:33:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3823, 3, 390, '2022-09-12 19:33:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3824, 4, 390, '2022-09-12 19:33:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3825, 5, 390, '2022-09-12 19:33:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (3826, 8, 390, '2022-09-12 19:33:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3827, 9, 390, '2022-09-12 19:33:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3828, 17, 391, '2022-09-12 19:39:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3829, 1, 391, '2022-09-12 19:39:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (3830, 2, 391, '2022-09-12 19:39:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3831, 4, 391, '2022-09-12 19:39:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3832, 3, 391, '2022-09-12 19:39:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3833, 16, 391, '2022-09-12 19:51:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3834, 8, 391, '2022-09-12 19:51:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (3835, 5, 391, '2022-09-12 19:51:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3836, 9, 391, '2022-09-12 19:52:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (3837, 10, 391, '2022-09-12 19:52:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (3838, 12, 392, '2022-09-13 10:09:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (3839, 20, 392, '2022-09-13 10:09:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3840, 1, 393, '2022-09-13 11:05:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3841, 12, 393, '2022-09-13 11:05:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3842, 3, 393, '2022-09-13 11:05:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3843, 4, 393, '2022-09-13 11:05:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3844, 5, 393, '2022-09-13 11:05:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3845, 16, 393, '2022-09-13 11:05:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3846, 17, 393, '2022-09-13 11:05:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3847, 18, 393, '2022-09-13 11:05:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3848, 19, 393, '2022-09-13 11:05:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3849, 20, 393, '2022-09-13 11:06:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3850, 1, 392, '2022-09-13 15:26:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3851, 3, 392, '2022-09-13 15:26:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3852, 4, 392, '2022-09-13 15:26:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3853, 5, 392, '2022-09-13 15:26:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3854, 6, 392, '2022-09-13 15:26:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3855, 17, 392, '2022-09-13 15:26:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3856, 18, 392, '2022-09-13 15:26:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3857, 9, 392, '2022-09-13 15:26:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3858, 20, 394, '2022-09-13 15:38:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3859, 18, 394, '2022-09-13 15:38:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3860, 12, 394, '2022-09-13 16:41:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (3861, 1, 394, '2022-09-13 16:43:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (3862, 3, 394, '2022-09-13 16:43:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3863, 4, 394, '2022-09-13 16:43:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3864, 5, 394, '2022-09-13 16:43:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3865, 6, 394, '2022-09-13 16:43:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3866, 7, 394, '2022-09-13 16:43:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (3868, 19, 394, '2022-09-13 17:33:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3869, 18, 395, '2022-09-13 17:41:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (3870, 1, 395, '2022-09-13 18:44:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3871, 2, 395, '2022-09-13 18:44:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3872, 3, 395, '2022-09-13 18:44:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3873, 4, 395, '2022-09-13 18:44:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3874, 5, 395, '2022-09-13 18:45:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3875, 7, 395, '2022-09-13 18:45:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (3877, 10, 395, '2022-09-13 18:45:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (3878, 9, 395, '2022-09-13 18:45:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (3879, 16, 395, '2022-09-13 18:45:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3880, 11, 396, '2022-09-13 18:51:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (3881, 2, 396, '2022-09-13 19:53:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (3882, 3, 396, '2022-09-13 19:53:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3883, 4, 396, '2022-09-13 19:53:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3884, 5, 396, '2022-09-13 19:53:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3885, 16, 396, '2022-09-13 19:53:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3887, 18, 396, '2022-09-13 19:53:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3888, 19, 396, '2022-09-13 19:53:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (3889, 20, 396, '2022-09-13 19:53:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3890, 7, 396, '2022-09-13 19:53:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3891, 16, 397, '2022-09-14 11:18:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3892, 7, 397, '2022-09-14 11:18:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (3893, 18, 397, '2022-09-14 11:18:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3894, 19, 397, '2022-09-14 11:18:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (3895, 1, 397, '2022-09-14 11:18:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3896, 2, 397, '2022-09-14 11:18:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (3897, 3, 397, '2022-09-14 11:18:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3898, 4, 397, '2022-09-14 11:18:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3899, 5, 397, '2022-09-14 11:18:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3900, 10, 397, '2022-09-14 11:37:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (3901, 13, 398, '2022-09-14 12:01:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3902, 10, 398, '2022-09-14 14:39:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3903, 9, 398, '2022-09-14 14:40:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3904, 8, 398, '2022-09-14 14:40:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (3905, 7, 398, '2022-09-14 14:40:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (3906, 4, 398, '2022-09-14 14:40:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3907, 5, 398, '2022-09-14 14:40:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3908, 6, 398, '2022-09-14 14:40:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (3909, 2, 398, '2022-09-14 14:40:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3910, 1, 398, '2022-09-14 14:40:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (3912, 1, 399, '2022-09-15 10:43:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3913, 12, 399, '2022-09-15 10:43:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3914, 3, 399, '2022-09-15 10:44:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3915, 4, 399, '2022-09-15 10:44:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (3916, 5, 399, '2022-09-15 10:44:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (3917, 16, 399, '2022-09-15 10:44:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (3919, 17, 399, '2022-09-15 10:44:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (3920, 18, 399, '2022-09-15 10:44:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (3921, 19, 399, '2022-09-15 10:44:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (3922, 20, 399, '2022-09-15 10:44:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3923, 16, 400, '2022-09-15 11:29:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (3925, 1, 400, '2022-09-15 11:29:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (3926, 2, 400, '2022-09-15 11:29:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (3927, 3, 400, '2022-09-15 11:29:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3928, 17, 400, '2022-09-15 11:44:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3930, 8, 400, '2022-09-15 11:44:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3931, 1, 401, '2022-09-15 11:53:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3932, 2, 401, '2022-09-15 11:53:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3933, 3, 401, '2022-09-15 11:53:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3934, 4, 401, '2022-09-15 11:53:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3935, 5, 401, '2022-09-15 11:53:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3936, 6, 401, '2022-09-15 11:53:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3937, 7, 401, '2022-09-15 11:53:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3938, 8, 401, '2022-09-15 11:53:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3939, 9, 401, '2022-09-15 11:53:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3940, 10, 401, '2022-09-15 11:53:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (3941, 10, 400, '2022-09-15 12:16:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (3942, 5, 400, '2022-09-15 12:16:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (3943, 4, 400, '2022-09-15 12:16:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3944, 19, 400, '2022-09-15 12:30:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3945, 1, 402, '2022-09-15 12:37:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (3946, 12, 402, '2022-09-15 12:37:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (3947, 13, 402, '2022-09-15 12:37:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (3948, 14, 402, '2022-09-15 12:37:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (3949, 5, 402, '2022-09-15 12:37:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (3950, 16, 402, '2022-09-15 12:37:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (3951, 17, 402, '2022-09-15 12:37:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (3952, 18, 402, '2022-09-15 12:37:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (3954, 19, 402, '2022-09-15 12:37:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (3955, 20, 402, '2022-09-15 12:37:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (3956, 1, 403, '2022-09-15 13:08:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (3957, 2, 403, '2022-09-15 13:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (3958, 3, 403, '2022-09-15 13:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (3959, 4, 403, '2022-09-15 13:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3960, 5, 403, '2022-09-15 13:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (3961, 6, 403, '2022-09-15 13:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3962, 7, 403, '2022-09-15 13:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3963, 8, 403, '2022-09-15 13:08:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3964, 9, 403, '2022-09-15 13:08:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (3965, 10, 403, '2022-09-15 13:09:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (3966, 1, 404, '2022-09-15 13:52:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (3967, 2, 404, '2022-09-15 13:52:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3968, 3, 404, '2022-09-15 13:52:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3969, 4, 404, '2022-09-15 13:52:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3970, 5, 404, '2022-09-15 13:52:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3971, 6, 404, '2022-09-15 13:52:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3972, 7, 404, '2022-09-15 13:52:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (3973, 8, 404, '2022-09-15 13:52:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (3974, 19, 404, '2022-09-15 13:52:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (3975, 10, 404, '2022-09-15 13:52:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3976, 11, 405, '2022-09-15 14:12:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (3977, 2, 405, '2022-09-15 14:12:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3978, 3, 405, '2022-09-15 14:12:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (3979, 16, 405, '2022-09-15 14:31:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3980, 17, 405, '2022-09-15 14:31:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3981, 18, 405, '2022-09-15 14:31:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3982, 19, 405, '2022-09-15 14:31:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3983, 4, 405, '2022-09-15 15:45:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3984, 5, 405, '2022-09-15 15:45:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (3985, 10, 405, '2022-09-15 15:45:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (3986, 1, 406, '2022-09-15 16:37:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (3987, 2, 406, '2022-09-15 16:37:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (3988, 3, 406, '2022-09-15 16:37:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (3989, 4, 406, '2022-09-15 16:37:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3990, 5, 406, '2022-09-15 16:37:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (3991, 6, 406, '2022-09-15 16:37:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (3992, 7, 406, '2022-09-15 16:37:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (3993, 8, 406, '2022-09-15 16:37:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (3994, 9, 406, '2022-09-15 16:37:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (3995, 10, 406, '2022-09-15 16:37:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (3997, 0, 407, '2022-09-15 17:49:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (3998, 1, 407, '2022-09-15 17:49:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (3999, 12, 407, '2022-09-15 17:49:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4000, 13, 407, '2022-09-15 17:50:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4002, 0, 407, '2022-09-15 17:50:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4003, 4, 407, '2022-09-15 17:50:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4004, 5, 407, '2022-09-15 17:50:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4005, 16, 407, '2022-09-15 17:50:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4006, 17, 407, '2022-09-15 17:50:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4008, 18, 407, '2022-09-15 17:50:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4009, 19, 407, '2022-09-15 17:50:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4010, 20, 407, '2022-09-15 17:50:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4011, 1, 408, '2022-09-15 18:58:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4012, 2, 408, '2022-09-15 18:58:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4013, 3, 408, '2022-09-15 18:58:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4014, 4, 408, '2022-09-15 18:58:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4015, 20, 408, '2022-09-15 19:18:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4016, 18, 408, '2022-09-15 19:28:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (4017, 19, 408, '2022-09-15 19:28:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (4018, 16, 408, '2022-09-15 19:28:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (4019, 5, 408, '2022-09-15 19:28:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (4020, 7, 408, '2022-09-15 19:28:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4021, 18, 409, '2022-09-15 19:48:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4022, 19, 409, '2022-09-15 19:48:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4023, 16, 409, '2022-09-15 19:48:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4024, 1, 409, '2022-09-15 19:56:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4025, 2, 409, '2022-09-15 19:56:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4026, 3, 409, '2022-09-15 19:56:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4027, 4, 409, '2022-09-15 19:56:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4028, 10, 409, '2022-09-15 19:56:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4029, 7, 409, '2022-09-15 19:56:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4030, 5, 409, '2022-09-15 19:56:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (4031, 1, 410, '2022-09-16 08:58:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4032, 2, 410, '2022-09-16 08:58:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4033, 3, 410, '2022-09-16 08:58:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4034, 4, 410, '2022-09-16 08:58:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4035, 5, 410, '2022-09-16 08:58:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4036, 6, 410, '2022-09-16 08:58:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4037, 7, 410, '2022-09-16 08:58:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4039, 9, 410, '2022-09-16 08:58:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4040, 10, 410, '2022-09-16 08:58:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (4041, 18, 410, '2022-09-16 09:00:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (4042, 1, 412, '2022-09-16 11:04:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (4043, 2, 412, '2022-09-16 11:04:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (4044, 3, 412, '2022-09-16 11:04:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (4045, 4, 412, '2022-09-16 11:04:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (4046, 5, 412, '2022-09-16 11:04:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4047, 6, 412, '2022-09-16 11:04:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4048, 7, 412, '2022-09-16 11:04:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4049, 8, 412, '2022-09-16 11:04:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4050, 9, 412, '2022-09-16 11:04:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4051, 10, 412, '2022-09-16 11:04:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4052, 1, 413, '2022-09-16 14:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (4053, 2, 413, '2022-09-16 14:08:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (4054, 3, 413, '2022-09-16 14:08:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4055, 4, 413, '2022-09-16 14:08:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4056, 5, 413, '2022-09-16 14:08:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4057, 6, 413, '2022-09-16 14:09:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4060, 9, 413, '2022-09-16 14:09:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4061, 10, 413, '2022-09-16 14:09:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4062, 8, 413, '2022-09-16 14:09:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4063, 11, 414, '2022-09-16 16:20:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (4064, 17, 413, '2022-09-16 16:21:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4065, 12, 414, '2022-09-16 16:21:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4067, 3, 414, '2022-09-16 16:22:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4069, 5, 414, '2022-09-16 16:23:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (4070, 6, 414, '2022-09-16 16:24:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4071, 7, 414, '2022-09-16 16:25:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4072, 8, 414, '2022-09-16 16:26:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4074, 4, 414, '2022-09-16 16:27:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4075, 10, 414, '2022-09-16 16:27:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4076, 19, 414, '2022-09-16 16:31:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4077, 1, 416, '2022-09-16 17:22:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (4078, 2, 416, '2022-09-16 17:22:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4080, 5, 416, '2022-09-16 17:23:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4081, 6, 416, '2022-09-16 17:23:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4082, 7, 416, '2022-09-16 17:23:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4083, 8, 416, '2022-09-16 17:23:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4084, 9, 416, '2022-09-16 17:23:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4085, 10, 416, '2022-09-16 17:23:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4089, 4, 416, '2022-09-16 17:30:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4090, 3, 416, '2022-09-16 17:30:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4091, 1, 415, '2022-09-16 17:54:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4092, 2, 415, '2022-09-16 17:54:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4094, 4, 415, '2022-09-16 17:54:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4095, 5, 415, '2022-09-16 17:54:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4096, 6, 415, '2022-09-16 17:55:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4097, 7, 415, '2022-09-16 17:55:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4098, 8, 415, '2022-09-16 17:55:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4099, 9, 415, '2022-09-16 17:55:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4100, 10, 415, '2022-09-16 17:55:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4101, 1, 417, '2022-09-16 18:02:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (4102, 12, 417, '2022-09-16 18:02:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (4104, 5, 417, '2022-09-16 18:10:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (4105, 6, 417, '2022-09-16 18:10:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (4107, 17, 417, '2022-09-16 18:10:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4108, 8, 417, '2022-09-16 18:10:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4109, 9, 417, '2022-09-16 18:10:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4110, 10, 417, '2022-09-16 18:10:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4111, 14, 417, '2022-09-16 18:10:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (4112, 13, 417, '2022-09-16 18:16:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4113, 16, 418, '2022-09-16 18:28:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4114, 20, 418, '2022-09-16 18:28:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4116, 1, 419, '2022-09-16 18:48:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4117, 12, 419, '2022-09-16 18:48:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4118, 13, 419, '2022-09-16 18:48:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4120, 5, 419, '2022-09-16 18:48:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4121, 6, 419, '2022-09-16 18:48:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4122, 7, 419, '2022-09-16 18:48:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4123, 8, 419, '2022-09-16 18:48:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4124, 9, 419, '2022-09-16 18:48:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4125, 10, 419, '2022-09-16 18:48:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4126, 4, 419, '2022-09-16 18:55:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4127, 3, 415, '2022-09-16 19:05:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4128, 1, 420, '2022-09-16 19:27:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4129, 12, 420, '2022-09-16 19:27:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (4130, 13, 420, '2022-09-16 19:27:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (4131, 4, 420, '2022-09-16 19:27:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4132, 15, 420, '2022-09-16 19:27:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (4133, 16, 420, '2022-09-16 19:27:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4134, 17, 420, '2022-09-16 19:27:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4135, 18, 420, '2022-09-16 19:27:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (4136, 19, 420, '2022-09-16 19:27:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4137, 20, 420, '2022-09-16 19:27:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (4138, 1, 418, '2022-09-16 19:28:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4139, 12, 418, '2022-09-16 19:28:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4140, 3, 418, '2022-09-16 19:28:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4141, 5, 418, '2022-09-16 19:28:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4142, 7, 418, '2022-09-16 19:28:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4144, 19, 418, '2022-09-16 19:28:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4145, 18, 418, '2022-09-16 19:28:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (4146, 4, 418, '2022-09-16 19:31:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4147, 11, 421, '2022-09-16 19:36:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4148, 20, 421, '2022-09-16 19:44:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4149, 2, 421, '2022-09-16 19:44:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4150, 1, 422, '2022-09-16 20:01:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4151, 12, 422, '2022-09-16 20:01:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4152, 13, 422, '2022-09-16 20:01:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4153, 4, 422, '2022-09-16 20:01:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4154, 5, 422, '2022-09-16 20:01:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4155, 16, 422, '2022-09-16 20:01:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4156, 17, 422, '2022-09-16 20:01:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (4157, 8, 422, '2022-09-16 20:01:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4158, 19, 422, '2022-09-16 20:01:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (4159, 20, 422, '2022-09-16 20:01:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4160, 3, 421, '2022-09-16 20:02:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4161, 4, 421, '2022-09-16 20:02:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4162, 5, 421, '2022-09-16 20:02:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4163, 16, 421, '2022-09-16 20:02:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4164, 7, 421, '2022-09-16 20:02:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4165, 18, 421, '2022-09-16 20:02:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4166, 19, 421, '2022-09-16 20:02:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4167, 1, 423, '2022-09-17 09:34:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4168, 2, 423, '2022-09-17 09:34:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4169, 3, 423, '2022-09-17 09:34:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4170, 4, 423, '2022-09-17 09:34:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4171, 5, 423, '2022-09-17 09:34:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4172, 6, 423, '2022-09-17 09:34:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4173, 7, 423, '2022-09-17 09:34:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4174, 8, 423, '2022-09-17 09:34:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4175, 9, 423, '2022-09-17 09:34:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4176, 10, 423, '2022-09-17 09:34:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4177, 1, 425, '2022-09-17 10:02:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4178, 2, 425, '2022-09-17 10:02:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (4179, 3, 425, '2022-09-17 10:02:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4180, 4, 425, '2022-09-17 10:02:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4181, 5, 425, '2022-09-17 10:02:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (4182, 6, 425, '2022-09-17 10:02:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4183, 7, 425, '2022-09-17 10:02:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (4184, 8, 425, '2022-09-17 10:02:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4185, 9, 425, '2022-09-17 10:02:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (4186, 10, 425, '2022-09-17 10:02:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (4187, 1, 426, '2022-09-17 10:15:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4188, 2, 426, '2022-09-17 10:15:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4189, 3, 426, '2022-09-17 10:15:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4190, 4, 426, '2022-09-17 10:15:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4191, 5, 426, '2022-09-17 10:15:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4192, 6, 426, '2022-09-17 10:15:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4193, 7, 426, '2022-09-17 10:15:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4194, 8, 426, '2022-09-17 10:15:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4195, 9, 426, '2022-09-17 10:15:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4196, 10, 426, '2022-09-17 10:15:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4197, 1, 427, '2022-09-17 10:20:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4198, 2, 427, '2022-09-17 10:20:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (4199, 3, 427, '2022-09-17 10:20:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (4200, 4, 427, '2022-09-17 10:20:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (4201, 5, 427, '2022-09-17 10:20:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4202, 6, 427, '2022-09-17 10:20:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4203, 7, 427, '2022-09-17 10:20:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (4204, 8, 427, '2022-09-17 10:20:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (4205, 9, 427, '2022-09-17 10:20:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (4206, 10, 427, '2022-09-17 10:20:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4207, 1, 424, '2022-09-17 10:21:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4208, 2, 424, '2022-09-17 10:21:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4209, 3, 424, '2022-09-17 10:21:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4210, 4, 424, '2022-09-17 10:22:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4211, 5, 424, '2022-09-17 10:22:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4212, 6, 424, '2022-09-17 10:22:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4213, 7, 424, '2022-09-17 10:22:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4214, 8, 424, '2022-09-17 10:22:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4215, 9, 424, '2022-09-17 10:22:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4216, 10, 424, '2022-09-17 10:22:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4217, 1, 428, '2022-09-17 10:32:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4218, 2, 428, '2022-09-17 10:32:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4219, 3, 428, '2022-09-17 10:32:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4220, 4, 428, '2022-09-17 10:32:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4221, 5, 428, '2022-09-17 10:33:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4222, 6, 428, '2022-09-17 10:33:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4223, 7, 428, '2022-09-17 10:33:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4224, 8, 428, '2022-09-17 10:33:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4225, 9, 428, '2022-09-17 10:33:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4226, 10, 428, '2022-09-17 10:33:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4227, 1, 429, '2022-09-17 11:17:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4228, 2, 429, '2022-09-17 11:17:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (4229, 3, 429, '2022-09-17 11:17:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (4230, 4, 429, '2022-09-17 11:17:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (4231, 5, 429, '2022-09-17 11:17:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (4232, 6, 429, '2022-09-17 11:17:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4233, 7, 429, '2022-09-17 11:17:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4234, 8, 429, '2022-09-17 11:17:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4235, 9, 429, '2022-09-17 11:17:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4236, 10, 429, '2022-09-17 11:17:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4237, 1, 431, '2022-09-17 11:21:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (4238, 2, 431, '2022-09-17 11:21:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4239, 3, 431, '2022-09-17 11:21:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4240, 4, 431, '2022-09-17 11:21:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4241, 5, 431, '2022-09-17 11:21:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4242, 6, 431, '2022-09-17 11:21:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4243, 7, 431, '2022-09-17 11:21:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4244, 8, 431, '2022-09-17 11:21:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4245, 9, 431, '2022-09-17 11:21:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4246, 10, 431, '2022-09-17 11:21:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4247, 1, 432, '2022-09-17 11:27:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4248, 2, 432, '2022-09-17 11:27:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4249, 3, 432, '2022-09-17 11:27:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4250, 4, 432, '2022-09-17 11:27:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4252, 5, 432, '2022-09-17 11:27:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4253, 6, 432, '2022-09-17 11:27:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4254, 7, 432, '2022-09-17 11:27:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4255, 8, 432, '2022-09-17 11:27:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4256, 9, 432, '2022-09-17 11:27:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4257, 10, 432, '2022-09-17 11:27:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4258, 1, 430, '2022-09-17 11:35:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4259, 12, 430, '2022-09-17 11:35:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4260, 13, 430, '2022-09-17 11:35:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4261, 14, 430, '2022-09-17 11:35:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4262, 5, 430, '2022-09-17 11:35:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4263, 6, 430, '2022-09-17 11:35:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4264, 17, 430, '2022-09-17 11:35:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4265, 8, 430, '2022-09-17 11:35:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4266, 9, 430, '2022-09-17 11:35:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4267, 20, 430, '2022-09-17 11:35:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4268, 1, 433, '2022-09-17 11:50:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4269, 2, 433, '2022-09-17 11:50:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (4270, 3, 433, '2022-09-17 11:50:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (4271, 4, 433, '2022-09-17 11:50:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4272, 5, 433, '2022-09-17 11:50:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4273, 6, 433, '2022-09-17 11:50:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4274, 7, 433, '2022-09-17 11:50:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (4275, 8, 433, '2022-09-17 11:50:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4276, 9, 433, '2022-09-17 11:50:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (4277, 10, 433, '2022-09-17 11:50:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4278, 1, 434, '2022-09-17 11:56:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4279, 2, 434, '2022-09-17 11:56:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4280, 3, 434, '2022-09-17 11:56:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4281, 4, 434, '2022-09-17 11:56:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4282, 5, 434, '2022-09-17 11:56:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4283, 6, 434, '2022-09-17 11:56:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4284, 7, 434, '2022-09-17 11:56:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4285, 8, 434, '2022-09-17 11:56:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (4286, 9, 434, '2022-09-17 11:56:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4287, 10, 434, '2022-09-17 11:56:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4288, 1, 435, '2022-09-17 12:02:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (4289, 2, 435, '2022-09-17 12:02:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (4290, 3, 435, '2022-09-17 12:02:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (4291, 4, 435, '2022-09-17 12:02:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4292, 5, 435, '2022-09-17 12:02:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4293, 6, 435, '2022-09-17 12:02:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4294, 7, 435, '2022-09-17 12:02:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4295, 8, 435, '2022-09-17 12:02:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4296, 9, 435, '2022-09-17 12:02:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4297, 10, 435, '2022-09-17 12:03:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4298, 1, 436, '2022-09-17 12:14:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4299, 2, 436, '2022-09-17 12:14:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4301, 3, 436, '2022-09-17 12:14:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4302, 4, 436, '2022-09-17 12:14:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4303, 5, 436, '2022-09-17 12:14:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4304, 6, 436, '2022-09-17 12:14:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4305, 7, 436, '2022-09-17 12:14:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4306, 8, 436, '2022-09-17 12:14:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4307, 9, 436, '2022-09-17 12:14:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4308, 10, 436, '2022-09-17 12:14:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4309, 1, 437, '2022-09-17 12:21:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4310, 2, 437, '2022-09-17 12:21:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4311, 3, 437, '2022-09-17 12:21:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4312, 4, 437, '2022-09-17 12:21:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4313, 5, 437, '2022-09-17 12:21:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4314, 6, 437, '2022-09-17 12:21:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4315, 7, 437, '2022-09-17 12:21:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4316, 8, 437, '2022-09-17 12:21:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4317, 9, 437, '2022-09-17 12:21:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4318, 10, 437, '2022-09-17 12:21:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4319, 1, 438, '2022-09-17 12:38:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4320, 2, 438, '2022-09-17 12:38:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4321, 3, 438, '2022-09-17 12:38:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4322, 4, 438, '2022-09-17 12:38:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4323, 5, 438, '2022-09-17 12:38:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4324, 6, 438, '2022-09-17 12:38:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4325, 7, 438, '2022-09-17 12:38:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4326, 8, 438, '2022-09-17 12:38:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (4327, 9, 438, '2022-09-17 12:38:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4328, 10, 438, '2022-09-17 12:38:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4329, 1, 439, '2022-09-17 13:06:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4330, 2, 439, '2022-09-17 13:06:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4331, 3, 439, '2022-09-17 13:06:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4332, 4, 439, '2022-09-17 13:06:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4333, 5, 439, '2022-09-17 13:06:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4334, 6, 439, '2022-09-17 13:06:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4335, 7, 439, '2022-09-17 13:06:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4336, 8, 439, '2022-09-17 13:06:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4337, 9, 439, '2022-09-17 13:06:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4338, 10, 439, '2022-09-17 13:06:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4339, 1, 440, '2022-09-19 09:56:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4340, 2, 440, '2022-09-19 09:56:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4341, 3, 440, '2022-09-19 09:56:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4342, 4, 440, '2022-09-19 09:56:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4343, 5, 440, '2022-09-19 09:56:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4344, 6, 440, '2022-09-19 09:56:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4345, 7, 440, '2022-09-19 09:56:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4346, 8, 440, '2022-09-19 09:56:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4347, 9, 440, '2022-09-19 09:56:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4348, 10, 440, '2022-09-19 09:56:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4349, 1, 441, '2022-09-19 10:37:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4350, 2, 441, '2022-09-19 10:37:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4351, 3, 441, '2022-09-19 10:37:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4352, 4, 441, '2022-09-19 10:37:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4353, 5, 441, '2022-09-19 10:37:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4354, 6, 441, '2022-09-19 10:37:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4355, 7, 441, '2022-09-19 10:37:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4356, 8, 441, '2022-09-19 10:37:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4357, 9, 441, '2022-09-19 10:37:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4358, 10, 441, '2022-09-19 10:37:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4359, 1, 442, '2022-09-19 12:08:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4360, 2, 442, '2022-09-19 12:08:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (4361, 3, 442, '2022-09-19 12:08:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4362, 4, 442, '2022-09-19 12:08:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4363, 5, 442, '2022-09-19 12:08:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4364, 6, 442, '2022-09-19 12:08:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4365, 7, 442, '2022-09-19 12:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4366, 8, 442, '2022-09-19 12:08:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4367, 9, 442, '2022-09-19 12:08:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4368, 10, 442, '2022-09-19 12:08:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4369, 1, 443, '2022-09-19 12:16:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4370, 2, 443, '2022-09-19 12:16:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4371, 3, 443, '2022-09-19 12:16:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4372, 4, 443, '2022-09-19 12:16:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4373, 5, 443, '2022-09-19 12:16:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4374, 6, 443, '2022-09-19 12:17:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4375, 7, 443, '2022-09-19 12:17:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4376, 8, 443, '2022-09-19 12:17:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4377, 9, 443, '2022-09-19 12:17:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4379, 10, 443, '2022-09-19 12:17:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4380, 1, 444, '2022-09-19 14:40:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (4381, 2, 444, '2022-09-19 14:40:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (4382, 3, 444, '2022-09-19 14:40:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (4383, 4, 444, '2022-09-19 14:40:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (4384, 5, 444, '2022-09-19 14:40:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4385, 6, 444, '2022-09-19 14:40:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4386, 7, 444, '2022-09-19 14:40:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4387, 8, 444, '2022-09-19 14:40:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4388, 9, 444, '2022-09-19 14:40:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4389, 10, 444, '2022-09-19 14:40:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4390, 1, 445, '2022-09-19 14:55:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4391, 2, 445, '2022-09-19 14:55:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4392, 3, 445, '2022-09-19 14:55:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4393, 4, 445, '2022-09-19 14:55:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4394, 5, 445, '2022-09-19 14:55:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4395, 6, 445, '2022-09-19 14:55:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4396, 7, 445, '2022-09-19 14:55:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4397, 8, 445, '2022-09-19 14:55:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4398, 9, 445, '2022-09-19 14:55:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4399, 10, 445, '2022-09-19 14:55:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4400, 1, 446, '2022-09-19 15:14:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4401, 2, 446, '2022-09-19 15:14:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4402, 3, 446, '2022-09-19 15:15:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4403, 4, 446, '2022-09-19 15:15:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4404, 5, 446, '2022-09-19 15:15:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4405, 6, 446, '2022-09-19 15:15:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4406, 7, 446, '2022-09-19 15:15:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4407, 8, 446, '2022-09-19 15:15:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4408, 9, 446, '2022-09-19 15:15:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4409, 10, 446, '2022-09-19 15:15:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4410, 1, 447, '2022-09-19 15:51:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4411, 2, 447, '2022-09-19 15:51:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4412, 3, 447, '2022-09-19 15:51:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4413, 4, 447, '2022-09-19 15:51:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4414, 5, 447, '2022-09-19 15:51:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4415, 6, 447, '2022-09-19 15:51:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4416, 7, 447, '2022-09-19 15:51:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4417, 8, 447, '2022-09-19 15:51:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4418, 9, 447, '2022-09-19 15:51:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4419, 10, 447, '2022-09-19 15:51:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4420, 1, 448, '2022-09-19 15:57:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4421, 2, 448, '2022-09-19 15:57:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4422, 3, 448, '2022-09-19 15:57:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4423, 4, 448, '2022-09-19 15:57:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (4424, 5, 448, '2022-09-19 15:57:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4425, 6, 448, '2022-09-19 15:57:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4426, 7, 448, '2022-09-19 15:57:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4427, 8, 448, '2022-09-19 15:57:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4428, 9, 448, '2022-09-19 15:57:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4429, 10, 448, '2022-09-19 15:57:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4430, 1, 450, '2022-09-19 16:35:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4431, 2, 450, '2022-09-19 16:35:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4432, 3, 450, '2022-09-19 16:35:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4433, 4, 450, '2022-09-19 16:35:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4434, 5, 450, '2022-09-19 16:35:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4435, 6, 450, '2022-09-19 16:35:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4436, 7, 450, '2022-09-19 16:35:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4437, 8, 450, '2022-09-19 16:35:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4438, 9, 450, '2022-09-19 16:35:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4439, 10, 450, '2022-09-19 16:35:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4440, 1, 451, '2022-09-19 16:45:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4441, 2, 451, '2022-09-19 16:45:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4442, 3, 451, '2022-09-19 16:45:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4443, 4, 451, '2022-09-19 16:45:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4444, 5, 451, '2022-09-19 16:45:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4445, 6, 451, '2022-09-19 16:46:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4446, 7, 451, '2022-09-19 16:46:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4447, 8, 451, '2022-09-19 16:46:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4448, 9, 451, '2022-09-19 16:46:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4449, 10, 451, '2022-09-19 16:46:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4450, 1, 453, '2022-09-19 16:55:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (4451, 2, 453, '2022-09-19 16:55:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (4452, 3, 453, '2022-09-19 16:55:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4453, 4, 453, '2022-09-19 16:55:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4454, 5, 453, '2022-09-19 16:55:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4455, 6, 453, '2022-09-19 16:55:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4456, 7, 453, '2022-09-19 16:55:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4457, 8, 453, '2022-09-19 16:55:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (4458, 9, 453, '2022-09-19 16:55:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (4459, 10, 453, '2022-09-19 16:55:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (4460, 1, 454, '2022-09-19 17:01:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4461, 2, 454, '2022-09-19 17:01:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4462, 3, 454, '2022-09-19 17:01:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4463, 4, 454, '2022-09-19 17:01:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (4464, 5, 454, '2022-09-19 17:01:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4465, 6, 454, '2022-09-19 17:01:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4466, 7, 454, '2022-09-19 17:01:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4467, 8, 454, '2022-09-19 17:01:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4468, 9, 454, '2022-09-19 17:01:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4469, 10, 454, '2022-09-19 17:01:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4470, 1, 455, '2022-09-19 17:07:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4471, 2, 455, '2022-09-19 17:07:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4472, 3, 455, '2022-09-19 17:07:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (4473, 4, 455, '2022-09-19 17:07:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4474, 5, 455, '2022-09-19 17:07:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (4475, 6, 455, '2022-09-19 17:07:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (4476, 7, 455, '2022-09-19 17:07:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (4477, 8, 455, '2022-09-19 17:07:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4478, 9, 455, '2022-09-19 17:07:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (4479, 10, 455, '2022-09-19 17:07:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (4480, 1, 456, '2022-09-19 17:19:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4481, 2, 456, '2022-09-19 17:19:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4482, 3, 456, '2022-09-19 17:19:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4483, 4, 456, '2022-09-19 17:19:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4484, 5, 456, '2022-09-19 17:19:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4485, 6, 456, '2022-09-19 17:19:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4486, 7, 456, '2022-09-19 17:19:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4487, 8, 456, '2022-09-19 17:19:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4488, 9, 456, '2022-09-19 17:19:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4489, 10, 456, '2022-09-19 17:19:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4490, 11, 457, '2022-09-19 17:32:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4491, 2, 457, '2022-09-19 17:37:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4492, 3, 457, '2022-09-19 17:37:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4493, 4, 457, '2022-09-19 17:37:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4494, 5, 457, '2022-09-19 17:38:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4495, 6, 457, '2022-09-19 17:38:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4496, 7, 457, '2022-09-19 17:38:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4497, 8, 457, '2022-09-19 17:38:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4498, 9, 457, '2022-09-19 17:38:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4499, 10, 457, '2022-09-19 17:38:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4500, 1, 458, '2022-09-19 17:50:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (4501, 2, 458, '2022-09-19 17:50:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4502, 3, 458, '2022-09-19 17:50:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4503, 4, 458, '2022-09-19 17:50:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (4504, 5, 458, '2022-09-19 17:50:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4505, 6, 458, '2022-09-19 17:50:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (4506, 7, 458, '2022-09-19 17:50:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4507, 8, 458, '2022-09-19 17:50:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4508, 9, 458, '2022-09-19 17:50:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4509, 10, 458, '2022-09-19 17:50:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (4510, 1, 459, '2022-09-19 18:10:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (4511, 2, 459, '2022-09-19 18:10:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4512, 3, 459, '2022-09-19 18:10:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4513, 4, 459, '2022-09-19 18:10:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4514, 5, 459, '2022-09-19 18:10:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4516, 6, 459, '2022-09-19 18:10:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4517, 7, 459, '2022-09-19 18:10:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4518, 8, 459, '2022-09-19 18:10:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4519, 9, 459, '2022-09-19 18:10:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4520, 10, 459, '2022-09-19 18:10:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (4521, 1, 460, '2022-09-19 18:22:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4522, 2, 460, '2022-09-19 18:22:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (4523, 3, 460, '2022-09-19 18:22:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (4524, 4, 460, '2022-09-19 18:22:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (4525, 5, 460, '2022-09-19 18:22:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4526, 6, 460, '2022-09-19 18:22:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (4527, 7, 460, '2022-09-19 18:22:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (4528, 8, 460, '2022-09-19 18:22:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4529, 9, 460, '2022-09-19 18:22:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4530, 10, 460, '2022-09-19 18:22:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4531, 1, 461, '2022-09-19 18:37:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4532, 2, 461, '2022-09-19 18:37:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4533, 3, 461, '2022-09-19 18:37:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4534, 4, 461, '2022-09-19 18:37:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4535, 5, 461, '2022-09-19 18:37:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4536, 6, 461, '2022-09-19 18:37:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4537, 7, 461, '2022-09-19 18:37:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4538, 9, 461, '2022-09-19 18:37:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (4539, 10, 461, '2022-09-19 18:37:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (4540, 8, 461, '2022-09-19 18:38:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4541, 1, 462, '2022-09-19 18:49:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4542, 2, 462, '2022-09-19 18:49:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (4543, 3, 462, '2022-09-19 18:49:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (4544, 4, 462, '2022-09-19 18:49:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4545, 5, 462, '2022-09-19 18:49:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4546, 6, 462, '2022-09-19 18:49:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4547, 7, 462, '2022-09-19 18:49:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4548, 8, 462, '2022-09-19 18:49:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4549, 9, 462, '2022-09-19 18:49:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4550, 10, 462, '2022-09-19 18:49:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4551, 1, 463, '2022-09-19 18:52:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4552, 2, 463, '2022-09-19 18:52:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (4553, 3, 463, '2022-09-19 18:52:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4554, 4, 463, '2022-09-19 18:52:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (4555, 5, 463, '2022-09-19 18:52:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (4556, 6, 463, '2022-09-19 18:52:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4557, 7, 463, '2022-09-19 18:52:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4558, 8, 463, '2022-09-19 18:52:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4559, 9, 463, '2022-09-19 18:52:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4560, 10, 463, '2022-09-19 18:52:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4561, 11, 464, '2022-09-19 18:55:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4562, 2, 464, '2022-09-19 18:59:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (4563, 3, 464, '2022-09-19 18:59:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (4564, 4, 464, '2022-09-19 18:59:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (4565, 5, 464, '2022-09-19 18:59:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4566, 6, 464, '2022-09-19 18:59:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4567, 7, 464, '2022-09-19 18:59:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4568, 8, 464, '2022-09-19 18:59:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4569, 9, 464, '2022-09-19 18:59:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4570, 10, 464, '2022-09-19 18:59:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4571, 11, 465, '2022-09-19 19:06:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4572, 2, 465, '2022-09-19 19:06:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4573, 3, 465, '2022-09-19 19:06:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4574, 4, 465, '2022-09-19 19:06:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (4575, 5, 465, '2022-09-19 19:10:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4576, 6, 465, '2022-09-19 19:10:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4577, 7, 465, '2022-09-19 19:10:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4578, 8, 465, '2022-09-19 19:10:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4579, 9, 465, '2022-09-19 19:10:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4580, 10, 465, '2022-09-19 19:10:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4581, 1, 466, '2022-09-19 19:27:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4582, 2, 466, '2022-09-19 19:27:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4583, 3, 466, '2022-09-19 19:27:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4584, 4, 466, '2022-09-19 19:27:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4585, 6, 466, '2022-09-19 19:27:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4586, 5, 466, '2022-09-19 19:27:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4587, 7, 466, '2022-09-19 19:27:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4588, 8, 466, '2022-09-19 19:27:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (4589, 9, 466, '2022-09-19 19:27:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4590, 10, 466, '2022-09-19 19:27:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4592, 2, 467, '2022-09-19 19:37:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (4593, 3, 467, '2022-09-19 19:37:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4594, 4, 467, '2022-09-19 19:37:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4595, 5, 467, '2022-09-19 19:37:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4596, 6, 467, '2022-09-19 19:37:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4597, 7, 467, '2022-09-19 19:37:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4598, 8, 467, '2022-09-19 19:37:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4599, 9, 467, '2022-09-19 19:37:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4600, 10, 467, '2022-09-19 19:37:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4601, 1, 468, '2022-09-19 19:43:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4602, 2, 468, '2022-09-19 19:43:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4603, 3, 468, '2022-09-19 19:43:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4604, 4, 468, '2022-09-19 19:43:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4605, 5, 468, '2022-09-19 19:43:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (4606, 6, 468, '2022-09-19 19:43:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4607, 7, 468, '2022-09-19 19:43:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4608, 8, 468, '2022-09-19 19:43:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (4609, 9, 468, '2022-09-19 19:43:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4610, 10, 468, '2022-09-19 19:43:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (4611, 1, 469, '2022-09-19 20:02:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (4612, 2, 469, '2022-09-19 20:02:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (4613, 3, 469, '2022-09-19 20:02:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4614, 4, 469, '2022-09-19 20:02:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4615, 5, 469, '2022-09-19 20:02:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4616, 6, 469, '2022-09-19 20:02:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4617, 7, 469, '2022-09-19 20:02:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4618, 8, 469, '2022-09-19 20:02:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4619, 9, 469, '2022-09-19 20:03:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4620, 10, 469, '2022-09-19 20:03:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4622, 2, 470, '2022-09-20 09:46:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4623, 3, 470, '2022-09-20 09:46:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4624, 4, 470, '2022-09-20 09:46:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4625, 5, 470, '2022-09-20 09:46:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4626, 6, 470, '2022-09-20 09:46:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4627, 7, 470, '2022-09-20 09:46:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4628, 8, 470, '2022-09-20 09:46:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4629, 9, 470, '2022-09-20 09:46:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4630, 10, 470, '2022-09-20 09:46:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4631, 11, 470, '2022-09-20 09:46:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4632, 1, 471, '2022-09-20 09:52:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4633, 2, 471, '2022-09-20 09:52:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4634, 3, 471, '2022-09-20 09:52:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4635, 4, 471, '2022-09-20 09:52:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4636, 5, 471, '2022-09-20 09:52:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4637, 6, 471, '2022-09-20 09:52:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4638, 7, 471, '2022-09-20 09:52:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4639, 8, 471, '2022-09-20 09:52:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4640, 9, 471, '2022-09-20 09:52:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (4641, 10, 471, '2022-09-20 09:52:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4642, 1, 472, '2022-09-20 10:00:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4643, 2, 472, '2022-09-20 10:00:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4644, 3, 472, '2022-09-20 10:00:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4645, 4, 472, '2022-09-20 10:00:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4646, 5, 472, '2022-09-20 10:00:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4647, 6, 472, '2022-09-20 10:00:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4648, 7, 472, '2022-09-20 10:00:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4649, 8, 472, '2022-09-20 10:00:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (4650, 9, 472, '2022-09-20 10:00:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4651, 10, 472, '2022-09-20 10:00:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4652, 1, 473, '2022-09-20 10:08:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4653, 2, 473, '2022-09-20 10:08:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4654, 3, 473, '2022-09-20 10:08:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4655, 4, 473, '2022-09-20 10:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4656, 5, 473, '2022-09-20 10:08:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4657, 6, 473, '2022-09-20 10:08:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4658, 7, 473, '2022-09-20 10:08:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4659, 8, 473, '2022-09-20 10:08:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4660, 9, 473, '2022-09-20 10:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4661, 10, 473, '2022-09-20 10:08:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4662, 1, 474, '2022-09-20 10:16:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4663, 2, 474, '2022-09-20 10:16:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4664, 3, 474, '2022-09-20 10:16:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4665, 4, 474, '2022-09-20 10:16:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4666, 5, 474, '2022-09-20 10:16:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4667, 6, 474, '2022-09-20 10:16:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4668, 7, 474, '2022-09-20 10:16:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4669, 8, 474, '2022-09-20 10:16:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4670, 9, 474, '2022-09-20 10:16:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4671, 10, 474, '2022-09-20 10:16:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4672, 1, 475, '2022-09-20 10:32:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4673, 2, 475, '2022-09-20 10:32:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4674, 3, 475, '2022-09-20 10:32:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4675, 4, 475, '2022-09-20 10:32:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4676, 5, 475, '2022-09-20 10:32:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4677, 6, 475, '2022-09-20 10:32:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4678, 7, 475, '2022-09-20 10:32:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4679, 8, 475, '2022-09-20 10:33:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4680, 9, 475, '2022-09-20 10:33:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4681, 10, 475, '2022-09-20 10:33:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4682, 1, 476, '2022-09-20 10:40:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4683, 2, 476, '2022-09-20 10:40:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4684, 3, 476, '2022-09-20 10:40:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4685, 4, 476, '2022-09-20 10:40:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4686, 5, 476, '2022-09-20 10:40:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4687, 6, 476, '2022-09-20 10:40:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4688, 7, 476, '2022-09-20 10:40:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4689, 8, 476, '2022-09-20 10:40:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4690, 9, 476, '2022-09-20 10:40:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4691, 10, 476, '2022-09-20 10:40:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (4693, 1, 477, '2022-09-20 10:46:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4694, 2, 477, '2022-09-20 10:46:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4695, 3, 477, '2022-09-20 10:46:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4696, 4, 477, '2022-09-20 10:46:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4697, 5, 477, '2022-09-20 10:46:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4698, 6, 477, '2022-09-20 10:46:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4699, 7, 477, '2022-09-20 10:46:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4700, 8, 477, '2022-09-20 10:46:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4701, 9, 477, '2022-09-20 10:46:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4702, 10, 477, '2022-09-20 10:46:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4703, 11, 467, '2022-09-20 10:50:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4704, 1, 479, '2022-09-20 11:27:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (4705, 2, 479, '2022-09-20 11:27:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (4706, 3, 479, '2022-09-20 11:27:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (4707, 4, 479, '2022-09-20 11:27:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4708, 5, 479, '2022-09-20 11:27:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4709, 6, 479, '2022-09-20 11:27:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4710, 7, 479, '2022-09-20 11:27:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4711, 8, 479, '2022-09-20 11:27:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (4712, 9, 479, '2022-09-20 11:27:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4713, 10, 479, '2022-09-20 11:27:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4714, 1, 480, '2022-09-20 11:42:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4715, 2, 480, '2022-09-20 11:42:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4716, 3, 480, '2022-09-20 11:42:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4717, 4, 480, '2022-09-20 11:42:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4719, 5, 480, '2022-09-20 11:42:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4720, 6, 480, '2022-09-20 11:42:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4721, 7, 480, '2022-09-20 11:42:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (4722, 8, 480, '2022-09-20 11:42:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (4723, 9, 480, '2022-09-20 11:42:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (4724, 10, 480, '2022-09-20 11:42:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4725, 1, 481, '2022-09-20 12:16:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4726, 2, 481, '2022-09-20 12:16:08');
INSERT INTO `tb_monitoreo_detalle` VALUES (4727, 3, 481, '2022-09-20 12:16:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4728, 4, 481, '2022-09-20 12:16:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4729, 5, 481, '2022-09-20 12:16:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (4730, 6, 481, '2022-09-20 12:16:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4731, 7, 481, '2022-09-20 12:16:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4732, 8, 481, '2022-09-20 12:16:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4733, 9, 481, '2022-09-20 12:16:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4734, 10, 481, '2022-09-20 12:16:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4735, 1, 482, '2022-09-20 12:21:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4736, 2, 482, '2022-09-20 12:21:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4737, 3, 482, '2022-09-20 12:21:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (4738, 4, 482, '2022-09-20 12:21:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4739, 5, 482, '2022-09-20 12:22:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4740, 6, 482, '2022-09-20 12:22:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4741, 7, 482, '2022-09-20 12:22:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4742, 8, 482, '2022-09-20 12:22:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4743, 9, 482, '2022-09-20 12:22:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4744, 10, 482, '2022-09-20 12:22:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4745, 11, 483, '2022-09-20 12:27:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4746, 2, 483, '2022-09-20 12:28:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (4747, 3, 483, '2022-09-20 12:28:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4748, 4, 483, '2022-09-20 12:32:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4749, 5, 483, '2022-09-20 12:32:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4750, 6, 483, '2022-09-20 12:32:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4751, 7, 483, '2022-09-20 12:32:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (4752, 8, 483, '2022-09-20 12:32:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (4753, 9, 483, '2022-09-20 12:32:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4754, 10, 483, '2022-09-20 12:32:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4755, 1, 484, '2022-09-20 12:43:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4756, 2, 484, '2022-09-20 12:43:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4758, 4, 484, '2022-09-20 12:43:21');
INSERT INTO `tb_monitoreo_detalle` VALUES (4759, 5, 484, '2022-09-20 12:43:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4760, 6, 484, '2022-09-20 12:44:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4761, 7, 484, '2022-09-20 12:44:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (4762, 8, 484, '2022-09-20 12:44:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (4763, 9, 484, '2022-09-20 12:44:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4764, 10, 484, '2022-09-20 12:44:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (4765, 13, 484, '2022-09-20 12:49:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4766, 1, 485, '2022-09-20 12:52:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4767, 2, 485, '2022-09-20 12:52:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (4768, 4, 485, '2022-09-20 12:52:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (4769, 6, 485, '2022-09-20 12:52:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4770, 5, 485, '2022-09-20 12:52:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (4771, 7, 485, '2022-09-20 12:52:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (4772, 8, 485, '2022-09-20 12:52:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (4773, 9, 485, '2022-09-20 12:52:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4775, 10, 485, '2022-09-20 12:52:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4776, 3, 485, '2022-09-20 12:55:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (4777, 1, 487, '2022-09-20 18:24:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (4778, 2, 487, '2022-09-20 18:24:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4779, 20, 487, '2022-09-20 18:44:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (4780, 3, 487, '2022-09-20 18:44:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4782, 4, 487, '2022-09-20 18:44:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4783, 5, 487, '2022-09-20 18:44:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (4784, 6, 487, '2022-09-20 18:44:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4786, 8, 487, '2022-09-20 18:44:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4788, 17, 487, '2022-09-20 18:50:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4789, 19, 487, '2022-09-20 18:50:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4790, 1, 488, '2022-09-20 19:50:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4791, 2, 488, '2022-09-20 19:50:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4792, 3, 488, '2022-09-20 19:50:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4793, 4, 488, '2022-09-20 19:51:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4794, 5, 488, '2022-09-20 19:51:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4795, 6, 488, '2022-09-20 19:51:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4796, 7, 488, '2022-09-20 19:51:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4797, 8, 488, '2022-09-20 19:51:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4798, 9, 488, '2022-09-20 19:51:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4799, 10, 488, '2022-09-20 19:51:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4800, 1, 489, '2022-09-21 15:26:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4801, 12, 489, '2022-09-21 15:26:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4802, 13, 489, '2022-09-21 15:26:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4804, 15, 489, '2022-09-21 15:26:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4805, 7, 489, '2022-09-21 15:26:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4806, 16, 489, '2022-09-21 15:26:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4807, 18, 489, '2022-09-21 15:26:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (4808, 19, 489, '2022-09-21 15:26:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4809, 20, 489, '2022-09-21 15:26:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (4810, 4, 489, '2022-09-21 15:26:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4812, 11, 490, '2022-09-21 16:18:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (4813, 12, 490, '2022-09-21 16:18:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (4814, 13, 490, '2022-09-21 16:18:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4815, 14, 490, '2022-09-21 16:18:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (4816, 15, 490, '2022-09-21 16:18:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4817, 16, 490, '2022-09-21 16:18:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4818, 17, 490, '2022-09-21 16:18:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (4819, 18, 490, '2022-09-21 16:18:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4820, 19, 490, '2022-09-21 16:18:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4821, 20, 490, '2022-09-21 16:18:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4822, 11, 491, '2022-09-21 16:26:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4823, 12, 491, '2022-09-21 16:26:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4824, 13, 491, '2022-09-21 16:26:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (4825, 14, 491, '2022-09-21 16:26:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4826, 15, 491, '2022-09-21 16:26:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4827, 16, 491, '2022-09-21 16:26:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4828, 17, 491, '2022-09-21 16:26:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4829, 18, 491, '2022-09-21 16:26:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (4830, 19, 491, '2022-09-21 16:26:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4831, 20, 491, '2022-09-21 16:26:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4834, 11, 492, '2022-09-21 16:27:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (4835, 12, 492, '2022-09-21 16:27:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (4836, 13, 492, '2022-09-21 16:27:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4837, 14, 492, '2022-09-21 16:27:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (4838, 15, 492, '2022-09-21 16:27:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (4839, 16, 492, '2022-09-21 16:27:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (4840, 17, 492, '2022-09-21 16:27:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4841, 18, 492, '2022-09-21 16:27:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4842, 19, 492, '2022-09-21 16:27:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4843, 20, 492, '2022-09-21 16:27:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (4844, 1, 493, '2022-09-21 18:32:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (4845, 2, 493, '2022-09-21 18:32:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (4846, 3, 493, '2022-09-21 18:32:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4847, 19, 493, '2022-09-21 18:32:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4849, 4, 493, '2022-09-21 18:33:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4850, 5, 493, '2022-09-21 18:33:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4853, 10, 493, '2022-09-21 18:33:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4854, 18, 493, '2022-09-21 18:36:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4855, 17, 493, '2022-09-21 18:36:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4856, 16, 493, '2022-09-21 18:36:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4857, 18, 494, '2022-09-21 18:54:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4858, 17, 494, '2022-09-21 18:54:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4859, 16, 494, '2022-09-21 18:54:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4860, 19, 494, '2022-09-21 18:54:40');
INSERT INTO `tb_monitoreo_detalle` VALUES (4861, 10, 494, '2022-09-21 18:54:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4862, 5, 494, '2022-09-21 18:54:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4863, 4, 494, '2022-09-21 18:54:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (4864, 3, 494, '2022-09-21 18:54:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4865, 2, 494, '2022-09-21 18:54:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (4866, 1, 494, '2022-09-21 18:54:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (4867, 1, 495, '2022-09-22 11:07:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4868, 2, 495, '2022-09-22 11:07:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4869, 3, 495, '2022-09-22 11:07:35');
INSERT INTO `tb_monitoreo_detalle` VALUES (4870, 4, 495, '2022-09-22 11:07:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (4871, 5, 495, '2022-09-22 11:07:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (4872, 6, 495, '2022-09-22 11:08:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (4873, 7, 495, '2022-09-22 11:08:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4874, 8, 495, '2022-09-22 11:08:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (4875, 9, 495, '2022-09-22 11:09:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4876, 10, 495, '2022-09-22 11:09:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4877, 11, 496, '2022-09-22 12:11:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4878, 1, 499, '2022-09-22 12:15:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4879, 2, 499, '2022-09-22 12:15:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4880, 3, 499, '2022-09-22 12:15:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4881, 4, 499, '2022-09-22 12:15:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4882, 5, 499, '2022-09-22 12:15:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4883, 7, 499, '2022-09-22 12:15:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (4884, 18, 499, '2022-09-22 12:15:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (4885, 10, 499, '2022-09-22 12:15:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (4886, 9, 499, '2022-09-22 12:15:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (4887, 6, 499, '2022-09-22 12:15:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4889, 2, 496, '2022-09-22 12:39:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4890, 3, 496, '2022-09-22 12:39:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (4891, 1, 501, '2022-09-22 14:41:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (4892, 2, 501, '2022-09-22 14:41:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (4893, 3, 501, '2022-09-22 14:41:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (4894, 4, 501, '2022-09-22 14:41:52');
INSERT INTO `tb_monitoreo_detalle` VALUES (4895, 18, 501, '2022-09-22 14:41:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4896, 9, 501, '2022-09-22 14:41:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4897, 10, 501, '2022-09-22 14:41:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4898, 5, 501, '2022-09-22 14:42:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4899, 6, 501, '2022-09-22 14:42:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4900, 7, 501, '2022-09-22 14:42:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4901, 1, 500, '2022-09-22 14:58:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4902, 2, 500, '2022-09-22 14:58:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4903, 3, 500, '2022-09-22 14:58:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4904, 4, 500, '2022-09-22 14:58:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (4905, 5, 500, '2022-09-22 14:58:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (4906, 6, 500, '2022-09-22 14:58:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (4907, 7, 500, '2022-09-22 14:58:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4908, 8, 500, '2022-09-22 14:58:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4909, 9, 500, '2022-09-22 14:58:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4910, 10, 500, '2022-09-22 14:58:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4911, 1, 502, '2022-09-22 15:02:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4912, 2, 502, '2022-09-22 15:02:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4913, 3, 502, '2022-09-22 15:02:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4914, 4, 502, '2022-09-22 15:02:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4915, 5, 502, '2022-09-22 15:02:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4916, 6, 502, '2022-09-22 15:02:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (4917, 7, 502, '2022-09-22 15:02:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4918, 8, 502, '2022-09-22 15:02:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (4919, 9, 502, '2022-09-22 15:02:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (4920, 10, 502, '2022-09-22 15:02:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4921, 20, 503, '2022-09-22 15:03:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4922, 9, 503, '2022-09-22 15:03:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (4923, 8, 503, '2022-09-22 15:03:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4924, 7, 503, '2022-09-22 15:03:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4925, 6, 503, '2022-09-22 15:03:59');
INSERT INTO `tb_monitoreo_detalle` VALUES (4926, 5, 503, '2022-09-22 15:04:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4927, 4, 503, '2022-09-22 15:04:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4928, 3, 503, '2022-09-22 15:04:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4929, 2, 503, '2022-09-22 15:04:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4930, 1, 503, '2022-09-22 15:04:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4931, 1, 504, '2022-09-22 15:32:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4932, 2, 504, '2022-09-22 15:32:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4933, 3, 504, '2022-09-22 15:33:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4934, 4, 504, '2022-09-22 15:33:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4935, 5, 504, '2022-09-22 15:33:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4936, 6, 504, '2022-09-22 15:33:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4937, 7, 504, '2022-09-22 15:33:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (4938, 8, 504, '2022-09-22 15:33:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (4939, 9, 504, '2022-09-22 15:33:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4940, 10, 504, '2022-09-22 15:33:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (4941, 1, 506, '2022-09-22 15:55:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (4943, 4, 506, '2022-09-22 15:55:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (4944, 5, 506, '2022-09-22 15:55:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4945, 6, 506, '2022-09-22 15:55:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (4948, 19, 506, '2022-09-22 15:56:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4949, 10, 506, '2022-09-22 15:56:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4950, 2, 506, '2022-09-22 15:58:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (4952, 7, 506, '2022-09-22 15:58:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4953, 8, 506, '2022-09-22 16:05:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (4954, 13, 506, '2022-09-22 16:07:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4958, 1, 507, '2022-09-22 16:16:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (4960, 3, 507, '2022-09-22 16:16:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (4961, 4, 507, '2022-09-22 16:16:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (4962, 5, 507, '2022-09-22 16:16:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (4963, 6, 507, '2022-09-22 16:16:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4964, 10, 507, '2022-09-22 16:17:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4965, 12, 507, '2022-09-22 16:20:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (4966, 10, 508, '2022-09-22 16:50:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4967, 6, 508, '2022-09-22 16:51:22');
INSERT INTO `tb_monitoreo_detalle` VALUES (4968, 7, 508, '2022-09-22 16:51:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (4969, 4, 508, '2022-09-22 16:52:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4970, 15, 508, '2022-09-22 16:56:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4971, 9, 508, '2022-09-22 16:57:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (4972, 18, 508, '2022-09-22 16:57:38');
INSERT INTO `tb_monitoreo_detalle` VALUES (4973, 11, 508, '2022-09-22 16:57:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (4974, 2, 508, '2022-09-22 16:58:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4975, 3, 508, '2022-09-22 16:58:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (4976, 1, 509, '2022-09-22 17:00:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (4978, 3, 509, '2022-09-22 17:00:39');
INSERT INTO `tb_monitoreo_detalle` VALUES (4979, 4, 509, '2022-09-22 17:00:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (4980, 5, 509, '2022-09-22 17:00:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (4981, 6, 509, '2022-09-22 17:00:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (4982, 7, 509, '2022-09-22 17:00:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (4983, 8, 509, '2022-09-22 17:00:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (4985, 9, 509, '2022-09-22 17:00:54');
INSERT INTO `tb_monitoreo_detalle` VALUES (4986, 10, 509, '2022-09-22 17:00:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (4987, 8, 507, '2022-09-22 17:01:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (4988, 7, 507, '2022-09-22 17:02:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (4989, 9, 507, '2022-09-22 17:03:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4990, 1, 510, '2022-09-22 17:49:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (4991, 2, 510, '2022-09-22 17:49:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (4992, 3, 510, '2022-09-22 17:49:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (4993, 4, 510, '2022-09-22 17:49:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4994, 5, 510, '2022-09-22 17:49:04');
INSERT INTO `tb_monitoreo_detalle` VALUES (4995, 6, 510, '2022-09-22 17:49:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (4996, 7, 510, '2022-09-22 17:49:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (4997, 8, 510, '2022-09-22 17:49:09');
INSERT INTO `tb_monitoreo_detalle` VALUES (4998, 9, 510, '2022-09-22 17:49:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (4999, 10, 510, '2022-09-22 17:49:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (5000, 1, 511, '2022-09-22 17:53:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (5001, 2, 511, '2022-09-22 17:53:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (5002, 3, 511, '2022-09-22 17:53:13');
INSERT INTO `tb_monitoreo_detalle` VALUES (5003, 4, 511, '2022-09-22 17:53:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (5004, 5, 511, '2022-09-22 17:53:19');
INSERT INTO `tb_monitoreo_detalle` VALUES (5005, 6, 511, '2022-09-22 17:53:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (5006, 7, 511, '2022-09-22 17:53:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (5007, 8, 511, '2022-09-22 17:53:41');
INSERT INTO `tb_monitoreo_detalle` VALUES (5008, 9, 511, '2022-09-22 17:53:49');
INSERT INTO `tb_monitoreo_detalle` VALUES (5009, 10, 511, '2022-09-22 17:53:53');
INSERT INTO `tb_monitoreo_detalle` VALUES (5010, 2, 509, '2022-09-22 17:57:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (5011, 1, 512, '2022-09-22 18:26:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (5012, 2, 512, '2022-09-22 18:26:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (5013, 3, 512, '2022-09-22 18:26:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (5014, 4, 512, '2022-09-22 18:26:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (5015, 5, 512, '2022-09-22 18:26:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (5016, 6, 512, '2022-09-22 18:26:50');
INSERT INTO `tb_monitoreo_detalle` VALUES (5017, 7, 512, '2022-09-22 18:26:51');
INSERT INTO `tb_monitoreo_detalle` VALUES (5019, 9, 512, '2022-09-22 18:26:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (5020, 10, 512, '2022-09-22 18:26:56');
INSERT INTO `tb_monitoreo_detalle` VALUES (5021, 18, 512, '2022-09-22 18:26:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (5022, 19, 496, '2022-09-22 18:41:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (5023, 17, 496, '2022-09-22 18:41:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (5024, 4, 496, '2022-09-22 18:50:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (5025, 5, 496, '2022-09-22 18:50:02');
INSERT INTO `tb_monitoreo_detalle` VALUES (5026, 6, 496, '2022-09-22 18:50:03');
INSERT INTO `tb_monitoreo_detalle` VALUES (5027, 8, 496, '2022-09-22 18:50:05');
INSERT INTO `tb_monitoreo_detalle` VALUES (5028, 10, 496, '2022-09-22 18:50:07');
INSERT INTO `tb_monitoreo_detalle` VALUES (5029, 19, 513, '2022-09-23 12:10:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (5030, 1, 513, '2022-09-23 12:10:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (5031, 2, 513, '2022-09-23 12:10:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (5032, 3, 513, '2022-09-23 12:10:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (5033, 4, 513, '2022-09-23 12:10:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (5034, 5, 513, '2022-09-23 12:10:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (5035, 6, 513, '2022-09-23 12:10:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (5036, 18, 513, '2022-09-23 12:10:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (5037, 7, 513, '2022-09-23 12:10:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (5038, 10, 513, '2022-09-23 12:10:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (5039, 1, 515, '2022-09-23 15:05:23');
INSERT INTO `tb_monitoreo_detalle` VALUES (5040, 2, 515, '2022-09-23 15:05:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (5041, 3, 515, '2022-09-23 15:05:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (5042, 4, 515, '2022-09-23 15:05:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (5043, 5, 515, '2022-09-23 15:05:29');
INSERT INTO `tb_monitoreo_detalle` VALUES (5044, 6, 515, '2022-09-23 15:05:30');
INSERT INTO `tb_monitoreo_detalle` VALUES (5045, 7, 515, '2022-09-23 15:05:31');
INSERT INTO `tb_monitoreo_detalle` VALUES (5046, 8, 515, '2022-09-23 15:05:32');
INSERT INTO `tb_monitoreo_detalle` VALUES (5047, 9, 515, '2022-09-23 15:05:33');
INSERT INTO `tb_monitoreo_detalle` VALUES (5048, 10, 515, '2022-09-23 15:05:34');
INSERT INTO `tb_monitoreo_detalle` VALUES (5049, 1, 514, '2022-09-23 15:10:11');
INSERT INTO `tb_monitoreo_detalle` VALUES (5050, 2, 514, '2022-09-23 15:10:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (5051, 3, 514, '2022-09-23 15:10:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (5052, 4, 514, '2022-09-23 15:10:17');
INSERT INTO `tb_monitoreo_detalle` VALUES (5053, 5, 514, '2022-09-23 15:10:18');
INSERT INTO `tb_monitoreo_detalle` VALUES (5054, 6, 514, '2022-09-23 15:10:24');
INSERT INTO `tb_monitoreo_detalle` VALUES (5055, 7, 514, '2022-09-23 15:10:25');
INSERT INTO `tb_monitoreo_detalle` VALUES (5056, 8, 514, '2022-09-23 15:10:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (5057, 9, 514, '2022-09-23 15:10:27');
INSERT INTO `tb_monitoreo_detalle` VALUES (5058, 10, 514, '2022-09-23 15:10:28');
INSERT INTO `tb_monitoreo_detalle` VALUES (5059, 11, 516, '2022-09-23 15:20:48');
INSERT INTO `tb_monitoreo_detalle` VALUES (5060, 18, 516, '2022-09-23 15:33:36');
INSERT INTO `tb_monitoreo_detalle` VALUES (5061, 19, 516, '2022-09-23 15:33:37');
INSERT INTO `tb_monitoreo_detalle` VALUES (5062, 16, 516, '2022-09-23 16:04:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (5063, 17, 516, '2022-09-23 16:13:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (5064, 5, 516, '2022-09-23 16:13:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (5065, 3, 516, '2022-09-23 16:13:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (5066, 2, 516, '2022-09-23 16:13:46');
INSERT INTO `tb_monitoreo_detalle` VALUES (5067, 4, 516, '2022-09-23 16:13:47');
INSERT INTO `tb_monitoreo_detalle` VALUES (5068, 20, 516, '2022-09-23 16:21:26');
INSERT INTO `tb_monitoreo_detalle` VALUES (5069, 11, 517, '2022-09-23 16:38:06');
INSERT INTO `tb_monitoreo_detalle` VALUES (5070, 19, 517, '2022-09-23 17:10:57');
INSERT INTO `tb_monitoreo_detalle` VALUES (5071, 17, 517, '2022-09-23 17:10:58');
INSERT INTO `tb_monitoreo_detalle` VALUES (5072, 18, 517, '2022-09-23 17:11:00');
INSERT INTO `tb_monitoreo_detalle` VALUES (5073, 16, 517, '2022-09-23 17:11:01');
INSERT INTO `tb_monitoreo_detalle` VALUES (5074, 20, 517, '2022-09-23 17:17:10');
INSERT INTO `tb_monitoreo_detalle` VALUES (5075, 4, 517, '2022-09-23 18:14:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (5076, 3, 517, '2022-09-23 18:14:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (5077, 2, 517, '2022-09-23 18:14:44');
INSERT INTO `tb_monitoreo_detalle` VALUES (5078, 5, 517, '2022-09-23 18:14:45');
INSERT INTO `tb_monitoreo_detalle` VALUES (5079, 11, 518, '2022-09-23 18:18:20');
INSERT INTO `tb_monitoreo_detalle` VALUES (5080, 16, 518, '2022-09-23 18:41:55');
INSERT INTO `tb_monitoreo_detalle` VALUES (5081, 18, 518, '2022-09-23 18:43:43');
INSERT INTO `tb_monitoreo_detalle` VALUES (5082, 19, 518, '2022-09-23 19:31:42');
INSERT INTO `tb_monitoreo_detalle` VALUES (5083, 17, 518, '2022-09-23 19:37:12');
INSERT INTO `tb_monitoreo_detalle` VALUES (5084, 5, 518, '2022-09-23 19:37:14');
INSERT INTO `tb_monitoreo_detalle` VALUES (5085, 4, 518, '2022-09-23 19:37:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (5086, 3, 518, '2022-09-23 19:37:15');
INSERT INTO `tb_monitoreo_detalle` VALUES (5087, 2, 518, '2022-09-23 19:37:16');
INSERT INTO `tb_monitoreo_detalle` VALUES (5088, 20, 518, '2022-09-23 19:37:20');

-- ----------------------------
-- Table structure for tb_tipo_criterio
-- ----------------------------
DROP TABLE IF EXISTS `tb_tipo_criterio`;
CREATE TABLE `tb_tipo_criterio`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_tipo_criterio
-- ----------------------------
INSERT INTO `tb_tipo_criterio` VALUES (1, 'ERROR NO CRITICO');
INSERT INTO `tb_tipo_criterio` VALUES (2, 'ERROR CRITICO DEL USUARIO FINAL');
INSERT INTO `tb_tipo_criterio` VALUES (3, 'ERROR CRITICO DE NEGOCIACIÓN');

-- ----------------------------
-- Table structure for tb_tipo_servicio
-- ----------------------------
DROP TABLE IF EXISTS `tb_tipo_servicio`;
CREATE TABLE `tb_tipo_servicio`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estado` int NULL DEFAULT NULL COMMENT '0 habilitado / 1 deshabilitado',
  `concepto` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `f_registro` datetime NULL DEFAULT NULL,
  `f_upd` datetime NULL DEFAULT NULL,
  `del` int NULL DEFAULT 0 COMMENT '0 / 1 si',
  `f_del` datetime NULL DEFAULT NULL,
  `user_del` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_tipo_servicio
-- ----------------------------
INSERT INTO `tb_tipo_servicio` VALUES (28, 'RECEPCION', 0, NULL, '2022-08-01 17:08:53', NULL, 0, NULL, NULL);
INSERT INTO `tb_tipo_servicio` VALUES (29, 'ENCUESTAS', 0, NULL, '2022-08-01 17:08:58', NULL, 0, NULL, NULL);
INSERT INTO `tb_tipo_servicio` VALUES (30, 'CITAS', 0, NULL, '2022-08-01 17:08:01', NULL, 0, NULL, NULL);
INSERT INTO `tb_tipo_servicio` VALUES (31, 'ACTUALIZACION', 0, NULL, '2022-08-01 17:08:09', NULL, 0, NULL, NULL);
INSERT INTO `tb_tipo_servicio` VALUES (32, 'EMAIL', 0, NULL, '2022-08-04 15:08:08', NULL, 1, '2022-09-19 16:04:59', 185);
INSERT INTO `tb_tipo_servicio` VALUES (34, 'Prueba Servicio2', 0, NULL, '2022-09-19 11:09:12', '2022-09-19 11:09:27', 1, '2022-09-19 11:59:00', 185);

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

-- ----------------------------
-- Table structure for tb_usuarioxcampania
-- ----------------------------
DROP TABLE IF EXISTS `tb_usuarioxcampania`;
CREATE TABLE `tb_usuarioxcampania`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_campania` int NULL DEFAULT NULL,
  `id_usuario` int NULL DEFAULT NULL,
  `f_registro` datetime NULL DEFAULT NULL,
  `f_upd` datetime NULL DEFAULT NULL,
  `f_control` date NULL DEFAULT NULL,
  `estado` int NULL DEFAULT 0 COMMENT '0 deshhab / 1 habilitado',
  `del` int NULL DEFAULT 0 COMMENT '0 no / 1 si delete',
  `f_del` datetime NULL DEFAULT NULL COMMENT 'fecha delete',
  `user_del` int NULL DEFAULT NULL COMMENT 'usuario delete',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 173 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_usuarioxcampania
-- ----------------------------
INSERT INTO `tb_usuarioxcampania` VALUES (10, 1, 186, '2022-08-08 12:04:32', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (11, 1, 187, '2022-08-08 12:04:32', '2022-09-06 16:21:04', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (12, 1, 188, '2022-08-08 12:04:32', '2022-09-06 16:21:36', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (13, 1, 189, '2022-08-08 12:04:32', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (14, 1, 190, '2022-08-08 12:04:32', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (15, 1, 191, '2022-08-08 12:04:32', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (16, 1, 192, '2022-08-08 12:04:32', '2022-09-06 16:19:59', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (17, 1, 193, '2022-08-08 12:04:32', '2022-08-16 07:08:46', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (18, 1, 194, '2022-08-08 12:04:32', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (19, 1, 195, '2022-08-08 12:04:32', '2022-09-06 16:20:32', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (20, 1, 196, '2022-08-08 12:04:32', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (21, 1, 197, '2022-08-08 12:04:32', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (22, 1, 198, '2022-08-08 12:04:32', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (23, 1, 199, '2022-08-08 12:04:32', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (24, 2, 186, '2022-08-08 12:05:03', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (25, 2, 187, '2022-08-08 12:05:03', '2022-09-06 16:20:59', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (26, 2, 188, '2022-08-08 12:05:03', '2022-09-06 16:21:33', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (27, 2, 189, '2022-08-08 12:05:03', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (28, 2, 190, '2022-08-08 12:05:03', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (29, 2, 191, '2022-08-08 12:05:03', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (30, 2, 192, '2022-08-08 12:05:03', '2022-09-06 16:19:54', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (31, 2, 193, '2022-08-08 12:05:03', '2022-08-16 07:08:54', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (32, 2, 194, '2022-08-08 12:05:03', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (33, 2, 195, '2022-08-08 12:05:03', '2022-09-06 16:20:28', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (34, 2, 196, '2022-08-08 12:05:03', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (35, 2, 197, '2022-08-08 12:05:03', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (36, 2, 198, '2022-08-08 12:05:03', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (37, 2, 199, '2022-08-08 12:05:03', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (38, 3, 186, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (39, 3, 187, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (40, 3, 188, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (41, 3, 189, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (42, 3, 190, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (43, 3, 191, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (44, 3, 192, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (45, 3, 193, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (46, 3, 194, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (47, 3, 195, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (48, 3, 196, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (49, 3, 197, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (50, 3, 198, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (51, 3, 199, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (52, 4, 186, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (53, 4, 187, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (54, 4, 188, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (55, 4, 189, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (56, 4, 190, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (57, 4, 191, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (58, 4, 192, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (59, 4, 193, '2022-08-08 12:07:16', '2022-08-16 07:08:23', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (60, 4, 194, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (61, 4, 195, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (62, 4, 196, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (63, 4, 197, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (64, 4, 198, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (65, 4, 199, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (66, 5, 186, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (67, 5, 187, '2022-08-08 12:07:16', '2022-09-06 16:20:56', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (68, 5, 188, '2022-08-08 12:07:16', '2022-09-06 16:21:29', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (69, 5, 189, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (70, 5, 190, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (71, 5, 191, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (72, 5, 192, '2022-08-08 12:07:16', '2022-09-06 16:19:49', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (73, 5, 193, '2022-08-08 12:07:16', '2022-08-16 07:08:01', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (74, 5, 194, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (75, 5, 195, '2022-08-08 12:07:16', '2022-09-06 16:20:22', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (76, 5, 196, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (77, 5, 197, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (78, 5, 198, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (79, 5, 199, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (80, 6, 186, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (81, 6, 187, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (82, 6, 188, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (83, 6, 189, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (84, 6, 190, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (85, 6, 191, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (86, 6, 192, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (87, 6, 193, '2022-08-08 12:07:16', '2022-08-16 07:08:16', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (88, 6, 194, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (89, 6, 195, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (90, 6, 196, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (91, 6, 197, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (92, 6, 198, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (93, 6, 199, '2022-08-08 12:07:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (94, 5, 232, '2022-08-08 15:08:49', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (95, 2, 232, '2022-08-08 15:08:54', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (96, 3, 232, '2022-08-08 15:08:59', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (97, 6, 232, '2022-08-08 15:08:05', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (98, 4, 232, '2022-08-08 15:08:09', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (99, 1, 100, '2022-08-09 12:08:27', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (100, 2, 100, '2022-08-09 12:08:30', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (101, 5, 100, '2022-08-09 12:08:32', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (102, 3, 100, '2022-08-09 12:08:35', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (103, 6, 100, '2022-08-09 12:08:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (104, 8, 100, '2022-08-17 16:08:02', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (105, 8, 177, '2022-08-17 16:08:11', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (106, 8, 186, '2022-08-17 16:08:23', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (107, 8, 187, '2022-08-17 16:08:28', '2022-09-06 16:20:53', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (108, 8, 188, '2022-08-17 16:08:36', '2022-09-06 16:21:26', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (109, 8, 189, '2022-08-17 16:08:42', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (110, 8, 190, '2022-08-17 16:08:51', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (111, 8, 191, '2022-08-17 16:08:56', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (112, 8, 192, '2022-08-17 16:08:03', '2022-09-06 16:19:46', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (113, 8, 193, '2022-08-17 16:08:07', '2022-09-06 16:21:47', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (114, 8, 194, '2022-08-17 16:08:11', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (115, 8, 195, '2022-08-17 16:08:19', '2022-09-06 16:20:16', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (116, 8, 196, '2022-08-17 16:08:23', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (117, 9, 196, '2022-08-17 18:08:57', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (118, 10, 186, '2022-08-18 10:08:26', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (119, 10, 187, '2022-08-18 10:08:29', '2022-09-06 16:20:48', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (120, 10, 188, '2022-08-18 10:08:32', '2022-09-06 16:21:23', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (121, 10, 189, '2022-08-18 10:08:36', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (122, 10, 190, '2022-08-18 10:08:39', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (123, 10, 191, '2022-08-18 10:08:45', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (124, 10, 192, '2022-08-18 10:08:49', '2022-09-06 16:19:43', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (125, 10, 194, '2022-08-18 10:08:54', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (126, 10, 195, '2022-08-18 10:08:58', '2022-09-06 16:20:11', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (127, 10, 196, '2022-08-18 10:08:04', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (128, 10, 229, '2022-08-18 10:08:14', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (129, 10, 232, '2022-08-18 10:08:18', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (130, 10, 199, '2022-08-18 15:08:33', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (131, 10, 198, '2022-08-18 15:08:36', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (132, 11, 100, '2022-08-24 12:08:53', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (133, 11, 186, '2022-08-24 12:08:58', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (134, 11, 187, '2022-08-24 12:08:01', '2022-09-06 16:20:43', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (135, 11, 188, '2022-08-24 12:08:04', '2022-09-06 16:21:17', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (136, 11, 189, '2022-08-24 12:08:16', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (137, 11, 190, '2022-08-24 12:08:20', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (138, 11, 191, '2022-08-24 12:08:26', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (139, 11, 192, '2022-08-24 12:08:29', '2022-09-06 16:19:40', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (140, 11, 193, '2022-08-24 12:08:32', '2022-09-06 16:21:51', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (141, 11, 194, '2022-08-24 12:08:37', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (142, 11, 195, '2022-08-24 12:08:47', '2022-09-06 16:20:07', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (143, 11, 196, '2022-08-24 12:08:50', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (144, 11, 199, '2022-08-24 12:08:54', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (145, 11, 198, '2022-08-24 12:08:58', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (146, 11, 233, '2022-08-25 17:08:39', '2022-09-06 16:22:07', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (147, 11, 234, '2022-08-25 17:08:45', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (150, 11, 236, '2022-08-29 17:08:11', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (151, 12, 233, '2022-08-29 17:08:23', '2022-09-06 16:22:02', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (152, 1, 238, '2022-08-31 09:08:21', '2022-08-31 09:08:13', NULL, 1, 1, '2022-08-31 09:54:39', 185);
INSERT INTO `tb_usuarioxcampania` VALUES (153, 5, 238, '2022-08-31 10:09:32', '2022-09-06 16:22:31', NULL, 1, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (154, 13, 196, '2022-09-07 15:18:54', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (155, 13, 198, '2022-09-07 15:18:56', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (156, 13, 189, '2022-09-07 15:18:58', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (157, 13, 190, '2022-09-07 15:19:00', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (158, 13, 100, '2022-09-07 15:19:07', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (159, 13, 199, '2022-09-07 15:19:10', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (160, 13, 191, '2022-09-07 15:19:21', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (161, 13, 234, '2022-09-07 15:19:24', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (162, 13, 194, '2022-09-07 15:19:29', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (163, 13, 186, '2022-09-07 15:19:32', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (164, 13, 236, '2022-09-07 15:19:33', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (165, 13, 301, '2022-09-13 15:31:32', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (166, 13, 302, '2022-09-15 14:08:26', '2022-09-16 16:46:12', NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (167, 1, 305, '2022-09-16 17:06:06', '2022-09-16 17:07:03', NULL, 0, 1, '2022-09-16 17:07:13', 229);
INSERT INTO `tb_usuarioxcampania` VALUES (168, 13, 306, '2022-09-16 18:12:48', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (169, 2, 236, '2022-09-17 11:53:14', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (170, 12, 198, '2022-09-21 10:41:44', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (171, 12, 199, '2022-09-21 10:41:48', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `tb_usuarioxcampania` VALUES (172, 12, 196, '2022-09-21 10:41:51', NULL, NULL, 0, 0, NULL, NULL);

-- ----------------------------
-- Procedure structure for usp_informe_monitoreo_final
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_informe_monitoreo_final`;
delimiter ;;
CREATE PROCEDURE `usp_informe_monitoreo_final`(IN vconsulta VARCHAR(10),IN vcampania INT,IN vtipo VARCHAR(10),IN vmes VARCHAR(10),IN vinicio VARCHAR(10),IN vfin VARCHAR(10))
BEGIN
			CASE vconsulta	
				WHEN "meses" THEN
						SELECT
							MONTH(f_control) as id,
							CASE
								WHEN MONTH(f_control)= 8 THEN  'AGOSTO'	
								WHEN MONTH(f_control)= 9 THEN 'SEPTIEMBRE'
								WHEN MONTH(f_control)= 10 THEN 'OCTUBRE'
								WHEN MONTH(f_control)= 11 THEN 'NOVIEMBRE'
								WHEN MONTH(f_control)= 12 THEN 'DICIEMBRE'																								
								ELSE '--'
							END AS descripcion
							from tb_monitoreo 
							where del=0
							group by MONTH(f_control);
							
				WHEN "fechas" THEN
						SELECT
							DATE_FORMAT(date(f_control), '%Y-%m-%d') as descripcion
							from tb_monitoreo 
							where del=0
							group by f_control
							order by date(f_control) desc;
			
				WHEN "campanias" THEN
						SELECT
							id,UPPER(descripcion) as descripcion
							from tb_campania
							-- where estado=0 order by descripcion asc
						UNION 
						select concat(0) as id, concat("TODAS LAS CAMPANIAS") as descripcion;
														
				WHEN "informe" THEN	
				
							SELECT 
								VX.id,
								VX.id_campania,
								VX.asesor,
								VX.nombres,
								VX.campania,
								VX.servicio,
								concat(date(VX.fecha)) as fecha,
								VX.semana,
								SUM(CASE WHEN VX.criterio = 'PRESENTACIÓN' THEN VX.porcentaje ELSE 0 END) AS 'Criterio1',
								SUM(CASE WHEN VX.criterio = 'ESCUCHA ACTIVA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio2',
								SUM(CASE WHEN VX.criterio = 'LENGUAJE Y COMUNICACIÓN' THEN VX.porcentaje ELSE 0 END) AS 'Criterio3',
								SUM(CASE WHEN VX.criterio = 'FIN DE LLAMADA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio4',
								SUM(CASE WHEN VX.criterio = 'CORTESIA / RESPETO AL CLIENTE' THEN VX.porcentaje ELSE 0 END) AS 'Criterio5',
								SUM(CASE WHEN VX.criterio = 'EMPATIA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio6',
								SUM(CASE WHEN VX.criterio = 'PREGUNTAS DE VALIDACION' THEN VX.porcentaje ELSE 0 END) AS 'Criterio7',
								SUM(CASE WHEN VX.criterio = 'SOLICITA DATOS ADICIONALES DEL CLIENTE' THEN VX.porcentaje ELSE 0 END) AS 'Criterio8',
								SUM(CASE WHEN VX.criterio = 'MANEJOS  DE OBJECIONES' THEN VX.porcentaje ELSE 0 END) AS 'Criterio9',
								SUM(CASE WHEN VX.criterio = 'REALIZA TODAS LAS PREGUNTAS' THEN VX.porcentaje ELSE 0 END) AS 'Criterio10',
								SUM(CASE WHEN VX.criterio = 'CONFIRMA LA ASISTENCIA CON UNA PERSONA VALIDADA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio11',
								SUM(CASE WHEN VX.criterio = 'RESUELVE CONSULTA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio12',
								SUM(CASE WHEN VX.criterio = 'INFORMACIÓN DEL SERVICIO DEACUERDO A LA CAMPAÑA (SPEECH)' THEN VX.porcentaje ELSE 0 END) AS 'Criterio13',
								SUM(CASE WHEN VX.criterio = 'REGISTRO CORRECTO DE LLAMADA EN SISTEMA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio14',
								ROUND(SUM(VX.porcentaje),2) as 't_porcentaje',
								VX.actividad,
								VX.observacion,
								VX.monitor
							from (
								-- Informe de monitoreo
									select 
										a.id,
										x.id_campania,
										z.usuario as asesor,
										concat(z.nombres,' ',z.apellidos) as nombres,
										UPPER(y.descripcion) as campania,
										e.descripcion as servicio,
										a.f_control as fecha,
										hh.nro_semana as semana,
										h.descripcion as tipo_criterio,
										d.descripcion as criterio,
										d.id as id_criterio,
										f.descripcion as calificacion,
										c.porcentaje,
										a.observacion,
										concat(xx.nombres,' ',xx.apellidos) as monitor,
										yy.descripcion as actividad
									from 
										tb_monitoreo a
										inner join tb_monitoreo_detalle b on a.id=b.id_monitoreo
										inner join tb_criteriosxservicio c on c.id=b.id_criterioxservicio
										inner join tb_usuarioxcampania x on a.id_usuarioxcampania = x.id
										inner join tb_criterio d on c.id_criterio=d.id
										inner join tb_tipo_criterio h on d.id_tipo_criterio=h.id
										inner join tb_tipo_servicio e on c.id_tipo_servicio=e.id
										inner join tb_calificacion f on c.id_calificacion=f.id
										inner join tb_campania y on x.id_campania=y.id
										inner join tb_usuarios2 z on z.coduser=x.id_usuario
										inner join tb_usuarios2 xx on a.id_monitor=xx.coduser
										inner join tb_actividad yy on a.id_actividad=yy.id
										left join geo_semanas hh on a.f_control=hh.fecha 				
										where 
											a.del=0 and										
											  IF(vcampania >0,x.id_campania = vcampania,year(date(a.f_control))='2022')																						
												and 												
												CASE vtipo	
													WHEN "fechas" THEN	
														 (date(a.f_control)>= vinicio and date(a.f_control)<=vfin) 
													WHEN "mes" THEN
														 -- (DATE_FORMAT(date(a.f_control),"%Y-%m")=vmes)
														 MONTH((date(a.f_control)))=vmes
												ELSE 
														(year(date(a.f_control))='2022')
												END 
								) as VX
								group by VX.id;
				ELSE
					select concat("error",vconsulta) as mensaje; 
			END CASE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_monitoreo_campanias
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_monitoreo_campanias`;
delimiter ;;
CREATE PROCEDURE `usp_monitoreo_campanias`()
BEGIN
	select * from tb_campania where estado=0 ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_monitoreo_informe
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_monitoreo_informe`;
delimiter ;;
CREATE PROCEDURE `usp_monitoreo_informe`(IN vcampania INT)
BEGIN
	SELECT 
		VX.id,
		VX.asesor,
		VX.nombres,
		VX.campania,
		VX.servicio,
		concat(date(VX.fecha)) as fecha,
		VX.semana,
		SUM(CASE WHEN VX.criterio = 'PRESENTACIÓN' THEN VX.porcentaje ELSE 0 END) AS 'Criterio1',
		SUM(CASE WHEN VX.criterio = 'ESCUCHA ACTIVA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio2',
		SUM(CASE WHEN VX.criterio = 'LENGUAJE Y COMUNICACIÓN' THEN VX.porcentaje ELSE 0 END) AS 'Criterio3',
		SUM(CASE WHEN VX.criterio = 'FIN DE LLAMADA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio4',
		SUM(CASE WHEN VX.criterio = 'CORTESIA / RESPETO AL CLIENTE' THEN VX.porcentaje ELSE 0 END) AS 'Criterio5',
		SUM(CASE WHEN VX.criterio = 'EMPATIA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio6',
		SUM(CASE WHEN VX.criterio = 'PREGUNTAS DE VALIDACION' THEN VX.porcentaje ELSE 0 END) AS 'Criterio7',
		SUM(CASE WHEN VX.criterio = 'SOLICITA DATOS ADICIONALES DEL CLIENTE' THEN VX.porcentaje ELSE 0 END) AS 'Criterio8',
		SUM(CASE WHEN VX.criterio = 'MANEJOS  DE OBJECIONES' THEN VX.porcentaje ELSE 0 END) AS 'Criterio9',
		SUM(CASE WHEN VX.criterio = 'REALIZA TODAS LAS PREGUNTAS' THEN VX.porcentaje ELSE 0 END) AS 'Criterio10',
		SUM(CASE WHEN VX.criterio = 'CONFIRMA LA ASISTENCIA CON UNA PERSONA VALIDADA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio11',
		SUM(CASE WHEN VX.criterio = 'RESUELVE CONSULTA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio12',
		SUM(CASE WHEN VX.criterio = 'INFORMACIÓN DEL SERVICIO DEACUERDO A LA CAMPAÑA (SPEECH)' THEN VX.porcentaje ELSE 0 END) AS 'Criterio13',
		SUM(CASE WHEN VX.criterio = 'REGISTRO CORRECTO DE LLAMADA EN SISTEMA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio14',
		ROUND(SUM(VX.porcentaje),2) as 't_porcentaje',
		VX.actividad,
		VX.observacion,
		VX.monitor
	from (
		-- Informe de monitoreo
			select 
				a.id,
				z.usuario as asesor,
				concat(z.nombres,' ',z.apellidos) as nombres,
				y.descripcion as campania,
				e.descripcion as servicio,
				a.f_control as fecha,
				hh.nro_semana as semana,
				h.descripcion as tipo_criterio,
				d.descripcion as criterio,
				d.id as id_criterio,
				f.descripcion as calificacion,
				c.porcentaje,
				a.observacion,
				concat(xx.nombres,' ',xx.apellidos) as monitor,
				yy.descripcion as actividad
			from 
				tb_monitoreo a
				inner join tb_monitoreo_detalle b on a.id=b.id_monitoreo
				inner join tb_criteriosxservicio c on c.id=b.id_criterioxservicio
				inner join tb_usuarioxcampania x on a.id_usuarioxcampania = x.id
				inner join tb_criterio d on c.id_criterio=d.id
				inner join tb_tipo_criterio h on d.id_tipo_criterio=h.id
				inner join tb_tipo_servicio e on c.id_tipo_servicio=e.id
				inner join tb_calificacion f on c.id_calificacion=f.id
				inner join tb_campania y on x.id_campania=y.id
				inner join tb_usuarios2 z on z.coduser=x.id_usuario
				inner join tb_usuarios2 xx on a.id_monitor=xx.coduser
				inner join tb_actividad yy on a.id_actividad=yy.id
				left join geo_semanas hh on a.f_control=hh.fecha 				
				where x.id_campania = vcampania and a.del=0
		) as VX
		group by VX.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_monitoreo_informe_bckp
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_monitoreo_informe_bckp`;
delimiter ;;
CREATE PROCEDURE `usp_monitoreo_informe_bckp`(IN vcampania INT)
BEGIN
	SELECT 
		VX.id,
		VX.asesor,
		VX.nombres,
		VX.campania,
		VX.servicio,
		concat(date(VX.fecha)) as fecha,
		VX.semana,
		SUM(CASE WHEN VX.criterio = 'PRESENTACIÓN' THEN VX.porcentaje ELSE 0 END) AS 'Criterio1',
		SUM(CASE WHEN VX.criterio = 'ESCUCHA ACTIVA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio2',
		SUM(CASE WHEN VX.criterio = 'LENGUAJE Y COMUNICACIÓN' THEN VX.porcentaje ELSE 0 END) AS 'Criterio3',
		SUM(CASE WHEN VX.criterio = 'FIN DE LLAMADA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio4',
		SUM(CASE WHEN VX.criterio = 'CORTESIA / RESPETO AL CLIENTE' THEN VX.porcentaje ELSE 0 END) AS 'Criterio5',
		SUM(CASE WHEN VX.criterio = 'EMPATIA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio6',
		SUM(CASE WHEN VX.criterio = 'PREGUNTAS DE VALIDACION' THEN VX.porcentaje ELSE 0 END) AS 'Criterio7',
		SUM(CASE WHEN VX.criterio = 'SOLICITA DATOS ADICIONALES DEL CLIENTE' THEN VX.porcentaje ELSE 0 END) AS 'Criterio8',
		SUM(CASE WHEN VX.criterio = 'MANEJOS  DE OBJECIONES' THEN VX.porcentaje ELSE 0 END) AS 'Criterio9',
		SUM(CASE WHEN VX.criterio = 'REALIZA TODAS LAS PREGUNTAS' THEN VX.porcentaje ELSE 0 END) AS 'Criterio10',
		SUM(CASE WHEN VX.criterio = 'CONFIRMA LA ASISTENCIA CON UNA PERSONA VALIDADA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio11',
		SUM(CASE WHEN VX.criterio = 'RESUELVE CONSULTA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio12',
		SUM(CASE WHEN VX.criterio = 'INFORMACIÓN DEL SERVICIO DEACUERDO A LA CAMPAÑA (SPEECH)' THEN VX.porcentaje ELSE 0 END) AS 'Criterio13',
		SUM(CASE WHEN VX.criterio = 'REGISTRO CORRECTO DE LLAMADA EN SISTEMA' THEN VX.porcentaje ELSE 0 END) AS 'Criterio14',
		ROUND(SUM(VX.porcentaje),2) as 't_porcentaje',
		VX.actividad,
		VX.observacion,
		VX.monitor
	from (
		-- Informe de monitoreo
			select 
				a.id,
				z.usuario as asesor,
				concat(z.nombres,' ',z.apellidos) as nombres,
				y.descripcion as campania,
				e.descripcion as servicio,
				a.f_control as fecha,
				hh.nro_semana as semana,
				h.descripcion as tipo_criterio,
				d.descripcion as criterio,
				d.id as id_criterio,
				f.descripcion as calificacion,
				c.porcentaje,
				a.observacion,
				concat(xx.nombres,' ',xx.apellidos) as monitor,
				yy.descripcion as actividad
			from 
				tb_monitoreo a
				inner join tb_monitoreo_detalle b on a.id=b.id_monitoreo
				inner join tb_criteriosxservicio c on c.id=b.id_criterioxservicio
				inner join tb_usuarioxcampania x on a.id_usuarioxcampania = x.id
				inner join tb_criterio d on c.id_criterio=d.id
				inner join tb_tipo_criterio h on d.id_tipo_criterio=h.id
				inner join tb_tipo_servicio e on c.id_tipo_servicio=e.id
				inner join tb_calificacion f on c.id_calificacion=f.id
				inner join tb_campania y on x.id_campania=y.id
				inner join tb_usuarios2 z on z.coduser=x.id_usuario
				inner join tb_usuarios2 xx on a.id_monitor=xx.coduser
				inner join tb_actividad yy on a.id_actividad=yy.id
				left join geo_semanas hh on a.f_control=hh.fecha 				
				where x.id_campania = vcampania 
		) as VX
		group by VX.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_monitoreo_informe_integra
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_monitoreo_informe_integra`;
delimiter ;;
CREATE PROCEDURE `usp_monitoreo_informe_integra`(IN vcampania INT,IN vidusuario INT)
BEGIN
	-- Detalle
	select 
		a.id,
		a.f_control,
		f.coduser,
		concat(f.nombres,' ',f.apellidos) as nombres,
		g.descripcion as tipo_criterio,
		e.id_tipo_criterio as id_tipo_criterio,
		e.id as id_criterio,
		e.descripcion as criterio,
		d.porcentaje as porcentaje,
		a.del
	from 
	geochasq_bd_monitoreo_afp.tb_monitoreo a 
	inner join geochasq_bd_monitoreo_afp.tb_monitoreo_detalle b  on a.id=b.id_monitoreo
	inner join geochasq_bd_monitoreo_afp.tb_usuarioxcampania c on a.id_usuarioxcampania=c.id
	inner join geochasq_bd_monitoreo_afp.tb_criteriosxservicio d on b.id_criterioxservicio = d.id
	inner join geochasq_bd_monitoreo_afp.tb_criterio e on d.id_criterio = e.id
	inner join geochasq_bd_monitoreo_afp.tb_tipo_criterio g on g.id= e.id_tipo_criterio
	inner join geochasq_bd_monitoreo_afp.tb_usuarios2 f on c.id_usuario = f.coduser
	where a.id_usuarioxcampania=vidusuario and a.del=0
	order by a.f_control asc; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_monitoreo_informe_integra_final
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_monitoreo_informe_integra_final`;
delimiter ;;
CREATE PROCEDURE `usp_monitoreo_informe_integra_final`(IN vcampania INT,IN vidusuario INT,IN vtipo VARCHAR(10),IN vmes VARCHAR(10),IN vinicio VARCHAR(10),IN vfin VARCHAR(10))
BEGIN
	-- Detalle
	-- PARAMETROS VMES , VINICIO Y VFIN SON OPCIONES
	-- vtipo - tipo de consulta: mes, fechas
		CASE vtipo	
		WHEN "eee" THEN
					select concat("error",vmes) as mensaje; 
		WHEN "mes" THEN
		
					select 
						a.id,
						a.f_control,
						f.coduser,
						concat(f.nombres,' ',f.apellidos) as nombres,
						g.descripcion as tipo_criterio,
						e.id_tipo_criterio as id_tipo_criterio,
						e.id as id_criterio,
						e.descripcion as criterio,
						d.porcentaje as porcentaje,
						a.del,
						a.lead_contacto,
						a.f_registro,
						a.c_final,
						a.observacion
					from 
					geochasq_bd_monitoreo_afp.tb_monitoreo a 
					inner join geochasq_bd_monitoreo_afp.tb_monitoreo_detalle b  on a.id=b.id_monitoreo
					inner join geochasq_bd_monitoreo_afp.tb_usuarioxcampania c on a.id_usuarioxcampania=c.id
					inner join geochasq_bd_monitoreo_afp.tb_criteriosxservicio d on b.id_criterioxservicio = d.id
					inner join geochasq_bd_monitoreo_afp.tb_criterio e on d.id_criterio = e.id
					inner join geochasq_bd_monitoreo_afp.tb_tipo_criterio g on g.id= e.id_tipo_criterio
					inner join geochasq_bd_monitoreo_afp.tb_usuarios2 f on c.id_usuario = f.coduser
					where a.id_usuarioxcampania=vidusuario and DATE_FORMAT(date(a.f_control),"%Y-%m")=vmes and a.del=0
					order by 
						-- a.f_registro,
						a.f_control,g.id,e.id asc; 
					
		WHEN "fechas" THEN	
					select 
						a.id,
						a.f_control,
						f.coduser,
						concat(f.nombres,' ',f.apellidos) as nombres,
						g.descripcion as tipo_criterio,
						e.id_tipo_criterio as id_tipo_criterio,
						e.id as id_criterio,
						e.descripcion as criterio,
						d.porcentaje as porcentaje,
						a.del,
						a.lead_contacto,
						a.f_registro,
						a.c_final,
						a.observacion
					from 
					geochasq_bd_monitoreo_afp.tb_monitoreo a 
					inner join geochasq_bd_monitoreo_afp.tb_monitoreo_detalle b  on a.id=b.id_monitoreo
					inner join geochasq_bd_monitoreo_afp.tb_usuarioxcampania c on a.id_usuarioxcampania=c.id
					inner join geochasq_bd_monitoreo_afp.tb_criteriosxservicio d on b.id_criterioxservicio = d.id
					inner join geochasq_bd_monitoreo_afp.tb_criterio e on d.id_criterio = e.id
					inner join geochasq_bd_monitoreo_afp.tb_tipo_criterio g on g.id= e.id_tipo_criterio
					inner join geochasq_bd_monitoreo_afp.tb_usuarios2 f on c.id_usuario = f.coduser
					where a.id_usuarioxcampania=vidusuario and date(a.f_control)>=vinicio and date(a.f_control)<=vfin and a.del=0
					order by 
						-- a.f_registro,
						a.f_control,g.id,e.id asc; 					
		ELSE
					select concat("error") as mensaje; 
		END CASE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usp_monitoreo_informe_integra_final_x_id
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_monitoreo_informe_integra_final_x_id`;
delimiter ;;
CREATE PROCEDURE `usp_monitoreo_informe_integra_final_x_id`(IN vidmonitoreo INT)
BEGIN
				select 
					a.id,
					a.f_control,
					f.coduser,
					concat(f.nombres,' ',f.apellidos) as nombres,
					g.descripcion as tipo_criterio,
					e.id_tipo_criterio as id_tipo_criterio,
					e.id as id_criterio,
					e.descripcion as criterio,
					d.porcentaje as porcentaje,
					a.del,
					a.lead_contacto,
					a.f_registro,
					a.c_final,
					a.observacion
				from 
				geochasq_bd_monitoreo_afp.tb_monitoreo a 
				inner join geochasq_bd_monitoreo_afp.tb_monitoreo_detalle b  on a.id=b.id_monitoreo
				inner join geochasq_bd_monitoreo_afp.tb_usuarioxcampania c on a.id_usuarioxcampania=c.id
				inner join geochasq_bd_monitoreo_afp.tb_criteriosxservicio d on b.id_criterioxservicio = d.id
				inner join geochasq_bd_monitoreo_afp.tb_criterio e on d.id_criterio = e.id
				inner join geochasq_bd_monitoreo_afp.tb_tipo_criterio g on g.id= e.id_tipo_criterio
				inner join geochasq_bd_monitoreo_afp.tb_usuarios2 f on c.id_usuario = f.coduser
				where a.id=vidmonitoreo and a.del=0
				order by 
					-- a.f_registro,
					a.f_control,g.id,e.id asc; 

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
