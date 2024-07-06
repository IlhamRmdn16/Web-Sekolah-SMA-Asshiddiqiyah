-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2024 at 06:12 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id`, `nip`, `nama`, `alamat`, `telpon`, `agama`, `foto`) VALUES
(3, '199012102022101001', 'Aan Aminah', 'Cibangban', '09875566', 'Islam', '270-—Pngtree—cute cartoon female muslim teacher_7022337.png'),
(6, '199012102022101321', 'Rahmat Nurdin', 'Kp. Paledang, Suci', '08211697', 'Islam', 'default.jpg'),
(7, '199012102021101007', 'Amin Bunyamin', 'Suci', '08543234', 'Islam', '469-—Gambarpng—cartoon male school teacher with_43006.png'),
(8, '199012102022101088', 'Dedi Budiana', 'Wanaraja', '085456765', 'Islam', 'default.jpg'),
(9, '199012102022101085', 'Rina Faizah', 'Garut Kota', '082134543', 'Islam', 'default.jpg'),
(10, '199012102022101329', 'Syifa Nurlatifah', 'Garut Kota', '09875560', 'Islam', '585-—Pngtree—cute cartoon female muslim teacher_7022337.png'),
(11, '199012102022101086', 'Yuni Gantini', 'Suci', '08232123454', 'Islam', 'default.jpg'),
(12, '199012102022102089', 'Ruri Rahayu', 'Cipanas', '08543239', 'Islam', '503-—Pngtree—cute cartoon female muslim teacher_7022337.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai_ujian`
--

