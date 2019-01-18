-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Sep 2018 pada 17.06
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE IF NOT EXISTS `absensi` (
  `npm` varchar(20) NOT NULL,
  `kd_matakuliah` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `npm` varchar(20) NOT NULL,
  `nama_mhs` varchar(100) NOT NULL,
  `kd_jurusan` varchar(20) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `tlp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama_mhs`, `kd_jurusan`, `alamat`, `tlp`) VALUES
('201443501313', 'Atikah Lestari', 'KD-J01', 'Depok', '086745328');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_fakultas`
--

CREATE TABLE IF NOT EXISTS `master_fakultas` (
  `kd_fakultas` varchar(50) NOT NULL,
  `nama_fakultas` varchar(100) NOT NULL,
  `jumlah_fakultas` varchar(100) NOT NULL,
  PRIMARY KEY (`kd_fakultas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_jurusan`
--

CREATE TABLE IF NOT EXISTS `master_jurusan` (
  `kd_jurusan` varchar(50) NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL,
  `kaprodi` varchar(100) NOT NULL,
  `kd_fakultas` varchar(50) NOT NULL,
  PRIMARY KEY (`kd_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_matakuliah`
--

CREATE TABLE IF NOT EXISTS `master_matakuliah` (
  `kd_mk` varchar(50) NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `sks` varchar(50) NOT NULL,
  PRIMARY KEY (`kd_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
