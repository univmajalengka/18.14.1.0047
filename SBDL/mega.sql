-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Mar 2020 pada 08.30
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
-- Database: `mega`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_admin`
--

CREATE TABLE `tabel_admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telp` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL,
  `blokir` enum('Y','N') NOT NULL,
  `foto` varchar(30) NOT NULL,
  `id_session` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kategori`
--

CREATE TABLE `tabel_kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `kategori_seo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kostumer`
--

CREATE TABLE `tabel_kostumer` (
  `id_kostumer` int(15) NOT NULL,
  `bana_lengkap` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telpon` varchar(16) NOT NULL,
  `id_kota` int(20) NOT NULL,
  `passwrod` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kota`
--

CREATE TABLE `tabel_kota` (
  `id_kota` int(3) NOT NULL,
  `nama_kota` varchar(30) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_order`
--

CREATE TABLE `tabel_order` (
  `id_order` int(5) NOT NULL,
  `status_order` varchar(50) NOT NULL,
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_customer` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_produk`
--

CREATE TABLE `tabel_produk` (
  `id_produk` int(5) NOT NULL,
  `kategori_produk` int(5) NOT NULL,
  `nama_produk` varchar(30) NOT NULL,
  `produk_seo` varchar(30) NOT NULL,
  `deskripsi` varchar(30) NOT NULL,
  `harga` int(20) NOT NULL,
  `berat` decimal(5,2) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `gambar` varchar(20) NOT NULL,
  `dibeli` int(5) NOT NULL,
  `diskon` int(5) NOT NULL,
  `stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_admin`
--
ALTER TABLE `tabel_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tabel_kategori`
--
ALTER TABLE `tabel_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tabel_kostumer`
--
ALTER TABLE `tabel_kostumer`
  ADD PRIMARY KEY (`id_kostumer`);

--
-- Indeks untuk tabel `tabel_kota`
--
ALTER TABLE `tabel_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indeks untuk tabel `tabel_order`
--
ALTER TABLE `tabel_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indeks untuk tabel `tabel_produk`
--
ALTER TABLE `tabel_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabel_kategori`
--
ALTER TABLE `tabel_kategori`
  ADD CONSTRAINT `tabel_kategori_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tabel_produk` (`id_produk`);

--
-- Ketidakleluasaan untuk tabel `tabel_kostumer`
--
ALTER TABLE `tabel_kostumer`
  ADD CONSTRAINT `tabel_kostumer_ibfk_1` FOREIGN KEY (`id_kostumer`) REFERENCES `tabel_order` (`id_order`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
