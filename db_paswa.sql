-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 01:55 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_paswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_kegiatan`
--

CREATE TABLE `tab_kegiatan` (
  `id` int(2) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `narasumber` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tab_kelompok`
--

CREATE TABLE `tab_kelompok` (
  `id` int(2) NOT NULL,
  `nama_kelompok` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_kelompok`
--

INSERT INTO `tab_kelompok` (`id`, `nama_kelompok`) VALUES
(3, 'Kelompok_1'),
(4, 'Kelompok_2'),
(5, 'Kelompok_3'),
(6, 'Kelompok_4'),
(7, 'Kelompok_5');

-- --------------------------------------------------------

--
-- Table structure for table `tab_panitia`
--

CREATE TABLE `tab_panitia` (
  `nim` int(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tab_perlengkapan`
--

CREATE TABLE `tab_perlengkapan` (
  `id` int(2) NOT NULL,
  `perlengkapan` text NOT NULL,
  `kategori` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tab_peserta`
--

CREATE TABLE `tab_peserta` (
  `nim` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `prodi` text DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `jenis_kelamin` varchar(11) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tab_peserta`
--

INSERT INTO `tab_peserta` (`nim`, `nama`, `prodi`, `semester`, `kelas`, `no_hp`, `email`, `alamat`, `jenis_kelamin`, `foto`, `agama`, `tempat_lahir`, `tanggal_lahir`) VALUES
(1, 'Abdan Khairul Rayhan', 'TI', 1, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(2, 'Afriansyah ', 'SI', 2, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(3, 'Afrisal', 'TI', 3, 'MINGGU', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(4, 'Agis Sandawa', 'TI', 4, 'SABTU', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(5, 'Agis Sandawa', 'SI', 5, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(6, 'Agung Adytia', 'SI', 6, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(7, 'nama', 'prodi', 0, 'kelas', 'no_hp', 'email', 'alamat', 'jenis_kelam', 'foto', 'agama', 'tempat_lahir', '0000-00-00'),
(8, 'Ahmad rifa\'i', 'TI', 8, 'SABTU', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(9, 'ALDI RIZALDI', 'TI', 1, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(10, 'ALMIGA NAILA NAZUA MANONGKO ', 'SI', 2, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(11, 'Alya Putri Salsabila ', 'TI', 3, 'MINGGU', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(12, 'Amanda yoan Setiawan ', 'TI', 4, 'SABTU', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(13, 'Amelia putri', 'SI', 5, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(14, 'Ananda Syaifullah', 'SI', 6, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(15, 'Andika Zalkia Azis', 'TI', 7, 'MINGGU', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(16, 'Anisa Citra Sabila', 'TI', 8, 'SABTU', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(17, 'APRILIA LARASATI PRATIWI', 'TI', 1, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(18, 'Cahya putri wulandari', 'SI', 2, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(19, 'Cika ramadani', 'TI', 3, 'MINGGU', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(20, 'Claudia alexia amanda', 'TI', 4, 'SABTU', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(21, 'Delfina Nurwahidah', 'SI', 5, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(22, 'Disti fanaidah', 'SI', 6, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(23, 'DZIKRI NAZARUDIN ', 'TI', 7, 'MINGGU', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(24, 'DZIKRI NAZARUDIN ', 'TI', 8, 'SABTU', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(25, 'Fadilah nurfitriyanti', 'TI', 1, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(26, 'Faravasalwa maulidea de asteroid', 'SI', 2, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(27, 'Fathan Husaini', 'TI', 3, 'MINGGU', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(28, 'Fitriani', 'TI', 4, 'SABTU', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(29, 'Gadis restu dwi', 'SI', 5, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(30, 'I\'am Putra Arifin', 'SI', 6, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(31, 'Ilham Ramadhan ', 'TI', 7, 'MINGGU', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(32, 'Iqbal Fahrillah Fuadi ', 'TI', 8, 'SABTU', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(33, 'Irpan maulana', 'TI', 1, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(34, 'Jagad asri arbain', 'SI', 2, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(35, 'Jihan argentia', 'TI', 3, 'MINGGU', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(36, 'Laelatus Syafaah ', 'TI', 4, 'SABTU', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(37, 'Leni Astiani', 'SI', 5, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(38, 'Lidia enjelina ', 'SI', 6, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(39, 'Lola salma', 'TI', 7, 'MINGGU', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(40, 'Lugi yanto', 'TI', 8, 'SABTU', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(41, 'lutpiana suci ', 'TI', 1, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(42, 'Muhamad abdu rohman', 'SI', 2, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(43, 'Muhamad ArdanSyah', 'TI', 3, 'MINGGU', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(44, 'Muhammad Agus Rizal', 'TI', 4, 'SABTU', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(45, 'Muhammad rassya alfarezy', 'SI', 5, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(46, 'Muhammad Rifqi hamada ', 'SI', 6, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(47, 'Nadia Pitaloka ', 'TI', 7, 'MINGGU', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(48, 'Nadine Aulia Rachman ', 'TI', 8, 'SABTU', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(49, 'Nauval Ainur Ridho ', 'TI', 1, 'PAGI', '987654321', 'a@example.com', 'JAKARTA', 'L', '', 'ISLAM', 'JAKARTA', '0000-00-00'),
(50, 'Nida NurChahidatullah ', 'SI', 2, 'MALAM', '987654321', 'a@example.com', 'JAKARTA', 'P', '', 'ISLAM', 'JAKARTA', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tab_peserta_kelompok`
--

CREATE TABLE `tab_peserta_kelompok` (
  `id` int(2) NOT NULL,
  `nim` int(11) NOT NULL,
  `id_kelompok` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_peserta_kelompok`
--

INSERT INTO `tab_peserta_kelompok` (`id`, `nim`, `id_kelompok`) VALUES
(1, 8, 3),
(2, 29, 3),
(3, 17, 3),
(4, 31, 3),
(5, 1, 3),
(6, 2, 3),
(7, 26, 3),
(8, 47, 3),
(9, 45, 3),
(10, 19, 3),
(16, 32, 4),
(17, 23, 4),
(18, 5, 4),
(19, 4, 4),
(20, 43, 4),
(21, 14, 4),
(22, 35, 4),
(23, 6, 4),
(24, 33, 4),
(25, 13, 4),
(31, 39, 5),
(32, 16, 5),
(33, 12, 5),
(34, 42, 5),
(35, 50, 5),
(36, 18, 5),
(37, 27, 5),
(38, 21, 5),
(39, 36, 5),
(40, 22, 5),
(46, 44, 6),
(47, 49, 6),
(48, 34, 6),
(49, 11, 6),
(50, 46, 6),
(51, 41, 6),
(52, 30, 6),
(53, 20, 6),
(54, 25, 6),
(55, 38, 6),
(61, 15, 7),
(62, 48, 7),
(63, 37, 7),
(64, 3, 7),
(65, 40, 7),
(66, 9, 7),
(67, 10, 7),
(68, 28, 7),
(69, 7, 7),
(70, 24, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tab_tamu`
--

CREATE TABLE `tab_tamu` (
  `id` int(2) NOT NULL,
  `nama_tamu` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tab_tata_tertib`
--

CREATE TABLE `tab_tata_tertib` (
  `id` int(2) NOT NULL,
  `tata_tertib` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tab_user`
--

CREATE TABLE `tab_user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_by` varchar(15) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tab_user`
--

INSERT INTO `tab_user` (`id`, `username`, `password`, `lastlogin`, `created_by`, `created_at`, `update_by`, `update_at`) VALUES
(1, 'admin', 'admin', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_kegiatan`
--
ALTER TABLE `tab_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_kelompok`
--
ALTER TABLE `tab_kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_panitia`
--
ALTER TABLE `tab_panitia`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tab_perlengkapan`
--
ALTER TABLE `tab_perlengkapan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_peserta`
--
ALTER TABLE `tab_peserta`
  ADD PRIMARY KEY (`nim`) USING BTREE;

--
-- Indexes for table `tab_peserta_kelompok`
--
ALTER TABLE `tab_peserta_kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_tamu`
--
ALTER TABLE `tab_tamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_tata_tertib`
--
ALTER TABLE `tab_tata_tertib`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_user`
--
ALTER TABLE `tab_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_kegiatan`
--
ALTER TABLE `tab_kegiatan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tab_kelompok`
--
ALTER TABLE `tab_kelompok`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tab_perlengkapan`
--
ALTER TABLE `tab_perlengkapan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tab_peserta`
--
ALTER TABLE `tab_peserta`
  MODIFY `nim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tab_peserta_kelompok`
--
ALTER TABLE `tab_peserta_kelompok`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tab_tamu`
--
ALTER TABLE `tab_tamu`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tab_tata_tertib`
--
ALTER TABLE `tab_tata_tertib`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tab_user`
--
ALTER TABLE `tab_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
