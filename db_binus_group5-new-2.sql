-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2024 at 10:12 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_binus_group5`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `deskripsi`) VALUES
(1, 'Apa itu ulos?', 'Ulos atau sering juga disebut kain ulos adalah salah satu busana khas Indonesia. Ulos secara turun temurun dikembangkan oleh masyarakat Batak, Sumatera utara. Dari bahasa asalnya, ulos berarti kain. Cara membuat ulos serupa dengan cara membuat songket khas Palembang, yaitu menggunakan alat tenun bukan mesin.  Warna dominan pada ulos adalah merah, hitam, dan putih yang dihiasi oleh ragam tenunan dari benang emas atau perak. Mulanya ulos dikenakan di dalam bentuk selendang atau sarung saja, kerap digunakan pada perhelatan resmi atau upacara adat Batak, namun kini banyak dijumpai di dalam bentuk produk sovenir, sarung bantal, ikat pinggang, tas, pakaian, alas meja, dasi, dompet, dan gorden.  Ulos juga kadang-kadang diberikan kepada sang ibu yang sedang mengandung supaya mempermudah lahirnya sang bayi ke dunia dan untuk melindungi ibu dari segala mara bahaya yang mengancam saat proses persalinan.'),
(1, 'Apa itu ulos?', 'Ulos atau sering juga disebut kain ulos adalah salah satu busana khas Indonesia. Ulos secara turun temurun dikembangkan oleh masyarakat Batak, Sumatera utara. Dari bahasa asalnya, ulos berarti kain. Cara membuat ulos serupa dengan cara membuat songket khas Palembang, yaitu menggunakan alat tenun bukan mesin.  Warna dominan pada ulos adalah merah, hitam, dan putih yang dihiasi oleh ragam tenunan dari benang emas atau perak. Mulanya ulos dikenakan di dalam bentuk selendang atau sarung saja, kerap digunakan pada perhelatan resmi atau upacara adat Batak, namun kini banyak dijumpai di dalam bentuk produk sovenir, sarung bantal, ikat pinggang, tas, pakaian, alas meja, dasi, dompet, dan gorden.  Ulos juga kadang-kadang diberikan kepada sang ibu yang sedang mengandung supaya mempermudah lahirnya sang bayi ke dunia dan untuk melindungi ibu dari segala mara bahaya yang mengancam saat proses persalinan.');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Pakaian'),
(2, 'Alas Kaki'),
(3, 'Aksesoris');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(15) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(15) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_pemesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `bukti_pembayaran` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(10) NOT NULL,
  `qty` int(9) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `gambar` varchar(45) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `harga`, `qty`, `deskripsi`, `gambar`, `id_kategori`) VALUES
(1, 'Kaos Polos Pria Maroon', 120000, 25, 'New', 'KaosMaroon.jpg', 1),
(23, 'Kaos Polos Pria Hitam', 100000, 20, 'New', 'KaosPolosHitam.jpeg', 1),
(24, 'Kemeja Kerja Wanita', 250000, 30, 'New', 'KemejaWanita1.jpeg', 1),
(25, 'Kemeja Linen Wanita', 150000, 15, 'New', 'KemejaLinenWanita.png', 1),
(26, 'Kaos Polos Pria Hijau', 120000, 26, 'New', 'KaosPriaHijau.jpg', 1),
(27, 'Kaos Polos Pria Navy', 150000, 20, 'New', 'KaosPriaNavy.png', 1),
(28, 'Sneakers Wanita Pink', 500000, 25, 'New', 'SepatuWanita1.jpeg', 2),
(29, 'Kemeja Pendek Pria', 350000, 15, 'New', 'KemejaPendekPria.png', 1),
(30, 'Blouse Wanita Navy', 250000, 25, 'New', 'BlouseWanitaNavy.png', 1),
(31, 'Blouse Wanita Pink', 150000, 20, 'New', 'BlouseWanitaPink.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(3) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `role`) VALUES
(1, 'Admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `alamat`, `email`, `nohp`, `username`, `password`, `role`) VALUES
(1, 'Admin Jakarta', 'Sunter, Jakarta Utara', 'admin@gmail.com', '02145678910', 'admin', 'admin', 1),
(2, 'Rizki Kurniawati', 'Sunter Agung', 'rizki.kurniawati@binus.ac.id', '081234567826', 'rizki', 'rizki123', 2),
(3, 'M Ivan Firmansyah', 'Jakarta Timur', 'muhamad.firmansyah003@binus.ac.id', '08512344321', 'ivan', 'ivan123', 2),
(4, 'Adib Hilmi Listyono ', 'Indramayu', 'adib.listyono@binus.ac.id', '083367826354', 'adib', 'adib123', 2),
(5, 'Alviandra', 'Bekasi ', 'alviandra.putra@binus.ac.id', '087712534675', 'alvian', 'alvian123', 2),
(6, 'Rifqy Maulana Akhsan', 'Tangerang', 'rifqy.akhsan@binus.ac.id', '085312648635', 'akhsan', 'akhsan123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_userFK` (`id_user`),
  ADD KEY ` Kesalahan membuat kunci asing pada id_produk (periksa tipe data` (`id_produk`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `modal` (`id_produk`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_pemesanan`,`id_user`,`id_produk`),
  ADD KEY `id_user_FK` (`id_user`),
  ADD KEY `id_produkFK` (`id_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategoriFK` (`id_kategori`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_roleFK` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT ` Kesalahan membuat kunci asing pada id_produk (periksa tipe data` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`),
  ADD CONSTRAINT `id_userFK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `modal` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `id_produkFK` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`),
  ADD CONSTRAINT `id_user_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `id_kategoriFK` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `id_roleFK` FOREIGN KEY (`role`) REFERENCES `role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
