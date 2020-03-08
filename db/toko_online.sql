-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 Agu 2019 pada 06.51
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu', 'sepatu merk all star', 'Pakaian pria', 300000, 9, 'sepatu.jpg'),
(2, 'kamera', 'kamera canon eos 800d', 'Elektronik', 5000000, 30, 'kamera.jpg'),
(3, 'samsung Galaxy A20', 'samsung Galaxy A20', 'Elektronik', 3000000, 20, 'hp.jpg'),
(8, 'Jam tanggan', 'Jam Tanggan asli', 'Pakaian Pria', 400000, 40, 'jam.jpg'),
(9, 'Tv Samsung', ' model numbers 2019: Every TV series explained | Expert ', 'Elektronik', 4000000, 50, 'samsung.jpg'),
(10, 'Ac Hitachi ', 'Copper, Sugoi RSH317HBEA, Silver', 'Elektronik', 3000000, 40, 'hitachi.jpg'),
(11, 'Kulkas Polytron', ' Kulkas 2 Pintu ', 'Elektronik', 3500000, 50, 'kulkas_polytron.jpg'),
(12, 'Blander', 'juice buah blander portable shake blander plastik', 'Elektronik', 500000, 30, 'blander.jpg'),
(15, 'basket', 'basket asli', 'Peralatan Olahraga', 1000000, 30, 'basket1.jpg'),
(16, 'Barbel', 'Barbel Asli', 'Peralatan Olahraga', 700000, 60, 'barbel.jpg'),
(17, 'Clip', 'Clip Asli', 'Peralatan Olahraga', 2000000, 40, 'clip.jpg'),
(18, 'Pingpong', 'Pingpong asli', 'Peralatan Olahraga', 1000000, 10, 'pingpong.jpg'),
(19, 'Skateboart', 'Skateboart Asli', 'Peralatan Olahraga', 3000000, 70, 'skateboard.jpg'),
(20, 'Voly', 'Voly Asli', 'Peralatan Olahraga', 1000000, 50, 'volly.jpg'),
(21, 'Dumbel', 'Dumbel Asli', 'Peralatan Olahraga', 3000000, 40, 'dumbel.jpg'),
(22, 'kemeja', 'Kemeja Asli', 'Pakaian Pria', 600000, 10, 'kemeja.jpg'),
(25, 'Pakaian', 'Pakaian Wanita Jilbab', 'Pakaian Wanita', 1000000, 30, 'pakaian_wanita.jpg'),
(26, 'Pakaian', 'Pakaian Wanita Jilbab', 'Pakaian Wanita', 500000, 60, 'pakaian_wanita1.jpg'),
(27, 'Pakaian', 'Pakaian Wanita Jilbab', 'Pakaian Wanita', 700000, 50, 'pakaian_wanita5.jpg'),
(28, 'Pakaian', 'Pakaian Wanita Jilbab', 'Pakaian Wanita', 4000000, 60, 'pakaian_wanita8.jpg'),
(29, 'Pakaian', 'Pakaian Anak', 'Pakaian Anak', 200000, 20, 'pakaian_anak_2jpg2.jpg'),
(30, 'Pakaian', 'Pakaian Anak', 'Pakaian Anak', 500000, 10, 'pakaian_anak_3jpg.jpg'),
(31, 'Pakaian', 'Pakaian Anak', 'Pakaian Anak', 100000, 20, 'pakaian_anak_1jpg.jpg'),
(32, 'Pakaian', 'Pakaian Anak', 'Pakaian Anak', 700000, 60, 'pakaian_anak.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'AZWAR ANAS GUSTI', 'JL.TARUNA', '2019-08-22 13:48:36', '2019-08-23 13:48:36'),
(2, 'AZWAR KOTO', 'JL.kayu PUTIH', '2019-08-22 17:00:19', '2019-08-23 17:00:19'),
(3, 'AZWAR', 'JL.MAWAR', '2019-08-22 17:06:04', '2019-08-23 17:06:04'),
(4, '', '', '2019-08-22 20:18:13', '2019-08-23 20:18:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Sepatu', 1, 300000, ''),
(2, 1, 2, 'kamera', 1, 5000000, ''),
(3, 1, 3, 'samsung Galaxy A20', 1, 3000000, ''),
(4, 1, 8, 'Jam tanggan', 1, 400000, ''),
(5, 1, 9, 'Tv Samsung', 1, 4000000, ''),
(6, 1, 10, 'Ac Hitachi ', 1, 3000000, ''),
(7, 1, 11, 'Kulkas Polytron', 1, 3500000, ''),
(8, 1, 12, 'Blander', 2, 500000, ''),
(9, 2, 12, 'Blander', 1, 500000, ''),
(10, 2, 3, 'samsung Galaxy A20', 1, 3000000, ''),
(11, 2, 8, 'Jam tanggan', 1, 400000, ''),
(12, 2, 11, 'Kulkas Polytron', 1, 3500000, ''),
(13, 3, 1, 'Sepatu', 1, 300000, ''),
(14, 3, 2, 'kamera', 1, 5000000, ''),
(15, 3, 3, 'samsung Galaxy A20', 1, 3000000, ''),
(16, 3, 8, 'Jam tanggan', 1, 400000, ''),
(17, 4, 1, 'Sepatu', 1, 300000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
UPDATE tb_barang SET stok = stok-NEW.jumlah
WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
