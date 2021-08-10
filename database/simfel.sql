-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 09, 2021 at 06:19 AM
-- Server version: 10.4.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u250888599_eagenda`
--

-- --------------------------------------------------------

--
-- Table structure for table `initial_sistem`
--

CREATE TABLE `initial_sistem` (
  `nama_lembaga` varchar(225) DEFAULT NULL,
  `nama_kontak_person` varchar(225) DEFAULT NULL,
  `telepon` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `draft_surat_keluar` text DEFAULT NULL,
  `directory_arsip_surat` varchar(225) DEFAULT NULL,
  `nomor_otomatis_surat_keluar` int(11) DEFAULT NULL,
  `nomor_otomatis_surat_pelayanan` int(11) DEFAULT NULL,
  `alamat_lembaga` varchar(225) DEFAULT NULL,
  `nama_kota_lembaga` varchar(225) DEFAULT NULL,
  `nama_kecamatan_lembaga` varchar(225) DEFAULT NULL,
  `nama_kelurahan_lembaga` varchar(225) DEFAULT NULL,
  `logo_lembaga` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `initial_sistem`
--

INSERT INTO `initial_sistem` (`nama_lembaga`, `nama_kontak_person`, `telepon`, `email`, `draft_surat_keluar`, `directory_arsip_surat`, `nomor_otomatis_surat_keluar`, `nomor_otomatis_surat_pelayanan`, `alamat_lembaga`, `nama_kota_lembaga`, `nama_kecamatan_lembaga`, `nama_kelurahan_lembaga`, `logo_lembaga`) VALUES
('Kelurahan Telaga Sari', 'KAMSANI', '0800000000', 'telagasaribalikpapan@gmail.com', NULL, 'c:\\xampp\\SiAgenTalas\\output\\arsip_surat', 201, 430, 'Jln. RE Martadinata No.10', 'Balikpapan', 'Balikpapan Kota', 'Telaga Sari', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `list_output_file`
--

CREATE TABLE `list_output_file` (
  `id_output_file` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `jenis_surat` tinytext DEFAULT NULL,
  `nama_file` varchar(225) DEFAULT NULL,
  `keterangan_file` varchar(225) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_04_05_055015_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `id_penduduk` int(11) NOT NULL,
  `nik_kependudukan` varchar(16) CHARACTER SET latin1 NOT NULL,
  `nama_lengkap_penduduk` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `tempat_lahir` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` char(1) CHARACTER SET latin1 DEFAULT 'L',
  `keterangan_gol_darah` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `alamat` varchar(225) CHARACTER SET latin1 DEFAULT NULL,
  `no_rt` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `nama_kelurahan_penduduk` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nama_kecamatan_penduduk` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `keterangan_agama` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `keterangan_ijazah_tertinggi` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `keterangan_status_kawin` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `keterangan_jenis_pekerjaan` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `kewarganegaraan` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `nomor_kk` varchar(16) NOT NULL,
  `input_by` int(225) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`id_penduduk`, `nik_kependudukan`, `nama_lengkap_penduduk`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `keterangan_gol_darah`, `alamat`, `no_rt`, `nama_kelurahan_penduduk`, `nama_kecamatan_penduduk`, `keterangan_agama`, `keterangan_ijazah_tertinggi`, `keterangan_status_kawin`, `keterangan_jenis_pekerjaan`, `kewarganegaraan`, `nomor_kk`, `input_by`, `created_at`, `updated_at`) VALUES
(1, '1111122222333330', 'hermawan rachman', 'balikpapan', '2021-02-26', 'L', 'A+', 'Jln. Blora No.18', '18', 'Klandasan ilir', 'Balikpapan Kota', 'Islam', 'D1 / D2 / D3\r', 'KAWIN', 'KARYAWAN SWASTA', 'WNI', '1111122222000001', NULL, '2021-04-17 16:17:16', '2021-04-17 16:17:16'),
(2, '1111122222333331', 'ahmad ariyandi', 'samarinda', '2019-10-23', 'L', 'AB-', 'Jln. RE Martadinata No.23', '32', 'Telaga Sari', 'Balikpapan Kota', 'Islam', 'S2 / S3', 'KAWIN', 'PETERNAK', 'WNI', '1111122222000002', NULL, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_agama`
--

