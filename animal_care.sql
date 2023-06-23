-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2023 pada 15.39
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animal_care`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `chatid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `message` varchar(200) NOT NULL,
  `chat_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`chatid`, `userid`, `chatroomid`, `message`, `chat_date`) VALUES
(42, 9, 11, 'asofbouebf', '2023-06-23 17:52:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatroom`
--

CREATE TABLE `chatroom` (
  `chatroomid` int(11) NOT NULL,
  `chat_name` varchar(60) NOT NULL,
  `date_created` datetime NOT NULL,
  `chat_password` varchar(30) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `chatroom`
--

INSERT INTO `chatroom` (`chatroomid`, `chat_name`, `date_created`, `chat_password`, `userid`) VALUES
(11, 'konsultasi', '2023-06-23 17:46:36', '123', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat_member`
--

CREATE TABLE `chat_member` (
  `chat_memberid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `chat_member`
--

INSERT INTO `chat_member` (`chat_memberid`, `chatroomid`, `userid`) VALUES
(17, 11, 1),
(23, 11, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `Id_detail_transaksi` int(11) NOT NULL,
  `Id_Produk` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `Nama_pembeli` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Harga_total` int(11) NOT NULL,
  `Jumlah_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `Id_dokter` int(11) NOT NULL,
  `Nama_dokter` varchar(50) NOT NULL,
  `Alamat_dokter` varchar(100) NOT NULL,
  `No_telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_produk`
--

CREATE TABLE `jenis_produk` (
  `Id_Produk` int(11) DEFAULT NULL,
  `Makanan_kering` varchar(50) NOT NULL,
  `Makanan_basah` varchar(50) NOT NULL,
  `Vitamin` varchar(50) NOT NULL,
  `Pasir` varchar(50) NOT NULL,
  `shampo_sugar_glider` varchar(50) NOT NULL,
  `shampo_anjing_kucing` varchar(50) NOT NULL,
  `Shampoo` varchar(50) NOT NULL,
  `Tempat_Makan_minum` varchar(50) NOT NULL,
  `Serbuk_Kayu` varchar(50) NOT NULL,
  `kandang` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `Id_konsultasi` int(11) NOT NULL,
  `Id_pemilik_hewan` int(11) NOT NULL,
  `Vaksinasi` varchar(1000) NOT NULL,
  `Tes darah` varchar(1000) NOT NULL,
  `sinarx` varchar(1000) NOT NULL,
  `grooming` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilik_hewan`
--

CREATE TABLE `pemilik_hewan` (
  `Id_Pemilik` int(11) NOT NULL,
  `Nama_Pemilik` varchar(50) NOT NULL,
  `Jenis_Hewan` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `No_Telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `Id_Produk` int(11) NOT NULL,
  `Stok` int(11) NOT NULL,
  `Jenis_Produk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `signup`
--

CREATE TABLE `signup` (
  `Nama` varchar(100) NOT NULL,
  `Email` varchar(1000) DEFAULT NULL,
  `Password` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `signup`
--

INSERT INTO `signup` (`Nama`, `Email`, `Password`) VALUES
('iyan', 'fabianusjan4@gmail.com', '12345678'),
('fafa', 'adyatamaa@gmail.com', 'fafa1234'),
('y', 'aduuhdu@yahoo.com', '13312233'),
('y', 'aduuhdu@yahoo.com', '13312233'),
('bimo', 'bimo@gmail.com', 'bimo1234'),
('abidin', 'abidin@gmail.com', '123'),
('afif', 'afif@gmail.com', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `uname`, `photo`, `access`) VALUES
(1, 'Iyan', '21232f297a57a5a743894a0e4a801fc3', 'Fabianus Jan', '', 1),
(9, 'angga', '202cb962ac59075b964b07152d234b70', 'angga yudho', '', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatid`);

--
-- Indeks untuk tabel `chatroom`
--
ALTER TABLE `chatroom`
  ADD PRIMARY KEY (`chatroomid`);

--
-- Indeks untuk tabel `chat_member`
--
ALTER TABLE `chat_member`
  ADD PRIMARY KEY (`chat_memberid`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`Id_detail_transaksi`);

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`Id_dokter`);

--
-- Indeks untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`Id_konsultasi`);

--
-- Indeks untuk tabel `pemilik_hewan`
--
ALTER TABLE `pemilik_hewan`
  ADD PRIMARY KEY (`Id_Pemilik`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`Id_Produk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `chatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `chatroom`
--
ALTER TABLE `chatroom`
  MODIFY `chatroomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `chat_member`
--
ALTER TABLE `chat_member`
  MODIFY `chat_memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