CREATE TABLE `tbl_nilai_ujian` (
  `id` int(11) NOT NULL,
  `no_ujian` char(7) NOT NULL,
  `pelajaran` varchar(100) NOT NULL,
  `nilai_ujian` int(11) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_nilai_ujian`
--

INSERT INTO `tbl_nilai_ujian` (`id`, `no_ujian`, `pelajaran`, `nilai_ujian`, `jurusan`) VALUES
(1, 'UTS-001', 'Matematika', 70, 'IPA'),
(2, 'UTS-001', 'PAI', 80, 'Umum'),
(3, 'UTS-001', 'Kimia', 55, 'IPA'),
(4, 'UTS-001', 'TIK', 60, 'Umum'),
(5, 'UTS-001', 'B. Inggris', 65, 'Umum'),
(6, 'UTS-001', 'Fisika', 55, 'IPA'),
(7, 'UTS-001', 'Biologi', 70, 'IPA'),
(8, 'UTS-001', 'Matematika PM', 65, 'IPA'),
(9, 'UTS-002', 'Matematika', 50, 'IPA'),
(10, 'UTS-002', 'PAI', 80, 'Umum'),
(11, 'UTS-002', 'Kimia', 65, 'IPA'),
(12, 'UTS-002', 'TIK', 55, 'Umum'),
(13, 'UTS-002', 'B. Inggris', 70, 'Umum'),
(14, 'UTS-002', 'Fisika', 60, 'IPA'),
(15, 'UTS-002', 'Biologi', 55, 'IPA'),
(16, 'UTS-002', 'Matematika PM', 60, 'IPA'),
(17, 'UTS-003', 'Matematika', 55, 'IPA'),
(18, 'UTS-003', 'PAI', 70, 'Umum'),
(19, 'UTS-003', 'Kimia', 60, 'IPA'),
(20, 'UTS-003', 'TIK', 55, 'Umum'),
(21, 'UTS-003', 'B. Inggris', 40, 'Umum'),
(22, 'UTS-003', 'Fisika', 55, 'IPA'),
(23, 'UTS-003', 'Biologi', 60, 'IPA'),
(24, 'UTS-003', 'Matematika PM', 60, 'IPA'),
(25, 'UTS-004', 'Matematika', 80, 'IPA'),
(26, 'UTS-004', 'PAI', 70, 'Umum'),
(27, 'UTS-004', 'Kimia', 60, 'IPA'),
(28, 'UTS-004', 'TIK', 80, 'Umum'),
(29, 'UTS-004', 'B. Inggris', 90, 'Umum'),
(30, 'UTS-004', 'Fisika', 90, 'IPA'),
(31, 'UTS-004', 'Biologi', 75, 'IPA'),
(32, 'UTS-004', 'Matematika PM', 80, 'IPA'),
(33, 'UTS-005', 'Matematika', 60, 'IPA'),
(34, 'UTS-005', 'PAI', 80, 'Umum'),
(35, 'UTS-005', 'Kimia', 95, 'IPA'),
(36, 'UTS-005', 'TIK', 55, 'Umum'),
(37, 'UTS-005', 'B. Inggris', 80, 'Umum'),
(38, 'UTS-005', 'Fisika', 60, 'IPA'),
(39, 'UTS-005', 'Biologi', 75, 'IPA'),
(40, 'UTS-005', 'Matematika PM', 70, 'IPA'),
(41, 'UTS-006', 'Matematika', 60, 'IPA'),
(42, 'UTS-006', 'PAI', 55, 'Umum'),
(43, 'UTS-006', 'Kimia', 80, 'IPA'),
(44, 'UTS-006', 'TIK', 70, 'Umum'),
(45, 'UTS-006', 'B. Inggris', 80, 'Umum'),
(46, 'UTS-006', 'Fisika', 80, 'IPA'),
(47, 'UTS-006', 'Biologi', 65, 'IPA'),
(48, 'UTS-006', 'Matematika PM', 50, 'IPA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelajaran`
--

CREATE TABLE `tbl_pelajaran` (
  `id` int(11) NOT NULL,
  `pelajaran` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `guru` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pelajaran`
--

INSERT INTO `tbl_pelajaran` (`id`, `pelajaran`, `jurusan`, `guru`) VALUES
(4, 'Matematika', 'IPA', 'Rina Faizah'),
(5, 'PAI', 'Umum', 'Rahmat Nurdin'),
(6, 'Kimia', 'IPA', 'Syifa Nurlatifah'),
(7, 'TIK', 'Umum', 'Amin Bunyamin'),
(8, 'B. Inggris', 'Umum', 'Dedi Budiana'),
(9, 'Fisika', 'IPA', 'Yuni Gantini'),
(10, 'Biologi', 'IPA', 'Ruri Rahayu'),
(11, 'Matematika PM', 'IPA', 'Aan Aminah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sekolah`
--

CREATE TABLE `tbl_sekolah` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `akreditasi` char(1) NOT NULL,
  `status` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `visimisi` varchar(500) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sekolah`
--

INSERT INTO `tbl_sekolah` (`id`, `nama`, `alamat`, `akreditasi`, `status`, `email`, `visimisi`, `gambar`) VALUES
(1, 'SMA Asshiddiqiyah', 'Kp. Paledang, Kelurahan Suci Kaler, Kec. Karangpawitan, Kabupaten Garut, Jawa Barat 44182', 'A', 'Swasta', 'sma.yasqi@gmail.com', 'Visi: “Berprestasi dalam berilmu, Beramal, dan Berakhlakul Karimah”.\r\nMisi:\r\n-Membina dan meningkatkan prestasi keilmuan anak didik menjadi insan terdidik\r\n-Membina dan mengembangkan nuansa amaliah atas landasan ilmiah\r\n-Menciptakan dan mengembangkan sikap', '38-bglogin.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` char(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `kelas` varchar(6) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nama`, `alamat`, `kelas`, `jurusan`, `foto`) VALUES
('NIS004', 'Doni', 'Jayaraga', 'XII-A', 'IPA', 'default.jpg'),
('NIS005', 'Kurnia', 'Suci', 'XII-B', 'IPA', 'default.jpg'),
('NIS006', 'Hamdan Yuafy', 'Pameungpeuk', 'XII-B', 'IPA', '401-IMG_20220731_163814.jpg'),
('NIS007', 'Raja Naufal', 'Cibangban', 'XII-A', 'IPA', '120-IMG_20220731_164514.jpg'),
('NIS008', 'Ahmad', 'Kadungora', 'XII-B', 'IPA', 'default.jpg'),
('NIS009', 'Supriatna', 'Godog', 'XII-A', 'IPA', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ujian`
--

CREATE TABLE `tbl_ujian` (
  `no_ujian` char(7) NOT NULL,
  `tgl_ujian` date NOT NULL,
  `nis` char(6) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `total_nilai` int(11) NOT NULL,
  `nilai_terendah` int(11) NOT NULL,
  `nilai_tertinggi` int(11) NOT NULL,
  `nilai_rata2` int(11) NOT NULL,
  `hasil_ujian` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_ujian`
--

INSERT INTO `tbl_ujian` (`no_ujian`, `tgl_ujian`, `nis`, `jurusan`, `total_nilai`, `nilai_terendah`, `nilai_tertinggi`, `nilai_rata2`, `hasil_ujian`) VALUES
('UTS-001', '2023-06-20', 'NIS004', 'IPA', 520, 55, 80, 65, 'LULUS'),
('UTS-002', '2023-06-21', 'NIS005', 'IPA', 495, 50, 80, 62, 'LULUS'),
('UTS-003', '2023-06-21', 'NIS006', 'IPA', 455, 40, 70, 57, 'GAGAL'),
('UTS-004', '2023-06-21', 'NIS007', 'IPA', 625, 60, 90, 78, 'LULUS'),
('UTS-005', '2023-06-21', 'NIS008', 'IPA', 575, 55, 95, 72, 'LULUS'),
('UTS-006', '2023-06-21', 'NIS009', 'IPA', 540, 50, 80, 68, 'LULUS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `jabatan` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `nama`, `alamat`, `jabatan`, `foto`) VALUES
(6, 'admin', '$2y$10$kYRB/OohG1t3MqIxkTaESOKa3BSuGbM4q/EYREwoDcsl8NEk9Z12u', 'Asep Ridwan', 'Desa Suci', 'kepsek', '640-1550043956_1-org.jpg'),
(8, 'ilham', '$2y$10$bqs8Hr.TYFZK2TOlVDAUZO9IsLrKtvm8RJUDkBC6XbOLeGbMQqwKW', 'ILHAM RAMADHAN', 'Garut', 'guru', '833-WhatsApp Image 2023-03-12 at 14.18.12.jpeg'),
(9, 'user', '$2y$10$KkKjkJTxAv52hOiuGiq4rOHQWLSoqL1yAjKSyjxc6nb8808jb.yIy', 'user', 'Cikelet', 'guru', 'default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nilai_ujian`
--
ALTER TABLE `tbl_nilai_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tbl_ujian`
--
ALTER TABLE `tbl_ujian`
  ADD PRIMARY KEY (`no_ujian`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_nilai_ujian`
--
ALTER TABLE `tbl_nilai_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
