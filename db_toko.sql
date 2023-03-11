/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : db_toko

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 10/01/2023 15:48:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_kategori` int NOT NULL,
  `nama_barang` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `merk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga_beli` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga_jual` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `satuan_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stok` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_input` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_update` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO `barang` VALUES (4, 'BR001', 1, 'buku', 'sidu', '5000', '7000', 'PCS', '2000', '15 December 2022, 9:36', NULL);
INSERT INTO `barang` VALUES (5, 'BR002', 8, 'AIO Lenovo', 'lenovo', '10000000', '11000000', 'PCS', '15', '15 December 2022, 11:54', NULL);
INSERT INTO `barang` VALUES (6, 'BR003', 8, 'monitor', 'acer', '12000000', '12500000', 'PCS', '12', '22 December 2022, 19:38', NULL);

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_input` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (8, 'Komputer', '15 December 2022, 11:53');
INSERT INTO `kategori` VALUES (9, 'Laptop', '22 December 2022, 19:39');
INSERT INTO `kategori` VALUES (10, 'Aksessoris', '22 December 2022, 19:40');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `id_login` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pass` char(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_member` int NOT NULL,
  PRIMARY KEY (`id_login`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id_member` int NOT NULL AUTO_INCREMENT,
  `nm_member` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_member` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telepon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NIK` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_member`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (1, 'Mutiara Puji Hartanto', 'wonooboo', '08989297283', 'mutiarapujih@gmail.com', '1673315367tiara.jpg', '12314121');

-- ----------------------------
-- Table structure for nota
-- ----------------------------
DROP TABLE IF EXISTS `nota`;
CREATE TABLE `nota`  (
  `id_nota` int NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_member` int NOT NULL,
  `jumlah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_input` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `periode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_nota`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nota
-- ----------------------------
INSERT INTO `nota` VALUES (1, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020');
INSERT INTO `nota` VALUES (2, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020');
INSERT INTO `nota` VALUES (3, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020');
INSERT INTO `nota` VALUES (4, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020');
INSERT INTO `nota` VALUES (5, 'BR001', 1, '2', '6000', '6 October 2020, 0:49', '10-2020');
INSERT INTO `nota` VALUES (6, 'BR001', 1, '2', '6000', '6 October 2020, 0:49', '10-2020');
INSERT INTO `nota` VALUES (7, 'BR001', 1, '2', '6000', '6 October 2020, 1:15', '10-2020');
INSERT INTO `nota` VALUES (8, 'BR002', 1, '2', '6000', '6 October 2020, 1:17', '10-2020');
INSERT INTO `nota` VALUES (9, 'BR001', 1, '2', '6000', '6 October 2020, 1:20', '10-2020');
INSERT INTO `nota` VALUES (10, 'BR002', 1, '2', '22000000', '29 December 2022, 12:08', '12-2022');
INSERT INTO `nota` VALUES (11, 'BR002', 1, '1', '11000000', '29 December 2022, 12:09', '12-2022');
INSERT INTO `nota` VALUES (12, 'BR002', 1, '1', '11000000', '29 December 2022, 12:09', '01-2023');

-- ----------------------------
-- Table structure for penjualan
-- ----------------------------
DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE `penjualan`  (
  `id_penjualan` int NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_member` int NOT NULL,
  `jumlah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `total` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_input` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_penjualan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of penjualan
-- ----------------------------
INSERT INTO `penjualan` VALUES (25, 'BR002', 1, '1', '11000000', '29 December 2022, 12:09');

-- ----------------------------
-- Table structure for toko
-- ----------------------------
DROP TABLE IF EXISTS `toko`;
CREATE TABLE `toko`  (
  `id_toko` int NOT NULL AUTO_INCREMENT,
  `nama_toko` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_toko` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tlp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_pemilik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_toko`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of toko
-- ----------------------------
INSERT INTO `toko` VALUES (1, 'Mutiara', 'wonosobo', '081234567890', 'Mutiara Puji');

SET FOREIGN_KEY_CHECKS = 1;
