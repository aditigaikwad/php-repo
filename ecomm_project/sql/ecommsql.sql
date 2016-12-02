-- --------------------------------------------------------
-- Host:                         172.27.59.54
-- Server version:               5.1.73 - Source distribution
-- Server OS:                    redhat-linux-gnu
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for ecomm
DROP DATABASE IF EXISTS `ecomm`;
CREATE DATABASE IF NOT EXISTS `ecomm` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ecomm`;


-- Dumping structure for table ecomm.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(15) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.admin: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`admin_id`, `admin_name`, `password`) VALUES
	(1, 'admin', 'admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- Dumping structure for table ecomm.buy_details
DROP TABLE IF EXISTS `buy_details`;
CREATE TABLE IF NOT EXISTS `buy_details` (
  `buy_id` varchar(15) NOT NULL DEFAULT '0',
  `user_id` varchar(15) NOT NULL,
  `product_id` varchar(15) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`buy_id`),
  KEY `user_id` (`user_id`,`product_id`),
  KEY `user_id_2` (`user_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.buy_details: ~389 rows (approximately)
/*!40000 ALTER TABLE `buy_details` DISABLE KEYS */;
INSERT INTO `buy_details` (`buy_id`, `user_id`, `product_id`, `price`) VALUES
	('BU001', 'USER001', 'PROD003', 150000),
	('BU002', 'USER001', 'PROD003', 50000),
	('BU003', 'USER001', 'PROD004', 50000),
	('BU004', 'USER001', 'PROD003', 50000),
	('BU005', 'USER001', 'PROD004', 50000),
	('BU006', 'USER001', 'PROD003', 50000),
	('BU007', 'USER001', 'PROD004', 50000),
	('BU008', 'USER001', 'PROD003', 50000),
	('BU009', 'USER001', 'PROD003', 50000),
	('BU010', 'USER001', 'PROD004', 50000),
	('BU011', 'USER001', 'PROD003', 50000),
	('BU012', 'USER001', 'PROD006', 48000),
	('BU013', 'USER001', 'PROD003', 30000),
	('BU014', 'USER001', 'PROD004', 50000),
	('BU015', 'USER001', 'PROD003', 30000),
	('BU016', 'USER001', 'PROD004', 50000),
	('BU017', 'USER001', 'PROD009', 1000),
	('BU018', 'USER001', 'PROD003', 30000),
	('BU019', 'USER001', 'PROD004', 50000),
	('BU020', 'USER001', 'PROD003', 30000),
	('BU021', 'USER001', 'PROD004', 50000),
	('BU022', 'USER001', 'PROD005', 500),
	('BU023', 'USER001', 'PROD003', 30000),
	('BU024', 'USER001', 'PROD004', 50000),
	('BU025', 'USER001', 'PROD005', 500),
	('BU026', 'USER001', 'PROD003', 30000),
	('BU027', 'USER001', 'PROD004', 50000),
	('BU028', 'USER001', 'PROD005', 500),
	('BU029', 'USER001', 'PROD003', 30000),
	('BU030', 'USER001', 'PROD004', 50000),
	('BU031', 'USER001', 'PROD005', 500),
	('BU032', 'USER001', 'PROD003', 30000),
	('BU033', 'USER001', 'PROD004', 50000),
	('BU034', 'USER001', 'PROD005', 500),
	('BU035', 'USER001', 'PROD003', 30000),
	('BU036', 'USER001', 'PROD004', 50000),
	('BU037', 'USER001', 'PROD005', 500),
	('BU038', 'USER001', 'PROD009', 1000),
	('BU039', 'USER001', 'PROD010', 230),
	('BU040', 'USER014', 'PROD010', 230),
	('BU041', 'USER014', 'PROD011', 1000),
	('BU042', 'USER014', 'PROD010', 230),
	('BU043', 'USER014', 'PROD011', 1000),
	('BU044', 'USER017', 'PROD008', 23000),
	('BU045', 'USER001', 'PROD004', 50000),
	('BU046', 'USER001', 'PROD008', 23000),
	('BU047', 'USER001', 'PROD004', 50000),
	('BU048', 'USER001', 'PROD005', 500),
	('BU049', 'USER001', 'PROD004', 50000),
	('BU050', 'USER001', 'PROD005', 500),
	('BU051', 'USER001', 'PROD003', 30000),
	('BU052', 'USER001', 'PROD004', 50000),
	('BU053', 'USER001', 'PROD003', 30000),
	('BU054', 'USER001', 'PROD004', 50000),
	('BU055', 'USER030', 'PROD003', 30000),
	('BU056', 'USER030', 'PROD004', 50000),
	('BU057', 'USER001', 'PROD003', 30000),
	('BU058', 'USER001', 'PROD004', 50000),
	('BU059', 'USER001', 'PROD003', 30000),
	('BU060', 'USER001', 'PROD004', 50000),
	('BU061', 'USER039', 'PROD003', 30000),
	('BU062', 'USER039', 'PROD004', 50000),
	('BU063', 'USER001', 'PROD011', 1000),
	('BU064', 'USER030', 'PROD003', 30000),
	('BU065', 'USER030', 'PROD006', 48000),
	('BU066', 'USER030', 'PROD003', 30000),
	('BU067', 'USER030', 'PROD006', 48000),
	('BU068', 'USER030', 'PROD005', 1000),
	('BU069', 'USER030', 'PROD012', 1200),
	('BU070', 'USER035', 'PROD003', 30000),
	('BU071', 'USER035', 'PROD010', 230),
	('BU072', 'USER035', 'PROD011', 1000),
	('BU073', 'USER035', 'PROD003', 30000),
	('BU074', 'USER035', 'PROD007', 28000),
	('BU075', 'USER035', 'PROD004', 50000),
	('BU076', 'USER035', 'PROD005', 1000),
	('BU077', 'USER035', 'PROD005', 1000),
	('BU078', 'USER035', 'PROD005', 1000),
	('BU079', 'USER046', 'PROD004', 50000),
	('BU080', 'USER046', 'PROD006', 48000),
	('BU081', 'USER046', 'PROD003', 30000),
	('BU082', 'USER046', 'PROD004', 50000),
	('BU083', 'USER035', 'PROD003', 30000),
	('BU084', 'USER035', 'PROD004', 50000),
	('BU085', 'USER030', 'PROD012', 1200),
	('BU086', 'USER035', 'PROD003', 30000),
	('BU087', 'USER035', 'PROD006', 48000),
	('BU088', 'USER035', 'PROD003', 30000),
	('BU089', 'USER035', 'PROD004', 50000),
	('BU090', 'USER035', 'PROD004', 50000),
	('BU091', 'USER035', 'PROD006', 48000),
	('BU092', 'USER035', 'PROD003', 30000),
	('BU093', 'USER035', 'PROD012', 1200),
	('BU094', 'USER035', 'PROD003', 30000),
	('BU095', 'USER035', 'PROD004', 50000),
	('BU096', 'USER035', 'PROD012', 1200),
	('BU097', 'USER050', 'PROD012', 1200),
	('BU098', 'USER050', 'PROD012', 1200),
	('BU099', 'USER001', 'PROD003', 30000),
	('BU100', 'USER001', 'PROD004', 50000),
	('BU101', 'USER026', 'PROD008', 23000),
	('BU102', 'USER026', 'PROD009', 1000),
	('BU103', 'USER026', 'PROD010', 230),
	('BU104', 'USER026', 'PROD012', 1200),
	('BU105', 'USER026', 'PROD009', 1000),
	('BU106', 'USER026', 'PROD003', 30000),
	('BU107', 'USER026', 'PROD004', 50000),
	('BU108', 'USER026', 'PROD003', 30000),
	('BU109', 'USER026', 'PROD004', 50000),
	('BU110', 'USER053', 'PROD003', 30000),
	('BU111', 'USER053', 'PROD010', 230),
	('BU112', 'USER058', 'PROD003', 30000),
	('BU113', 'USER058', 'PROD004', 50000),
	('BU114', 'USER036', 'PROD011', 1000),
	('BU115', 'USER026', 'PROD010', 230),
	('BU116', 'USER058', 'PROD003', 30000),
	('BU117', 'USER030', 'PROD003', 30000),
	('BU118', 'USER030', 'PROD004', 50000),
	('BU119', 'USER030', 'PROD003', 30000),
	('BU120', 'USER030', 'PROD004', 50000),
	('BU121', 'USER026', 'PROD012', 1200),
	('BU122', 'USER058', 'PROD004', 50000),
	('BU123', 'USER058', 'PROD003', 30000),
	('BU124', 'USER058', 'PROD004', 50000),
	('BU125', 'USER058', 'PROD005', 1000),
	('BU126', 'USER058', 'PROD006', 48000),
	('BU127', 'USER058', 'PROD008', 23000),
	('BU128', 'USER058', 'PROD009', 1000),
	('BU129', 'USER058', 'PROD010', 230),
	('BU130', 'USER001', 'PROD003', 30000),
	('BU131', 'USER001', 'PROD004', 50000),
	('BU132', 'USER062', 'PROD004', 50000),
	('BU133', 'USER062', 'PROD005', 1000),
	('BU134', 'USER063', 'PROD003', 30000),
	('BU135', 'USER063', 'PROD006', 48000),
	('BU136', 'USER001', 'PROD006', 48000),
	('BU137', 'USER026', 'PROD003', 30000),
	('BU139', 'USER066', 'PROD004', 51001),
	('BU140', 'USER066', 'PROD005', 1600),
	('BU142', 'USER066', 'PROD003', 300001),
	('BU143', 'USER066', 'PROD004', 51001),
	('BU144', 'USER058', 'PROD003', 300001),
	('BU150', 'USER071', 'PROD007', 28000),
	('BU151', 'USER071', 'PROD012', 1300),
	('BU152', 'USER026', 'PROD007', 28000),
	('BU153', 'USER026', 'PROD009', 1000),
	('BU154', 'USER001', 'PROD003', 300001),
	('BU155', 'USER001', 'PROD004', 51001),
	('BU156', 'USER001', 'PROD003', 300001),
	('BU157', 'USER001', 'PROD004', 10000),
	('BU158', 'USER001', 'PROD011', 1000),
	('BU159', 'USER026', 'PROD011', 1000),
	('BU180', 'USER030', 'PROD004', 10000),
	('BU181', 'USER030', 'PROD005', 1600),
	('BU182', 'USER030', 'PROD006', 48000),
	('BU183', 'USER030', 'PROD004', 10000),
	('BU184', 'USER030', 'PROD005', 1600),
	('BU185', 'USER030', 'PROD006', 48000),
	('BU186', 'USER030', 'PROD004', 10000),
	('BU187', 'USER030', 'PROD005', 1600),
	('BU188', 'USER030', 'PROD006', 48000),
	('BU189', 'USER030', 'PROD004', 10000),
	('BU190', 'USER030', 'PROD005', 1600),
	('BU191', 'USER030', 'PROD006', 48000),
	('BU192', 'USER030', 'PROD004', 10000),
	('BU193', 'USER030', 'PROD005', 1600),
	('BU194', 'USER030', 'PROD006', 48000),
	('BU195', 'USER030', 'PROD004', 10000),
	('BU196', 'USER030', 'PROD005', 1600),
	('BU197', 'USER030', 'PROD006', 48000),
	('BU198', 'USER030', 'PROD004', 10000),
	('BU199', 'USER030', 'PROD005', 1600),
	('BU200', 'USER030', 'PROD006', 48000),
	('BU201', 'USER030', 'PROD004', 10000),
	('BU202', 'USER030', 'PROD005', 1600),
	('BU203', 'USER030', 'PROD006', 48000),
	('BU204', 'USER030', 'PROD004', 10000),
	('BU205', 'USER030', 'PROD005', 1600),
	('BU206', 'USER030', 'PROD006', 48000),
	('BU207', 'USER030', 'PROD004', 10000),
	('BU208', 'USER030', 'PROD005', 1600),
	('BU209', 'USER030', 'PROD006', 48000),
	('BU210', 'USER030', 'PROD004', 10000),
	('BU211', 'USER030', 'PROD005', 1600),
	('BU212', 'USER030', 'PROD006', 48000),
	('BU213', 'USER030', 'PROD004', 10000),
	('BU214', 'USER030', 'PROD005', 1600),
	('BU215', 'USER030', 'PROD006', 48000),
	('BU216', 'USER030', 'PROD004', 10000),
	('BU217', 'USER030', 'PROD005', 1600),
	('BU218', 'USER030', 'PROD006', 48000),
	('BU219', 'USER030', 'PROD004', 10000),
	('BU220', 'USER030', 'PROD005', 1600),
	('BU221', 'USER030', 'PROD006', 48000),
	('BU222', 'USER030', 'PROD004', 10000),
	('BU223', 'USER030', 'PROD005', 1600),
	('BU224', 'USER030', 'PROD006', 48000),
	('BU225', 'USER030', 'PROD004', 10000),
	('BU226', 'USER030', 'PROD005', 1600),
	('BU227', 'USER030', 'PROD006', 48000),
	('BU228', 'USER030', 'PROD004', 10000),
	('BU229', 'USER030', 'PROD005', 1600),
	('BU230', 'USER030', 'PROD006', 48000),
	('BU231', 'USER030', 'PROD004', 10000),
	('BU232', 'USER030', 'PROD005', 1600),
	('BU233', 'USER030', 'PROD006', 48000),
	('BU234', 'USER030', 'PROD004', 10000),
	('BU235', 'USER030', 'PROD005', 1600),
	('BU236', 'USER030', 'PROD006', 48000),
	('BU237', 'USER030', 'PROD089', 500),
	('BU238', 'USER030', 'PROD006', 48000),
	('BU239', 'USER030', 'PROD007', 28000),
	('BU240', 'USER030', 'PROD089', 500),
	('BU241', 'USER030', 'PROD006', 48000),
	('BU242', 'USER030', 'PROD007', 28000),
	('BU243', 'USER028', 'PROD090', 15000),
	('BU244', 'USER028', 'PROD082', 400),
	('BU245', 'USER028', 'PROD083', 5000),
	('BU246', 'USER028', 'PROD090', 15000),
	('BU247', 'USER028', 'PROD082', 400),
	('BU248', 'USER028', 'PROD083', 5000),
	('BU249', 'USER028', 'PROD090', 15000),
	('BU250', 'USER028', 'PROD082', 400),
	('BU251', 'USER028', 'PROD083', 5000),
	('BU252', 'USER028', 'PROD088', 1000),
	('BU253', 'USER028', 'PROD089', 500),
	('BU254', 'USER028', 'PROD090', 15000),
	('BU255', 'USER028', 'PROD091', 2000),
	('BU256', 'USER028', 'PROD006', 48000),
	('BU257', 'USER028', 'PROD007', 28000),
	('BU258', 'USER028', 'PROD011', 1000),
	('BU259', 'USER028', 'PROD012', 1250),
	('BU260', 'USER028', 'PROD082', 400),
	('BU261', 'USER028', 'PROD083', 5000),
	('BU262', 'USER028', 'PROD084', 800),
	('BU263', 'USER028', 'PROD085', 1200),
	('BU264', 'USER028', 'PROD086', 600),
	('BU265', 'USER028', 'PROD087', 1300),
	('BU266', 'USER026', 'PROD011', 1000),
	('BU267', 'USER069', 'PROD083', 5000),
	('BU268', 'USER069', 'PROD084', 800),
	('BU269', 'USER001', 'PROD007', 28000),
	('BU270', 'USER001', 'PROD007', 28000),
	('BU271', 'USER092', 'PROD090', 15000),
	('BU272', 'USER092', 'PROD006', 48000),
	('BU273', 'USER092', 'PROD007', 28000),
	('BU274', 'USER092', 'PROD011', 1000),
	('BU275', 'USER092', 'PROD086', 600),
	('BU276', 'USER069', 'PROD006', 48000),
	('BU277', 'USER069', 'PROD007', 28000),
	('BU278', 'USER093', 'PROD012', 1250),
	('BU279', 'USER093', 'PROD082', 550),
	('BU280', 'USER030', 'PROD011', 1199),
	('BU281', 'USER030', 'PROD012', 1250),
	('BU282', 'USER030', 'PROD006', 48000),
	('BU283', 'USER030', 'PROD007', 28000),
	('BU284', 'USER001', 'PROD006', 48000),
	('BU285', 'USER001', 'PROD007', 28000),
	('BU286', 'USER001', 'PROD011', 1199),
	('BU287', 'USER001', 'PROD006', 48000),
	('BU288', 'USER001', 'PROD007', 28000),
	('BU289', 'USER001', 'PROD011', 1199),
	('BU290', 'USER030', 'PROD084', 800),
	('BU291', 'USER030', 'PROD087', 1300),
	('BU292', 'USER030', 'PROD088', 1000),
	('BU293', 'USER030', 'PROD007', 28000),
	('BU294', 'USER030', 'PROD011', 1199),
	('BU295', 'USER030', 'PROD089', 500),
	('BU296', 'USER030', 'PROD006', 48000),
	('BU297', 'USER030', 'PROD007', 28000),
	('BU298', 'USER001', 'PROD006', 48000),
	('BU299', 'USER001', 'PROD007', 28000),
	('BU300', 'USER001', 'PROD088', 1000),
	('BU301', 'USER030', 'PROD088', 1000),
	('BU302', 'USER001', 'PROD006', 48000),
	('BU303', 'USER001', 'PROD007', 28000),
	('BU304', 'USER069', 'PROD089', 500),
	('BU305', 'USER069', 'PROD006', 48000),
	('BU306', 'USER069', 'PROD007', 28000),
	('BU307', 'USER094', 'PROD089', 500),
	('BU308', 'USER094', 'PROD007', 28000),
	('BU309', 'USER094', 'PROD089', 500),
	('BU310', 'USER094', 'PROD007', 28000),
	('BU311', 'USER094', 'PROD012', 1250),
	('BU312', 'USER094', 'PROD082', 550),
	('BU313', 'USER069', 'PROD091', 2000),
	('BU314', 'USER069', 'PROD006', 48000),
	('BU315', 'USER069', 'PROD007', 28000),
	('BU316', 'USER069', 'PROD091', 2000),
	('BU317', 'USER069', 'PROD006', 48000),
	('BU318', 'USER069', 'PROD007', 28000),
	('BU319', 'USER094', 'PROD007', 28000),
	('BU320', 'USER094', 'PROD011', 1199),
	('BU321', 'USER094', 'PROD006', 48000),
	('BU322', 'USER094', 'PROD007', 28000),
	('BU323', 'USER094', 'PROD006', 48000),
	('BU324', 'USER094', 'PROD007', 28000),
	('BU325', 'USER094', 'PROD006', 48000),
	('BU326', 'USER094', 'PROD007', 28000),
	('BU327', 'USER094', 'PROD006', 48000),
	('BU328', 'USER094', 'PROD007', 28000),
	('BU329', 'USER094', 'PROD006', 48000),
	('BU330', 'USER094', 'PROD007', 28000),
	('BU331', 'USER094', 'PROD006', 48000),
	('BU332', 'USER094', 'PROD007', 28000),
	('BU333', 'USER030', 'PROD091', 2000),
	('BU334', 'USER030', 'PROD006', 48000),
	('BU335', 'USER030', 'PROD012', 1250),
	('BU336', 'USER028', 'PROD091', 2000),
	('BU337', 'USER028', 'PROD006', 48000),
	('BU338', 'USER028', 'PROD007', 28000),
	('BU339', 'USER028', 'PROD091', 2000),
	('BU340', 'USER028', 'PROD006', 48000),
	('BU341', 'USER028', 'PROD007', 28000),
	('BU342', 'USER028', 'PROD090', 15000),
	('BU343', 'USER028', 'PROD007', 28000),
	('BU344', 'USER028', 'PROD011', 1199),
	('BU345', 'USER028', 'PROD091', 2000),
	('BU346', 'USER028', 'PROD007', 28000),
	('BU347', 'USER028', 'PROD011', 1199),
	('BU348', 'USER028', 'PROD090', 15000),
	('BU349', 'USER028', 'PROD012', 1250),
	('BU350', 'USER028', 'PROD082', 550),
	('BU351', 'USER028', 'PROD090', 15000),
	('BU352', 'USER028', 'PROD091', 2000),
	('BU353', 'USER028', 'PROD006', 48000),
	('BU354', 'USER028', 'PROD007', 28000),
	('BU355', 'USER028', 'PROD011', 1199),
	('BU356', 'USER028', 'PROD012', 1250),
	('BU357', 'USER028', 'PROD082', 550),
	('BU358', 'USER028', 'PROD083', 5000),
	('BU359', 'USER028', 'PROD084', 800),
	('BU360', 'USER028', 'PROD086', 600),
	('BU361', 'USER028', 'PROD087', 1300),
	('BU362', 'USER028', 'PROD088', 1000),
	('BU363', 'USER028', 'PROD089', 500),
	('BU364', 'USER028', 'PROD090', 15000),
	('BU365', 'USER028', 'PROD091', 2000),
	('BU366', 'USER028', 'PROD006', 48000),
	('BU367', 'USER028', 'PROD007', 28000),
	('BU368', 'USER028', 'PROD011', 1199),
	('BU369', 'USER028', 'PROD012', 1250),
	('BU370', 'USER028', 'PROD082', 550),
	('BU371', 'USER028', 'PROD083', 5000),
	('BU372', 'USER028', 'PROD084', 800),
	('BU373', 'USER028', 'PROD086', 600),
	('BU374', 'USER028', 'PROD087', 1300),
	('BU375', 'USER028', 'PROD088', 1000),
	('BU376', 'USER028', 'PROD090', 15000),
	('BU377', 'USER028', 'PROD006', 48000),
	('BU378', 'USER028', 'PROD007', 28000),
	('BU379', 'USER028', 'PROD091', 2000),
	('BU380', 'USER028', 'PROD012', 1250),
	('BU381', 'USER028', 'PROD082', 550),
	('BU382', 'USER028', 'PROD091', 2000),
	('BU383', 'USER028', 'PROD011', 1199),
	('BU384', 'USER028', 'PROD091', 2000),
	('BU385', 'USER028', 'PROD007', 28000),
	('BU386', 'USER028', 'PROD082', 550),
	('BU387', 'USER028', 'PROD091', 2000),
	('BU388', 'USER028', 'PROD007', 28000),
	('BU389', 'USER001', 'PROD088', 1000),
	('BU390', 'USER001', 'PROD006', 48000),
	('BU391', 'USER001', 'PROD011', 1199),
	('BU392', 'USER001', 'PROD012', 1250);