CREATE TABLE `ref_agama` (
  `id_agama` varchar(1) NOT NULL,
  `keterangan_agama` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ref_agama`
--

INSERT INTO `ref_agama` (`id_agama`, `keterangan_agama`) VALUES
('1', 'ISLAM'),
('2', 'KRISTEN'),
('3', 'KATHOLIK'),
('4', 'HINDU'),
('5', 'BUDHA'),
('6', 'KONGHUCU'),
('7', 'ALIRAN KEPERCAYAAN');

-- --------------------------------------------------------

--
-- Table structure for table `ref_daftar_syarat_surat_pelayanan`
--

CREATE TABLE `ref_daftar_syarat_surat_pelayanan` (
  `id_syarat` int(2) NOT NULL,
  `id_jenis_surat_pelayanan` int(2) DEFAULT NULL,
  `nama_persyaratan` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ref_daftar_syarat_surat_pelayanan`
--

INSERT INTO `ref_daftar_syarat_surat_pelayanan` (`id_syarat`, `id_jenis_surat_pelayanan`, `nama_persyaratan`) VALUES
(1, 1, 'NIB (Nomor Induk Bersama)'),
(2, 1, 'Surat Pengantar RT'),
(3, 1, 'KTP Penanggung Jawab Perusahaan'),
(4, 1, 'KK (Kartu Keluarga) Penanggung Jawab Perusahaan'),
(5, 1, 'IUMK Bagi Perusahaan Perorangan'),
(6, 2, 'KK (Kartu Keluarga) Pemohon'),
(7, 2, 'KTP Pemohon'),
(8, 2, 'Surat Pengantar RT'),
(9, 2, 'Surat pernyataan berpenghasilan tidak tetap yang mencakup nama pekerjaan dan jumlah penghasilan'),
(10, 2, 'KTP Saksi 1'),
(11, 2, 'KTP Saksi 2'),
(12, 3, 'Pengantar RT'),
(13, 3, 'KTP Pemohon'),
(14, 3, 'KK Pemohon'),
(15, 3, 'KTP Saksi 1 sesuai Surat Pernyataan'),
(16, 3, 'KTP Saksi 2 sesuai Surat Pernyataan'),
(17, 3, 'Surat pernyataan bermaterai belum pernah menikah yang ditandatangani 2 orang saksi'),
(18, 4, 'Surat Pengantar RT'),
(19, 4, 'KK Pemohon'),
(20, 4, 'KTP Pemohon'),
(21, 4, 'Pas Foto Ukuran 3x4 Latar Belakang Merah 2 Lembar'),
(22, 4, 'Surat Keterangan Kerja/Kuliah/KK Penjamin'),
(23, 5, 'Pemerintah Kota Balikpapan tidak memberikan layanan surat kuasa ahli waris. Surat Kuasa Ahli Waris c'),
(24, 6, 'KTP Saksi Pertama'),
(25, 6, 'KTP Saksi Kedua'),
(26, 6, 'Surat pernyataan sebagai janda/duda dan belum menikah lagi yang ditandatangani 2 orang saksi'),
(27, 6, 'Surat Pengantar RT'),
(28, 6, 'KTP Pemohon'),
(29, 6, 'KK Pemohon'),
(30, 6, 'Akta Cerai / Akta Kematian Suami atau Istri'),
(31, 7, 'Surat Pengantar RT'),
(32, 7, 'KK Pemohon'),
(33, 7, 'KTP Pemohon'),
(34, 8, 'Akta Kelahiran'),
(35, 8, 'Pas foto Pemohon ukuran 2 x 3 lembar dengan latar belakang warna biru'),
(36, 8, 'Pas foto Calon Pasangan ukuran 2 x 3 lembar dengan latar belakang warna biru'),
(37, 8, 'Akta Cerai/Akta Kematian (Untuk Duda/Janda yang cerai hidup/cerai mati)'),
(38, 8, 'Surat Pernyataan untuk Menikah'),
(39, 8, 'Surat Pengantar RT'),
(40, 8, 'KTP Pemohon'),
(41, 8, 'KK Pemohon'),
(42, 8, 'KTP Saksi 1 yang tertera pada Surat Pernyataan untuk Menikah'),
(43, 8, 'KTP Saksi 2 yang tertera pada Surat Pernyataan untuk Menikah'),
(44, 8, 'KTP Ibu Pemohon'),
(45, 8, 'KTP Bapak Pemohon');

-- --------------------------------------------------------

--
-- Table structure for table `ref_gol_darah`
--

CREATE TABLE `ref_gol_darah` (
  `id_gol_darah` int(2) NOT NULL,
  `keterangan_gol_darah` char(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

--
-- Dumping data for table `ref_gol_darah`
--

INSERT INTO `ref_gol_darah` (`id_gol_darah`, `keterangan_gol_darah`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'AB'),
(4, 'O'),
(5, 'A+'),
(6, 'A-'),
(7, 'B+'),
(8, 'B-'),
(9, 'AB+'),
(10, 'AB-'),
(11, 'O+'),
(12, 'O-'),
(13, 'TIDAK TAHU');

-- --------------------------------------------------------

--
-- Table structure for table `ref_ijazah_tertinggi`
--

CREATE TABLE `ref_ijazah_tertinggi` (
  `id_ijazah_tertinggi` int(1) NOT NULL,
  `keterangan_ijazah_tertinggi` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ref_ijazah_tertinggi`
--

INSERT INTO `ref_ijazah_tertinggi` (`id_ijazah_tertinggi`, `keterangan_ijazah_tertinggi`) VALUES
(0, 'Tidak punya ijazah\r'),
(1, 'SD/sederajat\r'),
(2, 'SMP/sederajat\r'),
(3, 'SMA/sederajat\r'),
(4, 'D1 / D2 / D3\r'),
(5, 'D4 / S1\r'),
(6, 'S2 / S3');

-- --------------------------------------------------------

--
-- Table structure for table `ref_jenis_pekerjaan`
--

CREATE TABLE `ref_jenis_pekerjaan` (
  `id_jenis_pekerjaan` int(2) NOT NULL,
  `keterangan_jenis_pekerjaan` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ref_jenis_pekerjaan`
--

INSERT INTO `ref_jenis_pekerjaan` (`id_jenis_pekerjaan`, `keterangan_jenis_pekerjaan`) VALUES
(8, 'PERDAGANGAN'),
(7, 'KEPOLISIAN RI'),
(6, 'TENTARA NASIONAL INDONESIA'),
(5, 'PEGAWAI NEGERI SIPIL (PNS)'),
(4, 'PENSIUNAN'),
(3, 'PELAJAR/MAHASISWA'),
(2, 'MENGATUR RUMAH TANGGA'),
(1, 'BELUM/TIDAK BEKERJA'),
(9, 'PETANI/PEKEBUN'),
(10, 'PETERNAK'),
(11, 'NELAYAN/PERIKANAN'),
(12, 'INDUSTRI'),
(13, 'KONSTRUKSI'),
(14, 'TRANSPORTASI'),
(15, 'KARYAWAN SWASTA'),
(16, 'KARYAWAN BUMN'),
(17, 'KARYAWAN BUMD'),
(18, 'KARYAWAN HONORER'),
(19, 'BURUH HARIAN LEPAS'),
(20, 'BURUH TANI/PERKEBUNAN'),
(21, 'BURUH NELAYAN/PERIKANAN'),
(22, 'BURUH PETERNAKAN'),
(23, 'PEMBANTU RUMAH TANGGA'),
(24, 'TUKANG CUKUR'),
(25, 'TUKANG LISTRIK'),
(26, 'TUKANG BATU'),
(27, 'TUKANG KAYU'),
(28, 'TUKANG SOL SEPATU'),
(29, 'TUKANG LAS/PANDAI BESI'),
(30, 'TUKANG JAHIT'),
(31, 'TUKANG GIGI'),
(32, 'PENATA RIAS'),
(33, 'PENATA BUSANA'),
(34, 'PENATA RAMBUT'),
(35, 'MEKANIK'),
(36, 'SENIMAN'),
(37, 'TABIB'),
(38, 'PARAJI'),
(39, 'PERANCANG BUSANA'),
(40, 'PENTERJEMAH'),
(41, 'IMAM MESJID'),
(42, 'PENDETA'),
(43, 'PASTOR'),
(44, 'WARTAWAN'),
(45, 'USTADZ/MUBALIGH'),
(46, 'JURU MASAK'),
(47, 'PROMOTOR ACARA'),
(48, 'ANGGOTA DPR-RI'),
(49, 'ANGGOTA DPD'),
(50, 'ANGGOTA BPK'),
(51, 'PRESIDEN'),
(52, 'WAKIL PRESIDEN'),
(53, 'ANGGOTA MAHKAMAH KONSTITUSI'),
(54, 'ANGGOTA KABINET/KEMENTERIAN'),
(55, 'DUTA BESAR'),
(56, 'GUBERNUR'),
(57, 'WAKIL GUBERNUR'),
(58, 'BUPATI'),
(59, 'WAKIL BUPATI'),
(60, 'WALIKOTA'),
(61, 'WAKIL WALIKOTA'),
(62, 'ANGGOTA DPRD PROVINSI'),
(63, 'ANGGOTA DPRD KABUPATEN/KOTA'),
(64, 'DOSEN'),
(65, 'GURU'),
(66, 'PILOT'),
(67, 'PENGACARA'),
(68, 'NOTARIS'),
(69, 'ARSITEK'),
(70, 'AKUNTAN'),
(71, 'KONSULTAN'),
(72, 'DOKTER'),
(73, 'BIDAN'),
(74, 'PERAWAT'),
(75, 'APOTEKER'),
(76, 'PSIKIATER/PSIKOLOG'),
(77, 'PENYIAR TELEVISI'),
(78, 'PENYIAR RADIO'),
(79, 'PELAUT'),
(80, 'PENELITI'),
(81, 'SOPIR'),
(82, 'PIALANG'),
(83, 'PARANORMAL'),
(84, 'PEDAGANG'),
(85, 'PERANGKAT DESA'),
(86, 'KEPALA DESA'),
(87, 'BIARAWATI'),
(88, 'WIRASWASTA'),
(89, 'LAINNYA');

-- --------------------------------------------------------

--
-- Table structure for table `ref_jenis_surat_pelayanan`
--

CREATE TABLE `ref_jenis_surat_pelayanan` (
  `id_jenis_surat_pelayanan` int(2) UNSIGNED NOT NULL,
  `nama_jenis_surat_pelayanan` varchar(100) DEFAULT NULL,
  `template_surat_pelayanan` text DEFAULT NULL,
  `keterangan_tambahan` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ref_jenis_surat_pelayanan`
--

INSERT INTO `ref_jenis_surat_pelayanan` (`id_jenis_surat_pelayanan`, `nama_jenis_surat_pelayanan`, `template_surat_pelayanan`, `keterangan_tambahan`) VALUES
(1, 'Surat Keterangan Lokasi Usaha', 'Pemerintah Kota Balikpapan - \r\nKecamatan Balikpapan Kota - \r\nKelurahan Telaga Sari - \r\n[ SURAT KETERANGAN LOKASI USAHA ]', NULL),
(2, 'Surat Keterangan Berpenghasilan Tidak Tetap', 'Pemerintah Kota Balikpapan - \r\nKecamatan Balikpapan Kota - \r\nKelurahan Telaga Sari - \r\n[ SURAT KETERANGAN BERPENGHASILAN TIDAK TETAP ]', NULL),
(3, 'Surat Keterangan Belum Pernah Menikah', 'Pemerintah Kota Balikpapan - \r\nKecamatan Balikpapan Kota - \r\nKelurahan Telaga Sari - \r\n[ SURAT KETERANGAN BELUM PERNAH MENIKAH ]', NULL),
(4, 'Surat Keterangan Bertempat Tinggal', 'Pemerintah Kota Balikpapan - \r\nKecamatan Balikpapan Kota - \r\nKelurahan Telaga Sari - \r\n[ SURAT KETERANGAN BERTEMPAT TINGGAL ]', NULL),
(5, 'Surat Kuasa Ahli Waris', 'Pemerintah Kota Balikpapan - \r\nKecamatan Balikpapan Kota - \r\nKelurahan Telaga Sari - \r\n[ SURAT KETERANGAN AHLI WARIS ]', NULL),
(6, 'Surat Keterangan Janda / Duda', 'Pemerintah Kota Balikpapan - \r\nKecamatan Balikpapan Kota - \r\nKelurahan Telaga Sari - \r\n[ SURAT KETERANGAN JANDA / DUDA ]', NULL),
(7, 'Surat Keterangan Domisili (Bagi Warga ber KTP Setempat)', 'Pemerintah Kota Balikpapan - \r\nKecamatan Balikpapan Kota - \r\nKelurahan Telaga Sari - \r\n[ SURAT KETERANGAN DOMISILI ]', NULL),
(8, 'Surat Pengantar Nikah', 'Pemerintah Kota Balikpapan - \r\nKecamatan Balikpapan Kota - \r\nKelurahan Telaga Sari \r\n[ SURAT PENGANTAR NIKAH ] \r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_status_kawin`
--

CREATE TABLE `ref_status_kawin` (
  `id_status_kawin` int(1) NOT NULL,
  `keterangan_status_kawin` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

--
-- Dumping data for table `ref_status_kawin`
--

INSERT INTO `ref_status_kawin` (`id_status_kawin`, `keterangan_status_kawin`) VALUES
(1, 'BELUM KAWIN'),
(2, 'KAWIN'),
(3, 'CERAI HIDUP'),
(4, 'CERAI MATI');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0CuFO6sxqzEQxtPtAqBAcy37uOxiLVh1YhIVDwfA', NULL, '54.244.187.23', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVAxTGYydTNITHBVYmpMWFFmcEQ5NzdWek94T3BHcEJnUk1tbTVxayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628163395),
('1kmGucI5pft6CPedV4fNw6cUtBkuHvupTWa0c8e4', NULL, '36.152.143.154', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaWVjU1k2Wm12R3RReWhqMFJTUU83VzdJNXVvc3FXOGxCUk9ERWpJaiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628322959),
('1UIyImtB25o6X7YVlpKirNXFBMNEgxLQy5pxpThF', NULL, '34.220.98.45', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEc5Mmp6VGR1cTYyeThBZ1lMaFc2TFNTZjdtZGIyMllzcVo3WWRaYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628162259),
('3bEw4OFAhVxwjzHSfhs5t09bpLpkDhl2pQQzg7k6', NULL, '45.129.18.238', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.47 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiampKZTBWWlI0RTZWMFdwajdNUzdPMEx4bGt6ODFDUG8zQWhuNVVMaiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1627937501),
('4TQb8B8zQAFNfZZM0L6TiFgTAg4eukJSWeB1SnvO', NULL, '69.160.160.51', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; Nicecrawler/1.1; +http://www.nicecrawler.com/) Chrome/90.0.4430.97 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTUlFaFVwa28yRDFRQmtNRjBLRWtpZFZvOTMwQjkyQWJCTnFrbHNnNyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628068489),
('51OnZlQwZsKoPd3OMQenG0gbdN6EXSwkg5DWPMGx', NULL, '103.144.167.68', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQlB1MXo3SFNOMFVwUDJZSlhpUjQ1NHk5Z2N3YkZPdzlmTGZhbFZsMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628057789),
('5lhplVbv9LD8GXmth9JtUmWqPj4h58m0MuBAi0RF', NULL, '54.213.244.127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiREVSb1o0cW52WUR2dEphTkJqRmpIa2dWWG8xRDA2N0txbUVoYjJjUiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628161985),
('6AcorXgAy00uA3INEDkwmKasszFXylBmzxxrzza8', NULL, '103.144.167.68', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYmd2ZW1jZnRQaVdaVWtZTTBTdU1Da0JUNmhMSDVOYjhwNmcxNXhpMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9fQ==', 1627793371),
('6K9N2TdjE6wOBy4ZytdWC66xTEylJt15FNuY6taV', NULL, '36.152.143.154', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibE5wZVFjRmpHdU5ZYzJ0S0dMZjhhMkNqTnJEOG1WbTFNWk83RFNFVCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627969129),
('75WNpNPRExbojsWLhtujFWkTnTLzRuh04MoYIKkg', NULL, '78.46.178.141', 'Apache/2.4.34 (Ubuntu) OpenSSL/1.1.1 (internal dummy connection)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMXRpaXBQVmxiUkNWUzgzR2lqNlNkVlU3S2NETFV5MDZkOFdDZ25hQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628389409),
('7bhS8RK44fCqymmGXUs5IjHHrg1b6XcGfUvbv6iC', NULL, '69.160.160.51', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; Nicecrawler/1.1; +http://www.nicecrawler.com/) Chrome/90.0.4430.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0NDd3g0UWhxSG94d2JvemJiY3NhQ3lMNnJ0ZDdTRGxEa0ViSGpRRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628068491),
('87Ft3V8d33WZQMroitBtisyQyFIenWnhO3p2oWCP', NULL, '92.204.174.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOE5rVEJuaFlubmp2VzBZNWFFMktabmlHd2xVTUdCWllld093QTFCSyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627879333),
('8mQFgYjAShfDunlWt9IqdU7q3ej6NrjoUryB8BwT', NULL, '34.221.2.74', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOFFhRFZTTVhqaVhZSUYwSFByeGJhVHh5czcxNVREN0NnSFo2SVBiMCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628421846),
('8mYhdnVceFirjPVpUOHIqCUn0LDcgEyigVgm8B85', 3, '114.122.228.159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZFd4VjFFUmw3OGl2N2FrODRyVDVtaTA3YW5DQzBQeVBtNElhZVJSbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL21hc3Rlci11c2VyIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mzt9', 1627713315),
('aq9wedTlE2vmvLLPh6g604eiK2xWfKvZ0jwQkZKK', NULL, '66.249.73.120', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia1BnY2k2V1VYUjd4Yk9JN3FvZkVPREtLamVob3BGNno2bEtiZHR5UCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628479530),
('aZVJb9rx9Q3YnDum3znYb0RUjajjz6KwfEFZqFvl', NULL, '66.249.73.122', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVFVYZVRvZlB1ZTRuNHpwbEd1S1BVRkRpNG80alN5Z0RFeEZrSEdTbCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628474703),
('bTUPhgvDOwBwqeMiOUz7KcylLiv5ESKCqqTukPhf', NULL, '34.217.90.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZE16NDJpeW5selVSdDdoR1JUM2x5WlhpSDVBQmlXaGIwSDl1NUZRbyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628075631),
('Cx7TjWhjgjfnkO5DjTBI2uBdiDdFZrd1I4s9qcdD', NULL, '66.249.79.103', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieEl3OUlCdWI5c3hiZzJwMkpOQ3c2M2R2MjlPZ3VodUtoNkVDUUxHTSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovL3d3dy5zaWFnZW50YWxhcy5jb20iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cDovL3d3dy5zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628192098),
('dkIdeTgJ6m91gK2RECVetiAjWTtQCp5NuYi7vKn7', NULL, '52.27.63.252', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmFoS1Q3OFlYZFM1SmhCbmpybzBOWnh5Y01IMzF1N1UxTmNMdER6YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1627990195),
('EGEvxS6zCfIskBh8qrBIcYZ6yKydikoEDX1zwRUG', NULL, '103.144.167.68', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTkp0M2ZtT3d4d3pwdGdlMDlWM2dKUEJucVI4ZGRXVzZjRWpzeWMxeCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627950199),
('ejeAN1IEZkFhKAbMyUq3u66vNZqdpnUQyS6iOD26', NULL, '34.221.156.157', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUh0eDJPS0hYdmw0OTl0blp4U3B5N3ZyTVNiSHgzOGl2WWdWQ2VQbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628162201),
('F3DQFVTo9V0J7xd3nkfF0i7BgGC7LqCfauXrjpDh', NULL, '18.237.25.37', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnJzUnpXeDZTemNESmgxVExtQktTWlhESnJUOTlPcUVqR0tpVXZYcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628336712),
('g2qLbNnofaQNCjGFU714984YU3wSsRdYx9Ri8e0R', NULL, '34.221.156.157', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWmFyYTZ6blNvRXcxM1lFQ3pNWEkzc3Vqd3RhSjVEdThKa2Q0dTlmWCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628162194),
('G6p642ccbroGLZVqtCd6RfgNSGOIndJknkr7X9Gd', NULL, '54.36.148.103', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQU9VTWRXT0JJTlE1eTZNSjhyZmVLbVkyTFpaWEQxV3ByMHoza1lGZiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovL3d3dy5zaWFnZW50YWxhcy5jb20iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNjoiaHR0cDovL3d3dy5zaWFnZW50YWxhcy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1627783063),
('gk2FruUW3sCAHvrnBeRFsnc37jTSCqqSMb5YR6dm', NULL, '54.149.213.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTXJWN3NudUVxVk9FdTVSN29wUEtwbzdtcUM2SGlna1hkeHNrREk5dCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627989430),
('glUJTXhAaWu2cXybDaUYkySD4ByIjAJur8uRPXmt', NULL, '81.71.118.139', 'Mozilla/5.0 (compatible; ThinkBot/0.3.0; +In_the_test_phase,_if_the_spider_brings_you_trouble,_please_add_our_IP_to_the_blacklist._Thank_you.)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZjBlZ2Fhbmo5WTlOV0JKZkpFbE5hc3dtMTJhTFJGM0NsQ3NCc1I2VCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628041273),
('HP2wydOXjxWnD5DWEM6yrEIgwfUEfgPFNT9JXjaX', NULL, '59.42.83.117', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMFV0bFk1anhFYkwxdzhFVTl5OGhXVEowaVRoaTFQYllvekVlRmI0ZSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627710931),
('hpuEYoE9UEHBrGJa5JyFY5eYzCG3ZRL7vG3IIdQS', NULL, '221.6.38.170', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUkpyNkc5bXBxR0R4aXVxcXlLdUhTcFgwZ2FVN3NWS1VrMEdWbW5haSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628485730),
('iBz9V8GpWk7HVDmUUvkypyqCd6jn8YXj3Pp6xiRs', NULL, '67.203.6.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlI0cmM4c2c3MGkzanRscDRkak04bHdqdlFGZ29hUDZCUnpzcFBzRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628455502),
('JDFypfBw6AOXEHttpVDWdN4bcZjV4EErRQDeuN6j', NULL, '103.144.167.68', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOXU2WkVuZ0E1b2xaV09pbUt5N0s1U2ZyR1J5Rm1sSmNWVUNiM21BNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9fQ==', 1627954263),
('jtSnHnFu3yYDNtHeqkeNWQkwrbNWwMUaFVQKu9iB', NULL, '34.220.98.45', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTjVWV2RYNm95TmZqMGc4ME1PbHZiMEN3aXZGa0VxRXNxeVdSR2pRQSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628162259),
('jZolqlDEMW0TWRW9506U9EAabJrXTAbe16qlErF3', NULL, '54.244.187.23', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUVlSUHhjbTluVEM0MkZQbzBxREo0SWViejVXbDdaRWJRUWg5dHZUayI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628163388),
('l0D8ffVKZXRIrXzIO7a4yh7rhdC6JEGs4R0ZxwHh', NULL, '34.222.147.128', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSHNSaXZyNVV3S09OdnhLMktOQkt3TzNXQ1NoaG1xNHBXNXhGMGw5RiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628423275),
('mEOoDZts8sL7In6zSftOJX4jlt9GC6dskZ7UpUoy', NULL, '52.27.63.252', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNEx1eWxKMkZCSDdjOGpEU0hDQ1g5OE5lV1JtVnFmbzhudUVOT3hqdSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627990191),
('MiwhSvzRE5iBB2qEjCiqJNy5gSZ0Ejh7IEm939dl', NULL, '31.180.227.184', 'Xenu Link Sleuth/1.3.8', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXgxZUhyamRDcjU4VnlmZGRwUHh6aGY3UWIwdTg0aGQ2TXlSWW5QdiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovL3d3dy5zaWFnZW50YWxhcy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628477181),
('nESqiUuqi0jaL3YeP83k0kdCl1b3tYmdt4uS7spF', NULL, '34.222.147.128', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDVweWEySDRKeExiczJ6R0xlWnZNbDNOZ1VMaVN6TldFT0VpeUg2NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628423280),
('NeTMNfONAeuhTWe7dAWbwvelAGavWHkH5ygMIAdT', NULL, '54.186.250.173', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRjhzcW90NWdWdDA1WmlpZXlaSllUZURiQzQ2VlFGVkJGbGIwcUtFeSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628423362),
('nGVIlbgr78qDjrhW8r4Kz9KZJOMS5MrPbrPMIgpM', NULL, '111.92.162.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ1UzQlJGYlN5NnpWU25KRmVCejFXd2Q1bVR4YXBWNTYyN3c2UTE4dyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627950608),
('nhMFJXeo9UumCPunblM1mBXKoqP4dkFDmDly5sBl', NULL, '54.208.201.249', 'Who.is Bot', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUtGTEZKNUFFekNaTFJHRzd3YkwzcTdMZTh1YjJNeDZpcXZPdlo0YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly93d3cuc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627790750),
('od4BpUCWmMAhPgK54iau2TFharCum1Uj99mt9dWR', NULL, '69.160.160.51', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/78.0.3904.70 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNkZxZ0JBd2Z4RER0anpkNlBlbzRwMHBCSlBBTmVvVHlIY1dyVUphbiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628068493),
('oeYKJgVJYMtgZIPys6Ponnh7cb4oexaCzruJkxYt', NULL, '36.152.143.154', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieGMwUTVnVTJDaUdhWGpvNWk3NG01WEtKamdiMTFabm5nQ1BqVU5IcCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627969151),
('oL7LG5qNxtTAfzv5nO56ToGKCyc5eazAJSMGzE6H', NULL, '66.249.73.120', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiamUwWTBsMXFOaERvZE10QXBvMGQ5cHN3Mk9VUDdoOFJ3NWhROTVkRyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628479305),
('OMcCFLi34QIpehFCbdXsaVqH8DQareL4IiTkDTNU', NULL, '123.233.115.26', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMlVBMklyTXFXRTdsWWFoZnp0SmpZbWZYbDN6SlNGZzgwRnFSdGlwOSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628451437),
('OU5bJR8loAOeiSsnAuQosFPE1gXlGr37rL1bL2nv', NULL, '204.101.161.19', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/92.0.4515.107 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM2phWE1hWUVjbUdIVHZTbDlteGNoWGxlVmpxcWt3WjR0RlNqTHU0MyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627863515),
('oxTXrCzzgn1oyv6B7ekaS9Npr2DT2zD1FyGb4IOE', NULL, '45.55.52.222', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlJlMFY2N3BiejVSR2Q1VmN2dXdsWUVLOXZ2UGRqc2ZtTTZSVUpRRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly93d3cuc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628009878),
('P0XjeENspXDvRh0vzStwdZNKq8sQvD2Zla01nlnt', NULL, '54.190.40.126', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSDRIV2hoYjBLWFZ5eUY1VW5UM1k0RGlpeGh6cFFQRmI3bExXeVlBbiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627816262),
('pdjP81hAlyQGtxaSiEsxPKG2RAUPq5RVWmx4IGTy', NULL, '54.244.69.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMFlUcndQaWx1cEVSUFVhNkM4aGVpY040UFFQR2F4VkpiR1lOV0RMeSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628248873),
('pnFJhqKgkRGCVXB6HruB3NOhXSGjLyBwN6dL7djs', NULL, '34.216.225.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNTNjRWMwdTNFN09wVmJhT0xDS0dWM0RCZ3dxYXZvNmRTNW9rdTB4ciI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628336723),
('PuhOXPpTCApZQGN1D7Bp59TOxaGXv7STnXK3yltF', NULL, '81.71.118.139', 'Mozilla/5.0 (compatible; ThinkBot/0.3.0; +In_the_test_phase,_if_the_spider_brings_you_trouble,_please_add_our_IP_to_the_blacklist._Thank_you.)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUhoYk5VMXU3S2ttenhtSXdpNTc4aHNhcUlFNkpXaWQzYmdYT2NFNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628041277),
('pVi5asrBgf76nEzWwjuNbHa6OajLX65mxCxKDmUO', NULL, '18.237.129.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOWJ5ZGFHU1RKYmdkcnVGOUZvb0lDdEExTFNHSTNHckhsM3dVSmZLSSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627730436),
('qe42IYks5XcSvmsxHYtD33960oUlgTk5EhT9bJpZ', NULL, '54.36.148.134', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia0lDdWc2YnlLbjE2amN0RkU1RjNpOWxrTndUbEh5aHFOWThLTVd1YyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627772194),
('qY75QTzP57d4z3EgJBYZqgmnvbuzPHIaYdpmXdsp', NULL, '67.203.6.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid0M4d3p1aExMUVAydGJtckVyU1R1RzBuQzNLZUJ3bXNCc0tiRG1oUSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628455502),
('RMtX9KUZf4pSGf4T4k1QJqyoCydPVngKX0NEoEJE', NULL, '45.55.52.222', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibVBtdnZwdkZPVmMyQklIalFwUDZKWlFCc1ZPckxSMkNXMlRwcG1FOCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovL3d3dy5zaWFnZW50YWxhcy5jb20iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNjoiaHR0cDovL3d3dy5zaWFnZW50YWxhcy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628009874),
('RuVuCTtfKpODQ3KNODVbVElH4BAaYzyZkY2ffI6c', NULL, '18.237.25.37', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaWZOQjhiNXROZUhYM1piYmIyY3RnZXBIc0pkYzU2MldYUGdMdHVKTiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628336707),
('SscEsroR5631VhXk7KUsmDADX8aWlS8ybfMIXdPc', NULL, '36.152.143.154', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNXY0bG03azVMTHgxUXRadkdsUlpnQjlGUVhWdDhDRmJSZE56ejhVOSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628322969),
('SxjumTOSAHnFJe9GnFJcXz67pKj2yMRMjtQCL0HM', NULL, '123.233.115.26', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZldFejFOT2l2Q3ZhZWRySWpqcExiZFdNZTBRSDZFSWFGYkpqbDU5ciI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628057406),
('tcbfbJsvHUxi7pCJ4sHyBH11lYExQhHhxe85AN8e', NULL, '36.152.143.154', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieFViZ0NQSWwwQkdOSHF0OHBTNGFmZVdPTUtqWmhkelJROVNkcGNNSSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628376805),
('TDxXlDZuxC9z66T46iMAbCabMhTDRfKO0fqljk30', NULL, '103.144.167.68', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTTBsR0RJZGtwRFJZek1idE5FVjNIZ0YzRURBdG5aSFJKd2ZIWXdXbiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627793910),
('uEaWXS9ZteZuGytunyuYmB8lUPuGHxdeRTg25E7m', NULL, '36.152.143.154', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNU82THplc0tYT0NIYWNSemllZ2lBT0tRc1Ntb3R1VjNmNkl2dkVuWCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628376815),
('UF3IzROUhXVdV2rJzg0cWiulif8wrtSm2g0yxuje', NULL, '66.249.73.122', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia3h0emFzV1Y2UGJRMzkyRDc4M2VTMWlqcm1iUVlOMlpEVDFodHZpMSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628474918),
('UGKaojQIQ1MySBrQCymwr57pqhjUN9acppf0bIEQ', NULL, '114.122.233.1', 'Mozilla/5.0 (Linux; Android 10; M2010J19SG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.115 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzd0N1RFS1JNOXRTdVlrenN3cEQ0cUZPdnZ4ajZsekVUdEl0eHNnQyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovL3d3dy5zaWFnZW50YWxhcy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1627790713),
('UIPHpc2SvqwAdNVQoxZ3Fl6oPxxtoHIdFQ5ynLWn', NULL, '103.144.167.68', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRGR6Ym55N0RWUEVMdkdBMkJsUzlKSGp0YnZsZHFieEtHckF3UUNCMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9fQ==', 1628132607),
('v4OFhDoD8oorLzDcGFjRUF5zzSmt0N3wwV2gsIwZ', NULL, '54.190.40.126', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzBHdXhOWEdrUG5zWVRVeHNWREpIRHlEdHR3cTdBQ3Y1emJnbVZCVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1627816268),
('wHGrA4BepniHnrfcHLGaRm0Wlx6gnXNC9MVRV5c9', NULL, '66.249.79.103', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY1BrN2hRZTh4UWtsSUhtb3NqcHVOUXp0T1lDZTFSdWE3eUlvS2V5VyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovL3d3dy5zaWFnZW50YWxhcy5jb20iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cDovL3d3dy5zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628191904),
('WZTlyMMAIQTVAPrsjxc2dPuyYqNqhuseGD0fh36b', NULL, '221.6.38.170', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV0RDQ1ExZEdSeDB0ODM3eDlUVEwzczVRU3BHdzU4ZlJpSmczbThCNSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628485721),
('XDIhgBbr4khOE2f4b2XBsFvvtpR4u5ineWGKlPEH', NULL, '18.236.147.154', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR1dhWXB2SkxlZjgzOHpReGRpVmRyb0VkaVR3QXFGUWdGOVZ2MlFpQyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627817725),
('xgZVr95cBXrcFxVGKu0G6PAe4hl016B3kMUANrKL', NULL, '54.186.250.173', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGtyT3U4OTBYTmxFZWtETE5pMEZyYWtiU0t0OHV1R2VwVHZ0NnhBViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zaWFnZW50YWxhcy5jb20vbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628423362),
('XyjUEDAhpBqgfAPoXkxxPoG4t4oPaV432bh53XAz', NULL, '54.208.201.249', 'Who.is Bot', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR2k4SjlaMG9sYW51VUlUem5KRWg0bHYxSDV6YmNmM2xDZnU2SVdsbCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovL3d3dy5zaWFnZW50YWxhcy5jb20iO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNjoiaHR0cDovL3d3dy5zaWFnZW50YWxhcy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1627790750),
('yeLAayJCI23n4QxmuTmWg1FBZUBNMbiV4cHTe2nd', NULL, '35.160.17.31', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN09FZjRERktWREpZeTJlaVd5eUlXeEtPc2NTRFZ3ZndIUkVydDJMSSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIyOiJodHRwOi8vc2lhZ2VudGFsYXMuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628336804),
('YgepenbEpMgR8vZndAKgsqxYURXFd8ICuQuXhprm', NULL, '114.122.233.1', 'Mozilla/5.0 (Linux; Android 10; M2010J19SG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.115 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRzljbGNjSUpHMG5uUzlmTFhXaTJaVmJndFRsY2VjblFlM0kzRHhRNCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627790700),
('yHMYY2NC633BW5CSCnjAVOzaRUZdCopJj9AYoUAl', NULL, '34.220.180.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMFY0YWNtSVN3ajRZMlA5TTM4VWRUaXl3Qmk1SmpaQTdTbG1lRVlpRiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627816022),
('ZUZjVUUNB3hanV5jWtMJHKp6aB7RpIV02gGuAVJX', NULL, '45.129.18.45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.47 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkpwbVdyV3NuWWxGRlhGS1pjUkdRc2RBQUdCdEhUa3ZId3hLdWRuWCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628477385),
('zvIqwhb2aJgKWNs2EkRXwnQ8BalaN2zC8NwLaDVR', NULL, '34.221.11.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN0dkR0RPaWZ3MUVLVkJZTllXamFWenN0Wk1lY2x3ZXplaVRRZDhCQiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMjoiaHR0cDovL3NpYWdlbnRhbGFzLmNvbSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vc2lhZ2VudGFsYXMuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1627903507);

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id_surat_keluar` int(11) NOT NULL,
  `status_final` tinyint(1) DEFAULT NULL,
  `nomor_surat` varchar(225) DEFAULT NULL,
  `nomor_surat_rujukan` varchar(225) DEFAULT NULL,
  `perihal_surat` varchar(100) DEFAULT NULL,
  `tanggal_surat` date DEFAULT NULL,
  `tujuan_surat` varchar(225) DEFAULT NULL,
  `tembusan_surat` varchar(225) DEFAULT NULL,
  `klasifikasi_surat` tinyint(1) DEFAULT NULL,
  `keterangan_lain` varchar(225) DEFAULT NULL,
  `ringkasan_surat` varchar(225) DEFAULT NULL,
  `nama_pejabat_ttd` varchar(50) DEFAULT NULL,
  `isi_surat` text DEFAULT NULL,
  `jumlah_file_scan` tinyint(225) DEFAULT NULL,
  `lampiran` varchar(225) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`id_surat_keluar`, `status_final`, `nomor_surat`, `nomor_surat_rujukan`, `perihal_surat`, `tanggal_surat`, `tujuan_surat`, `tembusan_surat`, `klasifikasi_surat`, `keterangan_lain`, `ringkasan_surat`, `nama_pejabat_ttd`, `isi_surat`, `jumlah_file_scan`, `lampiran`, `created_at`, `updated_at`) VALUES
(8, NULL, '800/010/TgS', NULL, 'Surat Pengantar Rekapitulasi Absensi Bln Maret 2021', '2021-04-01', 'Kepala BKPSDM Kota BPP,Kecamatan Bpp Kota', NULL, NULL, NULL, 'Surat Pengantar Rekapitulasi Absensi', 'Arini  Amir - Lurah', 'Rekapitulasi Absensi', NULL, 'suratkeluar_1621835828_010.pdf', '2021-05-24 02:25:11', '2021-05-24 05:57:08'),
(9, NULL, '400/011/TgS', NULL, 'Undangan Lomba Bayi dan Balita Sehat Tk. Kel. Telaga Sari', '2021-04-05', 'Peserta Lomba Bayi Balita', NULL, NULL, NULL, 'Lomba Bayi Balita', 'Arini Amir - Lurah', 'Lomba Bayi Balita', NULL, NULL, '2021-05-24 02:27:11', '2021-05-24 02:27:11'),
(10, NULL, '300/013/TgS', NULL, 'Penebangan Pohon', '2021-04-08', 'Dinas BPMPT', NULL, NULL, NULL, 'Penebangan Pohon', 'Arini Amir - Lurah', 'Penebangan Pohon', NULL, 'suratkeluar_1621835886_013.pdf', '2021-05-24 02:43:58', '2021-05-26 03:41:21'),
(11, NULL, '300/016/TgS', NULL, 'Permohonan Penebangan Pohon/Pemangkasan Pohon', '2021-04-09', 'Dinas BPMPT Bpp & Dinas DLH Kota Bpp', NULL, NULL, NULL, 'Permohonan', 'Arini Amir - Lurah', 'Pemangkasan Surat', NULL, 'suratkeluar_1621836140_016.pdf', '2021-05-24 02:48:36', '2021-05-26 03:42:00'),
(12, NULL, '300/017/TgS', NULL, 'Permohonan Pemotongan Pohon/Pemangkasan Pohon Rt.38', '2021-04-19', 'Dinas BPMPT Kota Balikpapan', NULL, NULL, NULL, 'Permohonan', 'Arini Amir - Lurah', 'Pemangkasan Pohon Rt.38', NULL, 'suratkeluar_1621836173_017.pdf', '2021-05-24 02:51:10', '2021-05-26 03:42:31'),
(13, NULL, '466.6/019/TgS', NULL, 'Permohonan Bantuan Dana', '2021-04-19', 'Ketua BAZNAS Kota Balikpapan', NULL, NULL, NULL, 'Permohonan', 'Arini Amir - Lurah', 'Bantuan Dana', NULL, 'suratkeluar_1621836193_019.pdf', '2021-05-24 02:53:01', '2021-05-26 03:43:12'),
(14, NULL, '300/020/TgS', NULL, 'Laporan Usulan Drainase/Siring Rt.45', '2021-04-20', 'Walikota Cq.Kabag Pemerintahan Setdakot Balikpapan', NULL, NULL, NULL, 'Laporan Usulan', 'Arini Amir - Lurah', 'Laporan usulan Drainase/siring Rt.45', NULL, 'suratkeluar_1621836218_020.pdf', '2021-05-24 02:56:39', '2021-05-26 03:43:44'),
(15, NULL, '300/021/TgS', NULL, 'Permohonan Bantuan', '2021-04-27', 'Head Of Comm Relotions&CID PHKT', NULL, NULL, NULL, 'Permohonan', 'Arini Amir - Lurah', 'Permohonan Bantuan', NULL, 'suratkeluar_1621836245_021.pdf', '2021-05-24 02:58:47', '2021-05-26 03:44:35'),
(16, NULL, '300/022/TgS', NULL, 'Permohonan Disinfektan', '2021-04-27', 'Kepala DKK Kota Balikpapan', NULL, NULL, NULL, 'Permohonan', 'Arini Amir - Lurah', 'Permohonan Disinfektan', NULL, 'suratkeluar_1621836264_022.pdf', '2021-05-24 03:01:05', '2021-06-02 01:20:32'),
(17, NULL, '300/023/TgS', NULL, 'Surat Pernyataan Tanggungjawab Mutlak', '2021-04-29', 'Dinas Sosial Kota Balikpapan', NULL, NULL, NULL, 'Surat Pernyataan', 'Arini Amir - Lurah', 'Surat Pernyataan tanggungjawab mutlak', NULL, 'suratkeluar_1621836325_023.pdf', '2021-05-24 03:03:12', '2021-05-26 03:40:18'),
(18, NULL, '100/024/TgS', NULL, 'Pelaksanaan Pemilihan Rt.31', '2021-05-03', 'Ketua Rt.31 Kel,Telagasari', NULL, NULL, NULL, 'Pelaksanaan  Pemilihan', 'Arini Amir - Lurah', 'Pel;aksanaan Pemilihan Rt.31', NULL, 'suratkeluar_1622685463_024.pdf', '2021-05-24 03:07:27', '2021-06-03 01:57:43'),
(19, NULL, '800/025/TgS', NULL, 'Surat Pengantar Rekapitulasi Absensi Bln April 2021', '2021-05-03', 'Kepala BKPSDM Kota BPP,Kecamatan Bpp Kota', NULL, NULL, NULL, 'Surat Pengantar', 'Arini Amir - Lurah', 'Rekapitulasi Absensi Bln April 2021', NULL, 'suratkeluar_1622685451_025.pdf', '2021-05-24 03:09:09', '2021-06-03 01:57:31'),
(20, NULL, '141.2/12/Tgs', NULL, 'Mohon Pembuatan SK Pengurus LPM Kelurahan Telaga Sari', '2021-04-05', 'Camat Balikpapan Kota', NULL, NULL, NULL, 'Mohon Penerbitan SK Kepengurusan LPM Kelurahan Telaga Sari periode 2021 s/d 2024', NULL, 'Mohon Penerbitan SK Kepengurusan LPM Kelurahan Telaga Sari periode 2021 s/d 2024', NULL, 'suratkeluar_1622596491_012.pdf', '2021-06-02 01:08:25', '2021-06-02 01:16:26'),
(21, NULL, '300/014/TgS', NULL, 'Laporan Usulan Siring/Turap Rt.22 Kel,Telagasari', '2021-04-08', 'Walikota Bpp,Cq.Kabag Pem.Setdakot Bpp', NULL, NULL, NULL, 'Usulan Siring/Turap Rt.22 Kel,Telagasari', 'Arini Amir, S.Sos', 'Usulan Siring/Turap Rt.22 Kel,Telagasari', NULL, NULL, '2021-06-03 01:39:37', '2021-06-03 01:39:56'),
(22, NULL, '300/015/TgS', NULL, 'Laporan Kejadian Bencana Rt.41', '2021-04-09', 'Walikota Bpp,Cq.Kabag Pem.Setdakot Bpp', NULL, NULL, NULL, 'Laporan Kejadian Bencana Rt.41', 'Arini Amir, S.Sos', 'Laporan Kejadian Bencana Rt.41', NULL, NULL, '2021-06-03 01:41:22', '2021-06-03 01:41:22'),
(23, NULL, '020/018/TgS', NULL, 'Mohon Perbaikan kendaraan dinas R4&R2 Kelurahan Telagasari', '2021-04-19', 'Camat Balikpapan Kota', NULL, NULL, NULL, 'Mohon Perbaikan kendaraan dinas R4&R2 Kelurahan Telagasari', 'Arini Amir, S.Sos', 'Mohon Perbaikan kendaraan dinas R4&R2 Kelurahan Telagasari', NULL, NULL, '2021-06-03 01:44:49', '2021-06-03 01:44:49'),
(24, NULL, '466.6/026/TgS', NULL, 'Mohon Bantuan Dana Zakat', '2021-05-05', 'Ketua BAZNAS Kota Balikpapan', NULL, NULL, NULL, 'Permohonan Bantuan melalui Dana Zakat', 'Arini Amir, S.Sos', 'Permohonan Bantuan melalui Dana Zakat untuk warga RT.08 yang kurang gizi', NULL, 'suratkeluar_1622685433_026.pdf', '2021-06-03 01:47:56', '2021-06-03 01:57:13'),
(25, NULL, '020/027/TgS', NULL, 'Mohon Perbaikan kendaraan dinas Lurah Telagasari', '2021-05-07', 'Camat Balikpapan Kota', NULL, NULL, NULL, 'Mohon Perbaikan kendaraan dinas Lurah Telagasari', 'Arini Amir, S.Sos', 'Mohon Perbaikan kendaraan dinas Lurah Telagasari', NULL, NULL, '2021-06-03 01:49:41', '2021-06-03 01:49:41'),
(26, NULL, '800/028/TgS', NULL, 'Mohon Bantuan Kotak Arsip', '2021-05-07', 'Kepala Disputakar Kota Balikpapan', NULL, NULL, NULL, 'Mohon Bantuan Kotak Arsip', 'Arini Amir, S.Sos', 'Mohon Bantuan Kotak Arsip', NULL, 'suratkeluar_1622685416_028.pdf', '2021-06-03 01:50:54', '2021-06-03 01:56:56'),
(27, NULL, '800/029/TgS', NULL, 'Laporan Pelaksanaan SE Wali Kota Balikpapan Nomor: 800/0289/Org pada Kelurahan Telaga Sari', '2021-05-24', 'Wali Kota Balikpapan c.q. Plt. Kepala BKPSDM Kota Balikpapan', NULL, NULL, NULL, 'Wali Kota Balikpapan c.q. Plt. Kepala BKPSDM Kota Balikpapan', 'Arini Amir, S.Sos', NULL, NULL, 'suratkeluar_1622685345_029.pdf', '2021-06-03 01:53:12', '2021-06-03 01:55:45'),
(28, NULL, '300/030/TgS', NULL, 'Kerja Bhakti Massal (KBM)', '2021-05-25', 'Ketua RT Se-Kelurahan Telaga Sari', NULL, NULL, NULL, 'Himbauan untuk melaksanakan Kerja Bhakti Massal (KBM)', 'Arini Amir, S.Sos', 'Himbauan untuk melaksanakan Kerja Bhakti Massal (KBM)', NULL, 'suratkeluar_1622685329_030-Kerja Bhakti Massal (KBM).pdf', '2021-06-03 01:55:11', '2021-06-03 01:55:29'),
(29, NULL, '800/031/2021', NULL, 'Rekapitulasi absensi bln Mei 2021 Kelurahan Tgs', '2021-06-02', 'Kepala BKPSDM& Kec.Bpp Kota', NULL, NULL, NULL, NULL, 'Lurah ( Arini Amir )', 'Daftar Hadir Bln Mei 2021', NULL, 'suratkeluar_1623026307_031.pdf', '2021-06-04 01:38:16', '2021-06-07 00:45:57'),
(30, NULL, '300/032/TgS', '028/RT.37/TGS/VI/2021', 'Laporan Kejadian Rawan Bencana di RT.37 Kel. Telaga Sari', '2021-06-14', 'Walikota Balikpapan Cq. Kabag Pemerintahan setdakota Balikpapan', 'Dinas PU, BPBD dan Bag Pembangunan Setdakot Balikpapan', NULL, NULL, 'Penanganan tanggap darurat bencana', 'Arini Amir, S.Sos', 'Usulan pembangunan siring untuk mengantisipasi pergeseran tanah', NULL, 'suratkeluar_1623654010_032-Lap-Bencana-rt37.pdf', '2021-06-14 06:54:51', '2021-06-14 07:00:15'),
(31, NULL, '300/035/Tgs', NULL, 'Pemindahan Lokasi Pekerjaan', '2021-06-28', 'Kepala Dinas PU Kota Balikpapan', '1.	Camat Balikpapan Kota  2.	CV. Ashgaf Engineering (Konsultan Perencana)', NULL, NULL, 'pekerjaan dipindahkan ke pekerjaan semenisasi jalan yang berada di RT. 25 Kel. Telaga Sari', 'Arini Amir, S.Sos', NULL, NULL, 'suratkeluar_1624862779_035-Pemindahan Lokasi DPU.pdf', '2021-06-28 06:45:57', '2021-06-28 06:46:19'),
(32, NULL, '400/034/TgS', NULL, 'Undangan Kegiatan Sosialisasi Peningkatan Kwalitas Rumah Tidak Layak Huni', '2021-06-15', 'Warga Calon Penerima Bantuan RTLH', NULL, NULL, NULL, 'Undangan Kegiatan Sosialisasi Peningkatan Kwalitas Rumah Tidak Layak Huni', 'Arini Amir, S.Sos', 'Kegiatan Sosialisasi Peningkatan Kwalitas Rumah Tidak Layak Huni', NULL, 'suratkeluar_1624863028_034-Sosialisasi RTLH.pdf', '2021-06-28 06:50:14', '2021-06-28 06:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat_masuk` int(11) NOT NULL,
  `nomor_surat` varchar(225) DEFAULT NULL,
  `perihal_surat` varchar(225) DEFAULT NULL,
  `tanggal_surat` date DEFAULT NULL,
  `tanggal_terima_surat` date DEFAULT NULL,
  `asal_surat` varchar(100) DEFAULT NULL,
  `nama_pejabat_penerima_disposisi` varchar(50) DEFAULT NULL,
  `status_disposisi` tinyint(1) DEFAULT NULL,
  `keterangan_pemberi_disposisi` varchar(225) DEFAULT NULL,
  `keterangan_penerima_disposisi` varchar(225) DEFAULT NULL,
  `ringkasan_surat` varchar(225) DEFAULT NULL,
  `jumlah_file_scan` tinyint(225) DEFAULT NULL,
  `lampiran` varchar(225) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_surat_masuk`, `nomor_surat`, `perihal_surat`, `tanggal_surat`, `tanggal_terima_surat`, `asal_surat`, `nama_pejabat_penerima_disposisi`, `status_disposisi`, `keterangan_pemberi_disposisi`, `keterangan_penerima_disposisi`, `ringkasan_surat`, `jumlah_file_scan`, `lampiran`, `created_at`, `updated_at`) VALUES
(8, '172.2/0403/DPRD', 'Undangan', '2021-04-04', '2021-04-05', 'SEKRETARIAT DPRD KOTA BPP', 'Kamsani - Sekretaris', 1, 'Di hadiri Lurah', 'Di arsipkan', 'Rapat Paripurna DPRD Kota Balikpapan', 1, 'suratmasuk_1619741004_007.jpeg', '2021-04-26 03:14:55', '2021-05-06 04:20:06'),
(16, '500/183/BALKOT', 'Undangan', '2021-04-05', '2021-04-05', 'Camat Balikpapan Kota', 'Kamsani - Sekretaris', NULL, 'Di hadiri Lurah', NULL, 'Rapat Koordinasi Keamanan dan Ketertiban umum Pelaksanaan Pasar Ramadhan', NULL, 'suratmasuk_1619741080_006.jpeg', '2021-04-29 01:30:17', '2021-05-06 04:18:47'),
(17, '600/124/PKM.TGS', 'Permohonan Peminjaman Aula Kelurahan Telaga Sari', '2021-04-05', '2021-04-05', 'UPTD PUSKESMAS TELAGA SARI', 'Kamsani - Sekretaris', NULL, 'Ditindaklanjuti', NULL, 'Permohonan Peminjaman Aula Kelurahan Telaga Sari', NULL, 'suratmasuk_1620006399_pc.jpg', '2021-04-29 01:34:47', '2021-05-06 04:20:32'),
(18, '600/182/BALKOT', 'Undangan', '2021-01-01', '2021-04-05', 'Camat Balikpapan Kota', 'Kamsani - Sekretaris', NULL, 'Di hadiri Lurah', NULL, 'Sosialisasi Pelayanan SAMSAT di Kota Balikpapan', NULL, 'suratmasuk_1619741231_009.jpeg', '2021-04-29 01:37:22', '2021-05-06 04:21:00'),
(19, '005/103/Pem', 'Undangan', '2021-04-07', '2021-04-07', 'Sekretariat Daerah Kota Balikpapan', 'Kasi Pembangunan', NULL, 'Hadiri acara dimaksud', NULL, 'Peninjauan Tanah Longsor di RT.29 dan RT.47 Kel. Telaga Sari', NULL, 'suratmasuk_1619741281_010 07-04-2021.pdf', '2021-04-29 01:41:40', '2021-05-06 04:22:31'),
(20, 'XXII/DPC-PPDI/Bpp/IV/2021', 'Undangan', '2021-04-05', '2021-04-07', 'DPC PPDI KOTA BALIKPAPAN', 'Kamsani - Sekretaris', NULL, 'Di hadiri Lurah', NULL, 'Penyaluran CSR Pertamina Com.Rel MOR VI', NULL, 'suratmasuk_1619741330_011.pdf', '2021-04-29 01:44:34', '2021-05-06 04:17:22'),
(21, '600/675/DPU', 'Pemberitahuan Pelaksanaan Pekerjaan Bidang PLP', '2021-03-10', '2021-04-07', 'Dinas PU Kota Balikpapan', 'Rosalina - Kasi Permas', NULL, 'Koordinasikan dengan RT dimaksud', NULL, 'Rencana Pelaksanaan Pekerjaan Bidang PLP', NULL, 'suratmasuk_1619741371_012.pdf', '2021-04-29 01:47:38', '2021-05-06 04:22:53'),
(22, '236/22/DP.KORPRI', 'Undangan', '2021-04-12', '2021-04-14', 'Dewan Pengurus Korpri Kota Balikpapan', 'Kamsani - Sekretaris', NULL, 'Infokan ke seluruh pegawai kelurahan untuk mengikuti kegiatan dimaksud', NULL, 'Pengajian Gabungan Amaliah Ramadhan 1442 H / 2021 M dilingkungan Pemkot Balikpapan', NULL, 'suratmasuk_1619741413_013.pdf', '2021-04-29 01:51:50', '2021-05-06 04:23:28'),
(23, 'IP.02.05/178-64.03.200/III/2021', 'Pemberitahuan', '2021-03-08', '2021-04-14', 'Kementerian Agraria dan TataRuang/BPN Kabupaten Berau', 'Siti Utami - Kasi Pem', NULL, 'Untuk di Ketahui', NULL, 'Pelayanan Pertanahan ( Sdr.Mulyadi Jl.Tanjungpura II No.M.07RT.17 Kel.Telagasari', NULL, 'suratmasuk_1619741468_014.pdf', '2021-04-29 01:56:17', '2021-05-06 06:32:24'),
(25, '04/LPM-Tgs/IV/2021', 'Pemberitahuan', '2021-04-14', '2021-04-14', 'Lembaga Pemberdayaan Masyarakat LPM Kel.Telagasari', 'Kamsani - Sekretaris', NULL, 'Untuk di Ketahui', NULL, 'Kegiatan Safari Ramadhan Mitra Kelurahan', NULL, 'suratmasuk_1619741710_016.pdf', '2021-04-29 02:10:00', '2021-05-06 04:24:05'),
(26, '096/BPBD/2021', 'Informasi & Data rawan bencana', '2021-04-05', '2021-04-15', 'Badan Penanggulangan Bencana Daerah Kota Bpp', 'Ridwan - Kasi Tramtib dan LH', NULL, 'Untuk ditindaklanjuti', NULL, 'Permohonan Informasi & Data rawan bencana', NULL, 'suratmasuk_1619741740_017.pdf', '2021-04-29 02:12:11', '2021-05-06 04:24:51'),
(28, '973/343/UPTD.PPRD.II/BPP/IV/2021', 'Sosialisasi Pelayanan SAMSAT', '2021-04-23', '2021-04-23', 'Badan Pendapatan Daerah Prop. Kaltim', 'Kamsani - Sekretaris', NULL, 'Koordinasikan dengan OPD terkait', NULL, 'Sosialisasi Pelayanan SAMSAT', NULL, 'suratmasuk_1620275332_018.pdf', '2021-05-06 04:18:10', '2021-05-06 04:28:52'),
(30, '660/400/DLH', 'Rekomendasi Penebangan/Pemangkasan pohon', '2021-04-20', '2021-04-23', 'Dinas Lingkungan Hidup ( DLH )', 'Ridwan - Kasi Tramtib', NULL, 'Koordinasikan dengan OPD Terkait', NULL, 'Rekomendasi Penebangan/Pemangkasan pohon', NULL, 'suratmasuk_1623025904_019.pdf', '2021-05-06 05:00:41', '2021-06-07 00:31:44'),
(31, '043/17/06-C', 'Permohonan surat Keterangan Domisili Sekretariat', '2021-04-30', '2021-04-30', 'Gerakan Pramuka Cabang Kota Balikpapan', 'Siti Utami - Kasi Pem Yanlik', NULL, 'Proses sesuai ketentuan', NULL, 'Permohonan surat Keterangan Domisili Sekretariat', NULL, 'suratmasuk_1623025245_020.pdf', '2021-05-06 05:02:48', '2021-06-07 00:20:45'),
(32, '400/291/Balkot', 'Pembentukkan Forum Anak', '2021-04-22', '2021-04-30', 'Kecamatan Balikpapan Kota', 'Rosalina - Kasi Permas', NULL, 'Tindaklanjuti', NULL, 'Pembentukkan Forum Anak', NULL, 'suratmasuk_1623025292_021.pdf', '2021-05-06 05:04:33', '2021-06-07 00:21:32'),
(33, '518/021/DKUMKMP', 'Permohonan Ijin Pemasangan Spanduk RAT', '2021-01-11', '2021-04-30', 'Dinas Koperasi UMKM&Perindustrian Kota Bpp', 'Kamsani - Sekretaris', NULL, 'Setuju', NULL, 'Ijin Pemasangan Spanduk RAT Koperasi', NULL, 'suratmasuk_1623025414_022.pdf', '2021-05-06 05:06:28', '2021-06-07 00:23:34'),
(41, '005/0427/KESRA', 'Undangan', '2021-04-27', '2021-04-27', 'Walikota Balikpapan', NULL, NULL, NULL, NULL, 'Undangan', NULL, 'suratmasuk_1623028474_023.jpeg', '2021-05-19 02:55:13', '2021-06-07 01:14:34'),
(42, '005/047/DP3AKB-PA', 'Undangan', '2021-04-30', '2021-04-30', 'DP3AKB Kota Balikpapan', 'Rosalina-Kasi permas', NULL, 'Diwakilkan', NULL, 'Undangan', NULL, 'suratmasuk_1623028161_024.pdf', '2021-05-19 02:57:19', '2021-06-07 01:09:21'),
(43, '530/214/TSDI-DKUMKMP', 'Undangan Sosialosasi TTg', '2021-05-07', '2021-05-07', 'Dinas Koperasi UMKM&Perindustrian Kota Bpp', 'Rosalina-Kasi Permas', NULL, 'Diwakilkan', NULL, 'Undangan', NULL, 'suratmasuk_1623027784_025.pdf', '2021-05-19 03:05:41', '2021-06-07 01:03:04'),
(44, '005/052/DP3AKB-KK', 'Undangan', '2021-05-17', '2021-05-17', 'DP3AKB Kota Balikpapan', 'Rosalina-Kasi Permas', NULL, 'Diwakilkan', NULL, 'Undangan', NULL, 'suratmasuk_1622693763_026.pdf', '2021-05-19 03:07:09', '2021-06-03 04:16:03'),
(45, '33/KOTAKU/BPN/V/2021', 'Permohonan Fasilitasi Pelaksanaan Siklus Program KOTAKU', '2021-05-24', '2021-06-03', 'Korkot 2 Balikpapan Program KOTAKU', 'Rosalina - Kasi Permas', NULL, 'Koordinasikan dengan LKM Rukun Makmur 09', NULL, 'Mohon Bantuan Fasilitasi Pelaksanaan Siklus Program KOTAKU', NULL, 'suratmasuk_1622693004_028.pdf', '2021-06-03 04:02:44', '2021-06-03 04:09:57'),
(46, '300/318/Balkot', 'Kerja Bhakti Massal (KBM)', '2021-05-25', '2021-05-25', 'Camat Balikpapan Kota', 'Ridwan Djunaidy - Kasi Tramtib dan LH', NULL, 'Tindaklanjuti dan koordinasikan', NULL, 'Kerja Bhakti Massal (KBM)', NULL, 'suratmasuk_1622693373_027.pdf', '2021-06-03 04:09:18', '2021-06-03 04:10:13'),
(47, '172.3/05.17/DPRD', 'Rapat Dengar Pendapat', '2021-05-18', '2021-05-19', 'DPRD Kota Balikpapan', 'Kamsani - Seklur', NULL, 'Hadiri, wakili saya', NULL, 'Rapat Dengar Pendapat dengan Komisi III terkait Pemasangan Lampu PJU', NULL, 'suratmasuk_1622694192_029.pdf', '2021-06-03 04:23:01', '2021-06-03 04:23:12'),
(48, '010/123/Cabdisdikwil.I/2021', 'Undangan', '2021-05-19', '2021-05-20', 'Cabang Dinas Pendidikan Wilayah I Disdikbud Prop Kaltim', NULL, NULL, 'Dihadiri Lurah', NULL, 'Sosialisasi PPDB SMA, SMK Tahun Ajaran 2021/2022 kepada Stakeholder dan Masyarakat', NULL, 'suratmasuk_1622695663_030.pdf', '2021-06-03 04:47:20', '2021-06-03 04:47:43'),
(49, '530/153/DKUMKMP', 'Permohonan Data Pengrajin Tahu Tempe', '2021-04-14', '2021-04-14', 'Dinas Koperasi UMKM&Perindustrian Kota Bpp', 'Rosalina - Kasi Permas', NULL, 'Tindaklanjuti', NULL, 'Permohonan Data Pengrajin Tahu Tempe', NULL, 'suratmasuk_1622698238_015.pdf', '2021-06-03 05:26:11', '2021-06-03 05:30:38'),
(50, '600/945/DPU', 'Informasi Kondisi Bendali Telagasari', '2021-05-17', '2021-06-18', 'Dinas Pekerjaan Umum', 'Arini Amir', NULL, 'Arini Amir', NULL, 'Informasi Kondisi Bendali', NULL, 'suratmasuk_1623026176_031.pdf', '2021-06-04 01:35:48', '2021-06-07 00:36:16'),
(51, '112/30/1.03.10.2.01.09/DPU-JJ/VI/2021', 'Pemberitahuan Pelaksanaan Kegiatan Bidang Jalan', '0021-06-15', '2021-06-21', 'Dinas Pekerjaan Umum ( DPU )', 'Rosalina - Kasi Permas', NULL, 'Infokan ke Ketua RT.29 untuk ditindaklanjuti', NULL, 'Pekerjaan Jalan RT.29 Telaga Sari', NULL, 'suratmasuk_1624259811_032-DPU BIdang JJ.jpeg', '2021-06-21 07:12:49', '2021-06-21 07:16:51'),
(52, '041/145/Disputakar', 'Undangan Rakor Tenaga Perpustakaan Tahun 2021', '0021-06-08', '2021-06-21', 'Dinas Perpustakaan dan Arsip Kota Balikpapan', 'Kamsani - Seklur', NULL, 'Informasikan ke staf yang menangani', NULL, 'Undangan Rakor Tenaga Perpustakaan', NULL, 'suratmasuk_1624259830_033-Undangan Rakor Tenaga Pengelola Perpustakaan Th 2021.pdf', '2021-06-21 07:15:50', '2021-06-21 07:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `surat_pelayanan`
--

CREATE TABLE `surat_pelayanan` (
  `id_surat_pelayanan` int(11) NOT NULL,
  `status_final` tinyint(1) DEFAULT NULL,
  `nomor_surat` varchar(225) DEFAULT NULL,
  `nama_jenis_surat_pelayanan` varchar(100) DEFAULT NULL,
  `tanggal_surat` date DEFAULT NULL,
  `nama_pejabat_pembuat` varchar(50) DEFAULT NULL,
  `jabatan` varchar(150) DEFAULT NULL,
  `nama_lengkap_penduduk` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `tempat_lahir` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `nik_kependudukan` varchar(16) CHARACTER SET latin1 DEFAULT NULL,
  `nomor_kk` varchar(16) DEFAULT NULL,
  `jenis_kelamin` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `keterangan_jenis_pekerjaan` varchar(100) DEFAULT NULL,
  `kewarganegaraan` varchar(3) DEFAULT NULL,
  `keterangan_agama` varchar(20) DEFAULT NULL,
  `keterangan_status_kawin` varchar(20) DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 DEFAULT NULL,
  `no_rt` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `nama_kelurahan_penduduk` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `nama_kecamatan_penduduk` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `dasar_1` text DEFAULT NULL,
  `dasar_2` text DEFAULT NULL,
  `dasar_3` text DEFAULT NULL,
  `maksud_1` text DEFAULT NULL,
  `maksud_2` text DEFAULT NULL,
  `maksud_3` text DEFAULT NULL,
  `maksud_4` text DEFAULT NULL,
  `status_approval` tinyint(1) DEFAULT 0,
  `jumlah_file_scan` tinyint(2) DEFAULT NULL,
  `lampiran` varchar(225) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `surat_pelayanan`
--

INSERT INTO `surat_pelayanan` (`id_surat_pelayanan`, `status_final`, `nomor_surat`, `nama_jenis_surat_pelayanan`, `tanggal_surat`, `nama_pejabat_pembuat`, `jabatan`, `nama_lengkap_penduduk`, `tempat_lahir`, `tanggal_lahir`, `nik_kependudukan`, `nomor_kk`, `jenis_kelamin`, `keterangan_jenis_pekerjaan`, `kewarganegaraan`, `keterangan_agama`, `keterangan_status_kawin`, `alamat`, `no_rt`, `nama_kelurahan_penduduk`, `nama_kecamatan_penduduk`, `dasar_1`, `dasar_2`, `dasar_3`, `maksud_1`, `maksud_2`, `maksud_3`, `maksud_4`, `status_approval`, `jumlah_file_scan`, `lampiran`, `created_at`, `updated_at`) VALUES
(10, NULL, '472.2/075/TgS', 'Surat Pengantar Perkawinan', '2021-05-10', 'Kamsani', 'Sekretaris', 'Muhammad Aqsal Mubarak', 'Makassar', '2000-06-20', '7371112006000009', '6471052804100059', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan Dalam No.18', '05', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1621836359_474-2-20.pdf', '2021-05-11 04:57:23', '2021-06-17 00:59:02'),
(11, NULL, '472.2/074/TgS', 'Surat Pengantar Perkawinan', '2021-05-10', 'Kamsani', 'Sekretaris', 'Barokah Irwan Melandi', 'Kendal', '1993-05-28', '3324092805930006', '6471061406170002', 'L', 'TNI', 'WNI', 'Islam', 'Jejaka', 'Jl. Tanjungpura III H169', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-11 05:06:23', '2021-06-17 00:59:08'),
(12, NULL, '471.1/121/TgS', 'Belum pernah menikah', '2021-05-03', 'Kamsani', 'Sekretaris', 'Muhammad Davis Ganianda', 'Balikpapan', '1970-01-01', '6471051605030010', '6471052606070009', 'L', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl. Telaga Sari No.25', '45', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi Melanjutkan Sekolah', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048632_121.pdf', '2021-05-11 05:16:44', '2021-06-07 06:50:32'),
(13, NULL, '472.2/073/TgS', 'Surat Pengantar Perkawinan', '2021-05-06', 'Kamsani', 'Sekretaris', 'Vionia Dinda Ellyta', 'Balikpapan', '1995-01-11', '6471055101950001', '6471063009160003', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Prapatan No.37', '13', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-11 05:22:46', '2021-06-17 00:59:13'),
(14, NULL, '472.2/072/TgS', 'Surat Pengantar Perkawinan', '2021-05-05', 'Arini Amir, S.Sos', 'Lurah', 'Losmer Sirait', 'Bahraja I Horsik', '1965-04-04', '6471050404650003', '6471052304190023', 'L', 'Polri', 'WNI', 'Kristen', 'Duda', 'Jl. Pembangunan No. 123', '38', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-11 05:32:14', '2021-06-17 00:59:19'),
(15, NULL, '474.1/122/TgS', 'Domisili Tempat Tinggal', '2021-05-04', 'Rosalina', 'Kasi Permas', 'Nawianto', 'Malang', '1964-12-11', '6471051112630005', '6471052022080003', 'L', 'TNI', 'WNI', 'Islam', 'Kawin', 'Jl.Tanjungpura III H.65', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048617_122.pdf', '2021-05-11 05:32:47', '2021-06-28 07:40:06'),
(16, NULL, '472.2/071/TgS', 'Surat Pengantar Perkawinan', '2021-05-05', 'Arini Amir, S.Sos', 'Lurah', 'Lukman', 'Maros', '1994-07-23', '7309092307940003', '6471061604190001', 'L', 'Belum/Tidak Bekerja', 'WNI', 'Islam', 'Jejaka', 'Jl. Telogorejo No.13', '42', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-11 05:36:10', '2021-06-17 00:59:25'),
(17, NULL, '640/123/TgS', 'Domisili Perusahaan', '2021-05-05', 'Kamsani', 'Sekretaris', 'Muhammad Hariyanto', 'Balikpapan', '1985-11-27', '6471052711850005', '6471050408100025', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.51', '04', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048453_123.pdf', '2021-05-11 05:36:36', '2021-06-07 06:47:33'),
(18, NULL, '474.1/124/TgS', 'Domisili Tempat Tinggal', '2021-05-05', 'Arini Amir, S.Sos', 'Lurah', 'Rahmat Dany', 'Balikpapan', '1980-07-25', '6471052507800005', '6471051309120132', 'L', 'Tidak Bekerja', 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sari IV No.16', '31', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Pengurusan Bantuan Biaya RSUD', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048493_124.pdf', '2021-05-11 05:39:50', '2021-06-07 06:48:13'),
(19, NULL, '472.2/070/TgS', 'Surat Pengantar Perkawinan', '2021-05-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Derryananta', 'Balikpapan', '1991-12-27', '6471052712910004', '6471053103090050', 'L', 'Tidak Bekerja', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan No. 05', '13', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-11 05:40:01', '2021-06-17 00:59:32'),
(20, NULL, '474.1/125/TgS', 'Domisili Tempat Tinggal', '2021-05-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Dewi Utami', 'Muara Badak', '1982-09-04', '6471044409820004', NULL, 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.42', '47', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Permohonan Agen LPG 3 Kg', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048528_125.pdf', '2021-05-11 05:43:27', '2021-06-07 06:48:49'),
(21, NULL, '474.1/126/TgS', 'Satu orang yang sama', '2021-05-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'HM Syafruddin Djamal', 'Maros', '1956-10-23', '6471052310560003', NULL, 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.14', '07', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Ahli Waris', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048553_126.pdf', '2021-05-11 05:46:38', '2021-06-28 07:29:22'),
(22, NULL, '472.2/069/TgS', 'Surat Pengantar Perkawinan', '2021-05-04', 'Rosalina', 'Kasi Permas', 'Herlinah', 'Sinjai', '2021-09-29', '7307026909850001', NULL, 'P', 'Tidak Bekerja', 'WNI', 'Islam', 'Perawan', 'Jl. Prapatan Dalam No.53', '08', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-11 05:47:46', '2021-06-17 00:59:41'),
(23, NULL, '474.1/127/TgS', 'Satu orang yang sama', '2021-05-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Hj.Wanimah', 'Balikpapan', '1955-05-15', '6471055505550008', '6471061012190010', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.14', '07', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Ahli Waris', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048585_127.pdf', '2021-05-11 05:49:57', '2021-06-07 06:49:45'),
(24, NULL, '474.1/128/TgS', 'Domisili Tempat Tinggal', '2021-05-06', 'Kamsani', 'Sekretaris', 'Krisna Dewi', 'Balikpapan', '1988-09-07', '6471054709880004', '6471051309120132', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sari IV No.16', '31', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Bantuan Jampersal', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048276_128.pdf', '2021-05-11 05:52:37', '2021-06-07 06:44:36'),
(25, NULL, '472.2/068/TgS', 'Surat Pengantar Perkawinan', '2021-05-04', 'Rosalina', 'Kasi Permas', 'SUDIRMAN', 'Balikpapan', '1984-01-17', '6471051701840002', NULL, 'L', 'Wiraswasta', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan Dalam No.53', '08', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-11 05:53:44', '2021-06-17 00:59:47'),
(26, NULL, '471.1/129/TgS', 'Keterangan Non Mudik', '2021-05-11', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Alfrida Patibong', 'Tondon', '1994-08-14', '7326165408940002', '6471061809170003', 'P', 'Pelajar', 'WNI', 'Kristen', 'Belum Kawin', 'Jl.Zeni AD', '15', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048247_129.pdf', '2021-05-11 05:55:49', '2021-06-07 06:44:07'),
(27, NULL, '471.1/091/TgS', 'Belum pernah menikah', '2021-04-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'MUHAMMAD RAMADHAN', 'Balikpapan', '1995-02-26', '6471052602950004', NULL, 'L', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Telagasari III No.10', '35', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Kredit Bank Syariah Indonesia', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-18 01:56:59', '2021-05-28 13:25:00'),
(28, NULL, '474.1/092/TgS', 'Satu orang yang sama', '2021-04-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'SUWARNI', 'Blora', '1955-01-20', '6471056001550001', '6471051308030009', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.44', '06', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Ahli Waris', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-18 02:00:46', '2021-05-27 02:51:23'),
(29, NULL, '474.1/093/TgS', 'Pemekaran Wilayah', '2021-04-08', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'JENAWATI HALIM', 'Banjarmasin', '1966-09-21', '3573016109660002', NULL, 'P', 'Karyawan Swasta', 'WNI', 'Katholik', 'Cerai Mati', 'Jl.Bukit Dieng Blok I/I', '09', 'Pisang Candi', 'Sukun, Kota Malang', NULL, NULL, NULL, 'Administrasi ke Notaris', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-18 02:04:59', '2021-06-28 07:25:06'),
(30, NULL, '474.1/094/TgS', 'Domisili Tempat Tinggal dan penghasilan orang tua', '2021-04-08', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Dannis Abdillah', 'Balikpapan', '2015-06-12', '6471061206150001', '6471050911090015', 'P', 'Tidak bekerja', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Suka Asri No.24', '07', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi Sekolah', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-18 02:11:02', '2021-05-26 02:57:43'),
(31, NULL, '474.1/095/TgS', 'Pemekaran Wilayah', '2021-04-09', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Iskandar Kusuma Jaya', 'Balikpapan', '1953-03-03', '6471050303530011', '6471052402100075', 'L', 'Pensiunan', 'WNI', 'Islam', 'Kawin', 'Jl.Telogorejo No.10', '26', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi di kantor BPN Balikpapan', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-18 02:18:50', '2021-06-28 07:24:15'),
(32, NULL, '474.3/096/TgS', 'Keterangan Kematian', '2021-04-09', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'ALI MAHFUD', 'Balikpapan', '1978-12-02', '6471050212780006', NULL, 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.17', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-18 02:43:44', '2021-05-27 02:50:29'),
(33, NULL, '474.1/097/TgS', 'Domisili Tempat Tinggal', '2021-04-09', 'Arini Amir, S.Sos', 'Lurah', 'Gandung Kiswanto', 'Magelang', '1973-08-17', '6471051708730018', '6471052606070009', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sari I No.25', '45', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi Bank', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-18 03:29:44', '2021-05-24 06:24:52'),
(34, NULL, '472.2/056/TgS', 'Surat Pengantar Perkawinan', '2021-04-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'DITA WIDYANA', 'Balikpapan', '1994-10-10', '6471055010940005', '6471052810080092', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Kapten P Tendean No.08', '31', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-18 03:34:34', '2021-06-16 00:15:17'),
(35, NULL, '472.2/057/TgS', 'Surat Pengantar Perkawinan', '2021-04-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'KOKO RUSDIANTO', 'Balikpapan', '1991-03-20', '6471052003910003', '6471052906090055', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Zeni AD No.29', '11', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-18 03:51:36', '2021-06-16 00:15:28'),
(36, NULL, '472.2/058/TgS', 'Surat Pengantar Perkawinan', '2021-04-09', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'DEDI JOHANSYAH', 'Balikpapan', '1989-03-17', '6471051703890003', '6471052306080039', 'L', 'Buruh Harian Lepas', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan Dalam No.36', '06', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-18 04:14:51', '2021-06-17 01:00:36'),
(37, NULL, '474.1/098/TgS', 'Domisili Tempat Tinggal', '2021-04-09', 'Arini Amir, S.Sos', 'Lurah', 'NOORLAELA', 'Banjarmasin', '1966-02-07', '6471054702660003', '6471051308100001', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Telagasari I No.138', '37', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Surat Ghaib', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-19 00:56:38', '2021-06-28 07:32:02'),
(38, NULL, '474.1/099/TgS', 'Domisili Tempat Tinggal', '2021-04-12', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Fani Citra Hati', 'Jakarta', '2004-06-20', '6471056006040007', '6471052303100054', 'P', 'Pelajar', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telaga Sari III No.31', '39', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi daftar BDT(Basis Data Terpadu)', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-19 01:01:32', '2021-06-28 07:31:02'),
(39, NULL, '474.1/100/Tgs', 'Satu orang yang sama', '2021-04-13', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Laila Fatimatus Zahro', 'Balikpapan', '1998-12-16', '6471055612980007', '6471051205050004', 'P', 'Pelajar', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telaga Sari III No.105', '41', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Ahli Waris', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-19 01:05:28', '2021-05-27 03:10:53'),
(40, NULL, '474.1/101/TgS', 'Domisili Komite Olahraga Nasional Indonesia Propinsi Kaltim', '2021-04-15', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sirajudin Machmud', 'Balikpapan', '1983-03-16', '6471041603830001', '6471052610170021', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Komp Citra Bulit Indah Green Ville 1 No.07', '29', 'Sungai Nangka', 'Balikpapan Selatan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-19 01:31:49', '2021-05-27 02:48:59'),
(42, NULL, '472.2/059/TgS', 'Surat Pengantar Perkawinan', '2021-04-09', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'RISSA CHINDRASARI', 'Balikpapan', '1980-03-03', '6471054306900005', '6471060112200009', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Janda', 'Jl. Prapatan Dalam No.39', '06', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 01:16:15', '2021-06-17 01:00:42'),
(43, NULL, '474.1/102/TgS', 'Pemekaran Wilayah', '2021-04-15', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sutarno', 'Sukoharjo', '1951-12-31', '3311053112510172', '3311052312110007', 'L', 'Wiraswasta', 'WNI', 'Islam', 'Kawin', 'Kalisogo Rw.06', '02', 'Plesan ,Sukoharjo', 'Nguter', NULL, NULL, NULL, 'Administrasi ke Notaris', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 01:20:26', '2021-05-27 02:49:26'),
(44, NULL, '472.2/060/TgS', 'Surat Pengantar Perkawinan', '2021-04-12', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'RISKY SYAHPUTRA', 'Balikpapan', '1997-09-24', '6471052409970002', '6471052704090108', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Telogorejo No.45', '26', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 01:21:21', '2021-06-17 01:00:31'),
(45, NULL, '474.1/103/TgS', 'Domisili Tempat Tinggal', '2021-04-15', 'Kamsani', 'Sekretaris', 'Suparti', 'Balikpapan', '1964-04-27', '6471056704640007', '6471052702090001', 'P', 'PNS', 'WNI', 'Islam', 'Kawin', 'Jl.Tanjung Pura No.02', '20', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 01:24:26', '2021-06-28 07:40:16'),
(46, NULL, '472.2/061/TgS', 'Surat Pengantar Perkawinan', '2021-04-15', 'Arini Amir, S.Sos', 'Lurah', 'DAHLIA NUR HIDAYANTI', 'Balikpapan', '1997-06-11', '6471055106970004', '6471050611070015', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Prapatan Dalam I Telaga Sari', '06', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 01:25:36', '2021-06-17 01:00:27'),
(47, NULL, '474.1/104/TgS', 'Satu orang yang sama', '2021-04-16', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Mahlijah', 'Bangkalan', '1965-07-12', '6472035207650015', '6471050512120036', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telaga Sari III No.25', '34', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pengembalian Dana Haji', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 01:27:32', '2021-05-27 02:49:12'),
(48, NULL, '472.2/062/TgS', 'Surat Pengantar Perkawinan', '2021-04-19', 'Kamsani', 'Sekretaris', 'REZA WIRAWAN', 'Balikpapan', '1991-05-17', '6471051705910007', '6471052409030012', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Jejaka', 'Jl. Telaga Sari III No. 05', '35', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 01:30:37', '2021-06-17 01:00:21'),
(49, NULL, '474.1/105/TgS', 'Penghasilan Orang Tua', '2021-04-20', 'Arini Amir, S.Sos', 'Lurah', 'Agus Joko Purnomo', 'Samarinda', '1967-08-02', '6471050208620005', '6471050908040008', 'L', 'Buruh Harian Lepas', 'WNI', 'Islam', 'Kawin', 'Jl.Telogorejo No.21', '29', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan UKT an Anisa Ayu Oktaviyanti', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 01:30:51', '2021-05-24 07:07:10'),
(50, NULL, '474.1/106/TgS', 'Penghasilan Orang Tua', '2021-04-20', 'Arini Amir, S.Sos', 'Lurah', 'Sukino', 'KarangAnyar', '1956-08-27', '6471052708560004', '6471051710080057', 'L', 'Wiraswasta', 'WNI', 'Islam', 'Kawin', 'Jl.Telogorejo No.14', '28', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan UKT an Putri Ramadhani', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 01:48:28', '2021-05-24 07:04:55'),
(51, NULL, '472.2/064/TgS', 'Surat Pengantar Perkawinan', '2021-04-23', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'SURIPTO', 'Tegal', '1994-12-01', '3328180112940001', '6471062501170003', 'L', 'Tidak Bekerja', 'WNI', 'Islam', 'Jejaka', 'Jl. Telaga Sari IV No.17', '31', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 01:50:09', '2021-06-17 01:00:09'),
(52, NULL, '471.1/107/Tgs', 'Belum pernah menikah', '2021-04-20', 'Arini Amir, S.Sos', 'Lurah', 'Muhammad Iqbal Adhitama', 'Balikpapan', '2003-02-17', '6471051702030001', '6471051312070032', 'L', 'Pelajar', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telaga Sari III No.07', '39', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi Pendaftaran Kuliah', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 01:58:01', '2021-06-28 07:26:56'),
(53, NULL, '472.2/065/TgS', 'Surat Pengantar Perkawinan', '2021-04-29', 'Kamsani', 'Sekretaris', 'PRATIWI OKTAVIA', 'Balikpapan', '1996-10-13', '6471055310960007', '6471061401150018', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Janda', 'Jl. Prapatan Dalam No. 41', '04', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 02:00:53', '2021-06-17 00:59:53'),
(54, NULL, '474.1/108/TgS', 'Penghasilan', '2021-04-20', 'Arini Amir, S.Sos', 'Lurah', 'Soleman', 'Blora', '1964-12-09', '6471050012640007', '6471052306050004', 'L', 'Buruh Lepas', 'WNI', 'Islam', 'Kawin', 'Jl.Telagasari III No.18', '39', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Penerima Dna PIP', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 02:01:02', '2021-05-24 07:04:34'),
(55, NULL, '474.1/109/TgS', 'Penghasilan Orang Tua', '2021-04-20', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Askiyatun Nisa', NULL, NULL, NULL, NULL, 'P', NULL, 'WNI', 'Islam', NULL, NULL, '47', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 02:04:45', '2021-05-26 02:26:31'),
(56, NULL, '474.1/110/TgS', 'Domisili Tempat Tinggal', '2021-04-20', 'Kamsani', 'Sekretaris', 'Lilis S', 'Balikpapan', '1969-09-03', '6471054309690005', '6471052306100060', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.05', '44', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Keterangan Warga Tidak Mampu', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 02:08:08', '2021-05-26 03:01:11'),
(57, NULL, '474.1/111/TgS', 'Penghasilan Orang Tua', '2021-04-26', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Putri Ni\'matun Hasanah', 'Balikpapan', '2003-10-15', '6471055510030004', '6471050309080062', 'P', 'Pelajar', 'WNI', 'Islam', 'Kawin', 'Jl.Telagasari No.54', '34', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi Bantuan KIP', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 02:15:43', '2021-05-27 02:48:47'),
(58, NULL, '472.2/066/TgS', 'Surat Pengantar Perkawinan', '2021-04-29', 'Kamsani', 'Sekretaris', 'MUHAMMAD ALI', 'Balikpapan', '1983-11-04', '6471050411830004', '6471051702100065', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Jejaka', 'Jl. Telogorejo No. 59', '28', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 02:20:58', '2021-06-17 00:59:59'),
(59, NULL, '474.1/112/TgS', 'Domisili Tempat Tinggal', '2021-04-27', 'Kamsani', 'Sekretaris', 'Irawati', 'Trenggalek', '1980-12-22', '6471056212800005', '6471052112090003', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.72A', '47', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan KPR', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 02:24:18', '2021-05-26 02:41:00'),
(60, NULL, '472.2/063/TgS', 'Surat Pengantar Perkawinan', '2021-04-21', 'Arini Amir, S.Sos', 'Lurah', 'KARJON', 'Balikpapan', '1999-05-30', NULL, NULL, 'L', NULL, 'WNI', 'Islam', 'Jejaka', 'Jl. Telaga Sari III', '34', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 02:34:51', '2021-06-17 01:00:15'),
(61, NULL, '471.1/113/TgS', 'Belum pernah menikah', '2021-04-27', 'Rosalina', 'Kasi Permas', 'Efrilyana Putri Ayumi', 'Trenggalek', '2001-04-19', '3503125904010002', '6471060402200006', 'P', 'Pelajar', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Tanjung Pura IV H 24', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi POLTEKIM', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 02:36:29', '2021-05-28 13:25:34'),
(62, NULL, '472.2/067/TgS', 'Surat Pengantar Perkawinan', '2021-04-29', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'OVIE ANDI PRATAMA', 'Samarinda', '1994-10-26', '6471052610940005', '6471051009090058', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan Dalam No. 79', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 02:41:28', '2021-06-17 01:00:04'),
(63, NULL, '472.2/076/TgS', 'Surat Pengantar Perkawinan', '2021-05-17', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'DINA ANGGI LESMANA', 'Balikpapan', '1997-07-02', '6471050207970005', '6471050207090087', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan Dalam No.20', '44', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 03:02:11', '2021-06-17 00:58:50'),
(64, NULL, '472.2/077/TgS', 'Surat Pengantar Perkawinan', '2021-05-17', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'RATIH RATNASARI', 'Balikpapan', '2001-11-04', '6471054411010001', '6471051610030009', 'P', 'Belum/Tidk Bekerja', 'WNI', 'Islam', 'Perawan', 'Jl. Telogorejo', '33', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 03:06:09', '2021-06-17 00:58:56'),
(65, NULL, '474.1/114/TgS', 'Satu orang yang sama', '2021-04-27', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sri Widiastuti', 'Yogyakarta', '1977-07-15', '6471056307770007', '6471051606090067', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sri No.14', '45', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi di kantor BPN Balikpapan', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 03:10:29', '2021-06-28 07:34:46'),
(66, NULL, '472.2/078/TgS', 'Surat Pengantar Perkawinan', '2021-05-18', 'Arini Amir, S.Sos', 'Lurah', 'LISNAWATI', 'Bontang', '1987-12-31', '6471057112870029', '6471052303090060', 'P', 'Karyawan swasta', 'WNI', 'Islam', 'Perawan', 'Jl. Prapatan Dalam No.30', '04', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-05-20 04:19:12', '2021-06-17 00:58:43'),
(67, NULL, '474.1/115/TgS', 'Pemekaran Wilayah', '2021-04-29', 'Kamsani', 'Sekretaris', 'Sugiman', 'Magetan', '1977-06-15', '6472051506770010', '6471061404160004', 'L', 'Tidak Bekerja', 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sari IV No.28', '31', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi ke Notaris', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-21 00:12:30', '2021-06-28 07:25:34'),
(68, NULL, '474.1/116/TgS', 'Penghasilan Orang Tua', '2021-04-29', 'Kamsani', 'Sekretaris', 'Aryani', 'Palu', '1961-07-06', '6471054606610005', '6471050601100013', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Telagasari II No.23', '36', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi Pendaftaran Kuliah', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-21 00:16:27', '2021-06-28 07:27:05'),
(69, NULL, '471.1/117/TgS', 'Belum pernah menikah', '2021-04-29', 'Kamsani', 'Sekretaris', 'Muhamad Rifai Lakoro', 'Balikpapan', '2003-05-29', '6471052905030006', '6471050102050004', 'L', 'Pelajar', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telaga Sari II No.37', '45', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Pendaftaran Sekolah', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-21 00:20:24', '2021-05-28 13:25:45'),
(70, NULL, '471.1/118/TgS', 'Belum pernah menikah', '2021-04-29', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Amaratungga Dewa Sri Aji Nata Negara', 'Balikpapan', '2003-04-27', '6471052704030003', '6471052805090105', 'L', 'Pelajar', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telaga Sari No.18', '41', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi Sekolah Kedinasan', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-21 00:49:23', '2021-05-28 13:25:58'),
(71, NULL, '471.1/119/TgS', 'Belum pernah menikah', '2021-04-30', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Rohmaniah,SH', 'Balikpapan', '1965-09-30', '6471057009650002', '6471052811020002', 'P', 'PNS', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telogorejo Nio.37', '29', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi kelengkapan berkas rumah', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-21 00:53:15', '2021-05-28 13:24:30'),
(72, NULL, '474.1/120/TgS', 'Pemekaran Wilayah', '2021-04-30', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'H.Abdus Salam', 'Bangkalan', '1942-12-31', '6471053112420053', '3526022405120002', 'L', 'Pedagang', 'WNI', 'Islam', 'Kawin', 'Dsn Buluh Atas , Bangkalan', NULL, 'Buluh', 'Socah', NULL, NULL, NULL, 'Administrasi di kantor BPN Balikpapan', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-21 00:56:52', '2021-06-28 07:34:40'),
(73, NULL, '474.1/130/TgS', 'Satu orang yang sama', '2021-05-19', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Rohmaniah ,SH', 'Balikpapan', '1965-09-30', '6471057009650002', '6471052811020002', 'P', 'PNS', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telogorejo No.37', '29', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Balik Nama', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048230_130.pdf', '2021-05-27 03:06:07', '2021-06-07 06:43:50'),
(74, NULL, '471.1/131/TgS', 'Belum pernah menikah', '2021-05-20', 'Kamsani', 'Sekretaris', 'Novita Handayani Koswara', 'Balikpapan', '1993-11-20', '6471056011930003', '6471051801100064', 'P', 'Pelajar', 'WNI', 'Kristen', 'Belum Kawin', 'Jl.Prapatan No.16', '11', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi KPR', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048212_131.pdf', '2021-05-27 03:09:02', '2021-06-07 06:43:32'),
(75, NULL, '471.1/132/TgS', 'Belum pernah menikah', '2021-05-21', 'Kamsani', 'Sekretaris', 'Yuliana', 'Balikpapan', '1997-07-23', '6471056307970007', '6471052302090059', 'P', 'Pelajar', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Tanjungpura No.42', '22', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi KPR', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048198_132.pdf', '2021-05-27 03:15:34', '2021-06-07 06:43:18'),
(76, NULL, '471.1/133/TgS', 'Belum pernah menikah', '2021-05-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Robby Hasiantara Sirait', 'Balikpapan', '1998-09-11', '6471051109980003', '6471052807090001', 'L', 'Pelajar', 'WNI', 'Kristen', 'Belum Kawin', 'Jl.Pembangunan No.123', '38', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi CPNS', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048183_133.pdf', '2021-05-27 03:28:59', '2021-06-07 06:43:03'),
(77, NULL, '471.1/134/TgS', 'Belum pernah menikah', '2021-05-25', 'Rosalina', 'Kasi Permas', 'Bondan Dwi Hermansyah', 'Lamongan', '1995-12-08', '3524060812950003', '6471062108190011', 'L', 'Belum/tidak bekerja', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Zeni Asrama Zidam VI TPR No.52', '15', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi KPR', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048138_134.pdf', '2021-05-27 03:32:04', '2021-06-07 06:42:18'),
(78, NULL, '474.1/135/TgS', 'Domisili Perusahaan', '2021-05-25', 'Kamsani', 'Sekretaris', 'DR.K Harminto,S SI.MTEK', 'Surabaya', '1959-11-28', '6471052811590005', '6471050406090057', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Blora I No.50', '18', 'Klandasan Ilir', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048151_135.pdf', '2021-05-27 03:35:06', '2021-06-07 06:42:31'),
(79, NULL, '474.1/136/TgS', 'Kejandaan', '2021-05-25', 'Kamsani', 'Sekretaris', 'Kamsriani', 'Balikpapan', '1954-01-03', '6471054301540002', '6471051506040010', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telaga Sari IV No.46', '31', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048167_136.pdf', '2021-05-27 03:37:39', '2021-06-28 07:37:00'),
(80, NULL, '474.1/137/Tgs', 'Pemekaran Wilayah', '2021-05-27', 'Kamsani', 'Sekretaris', 'Moh.Yahya Ismail', 'Kediri', '1953-08-15', '6471031508530002', '6471030201030002', 'L', 'Wiraswasta', 'WNI', 'Islam', 'Kawin', 'Jl.Tiga No.06', '04', 'Gn.Samarinda Baru', 'Balikpapan Utara', NULL, NULL, NULL, 'Administrasi ke Notaris', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623048125_137.pdf', '2021-05-27 03:40:34', '2021-06-28 07:25:28'),
(81, NULL, '474.1/138/Tgs', 'Penghasilan bulanan', '2021-06-02', 'Kamsani', 'Sekretaris', 'Sri Utami', 'Kabuh', '1960-04-02', '6471054204600005', '6471053004100048', 'P', 'Mngurus Rumah tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Parapatan Dalam No.58', '02', 'Telaga sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Ke BAZNAS', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623900007_138.pdf', '2021-06-02 03:13:38', '2021-06-17 03:20:07'),
(82, NULL, '474.2/020/TgS', 'Domisili Tempat Tinggal Sementara', '2021-04-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Harimia', 'Belang-belang', '1946-07-01', '7602034107460039', '7602031509090002', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telaga Sari IV No.26', '31', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623040629_474-2-020.pdf', '2021-06-02 03:33:41', '2021-06-29 02:06:19'),
(83, NULL, '474.2/021/TgS', 'Domisili Tempat Tinggal Sementara', '2021-04-08', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Risyad Lolong', 'Sorong', '1972-09-04', '9271010409720009', '9271011608080005', 'L', 'Karyawan Swasta', 'WNI', 'Kristen', 'Kawin', 'Jl.Tanjungpura No.08', '27', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623040642_474-2-021.pdf', '2021-06-02 03:37:04', '2021-06-29 02:06:27'),
(84, NULL, '474.2/022/TgS', 'Domisili Tempat Tinggal Sementara', '2021-04-12', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Maria Juliana Palandeng', 'Balikpapan', '1986-04-17', '3674045704861001', '3674061212151002', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Pembangunan No.43', '38', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623040656_474-2-022.pdf', '2021-06-02 03:40:11', '2021-06-29 02:06:34'),
(85, NULL, '474.2/023/TgS', 'Domisili Tempat Tinggal Sementara', '2021-04-26', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Muhammad Rizky Chandra', 'Marang Kayu', '1995-07-12', '6402171207950001', '3517012907190011', 'L', 'Pelajar / mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Asri No.40', '07', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623040671_474-2-023.pdf', '2021-06-02 03:44:39', '2021-06-29 02:06:42'),
(86, NULL, '474.2/024/TgS', 'Domisili Tempat Tinggal Sementara', '2021-05-10', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Jony Maldon', 'Palopo', '1959-05-05', '3171050205590004', '3171052212110008', 'L', 'Wiraswasta', 'WNI', 'Kristen', 'Kawin', 'Jl.Tanjungpura', '25', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623040685_474-2-024.pdf', '2021-06-02 03:58:07', '2021-06-29 02:06:01'),
(87, NULL, '474.2/025/TgS', 'Domisili Tempat Tinggal Sementara', '2021-05-18', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Yasmo', NULL, NULL, NULL, NULL, 'L', NULL, 'WNI', NULL, NULL, 'No.57', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-02 04:13:35', '2021-07-09 01:12:58'),
(88, NULL, '474.2/034/TgS', 'Domisili Tempat Tinggal Sementara', '2021-05-28', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Isna Taufik', 'Grobogan', '1989-10-21', '3315010207890002', '3320010909200004', 'L', 'Wiraswasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.57', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623041530_474-2-034.pdf', '2021-06-07 00:54:58', '2021-06-29 02:03:26'),
(89, NULL, '474.2/026/TgS', 'Domisili Tempat Tinggal Sementara', '2021-05-28', 'Kamsani', 'Sekretaris', 'Yasmo', 'Grobogan', '1984-03-26', '3315172603840002', '3315172801100053', 'L', 'Wiraswasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.57', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623040699_474-2-026.pdf', '2021-06-07 01:14:34', '2021-06-29 02:04:59'),
(90, NULL, '474.2/027/TgS', 'Domisili Tempat Tinggal Sementara', '2021-05-28', 'Kamsani', 'Sekretaris', 'Samuli', 'Grobogan', '1983-04-17', '3315021704830004', '3315023101120009', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.57', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623040711_474-2-027.pdf', '2021-06-07 01:20:15', '2021-06-29 02:04:40'),
(91, NULL, '474.2/028/TgS', 'Domisili Tempat Tinggal Sementara', '2021-05-28', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ribowo Suyatno', 'Grobogan', '1986-03-18', '3315021803860007', '3315031512120001', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.57', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623041635_474-2-028.pdf', '2021-06-07 01:26:25', '2021-06-29 02:04:26'),
(92, NULL, '474.2/029/TgS', 'Domisili Tempat Tinggal Sementara', '2021-05-28', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ari Wahyudi', 'Grobogan', '1994-04-29', '3315012904940001', '3315012001150004', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.57', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623041617_474-2-029.pdf', '2021-06-07 01:29:25', '2021-06-29 02:04:18'),
(93, NULL, '474.2/031/TgS', 'Domisili Tempat Tinggal Sementara', '2021-05-28', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Agus Hermawan', 'Jepara', '2000-12-01', '332001090700005', '3320012401170004', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan Dalam No.57', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623041603_474-2-031.pdf', '2021-06-07 01:35:55', '2021-06-29 02:04:01'),
(94, NULL, '474.2/032/TgS', 'Domisili Tempat Tinggal Sementara', '2021-05-28', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Truna Mahadika', 'Grobogan', '2000-09-07', '3315170807000001', '3315170408150003', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan Dalam No.57', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623041582_474-2-032.pdf', '2021-06-07 01:39:16', '2021-06-29 02:03:54'),
(95, NULL, '474.2/033/TgS', 'Domisili Tempat Tinggal Sementara', '2021-05-28', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Choirul Latif', 'Semarang', '1984-11-05', '3374040511840001', '3315172405120011', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.57', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623041561_474-2-033.pdf', '2021-06-07 01:41:49', '2021-06-29 02:03:34'),
(96, NULL, '471.1/139/TgS', 'Belum pernah menikah', '2021-06-03', 'Rosalina', 'Kasi Permas', 'Mohamad Angga Satria', 'Sukoharjo', '1993-06-14', '6471051406930006', '6471050705090060', 'L', 'Pelajar / mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telogorejo No.37', '31', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623890962_139.pdf', '2021-06-07 03:58:56', '2021-06-17 00:49:22'),
(97, NULL, '474.2/030/TgS', 'Domisili Tempat Tinggal Sementara', '2021-05-28', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Kasmoin', 'Grobogan', '1993-04-06', '3315170405930001', '3315171604160019', 'L', 'Karyawan swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.57', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623046248_474-2-030.pdf', '2021-06-07 06:02:06', '2021-06-29 02:04:09'),
(98, NULL, '474.1/140/TgS', 'Kejandaan', '2021-06-03', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Elfrida Panjaitan', 'Tapanuli', '1960-09-09', '6471054909600004', '6471051806090028', 'P', 'Guru', 'WNI', 'Kristen', 'Cerai Mati', 'Jl.Prapatan Asrama Brimob No.48', '14', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623899957_140.pdf', '2021-06-07 06:05:56', '2021-06-28 07:40:00'),
(99, NULL, '474.1/141/TgS', 'Satu orang yang sama', '2021-06-04', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Dedy Ristiandi', 'Madiun', '1973-03-29', '6471052903730004', '6471050902090009', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Tanjung Pura No.44', '19', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Nikah', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623890822_141.pdf', '2021-06-07 06:09:14', '2021-06-17 00:47:02'),
(100, NULL, '474.1/142/TgS', 'Kejandaan', '2021-06-04', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Paini', 'Balikpapan', '1949-05-29', '6471056905510001', '6471051005100087', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan No.08', '10', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623890802_142.pdf', '2021-06-07 06:46:40', '2021-06-28 07:39:53'),
(101, NULL, '474.1/143/Tgs', 'Domisili Kantor ORARI', '2021-06-04', 'Kamsani', 'Sekretaris', 'H.Makkulawu.B', 'Wajo', '1958-10-20', '6471062010560001', '6471031301090046', 'L', 'Wiraswasta', 'WNI', 'Islam', 'Kawin', 'Jl.Sein Wain KM.15 No.36', '35', 'Karang Joang', 'Balikpapan Utara', NULL, NULL, NULL, 'Mengurus Administrasi SKT', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623890777_143.pdf', '2021-06-07 06:53:19', '2021-06-17 00:46:17'),
(102, NULL, '474.1/144/TgS', 'Kejandaan', '2021-06-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Roosna Saija', 'Bulungan', '1945-07-22', '6471056207450001', '6471052906090088', 'P', 'Pensiunan', 'WNI', 'Kristen', 'Cerai Mati', 'Jl.Prapatan No.22', '11', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623890757_144.pdf', '2021-06-07 06:55:40', '2021-06-28 07:39:46'),
(103, NULL, '472.2/076/TgS', 'Surat Pengantar Perkawinan', '2021-05-17', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'DINA ANGGI LESMANA', 'Balikpapan', '1997-07-02', '6471050207970005', '6471050207090087', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan Dlam No.20', '44', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-06-08 00:07:30', '2021-06-14 07:38:38'),
(104, NULL, '472.2/077/TgS', 'Surat Pengantar Perkawinan', '2021-05-17', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'RATIH RATNASARI', 'Balikpapan', '2001-11-04', '6471054411010001', '6471051610030009', 'P', 'Belum/Tidak Bekerja', 'WNI', 'Islam', 'Perawan', 'Jl. Telogorejo', '33', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-06-08 00:12:44', '2021-06-14 07:38:46'),
(105, NULL, '472.2/078/TgS', 'Surat Pengantar Perkawinan', '2021-05-18', 'Kamsani', 'Sekretaris', 'WA ODE ADE AYU', 'Raha', '2000-04-20', '6471056004000004', '6471050712090014', 'P', 'Belum/Tidak Bekerja', 'WNI', 'Islam', 'Perawan', 'Jl. Telogorejo No.18', '32', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-06-08 00:55:31', '2021-06-14 07:36:44'),
(106, NULL, '472.2/079/TgS', 'Surat Pengantar Perkawinan', '2021-05-18', 'Kamsani', 'Sekretaris', 'ANDRIKO FERNANDO', 'Muara Badak', '1997-02-21', '6471032109970003', '6471032410120077', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan No.51', '13', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-06-08 01:01:08', '2021-06-14 07:36:51'),
(107, NULL, '472.2/080/TgS', 'Surat Pengantar Perkawinan', '2021-05-18', 'Kamsani', 'Sekretaris', 'TIFANI EKA SISWATI', 'Balikpapan', '1992-04-16', '6471055604920007', '6471052304090014', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Telogo Rejo No.39', '28', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-06-08 01:15:32', '2021-06-16 00:03:26'),
(108, NULL, '472.2/081/TgS', 'Surat Pengantar Perkawinan', '2021-05-25', 'Arini Amir, S.Sos', 'Lurah', 'LISNAWATI', 'Bontang', '1987-12-31', '6471057112870029', '6471052303090060', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Perawan', 'Jl. Prapatan Dalam No.30', '04', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894365_472-2-081.pdf', '2021-06-08 01:25:57', '2021-06-17 01:46:05'),
(109, NULL, '472.2/082/TgS', 'Surat Pengantar Perkawinan', '2021-05-20', 'Kamsani', 'Sekretaris', 'RUSYDA NUR ATIKA', 'Balikpapan', '1998-10-12', '6471055210980003', '6471060203200005', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Tanjung Pura No.25', '19', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894348_472-2-082.pdf', '2021-06-08 02:03:07', '2021-06-17 01:45:48'),
(110, NULL, '472.2/083/TgS', 'Surat Pengantar Perkawinan', '2021-05-24', 'Kamsani', 'Sekretaris', 'EKO KURNIAWAN ALDYAS', 'Balikpapan', '1989-10-09', '6471050910890004', '6471052110080058', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Duda', 'Jl. Prapatan Dalam No.18', '04', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894331_472-2-083.pdf', '2021-06-08 02:12:47', '2021-06-17 01:45:31'),
(111, NULL, '472.2/084/TgS', 'Surat Pengantar Perkawinan', '2021-05-25', 'Arini Amir, S.Sos', 'Lurah', 'BUDI PURYANTO', 'Balikpapan', '1986-12-04', '3506130412860004', '6471062904210001', 'L', 'Wiraswasta', 'WNI', 'Islam', 'Jejaka', 'Jl. Telogorejo', '29', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894309_472-2-084.pdf', '2021-06-08 02:22:43', '2021-06-17 01:45:09'),
(112, NULL, '472.2/085/TgS', 'Surat Pengantar Perkawinan', '2021-05-27', 'Arini Amir, S.Sos', 'Lurah', 'EKA RIZKI WINDI NGAESTI', 'Balikpapan', '1997-07-21', '6402146107970002', '6471062706190007', 'P', 'Karyawan Honorer', 'WNI', 'Islam', 'Perawan', 'Jl. Prapatan Dalam No.75', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894295_472-2-085.pdf', '2021-06-08 02:34:56', '2021-06-17 01:44:55'),
(113, NULL, '472.2/086/TgS', 'Surat Pengantar Perkawinan', '2021-05-27', 'Kamsani', 'Sekretaris', 'ANNA RIYANI', 'Balikpapan', '1989-09-03', '6471054309890007', '6471052610090098', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Perawan', 'Jl. Prapatan Dalam No.24', '04', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894278_472-2-086.pdf', '2021-06-08 02:53:25', '2021-06-17 01:44:38'),
(114, NULL, '472.2/087/TgS', 'Surat Pengantar Perkawinan', '2021-06-02', 'Kamsani', 'Sekretaris', 'ACHMAD GINANJAR DARMAWAN', 'Balikpapan', '1989-09-15', '6471051509890003', '6471060107200005', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan Dalam No.30', '05', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894266_472-2-087.pdf', '2021-06-08 02:58:40', '2021-06-17 01:44:26'),
(115, NULL, '472.2/088/TgS', 'Surat Pengantar Perkawinan', '2021-06-02', 'Kamsani', 'Sekretaris', 'SITI MUNAWAROH', 'Balikpapan', '1985-11-25', '6471056511850006', '6471061802210005', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Janda', 'Jl. Prapatan Dalam No.59', '08', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894249_472-2-088.pdf', '2021-06-08 03:06:08', '2021-06-17 01:44:09'),
(116, NULL, '472.2/089/TgS', 'Surat Pengantar Perkawinan', '2021-06-03', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'ANGGA PANDHARKO', 'Balikpapan', '1998-08-17', '6471051708980002', '6471051806090008', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Zeni AD Asrama Zidam VI MLW', '15', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894227_472-2-089.pdf', '2021-06-08 04:27:11', '2021-06-28 07:14:33'),
(117, NULL, '472.2/090/TgS', 'Surat Pengantar Perkawinan', '2021-06-03', 'Kamsani', 'Sekretaris', 'YASRIL EKA ADEPUTRA', 'Sidoan', '2001-12-17', '6471051712010010', '6471051208090034', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Telaga Sari II No.84 B', '36', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894214_472-2-090.pdf', '2021-06-08 04:32:10', '2021-06-17 01:43:34'),
(118, NULL, '472.2/091/TgS', 'Surat Pengantar Perkawinan', '2021-06-04', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'DEDY RIS TIADI', 'Madiun', '1973-03-29', '6471052903730004', '6471050902090009', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Duda', 'Jl. Tanjung Pura No.44', '19', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894200_472-2-091.pdf', '2021-06-08 06:53:03', '2021-06-17 01:43:20'),
(119, NULL, '472.2/092/TgS', 'Surat Pengantar Perkawinan', '2021-06-07', 'Arini Amir, S.Sos', 'Lurah', 'ACHMAD JUNAIDI', 'Balikpapan', '1994-08-23', '3509082308940002', '6471061103130002', 'L', 'Tidak Bekerja', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan No.21', '05', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894184_472-2-092.pdf', '2021-06-08 06:57:11', '2021-06-17 01:43:04'),
(120, NULL, '472.2/093/TgS', 'Surat Pengantar Perkawinan', '2021-06-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'RACHMATULLAH SUHARTO', 'Balikpapan', '1984-10-10', '6471051010840010', '6471053006040009', 'L', 'Tidak Bekerja', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan No. 16', '10', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894160_472-2-093.pdf', '2021-06-08 07:03:44', '2021-06-17 01:42:40'),
(121, NULL, '472.2/094/TgS', 'Surat Pengantar Perkawinan', '2021-06-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'YENI KUSINDANG', 'Balkpapan', '1983-12-14', '6471055412830006', '6471050305120020', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Janda', 'Jl. Telaga Sari No.17', '35', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894149_472-2-094.pdf', '2021-06-08 07:08:44', '2021-06-17 01:42:29');
INSERT INTO `surat_pelayanan` (`id_surat_pelayanan`, `status_final`, `nomor_surat`, `nama_jenis_surat_pelayanan`, `tanggal_surat`, `nama_pejabat_pembuat`, `jabatan`, `nama_lengkap_penduduk`, `tempat_lahir`, `tanggal_lahir`, `nik_kependudukan`, `nomor_kk`, `jenis_kelamin`, `keterangan_jenis_pekerjaan`, `kewarganegaraan`, `keterangan_agama`, `keterangan_status_kawin`, `alamat`, `no_rt`, `nama_kelurahan_penduduk`, `nama_kecamatan_penduduk`, `dasar_1`, `dasar_2`, `dasar_3`, `maksud_1`, `maksud_2`, `maksud_3`, `maksud_4`, `status_approval`, `jumlah_file_scan`, `lampiran`, `created_at`, `updated_at`) VALUES
(122, NULL, '472.2/095/TgS', 'Surat Pengantar Perkawinan', '2021-06-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'DIAN MAYASARI', 'Balikpapan', '1982-08-11', '6471055108820008', '6471062002140001', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Janda', 'Jl. Telaga Sari IV No.16', '31', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894120_472-2-095.pdf', '2021-06-08 07:13:03', '2021-06-17 01:42:00'),
(123, NULL, '472.2/096/TgS', 'Surat Pengantar Perkawinan', '2021-06-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'RINALDY ARSYAD', 'Samarinda', '1992-03-29', '6471052903920004', '6471052808120046', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan No.61', '19', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894108_472-2-096.pdf', '2021-06-08 07:19:37', '2021-06-28 07:15:13'),
(124, NULL, '472.2/097/TgS', 'Surat Pengantar Perkawinan', '2021-06-08', 'Kamsani', 'Sekretaris', 'IKHSAN EKO SAPUTRA', 'Musi Banyuasin', '1997-01-03', '1606120301950002', '6471063101180006', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Tanjungpura III No. H 110', '17', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894060_472-2-097.pdf', '2021-06-08 07:26:05', '2021-06-17 01:41:00'),
(125, NULL, '472.2/098/TgS', 'Surat Pengantar Perkawinan', '2021-06-08', 'Kamsani', 'Sekretaris', 'SAHARA NURAINI', 'Pati', '2004-09-21', '6471054109040003', '6471052411080068', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Telaga sari III No.52 B', '33', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894070_472-2-098.pdf', '2021-06-08 07:30:30', '2021-06-17 01:41:10'),
(126, NULL, '474.1/145/TgS', 'Domisili Tempat Tinggal', '2021-06-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Rizky Achmad Fauzi', 'Balikpapan', '2000-05-10', '6471051005000007', '6471052704090097', 'L', 'Pelajar / Mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan Dalam No,01', '06', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Pendaftaran Komcad', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623890739_145.pdf', '2021-06-14 00:34:09', '2021-06-17 00:45:39'),
(127, NULL, '472.13/146/TgS', 'Keterangan pemakaman', '2021-06-07', 'Arini Amir, S.Sos', 'Lurah', 'Indriana Rahmadani', 'Balikpapan', '1997-01-05', '6471054501970004', '6471061409200016', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Tanjungpura No.72', '19', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623890936_146.pdf', '2021-06-14 00:38:11', '2021-06-17 00:48:56'),
(128, NULL, '474.1/147/TgS', 'Kejandaan', '2021-06-07', 'Kamsani', 'Sekretaris', 'Hj.Mariani', 'Balikpapan', '1954-03-14', '6471055403540003', '6471050708070025', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telogorejo No.38', '29', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623890037_147.pdf', '2021-06-14 00:41:08', '2021-06-17 00:33:57'),
(129, NULL, '474.1/148/TgS', 'Keterangan tidak mampu bayar jasa advokat', '2021-06-07', 'Kamsani', 'Sekretaris', 'Muhammad Yusuf ,ST', 'Balikpapan', '1975-04-27', '6471052704750005', '6471051411080027', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan No.62', '13', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan bantuan LBH', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623890006_148.pdf', '2021-06-14 00:44:52', '2021-06-17 00:33:26'),
(130, NULL, '472.2/099/TgS', 'Surat Pengantar Perkawinan', '2021-06-09', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'EOLIA KARTINA', 'Balikpapan', '1996-11-17', '6471051711960005', '6471051202090083', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Tanjung Pura NO.06', '22', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894046_472-2-099.pdf', '2021-06-14 03:47:31', '2021-06-17 01:40:46'),
(131, NULL, '472.2/100/TgS', 'Surat Pengantar Perkawinan', '2021-06-10', 'Arini Amir, S.Sos', 'Lurah', 'PUSPA DEWI', 'Balikpapan', '1995-11-28', '6471056811950007', '6471051007120085', 'P', 'Tidak Bekerja', 'WNI', 'Islam', 'Perawan', 'Jl. Telaga Sari II NO.35', '36', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894035_472-2-100.pdf', '2021-06-14 03:53:30', '2021-06-17 01:40:36'),
(132, NULL, '472.2/101/TgS', 'Surat Pengantar Perkawinan', '2021-06-11', 'Arini Amir, S.Sos', 'Lurah', 'RENDY APRIZOR', 'Lubuk Alung', '1993-04-17', '1305011704930003', '6471060402140008', 'L', 'TNI', 'WNI', 'Islam', 'Jejaka', 'Jl. Zeni AD NO.k 6', '16', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894024_472-2-101.pdf', '2021-06-14 03:57:46', '2021-06-17 01:40:24'),
(133, NULL, '472.2/102/TgS', 'Surat Pengantar Perkawinan', '2021-06-11', 'Arini Amir, S.Sos', 'Lurah', 'YUDHA GAMA PRASETYA', 'Balikpapan', '1998-03-07', '6471050703980005', '6471050707030007', 'L', 'TNI', 'WNI', 'Islam', 'Jejaka', 'Jl. ZeniAd NO. 62', '15', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894015_472-2-102.pdf', '2021-06-14 04:03:43', '2021-06-17 01:40:15'),
(134, NULL, '472.2/103/TgS', 'Surat Pengantar Perkawinan', '2021-06-14', 'Kamsani', 'Sekretaris', 'VIRGILIANA NIBENIA MENDROFA', 'Balikpapan', '1993-09-18', '6471055809930005', '6471051509090048', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Prapatan NO. 33', '11', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623894000_472-2-103.pdf', '2021-06-14 04:12:19', '2021-06-17 01:40:00'),
(135, NULL, '474.1/149/TgS', 'Keterangan kondisi tidak mampu membayar jasa advokat', '2021-06-08', 'Kamsani', 'Sekretaris', 'Andik Kurniawan', 'Balikpapan', '1990-11-20', '647105201100009', '6471051303080043', 'L', 'Pelajar / mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan Dalam No.54', '43', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan bantuan LBH', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623889950_149.pdf', '2021-06-14 06:10:06', '2021-06-17 00:32:31'),
(136, NULL, '474.1/150/TgS', 'Kejandaan', '2021-06-09', 'Rosalina', 'Kasi Permas', 'Nami', 'Karawang', '1968-05-02', '6471054205680005', '6471052501100077', 'P', 'Ibu Rumah tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Asrama Zidam VI/TPR', '15', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623888533_150.pdf', '2021-06-16 00:20:56', '2021-06-17 00:08:53'),
(137, NULL, '474.1/151/TgS', 'Kejandaan', '2021-06-09', 'Rosalina', 'Kasi Permas', 'Juwarti', 'Nganjuk', '1976-09-22', '6471056209760004', '6471052304100037', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Zeni Asrama Zidam No.16', '15', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623899864_151.pdf', '2021-06-16 00:24:00', '2021-06-28 07:20:26'),
(138, NULL, '474.1/152/TgS', 'Kejandaan', '2021-06-09', 'Arini Amir, S.Sos', 'Lurah', 'Sujilah,S.pd', 'Bantul', '1968-08-16', '6471055608680003', '6471050308090052', 'P', 'PNS', 'WNI', 'Islam', 'Cerai Mati', 'JL.Telogorejo No.48', '46', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623888545_152.pdf', '2021-06-16 00:29:11', '2021-06-17 00:09:05'),
(139, NULL, '474.1/153/TgS', 'Domisili Tempat Tinggal', '2021-06-10', 'Kamsani', 'Sekretaris', 'Rosmaria', 'Balikpapan', '1982-02-02', '6471054203820010', '6471052409070001', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sari III No.68', '41', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan KPR', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623888519_153.pdf', '2021-06-16 00:31:39', '2021-06-17 00:08:39'),
(140, NULL, '474.1/154/TgS', 'Kejandaan', '2021-06-14', 'Arini Amir, S.Sos', 'Lurah', 'Retia Situmeang,S.PD', 'Tapanuli Utara', '1965-08-21', '6471056108650005', '6471052411080073', 'P', 'PNS', 'WNI', 'Katholik', 'Cerai Mati', 'Jl.Telaga Sari III No.55', '41', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623888440_154.pdf', '2021-06-16 00:34:27', '2021-06-28 07:18:19'),
(141, NULL, '474.1/155/TgS', 'Kejandaan', '2021-06-14', 'Kamsani', 'Sekretaris', 'Mukminatun', 'Kebumen', '1942-12-31', '6471057112420073', '6471050404030608', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telogorejo No.40', '28', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623888457_155.pdf', '2021-06-16 00:38:41', '2021-06-17 00:07:37'),
(142, NULL, '474.1/156/TgS', 'Satu orang yang sama', '2021-06-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Argenta Basilika Asmin Rangkati', 'Balikpapan', '1969-12-31', '6471053112690128', '6471051209120118', 'L', 'Buruh Lepas', 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sari III No.38', '35', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Ahli Waris', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623888468_156.pdf', '2021-06-16 00:41:50', '2021-06-28 07:12:29'),
(143, NULL, '474.1/157/TgS', 'Kejandaan', '2021-06-15', 'Arini Amir, S.Sos', 'Lurah', 'Suratmi', 'Kediri', '1958-07-10', '6471055007580004', '6471060701200009', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan Dalam No..22', '03', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623888425_157.pdf', '2021-06-16 00:44:39', '2021-06-17 00:07:06'),
(144, NULL, '474.2/035/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-08', 'Rosalina', 'Kasi Pemerintahan dan Pelayanan Publik', 'Zaskia Nahdah Kamilah', 'Pekan Baru', '2006-10-15', '3171045510060003', '3171041101092192', 'P', 'Pelajar / mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Tanjungpura', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623899379_474-2-035.pdf', '2021-06-17 00:31:19', '2021-06-29 02:03:18'),
(145, NULL, '474.2/036/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-11', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Adzra Sabrina', 'Batam', '2005-09-15', '1571095509050002', '1871091302130001', 'P', 'Pelajar /mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Tanjungpura VI No.18', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623899364_474-2-036.pdf', '2021-06-17 00:36:29', '2021-06-29 02:03:10'),
(146, NULL, '474.2/037/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-11', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Rama Prajanata Pramono', 'Banyuwangi', '2006-03-03', '3573030303060004', '3573032904100017', 'L', 'Pelajar', 'WNI', 'Hindu', 'Belum Kawin', 'Jl.Tanjungpura Blok H21', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623899353_474-2-037.pdf', '2021-06-17 00:50:00', '2021-06-29 02:03:02'),
(147, NULL, '474.2/038/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-15', 'Arini Amir, S.Sos', 'Lurah', 'Muhammad Rizky', 'Jayapura', '2015-03-30', '9103013003150002', '3573012812180018', 'L', 'Belum/Tidak Bekerja', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Tanjungpura IV', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623899342_474-2-038.pdf', '2021-06-17 00:58:59', '2021-06-29 02:02:51'),
(148, NULL, '474.2/039/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-15', 'Arini Amir, S.Sos', 'Lurah', 'Anisah Ivana Salsabila', 'Merauke', '2009-06-30', '9203017006090002', '3573012812180018', 'P', 'Belum /Tidak Bekerja', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Tanjungpura IV', '18', 'Telaga sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623899331_474-2-039.pdf', '2021-06-17 01:09:02', '2021-06-29 02:02:19'),
(149, NULL, '474.2/040/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-15', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Wisnu Bow Kusumo', 'Bogor', '1987-12-24', '3174092142871001', '3174090110101031', 'L', 'Pelajar', 'WNI', 'Islam', 'Kawin', 'Jl.Zeni AD', '15', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623899319_474-2-040.pdf', '2021-06-17 01:25:52', '2021-06-29 02:02:12'),
(150, NULL, '474.2/041/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-15', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Nur Alam Sucipto', 'Pamekasan', '1978-05-11', '3175091105780012', '3175092012101040', 'L', 'TNI', 'WNI', 'Islam', 'Kawin', 'Jl.Tanjungpura IV Blok H21', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1623899308_474-2-041.pdf', '2021-06-17 01:33:31', '2021-07-09 01:12:46'),
(151, NULL, '472.2/104/TgS', 'Surat Pengantar Perkawinan', '2021-06-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Liyana Rahayu', 'Cirebon', '1996-06-01', '6471054107960004', '6471051503180011', 'P', 'Belum Bekerja', 'WNI', 'Islam', 'Perawan', 'Jl. Prapatan NO.41', '14', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1624258433_472-2-104.pdf', '2021-06-17 04:36:37', '2021-06-21 06:53:53'),
(152, NULL, '472.2/105/TgS', 'Surat Pengantar Perkawinan', '2021-06-15', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ramadan Wahyu Pamuji', 'Bulungan', '1995-03-02', '6471050203950011', '6471052608080134', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan NO.34', '09', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1624258421_472-2-105.pdf', '2021-06-17 05:55:14', '2021-06-21 06:53:41'),
(153, NULL, '472.2/106/TgS', 'Surat Pengantar Perkawinan', '2021-06-15', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ayu Indah Pratiwi', 'Sei Letta', '1996-01-12', '6471055201960005', '6471062204190006', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Prapatan', '04', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1624258410_472-2-106.pdf', '2021-06-17 06:16:15', '2021-06-21 06:53:30'),
(154, NULL, '472.2/107/TgS', 'Surat Pengantar Perkawinan', '2021-06-16', 'Arini Amir, S.Sos', 'Lurah', 'Yuda Wahyudi', 'Sanggata', '1992-07-31', '6471053107920004', '6471051509090003', 'L', 'TNI', 'WNI', 'Islam', 'Jejaka', 'Jl. Telogorejo NO.25', '30', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1624258400_472-2-107.pdf', '2021-06-17 06:28:44', '2021-06-21 06:53:20'),
(155, NULL, '472.2/108/TgS', 'Surat Pengantar Perkawinan', '2021-06-17', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Winadra Oktabri', 'Balikpapan', '1990-10-05', '6471050510900002', '6471050806050015', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan NO.14', '09', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1624258386_472-2-108.pdf', '2021-06-17 06:32:34', '2021-06-21 06:53:07'),
(156, NULL, '474.1/158/TgS', 'Satu orang yang sama', '2021-06-15', 'Arini Amir, S.Sos', 'Lurah', 'Anwar Suwardi', 'Yogyakarta', '1958-07-16', '6471051607580004', '6471052104050014', 'L', 'Pensiunan', 'WNI', 'Islam', 'Kawin', 'Jl.Pembangunan No.66', '38', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031610_158.pdf', '2021-06-22 01:28:35', '2021-06-30 05:40:10'),
(157, NULL, '474.1/159/TgS', 'Penghasilan Orang Tua', '2021-06-16', 'Rosalina', 'Kasi Permas', 'Minggu Astra Galus', 'Balikpapan', '1955-12-29', '6471052912550003', '6471050601100013', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Telagasari II No.23', '36', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Pendaftaran Kuliah', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031586_159.pdf', '2021-06-22 01:32:41', '2021-06-30 05:39:46'),
(158, NULL, '474.1/160/TgS', 'Satu orang yang sama', '2021-06-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Hj.Mujiati', 'Sukoharjo', '1963-11-10', '6471055011630007', '6471061008200003', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Kapten P Tendean No.05', '29', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Ahli Waris', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031563_160.pdf', '2021-06-22 01:38:18', '2021-06-30 05:39:23'),
(159, NULL, '474.1/161/TgS', 'Penghasilan Orang Tua', '2021-06-17', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sutarno', 'Sukoharjo', '1976-04-14', '6471051404760012', '6471052304090020', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sari III', '39', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi Kuliah', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031528_161.pdf', '2021-06-22 01:42:34', '2021-06-30 05:38:48'),
(160, NULL, '474.1/162/TgS', 'Domisili Usaha', '2021-06-17', 'Kamsani', 'Sekretaris', 'Ida Nursanti', 'Ujung Pandang', '1979-01-16', '6471055601790005', '6471050609040003', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sari No.69', '34', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031515_162.pdf', '2021-06-22 01:46:17', '2021-06-30 05:38:36'),
(161, NULL, '474.1/163/TgS', 'Domisili Usaha', '2021-06-17', 'Kamsani', 'Sekretaris', 'Imelda Tecia Sri Puji Larasati', 'Tegal', '1971-12-03', '6471054312710004', '6471051404100042', 'P', 'Karyawan Swasta', 'WNI', 'Katholik', 'Kawin', 'Jl.Prapatan Dalam No.07', '08', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031504_163.pdf', '2021-06-22 01:49:33', '2021-06-30 05:38:24'),
(162, NULL, '474.1/164/TgS', 'Penghasilan Orang Tua', '2021-06-18', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ahmad Wildan Dzul Haq', 'Balikpapan', '2003-10-17', '6471051710030002', '6471051301090094', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.TelagaSari II No.82', '36', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Pendaftaran Kuliah', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031490_164.pdf', '2021-06-22 01:56:22', '2021-06-30 05:38:10'),
(163, NULL, '474.1/165/TgS', 'Penghasilan Orang Tua', '2021-06-21', 'Kamsani', 'Sekretaris', 'Sunarti', 'Blitar', '1962-09-11', '647104510962001', '647106050820005', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Hidup', 'Jl.Telogorejo No.45B', '26', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi Pendaftaran Kuliah', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031477_165.pdf', '2021-06-22 02:04:24', '2021-06-30 05:37:57'),
(164, NULL, '474.1/166/TgS', 'Kejandaan', '2021-06-21', 'Kamsani', 'Sekretaris', 'Rusniah', 'Balikpapan', '1953-12-03', '6471054312530002', '6471053112080025', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telogorejo No.34', '29', 'Telaga sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031467_166.pdf', '2021-06-22 02:16:05', '2021-06-30 05:37:47'),
(165, NULL, '474.1/167/TgS', 'Kejandaan', '2021-06-21', 'Kamsani', 'Sekretaris', 'Rubinah', 'Kediri', '1940-12-31', '647105711240075', '6471050506060012', 'P', 'Ibu Rumah tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan Dalam No.49', '08', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031457_167.pdf', '2021-06-23 00:24:39', '2021-06-30 05:37:37'),
(166, NULL, '474.1/168/TgS', 'Pemekaran Wilayah', '2021-06-22', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Suyatno', 'Magetan', '1964-02-04', '6471050402640005', '6471052402100080', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.31', '07', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi di kantor BPN Balikpapan', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031442_168.pdf', '2021-06-23 00:27:45', '2021-06-30 05:37:22'),
(167, NULL, '474.2/042/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-17', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ashri Fathan', 'Sangatta', '2002-10-07', '640040710020003', '6408041012100032', 'L', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Tanjung Pura No.28', '23', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028840_474-2-042.pdf', '2021-06-23 00:33:41', '2021-06-30 04:54:00'),
(168, NULL, '474.2/043/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-17', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Nur Ammar Ramadhan', 'Balikpapan', '1997-02-05', '6408040502950003', '6408041012100032', 'L', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Tanjung Pura No.28', '23', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028827_474-2-043.pdf', '2021-06-23 00:39:27', '2021-06-30 04:53:47'),
(169, NULL, '474.2/044/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-21', 'Kamsani', 'Sekretaris', 'Anas Rasyid Alkipranawa', 'Yogyakarta', '2015-04-14', '3273011404150002', '6471051206090035', 'L', 'Belum / tidak Bekerja', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Tanjungpura IV Blok H21', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028816_474-2-044.pdf', '2021-06-23 00:43:46', '2021-06-30 04:53:36'),
(170, NULL, '474.1/169/TgS', 'Kejandaan', '2021-06-22', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ruma Aisyah', 'Slema Yogyakarta', '1954-04-14', '6471055404540006', '6471052503100066', 'P', 'Pensiunan', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan Dalam No.56', '43', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031425_169.pdf', '2021-06-23 02:21:37', '2021-06-30 05:37:05'),
(171, NULL, '474.1/170/TgS', 'Kejandaan', '2021-06-22', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Suharti', 'Sangasanga', '1962-07-06', '6471054607620004', '6471052311090014', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjungpura No.40', '20', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625031411_170.pdf', '2021-06-23 02:26:11', '2021-06-30 05:36:51'),
(172, NULL, '474.1/171/TgS', 'Pemekaran Wilayah', '2021-06-23', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sutomo', 'Klaten', '1948-08-05', '6471050508480003', '6471050708080021', 'L', 'Buruh Lepas', 'WNI', 'Islam', 'Kawin', 'Jl.Telogorejo No.54', '26', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi di kantor BPN Balikpapan', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028966_171.pdf', '2021-06-23 02:29:59', '2021-06-30 04:56:06'),
(173, NULL, '474.1/172/Tgs', 'Kejandaan', '2021-06-23', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'H.Heriyati', 'Balikpapan', '1960-08-31', '6471057108600001', '6471051405080024', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjungpura No.12', '19', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028977_172.pdf', '2021-06-23 02:32:13', '2021-06-30 04:56:17'),
(174, NULL, '474.2/045/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-22', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Naycissa Junica Prindasari', 'Semarang', '2009-06-30', '3374117006090001', '3374110307070002', 'P', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Zeni Komp TNI AD No.K.20', '16', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028805_474-2-045.pdf', '2021-06-23 02:36:13', '2021-06-30 04:53:25'),
(175, NULL, '474.1/173/TgS', 'Kejandaan', '2021-06-23', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'HJ.Djumantan', 'Balikpapan', '1954-06-10', '6471055006540003', '6471052304090076', 'P', 'Pensiunan', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan No.62', '13', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028986_173.pdf', '2021-06-28 04:14:34', '2021-06-30 04:56:26'),
(176, NULL, '471.1/174/TgS', 'Keterangan Belum Bekerja dan Tidak sedang terikat dengan perusahaan manapun', '2021-06-23', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Kiki Wulandari', 'Balikpapan', '1995-10-07', '6471054710950004', '6471061711200016', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam Gg.Mawar No.42', '03', '6471061711200016', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625029001_174.pdf', '2021-06-28 04:24:07', '2021-06-30 04:56:41'),
(177, NULL, '474.1/175/TgS', 'Kejandaan', '2021-06-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sunarti', 'Tanjung Redeb', '1971-02-18', '6471055802710002', '6471053105070045', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Pembangunan No.87', '38', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028953_175.pdf', '2021-06-28 04:27:16', '2021-06-30 04:55:53'),
(178, NULL, '474.1/176/TgS', 'Kejandaan', '2021-06-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Zaenab', 'Balikpapan', '1962-11-24', '6471056412620002', '6471052008090097', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Pembangunan', '38', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028939_176.pdf', '2021-06-28 04:30:01', '2021-06-30 04:55:39'),
(179, NULL, '474.1/177/TgS', 'Kejandaan', '2021-06-25', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sutiani', 'Malang', '1955-07-11', '6471055107550002', '6471050408030011', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan Dalam No.32', '06', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028926_177.pdf', '2021-06-28 04:35:34', '2021-06-30 04:55:26'),
(180, NULL, '474.1/178/TgS', 'Satu orang yang sama', '2021-06-28', 'Kamsani', 'Sekretaris', 'Dimaz Lingga Barata', 'Magetan', '1988-05-10', '6471051005880007', '6471061006150007', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sari II No.30', '36', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028916_178.pdf', '2021-06-28 04:42:43', '2021-06-30 04:55:16'),
(181, NULL, '474.2/046/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Irvan Satria', 'Serang', '1999-03-24', '3672082403990002', '3672082611070337', 'L', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan No.28', '10', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028789_474-2-046.pdf', '2021-06-28 04:48:27', '2021-06-30 04:53:09'),
(182, NULL, '474.2/047/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Kusmawan', 'Serang', '1983-04-10', '360128100830005', '3672061204170002', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan No.28', '10', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028768_474-2-047.pdf', '2021-06-28 04:51:23', '2021-06-30 04:52:48'),
(183, NULL, '474.2/048/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Suratna', 'Cikampek', '1967-07-15', '3672061507670002', '3672061312070372', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan No.28', '10', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028755_474-2-048.pdf', '2021-06-28 04:59:02', '2021-06-30 04:52:35'),
(184, NULL, '474.2/049/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ahmad Suheni', 'Serang', '1976-06-16', '3672061606760003', '3672062807090001', 'L', 'Wiraswasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan No.28', '10', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028741_474-2-049.pdf', '2021-06-28 05:02:02', '2021-06-30 04:52:21'),
(185, NULL, '474.2/050/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Holil', 'Banten', '1971-04-14', '3672081404710002', '3672082611070337', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan No.28', '10', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028732_474-2-050.pdf', '2021-06-28 05:04:24', '2021-06-30 04:52:12'),
(186, NULL, '474.2/051/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ujang Priyatno', 'Serang', '1989-08-26', '3672062608890002', '3672060604100006', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan No.28', '10', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028712_474-2-051.pdf', '2021-06-28 05:06:55', '2021-06-30 04:51:52'),
(187, NULL, '474.2/052/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Syamsir', 'Pao', '1976-12-31', '7315033112760094', '6402131605190010', 'L', 'Petani/pekebun', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan No.28', '10', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028701_474-2-052.pdf', '2021-06-28 05:12:58', '2021-06-30 04:51:41'),
(188, NULL, '474.2/053/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Andi Aris', 'Lerang', '1998-05-06', '7308100605880001', '7308100205081827', 'L', 'Belum/Tidak Bekerja', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan No.28', '10', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028690_474-2-053.pdf', '2021-06-28 05:15:25', '2021-06-30 04:51:30'),
(189, NULL, '474.2/055/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-25', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Magfirah Abd.Razak', 'Makassar', '2000-11-11', '8271025111010003', '730912230790003', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telaga Sari III No.2', '41', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028668_474-2-055.pdf', '2021-06-28 05:25:35', '2021-06-30 04:51:08'),
(190, NULL, '474.2/056/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-25', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Andrew Juone Prasiska', 'Kediri', '1995-11-30', '3506013011950002', '3506092010170003', 'L', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan Dalam No.35', '41', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028657_474-2-056.pdf', '2021-06-28 05:28:17', '2021-06-30 04:50:57'),
(191, NULL, '474.2/057/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-25', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Devita Yulisa Simanjuntak', 'Sangatta', '1996-07-17', '6408045707960005', '6408042704110019', 'P', 'Karyawan Swasta', 'WNI', 'Kristen', 'Belum Kawin', 'Jl.Telaga Sari IV No.43', '31', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028645_474-2-057.pdf', '2021-06-28 05:31:24', '2021-06-30 04:50:45'),
(192, NULL, '472.2/109/TgS', 'Surat Pengantar Perkawinan', '2021-06-17', 'Arini Amir, S.Sos', 'Lurah', 'Lukhman Fathoni Wahyuto', 'Guntung Payung', '1996-08-19', '6372021908960008', '6471061504190016', 'L', 'TNI', 'WNI', 'Islam', 'Jejaka', 'Jl. Tanjung Pura IV Blok G NO.55', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-06-29 00:31:59', '2021-06-29 00:31:59'),
(193, NULL, '472.2/110/Tgs', 'Surat Pengantar Perkawinan', '2021-06-23', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Edo Adji Elwana', 'Balikpapan', '1999-08-03', '6471050308990003', '6471061711200015', 'L', 'Wiraswasta', 'WNI', 'Islam', 'Jejaka', 'Jl. Tanjungpura NO.31', '27', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-06-29 02:02:56', '2021-06-29 02:02:56'),
(194, NULL, '472.2/111/TgS', 'Surat Pengantar Perkawinan', '2021-06-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Noviandra Sagita Putri', 'Balikpapan', '2001-11-29', '6471056911010005', '6471050605090003', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Telogorejo NO.04', '30', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-06-29 02:07:20', '2021-06-29 02:07:20'),
(195, NULL, '474.2/054/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-24', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ikrarda Roy Rompas', 'Balikpapan', '1962-10-28', '3276022810620005', '3276022205090152', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Kapt Piere Tendean No.7', '31', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, 'suratpelayanan_1625028677_474-2-054.pdf', '2021-06-29 02:20:26', '2021-07-23 00:49:43'),
(196, NULL, '474.3/179/TgS', 'Keterangan Kematian', '2021-06-28', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Mochamad Rendra Maulana', 'Balikpapan', '1996-07-27', '6471052707960005', NULL, 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Pembangunan', '38', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Akta Kematian Alm.Dwi Joko Haryono', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 01:23:32', '2021-07-01 06:09:11'),
(197, NULL, '474.1/180/TgS', 'Kejandaan', '2021-06-28', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sutri Maryono', 'Mojokerto', '1955-03-30', '6471057003550004', '6471052811060017', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telaga SAri II No.43A', '36', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 01:26:03', '2021-07-01 01:26:03'),
(198, NULL, '474.1/181/TgS', 'Satu orang yang sama', '2021-06-28', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Yuniar Pratiwi,S.PD', 'Balikpapan', '1983-06-16', '6471055606830005', '6471061806210009', 'P', 'Guru', 'WNI', 'Islam', 'Kawin', 'Jl.Telogorejo No.63', '32', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi Ahli Waris', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 01:41:17', '2021-07-01 23:32:36'),
(199, NULL, '474.1/182/TgS', 'Kejandaan', '2021-06-28', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Humaidah', 'Lamongan', '1970-04-12', '6471055204700014', '6471061805200003', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan No.23', '13', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 01:44:01', '2021-07-01 01:44:01'),
(200, NULL, '474.1/183/TgS', 'Kedudaan', '2021-06-29', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Priyono', 'Sidoarjo', '1962-11-09', '6371020911620006', '6471061305140008', 'L', 'TNI', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjungpura IV No.H.31', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 01:49:02', '2021-07-01 01:49:02'),
(201, NULL, '474.1/184/TgS', 'Kejandaan', '2021-06-29', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Siti Sawiyah', 'Tanah Grogot', '1951-01-08', '6471054801510002', '6471051502100060', 'P', 'Pensiunan', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telogo Rejo No.45', '30', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 03:40:41', '2021-07-01 03:40:41'),
(202, NULL, '474.1/185/TgS', 'Kejandaan', '2021-06-29', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Pasa', 'Mandar', '1944-12-31', '6471057112440034', '6471051610020004', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjungpura No.55', '19', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 03:43:00', '2021-07-01 03:43:00'),
(203, NULL, '472.2/112/Tgs', 'Surat Pengantar Perkawinan', '2021-06-29', 'Kamsani', 'Sekretaris', 'Novita Sari Ramadani', 'Balikpapan', '2001-11-18', '6471055811010003', '6471051912070006', 'P', 'Belum/Tidak Bekerja', 'WNI', 'Islam', 'Perawan', 'Jl. Prapatan Dalam NO.39', '43', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 03:45:22', '2021-07-01 06:17:05'),
(204, NULL, '471.1/186/TgS', 'Keterangan Belum Menikah', '2021-06-29', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Muhammad Dickiaulia', 'Bandung', '1998-10-12', '6471051210980010', '6471050306090016', 'L', 'Pelajar / mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Tanjungpura IV No.22', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi Pekerjaan', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 03:46:54', '2021-07-01 03:46:54'),
(205, NULL, '474.3/187/TgS', 'Keterangan Kematian', '2021-06-30', 'Arini Amir, S.Sos', 'Lurah', 'Sumarni', 'Balikpapan', '1956-09-10', '6471055009560009', '6471051908090055', 'P', 'Ibu Rumah tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.41', '05', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Taspen', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 03:49:46', '2021-07-01 23:37:35'),
(206, NULL, '474.1/188/TgS', 'Kejandaan', '2021-06-30', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Salmiah', 'Balikpapan', '1953-12-21', '6471056112530005', '6471053105100077', 'P', 'Pensiunan', 'WNI', 'Islam', 'Cerai mati', 'Jl.Tanjungpura No.26', '23', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 03:53:16', '2021-07-01 03:53:16'),
(207, NULL, '474.1/189/TgS', 'Kejandaan', '2021-06-30', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Arbaiyah', 'Balikpapan', '1948-12-28', '6471056812480003', '6471052011070023', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjungpura No.28', '23', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 03:55:46', '2021-07-01 03:55:46'),
(208, NULL, '472.2/113/TgS', 'Surat Pengantar Perkawinan', '2021-06-30', 'Kamsani', 'Sekretaris', 'Moh Irfan', 'Pati', '1994-12-11', '3318161112940001', '6471062305180003', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan Dalam NO.115', '4', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-01 03:56:50', '2021-07-01 06:10:02'),
(209, NULL, '474.1/191/TgS', 'Kejandaan', '2021-07-02', 'Kamsani', 'Sekretaris', 'HJ.Heldy', 'Samarinda', '1945-09-05', '6471054509450001', '6471051205090059', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan No.03', '14', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 02:02:00', '2021-07-05 02:02:00'),
(210, NULL, '474.1/192/TgS', 'Kejandaan', '2021-07-02', 'Kamsani', 'Sekretaris', 'Adriana', 'Balikpapan', '1955-05-02', '6471054205550004', '6471051011090058', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan No.50', '14', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 02:05:01', '2021-07-05 02:05:01'),
(211, NULL, '474.1/193/TgS', 'Kejandaan', '2021-07-02', 'Kamsani', 'Sekretaris', 'Sudarwati', 'Semarang', '1962-11-11', '6471055111620004', '6471051508970001', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan No.03', '14', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 02:07:21', '2021-07-05 02:07:21'),
(212, NULL, '474.1/194/TgS', 'Kejandaan', '2021-07-02', 'Kamsani', 'Sekretaris', 'Nasulikah', 'Balikpapan', '1948-04-12', '6471055204480002', '6471062209200002', 'P', 'Mengurus Rumah tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjungpura No.78', '25', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 02:11:25', '2021-07-05 02:11:25'),
(213, NULL, '474.1/195/TgS', 'Kejandaan', '2021-07-02', 'Kamsani', 'Sekretaris', 'Vera F Pyoh', 'Manado', '1952-09-26', '6471056609520001', '6471052002030012', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.TelagaSari II No.48', '36', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 02:14:30', '2021-07-05 02:14:30'),
(214, NULL, '474.1/196/TgS', 'Keterangan Tanah longsor', '2021-07-02', 'Kamsani', 'Sekretaris', 'Rosita Sihombing', 'Tapanuli Utara', '1956-12-31', '6471057112560112', '6471052901090039', 'P', 'Ibu Rumah Tangga', 'WNI', 'Kristen', 'Cerai Mati', 'Jl.Telogo Rejo No.38', '28', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan ke polresta Balikpapan', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 02:17:50', '2021-07-05 02:17:50'),
(215, NULL, '474.1/197/TgS', 'Kejandaan', '2021-07-02', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Rosalina Gesti Surini', 'Kediri', '1953-10-04', '6471054410530003', '6471050910090034', 'P', 'Ibu Rumah Tangga', 'WNI', 'Katholik', 'Cerai Mati', 'Jl.Telogorejo', '30', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 02:26:59', '2021-07-05 02:26:59'),
(216, NULL, '474.1/198/TgS', 'Kejandaan', '2021-07-02', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Siti Rahmah', 'Tiga Binanga', '1956-08-27', '6471056708540002', '6471052106100068', 'P', 'Pensiunan', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjungpura No.02', '27', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 02:29:51', '2021-07-05 02:29:51'),
(217, NULL, '474.1/199/TgS', 'Kejandaan', '2021-07-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sri Sumarni', 'Klaten', '1967-07-16', '6471055607670006', '6471051202090080', 'P', 'Guru', 'WNI', 'Khatolik', 'Cerai Mati', 'Jl.Prapatan Dalam No.2A', '43', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 02:38:31', '2021-07-05 02:38:31'),
(218, NULL, '474.2/058/TgS', 'Domisili Tempat Tinggal Sementara', '2021-06-29', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Evrido Perdana Wiguna', 'Padang', '1987-05-11', '1302041105870002', '1302110510120002', 'L', 'Konsultan', 'WNI', 'Islam', 'Kawin', 'Jl,.Suka Asri No.69', '07', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 02:41:33', '2021-07-09 01:18:20'),
(219, NULL, '472.2/114/TgS', 'Surat Pengantar Perkawinan', '2021-07-01', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Juniar Anggraini', 'Balikpapan', '2000-06-19', '6471025906000001', '6471061509150009', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Tanjung Pura NO.21', '20', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 03:05:32', '2021-07-05 03:05:32'),
(220, NULL, '474.1/200/TgS', 'Kejandaan', '2021-07-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'W.Sri Wagiyati', 'Purworejo', '1940-02-08', '6471054802400001', '6471050408100054', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan AS Brimob No.72', '14', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 03:10:56', '2021-07-05 03:10:56'),
(221, NULL, '472.2/115/TgS', 'Surat Pengantar Perkawinan', '2021-07-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Didik Prahmana Putra', 'Balikpapan', '1996-09-28', '6471052809960002', '6471052509080097', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Prapatan Dalam NO.10', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 03:11:27', '2021-07-05 03:11:27'),
(222, NULL, '474.1/201/TgS', 'Kejandaan', '2021-07-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'HJ.Nurhayani', 'Samarinda', '1951-07-20', '6471056007510002', '6471050807100055', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan No.49', '14', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 03:13:56', '2021-07-05 03:13:56'),
(223, NULL, '474.1/202/TgS', 'Kejandaan', '2021-07-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Nelly Flora Tambuwun', 'Manado', '1941-04-11', '6471055104410002', '6471050912030011', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Kristen', 'Cerai Mati', 'Jl.Telaga Sari No.66', '34', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-05 03:22:53', '2021-07-05 03:22:53'),
(224, NULL, '474.1/190/TgS', 'Keterangan Kebakaran', '2021-07-01', 'Kamsani', 'Sekretaris', 'Daliya,S.pd.M.M.Pd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jl.Kapt Pierre Tendean No.63', '30', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan laporan ke Polresta Balikpapan', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-06 02:44:14', '2021-07-06 02:44:46'),
(225, NULL, '474.1/203/TgS', 'Kejandaan', '2021-07-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Nung Heruswarsi Anwar', 'Solo', '1947-04-21', '6471056104470001', '6471062206210001', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan Dalam', '02', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 01:09:11', '2021-07-07 01:09:11'),
(226, NULL, '474.1/204/TgS', 'Kejandaan', '2021-07-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Rudjiati', 'Karanganyar', '1943-06-01', '6471054106430001', '6471050105120002', 'P', 'Pensiun', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan Dalam No.08', '03', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 01:13:13', '2021-07-07 01:13:13'),
(227, NULL, '474.1/205/TgS', 'Pemekaran Wilayah', '2021-07-06', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Siti Rahmah', 'Tiga Binanga', '1956-08-27', '6471056708540002', '6471052106100068', 'P', 'Pensiunan', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjungpura No.02', '27', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Sertifikat', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 01:27:07', '2021-07-07 01:27:07'),
(228, NULL, '474.1/206/TgS', 'Penghasilan Orang Tua', '2021-07-06', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Aditya Putera Pamungkas', 'Balikpapan', '2003-08-18', '6471051808030010', '6471050601100013', 'L', 'Pelajar / Mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telaga Sari II No.16', '36', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi DI ITB', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 01:30:07', '2021-07-07 01:30:07'),
(229, NULL, '474.1/207/TgS', 'Kedudaan', '2021-07-07', 'Arini Amir, S.Sos', 'Lurah', 'Sugeng Prajitno', 'Madiun', '1950-07-08', '6471050807500005', '6471052606020006', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Cerai Hidup', 'Jl.Prapatan Dalam No.42', '43', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 03:20:43', '2021-07-09 00:47:17'),
(230, NULL, '474.1/208/TgS', 'Kejandaan', '2021-07-07', 'Arini Amir, S.Sos', 'Lurah', 'HJ.Sarpiah', 'Malang', '1942-01-01', '6471054101420006', '6471051803090070', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjung Pura No.29', '19', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 03:22:59', '2021-07-09 00:48:18');
INSERT INTO `surat_pelayanan` (`id_surat_pelayanan`, `status_final`, `nomor_surat`, `nama_jenis_surat_pelayanan`, `tanggal_surat`, `nama_pejabat_pembuat`, `jabatan`, `nama_lengkap_penduduk`, `tempat_lahir`, `tanggal_lahir`, `nik_kependudukan`, `nomor_kk`, `jenis_kelamin`, `keterangan_jenis_pekerjaan`, `kewarganegaraan`, `keterangan_agama`, `keterangan_status_kawin`, `alamat`, `no_rt`, `nama_kelurahan_penduduk`, `nama_kecamatan_penduduk`, `dasar_1`, `dasar_2`, `dasar_3`, `maksud_1`, `maksud_2`, `maksud_3`, `maksud_4`, `status_approval`, `jumlah_file_scan`, `lampiran`, `created_at`, `updated_at`) VALUES
(231, NULL, '474.1/209/TgS', 'Kejandaan', '2021-07-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Saniah', 'Balikpapan', '1954-12-13', '6471057112540093', '6471052710030008', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telogorejo No.40', '30', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 03:55:50', '2021-07-07 03:55:50'),
(232, NULL, '474.1/210/TgS', 'Kejandaan', '2021-07-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Silpiani', 'Balikpapan', '1954-01-03', '6471024301540002', '6471051206080025', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Pembangunan No.74', '38', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 03:58:35', '2021-07-07 03:58:35'),
(233, NULL, '474.1/211/TgS', 'Kejandaan', '2021-07-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Chaterina Loebis', 'T.Layang', '1943-08-31', '6471057108430001', '6471051205090061', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Khatolik', 'Cerai Mati', 'Jl.Prapatan As Brimob No.04', '14', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 04:01:07', '2021-07-07 04:01:07'),
(234, NULL, '474.2/059/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Khairun NIsa', 'Soppeng', '1995-07-25', '7312086507950002', NULL, 'P', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan Dalam No.24', '43', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 04:21:51', '2021-07-09 01:14:21'),
(235, NULL, '474.2/060/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-05', 'Arini Amir, S.Sos', 'Lurah', 'Nurheri', 'Kuningan', '1983-12-15', '3208121512830001', NULL, 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan No.62', '13', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 04:32:16', '2021-07-09 01:14:50'),
(236, NULL, '474.2/061/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-06', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Adytia Rahman', 'Malintang', '2002-04-14', '6303031404020003', '6471050412120032', 'L', 'Pelajar / mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telogorejo No.18', '33', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 04:37:09', '2021-07-09 01:13:47'),
(237, NULL, '474.2/062/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-06', 'Kamsani', 'Sekretaris', 'Cahaya Lestari Dame Hutabarat', 'Bandung', '1983-10-06', '3273184610830003', '3273103006140004', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Kristen', 'Kawin', 'Jl.Tanjungpura No.32', '23', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Domisili Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 05:52:18', '2021-07-09 01:13:58'),
(238, NULL, '474.2/063/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-06', 'Kamsani', 'Sekretaris', 'Maria Magdalena', 'Jakarta', '1981-09-08', '3173024809810001', '3173022002131004', 'P', 'Mengurus Rumah tangga', 'WNI', 'Kristen', 'Kawin', 'Jl.Tanjungpura No.32', '23', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 05:58:42', '2021-07-09 01:14:08'),
(239, NULL, '474.2/064/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-07', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Hari Satrio', 'Lahat', '1996-05-24', '1604102405960004', '1604102401080163', 'L', 'Pelajar / mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan Dalam No.01', '06', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-07 06:01:23', '2021-07-09 01:13:36'),
(240, NULL, '472.2/116/TgS', 'Surat Pengantar Perkawinan', '2021-07-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Arvan Fetura', 'Ngawi', '1995-02-11', '3521091102950002', '6471062806210003', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Zeni AD Serobong NO.14', NULL, 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-09 02:33:41', '2021-07-09 02:33:41'),
(241, NULL, '474.1/212/TgS', 'Kejandaan', '2021-07-07', 'Kamsani', 'Sekretaris', 'Maria', 'Bangkalan', '1949-12-31', '6471057112490069', '6471052101090089', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telogo Rejo No.27', '30', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 01:49:29', '2021-07-16 01:49:29'),
(242, NULL, '474.1/213/TgS', 'Penghasilan Orang Tua', '2021-07-08', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Dwi Sholikah', 'Sukoharjo', '1999-11-12', '6471055211990010', '6471052602070008', 'P', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telaga Sari III No.64A', '39', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi UKT', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 01:52:34', '2021-07-23 00:47:37'),
(243, NULL, '474.1/214/TgS', 'Kejandaan', '2021-07-08', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Waminah', 'Buton', '1968-12-31', '6471057112680009', '6471062101190009', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan Dalam No.51', '05', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 01:56:15', '2021-07-16 01:56:15'),
(244, NULL, '474.1/215/TgS', 'Kejandaan', '2021-07-09', 'Arini Amir, S.Sos', 'Lurah', 'Rahabiah', 'Ujung Lero', '1959-01-01', '6471054101590016', '6471052502100038', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjung Pura No.45', '19', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 02:21:53', '2021-07-23 00:50:46'),
(245, NULL, '474.1/216/TgS', 'Kejandaan', '2021-07-09', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ardiah', 'Balikpapan', '1952-11-01', '6471054111520001', '6471052904040005', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjungpura No.32', '19', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 02:24:16', '2021-07-23 00:44:11'),
(246, NULL, '474.1/217/TgS', 'Kejandaan', '2021-07-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Mulyati', 'Jombang', '1948-05-17', '6471055705480003', '6471051311080086', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telaga Sari No.59', '41', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun Warakawuri TNI-AL', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 02:27:13', '2021-07-16 02:27:13'),
(247, NULL, '474.1/218/TgS', 'Kejandaan', '2021-07-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sutini', 'Balikpapan', '1955-06-17', '6471055706550006', '6471052509080101', 'P', 'Pembantu RT', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjungpura No.37', '19', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Balikpapan Kota', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 02:30:19', '2021-07-16 02:30:19'),
(248, NULL, '474.1/219/TgS', 'Kejandaan', '2021-07-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'HJ.Lawingnah Ningsih', 'Pontianak', '1959-12-28', '6471056812590002', '6471052603100005', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan Dalam No.71', '06', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 02:33:02', '2021-07-16 02:33:02'),
(249, NULL, '474.1/220/TgS', 'Kejandaan', '2021-07-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Noorsehan', 'Samarinda', '1942-12-31', '6471057112420074', '6471051305090048', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan (Ase Brimob) No.05', '14', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Administrasi Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 02:35:41', '2021-07-16 02:35:41'),
(250, NULL, '474.1/221/TgS', 'Kejandaan', '2021-07-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Rahel Antoni', 'Sangir', '1937-11-02', '6471054211370001', '6471052808080091', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Kristen', 'Cerai Mati', 'Jl.Telogorejo No.12', '46', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 02:38:23', '2021-07-16 02:38:23'),
(251, NULL, '474.1/222/TgS', 'Penghasilan Orang Tua', '2021-07-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Laila Fatimatus Zahro', 'Balikpapan', '1998-12-16', '6471055612980007', '6471051205050004', 'P', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl. Telaga Sari III No.105', '41', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Administrasi UKT', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 02:48:29', '2021-07-23 00:47:46'),
(252, NULL, '474.1/223/TgS', 'Kejandaan', '2021-07-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Rukiyah', 'Malang', '1941-12-31', '6471057112410038', '6471050302050007', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telogo Rejo No.18', '33', 'Telaga Sari', 'Balikpapn Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 02:52:03', '2021-07-16 02:52:03'),
(253, NULL, '474.1/224/TgS', 'Kejandaan', '2021-07-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Suliyemiati', 'Madiun', '1968-04-05', '6471054504680005', '6471051104050017', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Pembangunan No.104', '38', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 02:55:29', '2021-07-16 02:55:29'),
(254, NULL, '474.1/225/TgS', 'Kejandaan', '2021-07-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sri Juwarni', 'Sleman', '1965-12-10', '6471055012650005', '6471052201090048', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Pembangunan', '38', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 03:04:19', '2021-07-16 03:04:19'),
(255, NULL, '474.1/226/TgS', 'Satu Orang Yang Sama', '2021-07-14', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Arif Sumadi.M', 'Jombang', '1960-08-18', '6471051808600003', '6471052808080006', 'L', 'Buruh Lepas', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan No.53', '14', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi Pertanahan', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 03:08:29', '2021-07-16 03:08:29'),
(256, NULL, '474.1/227/TgS', 'Kejandaan', '2021-07-15', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Johana Manuputty', 'Balikpapan', '1949-10-15', '6471055510490001', '6471060212150006', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Kristen', 'Cerai Mati', 'Jl.Tanjung Pura No.25', '25', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-16 03:11:03', '2021-07-16 03:11:03'),
(257, NULL, '474.1/228/TgS', 'Kejandaan', '2021-07-15', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sakdiyah', 'Balikpapan', '1953-12-12', '6471055212530004', '6471051809070022', 'P', 'PNS', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telogorejo No.34', '28', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-19 00:37:48', '2021-07-19 00:37:48'),
(258, NULL, '474.1/229/TgS', 'Orang Yang Sama', '2021-07-15', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Suyanto', 'Solo', '1962-07-05', NULL, NULL, 'L', NULL, 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sari No.30', '34', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi Ahli Waris', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-19 01:12:02', '2021-07-19 01:12:02'),
(259, NULL, '474.1/230/TgS', 'Kejandaan', '2021-07-15', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Mariyam', 'Tulung Agung', '1944-02-02', '6471054202440001', '6471051703090094', 'P', 'Mengurus Rumah tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Tanjung Pura No.14', '20', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-19 01:59:56', '2021-07-19 01:59:56'),
(260, NULL, '474.2/065/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-07', 'Kamsani', 'Sekretaris', 'Arisalim Silawane', 'Sungai Nyamuk', '1995-01-23', '6404052301950001', '6501052612190006', 'L', 'Pelajar/mahasisa', 'WNI', 'Islam', 'Kawin', 'Jl.Zeni AD Asrama Zidam', '15', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-21 01:43:50', '2021-07-23 01:00:24'),
(261, NULL, '474.2/066/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-07', 'Kamsani', 'Sekretaris', 'Hendra Gobel', 'Luwuk', '1982-11-05', '3175010511820009', '3175010802110044', 'L', 'TNI', 'WNI', 'Islam', 'Kawin', 'Jl.Zeni AD Asrama Zidam', '15', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-21 01:46:02', '2021-07-23 01:00:14'),
(262, NULL, '474.2/067/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-09', 'Kamsani', 'Sekretaris', 'Sutanto', 'Jombang', '1968-11-10', '3517051011680001', '3517051603110006', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Telagasari I No.II', '45', 'Telaga Sari', 'Balikpapan kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-21 01:51:08', '2021-07-23 00:45:55'),
(263, NULL, '474.2/068/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-09', 'Rosalina', 'Kasi Permas', 'Truitje Oping', 'Wanga', '1933-02-27', '6474026702330002', '6471060608150009', 'P', 'Tidak Bekerja', 'WNI', 'Kristen', 'Cerai Mati', 'Jl.Pembangunan', '38', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-21 01:55:21', '2021-07-21 01:55:21'),
(264, NULL, '472.2/117/TgS', 'Surat Pengantar Nikah', '2021-07-05', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Raendy Pramana Putra', 'Surabaya', '1997-05-23', '3578272305970001', '6471061612190007', 'L', 'Karyawan BUMN', 'WNI', 'Islam', 'Jejaka', 'Jl. Telaga Sari III NO.33', '35', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-21 03:29:41', '2021-07-21 03:29:41'),
(265, NULL, '472.2/118/TgS', 'Surat Pengantar Nikah', '2021-07-06', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sara Vimala Octaviani', 'Balikpapan', '1998-10-16', '1671075610980010', '6471060303210011', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Tanjung Pura NO.78', '25', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-21 03:41:18', '2021-07-21 03:41:18'),
(266, NULL, '472.2/119/TgS', 'Surat Pengantar Perkawinan', '2021-07-08', 'Arini Amir, S.Sos', 'Lurah', 'Arofah. M', 'Jombang', '1975-12-10', '6471055012750008', '6471061710170012', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Janda', 'Jl. Telaga Sari I Gg Merdeka VII NO.105', '45', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-21 03:46:09', '2021-07-21 03:46:09'),
(267, NULL, '472.2/120/TgS', 'Surat Pengantar Perkawinan', '2021-07-14', 'Rosalina', 'Kasi Permas', 'Dewi Purwati', 'Balikpapan', '1989-10-19', '6471055510890003', '6471051601090048', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Perawan', 'Jl. Prapatan NO.57', '11', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-21 04:24:40', '2021-07-23 00:52:54'),
(268, NULL, '472.2/121/TgS', 'Surat Pengantar Perkawinan', '2021-07-15', 'Rosalina', 'Kasi Permas', 'E. Dina Murtiani', 'Balikpapan', '1970-03-24', '6471056403700002', '6471052109100108', 'P', 'Karyawan BUMN', 'WNI', 'Islam', 'Janda', 'Jl. Prapatan NO.120', '14', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-21 04:28:02', '2021-07-23 00:52:44'),
(269, NULL, '474.2/069/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-09', 'Rosalina', 'Kasi Permas', 'Jeltje Kessek', 'Wanga', '1955-08-25', '6474026508550002', '7102130608200001', 'P', 'Pensiunan', 'WNI', 'Kristen', 'Cerai Mati', 'Jl.Pembangunan', '38', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-22 00:19:11', '2021-07-22 00:19:11'),
(270, NULL, '474.2/070/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-15', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ferry Bagus Angga Sariyanto', 'Pati', '1988-10-23', '3318082310880003', '3318083101120005', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Telagasari', '40', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-22 00:21:59', '2021-07-22 00:21:59'),
(271, NULL, '474.1/231/TgS', 'Penghasilan Orang Tua', '2021-07-19', 'Rosalina', 'Kasi Permas', 'Sherliy Veri Andayani', 'Berau', '2003-09-28', '6471056809030007', '6471053003100011', 'P', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum kawin', 'Jl.Telaga Sari III No.18', '34', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi Kuliah Di UPN Veteran Jatim', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-22 01:16:09', '2021-07-23 00:45:06'),
(272, NULL, '474.1/232/TgS', 'Penghasilan Orang Tua', '2021-07-19', 'Rosalina', 'Kasi Permas', 'Sherliy Veri Andayani', 'Berau', '2003-09-28', '6471056809030007', '6471053003100011', 'P', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telaga Sari III No.18`', '34', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi Kuliah Di UPN Veteran Jatim', NULL, NULL, NULL, 0, NULL, NULL, '2021-07-22 01:20:03', '2021-07-22 01:20:03'),
(273, NULL, '474.1/233/TgS', 'Penghasilan orang tua', '2021-07-19', 'Rosalina, SE', 'Plt Kasi Pemberdayaan Masyarakat', 'Husnul Khotimah', 'Balikpapan', '2000-05-19', '6471055905000006', '6471060607200009', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Telaga Sari III NO.18 B', '39', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-28 02:29:46', '2021-07-28 03:13:31'),
(274, NULL, '474.1/234/TgS', 'Penghasilan Orang Tua', '2021-07-19', 'Rosalina, SE', 'Plt Kasi Pemberdayaan Masyarakat', 'Sitti Mujahida Tahir', 'Palattae', '2001-09-13', '6471025309010001', '6471061110170003', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Telaga Sari NO.26', '35', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-28 03:26:58', '2021-07-28 03:26:58'),
(275, NULL, '474.1/247/TgS', 'Domisili Mushollah', '2021-07-28', 'Kamsani', 'Sekretaris', 'Budi', 'Balikpapan', '1978-04-05', '6471040504780003', NULL, 'P', 'Guru', 'WNI', 'Islam', 'Kawin', 'Jl. Telaga Sari NO.02', '35', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-28 04:02:26', '2021-08-01 04:28:21'),
(276, NULL, '474.1/235/TgS', 'Penghasilan Orang Tua', '2021-07-19', 'Rosalina, SE', 'Plt, Kasi Pemberdayaan Masyarakat', 'Alnes Adini', 'Balikpapan', '2002-04-26', '647105660420005', '6471051205100078', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Telaga Sari III NO.75 A', '34', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-28 04:19:41', '2021-07-28 04:19:41'),
(277, NULL, '474.1/236/TgS', 'Penghasilan Orang Tua', '2021-07-21', 'Kamsani', 'Sekretaris', 'Caesar Alif Aryapradana', 'Balikpapan', '1999-07-31', '3373043107990001', '6471062709160030', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Tanjungpura III Blok 44 NO. 12', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-28 04:50:41', '2021-08-01 04:28:12'),
(278, NULL, '422.5/237/TgS', 'Penghasilan Orang Tua', '2021-07-23', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Achmad Haryo Pratomo', 'Balikpapan,', '2003-04-10', '647105100403001', '6471060806180002', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Perawan', 'Jl. Telogorejo NO. 29', '30', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-28 05:05:44', '2021-07-28 05:05:44'),
(279, NULL, '474.1/238/TgS', 'Belum Pernah Menikah', '2021-07-23', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Patresia Parsi', 'Purworejo', '1944-10-11', '6471035110440001', '6471051201090053', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Janda', 'Jl. Prapatan Dalam NO.137', '47', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-28 05:23:48', '2021-07-28 05:23:48'),
(280, NULL, '471.1/239/TgS', 'Belum Pernah Menikah', '2021-07-26', 'Rosalina, SE', 'Plt Kasi Pemberdayaan Masyarakat', 'Muhammad Paksi Danubrata', 'Pare-Pare', '1998-03-12', '6471051203980009', '6471051709120038', 'L', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Tanjungpura NO. 08', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-28 05:37:51', '2021-08-04 01:11:18'),
(281, NULL, '474.1/241/TgS', 'Orang yang sama', '2021-07-27', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Sulastri', 'Blitar', '1969-07-05', '6471054507690009', '6471052808060026', 'P', 'Guru', 'WNI', 'Islam', 'Kawin', 'Jl. Telagasari NO.05', '41', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-30 00:23:58', '2021-07-30 00:23:58'),
(282, NULL, '474.1/242/TgS', 'Kartu BPNT Hilang', '2021-07-26', 'Rosalina, SE', 'Plt, Kasi Pemberdayaan Masyarakat', 'Syahrunsyah', 'Balikpapan', '1976-10-21', '6471052110760007', '6471052102060006', 'L', 'Tidak Bekerja', 'WNI', 'Islam', 'Kawin', 'Jl. Prapatan NO.55', '09', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-30 00:28:26', '2021-07-30 00:28:26'),
(283, NULL, '474.1/243/TgS', 'Orang yang sama', '2021-07-27', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'R Cahyo Setio S', 'Samarinda', '1985-12-25', '6471032512850005', '6471051007120052', 'L', 'Karyawan BUMN', 'WNI', 'Islam', 'Kawin', 'Jl. Tanjung Pura NO.43', '21', 'Telaga sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-30 00:55:16', '2021-07-30 00:55:16'),
(284, NULL, '474.1/244/TgS', 'Domisili Perusahaan', '2021-07-27', 'Rosalina, SE', 'Plt, Kasi Pemberdayaan Masyarakat', 'Hermanto', 'Pamekasan', '1972-02-19', '6471051902720002', '6471051108050006', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl. Prapatan Dalam NO.21', '44', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-30 01:53:02', '2021-07-30 01:53:02'),
(285, NULL, '474.1/245/TgS', 'Janda', '2021-07-27', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Supiah', 'Balikpapan', '1948-01-15', '6471055501480001', '6471051702100065', 'P', 'Ibu Rumah tangga', 'WNI', 'Islam', 'Janda', 'Jl. Telogo Rejo NO 59', '28', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-30 02:04:53', '2021-07-30 02:04:53'),
(286, NULL, '422.5/246/TgS', 'Penghasilan Orang tua', '2021-07-27', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Alvin Hakim', 'Balikpapan', '2002-10-16', '6471051610020004', '6471052210070003', 'P', 'Pelajar/Mahasiswa', 'WNI', 'Islam', 'Jejaka', 'Jl. Telagasari NO.34', '034', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-07-30 02:17:50', '2021-07-30 02:17:50'),
(287, NULL, '474.1/248/TgS', 'Pengahasilan Orang Tua', '2021-07-28', 'Rosalina', 'Kasi Permas', 'Madon', 'Bone', '1956-07-12', '6471051207560007', '6471050503090047', 'L', 'Wiraswasta', 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sari No.70', '34', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Pembebasan UKT', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-03 00:38:04', '2021-08-03 00:38:04'),
(288, NULL, '474.1/249/TgS', 'Kejandaan', '2021-07-29', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Aquani', 'Kota Baru', '1952-06-15', '6471055506520004', '6471050508090052', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telogorejo No.23', '31', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-03 00:41:43', '2021-08-03 00:41:43'),
(289, NULL, '474.1/250/TgS', 'Keterangan Anak Kandung', '2021-07-29', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Majidatul Himmah Crismonica', 'Tulungagung', '1998-05-19', '6471055905980004', '6471052705090103', 'P', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan Dalam No.71', '47', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Persyaratan Administrasi Kuliah', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-03 00:48:37', '2021-08-03 00:48:37'),
(290, NULL, '474.1/251/TgS', 'Orang Yang Sama', '2021-07-30', 'Rosalina', 'Kasi Permas', 'M.Juli', 'Indramayu', '1966-03-06', '6471050603660009', '6471050708080025', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Tanjung Pura No.33', '20', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Surat Keterangan Waris', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-03 00:59:54', '2021-08-03 00:59:54'),
(291, NULL, '471.1/252/TgS', 'Belum Pernah Menikah', '2021-07-30', 'Rosalina', 'Kasi Permas', 'Rizky Septian Warouw', 'Balikpapan', '1998-09-28', '6471052809980002', '6471051611090062', 'L', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan No.76', '13', 'Telaga Sari', 'Balikpapan kota', NULL, NULL, NULL, 'Persyaratan Administrasi Bank', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-03 01:05:06', '2021-08-03 01:05:06'),
(292, NULL, '474.1/253/TgS', 'Orang Yang Sama', '2021-08-02', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Muhammad Hasanul Basri', 'Dasan Borok', '1988-11-25', '5203132511880001', '6471062908160003', 'L', 'Wiraswasta', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan Dalam No.04', '05', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi Notaris', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-03 01:08:16', '2021-08-03 01:08:16'),
(293, NULL, '474.2/71/TgS', 'Domisili Tempat Tinggal Sementara', '2021-07-26', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Aulia Ulfah Alamin,ST', 'Lhoksumawe', '1983-08-26', '3174086608830001', '3175051507100050', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.Tanjungpura', '23', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-03 01:16:31', '2021-08-03 01:16:31'),
(294, NULL, '474.1/254/TgS', 'Kejandaan', '2021-08-03', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Rusmini', 'Jatiroto(JA-TIM)', '1950-04-20', '6471056004500004', '6471063007210003', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.TanjungPura No.27', '21', 'Telaga sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-03 01:30:52', '2021-08-03 01:30:52'),
(295, NULL, '474.2/71/TgS', 'Domisili Tempat Tinggal Sementara', '2021-08-03', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Teddy Bayu Indrawan', 'Samarinda', '1989-11-24', '6471052411890005', '6403050701150007', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Kawin', 'Jl.TanjungPura No.15', '23', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 00:45:59', '2021-08-04 00:46:23'),
(296, NULL, '474.2/72/TgS', 'Domisisli Tempat Tinggal Sementara', '2021-08-03', 'Kamsani', 'Sekretaris', 'Dicky Aryansyah Suharya', 'Jakarta', '1999-06-17', '3603121706990006', '3603122411080060', 'L', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan No.62', '13', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Tempat Tinggal Sementara', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 01:07:30', '2021-08-04 01:07:30'),
(297, NULL, '474.1/255/TgS', 'Kejandaan', '2021-08-03', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Ummi Fadlillah', 'Trenggalek', '2021-07-15', '6471055507670011', '6471053103080039', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telaga Sari III No.01', '35', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 01:09:44', '2021-08-04 01:09:44'),
(298, NULL, '472.2/122/TgS', 'Surat Pengantar Nikah', '2021-07-22', 'Kamsani', 'Sekretaris', 'Yuli Nuryanti', 'Balikpapan', '1992-07-02', '6471054207920006', '6471052205120030', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telogorejo No.35', '28', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 01:15:59', '2021-08-04 01:15:59'),
(300, NULL, '472.2/123/TgS', 'Pengantar perkawinan', '2021-07-22', 'Kamsani', 'Sekretaris', 'Roy Aditya', 'Bengkulu', '1997-12-22', '1771022212070001', '6471062210180010', 'L', 'TNI', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Tanjungpura III Blok 44 No.03', '18', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 03:31:29', '2021-08-04 03:31:29'),
(301, NULL, '472.2/124/TgS', 'Pengantar Perkawinan', '2021-07-26', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Bramantya Fitra Sanjaya', 'Balikpapan', '1994-03-13', '6471051303940004', '6471062307210003', 'L', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum kawin', 'Jl.Prapatan Dalam I', '06', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 03:41:03', '2021-08-04 03:41:03'),
(302, NULL, '472.2/125/TgS', 'Pengantar Perkawinan', '2021-07-26', 'Rosalina', 'Kasi Permas', 'Siti Mutmainah', 'Balikpapan', '2001-04-08', '6471054804010004', '6471050709120057', 'P', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telaga Sari', '35', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 03:49:18', '2021-08-04 03:49:18'),
(303, NULL, '472.2/126/TgS', 'Pengantar Perkawinan', '2021-07-26', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Muhammad Aminnodin', 'Kelua', '1995-09-05', '6471050509950004', '6471050202100074', 'L', 'Pedagang', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telogorejo No.47', '028', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 04:02:00', '2021-08-04 04:02:00'),
(304, NULL, '472.2/127/TgS', 'Pengantar Perkawinan', '2021-07-28', 'Arini Amir,S.Sos', 'Lurah', 'Rizal Wahidhan Al-Anshori', 'Balikpapan', '1995-08-27', '6471052708950008', '6471051609020001', 'L', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan Dalam No.69', '47', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 04:04:40', '2021-08-04 04:04:40'),
(305, NULL, '472.2/128/TgS', 'Pengantar Perkawinan', '2021-07-29', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Lia Febriana', 'Balikpapan', '1991-02-14', '6471055402910002', '6471051610080085', 'P', 'Karyawan Swasta', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Telaga Sari II No.79', '36', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 04:06:53', '2021-08-04 04:06:53'),
(306, NULL, '472.2/129/TgS', 'Pengantar Perkawinan', '2021-07-29', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Niken Ayu Novian Nanda Putri', 'Balikpapan', '2001-11-01', '3507324111010002', '6471060307190007', 'P', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan Dalam No.32', '05', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 04:09:45', '2021-08-04 04:09:45'),
(307, NULL, '472.2/130/TgS', 'Pengantar Perkawinan', '2021-07-30', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Febyan Nur Sandi', 'Balikpapan', '1999-02-28', '6471052802990003', '6471052001090061', 'L', 'Pelajar/mahasiswa', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Tanjungpura No.18', '22', 'TelagaSari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 04:18:31', '2021-08-04 04:18:31'),
(308, NULL, '472.2/131/TgS', 'Pengantar Perkawinan', '2021-08-03', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Mira Arisanti', 'Balikpapan', '1985-10-01', '6471054110850006', '647106202150001', 'P', 'Wiraswasta', 'WNI', 'Islam', 'Cerai Hidup', 'Jl.Telogorejo No.42', '26', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 04:20:54', '2021-08-04 04:20:54'),
(309, NULL, '472.2/132/TgS', 'Pengantar Perkawinan', '2021-08-03', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Prasetyo Indra Surono', 'Balikpapan', '1994-11-14', '6471051411940008', '6471050811040004', 'L', 'Karyawan Swasta', 'WNI', 'Islam', 'Belum Kawin', 'Jl.Prapatan Dalam No.11', '01', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-08-04 04:23:32', '2021-08-04 04:23:32'),
(310, NULL, '474.1/256/TgS', 'Kejandaan', '2021-08-04', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Eko Darsini,S.Pd', 'Kulon Progo', '1962-08-30', '6471057008620003', '6471052509080074', 'P', 'PNS', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Telogorejo No.18', '42', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Mengurus Pensiun', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-05 01:25:23', '2021-08-05 01:25:23'),
(311, NULL, '474.1/257/TgS', 'Kejandaan', '2021-08-04', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Astutie', 'Trenggalek', '1962-08-12', '6471055208620013', '6471062907210008', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Cerai Mati', 'Jl.Prapatan No.63', '08', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-08-05 01:28:46', '2021-08-05 01:28:46'),
(312, NULL, '474.1/258/TgS', 'Orang Yang Sama', '2021-08-04', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Suci Larassati', 'Tenggarong', '1992-01-16', '6474035601920005', '6471061104170008', 'P', 'Ibu Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Telaga Sari II No.75', '36', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi Bank', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-05 01:31:21', '2021-08-05 01:31:21'),
(313, NULL, '474.1/259/TgS', 'Orang Yang Sama', '2021-08-04', 'Siti Utami', 'Kasi Pemerintahan dan Pelayanan Publik', 'Astutie', 'Trenggalek', '1962-08-12', '6471055208620013', '6471062907210008', 'P', 'Mengurus Rumah Tangga', 'WNI', 'Islam', 'Kawin', 'Jl.Prapatan No.63', '08', 'Telaga Sari', 'Balikpapan Kota', NULL, NULL, NULL, 'Administrasi Ahli Waris', NULL, NULL, NULL, 0, NULL, NULL, '2021-08-05 01:33:39', '2021-08-05 01:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_user` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama_lengkap`, `username`, `email`, `jabatan`, `nomor_hp`, `password`, `role`, `status_user`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kamsani', 'kamsani', 'kamsani@gmail.com', 'Sekretaris', '08000000', '$2y$10$74QrSU/N8hDHZkN82mZBOOadzSml4Z4EaHU3AIet8c636Zzz2VlGy', 'admin', '1', NULL, '2021-04-18 21:31:24', '2021-05-03 06:29:04'),
(3, 'Riski Maulana Rahman', 'riski', 'riski@gmail.com', 'Staf Pemberdayaan Masyarakat', '123', '$2y$10$S4gumQpg7h87ibEHnS2D/u4f5nFG6DodUcE2UBfZdQhEK8L7XPAK2', 'admin', '1', NULL, '2021-04-18 21:31:55', '2021-04-24 03:15:55'),
(5, 'Herlinawati', 'Lina', 'lina@gmail.com', 'Admin Pelayanan', '08000', '$2y$10$bBdKWBrRkx//Pvd/cY1ZX.8UCWtc8qlOKyT1rWrlGZuHVq47iGQc2', 'operator', '1', NULL, '2021-04-27 04:46:29', '2021-05-07 01:18:32'),
(6, 'Anuwar Achmad', 'awai', 'awaibanjar@gmail.com', 'Admin Sekretariat', '800', '$2y$10$ATfo2mjxTVGBTq3S/2rdgekgINYEMkM0I9Dv8247fR4chDVo7DvMi', 'operator', '1', NULL, '2021-04-28 04:14:57', '2021-05-06 01:22:28'),
(7, 'Noor Zariyah', 'Ria', 'ria@gmail.com', 'Admin Pelayanan', '800', '$2y$10$wmvzLgYxn4LGEyObPhZ5P.d3.pi20SMlFYOThtcN8ILONEYpUp4mK', 'operator', '1', NULL, '2021-04-29 00:38:42', '2021-05-11 03:23:12'),
(8, 'Mr. hermawan', 'iwan', 'her@gmail.com', 'staf pelayanan', '08111111', '$2y$10$lAkPl6CVgw3n7kcdaf70hO4fAZI8TNwPZzKwCuUd/UrXxocbul3r6', 'supervisor', '1', NULL, '2021-05-03 03:02:20', '2021-05-03 03:03:55'),
(10, 'user spv', 'userspv', 'userspv@gmail.com', 'Staff', '0812345', '$2y$10$GlS8J.EKyxdUC5z9JUw9KeI2kc1wDPVtXLYz4GvfHuzfJGf0yfqom', 'supervisor', '1', NULL, '2021-05-06 02:13:14', '2021-05-06 02:13:14'),
(11, 'Kepala Seksi', 'Kepala Seksi', 'kasi@gmail.com', 'Kepala Seksi', '08', '$2y$10$9wd0TLklTNufaenWQb3mk.R5Kp41zghrRjwMyVecbLeQbzrNnuei.', 'supervisor', '1', NULL, '2021-05-09 13:13:13', '2021-05-26 04:00:51'),
(12, 'Arini Amir', 'Arini', 'arini@gmail.com', 'Lurah', '08000000', '$2y$10$uiofKF9O8jUARQ0SbAdyU.i28yZFmrm48TC6na55Q5bzA0YkTu0Oa', 'admin', '1', NULL, '2021-05-21 01:35:51', '2021-05-21 01:40:50'),
(13, 'Ketua RT', 'rt@gmail.com', 'rt@gmail.com', 'RT', '0800', '$2y$10$blx9.LOC4FH6ViR/tSveeO8Yla3QLGGt3zBfG6sc75xltIm9t9rS6', 'supervisor', '1', NULL, '2021-05-25 05:23:31', '2021-05-26 03:50:32'),
(14, 'Rishna Sekarningsih', 'rishnaskr', 'rishnaskr@gmail.com', 'Staff', '082138634000', '$2y$10$tnKTJf2rg.cZS2F02joqMe/6uxk5RU33k3ULyAM7/itBOnB/IK7ea', 'admin', '1', NULL, '2021-06-30 15:56:52', '2021-06-30 15:56:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list_output_file`
--
ALTER TABLE `list_output_file`
  ADD PRIMARY KEY (`id_output_file`,`id_surat`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id_penduduk`) USING BTREE;

--
-- Indexes for table `ref_agama`
--
ALTER TABLE `ref_agama`
  ADD PRIMARY KEY (`id_agama`) USING BTREE;

--
-- Indexes for table `ref_daftar_syarat_surat_pelayanan`
--
ALTER TABLE `ref_daftar_syarat_surat_pelayanan`
  ADD PRIMARY KEY (`id_syarat`) USING BTREE;

--
-- Indexes for table `ref_gol_darah`
--
ALTER TABLE `ref_gol_darah`
  ADD PRIMARY KEY (`id_gol_darah`) USING BTREE;

--
-- Indexes for table `ref_ijazah_tertinggi`
--
ALTER TABLE `ref_ijazah_tertinggi`
  ADD PRIMARY KEY (`id_ijazah_tertinggi`) USING BTREE;

--
-- Indexes for table `ref_jenis_pekerjaan`
--
ALTER TABLE `ref_jenis_pekerjaan`
  ADD PRIMARY KEY (`id_jenis_pekerjaan`) USING BTREE;

--
-- Indexes for table `ref_jenis_surat_pelayanan`
--
ALTER TABLE `ref_jenis_surat_pelayanan`
  ADD PRIMARY KEY (`id_jenis_surat_pelayanan`) USING BTREE;

--
-- Indexes for table `ref_status_kawin`
--
ALTER TABLE `ref_status_kawin`
  ADD PRIMARY KEY (`id_status_kawin`) USING BTREE;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id_surat_keluar`) USING BTREE;

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_surat_masuk`) USING BTREE;

--
-- Indexes for table `surat_pelayanan`
--
ALTER TABLE `surat_pelayanan`
  ADD PRIMARY KEY (`id_surat_pelayanan`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list_output_file`
--
ALTER TABLE `list_output_file`
  MODIFY `id_output_file` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id_penduduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ref_daftar_syarat_surat_pelayanan`
--
ALTER TABLE `ref_daftar_syarat_surat_pelayanan`
  MODIFY `id_syarat` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `ref_gol_darah`
--
ALTER TABLE `ref_gol_darah`
  MODIFY `id_gol_darah` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ref_jenis_pekerjaan`
--
ALTER TABLE `ref_jenis_pekerjaan`
  MODIFY `id_jenis_pekerjaan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `ref_jenis_surat_pelayanan`
--
ALTER TABLE `ref_jenis_surat_pelayanan`
  MODIFY `id_jenis_surat_pelayanan` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id_surat_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `surat_pelayanan`
--
ALTER TABLE `surat_pelayanan`
  MODIFY `id_surat_pelayanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
