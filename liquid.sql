-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2019 pada 23.44
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liquid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(15) NOT NULL,
  `jenis_barang` varchar(15) NOT NULL,
  `nikotin` varchar(1) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `quantity` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `jenis_barang`, `nikotin`, `harga`, `quantity`) VALUES
(4, 'gost_red', 'juicy', '3', '150000', '50'),
(5, 'ala_carte_cream', 'creamy', '3', '190000', '50'),
(6, 'gost_red', 'juicy', '3', '150000', '50'),
(7, 'fuck_jerry', 'creamy', '3', '160000', '50'),
(8, 'the_justice', 'creamy', '3', '16000', '50'),
(9, 'fuck_jerry', 'creamy', '3', '160000', '50'),
(10, 'the_justice', 'creamy', '3', '16000', '50'),
(11, 'chicken_dinner', 'Creamy', '6', '150000', '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `jk` varchar(11) NOT NULL,
  `no_telfon` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `password`, `nama`, `alamat`, `jk`, `no_telfon`) VALUES
(1, '1', 'alfian', 'malang_jawatimur', '', '08781620913'),
(2, '2', 'robert', 'banjarmasin_kalsel', '', '08988844466'),
(3, '1', 'samuel', 'malang_jawatimur', '', '08781620913'),
(4, '2', 'damian', 'banjarmasin_kalsel', '', '08988844455'),
(5, '5', 'bruce', 'jombang_jatim', '', '08781237926'),
(6, '6', 'angel', 'malang_jatim', '', '08786655511'),
(7, '5', 'bruce', 'jombang_jatim', '', '08781237926'),
(8, '6', 'angel', 'malang_jatim', '', '08786655511');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `nama_customer` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `jenis_barang` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `register`
--

CREATE TABLE `register` (
  `nama_karyawan` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `no_telfon` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_barang` int(11) NOT NULL,
  `nama_customer` varchar(15) NOT NULL,
  `nama_liquid` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jenis_liquid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `uang_pembeli` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
