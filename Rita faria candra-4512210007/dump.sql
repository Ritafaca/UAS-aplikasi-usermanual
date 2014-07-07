# Dump File
#
# Database is ported from MS Access
#--------------------------------------------------------
# Program Version 3.0.148

CREATE DATABASE IF NOT EXISTS `movedb`;
USE `movedb`;

#
# Table structure for table 'Kirim'
#

DROP TABLE IF EXISTS `Kirim`;

CREATE TABLE `Kirim` (
  `No_Kirim` INTEGER NOT NULL, 
  `Tgl_Kirim` DATETIME, 
  `Kode_Pelanggan` VARCHAR(255), 
  `No_Pesan` INTEGER, 
  `Kode_Produk` VARCHAR(255), 
  `Jumlah_Produk` INTEGER, 
  PRIMARY KEY (`No_Kirim`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Kirim'
#

INSERT INTO `Kirim` (`No_Kirim`, `Tgl_Kirim`, `Kode_Pelanggan`, `No_Pesan`, `Kode_Produk`, `Jumlah_Produk`) VALUES (1, '2013-02-12 00:00:00', '0011', 1, '00011', 50);
INSERT INTO `Kirim` (`No_Kirim`, `Tgl_Kirim`, `Kode_Pelanggan`, `No_Pesan`, `Kode_Produk`, `Jumlah_Produk`) VALUES (2, '2013-02-15 00:00:00', '0012', 2, '00012', 150);
INSERT INTO `Kirim` (`No_Kirim`, `Tgl_Kirim`, `Kode_Pelanggan`, `No_Pesan`, `Kode_Produk`, `Jumlah_Produk`) VALUES (3, '2013-03-24 00:00:00', '0013', 3, '00013', 120);
INSERT INTO `Kirim` (`No_Kirim`, `Tgl_Kirim`, `Kode_Pelanggan`, `No_Pesan`, `Kode_Produk`, `Jumlah_Produk`) VALUES (4, '2013-04-15 00:00:00', '0014', 4, '00014', 70);
INSERT INTO `Kirim` (`No_Kirim`, `Tgl_Kirim`, `Kode_Pelanggan`, `No_Pesan`, `Kode_Produk`, `Jumlah_Produk`) VALUES (5, '2013-05-17 00:00:00', '0015', 5, '00015', 30);
# 5 records

#
# Table structure for table 'Order'
#

DROP TABLE IF EXISTS `Order`;

CREATE TABLE `Order` (
  `Kode_Pengrajin` VARCHAR(255) NOT NULL, 
  `Kode_Produk` VARCHAR(255), 
  `No_Order` INTEGER, 
  `Jumlah_Produk` INTEGER, 
  `Tgl_Order` DATETIME, 
  PRIMARY KEY (`Kode_Pengrajin`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Order'
#

INSERT INTO `Order` (`Kode_Pengrajin`, `Kode_Produk`, `No_Order`, `Jumlah_Produk`, `Tgl_Order`) VALUES ('11111', '00011', 1, 50, '2013-02-07 00:00:00');
INSERT INTO `Order` (`Kode_Pengrajin`, `Kode_Produk`, `No_Order`, `Jumlah_Produk`, `Tgl_Order`) VALUES ('22222', '00012', 2, 150, '2013-02-10 00:00:00');
INSERT INTO `Order` (`Kode_Pengrajin`, `Kode_Produk`, `No_Order`, `Jumlah_Produk`, `Tgl_Order`) VALUES ('33333', '00013', 3, 120, '2013-03-19 00:00:00');
INSERT INTO `Order` (`Kode_Pengrajin`, `Kode_Produk`, `No_Order`, `Jumlah_Produk`, `Tgl_Order`) VALUES ('44444', '00014', 4, 70, '2013-04-10 00:00:00');
INSERT INTO `Order` (`Kode_Pengrajin`, `Kode_Produk`, `No_Order`, `Jumlah_Produk`, `Tgl_Order`) VALUES ('55555', '00015', 5, 30, '2013-05-12 00:00:00');
# 5 records

#
# Table structure for table 'Packing'
#

DROP TABLE IF EXISTS `Packing`;

CREATE TABLE `Packing` (
  `No_Packing` INTEGER NOT NULL, 
  `No_Pesan` INTEGER, 
  `Kode_Pelanggan` VARCHAR(255), 
  `Kode_Produk` VARCHAR(255), 
  `Jumlah_Produk` INTEGER, 
  `Tgl_Packing` DATETIME, 
  `Status` VARCHAR(255), 
  PRIMARY KEY (`No_Packing`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Packing'
#

INSERT INTO `Packing` (`No_Packing`, `No_Pesan`, `Kode_Pelanggan`, `Kode_Produk`, `Jumlah_Produk`, `Tgl_Packing`, `Status`) VALUES (1, 1, '001001', '00011', 50, '2013-02-09 00:00:00', 'Ready');
INSERT INTO `Packing` (`No_Packing`, `No_Pesan`, `Kode_Pelanggan`, `Kode_Produk`, `Jumlah_Produk`, `Tgl_Packing`, `Status`) VALUES (2, 2, '001002', '00012', 150, '2013-02-12 00:00:00', 'Ready');
INSERT INTO `Packing` (`No_Packing`, `No_Pesan`, `Kode_Pelanggan`, `Kode_Produk`, `Jumlah_Produk`, `Tgl_Packing`, `Status`) VALUES (3, 3, '001003', '00013', 120, '2013-03-21 00:00:00', 'Ready');
INSERT INTO `Packing` (`No_Packing`, `No_Pesan`, `Kode_Pelanggan`, `Kode_Produk`, `Jumlah_Produk`, `Tgl_Packing`, `Status`) VALUES (4, 4, '001004', '00014', 70, '2013-04-12 00:00:00', 'Not Ready');
INSERT INTO `Packing` (`No_Packing`, `No_Pesan`, `Kode_Pelanggan`, `Kode_Produk`, `Jumlah_Produk`, `Tgl_Packing`, `Status`) VALUES (5, 5, '001005', '00015', 30, '2013-05-14 00:00:00', 'Ready');
# 5 records

#
# Table structure for table 'Pelanggan'
#

DROP TABLE IF EXISTS `Pelanggan`;

CREATE TABLE `Pelanggan` (
  `Kode_Pelanggan` VARCHAR(255) NOT NULL, 
  `User_ID` VARCHAR(255), 
  `Nama_Pelanggan` VARCHAR(255), 
  `Alamat` VARCHAR(255), 
  `Negara` VARCHAR(255), 
  `Kode_Pos` INTEGER, 
  `Telp_Rumah` INTEGER, 
  `Handphone` VARCHAR(255), 
  `Info_Tambahan` VARCHAR(255), 
  `Email` VARCHAR(255), 
  `Tgl_Daftar` DATETIME, 
  PRIMARY KEY (`Kode_Pelanggan`), 
  INDEX (`User_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Pelanggan'
#

INSERT INTO `Pelanggan` (`Kode_Pelanggan`, `User_ID`, `Nama_Pelanggan`, `Alamat`, `Negara`, `Kode_Pos`, `Telp_Rumah`, `Handphone`, `Info_Tambahan`, `Email`, `Tgl_Daftar`) VALUES ('0011', 'Rarasena', 'Rara', 'Jakarta', 'Indonesia', 19190, 55590, '083999067888', '@RaraFrislya', 'Rarafrislya@gmail.com', '2013-01-12 00:00:00');
INSERT INTO `Pelanggan` (`Kode_Pelanggan`, `User_ID`, `Nama_Pelanggan`, `Alamat`, `Negara`, `Kode_Pos`, `Telp_Rumah`, `Handphone`, `Info_Tambahan`, `Email`, `Tgl_Daftar`) VALUES ('0012', 'Farah_Q', 'Farah', 'Depok', 'Indonesia', 21178, 66789, '089223480988', '@FarahQajj', 'Q_FarahAjj@yahoo.com', '2013-01-09 00:00:00');
INSERT INTO `Pelanggan` (`Kode_Pelanggan`, `User_ID`, `Nama_Pelanggan`, `Alamat`, `Negara`, `Kode_Pos`, `Telp_Rumah`, `Handphone`, `Info_Tambahan`, `Email`, `Tgl_Daftar`) VALUES ('0013', 'TasyaBeby', 'Beby', 'Bandung', 'Indonesia', 45660, 23116, '087780930525', '@BebyCuu', 'BebyTas@hotmail.com', '2013-01-22 00:00:00');
INSERT INTO `Pelanggan` (`Kode_Pelanggan`, `User_ID`, `Nama_Pelanggan`, `Alamat`, `Negara`, `Kode_Pos`, `Telp_Rumah`, `Handphone`, `Info_Tambahan`, `Email`, `Tgl_Daftar`) VALUES ('0014', 'PopyKusmala', 'Popy', 'Bali', 'Indonesia', 23477, 46700, '089235990213', '@PoD_Sya', 'PoppyD@ymail.com', '2013-02-08 00:00:00');
INSERT INTO `Pelanggan` (`Kode_Pelanggan`, `User_ID`, `Nama_Pelanggan`, `Alamat`, `Negara`, `Kode_Pos`, `Telp_Rumah`, `Handphone`, `Info_Tambahan`, `Email`, `Tgl_Daftar`) VALUES ('0015', 'AndinSa', 'Sasa', 'Surabaya', 'Indonesia', 19344, 78009, '085245456709', '@ASAndin', 'ASA_Andin@gmail.com', '2013-04-04 00:00:00');
# 5 records

#
# Table structure for table 'Pengrajin'
#

DROP TABLE IF EXISTS `Pengrajin`;

CREATE TABLE `Pengrajin` (
  `Kode_Pengrajin` VARCHAR(255) NOT NULL, 
  `Nama_Pengrajin` VARCHAR(255), 
  `Alamat_Pengrajin` VARCHAR(255), 
  `No_Telephone` VARCHAR(255), 
  PRIMARY KEY (`Kode_Pengrajin`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Pengrajin'
#

INSERT INTO `Pengrajin` (`Kode_Pengrajin`, `Nama_Pengrajin`, `Alamat_Pengrajin`, `No_Telephone`) VALUES ('11111', 'Usna', 'Jakarta', '0899066780');
INSERT INTO `Pengrajin` (`Kode_Pengrajin`, `Nama_Pengrajin`, `Alamat_Pengrajin`, `No_Telephone`) VALUES ('22222', 'Sadin', 'Jakarta', '0833456000');
INSERT INTO `Pengrajin` (`Kode_Pengrajin`, `Nama_Pengrajin`, `Alamat_Pengrajin`, `No_Telephone`) VALUES ('33333', 'Noni', 'Jakarta', '0877809445');
INSERT INTO `Pengrajin` (`Kode_Pengrajin`, `Nama_Pengrajin`, `Alamat_Pengrajin`, `No_Telephone`) VALUES ('44444', 'Syahfudin', 'Jakarta', '0852334555');
INSERT INTO `Pengrajin` (`Kode_Pengrajin`, `Nama_Pengrajin`, `Alamat_Pengrajin`, `No_Telephone`) VALUES ('55555', 'Balmasa', 'Jakarta', '0897770978');
# 5 records

#
# Table structure for table 'PesanDetail'
#

DROP TABLE IF EXISTS `PesanDetail`;

CREATE TABLE `PesanDetail` (
  `No_Pesan` INTEGER NOT NULL, 
  `Kode_Produk` VARCHAR(255), 
  `Jumlah_Pesan` INTEGER, 
  `Diskon` VARCHAR(255), 
  `Status_Pesanan` VARCHAR(255), 
  PRIMARY KEY (`No_Pesan`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'PesanDetail'
#

INSERT INTO `PesanDetail` (`No_Pesan`, `Kode_Produk`, `Jumlah_Pesan`, `Diskon`, `Status_Pesanan`) VALUES (1, '00011', 20, NULL, 'Delivered');
INSERT INTO `PesanDetail` (`No_Pesan`, `Kode_Produk`, `Jumlah_Pesan`, `Diskon`, `Status_Pesanan`) VALUES (2, '00012', 100, '600000', 'Delivered');
INSERT INTO `PesanDetail` (`No_Pesan`, `Kode_Produk`, `Jumlah_Pesan`, `Diskon`, `Status_Pesanan`) VALUES (3, '00013', 80, '760000', 'Delivered');
INSERT INTO `PesanDetail` (`No_Pesan`, `Kode_Produk`, `Jumlah_Pesan`, `Diskon`, `Status_Pesanan`) VALUES (4, '00014', 50, '187500', 'Delivered');
INSERT INTO `PesanDetail` (`No_Pesan`, `Kode_Produk`, `Jumlah_Pesan`, `Diskon`, `Status_Pesanan`) VALUES (5, '00015', 15, NULL, 'Pending');
# 5 records

#
# Table structure for table 'PesanHeader'
#

DROP TABLE IF EXISTS `PesanHeader`;

CREATE TABLE `PesanHeader` (
  `No_Pesan` INTEGER NOT NULL, 
  `Kode_Pelanggan` VARCHAR(255), 
  `Tgl_Pesan` DATETIME, 
  `Tot_Nilai_Pesan` INTEGER, 
  `Status` VARCHAR(255), 
  PRIMARY KEY (`No_Pesan`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'PesanHeader'
#

INSERT INTO `PesanHeader` (`No_Pesan`, `Kode_Pelanggan`, `Tgl_Pesan`, `Tot_Nilai_Pesan`, `Status`) VALUES (1, '0011', '2013-02-07 00:00:00', 20, 'Delivered');
INSERT INTO `PesanHeader` (`No_Pesan`, `Kode_Pelanggan`, `Tgl_Pesan`, `Tot_Nilai_Pesan`, `Status`) VALUES (2, '0012', '2013-02-10 00:00:00', 100, 'Delivered');
INSERT INTO `PesanHeader` (`No_Pesan`, `Kode_Pelanggan`, `Tgl_Pesan`, `Tot_Nilai_Pesan`, `Status`) VALUES (3, '0013', '2013-03-19 00:00:00', 80, 'Delivered');
INSERT INTO `PesanHeader` (`No_Pesan`, `Kode_Pelanggan`, `Tgl_Pesan`, `Tot_Nilai_Pesan`, `Status`) VALUES (4, '0014', '2013-04-10 00:00:00', 50, 'Delivered');
INSERT INTO `PesanHeader` (`No_Pesan`, `Kode_Pelanggan`, `Tgl_Pesan`, `Tot_Nilai_Pesan`, `Status`) VALUES (5, '0015', '2013-05-12 00:00:00', 15, 'Pending');
# 5 records

#
# Table structure for table 'Produk'
#

DROP TABLE IF EXISTS `Produk`;

CREATE TABLE `Produk` (
  `Kode_Produk` VARCHAR(255) NOT NULL, 
  `Kategori` VARCHAR(255), 
  `Ukuran` VARCHAR(255), 
  `Panjang` VARCHAR(255), 
  `Lebar` VARCHAR(255), 
  `Warna` VARCHAR(255), 
  `Bahan` VARCHAR(255), 
  `Harga_Produk` DECIMAL(19,4), 
  `Jumlah` INTEGER, 
  `Nama_Produk` VARCHAR(255), 
  `Harga_Beli` DECIMAL(19,4), 
  `Deskripsi` VARCHAR(255), 
  `Kode_Pengrajin` VARCHAR(255), 
  PRIMARY KEY (`Kode_Produk`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Produk'
#

INSERT INTO `Produk` (`Kode_Produk`, `Kategori`, `Ukuran`, `Panjang`, `Lebar`, `Warna`, `Bahan`, `Harga_Produk`, `Jumlah`, `Nama_Produk`, `Harga_Beli`, `Deskripsi`, `Kode_Pengrajin`) VALUES ('00011', 'Boneka', '100', '50', '70', 'Hijau', 'KAPAS', 150000, 50, 'Beruang', 120000, 'Tersedia', '11111');
INSERT INTO `Produk` (`Kode_Produk`, `Kategori`, `Ukuran`, `Panjang`, `Lebar`, `Warna`, `Bahan`, `Harga_Produk`, `Jumlah`, `Nama_Produk`, `Harga_Beli`, `Deskripsi`, `Kode_Pengrajin`) VALUES ('00012', 'Boneka', '50', '15', '35', 'Putih', 'VELBOA', 120000, 150, 'Kelinci', 100000, 'Tersedia', '22222');
INSERT INTO `Produk` (`Kode_Produk`, `Kategori`, `Ukuran`, `Panjang`, `Lebar`, `Warna`, `Bahan`, `Harga_Produk`, `Jumlah`, `Nama_Produk`, `Harga_Beli`, `Deskripsi`, `Kode_Pengrajin`) VALUES ('00013', 'Boneka', '90', '30', '60', 'Kuning', 'RAFSUR', 190000, 120, 'Spongebob', 170000, 'Tersedia', '33333');
INSERT INTO `Produk` (`Kode_Produk`, `Kategori`, `Ukuran`, `Panjang`, `Lebar`, `Warna`, `Bahan`, `Harga_Produk`, `Jumlah`, `Nama_Produk`, `Harga_Beli`, `Deskripsi`, `Kode_Pengrajin`) VALUES ('00014', 'Boneka', '100', '50', '70', 'Pink', 'SNAIL', 75000, 70, 'Kura-kura', 55000, 'Tersedia', '44444');
INSERT INTO `Produk` (`Kode_Produk`, `Kategori`, `Ukuran`, `Panjang`, `Lebar`, `Warna`, `Bahan`, `Harga_Produk`, `Jumlah`, `Nama_Produk`, `Harga_Beli`, `Deskripsi`, `Kode_Pengrajin`) VALUES ('00015', 'Boneka', '20', '10', '25', 'Biru', 'NYLEX', 75000, 30, 'bebek', 55000, 'Tersedia', '55555');
# 5 records

#
# Table structure for table 'Retur'
#

DROP TABLE IF EXISTS `Retur`;

CREATE TABLE `Retur` (
  `No_Retur` INTEGER NOT NULL, 
  `No_Kirim` INTEGER, 
  `Tgl_Retur` DATETIME, 
  `Kode_Pelanggan` VARCHAR(255), 
  `No_Pesan` INTEGER, 
  `Kode_Produk` VARCHAR(255), 
  `Jumlah_Produk` INTEGER, 
  PRIMARY KEY (`No_Retur`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Retur'
#

INSERT INTO `Retur` (`No_Retur`, `No_Kirim`, `Tgl_Retur`, `Kode_Pelanggan`, `No_Pesan`, `Kode_Produk`, `Jumlah_Produk`) VALUES (101, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Retur` (`No_Retur`, `No_Kirim`, `Tgl_Retur`, `Kode_Pelanggan`, `No_Pesan`, `Kode_Produk`, `Jumlah_Produk`) VALUES (202, 2, '2013-02-25 00:00:00', '0012', 2, '00012', 150);
INSERT INTO `Retur` (`No_Retur`, `No_Kirim`, `Tgl_Retur`, `Kode_Pelanggan`, `No_Pesan`, `Kode_Produk`, `Jumlah_Produk`) VALUES (303, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Retur` (`No_Retur`, `No_Kirim`, `Tgl_Retur`, `Kode_Pelanggan`, `No_Pesan`, `Kode_Produk`, `Jumlah_Produk`) VALUES (404, 4, '2013-04-23 00:00:00', '0014', 4, '00014', 70);
INSERT INTO `Retur` (`No_Retur`, `No_Kirim`, `Tgl_Retur`, `Kode_Pelanggan`, `No_Pesan`, `Kode_Produk`, `Jumlah_Produk`) VALUES (505, NULL, NULL, NULL, NULL, NULL, NULL);
# 5 records

#
# Table structure for table 'User'
#

DROP TABLE IF EXISTS `User`;

CREATE TABLE `User` (
  `User_ID` VARCHAR(255) NOT NULL, 
  `User_Group` VARCHAR(255), 
  `User_Password` VARCHAR(255), 
  PRIMARY KEY (`User_ID`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'User'
#

INSERT INTO `User` (`User_ID`, `User_Group`, `User_Password`) VALUES ('AndinSa', '-', 'AANDINSATA');
INSERT INTO `User` (`User_ID`, `User_Group`, `User_Password`) VALUES ('Farah_Q', '-', 'QFarah1994');
INSERT INTO `User` (`User_ID`, `User_Group`, `User_Password`) VALUES ('PopyKusmala', '-', 'PoppyKusmalaWati');
INSERT INTO `User` (`User_ID`, `User_Group`, `User_Password`) VALUES ('Rarasena', '-', 'Rara15Mei');
INSERT INTO `User` (`User_ID`, `User_Group`, `User_Password`) VALUES ('TasyaBeby', '-', '2403Tasya');
# 5 records

