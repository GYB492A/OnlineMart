/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : localhost:3306
 Source Schema         : estore

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 11/10/2023 17:24:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of authority
-- ----------------------------

-- ----------------------------
-- Table structure for myorder
-- ----------------------------
DROP TABLE IF EXISTS `myorder`;
CREATE TABLE `myorder`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `buyerId` int NOT NULL,
  `createTime` datetime NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_bid`(`buyerId` ASC) USING BTREE,
  CONSTRAINT `fk_bid` FOREIGN KEY (`buyerId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 840 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of myorder
-- ----------------------------
INSERT INTO `myorder` VALUES (567, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (568, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (569, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (570, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (571, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (572, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (573, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (574, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (575, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (576, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (577, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (578, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (579, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (580, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (581, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (582, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (583, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (584, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (585, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (586, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (587, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (588, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (589, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (590, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (591, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (592, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (593, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (594, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (595, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (596, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (597, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (598, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (599, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (600, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (601, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (602, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (603, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (604, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (605, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (606, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (607, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (608, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (609, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (610, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (611, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (612, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (613, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (614, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (615, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (616, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (617, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (618, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (619, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (620, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (621, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (622, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (623, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (624, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (625, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (626, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (627, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (628, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (629, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (630, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (631, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (632, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (633, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (634, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (635, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (636, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (637, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (638, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (639, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (640, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (641, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (642, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (643, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (644, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (645, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (646, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (647, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (648, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (649, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (650, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (651, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (652, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (653, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (654, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (655, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (656, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (657, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (658, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (659, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (660, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (661, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (662, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (663, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (664, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (665, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (666, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (667, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (668, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (669, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (670, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (671, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (672, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (673, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (674, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (675, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (676, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (677, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (678, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (679, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (680, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (681, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (682, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (683, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (684, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (685, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (686, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (687, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (688, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (689, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (690, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (691, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (692, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (693, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (694, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (695, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (696, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (697, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (698, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (699, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (700, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (701, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (702, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (703, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (704, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (705, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (706, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (707, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (708, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (709, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (710, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (711, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (712, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (713, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (714, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (715, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (716, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (717, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (718, 3, '2020-08-07 11:06:02', 1);
INSERT INTO `myorder` VALUES (719, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (720, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (721, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (722, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (723, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (724, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (725, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (726, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (727, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (728, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (729, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (730, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (731, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (732, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (733, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (734, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (735, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (736, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (737, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (738, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (739, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (740, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (741, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (742, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (743, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (744, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (745, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (746, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (747, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (748, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (749, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (750, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (751, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (752, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (753, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (754, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (755, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (756, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (757, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (758, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (759, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (760, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (761, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (762, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (763, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (764, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (765, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (766, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (767, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (768, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (769, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (770, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (771, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (772, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (773, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (774, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (775, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (776, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (777, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (778, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (779, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (780, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (781, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (782, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (783, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (784, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (785, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (786, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (787, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (788, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (789, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (790, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (791, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (792, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (793, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (794, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (795, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (796, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (797, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (798, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (799, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (800, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (801, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (802, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (803, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (804, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (805, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (806, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (807, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (808, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (809, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (810, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (811, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (812, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (813, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (814, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (815, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (816, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (817, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (818, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (819, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (820, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (821, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (822, 3, '2020-08-07 11:06:03', 1);
INSERT INTO `myorder` VALUES (823, 3, '2020-08-08 00:26:03', 1);
INSERT INTO `myorder` VALUES (824, 3, '2020-08-08 00:27:11', 1);
INSERT INTO `myorder` VALUES (825, 25, '2020-08-10 09:05:46', 1);
INSERT INTO `myorder` VALUES (826, 25, '2020-08-10 09:08:08', 1);
INSERT INTO `myorder` VALUES (827, 22, '2020-08-11 00:12:04', 1);
INSERT INTO `myorder` VALUES (828, 22, '2020-08-11 00:16:34', 1);
INSERT INTO `myorder` VALUES (829, 22, '2020-08-11 00:30:35', 1);
INSERT INTO `myorder` VALUES (830, 22, '2020-08-19 17:33:41', 1);
INSERT INTO `myorder` VALUES (831, 22, '2020-08-19 17:34:04', 1);
INSERT INTO `myorder` VALUES (832, 20, '2020-08-19 18:02:24', 1);
INSERT INTO `myorder` VALUES (833, 22, '2020-08-21 09:29:23', 1);
INSERT INTO `myorder` VALUES (834, 22, '2020-08-24 09:52:29', 1);
INSERT INTO `myorder` VALUES (835, 22, '2020-08-24 09:58:56', 1);
INSERT INTO `myorder` VALUES (836, 22, '2023-09-14 20:38:23', 1);
INSERT INTO `myorder` VALUES (837, 20, '2023-09-14 20:45:08', 1);
INSERT INTO `myorder` VALUES (838, 22, '2023-09-14 20:45:34', 1);
INSERT INTO `myorder` VALUES (839, 22, '2023-09-15 09:55:35', 1);

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `productId` int NOT NULL,
  `amount` int NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_productid`(`productId` ASC) USING BTREE,
  INDEX `fk_odrid`(`orderId` ASC) USING BTREE,
  CONSTRAINT `fk_odrid` FOREIGN KEY (`orderId`) REFERENCES `myorder` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_productid` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 588 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES (311, 567, 1, 1, 3);
INSERT INTO `orderitem` VALUES (312, 568, 1, 1, 3);
INSERT INTO `orderitem` VALUES (313, 569, 1, 1, 3);
INSERT INTO `orderitem` VALUES (314, 570, 1, 1, 2);
INSERT INTO `orderitem` VALUES (315, 571, 1, 1, 1);
INSERT INTO `orderitem` VALUES (316, 572, 1, 1, 1);
INSERT INTO `orderitem` VALUES (317, 573, 1, 1, 1);
INSERT INTO `orderitem` VALUES (318, 574, 1, 1, 1);
INSERT INTO `orderitem` VALUES (319, 575, 1, 1, 1);
INSERT INTO `orderitem` VALUES (320, 576, 1, 1, 1);
INSERT INTO `orderitem` VALUES (321, 577, 1, 1, 2);
INSERT INTO `orderitem` VALUES (322, 578, 1, 1, 1);
INSERT INTO `orderitem` VALUES (323, 579, 1, 1, 1);
INSERT INTO `orderitem` VALUES (324, 580, 1, 1, 1);
INSERT INTO `orderitem` VALUES (325, 581, 1, 1, 1);
INSERT INTO `orderitem` VALUES (326, 582, 1, 1, 1);
INSERT INTO `orderitem` VALUES (327, 583, 1, 1, 1);
INSERT INTO `orderitem` VALUES (328, 584, 1, 1, 1);
INSERT INTO `orderitem` VALUES (329, 585, 1, 1, 1);
INSERT INTO `orderitem` VALUES (330, 586, 1, 1, 1);
INSERT INTO `orderitem` VALUES (331, 587, 1, 1, 1);
INSERT INTO `orderitem` VALUES (332, 588, 1, 1, 1);
INSERT INTO `orderitem` VALUES (333, 589, 1, 1, 1);
INSERT INTO `orderitem` VALUES (334, 590, 1, 1, 1);
INSERT INTO `orderitem` VALUES (335, 591, 1, 1, 2);
INSERT INTO `orderitem` VALUES (336, 592, 1, 1, 1);
INSERT INTO `orderitem` VALUES (337, 593, 1, 1, 1);
INSERT INTO `orderitem` VALUES (338, 594, 1, 1, 1);
INSERT INTO `orderitem` VALUES (339, 595, 1, 1, 1);
INSERT INTO `orderitem` VALUES (340, 596, 1, 1, 1);
INSERT INTO `orderitem` VALUES (341, 597, 1, 1, 1);
INSERT INTO `orderitem` VALUES (342, 598, 1, 1, 1);
INSERT INTO `orderitem` VALUES (343, 599, 1, 1, 1);
INSERT INTO `orderitem` VALUES (344, 600, 1, 1, 1);
INSERT INTO `orderitem` VALUES (345, 601, 1, 1, 1);
INSERT INTO `orderitem` VALUES (346, 602, 1, 1, 1);
INSERT INTO `orderitem` VALUES (347, 603, 1, 1, 1);
INSERT INTO `orderitem` VALUES (348, 604, 1, 1, 1);
INSERT INTO `orderitem` VALUES (349, 605, 1, 1, 1);
INSERT INTO `orderitem` VALUES (350, 606, 1, 1, 1);
INSERT INTO `orderitem` VALUES (351, 607, 1, 1, 1);
INSERT INTO `orderitem` VALUES (352, 608, 1, 1, 1);
INSERT INTO `orderitem` VALUES (353, 609, 1, 1, 1);
INSERT INTO `orderitem` VALUES (354, 610, 1, 1, 1);
INSERT INTO `orderitem` VALUES (355, 611, 1, 1, 1);
INSERT INTO `orderitem` VALUES (356, 612, 1, 1, 1);
INSERT INTO `orderitem` VALUES (357, 613, 1, 1, 1);
INSERT INTO `orderitem` VALUES (358, 614, 1, 1, 1);
INSERT INTO `orderitem` VALUES (359, 615, 1, 1, 1);
INSERT INTO `orderitem` VALUES (360, 616, 1, 1, 1);
INSERT INTO `orderitem` VALUES (361, 617, 1, 1, 1);
INSERT INTO `orderitem` VALUES (362, 618, 1, 1, 1);
INSERT INTO `orderitem` VALUES (363, 619, 1, 1, 1);
INSERT INTO `orderitem` VALUES (364, 620, 1, 1, 1);
INSERT INTO `orderitem` VALUES (365, 621, 1, 1, 1);
INSERT INTO `orderitem` VALUES (366, 622, 1, 1, 1);
INSERT INTO `orderitem` VALUES (367, 623, 1, 1, 1);
INSERT INTO `orderitem` VALUES (368, 624, 1, 1, 1);
INSERT INTO `orderitem` VALUES (369, 625, 1, 1, 1);
INSERT INTO `orderitem` VALUES (370, 626, 1, 1, 1);
INSERT INTO `orderitem` VALUES (371, 627, 1, 1, 1);
INSERT INTO `orderitem` VALUES (372, 628, 1, 1, 1);
INSERT INTO `orderitem` VALUES (373, 629, 1, 1, 1);
INSERT INTO `orderitem` VALUES (374, 630, 1, 1, 1);
INSERT INTO `orderitem` VALUES (375, 631, 1, 1, 1);
INSERT INTO `orderitem` VALUES (376, 632, 1, 1, 1);
INSERT INTO `orderitem` VALUES (377, 633, 1, 1, 1);
INSERT INTO `orderitem` VALUES (378, 634, 1, 1, 1);
INSERT INTO `orderitem` VALUES (379, 635, 1, 1, 1);
INSERT INTO `orderitem` VALUES (380, 636, 1, 1, 1);
INSERT INTO `orderitem` VALUES (381, 637, 1, 1, 1);
INSERT INTO `orderitem` VALUES (382, 638, 1, 1, 1);
INSERT INTO `orderitem` VALUES (383, 639, 1, 1, 1);
INSERT INTO `orderitem` VALUES (384, 640, 1, 1, 1);
INSERT INTO `orderitem` VALUES (385, 641, 1, 1, 1);
INSERT INTO `orderitem` VALUES (386, 642, 1, 1, 1);
INSERT INTO `orderitem` VALUES (387, 643, 1, 1, 1);
INSERT INTO `orderitem` VALUES (388, 644, 1, 1, 1);
INSERT INTO `orderitem` VALUES (389, 645, 1, 1, 1);
INSERT INTO `orderitem` VALUES (390, 646, 1, 1, 1);
INSERT INTO `orderitem` VALUES (391, 647, 1, 1, 1);
INSERT INTO `orderitem` VALUES (392, 648, 1, 1, 1);
INSERT INTO `orderitem` VALUES (393, 649, 1, 1, 1);
INSERT INTO `orderitem` VALUES (394, 650, 1, 1, 1);
INSERT INTO `orderitem` VALUES (395, 651, 1, 1, 1);
INSERT INTO `orderitem` VALUES (396, 652, 1, 1, 1);
INSERT INTO `orderitem` VALUES (397, 653, 1, 1, 1);
INSERT INTO `orderitem` VALUES (398, 654, 1, 1, 1);
INSERT INTO `orderitem` VALUES (399, 655, 1, 1, 1);
INSERT INTO `orderitem` VALUES (400, 656, 1, 1, 1);
INSERT INTO `orderitem` VALUES (401, 657, 1, 1, 1);
INSERT INTO `orderitem` VALUES (402, 658, 1, 1, 1);
INSERT INTO `orderitem` VALUES (403, 659, 1, 1, 1);
INSERT INTO `orderitem` VALUES (404, 660, 1, 1, 1);
INSERT INTO `orderitem` VALUES (405, 661, 1, 1, 1);
INSERT INTO `orderitem` VALUES (406, 662, 1, 1, 1);
INSERT INTO `orderitem` VALUES (407, 663, 1, 1, 1);
INSERT INTO `orderitem` VALUES (408, 664, 1, 1, 1);
INSERT INTO `orderitem` VALUES (409, 665, 1, 1, 1);
INSERT INTO `orderitem` VALUES (410, 666, 1, 1, 1);
INSERT INTO `orderitem` VALUES (411, 667, 1, 1, 1);
INSERT INTO `orderitem` VALUES (412, 668, 1, 1, 1);
INSERT INTO `orderitem` VALUES (413, 669, 1, 1, 1);
INSERT INTO `orderitem` VALUES (414, 670, 1, 1, 1);
INSERT INTO `orderitem` VALUES (415, 671, 1, 1, 1);
INSERT INTO `orderitem` VALUES (416, 672, 1, 1, 1);
INSERT INTO `orderitem` VALUES (417, 673, 1, 1, 1);
INSERT INTO `orderitem` VALUES (418, 674, 1, 1, 1);
INSERT INTO `orderitem` VALUES (419, 675, 1, 1, 1);
INSERT INTO `orderitem` VALUES (420, 676, 1, 1, 1);
INSERT INTO `orderitem` VALUES (421, 677, 1, 1, 1);
INSERT INTO `orderitem` VALUES (422, 678, 1, 1, 1);
INSERT INTO `orderitem` VALUES (423, 679, 1, 1, 1);
INSERT INTO `orderitem` VALUES (424, 680, 1, 1, 1);
INSERT INTO `orderitem` VALUES (425, 681, 1, 1, 1);
INSERT INTO `orderitem` VALUES (426, 682, 1, 1, 1);
INSERT INTO `orderitem` VALUES (427, 683, 1, 1, 1);
INSERT INTO `orderitem` VALUES (428, 684, 1, 1, 1);
INSERT INTO `orderitem` VALUES (429, 685, 1, 1, 1);
INSERT INTO `orderitem` VALUES (430, 686, 1, 1, 1);
INSERT INTO `orderitem` VALUES (431, 687, 1, 1, 1);
INSERT INTO `orderitem` VALUES (432, 688, 1, 1, 1);
INSERT INTO `orderitem` VALUES (433, 689, 1, 1, 1);
INSERT INTO `orderitem` VALUES (434, 690, 1, 1, 1);
INSERT INTO `orderitem` VALUES (435, 691, 1, 1, 1);
INSERT INTO `orderitem` VALUES (436, 692, 1, 1, 1);
INSERT INTO `orderitem` VALUES (437, 693, 1, 1, 1);
INSERT INTO `orderitem` VALUES (438, 694, 1, 1, 1);
INSERT INTO `orderitem` VALUES (439, 695, 1, 1, 1);
INSERT INTO `orderitem` VALUES (440, 696, 1, 1, 1);
INSERT INTO `orderitem` VALUES (441, 697, 1, 1, 1);
INSERT INTO `orderitem` VALUES (442, 698, 1, 1, 1);
INSERT INTO `orderitem` VALUES (443, 699, 1, 1, 1);
INSERT INTO `orderitem` VALUES (444, 700, 1, 1, 1);
INSERT INTO `orderitem` VALUES (445, 701, 1, 1, 1);
INSERT INTO `orderitem` VALUES (446, 702, 1, 1, 1);
INSERT INTO `orderitem` VALUES (447, 703, 1, 1, 1);
INSERT INTO `orderitem` VALUES (448, 704, 1, 1, 1);
INSERT INTO `orderitem` VALUES (449, 705, 1, 1, 1);
INSERT INTO `orderitem` VALUES (450, 706, 1, 1, 1);
INSERT INTO `orderitem` VALUES (451, 707, 1, 1, 1);
INSERT INTO `orderitem` VALUES (452, 708, 1, 1, 1);
INSERT INTO `orderitem` VALUES (453, 709, 1, 1, 1);
INSERT INTO `orderitem` VALUES (454, 710, 1, 1, 1);
INSERT INTO `orderitem` VALUES (455, 711, 1, 1, 1);
INSERT INTO `orderitem` VALUES (456, 712, 1, 1, 1);
INSERT INTO `orderitem` VALUES (457, 713, 1, 1, 1);
INSERT INTO `orderitem` VALUES (458, 714, 1, 1, 1);
INSERT INTO `orderitem` VALUES (459, 715, 1, 1, 1);
INSERT INTO `orderitem` VALUES (460, 716, 1, 1, 1);
INSERT INTO `orderitem` VALUES (461, 717, 1, 1, 1);
INSERT INTO `orderitem` VALUES (462, 718, 1, 1, 1);
INSERT INTO `orderitem` VALUES (463, 719, 1, 1, 1);
INSERT INTO `orderitem` VALUES (464, 720, 1, 1, 1);
INSERT INTO `orderitem` VALUES (465, 721, 1, 1, 1);
INSERT INTO `orderitem` VALUES (466, 722, 1, 1, 1);
INSERT INTO `orderitem` VALUES (467, 723, 1, 1, 1);
INSERT INTO `orderitem` VALUES (468, 724, 1, 1, 1);
INSERT INTO `orderitem` VALUES (469, 725, 1, 1, 1);
INSERT INTO `orderitem` VALUES (470, 726, 1, 1, 1);
INSERT INTO `orderitem` VALUES (471, 727, 1, 1, 1);
INSERT INTO `orderitem` VALUES (472, 728, 1, 1, 1);
INSERT INTO `orderitem` VALUES (473, 729, 1, 1, 1);
INSERT INTO `orderitem` VALUES (474, 730, 1, 1, 1);
INSERT INTO `orderitem` VALUES (475, 731, 1, 1, 1);
INSERT INTO `orderitem` VALUES (476, 732, 1, 1, 1);
INSERT INTO `orderitem` VALUES (477, 733, 1, 1, 1);
INSERT INTO `orderitem` VALUES (478, 734, 1, 1, 1);
INSERT INTO `orderitem` VALUES (479, 735, 1, 1, 1);
INSERT INTO `orderitem` VALUES (480, 736, 1, 1, 1);
INSERT INTO `orderitem` VALUES (481, 737, 1, 1, 1);
INSERT INTO `orderitem` VALUES (482, 738, 1, 1, 1);
INSERT INTO `orderitem` VALUES (483, 739, 1, 1, 1);
INSERT INTO `orderitem` VALUES (484, 740, 1, 1, 1);
INSERT INTO `orderitem` VALUES (485, 741, 1, 1, 1);
INSERT INTO `orderitem` VALUES (486, 742, 1, 1, 1);
INSERT INTO `orderitem` VALUES (487, 743, 1, 1, 1);
INSERT INTO `orderitem` VALUES (488, 744, 1, 1, 1);
INSERT INTO `orderitem` VALUES (489, 745, 1, 1, 1);
INSERT INTO `orderitem` VALUES (490, 746, 1, 1, 1);
INSERT INTO `orderitem` VALUES (491, 747, 1, 1, 1);
INSERT INTO `orderitem` VALUES (492, 748, 1, 1, 1);
INSERT INTO `orderitem` VALUES (493, 749, 1, 1, 1);
INSERT INTO `orderitem` VALUES (494, 750, 1, 1, 1);
INSERT INTO `orderitem` VALUES (495, 751, 1, 1, 1);
INSERT INTO `orderitem` VALUES (496, 752, 1, 1, 1);
INSERT INTO `orderitem` VALUES (497, 753, 1, 1, 1);
INSERT INTO `orderitem` VALUES (498, 754, 1, 1, 1);
INSERT INTO `orderitem` VALUES (499, 755, 1, 1, 1);
INSERT INTO `orderitem` VALUES (500, 756, 1, 1, 1);
INSERT INTO `orderitem` VALUES (501, 757, 1, 1, 1);
INSERT INTO `orderitem` VALUES (502, 758, 1, 1, 1);
INSERT INTO `orderitem` VALUES (503, 759, 1, 1, 1);
INSERT INTO `orderitem` VALUES (504, 760, 1, 1, 1);
INSERT INTO `orderitem` VALUES (505, 761, 1, 1, 1);
INSERT INTO `orderitem` VALUES (506, 762, 1, 1, 1);
INSERT INTO `orderitem` VALUES (507, 763, 1, 1, 1);
INSERT INTO `orderitem` VALUES (508, 764, 1, 1, 1);
INSERT INTO `orderitem` VALUES (509, 765, 1, 1, 1);
INSERT INTO `orderitem` VALUES (510, 766, 1, 1, 1);
INSERT INTO `orderitem` VALUES (511, 767, 1, 1, 1);
INSERT INTO `orderitem` VALUES (512, 768, 1, 1, 1);
INSERT INTO `orderitem` VALUES (513, 769, 1, 1, 1);
INSERT INTO `orderitem` VALUES (514, 770, 1, 1, 1);
INSERT INTO `orderitem` VALUES (515, 771, 1, 1, 1);
INSERT INTO `orderitem` VALUES (516, 772, 1, 1, 1);
INSERT INTO `orderitem` VALUES (517, 773, 1, 1, 1);
INSERT INTO `orderitem` VALUES (518, 774, 1, 1, 1);
INSERT INTO `orderitem` VALUES (519, 775, 1, 1, 1);
INSERT INTO `orderitem` VALUES (520, 776, 1, 1, 1);
INSERT INTO `orderitem` VALUES (521, 777, 1, 1, 1);
INSERT INTO `orderitem` VALUES (522, 778, 1, 1, 1);
INSERT INTO `orderitem` VALUES (523, 779, 1, 1, 1);
INSERT INTO `orderitem` VALUES (524, 780, 1, 1, 1);
INSERT INTO `orderitem` VALUES (525, 781, 1, 1, 1);
INSERT INTO `orderitem` VALUES (526, 782, 1, 1, 1);
INSERT INTO `orderitem` VALUES (527, 783, 1, 1, 1);
INSERT INTO `orderitem` VALUES (528, 784, 1, 1, 1);
INSERT INTO `orderitem` VALUES (529, 785, 1, 1, 1);
INSERT INTO `orderitem` VALUES (530, 786, 1, 1, 1);
INSERT INTO `orderitem` VALUES (531, 787, 1, 1, 1);
INSERT INTO `orderitem` VALUES (532, 788, 1, 1, 1);
INSERT INTO `orderitem` VALUES (533, 789, 1, 1, 1);
INSERT INTO `orderitem` VALUES (534, 790, 1, 1, 1);
INSERT INTO `orderitem` VALUES (535, 791, 1, 1, 1);
INSERT INTO `orderitem` VALUES (536, 792, 1, 1, 1);
INSERT INTO `orderitem` VALUES (537, 793, 1, 1, 1);
INSERT INTO `orderitem` VALUES (538, 794, 1, 1, 1);
INSERT INTO `orderitem` VALUES (539, 795, 1, 1, 1);
INSERT INTO `orderitem` VALUES (540, 796, 1, 1, 1);
INSERT INTO `orderitem` VALUES (541, 797, 1, 1, 1);
INSERT INTO `orderitem` VALUES (542, 798, 1, 1, 1);
INSERT INTO `orderitem` VALUES (543, 799, 1, 1, 1);
INSERT INTO `orderitem` VALUES (544, 800, 1, 1, 1);
INSERT INTO `orderitem` VALUES (545, 801, 1, 1, 1);
INSERT INTO `orderitem` VALUES (546, 802, 1, 1, 1);
INSERT INTO `orderitem` VALUES (547, 803, 1, 1, 1);
INSERT INTO `orderitem` VALUES (548, 804, 1, 1, 1);
INSERT INTO `orderitem` VALUES (549, 805, 1, 1, 1);
INSERT INTO `orderitem` VALUES (550, 806, 1, 1, 1);
INSERT INTO `orderitem` VALUES (551, 807, 1, 1, 1);
INSERT INTO `orderitem` VALUES (552, 808, 1, 1, 1);
INSERT INTO `orderitem` VALUES (553, 809, 1, 1, 1);
INSERT INTO `orderitem` VALUES (554, 810, 1, 1, 1);
INSERT INTO `orderitem` VALUES (555, 811, 1, 1, 1);
INSERT INTO `orderitem` VALUES (556, 812, 1, 1, 1);
INSERT INTO `orderitem` VALUES (557, 813, 1, 1, 1);
INSERT INTO `orderitem` VALUES (558, 814, 1, 1, 1);
INSERT INTO `orderitem` VALUES (559, 815, 1, 1, 1);
INSERT INTO `orderitem` VALUES (560, 816, 1, 1, 1);
INSERT INTO `orderitem` VALUES (561, 817, 1, 1, 1);
INSERT INTO `orderitem` VALUES (562, 818, 1, 1, 1);
INSERT INTO `orderitem` VALUES (563, 819, 1, 1, 1);
INSERT INTO `orderitem` VALUES (564, 820, 1, 1, 1);
INSERT INTO `orderitem` VALUES (565, 821, 1, 1, 1);
INSERT INTO `orderitem` VALUES (566, 822, 1, 1, 1);
INSERT INTO `orderitem` VALUES (567, 823, 420, 5, 1);
INSERT INTO `orderitem` VALUES (568, 824, 420, 4, 1);
INSERT INTO `orderitem` VALUES (569, 825, 434, 18, 1);
INSERT INTO `orderitem` VALUES (570, 826, 2, 9, 1);
INSERT INTO `orderitem` VALUES (571, 826, 1, 9, 1);
INSERT INTO `orderitem` VALUES (572, 827, 243, 1, 3);
INSERT INTO `orderitem` VALUES (573, 828, 3, 1, 3);
INSERT INTO `orderitem` VALUES (574, 829, 3, 1, 3);
INSERT INTO `orderitem` VALUES (575, 830, 3, 1, 1);
INSERT INTO `orderitem` VALUES (576, 831, 2, 1, 1);
INSERT INTO `orderitem` VALUES (578, 833, 122, 10, 1);
INSERT INTO `orderitem` VALUES (579, 834, 1, 122, 1);
INSERT INTO `orderitem` VALUES (580, 835, 2, 60, 1);
INSERT INTO `orderitem` VALUES (581, 836, 1, 1, 1);
INSERT INTO `orderitem` VALUES (582, 836, 241, 1, 1);
INSERT INTO `orderitem` VALUES (583, 836, 1, 1, 1);
INSERT INTO `orderitem` VALUES (584, 836, 5, 2, 1);
INSERT INTO `orderitem` VALUES (585, 837, 1, 3, 1);
INSERT INTO `orderitem` VALUES (586, 838, 1, 3, 1);
INSERT INTO `orderitem` VALUES (587, 839, 1, 3, 1);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float NOT NULL,
  `quantity` int NOT NULL,
  `detailId` int NOT NULL,
  `typeId` int NOT NULL,
  `sellerId` int NOT NULL,
  `picPath` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_detailid`(`detailId` ASC) USING BTREE,
  INDEX `fk_typeid`(`typeId` ASC) USING BTREE,
  INDEX `fk_sellerid`(`sellerId` ASC) USING BTREE,
  CONSTRAINT `fk_detailid` FOREIGN KEY (`detailId`) REFERENCES `productdetail` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_sellerid` FOREIGN KEY (`sellerId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_typeid` FOREIGN KEY (`typeId`) REFERENCES `producttype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 487 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 99463, 1, 1, 20, 'clothes1.jpg');
INSERT INTO `product` VALUES (2, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 200, 2, 1, 20, 'clothes2.jpg');
INSERT INTO `product` VALUES (3, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 185, 3, 1, 20, 'clothes3.jpg');
INSERT INTO `product` VALUES (4, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 97, 4, 1, 20, 'clothes4.jpg');
INSERT INTO `product` VALUES (5, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 119, 98, 5, 1, 20, 'clothes5.jpg');
INSERT INTO `product` VALUES (6, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 120, 200, 6, 1, 20, 'clothes6.jpg');
INSERT INTO `product` VALUES (7, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 110, 499, 7, 1, 20, 'clothes7.jpg');
INSERT INTO `product` VALUES (8, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 233, 800, 8, 1, 20, 'clothes8.jpg');
INSERT INTO `product` VALUES (9, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes9.jpg');
INSERT INTO `product` VALUES (10, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes10.jpg');
INSERT INTO `product` VALUES (11, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes11.jpg');
INSERT INTO `product` VALUES (12, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes12.jpg');
INSERT INTO `product` VALUES (13, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 119, 100, 5, 1, 20, 'clothes13.jpg');
INSERT INTO `product` VALUES (14, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 120, 200, 6, 1, 20, 'clothes14.jpg');
INSERT INTO `product` VALUES (15, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 110, 499, 7, 1, 20, 'clothes15.jpg');
INSERT INTO `product` VALUES (16, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 233, 800, 8, 1, 20, 'clothes16.jpg');
INSERT INTO `product` VALUES (17, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes17.jpg');
INSERT INTO `product` VALUES (18, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes18.jpg');
INSERT INTO `product` VALUES (19, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes19.jpg');
INSERT INTO `product` VALUES (20, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes20.jpg');
INSERT INTO `product` VALUES (21, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes1.jpg');
INSERT INTO `product` VALUES (22, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes2.jpg');
INSERT INTO `product` VALUES (23, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes3.jpg');
INSERT INTO `product` VALUES (24, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes4.jpg');
INSERT INTO `product` VALUES (25, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 119, 100, 5, 1, 20, 'clothes5.jpg');
INSERT INTO `product` VALUES (26, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 120, 200, 6, 1, 20, 'clothes6.jpg');
INSERT INTO `product` VALUES (27, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 110, 500, 7, 1, 20, 'clothes7.jpg');
INSERT INTO `product` VALUES (28, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 233, 800, 8, 1, 20, 'clothes8.jpg');
INSERT INTO `product` VALUES (29, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes9.jpg');
INSERT INTO `product` VALUES (30, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes10.jpg');
INSERT INTO `product` VALUES (31, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes11.jpg');
INSERT INTO `product` VALUES (32, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes12.jpg');
INSERT INTO `product` VALUES (33, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 119, 100, 5, 1, 20, 'clothes13.jpg');
INSERT INTO `product` VALUES (34, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 120, 200, 6, 1, 20, 'clothes14.jpg');
INSERT INTO `product` VALUES (35, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 110, 500, 7, 1, 20, 'clothes15.jpg');
INSERT INTO `product` VALUES (36, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 233, 800, 8, 1, 20, 'clothes16.jpg');
INSERT INTO `product` VALUES (37, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes17.jpg');
INSERT INTO `product` VALUES (38, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes18.jpg');
INSERT INTO `product` VALUES (39, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes19.jpg');
INSERT INTO `product` VALUES (40, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes20.jpg');
INSERT INTO `product` VALUES (41, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes1.jpg');
INSERT INTO `product` VALUES (42, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes2.jpg');
INSERT INTO `product` VALUES (43, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes3.jpg');
INSERT INTO `product` VALUES (44, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes4.jpg');
INSERT INTO `product` VALUES (45, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 119, 100, 5, 1, 20, 'clothes5.jpg');
INSERT INTO `product` VALUES (46, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 120, 200, 6, 1, 20, 'clothes6.jpg');
INSERT INTO `product` VALUES (47, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 110, 500, 7, 1, 20, 'clothes7.jpg');
INSERT INTO `product` VALUES (48, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 233, 800, 8, 1, 20, 'clothes8.jpg');
INSERT INTO `product` VALUES (49, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes9.jpg');
INSERT INTO `product` VALUES (50, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes10.jpg');
INSERT INTO `product` VALUES (51, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes11.jpg');
INSERT INTO `product` VALUES (52, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes12.jpg');
INSERT INTO `product` VALUES (53, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 119, 100, 5, 1, 20, 'clothes13.jpg');
INSERT INTO `product` VALUES (54, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 120, 200, 6, 1, 20, 'clothes14.jpg');
INSERT INTO `product` VALUES (55, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 110, 500, 7, 1, 20, 'clothes15.jpg');
INSERT INTO `product` VALUES (56, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 233, 800, 8, 1, 20, 'clothes16.jpg');
INSERT INTO `product` VALUES (57, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes17.jpg');
INSERT INTO `product` VALUES (58, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes18.jpg');
INSERT INTO `product` VALUES (59, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes19.jpg');
INSERT INTO `product` VALUES (60, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes20.jpg');
INSERT INTO `product` VALUES (61, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes1.jpg');
INSERT INTO `product` VALUES (62, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes2.jpg');
INSERT INTO `product` VALUES (63, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes3.jpg');
INSERT INTO `product` VALUES (64, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes4.jpg');
INSERT INTO `product` VALUES (65, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 119, 100, 5, 1, 20, 'clothes5.jpg');
INSERT INTO `product` VALUES (66, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 120, 200, 6, 1, 20, 'clothes6.jpg');
INSERT INTO `product` VALUES (67, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 110, 500, 7, 1, 20, 'clothes7.jpg');
INSERT INTO `product` VALUES (68, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 233, 800, 8, 1, 20, 'clothes8.jpg');
INSERT INTO `product` VALUES (69, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes9.jpg');
INSERT INTO `product` VALUES (70, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes10.jpg');
INSERT INTO `product` VALUES (71, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes11.jpg');
INSERT INTO `product` VALUES (72, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes12.jpg');
INSERT INTO `product` VALUES (73, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 119, 100, 5, 1, 20, 'clothes13.jpg');
INSERT INTO `product` VALUES (74, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 120, 200, 6, 1, 20, 'clothes14.jpg');
INSERT INTO `product` VALUES (75, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 110, 500, 7, 1, 20, 'clothes15.jpg');
INSERT INTO `product` VALUES (76, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 233, 800, 8, 1, 20, 'clothes16.jpg');
INSERT INTO `product` VALUES (77, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes17.jpg');
INSERT INTO `product` VALUES (78, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes18.jpg');
INSERT INTO `product` VALUES (79, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes19.jpg');
INSERT INTO `product` VALUES (80, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes20.jpg');
INSERT INTO `product` VALUES (81, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes1.jpg');
INSERT INTO `product` VALUES (82, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes2.jpg');
INSERT INTO `product` VALUES (83, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes3.jpg');
INSERT INTO `product` VALUES (84, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes4.jpg');
INSERT INTO `product` VALUES (85, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 119, 100, 5, 1, 20, 'clothes5.jpg');
INSERT INTO `product` VALUES (86, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 120, 200, 6, 1, 20, 'clothes6.jpg');
INSERT INTO `product` VALUES (87, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 110, 500, 7, 1, 20, 'clothes7.jpg');
INSERT INTO `product` VALUES (88, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 233, 800, 8, 1, 20, 'clothes8.jpg');
INSERT INTO `product` VALUES (89, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes9.jpg');
INSERT INTO `product` VALUES (90, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes10.jpg');
INSERT INTO `product` VALUES (91, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes11.jpg');
INSERT INTO `product` VALUES (92, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes12.jpg');
INSERT INTO `product` VALUES (93, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 119, 100, 5, 1, 20, 'clothes13.jpg');
INSERT INTO `product` VALUES (94, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 120, 200, 6, 1, 20, 'clothes14.jpg');
INSERT INTO `product` VALUES (95, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 110, 500, 7, 1, 20, 'clothes15.jpg');
INSERT INTO `product` VALUES (96, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 233, 800, 8, 1, 20, 'clothes16.jpg');
INSERT INTO `product` VALUES (97, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes17.jpg');
INSERT INTO `product` VALUES (98, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes18.jpg');
INSERT INTO `product` VALUES (99, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes19.jpg');
INSERT INTO `product` VALUES (100, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes20.jpg');
INSERT INTO `product` VALUES (101, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes1.jpg');
INSERT INTO `product` VALUES (102, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes2.jpg');
INSERT INTO `product` VALUES (103, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes3.jpg');
INSERT INTO `product` VALUES (104, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes4.jpg');
INSERT INTO `product` VALUES (105, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 119, 100, 5, 1, 20, 'clothes5.jpg');
INSERT INTO `product` VALUES (106, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 120, 200, 6, 1, 20, 'clothes6.jpg');
INSERT INTO `product` VALUES (107, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 110, 500, 7, 1, 20, 'clothes7.jpg');
INSERT INTO `product` VALUES (108, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 233, 800, 8, 1, 20, 'clothes8.jpg');
INSERT INTO `product` VALUES (109, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes9.jpg');
INSERT INTO `product` VALUES (110, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes10.jpg');
INSERT INTO `product` VALUES (111, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes11.jpg');
INSERT INTO `product` VALUES (112, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes12.jpg');
INSERT INTO `product` VALUES (113, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 119, 100, 5, 1, 20, 'clothes13.jpg');
INSERT INTO `product` VALUES (114, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 120, 200, 6, 1, 20, 'clothes14.jpg');
INSERT INTO `product` VALUES (115, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 110, 500, 7, 1, 20, 'clothes15.jpg');
INSERT INTO `product` VALUES (116, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 233, 800, 8, 1, 20, 'clothes16.jpg');
INSERT INTO `product` VALUES (117, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 189, 200, 1, 1, 20, 'clothes17.jpg');
INSERT INTO `product` VALUES (118, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', 120, 300, 2, 1, 20, 'clothes18.jpg');
INSERT INTO `product` VALUES (119, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', 233, 200, 3, 1, 20, 'clothes19.jpg');
INSERT INTO `product` VALUES (120, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', 60, 100, 4, 1, 20, 'clothes20.jpg');
INSERT INTO `product` VALUES (121, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 98, 9, 2, 20, 'bag1.jpg');
INSERT INTO `product` VALUES (122, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 288, 10, 2, 20, 'bag2.jpg');
INSERT INTO `product` VALUES (123, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 199, 11, 2, 20, 'bag3.jpg');
INSERT INTO `product` VALUES (124, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 399, 12, 2, 20, 'bag4.jpg');
INSERT INTO `product` VALUES (125, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 199, 500, 13, 2, 20, 'bag5.jpg');
INSERT INTO `product` VALUES (126, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 10000, 500, 14, 2, 20, 'bag6.jpg');
INSERT INTO `product` VALUES (127, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 8000, 700, 15, 2, 20, 'bag7.jpg');
INSERT INTO `product` VALUES (128, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', 1999, 200, 16, 2, 20, 'bag8.jpg');
INSERT INTO `product` VALUES (129, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag9.jpg');
INSERT INTO `product` VALUES (130, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag10.jpg');
INSERT INTO `product` VALUES (131, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag11.jpg');
INSERT INTO `product` VALUES (132, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag12.jpg');
INSERT INTO `product` VALUES (133, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 199, 500, 13, 2, 20, 'bag13.jpg');
INSERT INTO `product` VALUES (134, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 10000, 500, 14, 2, 20, 'bag14.jpg');
INSERT INTO `product` VALUES (135, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 8000, 700, 15, 2, 20, 'bag15.jpg');
INSERT INTO `product` VALUES (136, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', 1999, 200, 16, 2, 20, 'bag16.jpg');
INSERT INTO `product` VALUES (137, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag17.jpg');
INSERT INTO `product` VALUES (138, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag18.jpg');
INSERT INTO `product` VALUES (139, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag19.jpg');
INSERT INTO `product` VALUES (140, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag20.jpg');
INSERT INTO `product` VALUES (141, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag1.jpg');
INSERT INTO `product` VALUES (142, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag2.jpg');
INSERT INTO `product` VALUES (143, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag3.jpg');
INSERT INTO `product` VALUES (144, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag4.jpg');
INSERT INTO `product` VALUES (145, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 199, 500, 13, 2, 20, 'bag5.jpg');
INSERT INTO `product` VALUES (146, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 10000, 500, 14, 2, 20, 'bag6.jpg');
INSERT INTO `product` VALUES (147, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 8000, 700, 15, 2, 20, 'bag7.jpg');
INSERT INTO `product` VALUES (148, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', 1999, 200, 16, 2, 20, 'bag8.jpg');
INSERT INTO `product` VALUES (149, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag9.jpg');
INSERT INTO `product` VALUES (150, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag10.jpg');
INSERT INTO `product` VALUES (151, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag11.jpg');
INSERT INTO `product` VALUES (152, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag12.jpg');
INSERT INTO `product` VALUES (153, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 199, 500, 13, 2, 20, 'bag13.jpg');
INSERT INTO `product` VALUES (154, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 10000, 500, 14, 2, 20, 'bag14.jpg');
INSERT INTO `product` VALUES (155, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 8000, 700, 15, 2, 20, 'bag15.jpg');
INSERT INTO `product` VALUES (156, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', 1999, 200, 16, 2, 20, 'bag16.jpg');
INSERT INTO `product` VALUES (157, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag17.jpg');
INSERT INTO `product` VALUES (158, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag18.jpg');
INSERT INTO `product` VALUES (159, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag19.jpg');
INSERT INTO `product` VALUES (160, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag20.jpg');
INSERT INTO `product` VALUES (161, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag1.jpg');
INSERT INTO `product` VALUES (162, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag2.jpg');
INSERT INTO `product` VALUES (163, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag3.jpg');
INSERT INTO `product` VALUES (164, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag4.jpg');
INSERT INTO `product` VALUES (165, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 199, 500, 13, 2, 20, 'bag5.jpg');
INSERT INTO `product` VALUES (166, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 10000, 500, 14, 2, 20, 'bag6.jpg');
INSERT INTO `product` VALUES (167, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 8000, 700, 15, 2, 20, 'bag7.jpg');
INSERT INTO `product` VALUES (168, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', 1999, 200, 16, 2, 20, 'bag8.jpg');
INSERT INTO `product` VALUES (169, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag9.jpg');
INSERT INTO `product` VALUES (170, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag10.jpg');
INSERT INTO `product` VALUES (171, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag11.jpg');
INSERT INTO `product` VALUES (172, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag12.jpg');
INSERT INTO `product` VALUES (173, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 199, 500, 13, 2, 20, 'bag13.jpg');
INSERT INTO `product` VALUES (174, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 10000, 500, 14, 2, 20, 'bag14.jpg');
INSERT INTO `product` VALUES (175, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 8000, 700, 15, 2, 20, 'bag15.jpg');
INSERT INTO `product` VALUES (176, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', 1999, 200, 16, 2, 20, 'bag16.jpg');
INSERT INTO `product` VALUES (177, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag17.jpg');
INSERT INTO `product` VALUES (178, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag18.jpg');
INSERT INTO `product` VALUES (179, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag19.jpg');
INSERT INTO `product` VALUES (180, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag20.jpg');
INSERT INTO `product` VALUES (181, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag1.jpg');
INSERT INTO `product` VALUES (182, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag2.jpg');
INSERT INTO `product` VALUES (183, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag3.jpg');
INSERT INTO `product` VALUES (184, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag4.jpg');
INSERT INTO `product` VALUES (185, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 199, 500, 13, 2, 20, 'bag5.jpg');
INSERT INTO `product` VALUES (186, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 10000, 500, 14, 2, 20, 'bag6.jpg');
INSERT INTO `product` VALUES (187, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 8000, 700, 15, 2, 20, 'bag7.jpg');
INSERT INTO `product` VALUES (188, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', 1999, 200, 16, 2, 20, 'bag8.jpg');
INSERT INTO `product` VALUES (189, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag9.jpg');
INSERT INTO `product` VALUES (190, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag10.jpg');
INSERT INTO `product` VALUES (191, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag11.jpg');
INSERT INTO `product` VALUES (192, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag12.jpg');
INSERT INTO `product` VALUES (193, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 199, 500, 13, 2, 20, 'bag13.jpg');
INSERT INTO `product` VALUES (194, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 10000, 500, 14, 2, 20, 'bag14.jpg');
INSERT INTO `product` VALUES (195, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 8000, 700, 15, 2, 20, 'bag15.jpg');
INSERT INTO `product` VALUES (196, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', 1999, 200, 16, 2, 20, 'bag16.jpg');
INSERT INTO `product` VALUES (197, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag17.jpg');
INSERT INTO `product` VALUES (198, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag18.jpg');
INSERT INTO `product` VALUES (199, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag19.jpg');
INSERT INTO `product` VALUES (200, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag20.jpg');
INSERT INTO `product` VALUES (201, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag1.jpg');
INSERT INTO `product` VALUES (202, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag2.jpg');
INSERT INTO `product` VALUES (203, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag3.jpg');
INSERT INTO `product` VALUES (204, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag4.jpg');
INSERT INTO `product` VALUES (205, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 199, 500, 13, 2, 20, 'bag5.jpg');
INSERT INTO `product` VALUES (206, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 10000, 500, 14, 2, 20, 'bag6.jpg');
INSERT INTO `product` VALUES (207, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 8000, 700, 15, 2, 20, 'bag7.jpg');
INSERT INTO `product` VALUES (208, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', 1999, 200, 16, 2, 20, 'bag8.jpg');
INSERT INTO `product` VALUES (209, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag9.jpg');
INSERT INTO `product` VALUES (210, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag10.jpg');
INSERT INTO `product` VALUES (211, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag11.jpg');
INSERT INTO `product` VALUES (212, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag12.jpg');
INSERT INTO `product` VALUES (213, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 199, 500, 13, 2, 20, 'bag13.jpg');
INSERT INTO `product` VALUES (214, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 10000, 500, 14, 2, 20, 'bag14.jpg');
INSERT INTO `product` VALUES (215, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 8000, 700, 15, 2, 20, 'bag15.jpg');
INSERT INTO `product` VALUES (216, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', 1999, 200, 16, 2, 20, 'bag16.jpg');
INSERT INTO `product` VALUES (217, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag17.jpg');
INSERT INTO `product` VALUES (218, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag18.jpg');
INSERT INTO `product` VALUES (219, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag19.jpg');
INSERT INTO `product` VALUES (220, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag20.jpg');
INSERT INTO `product` VALUES (221, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag1.jpg');
INSERT INTO `product` VALUES (222, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag2.jpg');
INSERT INTO `product` VALUES (223, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag3.jpg');
INSERT INTO `product` VALUES (224, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag4.jpg');
INSERT INTO `product` VALUES (225, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 199, 500, 13, 2, 20, 'bag5.jpg');
INSERT INTO `product` VALUES (226, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 10000, 500, 14, 2, 20, 'bag6.jpg');
INSERT INTO `product` VALUES (227, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 8000, 700, 15, 2, 20, 'bag7.jpg');
INSERT INTO `product` VALUES (228, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', 1999, 200, 16, 2, 20, 'bag8.jpg');
INSERT INTO `product` VALUES (229, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag9.jpg');
INSERT INTO `product` VALUES (230, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag10.jpg');
INSERT INTO `product` VALUES (231, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag11.jpg');
INSERT INTO `product` VALUES (232, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag12.jpg');
INSERT INTO `product` VALUES (233, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 199, 500, 13, 2, 20, 'bag13.jpg');
INSERT INTO `product` VALUES (234, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 10000, 500, 14, 2, 20, 'bag14.jpg');
INSERT INTO `product` VALUES (235, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 8000, 700, 15, 2, 20, 'bag15.jpg');
INSERT INTO `product` VALUES (236, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', 1999, 200, 16, 2, 20, 'bag16.jpg');
INSERT INTO `product` VALUES (237, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 333, 100, 9, 2, 20, 'bag17.jpg');
INSERT INTO `product` VALUES (238, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 599, 300, 10, 2, 20, 'bag18.jpg');
INSERT INTO `product` VALUES (239, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 699, 200, 11, 2, 20, 'bag19.jpg');
INSERT INTO `product` VALUES (240, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 388, 400, 12, 2, 20, 'bag20.jpg');
INSERT INTO `product` VALUES (241, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 994, 17, 3, 20, 'homeapply1.jpg');
INSERT INTO `product` VALUES (242, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 1999, 18, 3, 20, 'homeapply2.jpg');
INSERT INTO `product` VALUES (243, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 997, 19, 3, 20, 'homeapply3.jpg');
INSERT INTO `product` VALUES (244, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 1999, 20, 3, 20, 'homeapply4.jpg');
INSERT INTO `product` VALUES (245, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 799, 2000, 21, 3, 20, 'homeapply5.jpg');
INSERT INTO `product` VALUES (246, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 499, 2000, 22, 3, 20, 'homeapply6.jpg');
INSERT INTO `product` VALUES (247, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 899, 2000, 23, 3, 20, 'homeapply7.jpg');
INSERT INTO `product` VALUES (248, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 1199, 1000, 24, 3, 20, 'homeapply8.jpg');
INSERT INTO `product` VALUES (249, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply9.jpg');
INSERT INTO `product` VALUES (250, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply10.jpg');
INSERT INTO `product` VALUES (251, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply11.jpg');
INSERT INTO `product` VALUES (252, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply12.jpg');
INSERT INTO `product` VALUES (253, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 799, 2000, 21, 3, 20, 'homeapply13.jpg');
INSERT INTO `product` VALUES (254, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 499, 2000, 22, 3, 20, 'homeapply14.jpg');
INSERT INTO `product` VALUES (255, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 899, 2000, 23, 3, 20, 'homeapply15.jpg');
INSERT INTO `product` VALUES (256, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 1199, 1000, 24, 3, 20, 'homeapply16.jpg');
INSERT INTO `product` VALUES (257, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply17.jpg');
INSERT INTO `product` VALUES (258, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply18.jpg');
INSERT INTO `product` VALUES (259, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply19.jpg');
INSERT INTO `product` VALUES (260, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply20.jpg');
INSERT INTO `product` VALUES (261, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply1.jpg');
INSERT INTO `product` VALUES (262, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply2.jpg');
INSERT INTO `product` VALUES (263, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply3.jpg');
INSERT INTO `product` VALUES (264, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply4.jpg');
INSERT INTO `product` VALUES (265, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 799, 2000, 21, 3, 20, 'homeapply5.jpg');
INSERT INTO `product` VALUES (266, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 499, 2000, 22, 3, 20, 'homeapply6.jpg');
INSERT INTO `product` VALUES (267, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 899, 2000, 23, 3, 20, 'homeapply7.jpg');
INSERT INTO `product` VALUES (268, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 1199, 1000, 24, 3, 20, 'homeapply8.jpg');
INSERT INTO `product` VALUES (269, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply9.jpg');
INSERT INTO `product` VALUES (270, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply10.jpg');
INSERT INTO `product` VALUES (271, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply11.jpg');
INSERT INTO `product` VALUES (272, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply12.jpg');
INSERT INTO `product` VALUES (273, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 799, 2000, 21, 3, 20, 'homeapply13.jpg');
INSERT INTO `product` VALUES (274, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 499, 2000, 22, 3, 20, 'homeapply14.jpg');
INSERT INTO `product` VALUES (275, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 899, 2000, 23, 3, 20, 'homeapply15.jpg');
INSERT INTO `product` VALUES (276, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 1199, 1000, 24, 3, 20, 'homeapply16.jpg');
INSERT INTO `product` VALUES (277, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply17.jpg');
INSERT INTO `product` VALUES (278, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply18.jpg');
INSERT INTO `product` VALUES (279, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply19.jpg');
INSERT INTO `product` VALUES (280, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply20.jpg');
INSERT INTO `product` VALUES (281, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply1.jpg');
INSERT INTO `product` VALUES (282, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply2.jpg');
INSERT INTO `product` VALUES (283, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply3.jpg');
INSERT INTO `product` VALUES (284, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply4.jpg');
INSERT INTO `product` VALUES (285, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 799, 2000, 21, 3, 20, 'homeapply5.jpg');
INSERT INTO `product` VALUES (286, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 499, 2000, 22, 3, 20, 'homeapply6.jpg');
INSERT INTO `product` VALUES (287, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 899, 2000, 23, 3, 20, 'homeapply7.jpg');
INSERT INTO `product` VALUES (288, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 1199, 1000, 24, 3, 20, 'homeapply8.jpg');
INSERT INTO `product` VALUES (289, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply9.jpg');
INSERT INTO `product` VALUES (290, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply10.jpg');
INSERT INTO `product` VALUES (291, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply11.jpg');
INSERT INTO `product` VALUES (292, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply12.jpg');
INSERT INTO `product` VALUES (293, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 799, 2000, 21, 3, 20, 'homeapply13.jpg');
INSERT INTO `product` VALUES (294, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 499, 2000, 22, 3, 20, 'homeapply14.jpg');
INSERT INTO `product` VALUES (295, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 899, 2000, 23, 3, 20, 'homeapply15.jpg');
INSERT INTO `product` VALUES (296, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 1199, 1000, 24, 3, 20, 'homeapply16.jpg');
INSERT INTO `product` VALUES (297, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply17.jpg');
INSERT INTO `product` VALUES (298, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply18.jpg');
INSERT INTO `product` VALUES (299, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply19.jpg');
INSERT INTO `product` VALUES (300, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply20.jpg');
INSERT INTO `product` VALUES (301, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply1.jpg');
INSERT INTO `product` VALUES (302, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply2.jpg');
INSERT INTO `product` VALUES (303, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply3.jpg');
INSERT INTO `product` VALUES (304, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply4.jpg');
INSERT INTO `product` VALUES (305, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 799, 2000, 21, 3, 20, 'homeapply5.jpg');
INSERT INTO `product` VALUES (306, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 499, 2000, 22, 3, 20, 'homeapply6.jpg');
INSERT INTO `product` VALUES (307, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 899, 2000, 23, 3, 20, 'homeapply7.jpg');
INSERT INTO `product` VALUES (308, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 1199, 1000, 24, 3, 20, 'homeapply8.jpg');
INSERT INTO `product` VALUES (309, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply9.jpg');
INSERT INTO `product` VALUES (310, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply10.jpg');
INSERT INTO `product` VALUES (311, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply11.jpg');
INSERT INTO `product` VALUES (312, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply12.jpg');
INSERT INTO `product` VALUES (313, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 799, 2000, 21, 3, 20, 'homeapply13.jpg');
INSERT INTO `product` VALUES (314, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 499, 2000, 22, 3, 20, 'homeapply14.jpg');
INSERT INTO `product` VALUES (315, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 899, 2000, 23, 3, 20, 'homeapply15.jpg');
INSERT INTO `product` VALUES (316, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 1199, 1000, 24, 3, 20, 'homeapply16.jpg');
INSERT INTO `product` VALUES (317, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply17.jpg');
INSERT INTO `product` VALUES (318, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply18.jpg');
INSERT INTO `product` VALUES (319, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply19.jpg');
INSERT INTO `product` VALUES (320, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply20.jpg');
INSERT INTO `product` VALUES (321, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply1.jpg');
INSERT INTO `product` VALUES (322, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply2.jpg');
INSERT INTO `product` VALUES (323, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply3.jpg');
INSERT INTO `product` VALUES (324, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply4.jpg');
INSERT INTO `product` VALUES (325, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 799, 2000, 21, 3, 20, 'homeapply5.jpg');
INSERT INTO `product` VALUES (326, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 499, 2000, 22, 3, 20, 'homeapply6.jpg');
INSERT INTO `product` VALUES (327, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 899, 2000, 23, 3, 20, 'homeapply7.jpg');
INSERT INTO `product` VALUES (328, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 1199, 1000, 24, 3, 20, 'homeapply8.jpg');
INSERT INTO `product` VALUES (329, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply9.jpg');
INSERT INTO `product` VALUES (330, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply10.jpg');
INSERT INTO `product` VALUES (331, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply11.jpg');
INSERT INTO `product` VALUES (332, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply12.jpg');
INSERT INTO `product` VALUES (333, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 799, 2000, 21, 3, 20, 'homeapply13.jpg');
INSERT INTO `product` VALUES (334, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 499, 2000, 22, 3, 20, 'homeapply14.jpg');
INSERT INTO `product` VALUES (335, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 899, 2000, 23, 3, 20, 'homeapply15.jpg');
INSERT INTO `product` VALUES (336, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 1199, 1000, 24, 3, 20, 'homeapply16.jpg');
INSERT INTO `product` VALUES (337, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply17.jpg');
INSERT INTO `product` VALUES (338, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply18.jpg');
INSERT INTO `product` VALUES (339, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply19.jpg');
INSERT INTO `product` VALUES (340, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply20.jpg');
INSERT INTO `product` VALUES (341, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply1.jpg');
INSERT INTO `product` VALUES (342, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply2.jpg');
INSERT INTO `product` VALUES (343, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply3.jpg');
INSERT INTO `product` VALUES (344, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply4.jpg');
INSERT INTO `product` VALUES (345, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 799, 2000, 21, 3, 20, 'homeapply5.jpg');
INSERT INTO `product` VALUES (346, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 499, 2000, 22, 3, 20, 'homeapply6.jpg');
INSERT INTO `product` VALUES (347, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 899, 2000, 23, 3, 20, 'homeapply7.jpg');
INSERT INTO `product` VALUES (348, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 1199, 1000, 24, 3, 20, 'homeapply8.jpg');
INSERT INTO `product` VALUES (349, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply9.jpg');
INSERT INTO `product` VALUES (350, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply10.jpg');
INSERT INTO `product` VALUES (351, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply11.jpg');
INSERT INTO `product` VALUES (352, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply12.jpg');
INSERT INTO `product` VALUES (353, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 799, 2000, 21, 3, 20, 'homeapply13.jpg');
INSERT INTO `product` VALUES (354, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 499, 2000, 22, 3, 20, 'homeapply14.jpg');
INSERT INTO `product` VALUES (355, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 899, 2000, 23, 3, 20, 'homeapply15.jpg');
INSERT INTO `product` VALUES (356, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 1199, 1000, 24, 3, 20, 'homeapply16.jpg');
INSERT INTO `product` VALUES (357, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 2799, 1000, 17, 3, 20, 'homeapply17.jpg');
INSERT INTO `product` VALUES (358, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 4999, 2000, 18, 3, 20, 'homeapply18.jpg');
INSERT INTO `product` VALUES (359, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 2299, 1000, 19, 3, 20, 'homeapply19.jpg');
INSERT INTO `product` VALUES (360, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 1199, 2000, 20, 3, 20, 'homeapply20.jpg');
INSERT INTO `product` VALUES (361, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 996, 25, 4, 20, 'furniture1.jpg');
INSERT INTO `product` VALUES (362, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture2.jpg');
INSERT INTO `product` VALUES (363, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 98, 27, 4, 20, 'furniture3.jpg');
INSERT INTO `product` VALUES (364, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture4.jpg');
INSERT INTO `product` VALUES (365, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 599, 2000, 29, 4, 20, 'furniture5.jpg');
INSERT INTO `product` VALUES (366, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', 779, 200, 30, 4, 20, 'furniture6.jpg');
INSERT INTO `product` VALUES (367, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 1658, 1000, 31, 4, 20, 'furniture7.jpg');
INSERT INTO `product` VALUES (368, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 2099, 100, 32, 4, 20, 'furniture8.jpg');
INSERT INTO `product` VALUES (369, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture9.jpg');
INSERT INTO `product` VALUES (370, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture10.jpg');
INSERT INTO `product` VALUES (371, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture11.jpg');
INSERT INTO `product` VALUES (372, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture12.jpg');
INSERT INTO `product` VALUES (373, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 599, 2000, 29, 4, 20, 'furniture13.jpg');
INSERT INTO `product` VALUES (374, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', 779, 200, 30, 4, 20, 'furniture14.jpg');
INSERT INTO `product` VALUES (375, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 1658, 1000, 31, 4, 20, 'furniture15.jpg');
INSERT INTO `product` VALUES (376, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 2099, 100, 32, 4, 20, 'furniture16.jpg');
INSERT INTO `product` VALUES (377, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture17.jpg');
INSERT INTO `product` VALUES (378, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture18.jpg');
INSERT INTO `product` VALUES (379, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture19.jpg');
INSERT INTO `product` VALUES (380, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture20.jpg');
INSERT INTO `product` VALUES (381, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture1.jpg');
INSERT INTO `product` VALUES (382, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture2.jpg');
INSERT INTO `product` VALUES (383, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture3.jpg');
INSERT INTO `product` VALUES (384, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture4.jpg');
INSERT INTO `product` VALUES (385, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 599, 2000, 29, 4, 20, 'furniture5.jpg');
INSERT INTO `product` VALUES (386, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', 779, 200, 30, 4, 20, 'furniture6.jpg');
INSERT INTO `product` VALUES (387, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 1658, 1000, 31, 4, 20, 'furniture7.jpg');
INSERT INTO `product` VALUES (388, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 2099, 100, 32, 4, 20, 'furniture8.jpg');
INSERT INTO `product` VALUES (389, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture9.jpg');
INSERT INTO `product` VALUES (390, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture10.jpg');
INSERT INTO `product` VALUES (391, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture11.jpg');
INSERT INTO `product` VALUES (392, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture12.jpg');
INSERT INTO `product` VALUES (393, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 599, 2000, 29, 4, 20, 'furniture13.jpg');
INSERT INTO `product` VALUES (394, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', 779, 200, 30, 4, 20, 'furniture14.jpg');
INSERT INTO `product` VALUES (395, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 1658, 1000, 31, 4, 20, 'furniture15.jpg');
INSERT INTO `product` VALUES (396, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 2099, 100, 32, 4, 20, 'furniture16.jpg');
INSERT INTO `product` VALUES (397, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture17.jpg');
INSERT INTO `product` VALUES (398, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture18.jpg');
INSERT INTO `product` VALUES (399, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture19.jpg');
INSERT INTO `product` VALUES (400, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture20.jpg');
INSERT INTO `product` VALUES (401, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture1.jpg');
INSERT INTO `product` VALUES (402, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture2.jpg');
INSERT INTO `product` VALUES (403, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture3.jpg');
INSERT INTO `product` VALUES (404, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture4.jpg');
INSERT INTO `product` VALUES (405, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 599, 2000, 29, 4, 20, 'furniture5.jpg');
INSERT INTO `product` VALUES (406, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', 779, 200, 30, 4, 20, 'furniture6.jpg');
INSERT INTO `product` VALUES (407, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 1658, 1000, 31, 4, 20, 'furniture7.jpg');
INSERT INTO `product` VALUES (408, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 2099, 100, 32, 4, 20, 'furniture8.jpg');
INSERT INTO `product` VALUES (409, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture9.jpg');
INSERT INTO `product` VALUES (410, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture10.jpg');
INSERT INTO `product` VALUES (411, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture11.jpg');
INSERT INTO `product` VALUES (412, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture12.jpg');
INSERT INTO `product` VALUES (413, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 599, 2000, 29, 4, 20, 'furniture13.jpg');
INSERT INTO `product` VALUES (414, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', 779, 200, 30, 4, 20, 'furniture14.jpg');
INSERT INTO `product` VALUES (415, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 1658, 1000, 31, 4, 20, 'furniture15.jpg');
INSERT INTO `product` VALUES (416, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 2099, 100, 32, 4, 20, 'furniture16.jpg');
INSERT INTO `product` VALUES (417, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture17.jpg');
INSERT INTO `product` VALUES (418, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture18.jpg');
INSERT INTO `product` VALUES (419, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture19.jpg');
INSERT INTO `product` VALUES (420, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 1991, 28, 4, 20, 'furniture20.jpg');
INSERT INTO `product` VALUES (421, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture1.jpg');
INSERT INTO `product` VALUES (422, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture2.jpg');
INSERT INTO `product` VALUES (423, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture3.jpg');
INSERT INTO `product` VALUES (424, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture4.jpg');
INSERT INTO `product` VALUES (425, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 599, 2000, 29, 4, 20, 'furniture5.jpg');
INSERT INTO `product` VALUES (426, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', 779, 200, 30, 4, 20, 'furniture6.jpg');
INSERT INTO `product` VALUES (427, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 1658, 1000, 31, 4, 20, 'furniture7.jpg');
INSERT INTO `product` VALUES (428, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 2099, 100, 32, 4, 20, 'furniture8.jpg');
INSERT INTO `product` VALUES (429, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture9.jpg');
INSERT INTO `product` VALUES (430, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture10.jpg');
INSERT INTO `product` VALUES (431, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture11.jpg');
INSERT INTO `product` VALUES (432, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture12.jpg');
INSERT INTO `product` VALUES (433, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 599, 2000, 29, 4, 20, 'furniture13.jpg');
INSERT INTO `product` VALUES (434, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', 779, 182, 30, 4, 20, 'furniture14.jpg');
INSERT INTO `product` VALUES (435, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 1658, 1000, 31, 4, 20, 'furniture15.jpg');
INSERT INTO `product` VALUES (436, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 2099, 100, 32, 4, 20, 'furniture16.jpg');
INSERT INTO `product` VALUES (437, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture17.jpg');
INSERT INTO `product` VALUES (438, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture18.jpg');
INSERT INTO `product` VALUES (439, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture19.jpg');
INSERT INTO `product` VALUES (440, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture20.jpg');
INSERT INTO `product` VALUES (441, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture1.jpg');
INSERT INTO `product` VALUES (442, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture2.jpg');
INSERT INTO `product` VALUES (443, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture3.jpg');
INSERT INTO `product` VALUES (444, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture4.jpg');
INSERT INTO `product` VALUES (445, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 599, 2000, 29, 4, 20, 'furniture5.jpg');
INSERT INTO `product` VALUES (446, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', 779, 200, 30, 4, 20, 'furniture6.jpg');
INSERT INTO `product` VALUES (447, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 1658, 1000, 31, 4, 20, 'furniture7.jpg');
INSERT INTO `product` VALUES (448, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 2099, 100, 32, 4, 20, 'furniture8.jpg');
INSERT INTO `product` VALUES (449, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture9.jpg');
INSERT INTO `product` VALUES (450, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture10.jpg');
INSERT INTO `product` VALUES (451, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture11.jpg');
INSERT INTO `product` VALUES (452, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture12.jpg');
INSERT INTO `product` VALUES (453, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 599, 2000, 29, 4, 20, 'furniture13.jpg');
INSERT INTO `product` VALUES (454, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', 779, 200, 30, 4, 20, 'furniture14.jpg');
INSERT INTO `product` VALUES (455, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 1658, 1000, 31, 4, 20, 'furniture15.jpg');
INSERT INTO `product` VALUES (456, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 2099, 100, 32, 4, 20, 'furniture16.jpg');
INSERT INTO `product` VALUES (457, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture17.jpg');
INSERT INTO `product` VALUES (458, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture18.jpg');
INSERT INTO `product` VALUES (459, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture19.jpg');
INSERT INTO `product` VALUES (460, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture20.jpg');
INSERT INTO `product` VALUES (461, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture1.jpg');
INSERT INTO `product` VALUES (462, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture2.jpg');
INSERT INTO `product` VALUES (463, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture3.jpg');
INSERT INTO `product` VALUES (464, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture4.jpg');
INSERT INTO `product` VALUES (465, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 599, 2000, 29, 4, 20, 'furniture5.jpg');
INSERT INTO `product` VALUES (466, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', 779, 200, 30, 4, 20, 'furniture6.jpg');
INSERT INTO `product` VALUES (467, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 1658, 1000, 31, 4, 20, 'furniture7.jpg');
INSERT INTO `product` VALUES (468, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 2099, 100, 32, 4, 20, 'furniture8.jpg');
INSERT INTO `product` VALUES (469, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture9.jpg');
INSERT INTO `product` VALUES (470, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture10.jpg');
INSERT INTO `product` VALUES (471, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture11.jpg');
INSERT INTO `product` VALUES (472, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture12.jpg');
INSERT INTO `product` VALUES (473, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 599, 2000, 29, 4, 20, 'furniture13.jpg');
INSERT INTO `product` VALUES (474, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', 779, 200, 30, 4, 20, 'furniture14.jpg');
INSERT INTO `product` VALUES (475, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 1658, 1000, 31, 4, 20, 'furniture15.jpg');
INSERT INTO `product` VALUES (476, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 2099, 100, 32, 4, 20, 'furniture16.jpg');
INSERT INTO `product` VALUES (477, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 2399, 1000, 25, 4, 20, 'furniture17.jpg');
INSERT INTO `product` VALUES (478, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 4999, 2000, 26, 4, 20, 'furniture18.jpg');
INSERT INTO `product` VALUES (479, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', 5999, 100, 27, 4, 20, 'furniture19.jpg');
INSERT INTO `product` VALUES (480, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', 19999, 2000, 28, 4, 20, 'furniture20.jpg');
INSERT INTO `product` VALUES (484, 'test', 1234, 123, 36, 1, 20, '54cab1bf-1836-4a4f-b3a7-52608e057285');
INSERT INTO `product` VALUES (485, 'test1', 12, 123, 37, 1, 20, '481492b8-3623-4965-804c-4652c90519bb');
INSERT INTO `product` VALUES (486, '123', 123, 123, 38, 1, 20, 'dc00952e-2a58-4e37-9799-8fc222867a04');

-- ----------------------------
-- Table structure for productdetail
-- ----------------------------
DROP TABLE IF EXISTS `productdetail`;
CREATE TABLE `productdetail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `brandname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shelfLife` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `producer` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `producerAddress` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productdetail
-- ----------------------------
INSERT INTO `productdetail` VALUES (1, '韩都衣舍旗舰店初秋女装ins学院风V领卫衣女宽松韩版春秋学生上衣', 'HSTYLE/韩都衣舍', '3年', '韩都衣舍制衣厂', '广东佛山南海', '13345676543', '适用年龄: 18-24周岁材质: 粘胶尺码: XS S M L图案: 拼色领子: V领风格: 通勤通勤: 韩版颜色分类: 姜黄色 藏蓝色袖型: 喇叭袖组合形式: 单件货号: OU13495年份季节: 2020年秋季袖长: 长袖款式: 套头厚薄: 常规衣长: 常规服装版型: 宽松服装款式细节: 撞色 褶皱 拼接 螺纹销售渠道类型: 纯电商(只在线上销售)材质成分: 粘胶纤维(粘纤)43% 聚酰胺');
INSERT INTO `productdetail` VALUES (2, '运动服套装女2020春秋新款韩版宽松休闲装时尚卫衣阔腿长裤两件套', '乔影', '3年', '乔影制衣厂', '广东佛山南海', '13456789876', '适用年龄: 25-35周岁尺码: M L XL XXL XXXL颜色分类: 杏色 紫色 黑色货号: 58189JJJ上市年份季节: 2020年秋季销售渠道类型: 纯电商(只在线上销售)材质成分: 聚酯纤维93% 聚氨酯弹性纤');
INSERT INTO `productdetail` VALUES (3, '情侣装秋装卫衣宽松潮流小众设计感ins超火港风一裙一衣气质韩版', '波林娜', '3年', '波林娜制衣厂', '广东佛山顺德', '13423456765', '适用年龄: 18-24周岁尺码: S M L XL 2XL 3XL 4XL图案: 字母领子: 圆领风格: 通勤通勤: 韩版颜色分类: 女款连衣裙 男款卫衣袖型: 常规组合形式: 单件货号: BLN6899A0716年份季节: 2020年秋季袖长: 长袖款式: 套头厚薄: 常规衣长: 常规服装版型: 宽松服装款式细节: 褶皱 印花 抽绳销售渠道类型: 纯电商(只在线上销售)材质成分: 聚酯纤维100%');
INSERT INTO `productdetail` VALUES (4, '减10卫衣女套头韩版宽松无帽慵懒风2020年秋装新款早初春秋季薄款', '芬岚', '3年', '芬岚制衣厂', '广东佛山南海', '13456787678', '适用年龄: 25-29周岁尺码: 均码图案: 字母领子: 圆领风格: 通勤通勤: 韩版颜色分类: 橘色 绿色 白色 黄色袖型: 常规组合形式: 单件货号: FL20071601内胆类型: 棉内胆年份季节: 2020年秋季袖长: 长袖款式: 套头厚薄: 常规衣长: 常规服装版型: 宽松服装款式细节: 印花销售渠道类型: 纯电商(只在线上销售)材质成分: 聚酯纤维50% 棉30% 粘胶纤维');
INSERT INTO `productdetail` VALUES (5, '花花公子短袖T恤男夏季薄款夏装男士POLO衫纯棉冰丝潮流修身t体恤', 'PLAYBOY/花花公子', '3年', 'PLAYBOY/花花公子制衣厂', '广东佛山三水', '13434567656', '面料分类: 棉毛布货号: HHGZBTXT125基础风格: 青春流行上市年份季节: 2019年夏季厚薄: 常规销售渠道类型: 纯电商(只在线上销售)材质成分: 棉95% 聚氨酯弹性纤维(氨纶');
INSERT INTO `productdetail` VALUES (6, '男装(UT) DORAEMON印花T恤(短袖T恤)(哆啦A梦)430192 优衣库', 'Uniqlo/优衣库', '3年', 'Uniqlo/优衣库制衣厂', '广东佛山禅城', '13456789098', '货号: UQ430192000基础风格: 其他上市年份季节: 2020年夏季厚薄: 常规销售渠道类型: 商场同款(线上线下都销售)材质成分: 棉100%');
INSERT INTO `productdetail` VALUES (7, '森马短袖T恤男装2020夏季新款字母圆领套头内搭打底衫男潮牌衣服', 'Semir/森马', '3年', 'Semir/森马制衣厂', '广东佛山顺德', '13434567898', '面料分类: 其他货号: 19-220001207基础风格: 青春流行上市年份季节: 2020年春季厚薄: 常规销售渠道类型: 商场同款(线上线下都销售)材质成分: 棉100%');
INSERT INTO `productdetail` VALUES (8, '太平鸟男装 短袖T恤男夏季纯色打底衫纯棉体恤韩版衣服青年半袖潮', 'PEACEBIRD/太平鸟', '3年', 'PEACEBIRD/太平鸟制衣厂', '广东佛山顺德', '13567876789', '面料分类: 棉毛布货号: BWDA82120基础风格: 青春流行上市年份季节: 2018年夏季厚薄: 常规销售渠道类型: 纯电商(只在线上销售)材质成分: 棉100%');
INSERT INTO `productdetail` VALUES (9, 'CHARLES＆KEITH2020夏新品CK2-71200006-3女士金属链饰翻盖单肩包', 'CHARLES&KEITH', '3年', 'CHARLES&KEITH', '广东佛山南海', '13456789876', '质地: PU材质工艺: PU革闭合方式: 磁扣图案: 纯色形状: 横款方形成色: 全新颜色分类: Black黑色 White白色 Berry红莓色内部结构: 证件袋有无夹层: 无上市时间: 2020年夏季是否可折叠: 否货号: CK2-71200006-3背包方式: 单肩斜挎适用场景: 休闲里料材质: 合成革肩带样式: 单根适用对象: 青年提拎部件类型: 硬把箱包外袋种类: 立体袋款式: 单肩包大小: 小流行款式名称: 其他销售渠道类型: 商场同款(线上线下都销');
INSERT INTO `productdetail` VALUES (10, '稻草人包包女2020新款潮斜挎包百搭ins链条真皮单肩包夏天小方包', 'Mexican/稻草人', '3年', 'Mexican/稻草人制衣厂', '广东佛山南海', '13456567876', '质地: 牛皮皮革材质: 牛剖层皮革闭合方式: 锁扣图案: 纯色风格: 欧美时尚形状: 横款方形成色: 全新流行元素: 菱格颜色分类: 黑色 米白内部结构: 拉链暗袋 手机袋 证件袋有无夹层: 有上市时间: 2020年夏季是否可折叠: 否货号: MLBD02200614WH背包方式: 单肩斜挎适用场景: 休闲里料材质: 涤纶肩带样式: 单根适用对象: 青年提拎部件类型: 锁链式提把箱包外袋种类: 内贴袋箱包硬度: 软款式: 单肩包大小: 小流行款式名称: 小方包');
INSERT INTO `productdetail` VALUES (11, 'COACH蔻驰女士马车图腾托特包单肩包91107王府井 可双面使用', 'COACH/蔻驰', '3年', 'COACH/蔻驰制衣厂', '广东佛山三水', '13456787654', 'coach系列: 91107质地: PVC闭合方式: 拉链成色: 全新颜色分类: 91107SVQB9乳白色 91107SVQB8蓝色马车有无夹层: 无上市时间: 2020年春季是否可折叠: 否货号: 91107背包方式: 单肩手提肩带样式: 双根适用对象: 青年箱包硬度: 硬款式: 单肩包大小: 大流行款式名称: 托特包');
INSERT INTO `productdetail` VALUES (12, '七匹狼男包斜挎包单肩包男士包包休闲商务牛津帆布跨包小背包潮牌', 'Septwolves/七匹狼', '3年', 'Septwolves/七匹狼制衣厂', '广东佛山南海', '13456756453', '质地: 牛津纺闭合方式: 拉链搭扣图案: 纯色风格: 欧美时尚成色: 全新流行元素: 车缝线颜色分类: 热卖款蓝色中号【98%人选择】 热卖款百搭黑色中号【95%人选择】 热卖款蓝色小号 热卖款黑色小号 热卖款蓝色大号 热卖款黑色大号 特惠黑色小号 特惠黑色中号 特惠黑色大号 休闲黑色小号 休闲黑色中号 休闲黑色大号 -----新款待开发-----内部结构: 拉链暗袋 手机袋 证件袋有无夹层: 有上市时间: 2020年夏季货号: ZLXPCD101805-1背包方式: 单肩斜挎适用场景: 商务里料材质: 织物肩带样式: 单根提拎部件类型: 软把箱包硬度: 软款式: 单肩包销售渠道类型: 商场同款(线上线下都销售)容纳电脑尺寸: 8英寸');
INSERT INTO `productdetail` VALUES (13, 'ZARA 新款 女包 黄色极简主义女单肩提包 16380510090', 'ZARA', '3年', 'ZARA制衣厂', '广东佛山南海', '13454345432', '质地: PU材质工艺: 软面闭合方式: 磁扣图案: 纯色风格: 欧美时尚形状: 购物袋形成色: 全新流行元素: 车缝线颜色分类: 黄色有无夹层: 无上市时间: 2020年夏季是否可折叠: 否货号: 16380510090-27背包方式: 单肩手提适用场景: 休闲里料材质: 涤纶肩带样式: 单根适用对象: 青年提拎部件类型: 软把箱包外袋种类: 立体袋箱包硬度: 软款式: 单肩包大小: 大流行款式名称: 托特包销售渠道类型: 商场同款(线上线下都销');
INSERT INTO `productdetail` VALUES (14, 'MARNIHOME MARKET 2020新款BASKET彩色编织菜篮子', 'MARNI', '3年', 'MARNI制衣厂', '广东佛山顺德', '13456543212', '质地: 丙烯酸塑料颜色分类: Y70 B59 W03 V30 V99 Y20 B90上市时间: 2020年夏季货号: SHMH006A00RF08100Y70-1款式: 手提包大小: 中流行款式名称: 其他销售渠道类型: 商场同款(线上线下都销');
INSERT INTO `productdetail` VALUES (15, '朱尔气质手提包女2020新款潮斜挎包时尚女士包包夏季单肩真皮女包', 'Zooler/朱尔', '3年', 'Zooler/朱尔制衣厂', '广东佛山顺德', '13416178765', '质地: 牛皮皮革材质: 牛皮闭合方式: 包盖式图案: 纯色风格: 欧美时尚形状: 横款方形成色: 全新流行元素: 车缝线颜色分类: 淡雅白 气质蓝 大气黑（预售7月31日发货）有无夹层: 有上市时间: 2020年夏季是否可折叠: 否货号: QT10903-1背包方式: 单肩斜挎手提适用场景: 休闲里料材质: 涤纶肩带样式: 双根适用对象: 青年提拎部件类型: 软把箱包外袋种类: 内贴袋箱包硬度: 软款式: 单肩包大小: 中流行款式名称: 波士顿包销售渠道类型: 商场同款(线上线下都销');
INSERT INTO `productdetail` VALUES (16, '夏天夏季白色迷你小ck包包女包2020新款潮单肩链条包网红百搭斜挎', '摩蝶', '3年', '摩蝶制衣厂', '广东佛山顺德', '13456765678', '质地: PU材质工艺: 软面闭合方式: 磁扣图案: 纯色风格: 日韩形状: 横款方形成色: 全新流行元素: 链条颜色分类: 白色 黑色 白色大号【原创首发】 粉色有无夹层: 无上市时间: 2020年夏季是否可折叠: 否货号: B15158背包方式: 斜挎单肩手提适用场景: 休闲里料材质: 合成革肩带样式: 单根适用对象: 青年提拎部件类型: 锁链式提把箱包硬度: 软款式: 斜挎包大小: 迷你流行款式名称: 小方包销售渠道类型: 纯电商(只在线上销售)');
INSERT INTO `productdetail` VALUES (17, 'Gree/格力 KFR-35GW 大1.5匹变频冷暖壁挂式空调节能挂机凉之夏', 'Gree/格力', '3年', 'Gree/格力空调', '广东珠海', '13456789876', '证书编号：2018010703067447证书状态：有效产品名称：分体变频热泵型挂壁式房间空调器3C规格型号：整机:KFR-35GW/(35564)FNhAa-A3(室内机:KFR-35G(35564)FNhA...产品名称：Gree/格力 KFR-35GW/(...格力空调型号: KFR-35GW/(35564)FNhAa-C3空调功率: 1.5匹工作方式: 变频空调类型: 壁挂式冷暖类型: 冷暖电辅适用面积: 16-20㎡能效等级: 三级');
INSERT INTO `productdetail` VALUES (18, 'Haier/海尔 3匹变频立式空调柜机客厅家用旗舰店KFR-72LW/07EDS83', 'Haier/海尔', '2年', 'Haier/海尔空调', '广东深圳', '13456788900', '证书编号：2019010703234173证书状态：有效产品名称：空调器（分体落地式房间空调器，分体式房间空调器）3C规格型号：KFR-72LW/07EDS83, KFR-72LW/07FEE83XU1, KFR-72LW/07...产品名称：Haier/海尔 KFR-72LW/0...海尔空调型号: KFR-72LW/07EDS83空调功率: 3匹工作方式: 变频空调类型: 柜机冷暖类型: 冷暖型适用面积: 34-50㎡能效等级: 三级');
INSERT INTO `productdetail` VALUES (19, 'AUX/奥克斯 35QYQ大1.5匹一级变频家用壁挂式空调挂机官方旗舰店', 'AUX/奥克斯', '3年', 'AUX/奥克斯空调', '广东佛山', '13345676556', '证书编号：2017010703940195证书状态：有效产品名称：变频分体热泵型挂壁式房间空气调节器3C规格型号：见附件产品名称：AUX/奥克斯 KFR-35GW/B...奥克斯空调型号: KFR-35GW/BpR3QYQ1+1空调功率: 1.5匹工作方式: 变频空调类型: 壁挂式冷暖类型: 冷暖电辅适用面积: 16-20㎡能效等级: 一级');
INSERT INTO `productdetail` VALUES (20, '小米电视机43英寸E43K全高清智能液晶屏网络家用平板彩电视官方', 'Xiaomi/小米', '3年', 'Xiaomi/小米电商', '广东佛山', '13333444455', '证书编号：2019010808246441证书状态：有效产品名称：小米电视3C规格型号：L55M6-5P：220V～，50/60Hz，145W产品名称：Xiaomi/小米 L43M5-EK品牌: Xiaomi/小米型号: L43M5-EK分辨率: 1920x1080能效等级: 三级网络连接方式: 全部支持操作系统: MIUI TV版3D类型: 无');
INSERT INTO `productdetail` VALUES (21, 'Hisense/海信 32E2F 32英寸高清智能WIFI网络平板液晶电视机', 'Hisense/海信', '3年', 'Hisense/海信', '广东佛山', '13333442211', '证书编号：2020010808274179证书状态：有效申请人名称：海信视像科技股份有限公司制造商名称：海信视像科技股份有限公司产品名称：液晶电视3C产品型号：32E2F、32A37F、32V1F、32A36F、32A3F：220V～ 50Hz 55W产品名称：Hisense/海信 32E2F品牌: Hisense/海信型号: 32e2f分辨率: 1366x768能效等级: 三级网络连接方式: 全部支持操作系统: VIDAA3D类型: 无');
INSERT INTO `productdetail` VALUES (22, '格兰仕智能家用小型平板微波炉光波炉蒸烤箱一体官方旗舰店正品DG', 'Galanz/格兰仕', '3年', 'Galanz/格兰仕', '广东佛山南海', '14456789876', '证书编号：2014010714685680证书状态：有效申请人名称：广东格兰仕集团有限公司制造商名称：广东格兰仕微波生活电器制造有限公司产品名称：微波炉3C产品型号：G70F20CL-B8(R0)、G70F20CL-C2(B0)、G70F20CN2L-B8(R0)、...3C规格型号：见附件产品名称：Galanz/格兰仕 G70F20CN1...型号: G70F20CN1L-DG售后服务: 全国联保颜色分类: 黑色微波炉分类: 微波炉开门方式: 侧拉式');
INSERT INTO `productdetail` VALUES (23, '东芝toshiba微波炉SS20家用小型迷你一体白色20升非变频', 'Toshiba/东芝', '3年', 'Toshiba/东芝微波炉', '广东佛山顺德', '18878777765', '证书编号：2020010714269814证书状态：有效产品名称：微波炉3C规格型号：ER-SS20CNW 220V～50Hz 额定输入功率：1270W 微波输出功率：800W 微波工...产品名称：Toshiba/东芝 ER-SS20CN...型号: ER-SS20CNW颜色分类: 白色微波炉分类: 微波炉开门方式: 按键式');
INSERT INTO `productdetail` VALUES (24, '飞利浦电动咖啡机家用商用现磨全自动美式经典小型咖啡机研磨一体', 'Philips/飞利浦', '3年', 'Philips/飞利浦电器', '广东佛山顺德', '19938475647', '证书编号：2014010717729214证书状态：有效申请人名称：飞利浦电子香港有限公司制造商名称：飞利浦(中国)投资有限公司产品名称：飞利浦全自动研磨式滴漏咖啡机3C产品型号：HD7751 220V～50Hz 1000W3C规格型号：HD7751 220V～50Hz 1000W; HD7753 220V～50Hz 1000W产品名称：Philips/飞利浦 HD7761咖啡机品牌: Philips/飞利浦型号: HD7761颜色分类: 黑色使用方式: 全自动咖啡壶分类: 滴漏式货号: HD7761功能: 美式');
INSERT INTO `productdetail` VALUES (25, '芝华仕头等舱沙发真皮单椅美式现代电动功能单人客厅家具k135', 'CHEERS/芝华仕', '3年', 'CHEERS/芝华仕', '广东佛山南海', '18887667887', '型号: K135-L1-KSE材质: 其他图案: 品牌LOGO风格: 简约现代适用人数: 其他颜色分类: 象牙白 30-60天内发货 象牙白 15天内发货 米黄色 30-60天内发货 米黄色 15天内发货 深咖色 30-60天内发货 深咖色 15天内发货填充物: 海绵结构工艺: 其他是否可定制: 否沙发组合形式: 其他附加功能: 多功能适用对象: 成人是否带储物空间: 否皮革饰面工艺: 其他皮革材质: 头层牛皮产地: 重庆地市: 重庆市区县: 江津区是否组装: 组装包装体积: 1是否可预售: 是出租车是否可运输: 否填充物硬度: 软设计元素: 其他款式定位: 经济型安装说明详情: 提供安装说明书皮革饰面范围: 接触面皮');
INSERT INTO `productdetail` VALUES (26, '宜洛羽绒真皮超软沙发客厅北欧简约现代轻奢头层牛皮四人位组合', 'IGLOUCE/宜洛', '3年', 'IGLOUCE/宜洛', '广东佛山禅城', '19987654345', '型号: gs43p材质: 金属金属材质: 不锈钢风格: 北欧适用人数: 其他颜色分类: 【意式轻奢NAPPA皮+白鹅绒坐包】单人位 【意式轻奢NAPPA皮+白鹅绒坐包】双人位 【意式轻奢NAPPA皮+白鹅绒坐包】三人位 【意式轻奢NAPPA皮+白鹅绒坐包】四人位 【意式轻奢NAPPA皮+白鹅绒坐包】五人位 【意式轻奢NAPPA皮+白鹅绒坐包】脚踏 【意式轻奢NAPPA皮+白鹅绒坐包】单人位+三人位+脚踏 【意式轻奢NAPPA皮+白鹅绒坐包】单人位+双人位+三人位 【意式轻奢NAPPA皮+白鹅绒坐包】双人位+贵妃位 【意式轻奢NAPPA皮+白鹅绒坐包】单双贵毛重: 100填充物: 羽绒结构工艺: 木质工艺是否可定制: 是沙发组合形式: L形适用对象: 成人是否带储物空间: 否皮革饰面工艺: 磨砂皮革材质: 头层牛皮可送货/安装: 其他 南昌市 哈尔滨市 大连市 沈阳市 西安市 贵阳市 郑州市 金华市 长沙市 北京 常州市 成都市 东莞市 佛山市 福州市 广州市 杭州市 南京市 南宁市 宁波市 青岛市 上海 深圳市 苏州市 台州市 天津 温州市 无锡市 武汉市 厦门市 重庆产地: 广东省');
INSERT INTO `productdetail` VALUES (27, '狄普真皮沙发进口牛皮简约中厚皮艺沙发现代客厅整装沙发组合家具', '狄普', '3年', '狄普', '广东佛山顺德', '15586757484', '型号: 511材质: 木图案: 其他风格: 简约现代适用人数: 组合颜色分类: 【标准款】单扶+双人位 【标准款】双+贵 【标准款】双+贵+边几 【标准款】单+双+贵 【标准款】单+双+贵+边几 【标准款】单+双+贵+边几+脚踏 【标准款】单+双+贵+边几+单人位双扶手+脚踏 【升级版】单扶+双人位 【升级版】双+贵 【升级版】双+贵+边几 【升级版】单+双+贵 【升级版】单+双+贵+边几 【升级版】单+双+贵+边几+脚踏 【升级版】单+双+贵+边几+单人位双扶手+脚踏毛重: 150填充物: 海绵结构工艺: 木质工艺木质结构工艺: 其他是否可定制: 是沙发组合形式: L形附加功能: 移动适用对象: 成人是否带储物空间: 是皮革饰面工艺: 其他皮革材质: 头层牛皮可送货/安装: 其他 北京 上海 天津 重庆产地: 广东省地市: 佛山市');
INSERT INTO `productdetail` VALUES (28, '电动沙发真皮现代客厅简约智能家具多功能按摩头等太空舱沙发组合', '伊波路', '3年', '伊波路', '广东佛山顺德', '13345665443', '型号: 139-1沙发材质: 其他风格: 意式适用人数: 组合颜色分类: 1.22米 双扶手单位（全实木框架+真皮材质 假一罚十） 1.98米 双扶手双位（全实木框架+真皮材质 假一罚十） 2.74米 双扶手三位（全实木框架+真皮材质 假一罚十） 3.5米 双扶手四位（全实木框架+真皮材质 假一罚十） 贵妃位（全实木框架+真皮材质 假一罚十） 2.74米 2+左贵妃（全实木框架+真皮材质 假一罚十） 2.74米 2+右贵妃（全实木框架+真皮材质 假一罚十） 3.5米 1+2+左贵妃（全实木框架+真皮材质 假一罚十） 3.5米 1+2+右贵妃（全实木框架+真皮材质 假一罚十）是否可定制: 否适用对象: 成人皮革材质: 头层牛皮');
INSERT INTO `productdetail` VALUES (29, '欧普照明led客厅吸顶灯具现代简约卧室餐厅小米米家智能套餐TC', 'OPPLE/欧普照明', '3年', 'OPPLE/欧普照明', '广东佛山顺德', '14758695857', '证书编号：2017011001941468证书状态：有效产品名称：固定式灯具（吊式/吸顶式，LED模块用交流电子控制装置，Ⅰ类，IP20，适宜直接安装在普通可燃材料表面）3C规格型号：见附件；220V～ 50Hz。品牌: OPPLE/欧普照明型号: MX9665-D1*112WT-2F风格: 简约现代');
INSERT INTO `productdetail` VALUES (30, '智能北欧灯具大气家用客厅灯简约现代卧室灯吸顶灯组合全屋套餐', '维玛', '3年', '维玛', '广东佛山顺德', '13456765676', '证书编号：2017011001980992证书状态：有效产品名称：固定式灯具（吸顶式/吊式，LED 模块用交流电子控制装置，Ⅰ类，IP20，适宜直接安装在普通可燃材料表面）3C规格型号：见附件，220V～ 50Hz品牌: 维玛型号: 11141730');
INSERT INTO `productdetail` VALUES (31, '北欧轻奢大理石浴室柜组合简约现代洗脸盆柜洗手盆柜卫生间洗漱台', 'Clean Feel/克丽·菲儿', '3年', 'Clean Feel/克丽·菲儿', '广东佛山南海', '14457685748', '型号: 7008材质: 其他产地: 中国大陆颜色分类: 60CM-镜柜款 70CM-镜柜款 80CM-镜柜款 90CM-镜柜款 100CM-镜柜款 110CM-镜柜款 120CM-镜柜款 60CM-智能镜子款 70CM-智能镜子款 80CM-智能镜子款 90CM-智能镜子款 100CM-智能镜子款 110CM-智能镜子款 120CM-智能镜子款 60CM-智能镜柜款 70CM-智能镜柜款 80CM-智能镜柜款 90CM-智能镜柜款 100CM-智能镜柜款 110CM-智能镜柜款 120CM-智能镜柜款 定制长度宽度可切角，咨询客服同城服务: 同城物流送货上门表面工艺: 平板组合形式: 含带浴室镜柜 含带水龙头 含带配套面盆是否含镜灯: 不含台面类型: 大理石台面长度: 91cm(含)-120cm(含)');
INSERT INTO `productdetail` VALUES (32, '洗衣柜阳台组合柜子一体洗衣机伴侣台盆柜洗衣池带搓板实木浴室柜', 'MANCEL/曼姿', '3年', 'MANCEL/曼姿', '广东佛山南海', '14564556454', '型号: MQ004-2CC材质: 橡胶木风格: 美式乡村颜色分类: 左盆右盆同价可选，切角或定制请联系在线客服 0.6米配套储物柜599元，联系客服有优惠 1.0米 单开门 左盆 1.0米 单开门 右盆 1.1米 单开门 左盆 1.1米 单开门 右盆 1.2米 单门双抽 左盆 1.2米 单门双抽 右盆 1.3米 单门双抽 左盆 1.3米 单门双抽 右盆 1.4米 双门双抽 左盆 1.4米 双门双抽 右盆 1.5米 双门双抽 左盆 1.5米 双门双抽 右盆 1.1米至1.5米可做高低盆，请联系客服补差价100元同城服务: 同城物流送货上门表面工艺: 平板环保等级: E1级组合形式: 含带配套面盆是否含镜灯: 不含台面类型: 石英石台面长度: 120cm以上');
INSERT INTO `productdetail` VALUES (33, 'aa', 'aa', 'aa', 'aa', 'aa', '1333333333333333', 'aa');
INSERT INTO `productdetail` VALUES (34, '1', '1', '1', '1', '1', '1', '123');
INSERT INTO `productdetail` VALUES (35, '123', '123', '123', '123', '123', '123', '123');
INSERT INTO `productdetail` VALUES (36, 'test', 'test', 'test', 'foshan', '广东佛山', '12345678901', 'test');
INSERT INTO `productdetail` VALUES (37, '123', '213', '3', 'test', 'test', '12345678902', 'test');
INSERT INTO `productdetail` VALUES (38, 'we', 'qwe', '123', 'we', 'w', 'w', 'w');

-- ----------------------------
-- Table structure for producttype
-- ----------------------------
DROP TABLE IF EXISTS `producttype`;
CREATE TABLE `producttype`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of producttype
-- ----------------------------
INSERT INTO `producttype` VALUES (1, '服饰');
INSERT INTO `producttype` VALUES (2, '鞋包');
INSERT INTO `producttype` VALUES (3, '家电');
INSERT INTO `producttype` VALUES (4, '家具');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_BUYER', '买家角色');
INSERT INTO `role` VALUES (2, 'ROLE_SELLER', '卖家角色');
INSERT INTO `role` VALUES (3, 'ROLE_ADMIN', '管理员角色');

-- ----------------------------
-- Table structure for role_authority
-- ----------------------------
DROP TABLE IF EXISTS `role_authority`;
CREATE TABLE `role_authority`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `roleId` int NOT NULL,
  `authorityId` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_rid`(`roleId` ASC) USING BTREE,
  INDEX `fk_authorid`(`authorityId` ASC) USING BTREE,
  CONSTRAINT `fk_authorid` FOREIGN KEY (`authorityId`) REFERENCES `authority` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_rid` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_authority
-- ----------------------------

-- ----------------------------
-- Table structure for shoppingcar
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcar`;
CREATE TABLE `shoppingcar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `buyerId` int NOT NULL,
  `productId` int NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_byId`(`buyerId` ASC) USING BTREE,
  INDEX `fk_prodId`(`productId` ASC) USING BTREE,
  CONSTRAINT `fk_byId` FOREIGN KEY (`buyerId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_prodId` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shoppingcar
-- ----------------------------
INSERT INTO `shoppingcar` VALUES (4, 20, 1, 3);
INSERT INTO `shoppingcar` VALUES (7, 20, 1, 3);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` bit(1) NOT NULL,
  `phoneNum` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, 'test', '$2a$10$SlVgwG4fXnnN2XbyZBMOA.XrBsMqJ.NqKbn7bbkwqSbSMXPDFhZJu', b'1', '13415143456', 'ChinaGuangdongFoshan');
INSERT INTO `user` VALUES (20, 'test1', '$2a$10$Y65cFm1Z0Mk2FX7dOj0SNuwcAvlF7qqi1KZgPD6l18fUfkJB9xWmK', b'1', '12334323432', '广东佛山顺德');
INSERT INTO `user` VALUES (22, 'test2', '$2a$10$ybzJbSTsUx59j6L2WMrN5OoPAZt4.rrYRKgpu7ainceHADPbr8fT.', b'0', '13333333333', '广东佛山书店');
INSERT INTO `user` VALUES (24, 'test3', '$2a$10$D7v8Iun/U.bj/O4d212/auOfuhQTLVvHV437WvLVbLoBUdrh/IuEa', b'0', '13456789098', '广东佛山顺德');
INSERT INTO `user` VALUES (25, 'test4', '$2a$10$cw59NgmcHLD8hziqNu6GS.cSkHKPLh.xNp8r0CR170JdgWtsrxtuS', b'1', '13333333333', '广东佛山顺德');
INSERT INTO `user` VALUES (26, 'test5', '$2a$10$8aJflB2YPF8f1tJ9OZLzY.65.pYl.nhAF8PSzMC2ti765OG/2TuHW', b'1', '13345456789', 'ChinaGuangdongFoshan');
INSERT INTO `user` VALUES (28, 'test6', '$2a$10$dP7XuGZ0wMBfubtAFog64u0KqvNVbX4knezTFavvq0WAp3qeVZXEG', b'1', '13345456789', 'ChinaGuangdongFoshan');
INSERT INTO `user` VALUES (29, 'test7', '$2a$10$W5p.Ov2ruYFzVWy3xshCKOb6JMmX/GFi7dlP2ZqSI0RlF5kNpjqMm', b'1', '13456789098', '广东佛山顺德');
INSERT INTO `user` VALUES (30, 'test8', '$2a$10$zpZCXbxe3185ferWiz3A0OaqUrz3OUJIeINBYbe5CSVygLCcVJm2y', b'1', '13456789876', '广东广州番禺');
INSERT INTO `user` VALUES (31, 'test9', '$2a$10$jfHtKB7oJjDn3vRANA1zx.DS0tjUrWEgg8qx9kEdq9CqGE6z4b5ZK', b'1', '13456789098', '广东佛山顺德');
INSERT INTO `user` VALUES (40, 'gyb', '$2a$10$ccyKEQZMvqBDiuQkkQvMru3skb1cgI8Yz2Se/sxNxFhNTOYMKSLQO', b'1', '12345678901', '广东佛山南海');
INSERT INTO `user` VALUES (42, '123', '$2a$10$UNh35ZVp1zIF0lWRFAj7beo/x/wXZ39aE/tOTNIjXoGAYRzZLZ636', b'1', '12', '312');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `roleId` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_userid`(`userId` ASC) USING BTREE,
  INDEX `fk_roleid`(`roleId` ASC) USING BTREE,
  CONSTRAINT `fk_roleid` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_userid` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 3, 3);
INSERT INTO `user_role` VALUES (5, 20, 2);
INSERT INTO `user_role` VALUES (6, 22, 1);
INSERT INTO `user_role` VALUES (7, 24, 2);
INSERT INTO `user_role` VALUES (8, 25, 1);
INSERT INTO `user_role` VALUES (9, 26, 1);
INSERT INTO `user_role` VALUES (10, 28, 1);
INSERT INTO `user_role` VALUES (11, 29, 2);
INSERT INTO `user_role` VALUES (12, 30, 1);
INSERT INTO `user_role` VALUES (13, 31, 1);
INSERT INTO `user_role` VALUES (16, 40, 2);
INSERT INTO `user_role` VALUES (17, 42, 2);

-- ----------------------------
-- Procedure structure for createOrder
-- ----------------------------
DROP PROCEDURE IF EXISTS `createOrder`;
delimiter ;;
CREATE PROCEDURE `createOrder`(IN buyerId INT(4), IN productId INT(4), IN amount INT(4), OUT succStatus INT(2))
BEGIN
  DECLARE n INT(4) DEFAULT 0;
	DECLARE orderId INT(4) DEFAULT -1;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN
	  ROLLBACK;
		SET succStatus := -1;
	END;
	START TRANSACTION;
	SELECT quantity INTO n FROM product WHERE id = productId FOR UPDATE;
	IF n >= amount THEN
	  SET n := n - amount;
		UPDATE product SET quantity = n WHERE id = productId;
		INSERT INTO myorder VALUES (NULL, buyerId, NOW(), 1);
		SELECT LAST_INSERT_ID() INTO orderId;
		INSERT INTO orderitem VALUES (NULL, orderId, productId, amount, 1);
		COMMIT;
		SET succStatus := 0;
	ELSE
	  ROLLBACK;
		SET succStatus := 1;
	END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
