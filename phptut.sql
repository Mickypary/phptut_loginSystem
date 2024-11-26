-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for phptut
DROP DATABASE IF EXISTS `phptut`;
CREATE DATABASE IF NOT EXISTS `phptut` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `phptut`;

-- Dumping structure for table phptut.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table phptut.admin: ~11 rows (approximately)
INSERT INTO `admin` (`id`, `username`, `password`, `image`) VALUES
	(1, 'admin', '12345', 'tt.jpg'),
	(4, 'mickypary', '0', 'ty.png'),
	(5, 'user', '$2y$10$qnvzDpJDJOud8Xt/1bTuJ./Ls/80Sel3j7fWSs3CuQnpC.mBToc9q', 'ty.png'),
	(6, 'amos', '$2y$10$Lczsnh2JRBLH5yjFLjuDDeyBdTtHHEffOKWzYKbCA6B/O4P7Eas3y', 'ty.png'),
	(7, 'peter', '$2y$10$xFncgBcTeTdCWUX5pbVaqOVQsCA3rQ0B0VDOM1zk7eXVZU0EgpdgG', 'ty.png'),
	(8, 'gbemi', '$2y$10$PkKyzpeAvXLViNJRVSIoXO09aNBRXXUq45k6gvrg0bcGV2ggXJvsi', 'ty.png'),
	(9, 'paul', '$2y$10$UzexgJhJpYAW.p2g3ThpEOsE092lO209/DUAddQ5TPdAigHd1StNG', 'uploads/admin/IMG_2941.JPG'),
	(14, 'adesida', '$2y$10$pPqQimwBfUYUxp8QmbW52OouoD/gBbnLtb57gqSj4AQZrPCg8VGNS', 'IMG-20190928-WA0466.jpg'),
	(15, 'ade', '$2y$10$TcfsVOhvKmw4PuU1BZQh6OU5GN2OF2KDnofKuomeKjdQN.oqNOHtK', 'monaz-nazary-z7edLvrBxwE-unsplash.jpg'),
	(16, 'tariq', '$2y$10$qrW..BRQOisT.xkcpctkLe2dhGvRYiaje47HMK0etMGbp2kkqir/S', 'carbon cycle 2.jpeg'),
	(20, 'ali', '$2y$10$.84cT5s6/Y4SgqiOh/JKoe5eN3SQO05u/7hfAIjJaHx/4kO5F2PAG', 'DENSIL DISANAYAKA.jpg');

