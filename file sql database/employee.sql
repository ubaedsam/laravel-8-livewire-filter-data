-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2023 pada 06.28
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gaji` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_kerja` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_kerja` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`id`, `nama`, `usia`, `tanggal_lahir`, `alamat`, `gaji`, `m_kerja`, `s_kerja`, `jabatan_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 'Robert Weissnat', '5', '2002-11-04', '82968 Norwood Vista Apt. 447\nWest Elodyshire, AZ 13710', '4716301581747', '2021-02-21 22:23:53', '1998-10-05 00:37:22', 4, 3, '2023-07-01 21:22:50', '2023-07-01 21:22:50'),
(2, 'Brannon O\'Reilly', '1', '1997-05-06', '48680 Marquise Trafficway\nNew Jailyn, MO 40272', '345388552896519', '2019-09-05 05:29:08', '2022-09-06 10:18:58', 4, 3, '2023-07-01 21:22:50', '2023-07-01 21:22:50'),
(3, 'Tiana Ruecker', '6', '2021-11-20', '56773 Osbaldo Springs\nAshlyburgh, TX 61134-4090', '4532380628696564', '2020-08-30 02:19:11', '1979-09-25 08:22:32', 1, 4, '2023-07-01 21:22:50', '2023-07-01 21:22:50'),
(4, 'Mr. Trever Emmerich PhD', '6', '2002-03-21', '648 Chaz Common Apt. 001\nSouth Roxane, HI 69555', '345005738953127', '2021-03-11 01:12:29', '1971-01-19 05:07:00', 4, 4, '2023-07-01 21:22:51', '2023-07-01 21:22:51'),
(5, 'Dr. Adelia Daniel', '8', '2010-01-11', '152 Zulauf Isle Apt. 735\nLake Dinabury, MS 32028', '4539140845381686', '2021-03-23 09:25:24', '1999-01-31 12:10:07', 1, 4, '2023-07-01 21:22:51', '2023-07-01 21:22:51'),
(6, 'Miss Lela Schroeder', '0', '2013-02-01', '126 Randall Ramp\nLake Buster, OH 55837', '4485979671010800', '2023-01-18 05:22:38', '1998-10-02 18:16:38', 2, 3, '2023-07-01 21:22:51', '2023-07-01 21:22:51'),
(7, 'Ayla Labadie', '6', '2009-03-22', '89340 Hilpert Lake Apt. 344\nWest Cristian, CT 43952', '6011991308320567', '2020-02-20 03:15:45', '1974-02-12 12:38:34', 4, 2, '2023-07-01 21:22:52', '2023-07-01 21:22:52'),
(8, 'Dr. Leon Jenkins DVM', '8', '2010-03-10', '90923 Derrick Radial\nBessieberg, OR 28630', '4485643990651641', '2021-10-09 18:53:21', '2018-07-19 22:53:36', 4, 4, '2023-07-01 21:22:52', '2023-07-01 21:22:52'),
(9, 'Ms. Chaya Gerhold', '8', '2022-01-19', '732 Marina Divide\nNolaberg, DC 56104-1402', '4024007105634', '2023-03-14 21:21:11', '1971-12-25 20:06:53', 4, 4, '2023-07-01 21:22:52', '2023-07-01 21:22:52'),
(10, 'Reggie Wehner PhD', '0', '2003-07-04', '218 Lindgren Summit Apt. 335\nNorth Yesenia, OH 21002-4472', '348700148914233', '2023-07-01 06:26:38', '1995-02-20 09:27:42', 4, 4, '2023-07-01 21:22:52', '2023-07-01 21:22:52'),
(11, 'Elsie Brakus', '9', '2007-04-06', '75280 Gulgowski Ramp Apt. 121\nRueckerbury, RI 35572', '2403947256299315', '2019-12-08 21:36:11', '2021-08-19 00:02:12', 2, 2, '2023-07-01 21:22:52', '2023-07-01 21:22:52'),
(12, 'Dr. Jeff Hayes', '5', '2005-10-29', '10148 Brett Views Apt. 601\nPort Dillanland, IL 60657-8483', '2678351196391134', '2022-08-21 15:24:21', '1975-12-31 22:52:06', 2, 1, '2023-07-01 21:22:52', '2023-07-01 21:22:52'),
(13, 'Moses Olson', '2', '1997-10-01', '75086 Goodwin Springs Apt. 236\nForestmouth, KY 99568', '6011022605134079', '2023-04-10 16:15:35', '1988-01-12 08:22:04', 2, 4, '2023-07-01 21:22:52', '2023-07-01 21:22:52'),
(14, 'Dr. Joseph Schimmel', '2', '2002-08-06', '6658 Lilliana Key\nStefanberg, IA 61521', '5159695960726359', '2021-05-13 02:55:27', '1971-09-01 14:01:26', 3, 4, '2023-07-01 21:22:53', '2023-07-01 21:22:53'),
(15, 'Lue Pfeffer', '7', '1997-01-23', '605 Gutkowski Trail\nNew Hipolitotown, GA 77470', '4485427486623599', '2021-09-20 04:43:02', '2018-06-01 16:35:40', 4, 1, '2023-07-01 21:22:53', '2023-07-01 21:22:53'),
(16, 'Jana Hilpert V', '9', '2014-11-08', '5065 Brown Forks\nNew Maureen, NV 14751-9821', '4539072025774317', '2020-02-24 22:51:49', '2001-05-14 00:30:08', 1, 4, '2023-07-01 21:22:53', '2023-07-01 21:22:53'),
(17, 'Millie Schaden MD', '6', '2017-02-21', '6071 Jeffrey Field Suite 268\nDonnellfurt, DE 70747', '2499502201761664', '2021-10-09 23:04:55', '2019-01-11 12:26:12', 4, 1, '2023-07-01 21:22:53', '2023-07-01 21:22:53'),
(18, 'Joana Crist', '2', '2018-09-09', '437 Aracely Plains Apt. 871\nKozeyborough, CA 66507-3371', '4916445242070532', '2020-04-06 16:04:55', '2022-06-25 02:51:09', 1, 4, '2023-07-01 21:22:53', '2023-07-01 21:22:53'),
(19, 'Prof. Jean Greenfelder Sr.', '8', '1994-06-16', '60113 Maryjane Island\nLeschview, CT 01567-3852', '346051323885950', '2022-02-27 11:19:10', '2009-07-28 08:44:22', 2, 2, '2023-07-01 21:22:53', '2023-07-01 21:22:53'),
(20, 'Velva Schmitt Jr.', '1', '1995-02-10', '26005 Kelsie Pike\nWest Benny, SD 35598', '5149770745787803', '2023-02-14 06:06:11', '1981-04-07 09:33:36', 1, 1, '2023-07-01 21:22:53', '2023-07-01 21:22:53'),
(21, 'Jacynthe Grimes II', '4', '2022-09-20', '60126 Saul Forge Apt. 364\nAngieside, CO 11499', '3528198654309268', '2022-04-06 16:23:54', '2022-03-24 01:29:14', 4, 3, '2023-07-01 21:22:54', '2023-07-01 21:22:54'),
(22, 'Torrey Gottlieb', '7', '2008-11-28', '1496 Deangelo Hills Apt. 127\nWittingberg, OH 20256', '4024007102154191', '2021-04-22 12:27:38', '1983-12-12 18:19:29', 4, 4, '2023-07-01 21:22:54', '2023-07-01 21:22:54'),
(23, 'Dr. Dejah Boyer', '9', '2009-11-18', '794 Cummings Pike Suite 316\nAbshiremouth, MI 08837-0164', '4916726861365', '2021-10-30 15:08:43', '1971-08-15 09:14:54', 4, 1, '2023-07-01 21:22:54', '2023-07-01 21:22:54'),
(24, 'Leslie Friesen', '3', '1999-03-02', '358 Johann Walks Apt. 648\nLeefort, DC 38936', '6011431802041575', '2022-10-10 05:25:59', '2005-06-30 08:52:28', 1, 1, '2023-07-01 21:22:54', '2023-07-01 21:22:54'),
(25, 'Ed Marquardt', '4', '1998-01-02', '34600 Shyanne Park Suite 648\nHershelview, AZ 52484-0290', '2481380165581547', '2023-04-01 09:26:37', '2008-11-02 15:00:09', 1, 2, '2023-07-01 21:22:54', '2023-07-01 21:22:54'),
(26, 'Prof. Althea Bernier', '1', '2012-06-21', '201 Keeling Unions\nHumbertoville, NY 38022', '4532775734144047', '2022-02-21 15:19:09', '1999-10-05 08:26:51', 2, 1, '2023-07-01 21:22:54', '2023-07-01 21:22:54'),
(27, 'Maddison Bins II', '7', '1995-05-14', '592 Macejkovic Estate\nPort Delphaton, KS 20000', '5375167787386310', '2023-03-05 11:56:56', '2000-11-11 10:02:45', 4, 1, '2023-07-01 21:22:54', '2023-07-01 21:22:54'),
(28, 'Mossie Shields', '1', '2015-11-12', '9662 Gottlieb Rapid Apt. 515\nPowlowskishire, NM 51675', '3528772209843243', '2019-08-08 03:23:16', '1976-05-23 22:09:31', 3, 2, '2023-07-01 21:22:55', '2023-07-01 21:22:55'),
(29, 'Mrs. Astrid Quigley', '3', '2013-03-20', '1467 Frami Freeway Apt. 408\nBroderickland, FL 16418', '5336328460662405', '2020-04-07 13:29:29', '1975-06-25 16:04:45', 3, 1, '2023-07-01 21:22:55', '2023-07-01 21:22:55'),
(30, 'Corrine Swift II', '5', '2002-08-27', '4488 Fisher Common Suite 911\nPort Jaden, MA 28720-6454', '343381483328035', '2022-12-12 21:35:20', '2016-10-14 20:48:22', 1, 2, '2023-07-01 21:22:55', '2023-07-01 21:22:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jabatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Web Developer', NULL, NULL),
(2, 'HRD', NULL, NULL),
(3, 'Admin', NULL, NULL),
(4, 'Manager', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_25_021355_create_team_table', 1),
(6, '2023_01_25_172338_create_jabatan_table', 1),
(7, '2023_01_26_162337_create_employee_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `team`
--

CREATE TABLE `team` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `team`
--

INSERT INTO `team` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Team 1', NULL, NULL),
(2, 'Team 2', NULL, NULL),
(3, 'Team 3', NULL, NULL),
(4, 'Team 4', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `employee_team_id_foreign` (`team_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `team`
--
ALTER TABLE `team`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
