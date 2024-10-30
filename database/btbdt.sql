-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2016 at 04:08 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btbdt`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hd`
--

CREATE TABLE `chi_tiet_hd` (
  `id` int(11) NOT NULL,
  `ma_hd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ma_sp` varchar(10) CHARACTER SET utf8 NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `thanh_tien` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chi_tiet_hd`
--

INSERT INTO `chi_tiet_hd` (`id`, `ma_hd`, `ma_sp`, `so_luong`, `thanh_tien`) VALUES
(1, 'HD00000001', 'SP00000001', 20, 240000000),
(2, 'HD00000001', 'SP00000002', 20, 240000000),
(3, 'HD00000001', 'SP00000003', 20, 220000000),
(4, 'HD00000001', 'SP00000004', 20, 176000000),
(5, 'HD00000001', 'SP00000005', 20, 48000000),
(6, 'HD00000002', 'SP00000001', 20, 240000000),
(7, 'HD00000002', 'SP00000002', 20, 240000000),
(8, 'HD00000002', 'SP00000003', 20, 220000000),
(9, 'HD00000002', 'SP00000004', 20, 176000000),
(10, 'HD00000002', 'SP00000005', 20, 48000000),
(11, 'HD00000003', 'SP00000001', 20, 240000000),
(12, 'HD00000003', 'SP00000002', 20, 240000000),
(13, 'HD00000003', 'SP00000003', 20, 220000000),
(14, 'HD00000003', 'SP00000004', 20, 176000000),
(15, 'HD00000003', 'SP00000005', 20, 48000000),
(16, 'HD00000004', 'SP00000001', 20, 240000000),
(17, 'HD00000004', 'SP00000002', 20, 240000000),
(18, 'HD00000004', 'SP00000003', 20, 220000000),
(19, 'HD00000004', 'SP00000004', 20, 176000000),
(20, 'HD00000004', 'SP00000005', 20, 48000000),
(21, 'HD00000005', 'SP00000001', 20, 240000000),
(22, 'HD00000005', 'SP00000002', 20, 240000000),
(23, 'HD00000005', 'SP00000003', 20, 220000000),
(24, 'HD00000005', 'SP00000004', 20, 176000000),
(25, 'HD00000005', 'SP00000005', 20, 48000000),
(26, 'HD00000006', 'SP00000001', 20, 240000000),
(27, 'HD00000006', 'SP00000002', 20, 240000000),
(28, 'HD00000006', 'SP00000003', 20, 220000000),
(29, 'HD00000006', 'SP00000004', 20, 176000000),
(30, 'HD00000006', 'SP00000005', 20, 48000000),
(31, 'HD00000007', 'SP00000001', 20, 240000000),
(32, 'HD00000007', 'SP00000002', 20, 240000000),
(33, 'HD00000007', 'SP00000003', 20, 220000000),
(34, 'HD00000007', 'SP00000004', 20, 176000000),
(35, 'HD00000007', 'SP00000005', 20, 48000000),
(36, 'HD00000008', 'SP00000001', 20, 240000000),
(37, 'HD00000008', 'SP00000002', 20, 240000000),
(38, 'HD00000008', 'SP00000003', 20, 220000000),
(39, 'HD00000008', 'SP00000004', 20, 176000000),
(40, 'HD00000008', 'SP00000005', 20, 48000000),
(41, 'HD00000009', 'SP00000001', 20, 240000000),
(42, 'HD00000009', 'SP00000002', 20, 240000000),
(43, 'HD00000009', 'SP00000003', 20, 220000000),
(44, 'HD00000009', 'SP00000004', 20, 176000000),
(45, 'HD00000009', 'SP00000005', 20, 48000000),
(46, 'HD00000010', 'SP00000001', 20, 240000000),
(47, 'HD00000010', 'SP00000002', 20, 240000000),
(48, 'HD00000010', 'SP00000003', 20, 220000000),
(49, 'HD00000010', 'SP00000004', 20, 176000000),
(50, 'HD00000010', 'SP00000005', 20, 48000000);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_pdh`
--

CREATE TABLE `chi_tiet_pdh` (
  `id` int(11) NOT NULL,
  `ma_sp` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ma_pdh` varchar(10) CHARACTER SET utf8 NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `thanhtien` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chi_tiet_pdh`
--

INSERT INTO `chi_tiet_pdh` (`id`, `ma_sp`, `ma_pdh`, `soluong`, `thanhtien`) VALUES
(1, 'SP00000001', 'PDH0000001', 2, 24000000),
(2, 'SP00000002', 'PDH0000001', 2, 24000000),
(3, 'SP00000003', 'PDH0000001', 2, 22000000),
(4, 'SP00000004', 'PDH0000001', 2, 17600000),
(5, 'SP00000005', 'PDH0000001', 2, 4800000),
(6, 'SP00000001', 'PDH0000002', 2, 24000000),
(7, 'SP00000002', 'PDH0000002', 2, 24000000),
(8, 'SP00000003', 'PDH0000002', 2, 22000000),
(9, 'SP00000004', 'PDH0000002', 2, 17600000),
(10, 'SP00000005', 'PDH0000002', 2, 4800000),
(11, 'SP00000001', 'PDH0000003', 2, 24000000),
(12, 'SP00000002', 'PDH0000003', 2, 24000000),
(13, 'SP00000003', 'PDH0000003', 2, 22000000),
(14, 'SP00000004', 'PDH0000003', 2, 17600000),
(15, 'SP00000005', 'PDH0000003', 2, 4800000);

-- --------------------------------------------------------

--
-- Table structure for table `db_chi_tiet_pn`
--

CREATE TABLE `db_chi_tiet_pn` (
  `id` int(11) NOT NULL,
  `ma_phieu_nhap` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ma_sp` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `gianhap` double DEFAULT NULL,
  `tong` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_chi_tiet_pn`
--

INSERT INTO `db_chi_tiet_pn` (`id`, `ma_phieu_nhap`, `ma_sp`, `so_luong`, `gianhap`, `tong`) VALUES
(1, 'PN00000001', 'SP00000001', 10, 20000000, 200000000),
(2, 'PN00000001', 'SP00000002', 10, 20000000, 200000000),
(3, 'PN00000001', 'SP00000003', 10, 20000000, 200000000),
(4, 'PN00000001', 'SP00000004', 10, 20000000, 200000000),
(5, 'PN00000001', 'SP00000005', 10, 20000000, 200000000),
(6, 'PN00000001', 'SP00000006', 10, 20000000, 200000000),
(7, 'PN00000001', 'SP00000007', 10, 20000000, 200000000),
(8, 'PN00000001', 'SP00000008', 10, 20000000, 200000000),
(9, 'PN00000001', 'SP00000009', 10, 20000000, 200000000),
(10, 'PN00000001', 'SP00000010', 10, 20000000, 200000000),
(11, 'PN00000002', 'SP00000011', 10, 20000000, 200000000),
(12, 'PN00000002', 'SP00000012', 10, 20000000, 200000000),
(13, 'PN00000002', 'SP00000013', 10, 20000000, 200000000),
(14, 'PN00000002', 'SP00000014', 10, 20000000, 200000000),
(15, 'PN00000002', 'SP00000015', 10, 20000000, 200000000),
(16, 'PN00000002', 'SP00000016', 10, 20000000, 200000000),
(17, 'PN00000002', 'SP00000017', 10, 20000000, 200000000),
(18, 'PN00000002', 'SP00000018', 10, 20000000, 200000000),
(19, 'PN00000002', 'SP00000019', 10, 20000000, 200000000),
(20, 'PN00000002', 'SP00000020', 10, 20000000, 200000000),
(21, 'PN00000003', 'SP00000021', 10, 20000000, 200000000),
(22, 'PN00000003', 'SP00000022', 10, 20000000, 200000000),
(23, 'PN00000003', 'SP00000023', 10, 20000000, 200000000),
(24, 'PN00000003', 'SP00000024', 10, 20000000, 200000000),
(25, 'PN00000003', 'SP00000025', 10, 20000000, 200000000),
(26, 'PN00000003', 'SP00000026', 10, 20000000, 200000000),
(27, 'PN00000003', 'SP00000027', 10, 20000000, 200000000),
(28, 'PN00000003', 'SP00000028', 10, 20000000, 200000000),
(29, 'PN00000003', 'SP00000029', 10, 20000000, 200000000),
(30, 'PN00000003', 'SP00000030', 10, 20000000, 200000000),
(31, 'PN00000004', 'SP00000001', 10, 20000000, 200000000),
(32, 'PN00000004', 'SP00000002', 10, 20000000, 200000000),
(33, 'PN00000004', 'SP00000003', 10, 20000000, 200000000),
(34, 'PN00000004', 'SP00000004', 10, 20000000, 200000000),
(35, 'PN00000004', 'SP00000005', 10, 20000000, 200000000),
(36, 'PN00000004', 'SP00000006', 10, 20000000, 200000000),
(37, 'PN00000004', 'SP00000007', 10, 20000000, 200000000),
(38, 'PN00000004', 'SP00000008', 10, 20000000, 200000000),
(39, 'PN00000004', 'SP00000009', 10, 20000000, 200000000),
(40, 'PN00000004', 'SP00000010', 10, 20000000, 200000000),
(41, 'PN00000005', 'SP00000011', 10, 20000000, 200000000),
(42, 'PN00000005', 'SP00000012', 10, 20000000, 200000000),
(43, 'PN00000005', 'SP00000013', 10, 20000000, 200000000),
(44, 'PN00000005', 'SP00000014', 10, 20000000, 200000000),
(45, 'PN00000005', 'SP00000015', 10, 20000000, 200000000),
(46, 'PN00000005', 'SP00000016', 10, 20000000, 200000000),
(47, 'PN00000005', 'SP00000017', 10, 20000000, 200000000),
(48, 'PN00000005', 'SP00000018', 10, 20000000, 200000000),
(49, 'PN00000005', 'SP00000019', 10, 20000000, 200000000),
(50, 'PN00000005', 'SP00000020', 10, 20000000, 200000000),
(51, 'PN00000006', 'SP00000021', 10, 20000000, 200000000),
(52, 'PN00000006', 'SP00000022', 10, 20000000, 200000000),
(53, 'PN00000006', 'SP00000023', 10, 20000000, 200000000),
(54, 'PN00000006', 'SP00000024', 10, 20000000, 200000000),
(55, 'PN00000006', 'SP00000025', 10, 20000000, 200000000),
(56, 'PN00000006', 'SP00000026', 10, 20000000, 200000000),
(57, 'PN00000006', 'SP00000027', 10, 20000000, 200000000),
(58, 'PN00000006', 'SP00000028', 10, 20000000, 200000000),
(59, 'PN00000006', 'SP00000029', 10, 20000000, 200000000),
(60, 'PN00000006', 'SP00000030', 10, 20000000, 200000000),
(61, 'PN00000001', 'SP00000031', 12, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_chucvu`
--

CREATE TABLE `db_chucvu` (
  `ma_cv` varchar(2) CHARACTER SET utf8 NOT NULL,
  `ten_cv` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_chucvu`
--

INSERT INTO `db_chucvu` (`ma_cv`, `ten_cv`) VALUES
('BH', 'Bán hàng'),
('NH', 'Nhập hàng'),
('QL', 'Quản lý'),
('TK', 'Thống kê');

-- --------------------------------------------------------

--
-- Table structure for table `db_hoa_don`
--

CREATE TABLE `db_hoa_don` (
  `ma_hd` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ma_nv` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ma_kh` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ngay_lap` date DEFAULT NULL,
  `da_thanh_toan` double DEFAULT NULL,
  `con_lai` double DEFAULT NULL,
  `tonggiatri` double DEFAULT NULL,
  `thanh_toan` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_hoa_don`
--

INSERT INTO `db_hoa_don` (`ma_hd`, `ma_nv`, `ma_kh`, `ngay_lap`, `da_thanh_toan`, `con_lai`, `tonggiatri`, `thanh_toan`) VALUES
('HD00000001', 'NV00000001', 'KH00000001', '2016-01-01', 924000000, 0, 924000000, 1),
('HD00000002', 'NV00000001', 'KH00000001', '2016-01-01', 924000000, 0, 924000000, 1),
('HD00000003', 'NV00000001', 'KH00000001', '2016-01-01', 924000000, 0, 924000000, 1),
('HD00000004', 'NV00000001', 'KH00000001', '2016-01-01', 924000000, 0, 924000000, 1),
('HD00000005', 'NV00000001', 'KH00000001', '2016-01-01', 924000000, 0, 924000000, 1),
('HD00000006', 'NV00000001', 'KH00000002', '2016-01-01', 0, 924000000, 924000000, 0),
('HD00000007', 'NV00000001', 'KH00000002', '2016-01-01', 0, 924000000, 924000000, 0),
('HD00000008', 'NV00000001', 'KH00000002', '2016-01-01', 0, 924000000, 924000000, 0),
('HD00000009', 'NV00000001', 'KH00000002', '2016-01-01', 0, 924000000, 924000000, 0),
('HD00000010', 'NV00000001', 'KH00000002', '2016-01-01', 0, 924000000, 924000000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_khach_hang`
--

CREATE TABLE `db_khach_hang` (
  `ma_kh` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ten_kh` varchar(40) CHARACTER SET utf8 NOT NULL,
  `diachi` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `sdt` varchar(11) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_khach_hang`
--

INSERT INTO `db_khach_hang` (`ma_kh`, `ten_kh`, `diachi`, `sdt`) VALUES
('KH00000001', 'Lê Mạnh Tường', 'double Xuyên', '0939236274'),
('KH00000002', 'Trần Thuý An', 'Hà Hoàng Hổ', '0966453340'),
('KH00000003', 'Lâm Hải My', 'Trần Hưng Đạo', '0939246357'),
('KH00000004', 'Nguyễn Hữu Thọ', '123 Lê Lai', '0169344653'),
('KH00000005', 'Lê Văn Mừng', 'Châu Phú', '0939021095'),
('KH00000006', 'Lý Quế Trân', 'double Xuyên', '0974644322'),
('KH00000007', 'Nguyễn Thị Ngà', 'Hoà Bình', '0918911925'),
('KH00000008', 'Nguyễn Thị Bảo Ngọc', 'Chợ Mới', '0911426640'),
('KH00000009', 'Nguyễn Huỳnh Kim Thoa', 'Châu Thành', '0973927376'),
('KH00000010', 'Trương Nguyễn Gia Minh', '357 Trần Phú', '0165633454');

-- --------------------------------------------------------

--
-- Table structure for table `db_nhanvien`
--

CREATE TABLE `db_nhanvien` (
  `ma_nv` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ten_nv` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `gioi_tinh` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `sdt_nv` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `dia_chi_nv` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `ma_cv` varchar(2) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_nhanvien`
--

INSERT INTO `db_nhanvien` (`ma_nv`, `ten_nv`, `ngay_sinh`, `gioi_tinh`, `sdt_nv`, `dia_chi_nv`, `email`, `ma_cv`) VALUES
('NV00000001', 'Lê Mạnh Tường', '1994-09-14', 'Nam', '0984359190', 'double Xuyên', 'lmtuong@gmail.com', 'BH'),
('NV00000002', 'Nguyễn Hữu Thọ', '1995-06-16', 'Nam', '0165673993', 'double Xuyên', 'nhtho@gmail.com', 'TK'),
('NV00000003', 'Lâm Hải My', '1995-04-14', 'Nam', '0986772567', 'double Xuyên', 'lhmy@gmail.com', 'TK'),
('NV00000004', 'Trần Thị Thúy An', '1995-01-17', 'Nam', '0921220897', 'double Xuyên', 'tttan@gmail.com', 'NH'),
('NV00000005', 'Lê Văn Mừng', '1995-08-22', 'Nam', '0123554223', 'double Xuyên', 'lvmung@gmail.com', 'QL');

-- --------------------------------------------------------

--
-- Table structure for table `db_nha_cung_cap`
--

CREATE TABLE `db_nha_cung_cap` (
  `ma_ncc` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ten_ncc` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `sdt_ncc` varchar(12) CHARACTER SET utf8 NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_nha_cung_cap`
--

INSERT INTO `db_nha_cung_cap` (`ma_ncc`, `ten_ncc`, `sdt_ncc`, `email`) VALUES
('NCC0000001', 'Tân Định', '0909464501', 'tandinh@gmail.com'),
('NCC0000002', 'Acer VN', '01223413321', 'acer@acer.com'),
('NCC0000003', 'KingStore', '0222031341', 'kinhstore@gmail.com'),
('NCC0000004', 'Apple', '02223145511', 'Apple@apple.com'),
('NCC0000005', 'Shape', '0993445345', 'shape@gmail.com'),
('NCC0000006', 'Bách việt', '0985779119', 'sieuthicodien@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `db_nhom_sp`
--

CREATE TABLE `db_nhom_sp` (
  `ma_loai` varchar(5) CHARACTER SET utf8 NOT NULL,
  `ten_loai_sp` varchar(40) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_nhom_sp`
--

INSERT INTO `db_nhom_sp` (`ma_loai`, `ten_loai_sp`) VALUES
('DC', 'Điện cơ'),
('DD', 'Di động'),
('DL', 'Điện lạnh'),
('DT', 'Điện tử'),
('GD', 'Gia dụng'),
('VT', 'Vi tính');

-- --------------------------------------------------------

--
-- Table structure for table `db_phieu_dat_hang`
--

CREATE TABLE `db_phieu_dat_hang` (
  `ma_pdh` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ma_nv` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ma_kh` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ngay_lap` date DEFAULT NULL,
  `tonggiatri` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_phieu_dat_hang`
--

INSERT INTO `db_phieu_dat_hang` (`ma_pdh`, `ma_nv`, `ma_kh`, `ngay_lap`, `tonggiatri`) VALUES
('PDH0000001', 'NV00000001', 'KH00000001', '2016-01-01', 92400000),
('PDH0000002', 'NV00000001', 'KH00000002', '2016-01-02', 92400000),
('PDH0000003', 'NV00000001', 'KH00000003', '2016-01-03', 92400000),
('PDH0000004', 'NV00000001', 'KH00000004', '2016-01-04', 92400000),
('PDH0000005', 'NV00000001', 'KH00000005', '2016-01-05', 92400000);

-- --------------------------------------------------------

--
-- Table structure for table `db_phieu_nhap`
--

CREATE TABLE `db_phieu_nhap` (
  `ma_phieu_nhap` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ma_nv` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ma_ncc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ngay_lap_pn` date DEFAULT NULL,
  `tong_tien` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_phieu_nhap`
--

INSERT INTO `db_phieu_nhap` (`ma_phieu_nhap`, `ma_nv`, `ma_ncc`, `ngay_lap_pn`, `tong_tien`) VALUES
('PN00000001', 'NV00000004', 'NCC0000001', '2016-01-03', 2000000000),
('PN00000002', 'NV00000004', 'NCC0000002', '2016-11-07', 2000000000),
('PN00000003', 'NV00000004', 'NCC0000003', '2016-05-03', 2000000000),
('PN00000004', 'NV00000004', 'NCC0000004', '2016-01-09', 2000000000),
('PN00000005', 'NV00000004', 'NCC0000005', '2016-07-03', 2000000000),
('PN00000006', 'NV00000004', 'NCC0000006', '2016-08-14', 2000000000);

-- --------------------------------------------------------

--
-- Table structure for table `db_sanpham`
--

CREATE TABLE `db_sanpham` (
  `ma_sp` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ma_loai` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `ten_sp` varchar(50) CHARACTER SET utf8 NOT NULL,
  `don_vi_tinh` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `gia_sp` double DEFAULT NULL,
  `thoi_gian_bh` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `hang_san_xuat` varchar(30) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_sanpham`
--

INSERT INTO `db_sanpham` (`ma_sp`, `ma_loai`, `ten_sp`, `don_vi_tinh`, `gia_sp`, `thoi_gian_bh`, `soluong`, `hang_san_xuat`) VALUES
('SP00000001', 'DL', 'Tủ lạnh', 'Cái', 12000000, 12, 10, 'TOSHIBA'),
('SP00000002', 'DL', 'Tủ lạnh', 'Cái', 12000000, 12, 10, 'TOSHIBA'),
('SP00000003', 'DL', 'Máy lạnh', 'Cái', 11000000, 12, 10, 'SAMSUNG'),
('SP00000004', 'DL', 'Tủ đông', 'Cái', 8800000, 12, 10, 'SANAKY'),
('SP00000005', 'DL', 'Máy nước nóng', 'Cái', 2400000, 12, 10, 'PANASONIC'),
('SP00000006', 'DL', 'Máy nóng lạnh', 'Cái', 3500000, 12, 10, 'ALASKA'),
('SP00000007', 'DL', 'Máy rửa chén', 'Cái', 15900000, 12, 10, 'TEKA'),
('SP00000008', 'DL', 'Máy sấy', 'Cái', 8890000, 12, 10, 'ELICTROLUX'),
('SP00000009', 'DL', 'Tủ mát', 'Cái', 8049000, 12, 10, 'SANAKY'),
('SP00000010', 'DL', 'Máy giặt', 'Cái', 5300000, 12, 10, 'TOSHIBA'),
('SP00000011', 'VT', 'Laptop ACER', 'Cái', 9100000, 12, 10, 'ACER'),
('SP00000012', 'VT', 'Ổ cứng', 'Cái', 2300000, 12, 10, 'KINGTON'),
('SP00000013', 'VT', 'Loa vi tính', 'Cái', 1290000, 12, 10, 'KINGMAX'),
('SP00000014', 'VT', 'Bàn phím', 'Cái', 175000, 3, 10, 'apple'),
('SP00000015', 'VT', 'Chuột có dây', 'Cái', 210000, 6, 10, 'RAPOO'),
('SP00000016', 'VT', 'Chuột không dây', 'Cái', 300000, 6, 10, 'RAPOO'),
('SP00000017', 'VT', 'USB kingmax', 'Cái', 200000, 3, 10, 'KINGMAX'),
('SP00000018', 'VT', 'Laptop dell', 'Cái', 12000000, 12, 10, 'DELL'),
('SP00000019', 'VT', 'Laptop asus', 'Cái', 16300000, 12, 10, 'ASUS'),
('SP00000020', 'VT', 'Laptop HP', 'Cái', 9500000, 12, 10, 'HP'),
('SP00000021', 'DT', 'TIVI LED', 'Cái', 36000000, 60, 10, 'LG'),
('SP00000022', 'DT', 'DÀN MÁY', 'Cái', 10000000, 36, 10, 'ARIANG'),
('SP00000023', 'DT', 'CASSETTE', 'Cái', 5000000, 12, 10, 'TOSHIBA'),
('SP00000024', 'DT', 'ĐẦU DVD', 'Cái', 2000000, 12, 10, 'TOSHIBA'),
('SP00000025', 'DT', 'ĐẦU KARAOKE', 'Cái', 6000000, 12, 10, 'LG'),
('SP00000026', 'DT', 'LOA', 'Cái', 4000000, 12, 10, 'SANYO'),
('SP00000027', 'DT', 'AMPLY', 'Cái', 8000000, 12, 10, 'SONY'),
('SP00000028', 'DT', 'MICRO', 'Cái', 2500000, 12, 10, 'SAMSUNG'),
('SP00000029', 'DT', 'PHỤ KIỆN ĐIỆN TỬ', 'Cái', 1000000, 12, 10, 'LG'),
('SP00000030', 'DT', 'NHẠC CỤ', 'Cái', 5000000, 12, 10, 'PANASONIC'),
('SP00000031', 'DD', 'ĐIỆN THOẠI DI ĐỘNG', 'Cái', 15000000, 12, 10, 'APPLE'),
('SP00000032', 'DD', 'ĐIỆN THOẠI DI ĐỘNG', 'Cái', 7000000, 12, 10, 'ASUS'),
('SP00000033', 'DD', 'ĐIỆN THOẠI DI ĐỘNG', 'Cái', 16000000, 12, 10, 'LG'),
('SP00000034', 'DD', 'ĐIỆN THOẠI DI ĐỘNG', 'Cái', 5000000, 12, 10, 'LENOVO'),
('SP00000035', 'DD', 'MÁY TÍNH BẢNG', 'Cái', 12000000, 12, 10, 'APPLE'),
('SP00000036', 'DD', 'MÁY TÍNH BẢNG', 'Cái', 4000000, 12, 10, 'ACER'),
('SP00000037', 'DD', 'MÁY TÍNH BẢNG', 'Cái', 6000000, 12, 10, 'ASUS'),
('SP00000038', 'DD', 'PHỤ KIỆN DI ĐỘNG', 'Cái', 300000, 12, 10, 'APACER'),
('SP00000039', 'DD', 'PHỤ KIỆN DI ĐỘNG', 'Cái', 600000, 12, 10, 'ELECOM'),
('SP00000040', 'DD', 'PHỤ KIỆN DI ĐỘNG', 'Cái', 700000, 12, 10, 'PISEN'),
('SP00000041', 'GD', 'Nồi cơm điện', 'Cái', 1249000, 12, 10, 'SANYO'),
('SP00000042', 'GD', 'Bàn ủi', 'Cái', 200000, 12, 10, 'TOSHIBA'),
('SP00000043', 'GD', 'Lò vi sóng', 'Cái', 1570000, 12, 10, 'KANGAROO'),
('SP00000044', 'GD', 'Bếp điện', 'Cái', 18500000, 12, 10, 'TOSHIBA'),
('SP00000045', 'GD', 'Máy xay sinh tố', 'Cái', 549900, 9, 10, 'COMET'),
('SP00000046', 'GD', 'Ấm điện', 'Cái', 199000, 6, 10, 'SANAKY'),
('SP00000047', 'GD', 'Quạt', 'Cái', 1599000, 12, 10, 'ELECTROLUX'),
('SP00000048', 'GD', 'Nồi áp xuất', 'Cái', 12500000, 12, 10, 'SUNHOUSE'),
('SP00000049', 'GD', 'Máy hút bụi', 'Cái', 7449000, 24, 10, 'PANASONIC'),
('SP00000050', 'GD', 'Chảo điện', 'Cái', 600000, 6, 10, 'KANGAROO'),
('SP00000051', 'DC', 'd', 'Cái', 1200000, 12, 10, 'HYUNDAI'),
('SP00000052', 'DC', 'Máy cưa', 'Cái', 460000, 18, 10, 'KARCHER'),
('SP00000053', 'DC', 'Máy khoan', 'Cái', 523000, 12, 10, 'HYUNDAI'),
('SP00000054', 'DC', 'Máy bào', 'Cái', 750000, 10, 10, 'KARCHER'),
('SP00000055', 'DC', 'Máy phun', 'Cái', 800000, 24, 10, 'KARCHER'),
('SP00000056', 'DC', 'Máy soi mọng', 'Cái', 1300000, 12, 10, 'HYUNDAI'),
('SP00000057', 'DC', 'Máy khoan', 'Cái', 1450000, 12, 10, 'KARCHER'),
('SP00000058', 'DC', 'Máy chà nhám', 'Cái', 250000, 9, 10, 'HYUNDAI'),
('SP00000059', 'DC', 'Máy phun bằng hơi', 'Cái', 1850000, 10, 10, 'KARCHER'),
('SP00000060', 'DC', 'Máy phun áp lực cao', 'Cái', 2680000, 12, 10, 'HYUNDAI');

-- --------------------------------------------------------

--
-- Table structure for table `db_taikhoan`
--

CREATE TABLE `db_taikhoan` (
  `ID` int(10) NOT NULL,
  `username` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `pass` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ma_cv` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `trang_thai` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_taikhoan`
--

INSERT INTO `db_taikhoan` (`ID`, `username`, `pass`, `ma_cv`, `trang_thai`) VALUES
(1, 'admin', '123456', 'QL', 0),
(2, 'nhtho', '123456', 'TK', 0),
(3, 'lhmy', '123456', 'TK', 0),
(4, 'tttan', '123456', 'NH', 0),
(5, 'lmtuong', '123456', 'BH', 0),
(6, 'banhang', '123456', 'BH', 0),
(7, 'nhaphang', '123456', 'NH', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi_tiet_hd`
--
ALTER TABLE `chi_tiet_hd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_sp` (`ma_sp`),
  ADD KEY `ma_hd` (`ma_hd`);

--
-- Indexes for table `chi_tiet_pdh`
--
ALTER TABLE `chi_tiet_pdh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_sp` (`ma_sp`),
  ADD KEY `ma_pdh` (`ma_pdh`);

--
-- Indexes for table `db_chi_tiet_pn`
--
ALTER TABLE `db_chi_tiet_pn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_sp` (`ma_sp`),
  ADD KEY `ma_phieu_nhap` (`ma_phieu_nhap`);

--
-- Indexes for table `db_chucvu`
--
ALTER TABLE `db_chucvu`
  ADD PRIMARY KEY (`ma_cv`);

--
-- Indexes for table `db_hoa_don`
--
ALTER TABLE `db_hoa_don`
  ADD PRIMARY KEY (`ma_hd`),
  ADD KEY `ma_nv` (`ma_nv`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Indexes for table `db_khach_hang`
--
ALTER TABLE `db_khach_hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Indexes for table `db_nhanvien`
--
ALTER TABLE `db_nhanvien`
  ADD PRIMARY KEY (`ma_nv`),
  ADD KEY `ma_cv` (`ma_cv`);

--
-- Indexes for table `db_nha_cung_cap`
--
ALTER TABLE `db_nha_cung_cap`
  ADD PRIMARY KEY (`ma_ncc`);

--
-- Indexes for table `db_nhom_sp`
--
ALTER TABLE `db_nhom_sp`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Indexes for table `db_phieu_dat_hang`
--
ALTER TABLE `db_phieu_dat_hang`
  ADD PRIMARY KEY (`ma_pdh`),
  ADD KEY `ma_nv` (`ma_nv`);

--
-- Indexes for table `db_phieu_nhap`
--
ALTER TABLE `db_phieu_nhap`
  ADD PRIMARY KEY (`ma_phieu_nhap`),
  ADD KEY `ma_nv` (`ma_nv`),
  ADD KEY `ma_ncc` (`ma_ncc`);

--
-- Indexes for table `db_sanpham`
--
ALTER TABLE `db_sanpham`
  ADD PRIMARY KEY (`ma_sp`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Indexes for table `db_taikhoan`
--
ALTER TABLE `db_taikhoan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ma_cv` (`ma_cv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chi_tiet_hd`
--
ALTER TABLE `chi_tiet_hd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `chi_tiet_pdh`
--
ALTER TABLE `chi_tiet_pdh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `db_chi_tiet_pn`
--
ALTER TABLE `db_chi_tiet_pn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `db_taikhoan`
--
ALTER TABLE `db_taikhoan`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chi_tiet_hd`
--
ALTER TABLE `chi_tiet_hd`
  ADD CONSTRAINT `chi_tiet_hd_ibfk_1` FOREIGN KEY (`ma_sp`) REFERENCES `db_sanpham` (`ma_sp`),
  ADD CONSTRAINT `chi_tiet_hd_ibfk_2` FOREIGN KEY (`ma_hd`) REFERENCES `db_hoa_don` (`ma_hd`);

--
-- Constraints for table `chi_tiet_pdh`
--
ALTER TABLE `chi_tiet_pdh`
  ADD CONSTRAINT `chi_tiet_pdh_ibfk_1` FOREIGN KEY (`ma_sp`) REFERENCES `db_sanpham` (`ma_sp`),
  ADD CONSTRAINT `chi_tiet_pdh_ibfk_2` FOREIGN KEY (`ma_pdh`) REFERENCES `db_phieu_dat_hang` (`ma_pdh`);

--
-- Constraints for table `db_chi_tiet_pn`
--
ALTER TABLE `db_chi_tiet_pn`
  ADD CONSTRAINT `db_chi_tiet_pn_ibfk_1` FOREIGN KEY (`ma_sp`) REFERENCES `db_sanpham` (`ma_sp`),
  ADD CONSTRAINT `db_chi_tiet_pn_ibfk_2` FOREIGN KEY (`ma_phieu_nhap`) REFERENCES `db_phieu_nhap` (`ma_phieu_nhap`);

--
-- Constraints for table `db_hoa_don`
--
ALTER TABLE `db_hoa_don`
  ADD CONSTRAINT `db_hoa_don_ibfk_1` FOREIGN KEY (`ma_nv`) REFERENCES `db_nhanvien` (`ma_nv`),
  ADD CONSTRAINT `db_hoa_don_ibfk_2` FOREIGN KEY (`ma_kh`) REFERENCES `db_khach_hang` (`ma_kh`);

--
-- Constraints for table `db_nhanvien`
--
ALTER TABLE `db_nhanvien`
  ADD CONSTRAINT `db_nhanvien_ibfk_1` FOREIGN KEY (`ma_cv`) REFERENCES `db_chucvu` (`ma_cv`);

--
-- Constraints for table `db_phieu_dat_hang`
--
ALTER TABLE `db_phieu_dat_hang`
  ADD CONSTRAINT `db_phieu_dat_hang_ibfk_1` FOREIGN KEY (`ma_nv`) REFERENCES `db_nhanvien` (`ma_nv`);

--
-- Constraints for table `db_phieu_nhap`
--
ALTER TABLE `db_phieu_nhap`
  ADD CONSTRAINT `db_phieu_nhap_ibfk_1` FOREIGN KEY (`ma_nv`) REFERENCES `db_nhanvien` (`ma_nv`),
  ADD CONSTRAINT `db_phieu_nhap_ibfk_2` FOREIGN KEY (`ma_ncc`) REFERENCES `db_nha_cung_cap` (`ma_ncc`);

--
-- Constraints for table `db_sanpham`
--
ALTER TABLE `db_sanpham`
  ADD CONSTRAINT `db_sanpham_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `db_nhom_sp` (`ma_loai`);

--
-- Constraints for table `db_taikhoan`
--
ALTER TABLE `db_taikhoan`
  ADD CONSTRAINT `db_taikhoan_ibfk_1` FOREIGN KEY (`ma_cv`) REFERENCES `db_chucvu` (`ma_cv`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
