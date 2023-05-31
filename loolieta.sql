-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Bulan Mei 2023 pada 07.53
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loolieta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Make Up', '2021-12-13 01:50:13', '2023-05-24 01:27:53', NULL),
(2, 'Skincare', '2021-12-13 02:13:25', '2023-05-24 01:28:03', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` blob DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga_jual` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `id_kategori`, `gambar`, `nama_produk`, `deskripsi`, `harga_jual`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 1, 0x70726f64756b5f313638353531313737312e6a7067, 'HOLIKA HOLIKA Hard Cover Glow Cushion EX', 'Upgrade cushion seri Hard Cover dengan fungsi triple (Perlindungan UV + Mencerahkan + Melembabkan) yang memberikan kesan ringan dan glow pada wajah selama 24 jam kelembapan. Memiliki PolubarrierTM yang mencegah debu halus dan bahaya nya faktor eskternal pada kulit.', 339000, '2023-05-30 13:53:57', '2023-05-30 22:42:51', NULL),
(10, 1, 0x70726f64756b5f313638353531313735372e6a7067, 'ESQA Highlighter', 'Highlighter yang mempesona dari Esqa memiliki highlight yang mudah dibentuk dan dibaurkan. Memberikan pipimu kilau alami. Formulanya Vegan, Halal dan dibuat tanpa bahan-bahan kimia. Ukurannya sangat cocok untuk dibawa bepergian.', 86000, '2023-05-30 13:55:11', '2023-05-30 22:42:37', NULL),
(11, 1, 0x70726f64756b5f313638353531313733352e6a7067, 'Focallure Highlighter & Contour Multi Stick', 'FOCALLURE Face Sculpting Color Sticks yang didesain khusus dengan bentuk stik ini sangat mudah diaplikasikan di wajah dan berfungsi untuk menyempurnakan fitur wajah. Stik dengan tekstur cream ini akan memberikan hasil akhir yang indah di wajah sehingga kamu dapat berkreasi sesuai dengan yang kamu inginkan, tahan lama dan bebas minyak, cocok digunakan untuk skin tone terang ke medium.', 70000, '2023-05-30 13:57:57', '2023-05-30 22:42:15', NULL),
(12, 1, 0x70726f64756b5f313638353531313732362e706e67, 'Dear Me Beauty Baby Bears Eyeshadow Palette', 'Ekspresikan dirimu dengan indahnya tampilan mata penuh warna dan bermainlah secara kreatif dengan ragam pilihan warna menarik dari koleksi istimewa Baby Bears Eyeshadow Palette, kolaborasi riasan mata terbaru dari Dear Me Beauty dan YUPI Gummy untuk menyempurnakan tampilanmu dan membuatmu tampil hepi setiap hari.', 249000, '2023-05-30 13:58:56', '2023-05-30 22:42:06', NULL),
(13, 1, 0x70726f64756b5f313638353531313731312e6a7067, 'Benefit Cosmetics Roller Lash Mascara', 'Dapatkan bulu mata lentik yang tahan hingga 12 jam. Maskara ini memberikan efek wide-awake seraya menguatkan bulu mata Anda. Dengan brush inovatif dan gagang lembut, mencegah bulu mata Anda dari noda hitam.\r\n\r\n- Berwara hitam, formula tahan lama\r\n- Diperkaya dengan provitamin B5 dan Serin untuk memelihara bulu mata\r\n- Mudah dibersihkan', 396000, '2023-05-30 14:00:19', '2023-05-30 22:41:51', NULL),
(14, 2, 0x70726f64756b5f313638353531313639352e706e67, 'Roceo Melte Balm Cleansing Balm', 'Cleansing Balm bertekstur sorbet dengan perpaduan unik dari Tangerine, Grape Seed, Calendula dan Sweet Almond. Cocok untuk semua jenis kulit termasuk oily acne prone skin.', 119000, '2023-05-30 14:01:19', '2023-05-30 22:41:35', NULL),
(15, 2, 0x70726f64756b5f313638353531313637392e706e67, 'Dear Me Baeuty Meltaway Balm Blueberry', 'Dear Me Beauty Meltaway Cleansing Balm merupakan pembersih wajah yang lembut dan dapat menghilangkan sisa kotoran dan noda riasan hanya dalam 30 detik.\r\n- Tekstur ringan\r\n- Mampu dengan cepat menghilangkan noda makeup\r\n- Dikemas dalam jar yang mudah dibawa kemana saja\r\n- Sudah dilengkapi spatula yang memudahkan ketika pengaplikasian', 127000, '2023-05-30 14:02:05', '2023-05-30 22:41:19', NULL),
(16, 2, 0x70726f64756b5f313638353531313637312e706e67, 'Barenbliss K.O! Kombucha Omega Deep Cleansing Balm', 'K-Beauty balm yang terdiri dari dua lapisan penuh nutrisi untuk kulit, melelehkan makeup dan kotoran di wajah dalam 20 detik untuk kulit bersih sempurna yang lembap.\r\n\r\nUSP :\r\n1. 15 Seconds Perfectly Cleansed Skin\r\nVelvety-soft balm yang meleleh dalam 20 detik meluruhkan kotoran, makeup, dan minyak berlebih menjadikan kulit bersih, segar, dan lembut tanpa rasa berminyak.\r\n2. 30 Nourishing Bioactive Compounds\r\nDiformulasikan dengan nutrisi alami berlimpah yang terbagi ke dalam dua lapisan, membantu menutrisi dan menjaga kulit sehat bercahaya. Kombucha, Moringa, dan Jeju Algae pada lapisan pink serta Pepaya, Mangga, dan Nanas pada lapisan kuning.\r\n3. Protect & Restore Skin Barrier\r\nDiperkaya dengan Ceramide 3 dan minyak kaya Omega 3-6-9 yang merupakan penguat skin barrier kulit untuk menjaga dan melindungi kesehatan skin barrier, mengurangi kemerahan, dan melembutkan kulit.\r\n\r\nGood to know :\r\nPurifying, Brightening, Moisturizing, Nourishing, Refreshing, Auto-Melting, Calming\r\n[Dermatology Tested, EWG Safe]\r\n\r\nCocok untuk digunakan oleh semua jenis kulit', 101000, '2023-05-30 14:03:03', '2023-05-30 22:41:11', NULL),
(17, 2, 0x70726f64756b5f313638353531313636302e6a706567, 'Skin Aqua Moisture Milk SPF 50 40ml', 'SKIN AQUA UV MOISTURE MILK\r\nDaily UV Skin Care untuk semua jenis kulit\r\n\r\n* SPF 50 untuk perlindungan 50x lebih lama terhadap sinar UV-B yang menyebabkan kulit terbakar.\r\n* PA+++ untuk perlindungan terhadap UV-A yang menyebabkan penuaan dini dan kulit menjadi lebih gelap.\r\n* Improved Hyaluronic Acid (AcHA) dan Collagen untuk melembabkan dan melembutkan kulit.\r\n* Tidak menggunakan bahan pewarna dan parfum.\r\n* Untuk dipakai setiap hari.\r\n* Dapat digunakan sebagai dasar make up.\r\n* Waterbased formula yang cepat meresap, ringan di kulit, dan tidak menimbulkan whitecast', 65000, '2023-05-30 14:03:52', '2023-05-30 22:41:01', NULL),
(18, 2, 0x70726f64756b5f313638353438353630342e6a706567, 'SKIN1004 Madagascar Centella Soothing Cream 75ml', 'SKIN1004 Madagascar Centella Soothing Cream 75ml', 170000, '2023-05-30 15:26:44', NULL, NULL),
(19, 2, 0x70726f64756b5f313638353438353637322e6a706567, 'SKIN1004 Madagascar Centella Light Cleansing Oil 200ml', 'SKIN1004 Madagascar Centella Light Cleansing Oil 200ml', 190000, '2023-05-30 15:27:52', NULL, NULL),
(20, 2, 0x70726f64756b5f313638353438353730352e6a706567, 'SKIN1004 Madagascar Centella Toning Toner 210ml', 'SKIN1004 Madagascar Centella Toning Toner 210ml', 180000, '2023-05-30 15:28:25', NULL, NULL),
(21, 2, 0x70726f64756b5f313638353438353733302e6a706567, 'SKIN1004 Madagascar Centella Ampoule 100ml', 'SKIN1004 Madagascar Centella Ampoule 100ml', 220000, '2023-05-30 15:28:50', NULL, NULL),
(22, 1, 0x70726f64756b5f313638353438353735352e6a7067, 'LACOCO Hydrating Divine Essence', 'LACOCO Hydrating Divine Essence', 275000, '2023-05-30 15:29:15', NULL, NULL),
(23, 2, 0x70726f64756b5f313638353438353737392e6a7067, 'EMINA Lip Mask', 'EMINA Lip Mask', 37000, '2023-05-30 15:29:39', NULL, NULL),
(24, 1, 0x70726f64756b5f313638353531313030352e6a7067, 'MAYBELLINE Superstay Matte Ink Un-Nude Liquid Lipstick', 'Lip cream terbaik dari Maybelline yang semakin memperkuat karaktermu dengan tekstur cair dan ink formula yang melembabkan serta memberikan hasil warna intens dan tahan lama.', 90000, '2023-05-30 21:32:05', '2023-05-30 22:33:14', '2023-05-30 22:33:14'),
(25, 1, 0x70726f64756b5f313638353531313634302e6a7067, 'SYCA Syca Liptint', 'Lip Tint yang mudah di pakai karena teksturnya yang light dan sama sekali tidak lengket. Memberikan hasil akhir yang matte namun tidak membuat bibir kita kering sama sekali.', 96000, '2023-05-30 22:34:29', '2023-05-30 22:40:40', NULL),
(26, 1, 0x70726f64756b5f313638353531313832312e6a7067, 'ESQA Lip Gloss', 'Lip Gloss ini mempunyai full coverage dengan hasil yang mengkilap.\r\nLip Gloss ini memberikan kelembaban yang bertahan lama. Gloss ini vegan dan diperkaya dengan Vitamin E untuk menjaga bibir tetap terhidrasi.', 50000, '2023-05-30 22:43:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Talitha', 'talithasalsaa1@gmail.com', '085770633756', 'Bandung', NULL, '$2y$10$q7B4DgrNL6zCqz5tb9pXR.U2RE9RpaDqzgAlLx2rGJYYAFMkZwg9S', 'okDzz4EqUVne6t9SKwXXxkMOd0twHF2db6K60xg9i5Z9mP5DLbg378SdBf9O', '2023-01-18 18:27:50', '2023-05-24 01:29:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
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
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