/*!40000 ALTER TABLE `buy_details` ENABLE KEYS */;


-- Dumping structure for table ecomm.buy_seq
DROP TABLE IF EXISTS `buy_seq`;
CREATE TABLE IF NOT EXISTS `buy_seq` (
  `buy_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`buy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.buy_seq: ~390 rows (approximately)
/*!40000 ALTER TABLE `buy_seq` DISABLE KEYS */;
INSERT INTO `buy_seq` (`buy_id`) VALUES
	(1),
	(2),
	(3),
	(4),
	(5),
	(6),
	(7),
	(8),
	(9),
	(10),
	(11),
	(12),
	(13),
	(14),
	(15),
	(16),
	(17),
	(18),
	(19),
	(20),
	(21),
	(22),
	(23),
	(24),
	(25),
	(26),
	(27),
	(28),
	(29),
	(30),
	(31),
	(32),
	(33),
	(34),
	(35),
	(36),
	(37),
	(38),
	(39),
	(40),
	(41),
	(42),
	(43),
	(44),
	(45),
	(46),
	(47),
	(48),
	(49),
	(50),
	(51),
	(52),
	(53),
	(54),
	(55),
	(56),
	(57),
	(58),
	(59),
	(60),
	(61),
	(62),
	(63),
	(64),
	(65),
	(66),
	(67),
	(68),
	(69),
	(70),
	(71),
	(72),
	(73),
	(74),
	(75),
	(76),
	(77),
	(78),
	(79),
	(80),
	(81),
	(82),
	(83),
	(84),
	(85),
	(86),
	(87),
	(88),
	(89),
	(90),
	(91),
	(92),
	(93),
	(94),
	(95),
	(96),
	(97),
	(98),
	(99),
	(100),
	(101),
	(102),
	(103),
	(104),
	(105),
	(106),
	(107),
	(108),
	(109),
	(110),
	(111),
	(112),
	(113),
	(114),
	(115),
	(116),
	(117),
	(118),
	(119),
	(120),
	(121),
	(122),
	(123),
	(124),
	(125),
	(126),
	(127),
	(128),
	(129),
	(130),
	(131),
	(132),
	(133),
	(134),
	(135),
	(136),
	(137),
	(139),
	(140),
	(142),
	(143),
	(144),
	(145),
	(146),
	(147),
	(148),
	(149),
	(150),
	(151),
	(152),
	(153),
	(154),
	(155),
	(156),
	(157),
	(158),
	(159),
	(160),
	(161),
	(162),
	(163),
	(164),
	(165),
	(166),
	(167),
	(168),
	(169),
	(170),
	(171),
	(172),
	(173),
	(174),
	(175),
	(176),
	(177),
	(178),
	(179),
	(180),
	(181),
	(182),
	(183),
	(184),
	(185),
	(186),
	(187),
	(188),
	(189),
	(190),
	(191),
	(192),
	(193),
	(194),
	(195),
	(196),
	(197),
	(198),
	(199),
	(200),
	(201),
	(202),
	(203),
	(204),
	(205),
	(206),
	(207),
	(208),
	(209),
	(210),
	(211),
	(212),
	(213),
	(214),
	(215),
	(216),
	(217),
	(218),
	(219),
	(220),
	(221),
	(222),
	(223),
	(224),
	(225),
	(226),
	(227),
	(228),
	(229),
	(230),
	(231),
	(232),
	(233),
	(234),
	(235),
	(236),
	(237),
	(238),
	(239),
	(240),
	(241),
	(242),
	(243),
	(244),
	(245),
	(246),
	(247),
	(248),
	(249),
	(250),
	(251),
	(252),
	(253),
	(254),
	(255),
	(256),
	(257),
	(258),
	(259),
	(260),
	(261),
	(262),
	(263),
	(264),
	(265),
	(266),
	(267),
	(268),
	(269),
	(270),
	(271),
	(272),
	(273),
	(274),
	(275),
	(276),
	(277),
	(278),
	(279),
	(280),
	(281),
	(282),
	(283),
	(284),
	(285),
	(286),
	(287),
	(288),
	(289),
	(290),
	(291),
	(292),
	(293),
	(294),
	(295),
	(296),
	(297),
	(298),
	(299),
	(300),
	(301),
	(302),
	(303),
	(304),
	(305),
	(306),
	(307),
	(308),
	(309),
	(310),
	(311),
	(312),
	(313),
	(314),
	(315),
	(316),
	(317),
	(318),
	(319),
	(320),
	(321),
	(322),
	(323),
	(324),
	(325),
	(326),
	(327),
	(328),
	(329),
	(330),
	(331),
	(332),
	(333),
	(334),
	(335),
	(336),
	(337),
	(338),
	(339),
	(340),
	(341),
	(342),
	(343),
	(344),
	(345),
	(346),
	(347),
	(348),
	(349),
	(350),
	(351),
	(352),
	(353),
	(354),
	(355),
	(356),
	(357),
	(358),
	(359),
	(360),
	(361),
	(362),
	(363),
	(364),
	(365),
	(366),
	(367),
	(368),
	(369),
	(370),
	(371),
	(372),
	(373),
	(374),
	(375),
	(376),
	(377),
	(378),
	(379),
	(380),
	(381),
	(382),
	(383),
	(384),
	(385),
	(386),
	(387),
	(388),
	(389),
	(390),
	(391),
	(392);
/*!40000 ALTER TABLE `buy_seq` ENABLE KEYS */;


-- Dumping structure for table ecomm.order_details
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` varchar(15) NOT NULL,
  `buy_id` varchar(15) NOT NULL,
  `total_price` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `buy_id` (`buy_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`buy_id`) REFERENCES `buy_details` (`buy_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.order_details: ~1 rows (approximately)
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` (`order_id`, `buy_id`, `total_price`) VALUES
	('ORD001', 'BU001', 150000);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;


-- Dumping structure for table ecomm.order_seq
DROP TABLE IF EXISTS `order_seq`;
CREATE TABLE IF NOT EXISTS `order_seq` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.order_seq: ~1 rows (approximately)
/*!40000 ALTER TABLE `order_seq` DISABLE KEYS */;
INSERT INTO `order_seq` (`order_id`) VALUES
	(1);
/*!40000 ALTER TABLE `order_seq` ENABLE KEYS */;


-- Dumping structure for table ecomm.product_details
DROP TABLE IF EXISTS `product_details`;
CREATE TABLE IF NOT EXISTS `product_details` (
  `product_id` varchar(15) NOT NULL DEFAULT '0',
  `product_name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `image_name` varchar(20) NOT NULL,
  `image_path` varchar(400) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.product_details: ~13 rows (approximately)
/*!40000 ALTER TABLE `product_details` DISABLE KEYS */;
INSERT INTO `product_details` (`product_id`, `product_name`, `price`, `image_name`, `image_path`, `description`) VALUES
	('PROD006', 'Laptop', 48000, 'HP Ultrabook', 'images/prod_1.jpg', 'Feature Ultrabbok with 8 GB Ram 1 TB Hard-Disk'),
	('PROD007', 'dell laptop', 28000, 'dell lapi', 'images/dell.jpg', 'new generation dell laptop with advanced features'),
	('PROD011', 'Backpack', 1199, 'Backpack', 'images/backpack.jpg', 'American tourister backpack with yellow color'),
	('PROD012', 'hair dryer', 1250, 'hair dryer', 'images/hairdryer.jpg', 'power saving hair dryer. '),
	('PROD082', 'PenDrive', 550, 'Pendrive', 'images/sandisk.jpeg', 'Branded ScanDisk 16 GB Pen Drive '),
	('PROD083', 'Bed', 5000, 'Bed', 'images/bed.jpeg', 'Branded bed'),
	('PROD084', 'Ear Phones', 800, 'earphones', 'images/headset.jpeg', 'Skull'),
	('PROD086', 'Nike', 600, 'nike', 'images/nike shoes.jpeg', 'sports shoes'),
	('PROD087', 'Perfume', 1300, 'Perfume', 'images/perfume.jpg', 'Perfume smelling'),
	('PROD088', 'Shelf', 1000, 'shelf', 'images/sheft.jpeg', 'Nice shelf to keep things '),
	('PROD089', 'sparkle', 500, 'sparkle', 'images/sparkle.jpeg', 'Good Sparkle Love It!'),
	('PROD090', 'micromax TV', 15000, 'micromax', 'images/micromax.jpeg', 'LCD 21" TV with USB 3.0 Support.'),
	('PROD091', 'blanket', 2000, 'blanket', 'images/blanket.jpeg', 'Handmade blanket from the home wool');
/*!40000 ALTER TABLE `product_details` ENABLE KEYS */;


-- Dumping structure for table ecomm.product_seq
DROP TABLE IF EXISTS `product_seq`;
CREATE TABLE IF NOT EXISTS `product_seq` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.product_seq: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_seq` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_seq` ENABLE KEYS */;


-- Dumping structure for table ecomm.regiStud
DROP TABLE IF EXISTS `regiStud`;
CREATE TABLE IF NOT EXISTS `regiStud` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `addrs` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='this table is for perl demo project';

-- Dumping data for table ecomm.regiStud: 2 rows
/*!40000 ALTER TABLE `regiStud` DISABLE KEYS */;
INSERT INTO `regiStud` (`name`, `pass`, `email`, `addrs`) VALUES
	('dipika', '12345', 'dipikaj@cybage.com', 'pune'),
	('dipika joshi', '12345', 'dj@gmail.com', 'pune');
/*!40000 ALTER TABLE `regiStud` ENABLE KEYS */;


-- Dumping structure for table ecomm.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(15) NOT NULL DEFAULT '0',
  `email_id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `is_active` int(11) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table is for New User Creation';

-- Dumping data for table ecomm.user: ~22 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `email_id`, `password`, `is_active`) VALUES
	('USER001', 'ashishkamat27@gmail.com', '123456', 1),
	('USER017', 'gaurang@gmail', 'gaurang', 0),
	('USER024', 'sumit@gmail.com', '123456', 1),
	('USER026', 'jithin@gmail.com', '123456', 1),
	('USER028', 'piyushk@gmail.com', '123456', 1),
	('USER030', 'navneet@gmail.com', '123456', 1),
	('USER031', 'sam1122@gmail.com', '12', 0),
	('USER036', 'dipikaj@gmail.com', '123456', 1),
	('USER039', 'ajinkyab@gmail.com', '12345', 1),
	('USER045', 'madhavikh@gmail.com', '123456', 1),
	('USER046', 'kuldeep@cybage.com', '123456', 1),
	('USER047', 'sumitkumar@gmail.com', '123456', 1),
	('USER049', 'piyushkul1@gmail.com', '12', 1),
	('USER054', 'manjul@gmail.com', '123456', 1),
	('USER055', 'piyush3k@gmil.com', '123456', 1),
	('USER057', 'gandhar@gmail.com', '123', 1),
	('USER064', 'jjtata@gmail.com', '12345', 1),
	('USER069', 'gandharnew@gmail.com', '123456', 1),
	('USER071', 'priyal@cybage.com', 'priyal', 1),
	('USER092', 'abhijeetk@cybage.com', '123456', 0),
	('USER093', 'dipikanew@gmail.com', '123456', 1),
	('USER094', 'sam1@gmail.com', '1234', 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Dumping structure for table ecomm.user_details
DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_detail_id` varchar(15) NOT NULL DEFAULT '0',
  `mobile` varchar(10) NOT NULL,
  `address` varchar(400) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` int(6) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  PRIMARY KEY (`user_detail_id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.user_details: ~12 rows (approximately)
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` (`user_detail_id`, `mobile`, `address`, `city`, `zip`, `user_id`, `user_name`) VALUES
	('UD001', '9004916161', 'Yerwada,', 'Pune', 411015, 'USER001', 'Ashish Kamat'),
	('UD025', '9421341837', 'Near MIT College Aurangabad pune mumbai nagpur nashik dubai', 'Aurangabad', 431005, 'USER035', 'PiyushK'),
	('UD026', '9987412350', 'Near Pune', 'Pune', 411014, 'USER036', 'Dipika Joshi'),
	('UD027', '987456123', 'Hadapsar', 'pune', 411021, 'USER039', 'Ajinkya Bhosale'),
	('UD028', '9400986697', 'Olive Gardens,Mannuthy', 'Thrissur', 680651, 'USER026', 'Jithin Justice'),
	('UD031', '6987452145', 'Mumbaikar', 'pune', 541254, 'USER069', 'gandhar'),
	('UD032', '9876543210', 'kalyani nagar', 'Pune', 440014, 'USER071', 'priya'),
	('UD035', '9696587452', 'Cybage,kalyaninagar', 'Pune', 651425, 'USER092', 'Abhijeet'),
	('UD036', '9684578595', 'abd', 'pune', 521458, 'USER093', 'Dipika'),
	('UD037', '9685474125', 'jkdgkjhegk', 'hbhb', 854785, 'USER030', 'Navneet'),
	('UD038', '1234656786', 'asf1', 'asf', 123458, 'USER094', 'Sumit'),
	('UD039', '1111111111', 'tfuk', 'awdvw', 145278, 'USER028', 'piyush');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;


-- Dumping structure for table ecomm.user_details_seq
DROP TABLE IF EXISTS `user_details_seq`;
CREATE TABLE IF NOT EXISTS `user_details_seq` (
  `user_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.user_details_seq: ~20 rows (approximately)
/*!40000 ALTER TABLE `user_details_seq` DISABLE KEYS */;
INSERT INTO `user_details_seq` (`user_detail_id`) VALUES
	(1),
	(2),
	(3),
	(23),
	(24),
	(25),
	(26),
	(27),
	(28),
	(29),
	(30),
	(31),
	(32),
	(33),
	(34),
	(35),
	(36),
	(37),
	(38),
	(39);
/*!40000 ALTER TABLE `user_details_seq` ENABLE KEYS */;


-- Dumping structure for table ecomm.user_seq
DROP TABLE IF EXISTS `user_seq`;
CREATE TABLE IF NOT EXISTS `user_seq` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.user_seq: ~94 rows (approximately)
/*!40000 ALTER TABLE `user_seq` DISABLE KEYS */;
INSERT INTO `user_seq` (`user_id`) VALUES
	(1),
	(2),
	(3),
	(4),
	(5),
	(6),
	(7),
	(8),
	(9),
	(10),
	(11),
	(12),
	(13),
	(14),
	(15),
	(16),
	(17),
	(18),
	(19),
	(20),
	(21),
	(22),
	(23),
	(24),
	(25),
	(26),
	(27),
	(28),
	(29),
	(30),
	(31),
	(32),
	(33),
	(34),
	(35),
	(36),
	(37),
	(38),
	(39),
	(40),
	(41),
	(42),
	(43),
	(44),
	(45),
	(46),
	(47),
	(48),
	(49),
	(50),
	(51),
	(52),
	(53),
	(54),
	(55),
	(56),
	(57),
	(58),
	(59),
	(60),
	(61),
	(62),
	(63),
	(64),
	(65),
	(66),
	(67),
	(68),
	(69),
	(70),
	(71),
	(72),
	(73),
	(74),
	(75),
	(76),
	(77),
	(78),
	(79),
	(80),
	(81),
	(82),
	(83),
	(84),
	(85),
	(86),
	(87),
	(88),
	(89),
	(90),
	(91),
	(92),
	(93),
	(94);
/*!40000 ALTER TABLE `user_seq` ENABLE KEYS */;


-- Dumping structure for trigger ecomm.buy_trigger
DROP TRIGGER IF EXISTS `buy_trigger`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `buy_trigger` BEFORE INSERT ON `buy_details` FOR EACH ROW BEGIN
  INSERT INTO buy_seq VALUES (NULL);
  SET NEW.buy_id = CONCAT('BU', LPAD(LAST_INSERT_ID(), 3, '0'));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Dumping structure for trigger ecomm.order_trigger
DROP TRIGGER IF EXISTS `order_trigger`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `order_trigger` BEFORE INSERT ON `order_details` FOR EACH ROW BEGIN
  INSERT INTO order_seq VALUES (NULL);
  SET NEW.order_id = CONCAT('ORD', LPAD(LAST_INSERT_ID(), 3, '0'));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Dumping structure for trigger ecomm.product_trigger
DROP TRIGGER IF EXISTS `product_trigger`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `product_trigger` BEFORE INSERT ON `product_details` FOR EACH ROW BEGIN
  INSERT INTO user_seq VALUES (NULL);
  SET NEW.product_id = CONCAT('PROD', LPAD(LAST_INSERT_ID(), 3, '0'));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Dumping structure for trigger ecomm.user_details_trigger
DROP TRIGGER IF EXISTS `user_details_trigger`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `user_details_trigger` BEFORE INSERT ON `user_details` FOR EACH ROW BEGIN
  INSERT INTO user_details_seq VALUES (NULL);
  SET NEW.user_detail_id = CONCAT('UD', LPAD(LAST_INSERT_ID(), 3, '0'));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Dumping structure for trigger ecomm.user_trigger
DROP TRIGGER IF EXISTS `user_trigger`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `user_trigger` BEFORE INSERT ON `user` FOR EACH ROW BEGIN
  INSERT INTO user_seq VALUES (NULL);
  SET NEW.user_id = CONCAT('USER', LPAD(LAST_INSERT_ID(), 3, '0'));
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;