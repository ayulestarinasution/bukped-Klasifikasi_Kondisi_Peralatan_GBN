-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 01:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinta`
--

-- --------------------------------------------------------

--
-- Table structure for table `alat`
--

CREATE TABLE `alat` (
  `nama_peralatan` varchar(34) NOT NULL,
  `jenis_alat` varchar(26) DEFAULT NULL,
  `merk` varchar(16) DEFAULT NULL,
  `buatan` varchar(11) DEFAULT NULL,
  `tahun_buatan` int(4) DEFAULT NULL,
  `kategori` int(1) DEFAULT NULL,
  `kondisi` int(3) DEFAULT NULL,
  `sertifikasi` int(1) DEFAULT NULL,
  `keterangan` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alat`
--

INSERT INTO `alat` (`nama_peralatan`, `jenis_alat`, `merk`, `buatan`, `tahun_buatan`, `kategori`, `kondisi`, `sertifikasi`, `keterangan`) VALUES
('Access Control', 'Acces Control', 'Honeywell', 'Jepang', 2016, 2, 70, 2, 'Perbaikan'),
('Alarm Bell (Box Hydrant) FA-01', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Alarm Bell (Box Hydrant) FA-02', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Alarm Bell (Box Hydrant) FA-03', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Alarm Bell (Box Hydrant) FA-04', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Alarm Bell (Box Hydrant) FA-05', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Alarm Bell (Box Hydrant) FA-06', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Alarm Bell (Box Hydrant) FA-07', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Alarm Bell (ind. Lamp) FA-01', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Alarm Bell (ind. Lamp) FA-02', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Alarm Bell (ind. Lamp) FA-03', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Alarm Bell (ind. Lamp) FA-04', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Alarm Bell (ind. Lamp) FA-05', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Alarm Bell (ind. Lamp) FA-06', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Amplifier-01', 'Public Address System(PAS)', 'TOA', 'Jepang', 2017, 4, 87, 2, 'Normal'),
('Amplifier-02', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 2, 80, 2, 'Perbaikan'),
('Amplifier-03', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 1, 80, 2, 'Perbaikan'),
('Amplifier-04', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 3, 80, 2, 'Perbaikan'),
('Amplifier-05', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 3, 80, 2, 'Perbaikan'),
('Body Scanner', 'Body Scanner', 'L3', 'Amerika', 2016, 2, 80, 2, 'Perbaikan'),
('CCTV 0149 FACE RECOGNIS', 'CCTV ', 'HUAWEI', 'China', 2015, 1, 20, 2, 'Rusak'),
('CCTV 0151 FACE RECOGNIS', 'CCTV ', 'HUAWEI', 'China', 2017, 2, 60, 2, 'Rusak'),
('CCTV 050 FACE RECOGNIS', 'CCTV ', 'HUAWEI', 'China', 2016, 2, 40, 2, 'Rusak'),
('CCTV SERVER APPRON', 'CCTV SERVER', 'HP', 'USA', 2017, 4, 87, 2, 'Normal'),
('CCTV SERVER HUAWEI', 'CCTV SERVER', 'HUAWEI', 'China', 2020, 4, 100, 2, 'Normal'),
('CCTV SERVER01', 'CCTV SERVER', 'Supermicro', 'USA', 2017, 4, 87, 2, 'Normal'),
('CCTV SERVER02', 'CCTV SERVER', 'Supermicro', 'USA', 2017, 4, 87, 2, 'Normal'),
('CCTV001', 'CCTV ', 'Sony', 'Jepang', 2016, 3, 40, 2, 'Rusak'),
('CCTV002', 'CCTV ', 'Sony', 'Jepang', 2016, 2, 40, 2, 'Rusak'),
('CCTV003', 'CCTV ', 'Sony', 'Jepang', 2016, 1, 40, 2, 'Rusak'),
('CCTV004', 'CCTV ', 'Sony', 'Jepang', 2017, 3, 60, 2, 'Rusak'),
('CCTV005', 'CCTV ', 'Sony', 'Jepang', 2016, 2, 40, 2, 'Rusak'),
('CCTV006', 'CCTV ', 'Sony', 'Jepang', 2019, 1, 100, 2, 'Normal'),
('CCTV007', 'CCTV ', 'Sony', 'Jepang', 2016, 1, 40, 2, 'Rusak'),
('CCTV008', 'CCTV ', 'Sony', 'Jepang', 2017, 2, 60, 2, 'Rusak'),
('CCTV009', 'CCTV ', 'Sony', 'Jepang', 2019, 2, 100, 2, 'Normal'),
('CCTV010', 'CCTV ', 'Sony', 'Jepang', 2019, 2, 100, 2, 'Normal'),
('CCTV011', 'CCTV ', 'Sony', 'Jepang', 2019, 2, 100, 2, 'Normal'),
('CCTV012', 'CCTV ', 'Sony', 'Jepang', 2017, 3, 60, 2, 'Rusak'),
('CCTV013', 'CCTV ', 'Sony', 'Jepang', 2016, 4, 40, 2, 'Rusak'),
('CCTV014', 'CCTV ', 'Sony', 'Jepang', 2019, 1, 100, 2, 'Normal'),
('CCTV015', 'CCTV ', 'Sony', 'Jepang', 2019, 1, 100, 2, 'Normal'),
('CCTV016', 'CCTV ', 'Sony', 'Jepang', 2019, 1, 100, 2, 'Normal'),
('CCTV017', 'CCTV ', 'Sony', 'Jepang', 2016, 1, 40, 2, 'Rusak'),
('CCTV018', 'CCTV ', 'Sony', 'Jepang', 2018, 2, 80, 2, 'Perbaikan'),
('CCTV019', 'CCTV ', 'Sony', 'Jepang', 2019, 4, 100, 2, 'Normal'),
('CCTV020', 'CCTV ', 'Sony', 'Jepang', 2016, 2, 40, 2, 'Rusak'),
('CCTV021', 'CCTV ', 'Sony', 'Jepang', 2016, 1, 40, 2, 'Rusak'),
('CCTV022', 'CCTV ', 'Sony', 'Jepang', 2016, 3, 40, 2, 'Rusak'),
('CCTV023', 'CCTV ', 'Sony', 'Jepang', 2019, 1, 100, 2, 'Normal'),
('CCTV024', 'CCTV ', 'Sony', 'Jepang', 2019, 1, 100, 2, 'Normal'),
('CCTV025', 'CCTV ', 'Sony', 'Jepang', 2016, 3, 40, 2, 'Rusak'),
('CCTV026', 'CCTV ', 'Sony', 'Jepang', 2016, 2, 40, 2, 'Rusak'),
('CCTV027', 'CCTV ', 'Sony', 'Jepang', 2019, 4, 100, 2, 'Normal'),
('CCTV028', 'CCTV ', 'Sony', 'Jepang', 2016, 3, 40, 2, 'Rusak'),
('CCTV029', 'CCTV ', 'Sony', 'Jepang', 2016, 2, 40, 2, 'Rusak'),
('CCTV037', 'CCTV ', 'DAHUA', 'China', 2017, 1, 60, 2, 'Rusak'),
('CCTV038', 'CCTV ', 'DAHUA', 'China', 2018, 3, 80, 2, 'Perbaikan'),
('CCTV039', 'CCTV ', 'DAHUA', 'China', 2017, 2, 60, 2, 'Rusak'),
('CCTV078', 'CCTV ', 'Vivotek', 'China', 2018, 2, 80, 2, 'Perbaikan'),
('CCTV079', 'CCTV ', 'Vivotek', 'China', 2018, 2, 80, 2, 'Perbaikan'),
('CCTV080', 'CCTV ', 'Vivotek', 'China', 2018, 3, 80, 2, 'Perbaikan'),
('CCTV081', 'CCTV ', 'Vivotek', 'China', 2018, 2, 80, 2, 'Perbaikan'),
('CCTV082', 'CCTV ', 'Vivotek', 'China', 2019, 4, 100, 2, 'Normal'),
('CCTV083', 'CCTV ', 'Vivotek', 'China', 2019, 4, 100, 2, 'Normal'),
('CCTV084', 'CCTV ', 'Vivotek', 'China', 2019, 4, 100, 2, 'Normal'),
('CCTV085', 'CCTV ', 'Vivotek', 'China', 2016, 1, 40, 2, 'Rusak'),
('CCTV086', 'CCTV ', 'Vivotek', 'China', 2015, 3, 20, 2, 'Rusak'),
('CCTV087', 'CCTV ', 'Vivotek', 'China', 2018, 3, 80, 2, 'Perbaikan'),
('CCTV088', 'CCTV ', 'Vivotek', 'China', 2014, 1, 0, 2, 'Rusak'),
('CCTV089', 'CCTV ', 'Vivotek', 'China', 2018, 2, 80, 2, 'Perbaikan'),
('CCTV090', 'CCTV ', 'Vivotek', 'China', 2018, 2, 80, 2, 'Perbaikan'),
('CCTV091', 'CCTV ', 'Vivotek', 'China', 2018, 2, 80, 2, 'Perbaikan'),
('CCTV092', 'CCTV ', 'Vivotek', 'China', 2019, 4, 100, 2, 'Normal'),
('CCTV093', 'CCTV ', 'Vivotek', 'China', 2018, 3, 80, 2, 'Perbaikan'),
('CCTV094', 'CCTV ', 'Vivotek', 'China', 2019, 4, 100, 2, 'Normal'),
('CCTV095', 'CCTV ', 'Vivotek', 'China', 2019, 4, 100, 2, 'Normal'),
('CCTV096', 'CCTV ', 'Vivotek', 'China', 2019, 4, 100, 2, 'Normal'),
('CCTV097', 'CCTV ', 'Vivotek', 'China', 2019, 4, 100, 2, 'Normal'),
('CCTV098', 'CCTV ', 'Vivotek', 'China', 2019, 3, 100, 2, 'Normal'),
('CCTV099', 'CCTV ', 'Vivotek', 'China', 2019, 2, 100, 2, 'Normal'),
('CCTV100', 'CCTV ', 'Vivotek', 'China', 2019, 2, 100, 2, 'Normal'),
('CCTV101', 'CCTV ', 'Vivotek', 'China', 2019, 1, 100, 2, 'Normal'),
('CCTV102', 'CCTV ', 'Vivotek', 'China', 2019, 4, 100, 2, 'Normal'),
('CCTV103', 'CCTV ', 'Vivotek', 'China', 2019, 2, 100, 2, 'Normal'),
('CCTV104', 'CCTV ', 'Vivotek', 'China', 2019, 3, 100, 2, 'Normal'),
('CCTV105', 'CCTV ', 'Vivotek', 'China', 2019, 3, 100, 2, 'Normal'),
('CCTV106', 'CCTV ', 'Vivotek', 'China', 2019, 1, 100, 2, 'Normal'),
('CCTV107', 'CCTV ', 'Vivotek', 'China', 2019, 1, 100, 2, 'Normal'),
('CCTV108', 'CCTV ', 'Vivotek', 'China', 2019, 2, 100, 2, 'Normal'),
('CCTV118', 'CCTV ', 'Vivotek', 'China', 2018, 2, 80, 2, 'Perbaikan'),
('CCTV119', 'CCTV ', 'Vivotek', 'China', 2019, 4, 100, 2, 'Normal'),
('CCTV120', 'CCTV ', 'Vivotek', 'China', 2019, 3, 100, 2, 'Normal'),
('CCTV121', 'CCTV ', 'Vivotek', 'China', 2019, 2, 100, 2, 'Normal'),
('CCTV122', 'CCTV ', 'Vivotek', 'China', 2018, 1, 80, 2, 'Perbaikan'),
('CCTV123', 'CCTV ', 'Vivotek', 'China', 2018, 1, 80, 2, 'Perbaikan'),
('CCTV124', 'CCTV ', 'Vivotek', 'China', 2019, 4, 100, 2, 'Normal'),
('CCTV125', 'CCTV ', 'Vivotek', 'China', 2019, 4, 100, 2, 'Normal'),
('CCTV126', 'CCTV ', 'Vivotek', 'China', 2016, 1, 40, 2, 'Rusak'),
('Ceiling Speaker-001', 'Public Address System(PAS)', 'TOA', 'Indonesia', 2019, 4, 100, 2, 'Normal'),
('Ceiling Speaker-002', 'Public Address System(PAS)', 'TOA', 'Indonesia', 2016, 1, 40, 2, 'Rusak'),
('Ceiling Speaker-003', 'Public Address System(PAS)', 'TOA', 'Indonesia', 2016, 2, 80, 2, 'Perbaikan'),
('Ceiling Speaker-115', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 3, 80, 2, 'Perbaikan'),
('Ceiling Speaker-116', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 2, 80, 2, 'Perbaikan'),
('Coulumb Speaker-001', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 1, 80, 2, 'Perbaikan'),
('Coulumb Speaker-002', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 2, 80, 2, 'Perbaikan'),
('Coulumb Speaker-003', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 2, 80, 2, 'Perbaikan'),
('Coulumb Speaker-004', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 2, 80, 2, 'Perbaikan'),
('Display Checkin-01', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2016, 2, 40, 2, 'Rusak'),
('Display Checkin-02', 'Display Checkin', 'Intel NUC/LG', 'UK/Korsel', 2019, 4, 100, 2, 'Normal'),
('Display Checkin-03', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2016, 2, 40, 2, 'Rusak'),
('Display Checkin-04', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2016, 1, 40, 2, 'Rusak'),
('Display Checkin-05', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2016, 2, 40, 2, 'Rusak'),
('Display Checkin-06', 'Display Checkin', 'Intel NUC/LG', 'UK/Korsel', 2019, 4, 100, 2, 'Normal'),
('Display Checkin-07', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2019, 4, 100, 2, 'Normal'),
('Display Checkin-08', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2016, 1, 40, 2, 'Rusak'),
('Display Checkin-09', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2015, 1, 20, 2, 'Rusak'),
('Display Checkin-10', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2019, 4, 100, 2, 'Normal'),
('Display Checkin-11', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2014, 3, 0, 2, 'Rusak'),
('Display Checkin-12', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2017, 2, 60, 2, 'Rusak'),
('Display Checkin-13', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2017, 3, 60, 2, 'Rusak'),
('Display Checkin-14', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2017, 1, 60, 2, 'Rusak'),
('Display Checkin-15', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2017, 3, 60, 2, 'Rusak'),
('Display Checkin-16', 'Display Checkin', 'Intel NUC/LG', 'UK/Korsel', 2018, 3, 80, 2, 'Perbaikan'),
('Display Checkin-17', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2015, 1, 20, 2, 'Rusak'),
('Display Checkin-18', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2016, 3, 40, 2, 'Rusak'),
('Display Checkin-19', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2017, 2, 60, 2, 'Rusak'),
('Display Checkin-20', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2016, 1, 40, 2, 'Rusak'),
('Display Checkin-21', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2016, 2, 40, 2, 'Rusak'),
('Display Checkin-22', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2019, 4, 100, 2, 'Normal'),
('Display Checkin-23', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2019, 4, 100, 2, 'Normal'),
('Display Checkin-24', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2016, 3, 40, 2, 'Rusak'),
('Display Checkin-25', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2019, 4, 100, 2, 'Normal'),
('Display Checkin-26', 'Display Checkin', 'Raspberry/LG', 'UK/Korsel', 2019, 4, 100, 2, 'Normal'),
('Emergency Message Panel', 'Public Address System(PAS)', 'TOA', 'Jepang', 2017, 4, 87, 2, 'Normal'),
('Explosive Detector', 'Explosive Detector', 'Smiths Detection', 'EROPA', 2014, 2, 67, 2, 'Perbaikan'),
('FIDS 001', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2018, 3, 80, 2, 'Normal'),
('FIDS 002', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2019, 1, 100, 2, 'Normal'),
('FIDS 003', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2016, 3, 40, 2, 'Rusak'),
('FIDS 004', 'FIDS CLIENT', 'Alaska F1/LG', 'UK/Korsel', 2018, 3, 80, 2, 'Perbaikan'),
('FIDS 005', 'FIDS CLIENT', 'Alaska F1/LG', 'UK/Korsel', 2018, 3, 80, 2, 'Perbaikan'),
('FIDS 006', 'FIDS CLIENT', 'Alaska F1/LG', 'UK/Korsel', 2019, 1, 100, 2, 'Normal'),
('FIDS 007', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2016, 1, 40, 2, 'Rusak'),
('FIDS 008', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2019, 1, 100, 2, 'Normal'),
('FIDS 009', 'FIDS CLIENT', 'Alaska F1/LG', 'UK/Korsel', 2016, 3, 40, 2, 'Rusak'),
('FIDS 010', 'FIDS CLIENT', 'Alaska F1/LG', 'UK/Korsel', 2016, 3, 40, 2, 'Rusak'),
('FIDS 011', 'FIDS CLIENT', 'Intel NUC/LG', 'UK/Korsel', 2015, 3, 20, 2, 'Rusak'),
('FIDS 012', 'FIDS CLIENT', 'Alaska F1/LG', 'UK/Korsel', 2018, 3, 80, 2, 'Perbaikan'),
('FIDS 013', 'FIDS CLIENT', 'Alaska F1/LG', 'UK/Korsel', 2016, 3, 40, 2, 'Rusak'),
('FIDS 014', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2018, 2, 80, 2, 'Perbaikan'),
('FIDS 015', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2016, 3, 40, 2, 'Rusak'),
('FIDS 016', 'FIDS CLIENT', 'Intel NUC/LG', 'UK/Korsel', 2017, 2, 60, 2, 'Rusak'),
('FIDS 017', 'FIDS CLIENT', 'Intel NUC/LG', 'UK/Korsel', 2019, 1, 100, 2, 'Normal'),
('FIDS 018', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2018, 3, 80, 2, 'Perbaikan'),
('FIDS 019', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2016, 3, 40, 2, 'Rusak'),
('FIDS 020', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2016, 3, 40, 2, 'Rusak'),
('FIDS 021', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2019, 4, 100, 2, 'Normal'),
('FIDS 022', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2016, 3, 40, 2, 'Rusak'),
('FIDS 023', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2017, 2, 60, 2, 'Rusak'),
('FIDS 024', 'FIDS CLIENT', 'Raspberry/LG', 'UK/Korsel', 2019, 1, 100, 2, 'Normal'),
('FIDS 025', 'FIDS CLIENT', 'Intel NUC/LG', 'UK/Korsel', 2017, 2, 60, 2, 'Rusak'),
('FIDS 026', 'FIDS CLIENT', 'Intel NUC/LG', 'UK/Korsel', 2017, 2, 60, 2, 'Rusak'),
('FIDS 027', 'FIDS CLIENT', 'Intel NUC/LG', 'UK/Korsel', 2019, 2, 100, 2, 'Normal'),
('FIDS 028', 'FIDS CLIENT', 'Alaska F1/LG', 'UK/Korsel', 2016, 3, 40, 2, 'Rusak'),
('FIDS 029', 'FIDS CLIENT', 'Intel NUC/LG', 'UK/Korsel', 2017, 1, 60, 2, 'Rusak'),
('FIDS 030', 'FIDS CLIENT', 'Alaska F1/LG', 'UK/Korsel', 2016, 3, 40, 2, 'Rusak'),
('FIDS 031', 'FIDS CLIENT', 'Intel NUC/LG', 'UK/Korsel', 2017, 2, 60, 2, 'Rusak'),
('FIDS 032', 'FIDS CLIENT', 'Intel NUC/LG', 'UK/Korsel', 2019, 1, 100, 2, 'Normal'),
('FIDS 033', 'FIDS CLIENT', 'Alaska F1/LG', 'UK/Korsel', 2016, 1, 40, 2, 'Rusak'),
('FIDS SERVER01', 'FIDS SERVER', 'Dell', 'USA', 2017, 4, 87, 2, 'Normal'),
('FIDS SERVER02', 'FIDS SERVER', 'Dell', 'USA', 2017, 4, 87, 2, 'Normal'),
('Heat Detector FA-001', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Heat Detector FA-002', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Heat Detector FA-003', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Heat Detector FA-004', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('HHMD 001', 'HHMD ', 'Garret', 'USA', 2012, 3, 0, 2, 'Rusak'),
('HHMD 002', 'HHMD ', 'Garret', 'USA', 2012, 3, 0, 2, 'Rusak'),
('HHMD 003', 'HHMD ', 'Krisbow', 'Indonesia', 2012, 3, 0, 2, 'Rusak'),
('HHMD 004', 'HHMD ', 'Krisbow', 'Indonesia', 2018, 3, 80, 2, 'Perbaikan'),
('HHMD 005', 'HHMD ', 'Krisbow', 'Indonesia', 2012, 3, 0, 2, 'Rusak'),
('HHMD 006', 'HHMD ', 'Krisbow', 'Indonesia', 2012, 3, 0, 2, 'Rusak'),
('HHMD 007', 'HHMD ', 'CEIA', 'Italy', 2016, 3, 40, 2, 'Rusak'),
('HHMD 008', 'HHMD ', 'CEIA', 'Italy', 2018, 3, 80, 2, 'Perbaikan'),
('HHMD 009', 'HHMD ', 'CEIA', 'Italy', 2016, 3, 40, 2, 'Rusak'),
('HHMD 010', 'HHMD ', 'CEIA', 'Italy', 2016, 3, 40, 2, 'Rusak'),
('HHMD 011', 'HHMD ', 'CEIA', 'Italy', 2016, 3, 40, 2, 'Rusak'),
('HHMD 012', 'HHMD ', 'CEIA', 'Italy', 2018, 3, 80, 2, 'Perbaikan'),
('HHMD 013', 'HHMD ', 'CEIA', 'Italy', 2018, 3, 80, 2, 'Normal'),
('HHMD 014', 'HHMD ', 'CEIA', 'Italy', 2016, 3, 40, 2, 'Rusak'),
('HHMD 015', 'HHMD ', 'CEIA', 'Italy', 2018, 3, 80, 2, 'Perbaikan'),
('HHMD 016', 'HHMD ', 'CEIA', 'Italy', 2016, 3, 40, 2, 'Rusak'),
('HHMD 017', 'HHMD ', 'CEIA', 'Italy', 2019, 2, 100, 2, 'Normal'),
('HHMD 018', 'HHMD ', 'CEIA', 'Italy', 2019, 2, 100, 2, 'Normal'),
('IP PABX Server', 'PABX', 'Alcatel Lucent', 'China', 2016, 4, 100, 2, 'Normal'),
('IP PHONE-1-100', 'PABX', 'Alcatel Lucent', 'China', 2016, 4, 100, 2, 'Normal'),
('IP PHONE-1-333', 'PABX', 'Alcatel Lucent', 'China', 2016, 4, 100, 2, 'Normal'),
('IP PHONE-1-513', 'PABX', 'Alcatel Lucent', 'China', 2012, 1, 80, 2, 'Normal'),
('IP PHONE-1-516', 'PABX', 'Alcatel Lucent', 'China', 2016, 4, 100, 2, 'Normal'),
('IP PHONE-1-520', 'PABX', 'Alcatel Lucent', 'China', 2016, 4, 100, 2, 'Normal'),
('IP PHONE-1-522', 'PABX', 'Alcatel Lucent', 'China', 2012, 3, 80, 2, 'Normal'),
('IP PHONE-1-523', 'PABX', 'Alcatel Lucent', 'China', 2016, 2, 100, 2, 'Normal'),
('IP PHONE-1-524', 'PABX', 'Alcatel Lucent', 'China', 2016, 1, 100, 2, 'Normal'),
('IP PHONE-1-526', 'PABX', 'Alcatel Lucent', 'China', 2016, 2, 100, 2, 'Normal'),
('IP PHONE-1-527', 'PABX', 'Alcatel Lucent', 'China', 2016, 3, 100, 2, 'Normal'),
('IP PHONE-1-529', 'PABX', 'Alcatel Lucent', 'China', 2013, 3, 85, 2, 'Normal'),
('IP PHONE-1-530', 'PABX', 'Alcatel Lucent', 'China', 2014, 2, 90, 2, 'Normal'),
('IP PHONE-1-531', 'PABX', 'Alcatel Lucent', 'China', 2016, 3, 100, 2, 'Normal'),
('IP PHONE-1-532', 'PABX', 'Alcatel Lucent', 'China', 2015, 2, 95, 2, 'Normal'),
('IP PHONE-1-533', 'PABX', 'Alcatel Lucent', 'China', 2016, 4, 100, 2, 'Normal'),
('IP PHONE-1-534', 'PABX', 'Alcatel Lucent', 'China', 2011, 2, 75, 2, 'Perbaikan'),
('IP PHONE-1-539', 'PABX', 'Alcatel Lucent', 'China', 2016, 3, 100, 2, 'Normal'),
('IP PHONE-1-540', 'PABX', 'Alcatel Lucent', 'China', 2016, 3, 100, 2, 'Normal'),
('IP PHONE-1-541', 'PABX', 'Alcatel Lucent', 'China', 2016, 2, 100, 2, 'Normal'),
('IP PHONE-2-536', 'PABX', 'Alcatel Lucent', 'China', 2016, 4, 100, 2, 'Normal'),
('Main Power Switch Panel', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 1, 80, 2, 'Perbaikan'),
('Mic-001', 'Public Address System(PAS)', 'TOA', 'Jepang', 2014, 1, 0, 2, 'Rusak'),
('Mic-002', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 2, 40, 2, 'Rusak'),
('Mic-003', 'Public Address System(PAS)', 'TOA', 'Indonesia', 2019, 4, 100, 2, 'Normal'),
('Mic-004', 'Public Address System(PAS)', 'TOA', 'Indonesia', 2016, 1, 40, 2, 'Rusak'),
('Mic-005', 'Public Address System(PAS)', 'TOA', 'Indonesia', 2016, 2, 40, 2, 'Rusak'),
('Mic-006', 'Public Address System(PAS)', 'TOA', 'Jepang', 2014, 1, 67, 2, 'Perbaikan'),
('Mic-007', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 3, 80, 2, 'Perbaikan'),
('Mic-AAS 1', 'Public Address System(PAS)', 'TOA', 'Jepang', 2017, 3, 87, 2, 'Normal'),
('Mic-AAS 2', 'Public Address System(PAS)', 'TOA', 'Jepang', 2017, 4, 87, 2, 'Normal'),
('Mic-AAS 3', 'Public Address System(PAS)', 'TOA', 'Jepang', 2017, 3, 87, 2, 'Normal'),
('Mic-AAS 4', 'Public Address System(PAS)', 'TOA', 'Indonesia', 2017, 2, 60, 2, 'Rusak'),
('Microphone Receiver Panel', 'Public Address System(PAS)', 'TOA', 'Jepang', 2016, 2, 80, 2, 'Perbaikan'),
('Monitor Panel', 'Public Address System(PAS)', 'TOA', 'Jepang', 2017, 4, 87, 2, 'Normal'),
('nan', '703', '10', '7', 2019, 2, 90, 2, 'normal'),
('NTP Clock Server-01', 'Master clock', 'Mobatime', 'Switzerland', 2018, 4, 90, 2, 'Normal'),
('NTP Clock Server-02', 'Master clock', 'Mobatime', 'Switzerland', 2018, 4, 90, 2, 'Normal'),
('PABX', 'PABX', 'Siemens', 'Italy', 1999, 3, 0, 2, 'Rusak'),
('PC CLIENT 1', 'PC', 'Dell', 'USA', 2016, 1, 40, 2, 'Rusak'),
('PC CLIENT 2', 'PC', 'Lenovo', 'USA', 2017, 2, 60, 2, 'Rusak'),
('PC CLIENT 3', 'PC', 'HP', 'USA', 2017, 3, 87, 2, 'Normal'),
('Pre-Amplifier-001', 'Public Address System(PAS)', 'TOA', 'Jepang', 2014, 1, 67, 2, 'Perbaikan'),
('Pre-Amplifier-002', 'Public Address System(PAS)', 'TOA', 'Jepang', 2017, 2, 87, 2, 'Normal'),
('Remote Sensing-01', 'Public Address System(PAS)', 'TOA', 'Indonesia', 2016, 1, 40, 2, 'Rusak'),
('Remote Sensing-02', 'Public Address System(PAS)', 'TOA', 'Indonesia', 2019, 4, 100, 2, 'Normal'),
('Slave Clock 4 Digit Double Face-01', 'Master clock', 'Mobatime', 'Switzerland', 2016, 2, 70, 2, 'Perbaikan'),
('Slave Clock 4 Digit Double Face-02', 'Master clock', 'Mobatime', 'Switzerland', 2016, 2, 70, 2, 'Perbaikan'),
('Slave Clock 4 Digit Single Face-01', 'Master clock', 'Mobatime', 'Switzerland', 2016, 1, 70, 2, 'Perbaikan'),
('Slave Clock 4 Digit Single Face-02', 'Master clock', 'Mobatime', 'Switzerland', 2018, 4, 90, 2, 'Normal'),
('Slave Clock 4 Digit Single Face-03', 'Master clock', 'Mobatime', 'Switzerland', 2016, 3, 70, 2, 'Perbaikan'),
('Slave Clock 4 Digit Single Face-04', 'Master clock', 'Mobatime', 'Switzerland', 2018, 2, 90, 2, 'Normal'),
('Slave Clock 4 Digit Single Face-05', 'Master clock', 'Mobatime', 'Switzerland', 2018, 1, 90, 2, 'Normal'),
('Slave Clock 4 Digit Single Face-06', 'Master clock', 'Mobatime', 'Switzerland', 2016, 3, 70, 2, 'Perbaikan'),
('Slave Clock 4 Digit Single Face-07', 'Master clock', 'Mobatime', 'Switzerland', 2016, 2, 70, 2, 'Perbaikan'),
('Slave Clock 4 Digit Single Face-08', 'Master clock', 'Mobatime', 'Switzerland', 2018, 3, 90, 2, 'Normal'),
('Smoke Detector FA-001', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-002', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-003', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-004', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-005', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-006', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-007', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-008', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-009', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-010', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-011', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-012', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-013', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-014', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-015', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-016', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-017', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-018', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-019', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-020', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-021', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-022', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-023', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-024', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-025', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-026', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-027', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-028', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-029', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-030', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-031', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-032', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-033', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-034', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-035', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-036', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-037', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-038', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-039', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-040', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-041', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-042', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-043', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-044', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-045', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-046', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-047', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-048', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-049', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-050', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-051', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-052', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-053', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-054', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-055', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-056', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-057', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-058', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-059', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-060', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-061', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-062', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-063', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-064', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-065', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-066', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-067', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-068', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-069', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-070', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-071', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-072', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-073', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-074', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-075', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-076', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-077', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-078', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-079', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-080', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-081', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-082', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-083', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-084', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-085', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-086', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-087', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-088', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-089', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-090', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-091', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-092', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-093', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-094', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-095', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-096', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-097', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-098', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-099', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-100', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-101', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-102', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-103', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-104', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-105', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-106', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-107', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-108', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-109', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-110', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-111', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-112', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-113', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-114', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('Smoke Detector FA-115', 'Fire Alarm System', 'Notifier', 'USA', 2016, 4, 100, 2, 'Normal'),
('WTMD Karyawan Domestik', 'WTMD ', 'CEIA', 'Italy', 2015, 2, 73, 2, 'Perbaikan'),
('WTMD Karyawan Internasional', 'WTMD ', 'CEIA', 'Italy', 2016, 2, 80, 2, 'Perbaikan'),
('WTMD Line 1', 'WTMD ', 'CEIA', 'Italy', 2015, 2, 73, 2, 'Perbaikan'),
('WTMD Line 2', 'WTMD ', 'CEIA', 'Italy', 2017, 4, 87, 2, 'Normal'),
('WTMD Line 3', 'WTMD ', 'CEIA', 'Italy', 2013, 1, 60, 2, 'Rusak'),
('WTMD Line 4', 'WTMD ', 'CEIA', 'Italy', 2012, 3, 53, 2, 'Rusak'),
('X-Ray Bagasi Line 1', 'X-Ray', 'Smith', 'Malaysia', 2018, 2, 93, 2, 'Normal'),
('X-Ray Bagasi Line 2', 'X-Ray', 'Smith', 'Malaysia', 2015, 2, 73, 2, 'Perbaikan'),
('X-Ray Bagasi Line 3', 'X-Ray', 'Rapiscan', 'Malaysia', 2019, 1, 100, 1, 'Normal'),
('X-Ray Bagasi Line 4', 'X-Ray', 'Smith', 'Malaysia', 2016, 2, 80, 2, 'Perbaikan'),
('X-Ray Cabin', 'X-Ray', 'Rapiscan', 'Malaysia', 2012, 3, 53, 2, 'Rusak'),
('X-Ray Cabin 5', 'X-Ray', 'Rapiscan', 'Malaysia', 2019, 1, 100, 1, 'Normal'),
('X-Ray Cabin Line 1', 'X-Ray', 'Rapiscan', 'Malaysia', 2017, 4, 87, 2, 'Normal'),
('X-Ray Cabin Line 2', 'X-Ray', 'Rapiscan', 'Malaysia', 2018, 4, 93, 2, 'Normal'),
('X-Ray Cabin Line 3', 'X-Ray', 'Rapiscan', 'Malaysia', 2017, 2, 87, 2, 'Normal'),
('X-Ray Cabin Line 4', 'X-Ray', 'Smith', 'Malaysia', 2011, 3, 47, 2, 'Rusak'),
('X-Ray Cabin Line 5', 'X-Ray', 'Smith', 'Malaysia', 2016, 1, 80, 2, 'Perbaikan'),
('xray 9', '', '', '', 2020, 4, 100, 1, 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `analis`
--

CREATE TABLE `analis` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `phoneno` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `jenis_alat` varchar(250) NOT NULL,
  `merk` varchar(250) NOT NULL,
  `buatan` varchar(250) NOT NULL,
  `tahun_buatan` varchar(250) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `kondisi` varchar(250) NOT NULL,
  `sertifikasi` varchar(250) NOT NULL,
  `keterangan` varchar(10) NOT NULL,
  `liklyhood` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `analis`
--

INSERT INTO `analis` (`id`, `name`, `city`, `phoneno`, `email`, `jenis_alat`, `merk`, `buatan`, `tahun_buatan`, `kategori`, `kondisi`, `sertifikasi`, `keterangan`, `liklyhood`) VALUES
(27, 'Mrs.Nuraini', 'Bandung', '0877722288966', 'nuraini@ulbi.ac.id', '5', '6', '5', '2012', '3', '0', '1', '[0]', '70.605'),
(28, 'Ayu Lestari Nasution', 'medan', '082277507587', 'ayulestarinasution848@gmail.com', '1', '1', '3', '2012', '3', '57', '1', '[0]', '82.405'),
(30, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '1', '1', '1', '2', '7', '88', '1', '[0]', '98.158'),
(31, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '1', '1', '1', '2', '7', '88', '1', '[0]', '80.874'),
(32, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '14', '14', '8', '2019', '3', '100', '1', '[2]', '91.487'),
(33, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '14', '12', '2', '2018', '2', '93', '1', '[2.]', '75.948'),
(34, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '1', '1', '1', '2018', '1', '1', '1', '[0]', '73.574'),
(35, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '1', '2', '3', '3', '3', '60', '1', '[0]', '70.375'),
(36, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '1', '2', '3', '3', '3', '60', '1', '[0]', '73.275'),
(37, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '1', '2', '3', '3', '3', '60', '1', '[0]', '88.674'),
(38, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '1', '2', '3', '3', '3', '60', '1', '[0]', '80.621'),
(39, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '101', '1', '1', '2016', '3', '2018', '1', '[0]', '97.08'),
(40, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '102', '1', '2', '2013', '1', '90', '1', '[1]', '81.571'),
(41, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '3', '1', '3', '2019', '2', '86', '1', '[1]', '72.274'),
(42, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '3', '1', '3', '2019', '2', '86', '1', '[1]', '98.945'),
(43, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '101', '2', '1', '2019', '2', '90', '1', '[1]', '75.564'),
(44, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '101', '1', '1', '2019', '2', '93', '1', '[1]', '81.494'),
(45, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '101', '1', '1', '2019', '2', '93', '1', '[1]', '92.79'),
(46, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '3', '13', '5', '2019', '3', '93', '1', '[2]', '78.829'),
(47, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '3', '13', '5', '2019', '3', '93', '1', '[2.]', '88.816'),
(48, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '703', '12', '5', '2018', '2', '87', '1', '[2.]', '93.081'),
(49, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '903', '12', '4', '2019', '2', '92', '1', '[2.]', '84.486'),
(50, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '4', '15', '7', '2019', '2', '87', '1', '[2.]', '87.448'),
(51, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '4', '15', '7', '2019', '2', '87', '1', '[2.]', '99.533'),
(52, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '4', '15', '7', '2019', '2', '87', '1', '[2.]', '91.611'),
(53, 'Ayu Lestari Nasution', 'Bandung', '082246315163', 'ayulestarinasution848@gmail.com', '4', '15', '7', '2019', '2', '87', '1', '[2.]', '95.56'),
(54, '', '', '', '', '802', '12', '4', '2018', '1', '78', '2', '[2]', '98.396'),
(55, '', '', '', '', '802', '12', '4', '2018', '1', '78', '2', '[2]', '94.497'),
(56, '', '', '', '', '802', '12', '4', '2018', '1', '78', '2', '[2]', '87.506'),
(57, '', '', '', '', '802', '12', '4', '2018', '1', '78', '2', '[2]', '95.254');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `jenis_alat` varchar(10) NOT NULL,
  `merk` varchar(10) NOT NULL,
  `buatan` varchar(10) NOT NULL,
  `tahun_buatan` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `kondisi` int(11) NOT NULL,
  `sertifikasi` int(11) NOT NULL,
  `keterangan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`jenis_alat`, `merk`, `buatan`, `tahun_buatan`, `kategori`, `kondisi`, `sertifikasi`, `keterangan`) VALUES
('101', '1', '2', 2018, 3, 87, 1, 'normal'),
('101', '1', '2', 2018, 3, 87, 1, 'normal'),
('101', '1', '2', 2018, 3, 87, 1, 'normal'),
('101', '1', '2', 2018, 3, 87, 1, 'normal'),
('101', '1', '2', 2018, 3, 87, 1, 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `category`, `phone`, `city`, `email`, `password`) VALUES
(12, 'Mrs.Nuraini', 'analis', '0877722288966', 'Bandung', 'nuraini@ulbi.ac.id', '$2b$12$8tBY0nsdmGTDbsJXOcSsZ./C865eRuDumH.mRkGyHzij/hoGkFC3W'),
(14, 'Ayu Lestari Nasution', 'petugas', '082246315163', 'Bandung', 'ayulestarinasution848@gmail.com', '$2b$12$7tmyLVHaKFf60BGlxb4IG.Hyvxhku0cDy7Y3X7KplS4OAsmR7Doma'),
(17, 'Ayu Lestari Nasution', 'petugas', '082277507587', 'Bandung', 'ayulestarinasution848@gmail.com', '$2b$12$jj/D8J6b2dVFCWGUOU94V.nkGF7xGFlHo4uCX8nFirmApjc2CvY8y'),
(18, 'naura', 'petugas', '08935748589', 'Bandung', 'naura@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alat`
--
ALTER TABLE `alat`
  ADD PRIMARY KEY (`nama_peralatan`);

--
-- Indexes for table `analis`
--
ALTER TABLE `analis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analis`
--
ALTER TABLE `analis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
