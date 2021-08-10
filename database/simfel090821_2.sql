-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2021 at 04:36 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simfel`
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
-- Table structure for table `ref_jabatan`
--

CREATE TABLE `ref_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_jabatan`
--

INSERT INTO `ref_jabatan` (`id_jabatan`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Sekretaris', '2021-08-09 13:10:25', '2021-08-09 13:10:25'),
(2, 'Kasi Pemerintahan & PP', NULL, NULL),
(3, 'Kasi Trantip & LH', NULL, NULL),
(4, 'Kasi Pemberdayaan Masyarakat', NULL, NULL);

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
('ookBdVJvIixxxfSgi7aw4E2DVwBS7bOiOLlvxr3z', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOG1LclBTRUh6a2JXSjVZMkR4M1g2cm5wZEptTHEzclBwRm5KcGpvaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3VyYXQtbWFzdWsiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1628519639);

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id_surat_keluar` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat_masuk` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
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

INSERT INTO `surat_masuk` (`id_surat_masuk`, `id_users`, `nomor_surat`, `perihal_surat`, `tanggal_surat`, `tanggal_terima_surat`, `asal_surat`, `nama_pejabat_penerima_disposisi`, `status_disposisi`, `keterangan_pemberi_disposisi`, `keterangan_penerima_disposisi`, `ringkasan_surat`, `jumlah_file_scan`, `lampiran`, `created_at`, `updated_at`) VALUES
(55, 1, '1/admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-09 14:26:50', '2021-08-09 14:26:50'),
(56, 2, '1/kasipemerintahan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-09 14:27:28', '2021-08-09 14:27:28'),
(57, 3, '1/kasitrantip', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-09 14:27:46', '2021-08-09 14:27:46'),
(58, 4, '1/kasipemberdayaan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-09 14:28:31', '2021-08-09 14:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `surat_pelayanan`
--

CREATE TABLE `surat_pelayanan` (
  `id_surat_pelayanan` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
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
(1, 'admin', 'admin', 'admin@mail.com', 'Sekretaris', '0822182993', '$2y$10$/DoA5h9Ycf.Fqt.AkRmtOe0Q49wQ2BbDGf4lMEooz/FL/Px9brYiy', 'admin', '1', NULL, '2021-08-08 22:30:42', '2021-08-09 05:14:10'),
(2, 'kasi pemerintahan', 'kasipemerintahan', 'kasipemerintahan@mail.com', 'Kasi Pemerintahan & PP', '08123', '$2y$10$yFkfwsBL3wc9kExtDnWs6uWBAE2rbWqC.WNrWzxJ3YWPC/jotpnGK', 'supervisor', '1', NULL, '2021-08-09 05:06:11', '2021-08-09 05:14:16'),
(3, 'kasi trantip', 'kasitrantip', 'kasitrantip@mail.com', 'Kasi Trantip & LH', '08123', '$2y$10$tjuyOf0.Sfm3CACU6FRNZOVgB8d5SpSWWdUdYC8FCXKbxkY5O7gIS', 'supervisor', '1', NULL, '2021-08-09 05:06:34', '2021-08-09 05:14:21'),
(4, 'kasi pemberdayaan', 'kasipemberdayaan', 'kasipemberdayaan@mail.com', 'Kasi Pemberdayaan Masyarakat', '08123', '$2y$10$FkCt7iXCNBQx7nlkUtnYU.T82Zp3dU79YD0B6voXD5WJw6pssQkYa', 'supervisor', '1', NULL, '2021-08-09 05:07:00', '2021-08-09 05:14:28');

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
-- Indexes for table `ref_jabatan`
--
ALTER TABLE `ref_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

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
-- AUTO_INCREMENT for table `ref_jabatan`
--
ALTER TABLE `ref_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `surat_pelayanan`
--
ALTER TABLE `surat_pelayanan`
  MODIFY `id_surat_pelayanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
