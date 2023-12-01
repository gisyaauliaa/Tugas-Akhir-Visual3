-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2023 pada 18.14
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_apotek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_apoteker`
--

CREATE TABLE `tbl_apoteker` (
  `id` int(11) NOT NULL,
  `id_apoteker` varchar(10) NOT NULL,
  `nama_apoteker` varchar(25) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `noIzin_apoteker` varchar(25) NOT NULL,
  `tglIzin_apoteker` varchar(25) NOT NULL,
  `tglIzin_berakhir` varchar(25) NOT NULL,
  `jam_kerja` varchar(10) NOT NULL,
  `jabatan` enum('Apoteker','Staff Apoteker') NOT NULL,
  `gaji` varchar(15) NOT NULL,
  `cabang_apotek` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_apoteker`
--

INSERT INTO `tbl_apoteker` (`id`, `id_apoteker`, `nama_apoteker`, `jenis_kelamin`, `ttl`, `alamat`, `no_telp`, `email`, `noIzin_apoteker`, `tglIzin_apoteker`, `tglIzin_berakhir`, `jam_kerja`, `jabatan`, `gaji`, `cabang_apotek`) VALUES
(1, 'A-01', 'Diani Kartika Putri', 'Perempuan', 'Pky, 16/01/2004', 'Jl. Hiu Putih', '08111111', 'dianikp@gmail.com', 'IAP162004dianikp', '01/11/2023', '30/11/2026', '07.30-13.0', 'Apoteker', '2500000', 'Kayutangi'),
(2, 'A-02', 'Lisa Melinda Putri', 'Perempuan', 'Pky, 26/03/2003', 'Jl. Soekarno', '08222222', 'lisamp@gmail.com', 'IAP262003lisamp', '02/11/2023', '30/11/2026', '13.00-17.0', 'Apoteker', '2500000', 'Veteran'),
(3, 'A-03', 'Siti Sarah Fini Zulaika', 'Perempuan', 'Pky, 29/11/2003', 'Jl. Kelapa Sawit', '08333333', 'sitisarah@gmail.com', 'IAP292003sitisarah', '16/11/2023', '30/11/2026', '07.30-13.0', 'Staff Apoteker', '2000000', 'Kayutangi'),
(4, 'A-04', 'Zahra Dwi Putri', 'Perempuan', 'Pky, 07/12/2002', 'Jl. Sultan Adam', '0844444', 'zahradp@gmail.com', 'IAP072002zahradp', '30/11/2026', '13.00-17.0', '20/11/2023', 'Staff Apoteker', '2000000', 'Veteran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dtl_pembelian`
--

CREATE TABLE `tbl_dtl_pembelian` (
  `id` int(11) NOT NULL,
  `id_dtl_pembelian` varchar(10) NOT NULL,
  `id_obat` varchar(10) NOT NULL,
  `id_transaksi_pb` varchar(10) NOT NULL,
  `nama_obat` varchar(25) NOT NULL,
  `harga_satuan` varchar(15) NOT NULL,
  `kuantitas_obat` varchar(15) NOT NULL,
  `total_harga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_dtl_pembelian`
--

INSERT INTO `tbl_dtl_pembelian` (`id`, `id_dtl_pembelian`, `id_obat`, `id_transaksi_pb`, `nama_obat`, `harga_satuan`, `kuantitas_obat`, `total_harga`) VALUES
(1, 'DB-01', '1', 'PB-01', 'Paracetamol', '5000', '10', '50000'),
(2, 'DB-02', '2', 'PB-02', 'Scabimite', '15000', '10', '150000'),
(3, 'DB-03', '3', 'PB-03', 'Diapet', '3000', '15', '45000'),
(4, 'DB-04', '4', 'PB-04', 'OBH Combi', '10000', '5', '50000'),
(5, 'DB-05', '5', 'PB-05', 'Handsaplast', '1000', '20', '20000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dtl_penjualan`
--

CREATE TABLE `tbl_dtl_penjualan` (
  `id` int(11) NOT NULL,
  `id_dtl_penjualan` varchar(10) NOT NULL,
  `id_obat` varchar(10) NOT NULL,
  `id_transaksi_pj` varchar(10) NOT NULL,
  `nama_obat` varchar(25) NOT NULL,
  `harga_satuan` varchar(15) NOT NULL,
  `kuantitas_obat` varchar(15) NOT NULL,
  `total_harga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_dtl_penjualan`
--

INSERT INTO `tbl_dtl_penjualan` (`id`, `id_dtl_penjualan`, `id_obat`, `id_transaksi_pj`, `nama_obat`, `harga_satuan`, `kuantitas_obat`, `total_harga`) VALUES
(1, 'DP-01', '1', 'PJ-01', 'Paracetamol', '7000', '2', '14000'),
(2, 'DP-02', '2', 'PJ-02', 'Scabimite', '20000', '1', '20000'),
(3, 'DP-03', '3', 'PJ-03', 'Diapet', '5000', '1', '5000'),
(4, 'DP-04', '4', 'PJ-04', 'OBH Combi', '13000', '3', '39000'),
(5, 'DP-05', '5', 'PJ-05', 'Handsaplast', '4000', '2', '8000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenisobat`
--

CREATE TABLE `tbl_jenisobat` (
  `id` int(11) NOT NULL,
  `id_jenisobat` varchar(10) NOT NULL,
  `jenis_obat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jenisobat`
--

INSERT INTO `tbl_jenisobat` (`id`, `id_jenisobat`, `jenis_obat`) VALUES
(1, 'JO-01', 'Tablet'),
(2, 'JO-02', 'Cair'),
(3, 'JO-03', 'Kapsul'),
(4, 'JO-04', 'Oles'),
(5, 'JO-05', 'Tempel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_obat`
--

CREATE TABLE `tbl_obat` (
  `id` int(11) NOT NULL,
  `id_jenisobat` varchar(10) NOT NULL,
  `id_supplier` varchar(10) NOT NULL,
  `nama_supplier` varchar(25) NOT NULL,
  `kuantitas` varchar(10) NOT NULL,
  `harga_beli` varchar(15) NOT NULL,
  `harga_jual` varchar(15) NOT NULL,
  `tgl_kadaluarsa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_obat`
--

INSERT INTO `tbl_obat` (`id`, `id_jenisobat`, `id_supplier`, `nama_supplier`, `kuantitas`, `harga_beli`, `harga_jual`, `tgl_kadaluarsa`) VALUES
(1, 'JO-01', 'S-01', 'PT. Kimia Farma', '10', '5000', '7000', '2027-11-30'),
(2, 'JO-02', 'S-02', 'PT. Anugrah Argon Medika', '5', '15000', '20000', '2027-11-20'),
(3, 'JO-03', 'S-03', 'PT. Indofarma', '10', '3000', '5000', '2024-11-20'),
(4, 'JO-04', 'S-04', 'PT. Rajawali Nusindo', '15', '10000', '13000', '2024-11-30'),
(5, 'JO-05', 'S-05', 'PT. Bina Sukses', '15', '1000', '4000', '2024-11-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id` int(11) NOT NULL,
  `id_supplier` varchar(10) NOT NULL,
  `nama_supplier` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id`, `id_supplier`, `nama_supplier`, `alamat`, `no_telp`) VALUES
(1, 'S-01', 'PT. Kimia Farma', 'Jl. Kayutangi', '08111111'),
(2, 'S-02', 'PT. Anugrah Argon Medika', 'Jl. Sultan Adam', '0822222'),
(3, 'S-03', 'PT. Indofarma', 'Jl. Handil Bakti', '0833333'),
(4, 'S-04', 'PT. Rajawali Nusindo', 'Jl. Rajawali', '0844444'),
(5, 'S-05', 'PT. Bina Sukses', 'Jl. Veteran', '0855555');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi_pembelian`
--

CREATE TABLE `tbl_transaksi_pembelian` (
  `id` int(11) NOT NULL,
  `id_transaksi_pb` varchar(10) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `id_obat` varchar(10) NOT NULL,
  `nama_obat` varchar(25) NOT NULL,
  `kuantitas_obat` varchar(15) NOT NULL,
  `harga_beli` varchar(15) NOT NULL,
  `total_harga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_transaksi_pembelian`
--

INSERT INTO `tbl_transaksi_pembelian` (`id`, `id_transaksi_pb`, `tgl_transaksi`, `id_obat`, `nama_obat`, `kuantitas_obat`, `harga_beli`, `total_harga`) VALUES
(1, 'PB-01', '2023-10-16', '1', 'Paracetamol', '10', '5000', '50000'),
(2, 'PB-02', '2023-11-17', '2', 'Scabimite', '10', '15000', '150000'),
(3, 'PB-03', '2023-11-18', '3', 'Diapet', '15', '3000', '45000'),
(4, 'PB-04', '2023-11-20', '4', 'OBH Combi', '5', '10000', '50000'),
(5, 'PB-05', '2023-12-01', '5', 'OBH Combi', '20', '1000', '20000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi_penjualan`
--

CREATE TABLE `tbl_transaksi_penjualan` (
  `id` int(11) NOT NULL,
  `id_transaksi_pj` varchar(10) NOT NULL,
  `apoteker_id` varchar(10) NOT NULL,
  `id_obat` varchar(10) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `nama_obat` varchar(25) NOT NULL,
  `kuantitas_obat` varchar(10) NOT NULL,
  `total_harga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_transaksi_penjualan`
--

INSERT INTO `tbl_transaksi_penjualan` (`id`, `id_transaksi_pj`, `apoteker_id`, `id_obat`, `tgl_transaksi`, `nama_obat`, `kuantitas_obat`, `total_harga`) VALUES
(1, 'PJ-01', 'A-01', '1', '2023-10-16', 'Paracetamol', '2', '14000'),
(2, 'PJ-02', 'A-02', '2', '2023-11-17', 'Scabimite', '1', '20000'),
(3, 'PJ-03', 'A-03', '3', '2023-11-18', 'Diapet', '1', '5000'),
(4, 'PJ-04', 'A-04', '4', '2023-11-20', 'OBH Combi', '3', '39000'),
(5, 'PJ-05', 'A-05', '5', '2023-12-01', 'Handsaplast', '2', '8000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `level` enum('Apoteker','Staff Apoteker') NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `password`, `email`, `level`, `status`) VALUES
(1, 'gisyaauliaa', '272004gisya', 'gisya@gmail.com', 'Staff Apoteker', 1),
(2, 'dianikp', 'dkp123', 'dianikp@gmail.com', 'Apoteker', 1),
(3, 'lisamp', '26lisamp03', 'lisamp@gmail.com', 'Apoteker', 1),
(4, 'sitisarahfz', '2910ssfz', 'sitisarah@gmail.com', 'Staff Apoteker', 1),
(5, 'zahradp', '123zahra', 'zahradp@gmail.com', 'Staff Apoteker', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_apoteker`
--
ALTER TABLE `tbl_apoteker`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_dtl_pembelian`
--
ALTER TABLE `tbl_dtl_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_dtl_penjualan`
--
ALTER TABLE `tbl_dtl_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_jenisobat`
--
ALTER TABLE `tbl_jenisobat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_obat`
--
ALTER TABLE `tbl_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_transaksi_pembelian`
--
ALTER TABLE `tbl_transaksi_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_transaksi_penjualan`
--
ALTER TABLE `tbl_transaksi_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_apoteker`
--
ALTER TABLE `tbl_apoteker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_dtl_pembelian`
--
ALTER TABLE `tbl_dtl_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_dtl_penjualan`
--
ALTER TABLE `tbl_dtl_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_jenisobat`
--
ALTER TABLE `tbl_jenisobat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_obat`
--
ALTER TABLE `tbl_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_transaksi_pembelian`
--
ALTER TABLE `tbl_transaksi_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_transaksi_penjualan`
--
ALTER TABLE `tbl_transaksi_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
