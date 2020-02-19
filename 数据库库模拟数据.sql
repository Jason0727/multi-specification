/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : laravel

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 19/02/2020 13:55:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for good_attr_values
-- ----------------------------
DROP TABLE IF EXISTS `good_attr_values`;
CREATE TABLE `good_attr_values`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `attr_id` bigint(20) NOT NULL COMMENT '外键，关联属性ID',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of good_attr_values
-- ----------------------------
INSERT INTO `good_attr_values` VALUES (1, 1, '金色');
INSERT INTO `good_attr_values` VALUES (2, 1, '红色');
INSERT INTO `good_attr_values` VALUES (3, 1, '蓝色');
INSERT INTO `good_attr_values` VALUES (4, 2, '16G');
INSERT INTO `good_attr_values` VALUES (5, 2, '32G');
INSERT INTO `good_attr_values` VALUES (6, 3, '首月');
INSERT INTO `good_attr_values` VALUES (7, 3, '半年');
INSERT INTO `good_attr_values` VALUES (8, 3, '一年');

-- ----------------------------
-- Table structure for good_attrs
-- ----------------------------
DROP TABLE IF EXISTS `good_attrs`;
CREATE TABLE `good_attrs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `good_id` bigint(20) NOT NULL COMMENT '外键，关联商品ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '属性名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of good_attrs
-- ----------------------------
INSERT INTO `good_attrs` VALUES (1, 1, '颜色');
INSERT INTO `good_attrs` VALUES (2, 1, '内存');
INSERT INTO `good_attrs` VALUES (3, 1, '保修期');

-- ----------------------------
-- Table structure for good_sku_relation_values
-- ----------------------------
DROP TABLE IF EXISTS `good_sku_relation_values`;
CREATE TABLE `good_sku_relation_values`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku_id` bigint(20) NOT NULL COMMENT '外键，关联SKU ID',
  `attr_value_id` bigint(20) NOT NULL COMMENT '外键，关联属性值ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of good_sku_relation_values
-- ----------------------------
INSERT INTO `good_sku_relation_values` VALUES (1, 1, 1);
INSERT INTO `good_sku_relation_values` VALUES (2, 1, 4);
INSERT INTO `good_sku_relation_values` VALUES (3, 2, 1);
INSERT INTO `good_sku_relation_values` VALUES (4, 2, 5);
INSERT INTO `good_sku_relation_values` VALUES (5, 3, 2);
INSERT INTO `good_sku_relation_values` VALUES (6, 3, 4);
INSERT INTO `good_sku_relation_values` VALUES (7, 1, 6);
INSERT INTO `good_sku_relation_values` VALUES (8, 2, 7);
INSERT INTO `good_sku_relation_values` VALUES (9, 3, 7);

-- ----------------------------
-- Table structure for good_skus
-- ----------------------------
DROP TABLE IF EXISTS `good_skus`;
CREATE TABLE `good_skus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `good_id` bigint(20) NOT NULL COMMENT '外键,关联商品ID',
  `stock` int(11) NOT NULL COMMENT '库存',
  `price` int(11) NOT NULL COMMENT '价格',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of good_skus
-- ----------------------------
INSERT INTO `good_skus` VALUES (1, 1, 10, 100, 'Iphone One');
INSERT INTO `good_skus` VALUES (2, 1, 5, 50, 'Iphone Two');
INSERT INTO `good_skus` VALUES (3, 1, 20, 200, 'Iphone Three');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '苹果手机');

SET FOREIGN_KEY_CHECKS = 1;
