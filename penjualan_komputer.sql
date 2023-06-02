-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jun 2023 pada 15.44
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_komputer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pembeli`
--

CREATE TABLE `data_pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(30) DEFAULT NULL,
  `no_telp` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pembeli`
--

INSERT INTO `data_pembeli` (`id_pembeli`, `nama_pembeli`, `no_telp`) VALUES
(1, 'om budi', 856727511),
(2, 'om burhan', 897643777),
(3, 'mba nuni', 86543261),
(4, 'nabila', 98652581),
(5, 'sapa', 87543720),
(6, 'damar', 87653999),
(7, 'hafizh', 85540002),
(8, 'meliya', 857123450),
(9, 'ilham', 876489892),
(10, 'afif', 87542681);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `tgl_pembelian` date DEFAULT NULL,
  `kode_tanda_terima` int(11) NOT NULL,
  `merk_komputer` varchar(50) DEFAULT NULL,
  `harga` int(50) DEFAULT NULL,
  `via_pembayaran` varchar(20) DEFAULT NULL,
  `nama_kasir` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`tgl_pembelian`, `kode_tanda_terima`, `merk_komputer`, `harga`, `via_pembayaran`, `nama_kasir`) VALUES
('2023-05-01', 1, 'ASUS ROG Strux XG32AQ', 8850000, 'Cash', 'Rina'),
('2023-06-02', 2, 'LG 24MK430H-B', 1100000, 'DANA', 'TITI'),
('2023-06-02', 3, 'HP ALL IN ONE24 CB1023D', 15500000, 'Cash', 'Rina'),
('2023-06-03', 4, 'ASUS PC ALL IN ONE ET 2311i', 4399000, 'Cash', 'Rina'),
('2023-04-10', 5, 'ASUS ROG Swift OLED PG42UQ', 10000000, 'cash', 'Rina'),
('2023-03-15', 6, 'ASUS TUF GAMING VG249QMTA', 7899000, 'BRI', 'TITI'),
('2023-05-07', 7, 'ASUS AIO V222FAK', 9100000, 'cash', 'rina'),
('2023-01-04', 8, 'AIO LENOVO V50A', 9250000, 'MANDIRi', 'rina'),
('2023-01-31', 9, 'HP 24 df1009D', 10000000, 'Cash', 'TITI'),
('2023-05-01', 10, 'ASUS PROART DISPLAY PA248CRV', 8000000, 'cash', 'rina');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `harga` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`id_barang`, `nama_barang`, `harga`) VALUES
(1, 'ASUS PROART DISPLAY', 8000000),
(2, 'ASUS ROG Strux XG32AQ  harga', 8850000),
(3, 'LG 24MK430H-B', 1100000),
(4, 'HP ALL IN ONE24 CB1023D', 15500000),
(5, 'ASUS PC ALL IN ONE ET 23111', 4399000),
(6, ' ASUS ROG Swift OLED PG42UQ', 10000000),
(7, 'ASUS TUF GAMING VG249QMTA', 7899000),
(8, 'ASUS AIO V222FAK', 9100000),
(9, 'AIO LENOVO V50A', 9250000),
(10, 'HP 24 df1009D', 10000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_pembeli`
--
ALTER TABLE `data_pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`kode_tanda_terima`);

--
-- Indeks untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_pembeli`
--
ALTER TABLE `data_pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `kode_tanda_terima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `stok`
--
ALTER TABLE `stok`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
