-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jun 2021 pada 14.25
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2basic`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `satuan`, `id_jenis`, `id_supplier`, `harga`, `stok`) VALUES
(1, '1A', 'Kameja Wanita', 'K', 1, 1111, 1600000, 60),
(2, '2B', 'Kaos Pria', 'L', 2, 1112, 1200000, 80),
(3, '4C', 'Rok Plisket', 'K', 4, 1117, 1000000, 50),
(4, '5E', 'Pasmina', 'L', 5, 1114, 360000, 65),
(5, '3C', 'Levis Pria', 'K', 3, 1114, 2400000, 90),
(6, '1N', 'Blouse Wanita', 'K', 1, 1116, 1600000, 100),
(7, '1O', 'Kaos Wanita', 'K', 1, 1111, 1600000, 120),
(8, '6F', 'Mukena Sulam', 'K', 6, 1111, 3000000, 60);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id`, `nama_jenis`, `keterangan`) VALUES
(1, 'Atasan', 'Atasan Wanita'),
(2, 'Atasan', 'Atasan Pria'),
(3, 'Celana', 'Celana Pria'),
(4, 'Rok', 'Rok Wanita'),
(5, 'Kerudung ', 'Kerudung Wanita'),
(6, 'Perlengkapan Shalat', 'Mukena ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `jekel` char(1) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `tanggal_lahir`, `jekel`, `id_prodi`, `email`, `alamat`) VALUES
(1, '1911081015', 'Nola Reziyana', '01-Jan-2001', 'P', 1, 'nolareziyana2gmail.com', 'Agam'),
(2, '1911081013', 'Nikita Chairunnisa', '08-Sep-2001', 'P', 3, 'nikitachairunnisa@gmail.com', 'Sijunjung'),
(3, '1911081011', 'Shatfi Husna', '30-mei-2000', 'P', 2, 'shatfihusna@gmail.com', 'Canduang, Agam'),
(4, '1911081009', 'Ulil Ambri', '06-Jun-2001', 'L', 3, 'ulilambri@gmail.com', 'Payakumbuh'),
(5, '1911081017', 'Azim Ilhamdi', '02-Mar-2001', 'L', 3, 'azimilhamdi@gmail.com', 'Agam'),
(6, '1911082021', 'Srintika Yuni Kharisma', '18-Aug-2001', 'P', 3, 'srintika@gmail.com', 'Bukittinggi'),
(7, '1911081024', 'Siska Nofri Dania', '03-Nov-2001', 'p', 3, 'siskanofridania@gmail.com', 'Pariaman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id`, `prodi`, `keterangan`) VALUES
(1, 'TK', 'D3-Teknik Komputer'),
(2, 'MI', 'D3-Manajemen Informatika'),
(3, 'TRPL', 'D4-Teknologi Rekayasa Perangkat Lunak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `notelp`, `email`, `alamat`) VALUES
(1111, 'Nola Reziyana', '083181411325', 'reziyananola@gmail.com', 'Ampek Angkek, Kabupaten Agam.'),
(1112, 'Azim Ilhamdi', '082356739426', 'azimilhamdi@gmail.com', 'Baso'),
(1113, 'Nikita Chairunnisa', '082360509930', 'nikitachairunnisa@gmail.c', 'Sijunjung'),
(1114, 'Shatfi Husna ', '085374371668', 'shatfihusna@gmail.com', 'Canduang, Agam '),
(1116, 'Luthfiyyah Riznisa', '08238641320', 'luthfiyah@gmail.com', 'Padang'),
(1117, 'Srintika Yuni Kharisma', '085342927412', 'srintikayuni@gmail.com', 'Bukittinggi'),
(2022, '1117', '085274315115', 'dirgaagustin@gmail.com', 'Bukittinggi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jenis` (`id_jenis`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahasiswa_ibfk_1` (`id_prodi`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk-1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id`),
  ADD CONSTRAINT `barang_ibfk-2` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
