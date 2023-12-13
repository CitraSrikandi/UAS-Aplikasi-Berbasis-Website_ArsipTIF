-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2023 pada 13.49
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsurat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_suratkeluar`
--

CREATE TABLE `tb_suratkeluar` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(50) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `pdfFile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_suratkeluar`
--

INSERT INTO `tb_suratkeluar` (`id`, `no_surat`, `asal_surat`, `tgl_keluar`, `penerbit`, `perihal`, `pdfFile`) VALUES
(9, '098765', 'Ketua Prodi', '2023-12-28', 'Dosen TIF', 'Rapat MBKM', ''),
(10, 'sss', 'sss', '2023-12-13', 'sss', 'sss', ''),
(11, '2345678095321548', 'Bendahara', '2002-12-19', 'Fakultas Teknik', '12', '15892-31237-1-SM (1).pdf'),
(12, '2345678095321548', 'Bendahara', '1111-12-12', 'iiiii', '12', '15892-31237-1-SM.pdf'),
(13, 'keluar', 'keluar', '2023-12-13', 'keluar', 'keluar', '43-Article Text-103-2-10-20210219 (1).pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_suratmasuk`
--

CREATE TABLE `tb_suratmasuk` (
  `id` int(5) NOT NULL,
  `no_surat` varchar(15) NOT NULL,
  `asal_surat` varchar(20) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `perihal` varchar(50) NOT NULL,
  `pdfFile` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_suratmasuk`
--

INSERT INTO `tb_suratmasuk` (`id`, `no_surat`, `asal_surat`, `tgl_masuk`, `penerima`, `perihal`, `pdfFile`) VALUES
(20, '010234', 'Fakultas Teknik', '2023-12-11', 'Ketua Prodi', 'Pengumuman Rapat MBKM', '0'),
(21, '097645', 'Sekretaris Jurusan', '2023-12-11', 'Ketua Prodi', 'Surat Kerja Praktek', '0'),
(23, '120967', 'Dekan Teknik', '2023-11-29', 'Sekjur', 'Kuliah Kerja nyata', '0'),
(26, '234567809532154', 'Bendahara', '2022-12-12', 'Fakultas Teknik', 'efbh', '15892-31237-1-SM.pdf'),
(27, '234567809532154', 'Fakultas Teknik', '2022-12-12', 'Maulana', '12', '15892-31237-1-SM.pdf'),
(28, '234567809532154', 'Fakultas Teknik', '2022-12-12', 'Maulana', '12', '15892-31237-1-SM (1).pdf'),
(29, '1', '123', '2211-01-01', 'Maulana', 'x dn d', '16568-46225-1-PB.pdf'),
(30, '234567809532154', '12', '1999-12-12', 'dmdm', 'penting', 'microsevis layanan.pdf'),
(31, '1', 'Bendahara', '1999-12-12', 'Sekjur', '12', '43-Article Text-103-2-10-20210219.pdf'),
(32, '234567809532154', 'Bendahara', '2002-12-12', 'Fakultas Teknik', 'geg', 'microsevis layanan.pdf'),
(33, '234567809532154', '1', '1999-12-01', 'TIF', 'yyy', '15892-31237-1-SM (1).pdf'),
(34, '234567809532154', 'Bendahara', '1999-12-12', 'dmdm', 'efbh', '43-Article Text-103-2-10-20210219.pdf'),
(35, '1', 'Fakultas Teknik', '1999-12-12', 'TIF', 'yyy', '15892-31237-1-SM.pdf'),
(36, '234567809532154', 'Bendahara', '1999-12-12', 'Maulana', 'x dn d', 'big data dan analitik.pdf'),
(37, '234567809532154', 'Bendahara', '1999-12-12', 'Sekjur', 'ha', '43-Article Text-103-2-10-20210219.pdf'),
(38, '234567809532154', 'Fakultas Teknik', '1999-12-12', 'Fakultas Teknik', 'efbh', 'iot.pdf'),
(39, '1', 'Bendahara', '1999-12-12', 'iiiii', 'yyy', '16568-46225-1-PB.pdf'),
(40, '234567809532154', '12', '1999-12-12', 'Fakultas Teknik', 'penting', '15892-31237-1-SM.pdf'),
(41, '1', 'Bendahara', '1999-12-12', 'dmdm', '12', 'big data dan analitik.pdf'),
(42, '234567809532154', 'Bendahara', '1999-12-12', 'dmdm', 'penting', '15892-31237-1-SM.pdf'),
(43, '1', 'Bendahara', '1999-12-12', 'TIF', 'dmdmmd', '43-Article Text-103-2-10-20210219.pdf'),
(44, '234567809532154', 'Bendahara', '1999-12-12', 'Fakultas Teknik', 'penting', '43-Article Text-103-2-10-20210219.pdf'),
(45, '234567809532154', 'Bendahara', '1999-12-12', 'Fakultas Teknik', 'penting', '43-Article Text-103-2-10-20210219.pdf'),
(46, '234567809532154', 'Bendahara', '1999-12-12', 'Fakultas Teknik', 'penting', '15892-31237-1-SM (1).pdf'),
(47, '1', 'Bendahara', '1999-12-12', 'Maulana', 'efbh', 'iot.pdf'),
(48, '234567809532154', 'Bendahara', '1999-12-12', 'Sekjur', 'x dn d', 'betweness centrality.png'),
(49, '1', 'Bendahara', '1111-12-12', 'TIF', 'dmdmmd', 'betweness centrality.png'),
(50, '234567809532154', 'Bendahara', '1111-12-12', 'Maulana', 'x dn d', 'modularity class.png'),
(51, '234567809532154', 'Bendahara', '1111-12-12', 'Sekjur', 'yyy', 'Degree centrality.png'),
(52, '234567809532154', 'Bendahara', '1111-12-12', 'Fakultas Teknik', '1111', ''),
(53, '234567809532154', 'Bendahara', '1111-12-12', 'TIF', 'yyy', 'closeness centrality.png'),
(54, '234567809532154', 'Bendahara', '1111-12-12', 'iiiii', 'efbh', 'betweness centrality.png'),
(55, '234567809532154', 'Bendahara', '1111-12-11', 'Sekjur', 'penting', 'modularity class.png'),
(56, '234567809532154', 'Bendahara', '1111-12-12', 'iiiii', 'dmdmmd', 'modularity class.png'),
(57, 'wwww', 'waaaaaaa', '2023-12-04', 'sssss', 'ddddddd', '43-Article Text-103-2-10-20210219 (1).pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(25) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `paswd`, `email`, `nama`, `level`, `ket`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'faraswahyuddin1909@gmail.com', 'Kelompok Open Source', 1, 'Staff Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
