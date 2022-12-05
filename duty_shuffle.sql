-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 12 月 05 日 15:26
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `duty_shuffle`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `work_id` int(11) DEFAULT NULL,
  `day` date NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `history`
--

INSERT INTO `history` (`id`, `work_id`, `day`, `member_id`) VALUES
(1, NULL, '2022-11-30', 10),
(2, NULL, '2022-11-30', 23),
(3, NULL, '2022-11-30', 8);

-- --------------------------------------------------------

--
-- テーブルの構造 `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kana_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `member`
--

INSERT INTO `member` (`id`, `last_name`, `first_name`, `kana_name`, `archive`) VALUES
(1, 'テスト', '太郎', 'てすとたろう', 0),
(2, 'テスト', '花子', 'てすとはなこ', 0),
(3, '釘子', '津佳冴', 'くぎこつかさ', 0),
(4, '長谷川', '異風', 'はせがわいふう', 0),
(5, '樋口', '伊吹', 'ひぐちいぶき', 0),
(6, '小泉', '俊一', 'こいずみしゅんいち', 0),
(7, '北川', '優斗', 'きたがわゆうと', 0),
(8, '小股', '晄', 'おまたあき', 0),
(9, '田鹿', '蒼史', 'たじかそうじ', 0),
(10, '芦生', '浩明', 'あしおひろあき', 0),
(11, '高宮城', '誉有治', 'たかみやぎようき', 0),
(12, '朴', '清', 'ぼくきよし', 0),
(13, '西加治工', '祐樹', 'にしかじくゆうき', 0),
(14, '雉子谷', '茂夫', 'きじだにしげお', 0),
(15, '渡谷', '身志', 'わたりやみり', 0),
(16, '室石', '遙摯', 'むろいしはると', 0),
(17, '塩足', '壱', 'しおたりいち', 0),
(18, '筒屋', '厳春', 'つつやみねはる', 0),
(19, '日陰茂井', '昊', 'ひかげもいそら', 0),
(20, '精廬', '里備', 'とぐろさとはる', 0),
(21, '喜美候部', '智絃	', 'きみこうべちづる', 0),
(22, '竹乘', '成也', 'たけのりなりや', 0),
(23, '安達', '城灯', 'あだちきと', 0),
(24, '森田', '悠翔', 'もりたはると', 0),
(25, '矢野', '英一', 'やのえいいち', 0),
(26, '誉田', '和樹', 'ほまれだかずき', 0),
(27, '数', '瑛斗', 'かずえいと', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `member_option`
--

CREATE TABLE `member_option` (
  `id` int(11) NOT NULL,
  `work_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `shuffle_option`
--

CREATE TABLE `shuffle_option` (
  `id` int(11) NOT NULL,
  `interval` int(11) DEFAULT '7',
  `reset_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `work`
--

CREATE TABLE `work` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `multiple` int(10) UNSIGNED DEFAULT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `work`
--

INSERT INTO `work` (`id`, `name`, `multiple`, `archive`) VALUES
(1, 'リーダー', 1, 0),
(2, 'ハンディモップ', 1, 0),
(3, 'アクリルボード', 1, 0),
(4, 'ガラス拭き', 1, 0),
(5, '除菌シート', 1, 0),
(6, '窓の出っ張り', 1, 0),
(7, 'コロコロ', 1, 0),
(8, 'アルコール拭き', 1, 0),
(9, '水拭き', 1, 0),
(10, 'ゴミ捨て', 1, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('1aab7b72-1950-4b63-b51d-7b8d691f7311', 'aba0836c4317f85e27c2015630a03a04a53653e08f59dc0accc63994f7be6563', '2022-12-05 14:47:51.070', '20221122033658_add_collmun_reset_date_table_shuffle_option', NULL, NULL, '2022-12-05 14:47:51.036', 1),
('47165b91-0785-4e24-bda8-386face3ffd4', '28244d4519d3b8827345e74995b17f19036adfeb80c15d3e9cfa06743a8c9eb5', '2022-12-05 14:47:50.746', '20221109015544_add_status_to_work', NULL, NULL, '2022-12-05 14:47:50.660', 1),
('5c50a0d8-2d3c-44a9-95f8-0efbc6698147', '451340d883eb11d8038c4338a58576e7f84bf044d32f57551257e35cb1abaa46', '2022-12-05 14:47:51.036', '20221122025705_rename_table_member', NULL, NULL, '2022-12-05 14:47:50.746', 1),
('61f9687c-e3d4-44f8-824d-f6eed43d53cb', '8c2a30f0e43c75a60963e647359c35b7f4c861b0594cf21363e8a85d6572f8dd', '2022-12-05 14:47:50.659', '20221108021909_init', NULL, NULL, '2022-12-05 14:47:50.288', 1);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_work_id_fkey` (`work_id`),
  ADD KEY `history_member_id_fkey` (`member_id`);

--
-- テーブルのインデックス `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `member_option`
--
ALTER TABLE `member_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_option_work_id_fkey` (`work_id`),
  ADD KEY `member_option_member_id_fkey` (`member_id`);

--
-- テーブルのインデックス `shuffle_option`
--
ALTER TABLE `shuffle_option`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- テーブルのAUTO_INCREMENT `member_option`
--
ALTER TABLE `member_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `shuffle_option`
--
ALTER TABLE `shuffle_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `work`
--
ALTER TABLE `work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_member_id_fkey` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `history_work_id_fkey` FOREIGN KEY (`work_id`) REFERENCES `work` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- テーブルの制約 `member_option`
--
ALTER TABLE `member_option`
  ADD CONSTRAINT `member_option_member_id_fkey` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `member_option_work_id_fkey` FOREIGN KEY (`work_id`) REFERENCES `work` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
