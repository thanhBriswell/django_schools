/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50621
 Source Host           : localhost:3306
 Source Schema         : schools

 Target Server Type    : MySQL
 Target Server Version : 50621
 File Encoding         : 65001

 Date: 10/10/2017 10:10:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add points', 7, 'add_points');
INSERT INTO `auth_permission` VALUES (20, 'Can change points', 7, 'change_points');
INSERT INTO `auth_permission` VALUES (21, 'Can delete points', 7, 'delete_points');
INSERT INTO `auth_permission` VALUES (22, 'Can add students', 8, 'add_students');
INSERT INTO `auth_permission` VALUES (23, 'Can change students', 8, 'change_students');
INSERT INTO `auth_permission` VALUES (24, 'Can delete students', 8, 'delete_students');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$36000$znmMhjv5LY8i$MGTNfomU2Pysr1wLViYTYFX1TshreOoG3gv2nvkZl7g=', NULL, 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2017-10-09 07:42:14.611636');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'schools', 'points');
INSERT INTO `django_content_type` VALUES (8, 'schools', 'students');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2017-10-09 06:52:32.413786');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2017-10-09 06:52:38.120234');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2017-10-09 06:52:39.271007');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2017-10-09 06:52:39.316397');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2017-10-09 06:52:40.186374');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2017-10-09 06:52:40.911078');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2017-10-09 06:52:41.886519');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2017-10-09 06:52:41.905634');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2017-10-09 06:52:42.360968');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2017-10-09 06:52:42.397994');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2017-10-09 06:52:42.425475');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2017-10-09 06:52:42.902327');
INSERT INTO `django_migrations` VALUES (13, 'sessions', '0001_initial', '2017-10-09 06:52:43.237101');
INSERT INTO `django_migrations` VALUES (14, 'schools', '0001_initial', '2017-10-09 07:13:03.943266');
INSERT INTO `django_migrations` VALUES (15, 'schools', '0002_auto_20171009_1416', '2017-10-09 07:16:17.228139');
INSERT INTO `django_migrations` VALUES (16, 'schools', '0003_auto_20171010_0834', '2017-10-10 01:34:51.995008');
INSERT INTO `django_migrations` VALUES (17, 'schools', '0004_auto_20171010_0858', '2017-10-10 01:59:53.532659');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for schools_points
-- ----------------------------
DROP TABLE IF EXISTS `schools_points`;
CREATE TABLE `schools_points`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `math` double NOT NULL,
  `english` double NOT NULL,
  `geography` double NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `schools_points_student_id_f5667447_fk_schools_students_id`(`student_id`) USING BTREE,
  CONSTRAINT `schools_points_student_id_f5667447_fk_schools_students_id` FOREIGN KEY (`student_id`) REFERENCES `schools_students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of schools_points
-- ----------------------------
INSERT INTO `schools_points` VALUES (1, 8, 7, 8, 1, '2017-10-10 01:59:51.880364', '2017-10-10 01:59:52.568435');
INSERT INTO `schools_points` VALUES (2, 4, 5, 6, 2, '2017-10-10 01:59:51.880364', '2017-10-10 01:59:52.568435');
INSERT INTO `schools_points` VALUES (3, 9, 9.5, 10, 3, '2017-10-10 01:59:51.880364', '2017-10-10 01:59:52.568435');

-- ----------------------------
-- Table structure for schools_students
-- ----------------------------
DROP TABLE IF EXISTS `schools_students`;
CREATE TABLE `schools_students`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of schools_students
-- ----------------------------
INSERT INTO `schools_students` VALUES (1, 'Doanh', 'Quan 12', 'A001', '1990-02-14', '2017-10-10 01:59:52.939547', '2017-10-10 01:59:53.240375');
INSERT INTO `schools_students` VALUES (2, 'An', 'Quan 11', 'B002', '1991-11-13', '2017-10-10 01:59:52.939547', '2017-10-10 01:59:53.240375');
INSERT INTO `schools_students` VALUES (3, 'Thai', 'Quan 5', 'A002', '1995-02-07', '2017-10-10 01:59:52.939547', '2017-10-10 01:59:53.240375');
INSERT INTO `schools_students` VALUES (4, 'Binh', 'Quan 6', 'A002', '1991-11-27', '2017-10-10 01:59:52.939547', '2017-10-10 01:59:53.240375');
INSERT INTO `schools_students` VALUES (5, 'Trinh', 'Quan 7', 'B002', '1992-07-15', '2017-10-10 01:59:52.939547', '2017-10-10 01:59:53.240375');
INSERT INTO `schools_students` VALUES (6, 'Tien', 'Hoocmon', 'A001', '1994-07-13', '2017-10-10 01:59:52.939547', '2017-10-10 01:59:53.240375');
INSERT INTO `schools_students` VALUES (8, 'Teo', '', 'A001', '2017-10-02', '2017-10-10 01:59:52.939547', '2017-10-10 01:59:53.240375');
INSERT INTO `schools_students` VALUES (9, 'Ti', 'Quan 11', 'A002', '1995-06-22', '2017-10-10 01:59:52.939547', '2017-10-10 01:59:53.240375');

SET FOREIGN_KEY_CHECKS = 1;
