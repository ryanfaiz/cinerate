-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2025 at 04:18 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinerate_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_manhildwinarno@gmail.com|127.0.0.1', 'i:1;', 1764761572),
('laravel_cache_manhildwinarno@gmail.com|127.0.0.1:timer', 'i:1764761572;', 1764761572);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `synopsis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `release_year` year NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cast` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `title`, `slug`, `synopsis`, `poster`, `banner`, `is_popular`, `release_year`, `duration`, `director`, `cast`, `genre`, `created_at`, `updated_at`) VALUES
(1, 'Agak Laen', 'agak-laen', 'Demi mengejar mimpi mengubah nasib, empat sekawan penjaga rumah hantu di pasar malam mencari cara baru menakuti pengunjung agar selamat dari kebangkrutan.', 'posters/MiZB4JXY9I62Ce5UNlkXklzLTxoBlzyy91hIo5pK.webp', 'banners/aoZuiSDGsEo73i2CDWXLQfuz5128VcknpLr5lb0D.jpg', 1, 2024, '1j 59m', 'Muhadkly Acho', 'Indra Jegel, Bene Dion, Oki Rengga, Boris Bokir', 'Comedy, Horror', '2025-12-03 01:07:40', '2025-12-03 05:03:04'),
(2, 'The Raid', 'the-raid', 'Sebuah tim S.W.A.T. terjebak di dalam gedung apartemen yang dikuasai oleh penjahat kejam dan pasukannya.', 'posters/MPyKCwzels9N9G66yIaJMUMrDlQv41hQzFRwczhX.jpg', 'banners/EtARZpYbhIVMYlMC5nIfPKxgk29SilA0sWtAG8wK.jpg', 1, 2011, '1j 42m', 'Gareth Evans', 'Iko Uwais, Yayan Ruhian, Joe Taslim', 'Action, Thriller', '2025-12-03 01:07:40', '2025-12-03 03:29:46'),
(4, '1 Kakak 7 Ponakan', '1-kakak-7-ponakan-huLG4', 'Seorang arsitek muda bernama Moko tiba-tiba harus mengambil alih peran sebagai orang tua setelah kakak-kakaknya meninggal mendadak, sehingga ia menjadi pengasuh bagi tujuh keponakannya sekaligus. Di tengah perjuangannya mengejar impian, Moko harus memilih antara karier, cinta, atau tanggung jawab barunya sebagai “ayah sementara.” Ceritanya mengeksplorasi pengorbanan, cinta keluarga, dan dilema tanggung jawab — menghadirkan drama emosional yang menyentuh', 'posters/V58e9NuVh0IT7vf2q6alPSXMpkpEntKfGo5ehOfS.jpg', NULL, 0, 2024, '2j 11m', 'Yandy Laurens', 'Chicco Kurniawan, Amanda Rawles, Fatih Unru, Freya Jayawardana, Ahmad Nadif', 'Drama', '2025-12-03 03:39:41', '2025-12-03 03:39:41'),
(5, 'Jumbo', 'jumbo-9nzHO', 'Seorang bocah bernama Don, yang sering dipanggil “Jumbo” karena tubuhnya gempal, tumbuh dengan kenangan indah dari buku dongeng yang diwariskan oleh orang tuanya. Karena sering dirundung, Don bertekad membuktikan dirinya dengan mewujudkan pentas seni berdasarkan kisah dalam buku itu. Bersama sahabatnya, dan dibantu oleh nenek serta teman baru, ia menghadapi perundungan, kehilangan, serta petualangan magis untuk menemukan arti keberanian, persahabatan, dan impian.', 'posters/mnpoclL4Dv4DixLSfCYjRJEVzfAdQ7FNcqfyaTtz.jpg', 'banners/AYUDn5HJgMZOZphWhyNcZ7R7Z4gfoIgklwQHFL03.jpg', 1, 2025, '1j 42m', 'Ryan Adriandhy', 'Prince Poetiray, Quinn Salman, Angga Yunanda', 'Animasi, Fantasi, Petualangan', '2025-12-03 04:00:42', '2025-12-03 04:00:42'),
(6, 'Pengepungan di Bukit Duri', 'pengepungan-di-bukit-duri-xU2aK', 'Seorang guru pengganti idealis bernama Edwin ditugaskan mengajar di SMA Duri — sekolah bagi siswa-siswa bermasalah. Ia memiliki misi pribadi: menemukan keponakannya yang hilang, demi menepati janji pada kakaknya. Saat Edwin akhirnya menemukan keponakannya, kerusuhan besar melanda kota; sekolah berubah jadi medan perang. Edwin bersama rekan guru dan siswa harus berjuang mati-matian untuk bertahan hidup di tengah kekerasan brutal, konflik sosial, dan kekacauan.', 'posters/J3mzC9HZxRWntx1QQ3mnydeYAgu9TYDfLsCCANbs.jpg', 'banners/xHSxy3dJkFEWQN41N3oWmM8GOEUtEcuZYygXd4EI.webp', 0, 2025, '1j 58m', 'Joko Anwar', 'Morgan Oey, Omara Esteghlal, dan Hana Malasan', 'Drama, Thriller', '2025-12-03 04:11:35', '2025-12-03 04:11:35'),
(7, 'Sore: Istri dari Masa Depan', 'sore-istri-dari-masa-depan-9iusd', 'Seorang fotografer muda bernama Jonathan hidup di Kroasia dan menjalani gaya hidup sembrono sampai tiba-tiba muncul seorang wanita bernama Sore yang mengaku sebagai istrinya — dari masa depan. Sore datang dengan tujuan memperbaiki kebiasaan buruk Jonathan, memperingatkannya bahwa masa depan hidupnya akan suram jika ia tidak berubah. Sepanjang film, Jonathan dihadapkan pada dilema: menerima keberadaan Sore dan berubah demi masa depan, atau terus menolak kenyataan dengan mempertahankan kenyamanan saat ini.', 'posters/9QV0PrNnkotfE9brGHXkPIMWzQoroJb6SdckiKEY.jpg', 'banners/NtBwZEmLOYs1mHdEpom0wSbagVTrt6HPGDBGaUhF.webp', 1, 2025, '1j 59m', 'Yandy Laurens', 'Dion Wiyoko, Sheila Dara', 'Drama, Romance', '2025-12-03 04:44:14', '2025-12-03 04:44:14'),
(8, '5 cm', '5-cm-LYqvp', 'Film ini bercerita tentang lima sahabat — Genta, Arial, Zafran, Ian dan Riani — yang memutuskan berhenti berkomunikasi selama tiga bulan karena rasa jenuh. Setelah waktu itu, mereka reuni dan memutuskan mendaki Gunung Semeru, puncak tertinggi di Pulau Jawa, dengan misi mengibarkan bendera Merah-Putih tepat pada 17 Agustus. Pendakian itu bukan sekadar perjalanan fisik — melainkan ujian persahabatan, perjuangan, keberanian, dan mimpi.', 'posters/cOy7MjPUjeaHaEEgtLNg2kLctcBMO5WJY6BCsssq.jpg', 'banners/hEHfB2ieQlSMhepSdOFZJHhS4UiLXlDaUDN777t9.webp', 0, 2012, '2j 56m', 'Rizal Mantovani', 'Herjunot Ali, Raline Shah, Fedi Nuril', 'Drama, Romance, Petualangan', '2025-12-03 05:16:19', '2025-12-03 05:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `film_playlist`
--

CREATE TABLE `film_playlist` (
  `id` bigint UNSIGNED NOT NULL,
  `playlist_id` bigint UNSIGNED NOT NULL,
  `film_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_playlist`
--

INSERT INTO `film_playlist` (`id`, `playlist_id`, `film_id`) VALUES
(2, 1, 1),
(1, 1, 7),
(3, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `film_requests`
--

CREATE TABLE `film_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int DEFAULT NULL,
  `poster_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_requests`
--

INSERT INTO `film_requests` (`id`, `user_id`, `title`, `year`, `poster_url`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Mencuri Raden Saleh', 2022, NULL, NULL, 'rejected', '2025-12-03 06:36:39', '2025-12-03 08:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_01_024843_create_films_table', 1),
(5, '2025_12_01_061759_create_reviews_table', 1),
(6, '2025_12_01_120221_add_role_to_users_table', 1),
(7, '2025_12_01_120311_create_film_requests_table', 1),
(8, '2025_12_01_131036_create_playlists_table', 1),
(9, '2025_12_01_131117_create_film_playlist_table', 1),
(10, '2025_12_01_233249_add_details_to_film_requests_table', 1),
(11, '2025_12_01_233924_add_extra_details_to_films_table', 1),
(12, '2025_12_02_113837_add_banner_to_films_table', 1),
(13, '2025_12_02_140832_add_is_popular_to_films', 1),
(14, '2025_12_02_161810_create_review_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `user_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 'Favorit', 'Film Indo Terbaik Sepanjang masa euy', '2025-12-03 04:46:23', '2025-12-03 06:32:46'),
(2, 3, 'ok bang', 'asdasd', '2025-12-03 08:59:26', '2025-12-03 08:59:52');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `film_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `film_id`, `content`, `point`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 'keren', 5, '2025-12-03 08:25:36', '2025-12-03 08:25:36'),
(2, 3, 7, 'tes', 5, '2025-12-03 08:26:57', '2025-12-03 08:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `review_user`
--

CREATE TABLE `review_user` (
  `id` bigint UNSIGNED NOT NULL,
  `review_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('joNtW9nCZOjjYKEhpLaG1fPAjriGjPCd1H9AtxHw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHUwbFZDelJ0Y1cyb0NWQlBMeDhGVG02dHM3WjdmTEc1bzFXQXdhSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9fQ==', 1764774604),
('XiIRwVzl8wZB80w4AZFjJ4cNtKQur7sBWN2HKbP2', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiU0x0V29CRXh1UUY2MUR6b1Z1U25OWHJnaVl0RG13Q0duUlRJZWdXbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NjQ3Nzc5ODQ7fX0=', 1764778699);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', NULL, '$2y$12$GEGgVQXjxLkEFP3FWAy5P.uc.9/HkzyyixX7uIRYZ.rf2sf2TRtLi', NULL, '2025-12-03 01:12:54', '2025-12-03 01:12:54'),
(3, 'pemweb1', 'projek@gmail.com', 'user', NULL, '$2y$12$21pkhZwYxno6XWt0JzF9.u8ZR1wLud5coPv93qBs8stn0ak/AIh2m', NULL, '2025-12-03 04:33:12', '2025-12-03 04:33:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `films_slug_unique` (`slug`);

--
-- Indexes for table `film_playlist`
--
ALTER TABLE `film_playlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `film_playlist_playlist_id_film_id_unique` (`playlist_id`,`film_id`),
  ADD KEY `film_playlist_film_id_foreign` (`film_id`);

--
-- Indexes for table `film_requests`
--
ALTER TABLE `film_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlists_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_film_id_foreign` (`film_id`);

--
-- Indexes for table `review_user`
--
ALTER TABLE `review_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_user_review_id_foreign` (`review_id`),
  ADD KEY `review_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `film_playlist`
--
ALTER TABLE `film_playlist`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `film_requests`
--
ALTER TABLE `film_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `review_user`
--
ALTER TABLE `review_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `film_playlist`
--
ALTER TABLE `film_playlist`
  ADD CONSTRAINT `film_playlist_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `film_playlist_playlist_id_foreign` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `film_requests`
--
ALTER TABLE `film_requests`
  ADD CONSTRAINT `film_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review_user`
--
ALTER TABLE `review_user`
  ADD CONSTRAINT `review_user_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