-- Dumping structure for table phptut.token
DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table phptut.token: ~63 rows (approximately)
INSERT INTO `token` (`id`, `token`, `user_id`) VALUES
	(4, '0ce8c410fef8321fc1054553759d70719b41d36e', 6),
	(5, 'd93cff99df265ce9cb073a74e97f5239ce8f0d94', 6),
	(6, '4659e93594db19f7e4ab7d9bfbaf5a348a5fe7bc', 6),
	(7, 'bf9353ae1c4df3361f87b3f03ca051c3ee6cce2d', 6),
	(8, '2d8ab51a226423b1aead7a46d6cf9f519fc24170', 6),
	(9, '484448f5e4140d288fa158b73a1e329ecdcd23d1', 8),
	(10, 'ab99946ef42e2c2c9acc4dcecbd3f874cbc6ab41', 8),
	(11, '065cc15ce7dcb20d0fc00370a43ba4159ef5e622', 8),
	(12, '00a1316c2771e4da1fd5f294486ced46991dc44b', 8),
	(13, '2155850cd9c7de9fc1169fa80fc47b7f7ad60496', 8),
	(14, '204969fdf863caa03a01fdb652814f1b362c7819', 8),
	(15, '423f35a524febf756653ac1abe73ddb3c2132b64', 8),
	(16, '981692fb3738c0d7abe3c6a7e56cae19af520d76', 6),
	(17, 'f4f10392c0fed92d7114188f14ca37aabfe54136', 6),
	(18, '02d4540095fc85f6a386ce6a7efbf74fa1d1a284', 6),
	(19, '22e1f1aee6dd2b0f06905fae3fa520d44bbbe9ee', 6),
	(20, '02e4dbbe73052824d79cc0604f81884ef59202cf', 6),
	(21, '2443151384fc366b564536b789a255821e04b1bd', 6),
	(22, 'ec950a3f3e0a354b157ba2fe00ab9fb7aa9453e0', 6),
	(23, '24390af7eebee7c13d708f00841fc6ee48274506', 6),
	(24, 'e0f66019cf2986481bab17fafce92f84962c964a', 6),
	(26, '671b979b8374ea05809fb8890f57958ef2bc61b7', 6),
	(27, 'ecd503917bd111c633dc079a97e1de6638330ee5', 6),
	(28, 'a75c30469429ada3f361704e216f948b4a67dafb', 6),
	(29, 'd8cddd7fcc23a1909859a120b8759ed37a3c3382', 6),
	(30, '1a557909c1bfcfa6c15c07369c6e377c646146de', 6),
	(31, 'a73db076414703d75262becb7b8be7faab916d1d', 6),
	(32, 'd63d8244fa44656d2ded2dfee03707f1a52c396d', 6),
	(33, '95ede2155ac1a78739f2b8c73bca5d3e2db27919', 6),
	(34, '934d9be4d925461e412dd122a78478132b895123', 6),
	(35, '403b75ab2318c8b5bb2dd3b080eca2568531aacd', 6),
	(36, 'a2b236fcf5dcccf927e868b45c8b32aa4d6acc34', 6),
	(37, '22fa0c778a45577b2f4db0e39955204ca6e61ac6', 6),
	(38, 'b335bd493fb42de8f786d0fc07c34533b78293ec', 6),
	(39, 'c09e822269670e940ecb75d2ab008dc5ebf4878a', 6),
	(40, '2c60e2c2831f08570811371889c2fbeb78340c59', 6),
	(41, 'aa683f2bb1d50d04de670e097580b6e37097c494', 6),
	(42, '22a8e8d0e26e4db7c8bdd380c94258de7d3c52fc', 6),
	(43, 'f0f7cc60156774cef9cf3f4bea8263ba8e80e433', 6),
	(46, 'ff8bbb2cc1882f0cc7d9f64445b2f5db6c995778', 6),
	(47, '82437c27af6554a8af479c2614749b9e0b06dc51', 8),
	(48, 'ef19a3060e7a88b1439b059004ecaa6c8939429e', 6),
	(49, '12dbd30d3f7fa327af9cdcfb9241ea5b0bd81749', 6),
	(50, '56096471f57b8120c7fb4415c790845f6033a5d7', 6),
	(51, 'e92aa7f4ac54a589cc857fb1cbc91ac39e6dc23d', 6),
	(52, '3c4b268cd054f7917e2cf91dfbae2a170ffa77ed', 13),
	(53, '6508a404590ace4f4eeca17065ac076121420a4a', 14),
	(54, 'c73ad3eb8fbc74f7af09fc768364e6aa5907ae4e', 6),
	(55, 'e6f3b1960821086701697278677ea56682a2c462', 14),
	(56, '6222ebc2c2952021d224099651132d2dcf20a8f3', 9),
	(57, 'f3af3a26798a6a92364a90596ac039b1e2a74657', 10),
	(58, 'e62266930072325e2753988d3f7725ff9c3bbd2d', 6),
	(59, '547fbeef11057bf3888dfc61cd4577658c422233', 10),
	(60, 'aa9cedb3969b6acd852c9fb93bad2633f1346555', 10),
	(61, 'c80904c3fb2119abaf0e175dd9f882009eaca8e5', 10),
	(62, 'd8f1be6de7178c6914f6dfbdd17d94c182543664', 9),
	(63, '6654f2cc27c86940a2d3359da32e4e34dd531a53', 15),
	(64, '76835abf718e27dcc5ef2c335efa0c3e7fc0f088', 16),
	(65, '76cafa7eba8c368f948f921007dad772ef05253b', 10),
	(66, 'a5112e9914bde27255e9c84a982d7e436aab8006', 17),
	(67, 'b82206e2c5ede2fd2b960639cd9a0f2a7a017ba1', 18),
	(68, 'c5b35540eb05272259c55dfe8bd762facd3074fb', 19),
	(69, '90d46ee4c97d5f8f254d85c9ef72de2741af63a4', 20);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
