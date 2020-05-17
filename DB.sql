-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.36-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for kereta
CREATE DATABASE IF NOT EXISTS `kereta` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kereta`;

-- Dumping structure for table kereta.penerbangan
CREATE TABLE IF NOT EXISTS `penerbangan` (
  `id_tiket` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pemesan` varchar(50) DEFAULT NULL,
  `jenis_penerbangan` varchar(50) DEFAULT NULL,
  `tujuan` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tiket`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table kereta.penerbangan: ~4 rows (approximately)
/*!40000 ALTER TABLE `penerbangan` DISABLE KEYS */;
INSERT INTO `penerbangan` (`id_tiket`, `nama_pemesan`, `jenis_penerbangan`, `tujuan`, `jumlah`, `kelas`, `harga`) VALUES
	(9, 'RIYOI', 'Domestik', 'Bandung', 1, 'Bisnis', 5000),
	(10, 'RAYAN', 'Domestik', 'Bandung', 2, 'First', 20000),
	(11, 'TOTOY', 'Internasional', 'Amerika', 4, 'First', 40000),
	(12, 'NAYA', 'Internasional', 'Malaysia', 1, 'Bisnis', 5000);
/*!40000 ALTER TABLE `penerbangan` ENABLE KEYS */;

-- Dumping structure for table kereta.user
CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kereta.user: ~3 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`username`, `password`, `level`) VALUES
	('aceng', 'aceng', 2),
	('admin', 'admin', 1),
	('user', 'user', 2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
