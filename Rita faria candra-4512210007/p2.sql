-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2014 pada 05.16
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `p2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kadaluarsa`
--

CREATE TABLE IF NOT EXISTS `kadaluarsa` (
  `tanggal` date NOT NULL,
  `nama_obat` varchar(20) NOT NULL,
  `jumlah_keluar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kadaluarsa`
--

INSERT INTO `kadaluarsa` (`tanggal`, `nama_obat`, `jumlah_keluar`) VALUES
('2014-07-09', 'f', 5),
('2014-07-09', 'f', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(10) DEFAULT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasukan_obat`
--

CREATE TABLE IF NOT EXISTS `pemasukan_obat` (
  `tgl_masuk` varchar(10) NOT NULL,
  `tgl_kadaluarsa` varchar(10) NOT NULL,
  `kode_obat` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama_obat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemasukan_obat`
--

INSERT INTO `pemasukan_obat` (`tgl_masuk`, `tgl_kadaluarsa`, `kode_obat`, `harga`, `jenis`, `status`, `jumlah`, `nama_obat`) VALUES
('2014-07-04', '2014-08-09', 'null', 123, 'abc', 'ya', 1, 'null'),
('2014-07-04', '2014-08-09', 'null', 50000, 'kapsul', 'ya', 150, 'null'),
('2014-07-04', '2014-08-09', 'null', 50000, 'kapsul', 'ya', 150, 'null'),
('2014-07-04', '2014-08-12', 'null', 45, 'ff', 'tidak', 1, 'null'),
('2014-07-04', '2014-08-12', 'null', 45, 'ff', 'tidak', 1, 'null'),
('2014-07-04', '2014-08-09', 'null', 2000, 'e', 'f', 3, 'null'),
('2014-07-04', '2014-08-09', 'null', 2000, 'e', 'f', 3, 'null'),
('2014-07-04', '2014-08-09', 'null', 2000, 'e', 'f', 3, 'null'),
('2014-07-04', '2014-08-09', 'null', 2000, 'e', 'f', 3, 'null');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resep`
--

CREATE TABLE IF NOT EXISTS `resep` (
  `nama_pasien` varchar(20) NOT NULL,
  `nama_dokter` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_obat` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  KEY `nama_obat` (`nama_obat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `resep`
--

INSERT INTO `resep` (`nama_pasien`, `nama_dokter`, `tanggal`, `nama_obat`, `jumlah`) VALUES
('aaa', 'bbb', '2014-07-09', 'qwe', 5),
('d', 'g', '2014-07-09', 'r', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanpa_resep`
--

CREATE TABLE IF NOT EXISTS `tanpa_resep` (
  `tanggal` date NOT NULL,
  `nama_obat` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanpa_resep`
--

INSERT INTO `tanpa_resep` (`tanggal`, `nama_obat`, `jumlah`) VALUES
('2014-07-09', 'aaa', 123);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
