/*
 Navicat Premium Dump SQL

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3307
 Source Schema         : javaweb16

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 17/12/2024 14:18:57
*/

CREATE DATABASE IF NOT EXISTS `javaweb16`;
USE `javaweb16`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `created_date` datetime NULL DEFAULT NULL,
  `updated_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `parent_id` int NULL DEFAULT NULL,
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6l2kfyw1kbyobvyqiwsrkc2g6`(`parent_id` ASC) USING BTREE,
  CONSTRAINT `FK6l2kfyw1kbyobvyqiwsrkc2g6` FOREIGN KEY (`parent_id`) REFERENCES `tbl_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO `tbl_category` VALUES (1, 'THỰC PHẨM TƯƠI SỐNG', 1, NULL, NULL, NULL, NULL, NULL, 'Thực phẩm tươi sống', 'Rau, trái cây, thịt, trứng');
INSERT INTO `tbl_category` VALUES (2, 'THỰC PHẨM CHẾ BIẾN SẴN', 1, NULL, NULL, NULL, NULL, NULL, 'Thực phẩm chế biến sẵn', 'Bánh mì, sandwich, sushi, cơm hộp, mì trộn');
INSERT INTO `tbl_category` VALUES (3, 'THỨC UỐNG GIẢI KHÁT', 1, NULL, NULL, NULL, NULL, NULL, 'Thức uống giải khát', 'Nước lọc, nước ngọt, nước trái cây, sữa, cà phê, trà');
INSERT INTO `tbl_category` VALUES (4, 'ĐỒ UỐNG CÓ CỒN', 1, NULL, NULL, NULL, NULL, NULL, 'Đồ uống có cồn', 'Bia, rượu');
INSERT INTO `tbl_category` VALUES (5, 'HOÁ MỸ PHẨM', 1, NULL, NULL, NULL, NULL, NULL, 'Hóa mỹ phẩm', 'Sữa tắm, dầu gội, vệ sinh răng miệng (kem đánh răng, bàn chải)');
INSERT INTO `tbl_category` VALUES (6, 'ĐỒ DÙNG GIA ĐÌNH', 1, NULL, NULL, NULL, NULL, NULL, 'Đồ dùng gia đình', 'Giấy vệ sinh, túi rác, bột giặt, phụ kiện điện tử, đồ chơi trẻ em');
INSERT INTO `tbl_category` VALUES (7, 'VĂN PHÒNG PHẨM', 1, NULL, NULL, NULL, NULL, NULL, 'Văn phòng phẩm', 'Bút, sổ, giấy');

-- ----------------------------
-- Table structure for tbl_contact
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contact`;
CREATE TABLE `tbl_contact`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `massage` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `updated_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_contact
-- ----------------------------
INSERT INTO `tbl_contact` VALUES (1, 'Trung Hiếu', 'thieu1793@gmail.com', 'Sản phẩm của cửa hàng rất tốt!', 1, '2024-12-17 11:42:34', NULL, NULL, NULL);
INSERT INTO `tbl_contact` VALUES (2, 'Mỹ Linh', 'mlinh1122@gmail.com', 'Cần cải thiện sản phẩm!', 1, '2024-12-17 11:51:24', NULL, NULL, NULL);
INSERT INTO `tbl_contact` VALUES (3, 'Ngọc Mai', 'ngocmai00@gmail.com', 'Hàng hoá ít thật đấy!', 1, '2024-12-17 12:06:19', NULL, NULL, NULL);
INSERT INTO `tbl_contact` VALUES (4, 'Quang Huy', 'huyhayho@gmail.com', 'Ở đây có bán Laptop không?', 1, '2024-12-17 12:29:56', NULL, NULL, NULL);
INSERT INTO `tbl_contact` VALUES (5, 'Nguyễn Hiền', 'hien1234@gmail.com', 'Tôi rất mong chờ phiếu giảm giá sắp tới!', 1, '2024-12-17 13:04:19', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_products
-- ----------------------------
DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE `tbl_products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_description` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail_description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(13, 2) NOT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `created_date` datetime NULL DEFAULT NULL,
  `updated_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `price_sale` decimal(13, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_1tbl_category_Ntbl_products_idx`(`category_id` ASC) USING BTREE,
  CONSTRAINT `fk_1tbl_category_Ntbl_products` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 689 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_products
-- ----------------------------
INSERT INTO `tbl_products` VALUES (1, 'Rau Dền', 'Rau Dền', 'Không Có', 40000.00, 1, NULL, NULL, NULL, NULL, 1, 'product/avatar/rau-den.jpg', 'rau-den', NULL);
INSERT INTO `tbl_products` VALUES (2, 'Chuối Già Nam Mỹ', 'Chuối Già Nam Mỹ', 'Không Có', 12000.00, 1, NULL, NULL, NULL, NULL, 1, 'product/avatar/chuoi-gia-nam-my.jpg', 'chuoi-gia-nam-my', NULL);
INSERT INTO `tbl_products` VALUES (3, 'Nạc Dăm Heo', 'Nạc Dăm Heo', 'Không Có', 46000.00, 1, NULL, NULL, NULL, NULL, 1, 'product/avatar/nac-dam-heo.jpg', 'nac-dam-heo', NULL);
INSERT INTO `tbl_products` VALUES (4, 'Bánh Mì Que', 'Bánh Mì Que', 'Không Có', 15000.00, 1, NULL, NULL, NULL, NULL, 2, 'product/avatar/banh-mi-que.jpg', 'banh-mi-que', NULL);
INSERT INTO `tbl_products` VALUES (5, 'Sandwich Trứng', 'Sandwich Trứng', 'Không Có', 21000.00, 1, NULL, NULL, NULL, NULL, 2, 'product/avatar/sandwich-trung.jpg', 'sandwich-trung', NULL);
INSERT INTO `tbl_products` VALUES (6, 'Set Sushi', 'Set Sushi', 'Không Có', 30000.00, 1, NULL, NULL, NULL, NULL, 2, 'product/avatar/set-sushi.jpg', 'set-sushi', NULL);
INSERT INTO `tbl_products` VALUES (7, 'Nước Tinh Khiết Dasani', 'Nước Tinh Khiết Dasani', 'Không Có', 10000.00, 1, NULL, NULL, NULL, NULL, 3, 'product/avatar/nuoc-tinh-khiet-dasani.jpg', 'nuoc-tinh-khiet-dasani', NULL);
INSERT INTO `tbl_products` VALUES (8, 'Nước Ngọt Cocacola Zero', 'Nước Ngọt Cocacola Zero', 'Không Có', 12000.00, 1, NULL, NULL, NULL, NULL, 3, 'product/avatar/nuoc-ngot-cocacola-zero.jpg', 'nuoc-ngot-cocacola-zero', NULL);
INSERT INTO `tbl_products` VALUES (9, 'Nước Cam Ép Twister Tropicana', 'Nước Cam Ép Twister Tropicana', 'Không Có', 12000.00, 1, NULL, NULL, NULL, NULL, 3, 'product/avatar/nuoc-cam-ep-twister-tropicana.jpg', 'nuoc-cam-ep-twister-tropicana', NULL);
INSERT INTO `tbl_products` VALUES (10, 'Sữa Tươi Tiệt Trùng Ít Đường Dutch Lady', 'Sữa Tươi Tiệt Trùng Ít Đường Dutch Lady', 'Không Có', 9000.00, 1, NULL, NULL, NULL, NULL, 3, 'product/avatar/sua-tuoi-tiet-trung-it-duong-dutch-lady.jpg', 'sua-tuoi-tiet-trung-it-duong-dutch-lady', NULL);
INSERT INTO `tbl_products` VALUES (11, '4 Hộp Cà Phê Sữa Highlands', '4 Hộp Cà Phê Sữa Highlands', 'Không Có', 42000.00, 1, NULL, NULL, NULL, NULL, 3, 'product/avatar/4-hop-ca-phe-sua-highlands.jpg', '4-hop-ca-phe-sua-highlands', NULL);
INSERT INTO `tbl_products` VALUES (12, 'Hộp Trà Mãng Cầu Wil', 'Hộp Trà Mãng Cầu Wil', 'Không Có', 34000.00, 1, NULL, NULL, NULL, NULL, 3, 'product/avatar/hop-tra-mang-cau-wil.jpg', 'hop-tra-mang-cau-wil', NULL);
INSERT INTO `tbl_products` VALUES (13, 'Bia Heineken Silver', 'Bia Heineken Silver', 'Không Có', 16000.00, 1, NULL, NULL, NULL, NULL, 4, 'product/avatar/bia-heineken-silver.jpg', 'bia-heineken-silver', NULL);
INSERT INTO `tbl_products` VALUES (14, 'Rượu Soju Good Day Vị Nho', 'Rượu Soju Good Day Vị Nho', 'Không Có', 25000.00, 1, NULL, NULL, NULL, NULL, 4, 'product/avatar/ruou-soju-good-day-vi-nho.jpg', 'ruou-soju-good-day-vi-nho', NULL);
INSERT INTO `tbl_products` VALUES (15, 'Sữa tắm Lifebuoy Naturals', 'Sữa tắm Lifebuoy Naturals', 'Không Có', 50000.00, 1, NULL, NULL, NULL, NULL, 5, 'product/avatar/sua-tam-lifebuoy-naturals.jpg', 'sua-tam-lifebuoy-naturals', NULL);
INSERT INTO `tbl_products` VALUES (16, 'Dầu Gội Clear Men Deep Cleanse', 'Dầu Gội Clear Men Deep Cleanse', 'Không Có', 62000.00, 1, NULL, NULL, NULL, NULL, 5, 'product/avatar/dau-goi-clear-men-deep-cleanse.jpg', 'dau-goi-clear-men-deep-cleanse', NULL);
INSERT INTO `tbl_products` VALUES (17, 'Kem Đánh Răng P/S Trà Xanh', 'Kem Đánh Răng P/S Trà Xanh', 'Không Có', 27000.00, 1, NULL, NULL, NULL, NULL, 5, 'product/avatar/kem-danh-rang-ps-tra-xanh.jpg', 'kem-danh-rang-ps-tra-xanh', NULL);
INSERT INTO `tbl_products` VALUES (18, 'Hộp Khăn Giấy Puri 3 Lớp', 'Hộp Khăn Giấy Puri 3 Lớp', 'Không Có', 23000.00, 1, NULL, NULL, NULL, NULL, 6, 'product/avatar/hop-khan-giay-puri-3-lop.jpg', 'hop-khan-giay-puri-3-lop', NULL);
INSERT INTO `tbl_products` VALUES (19, '3 Cuộn Túi Đựng Rác Màu', '3 Cuộn Túi Đựng Rác Màu', 'Không Có', 16000.00, 1, NULL, NULL, NULL, NULL, 6, 'product/avatar/3-cuon-tui-dung-rac-mau.jpg', '3-cuon-tui-dung-rac-mau', NULL);
INSERT INTO `tbl_products` VALUES (20, 'Bột Giặt Surf Nước Hoa', 'Bột Giặt Surf Nước Hoa', 'Không Có', 57000.00, 1, NULL, NULL, NULL, NULL, 6, 'product/avatar/bot-giat-surf-nuoc-hoa.jpg', 'bot-giat-surf-nuoc-hoa', NULL);
INSERT INTO `tbl_products` VALUES (21, 'Bộ Đồ Chơi Câu Cá Và Bảng Chữ', 'Bộ Đồ Chơi Câu Cá Và Bảng Chữ', 'Không Có', 30000.00, 1, NULL, NULL, NULL, NULL, 6, 'product/avatar/bo-do-choi-cau-ca-va-bang-chu.jpg', 'bo-do-choi-cau-ca-va-bang-chu', NULL);
INSERT INTO `tbl_products` VALUES (22, 'Hộp Viết Chì Gỗ 2B P797 Gstar', 'Hộp Viết Chì Gỗ 2B P797 Gstar', 'Không Có', 28500.00, 1, NULL, NULL, NULL, NULL, 7, 'product/avatar/hop-viet-chi-go-2b-p797-gstar.jpg', 'hop-viet-chi-go-2b-p797-gstar', NULL);
INSERT INTO `tbl_products` VALUES (23, 'Sổ Tay Bìa Da A5', 'Sổ Tay Bìa Da A5', 'Không Có', 21000.00, 1, NULL, NULL, NULL, NULL, 7, 'product/avatar/so-tay-bia-da-a5.jpg', 'so-tay-bia-da-a5', NULL);
INSERT INTO `tbl_products` VALUES (24, 'Giấy Natural A5', 'Giấy Natural A5', 'Không Có', 56000.00, 1, NULL, NULL, NULL, NULL, 7, 'product/avatar/giay-natural-a5.jpg', 'giay-natural-a5', NULL);

-- ----------------------------
-- Table structure for tbl_products_images
-- ----------------------------
DROP TABLE IF EXISTS `tbl_products_images`;
CREATE TABLE `tbl_products_images`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_id` int NOT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `updated_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `quantity` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_1tbl_products_Ntbl_products_images_idx`(`product_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_products_images
-- ----------------------------
INSERT INTO `tbl_products_images` VALUES (1, 'rau-den.jpg', 'product/pictures/rau-den.jpg', 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (2, 'chuoi-gia-nam-my.jpg', 'product/pictures/chuoi-gia-nam-my.jpg', 2, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (3, 'nac-dam-heo.jpg', 'product/pictures/nac-dam-heo.jpg', 3, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (4, 'banh-mi-que.jpg', 'product/pictures/banh-mi-que.jpg', 4, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (5, 'sandwich-trung.jpg', 'product/pictures/sandwich-trung.jpg', 5, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (6, 'set-sushi.jpg', 'product/pictures/set-sushi.jpg', 6, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (7, 'nuoc-tinh-khiet-dasani.jpg', 'product/pictures/nuoc-tinh-khiet-dasani.jpg', 7, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (8, 'nuoc-ngot-cocacola-zero.jpg', 'product/pictures/nuoc-ngot-cocacola-zero.jpg', 8, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (9, 'nuoc-cam-ep-twister-tropicana.jpg', 'product/pictures/nuoc-cam-ep-twister-tropicana.jpg', 9, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (10, 'sua-tuoi-tiet-trung-it-duong-dutch-lady.jpg', 'product/pictures/sua-tuoi-tiet-trung-it-duong-dutch-lady.jpg', 10, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (11, '4-hop-ca-phe-sua-highlands.jpg', 'product/pictures/4-hop-ca-phe-sua-highlands.jpg', 11, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (12, 'hop-tra-mang-cau-wil.jpg', 'product/pictures/hop-tra-mang-cau-wil.jpg', 12, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (13, 'bia-heineken-silver.jpg', 'product/pictures/bia-heineken-silver.jpg', 13, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (14, 'ruou-soju-good-day-vi-nho.jpg', 'product/pictures/ruou-soju-good-day-vi-nho.jpg', 14, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (15, 'sua-tam-lifebuoy-naturals.jpg', 'product/pictures/sua-tam-lifebuoy-naturals.jpg', 15, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (16, 'dau-goi-clear-men-deep-cleanse.jpg', 'product/pictures/dau-goi-clear-men-deep-cleanse.jpg', 16, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (17, 'kem-danh-rang-ps-tra-xanh.jpg', 'product/pictures/kem-danh-rang-ps-tra-xanh.jpg', 17, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (18, 'hop-khan-giay-puri-3-lop.jpg', 'product/pictures/hop-khan-giay-puri-3-lop.jpg', 18, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (19, '3-cuon-tui-dung-rac-mau.jpg', 'product/pictures/3-cuon-tui-dung-rac-mau.jpg', 19, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (20, 'bot-giat-surf-nuoc-hoa.jpg', 'product/pictures/bot-giat-surf-nuoc-hoa.jpg', 20, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (21, 'bo-do-choi-cau-ca-va-bang-chu.jpg', 'product/pictures/bo-do-choi-cau-ca-va-bang-chu.jpg', 21, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (22, 'hop-viet-chi-go-2b-p797-gstar.jpg', 'product/pictures/hop-viet-chi-go-2b-p797-gstar.jpg', 22, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (23, 'so-tay-bia-da-a5.jpg', 'product/pictures/so-tay-bia-da-a5.jpg', 23, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_products_images` VALUES (24, 'giay-natural-a5.jpg', 'product/pictures/giay-natural-a5.jpg', 24, 1, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_roles
-- ----------------------------
DROP TABLE IF EXISTS `tbl_roles`;
CREATE TABLE `tbl_roles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `updated_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_UNIQUE`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_roles
-- ----------------------------
INSERT INTO `tbl_roles` VALUES (1, 'ADMIN', NULL, NULL, NULL, NULL, NULL, 'ADMIN');
INSERT INTO `tbl_roles` VALUES (2, 'GUEST', NULL, NULL, NULL, NULL, NULL, 'GUEST');

-- ----------------------------
-- Table structure for tbl_saleorder
-- ----------------------------
DROP TABLE IF EXISTS `tbl_saleorder`;
CREATE TABLE `tbl_saleorder`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  `customer_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `customer_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `customer_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `customer_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `total` decimal(13, 2) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `updated_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_1tbl_users_Ntbl_saleorder`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKbiu8ui4krw8j3gtn97w3rdq7v` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_saleorder
-- ----------------------------
INSERT INTO `tbl_saleorder` VALUES (1, '2496322123451', NULL, 'Nguyễn Văn An', 'Cà Mau', '0861627721', 'vanan6474@gmail.com', NULL, 1, '2024-12-17 12:06:14', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder` VALUES (2, '2496322123452', NULL, 'Nguyễn Diệu Linh', 'Phú Thọ', '0751673746', 'dlinh456@gmail.com', NULL, 1, '2024-12-17 12:30:13', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder` VALUES (3, '2496322123453', NULL, 'Hoàng Minh Đức', 'Đà Nẵng', '0683727718', 'duc09@gmail.com', NULL, 1, '2024-12-17 13:01:31', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder` VALUES (4, '2496322123454', NULL, 'Hoàng Cẩm Tú', 'Quảng Bình', '0872617882', 'camtu2982@gmail.com', NULL, 1, '2024-12-17 13:14:46', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder` VALUES (5, '2496322123455', NULL, 'Trần Ngọc Sơn', 'Bình Phước', '0972183772', 'tns58@gmail.com', NULL, 1, '2024-12-17 13:56:54', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_saleorder_products
-- ----------------------------
DROP TABLE IF EXISTS `tbl_saleorder_products`;
CREATE TABLE `tbl_saleorder_products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `saleorder_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quality` int NOT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `updated_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKnyfdau9vc46jkiwvrgj1ns85v`(`product_id` ASC) USING BTREE,
  INDEX `FKnpyir3q973iv4wq49ltw0kcrd`(`saleorder_id` ASC) USING BTREE,
  CONSTRAINT `FKnpyir3q973iv4wq49ltw0kcrd` FOREIGN KEY (`saleorder_id`) REFERENCES `tbl_saleorder` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKnyfdau9vc46jkiwvrgj1ns85v` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_saleorder_products
-- ----------------------------
INSERT INTO `tbl_saleorder_products` VALUES (1, 1, 1, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder_products` VALUES (2, 1, 11, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder_products` VALUES (3, 2, 3, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder_products` VALUES (4, 2, 13, 24, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder_products` VALUES (5, 3, 5, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder_products` VALUES (6, 3, 15, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder_products` VALUES (7, 4, 7, 12, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder_products` VALUES (8, 4, 17, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder_products` VALUES (9, 5, 9, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_saleorder_products` VALUES (10, 5, 19, 1, 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_subcribe
-- ----------------------------
DROP TABLE IF EXISTS `tbl_subcribe`;
CREATE TABLE `tbl_subcribe`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `updated_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_subcribe
-- ----------------------------
INSERT INTO `tbl_subcribe` VALUES (1, 'tphat8386@gmail.com', 1, '2024-12-17 11:35:48', NULL, NULL, NULL);
INSERT INTO `tbl_subcribe` VALUES (2, 'cnghia45@gmail.com', 1, '2024-12-17 11:36:25', NULL, NULL, NULL);
INSERT INTO `tbl_subcribe` VALUES (3, 'giahan1245@gmail.com', 1, '2024-12-17 11:36:59', NULL, NULL, NULL);
INSERT INTO `tbl_subcribe` VALUES (4, 'maitrang88@gmail.com', 1, '2024-12-17 11:38:02', NULL, NULL, NULL);
INSERT INTO `tbl_subcribe` VALUES (5, 'guest01@gmail.com', 1, '2024-12-17 11:38:40', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_users
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `updated_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_UNIQUE`(`username` ASC) USING BTREE,
  UNIQUE INDEX `email_UNIQUE`(`email` ASC) USING BTREE,
  UNIQUE INDEX `UKj562wwmipqt96rkoqbo0jc34`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_users
-- ----------------------------
INSERT INTO `tbl_users` VALUES (1, 'baophuc', 1, '2024-12-17 03:04:22', NULL, NULL, NULL, '$2a$04$DjcHdBp4E6qi/a5h94FbQ.FGYqIUPKp1nDxIw1nBFOCF7dDMp14Nq', 'bp1311@gmail.com', 'Long An', '0967326158');
INSERT INTO `tbl_users` VALUES (2, 'yenvy', 1, '2024-12-17 11:18:04', NULL, NULL, NULL, '$2a$04$DjcHdBp4E6qi/a5h94FbQ.FGYqIUPKp1nDxIw1nBFOCF7dDMp14Nq', 'vy1578@gmail.com', 'Long An', '0632618183');
INSERT INTO `tbl_users` VALUES (3, 'thienphuc', 1, '2024-12-17 11:21:09', NULL, NULL, NULL, '$2a$04$DjcHdBp4E6qi/a5h94FbQ.FGYqIUPKp1nDxIw1nBFOCF7dDMp14Nq', 'tp1096@gmail.com', 'TPHCM', '0241782838');
INSERT INTO `tbl_users` VALUES (4, 'quangvinh', 1, '2024-12-17 11:22:10', NULL, NULL, NULL, '$2a$04$DjcHdBp4E6qi/a5h94FbQ.FGYqIUPKp1nDxIw1nBFOCF7dDMp14Nq', 'vinh1723@gmail.com', 'TPHCM', '0621617737');
INSERT INTO `tbl_users` VALUES (5, 'guest01', 1, '2024-12-17 11:23:16', NULL, NULL, NULL, '$2a$04$SoUOcXW1nfOAxuyOjL1eC.YHIXcelB8Sp6SbJIQZfepE5PZfS.cXK', 'guest01@gmail.com', 'Hà Nội', '0147384266');

-- ----------------------------
-- Table structure for tbl_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users_roles`;
CREATE TABLE `tbl_users_roles`  (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `fk_1tbl_roles_Ntbl_users_roles_idx`(`role_id` ASC) USING BTREE,
  CONSTRAINT `fk_1tbl_roles_Ntbl_users_roles` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_1tbl_users_Ntbl_users_roles` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_users_roles
-- ----------------------------
INSERT INTO `tbl_users_roles` VALUES (1, 1);
INSERT INTO `tbl_users_roles` VALUES (2, 1);
INSERT INTO `tbl_users_roles` VALUES (3, 1);
INSERT INTO `tbl_users_roles` VALUES (4, 1);
INSERT INTO `tbl_users_roles` VALUES (5, 2);

SET FOREIGN_KEY_CHECKS = 1;
