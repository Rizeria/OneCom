/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : one_v1

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-08-09 11:25:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chk_repair_claim
-- ----------------------------
DROP TABLE IF EXISTS `chk_repair_claim`;
CREATE TABLE `chk_repair_claim` (
  `Item_ID` char(50) DEFAULT NULL,
  `Repair_Claim_Manner` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chk_repair_claim
-- ----------------------------

-- ----------------------------
-- Table structure for temp_claim
-- ----------------------------
DROP TABLE IF EXISTS `temp_claim`;
CREATE TABLE `temp_claim` (
  `TC_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Claim_ID` char(50) DEFAULT NULL,
  `ORD_ID` char(50) DEFAULT NULL,
  `Unit_ID` char(50) DEFAULT NULL,
  PRIMARY KEY (`TC_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp_claim
-- ----------------------------

-- ----------------------------
-- Table structure for temp_unit_sn
-- ----------------------------
DROP TABLE IF EXISTS `temp_unit_sn`;
CREATE TABLE `temp_unit_sn` (
  `Number` int(11) NOT NULL AUTO_INCREMENT,
  `P_ID` char(50) NOT NULL,
  `S_ID` char(100) NOT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp_unit_sn
-- ----------------------------

-- ----------------------------
-- Table structure for t_brand
-- ----------------------------
DROP TABLE IF EXISTS `t_brand`;
CREATE TABLE `t_brand` (
  `B_Number` int(10) NOT NULL AUTO_INCREMENT,
  `B_ID` char(50) NOT NULL,
  `B_Name` varchar(100) NOT NULL,
  `B_Status` char(5) NOT NULL,
  PRIMARY KEY (`B_Number`,`B_ID`),
  UNIQUE KEY `B_ID` (`B_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_brand
-- ----------------------------
INSERT INTO `t_brand` VALUES ('1', 'B01', 'AMD', '1');
INSERT INTO `t_brand` VALUES ('2', 'B02', 'INTEL', '1');
INSERT INTO `t_brand` VALUES ('3', 'B03', 'MSI', '1');
INSERT INTO `t_brand` VALUES ('4', 'B04', 'Gigabyte', '1');
INSERT INTO `t_brand` VALUES ('5', 'B05', 'Asus', '1');
INSERT INTO `t_brand` VALUES ('6', 'B06', 'Asrock', '1');
INSERT INTO `t_brand` VALUES ('7', 'B07', 'Galax', '1');
INSERT INTO `t_brand` VALUES ('8', 'B08', 'Sapphire', '1');
INSERT INTO `t_brand` VALUES ('9', 'B09', 'PowerColor', '1');
INSERT INTO `t_brand` VALUES ('10', 'B10', 'Team', '1');
INSERT INTO `t_brand` VALUES ('11', 'B11', 'KingSton', '1');
INSERT INTO `t_brand` VALUES ('12', 'B12', 'G.Skill', '1');
INSERT INTO `t_brand` VALUES ('13', 'B13', 'Corsair', '1');
INSERT INTO `t_brand` VALUES ('14', 'B14', 'Samsung', '1');
INSERT INTO `t_brand` VALUES ('15', 'B15', 'SEAGATE', '1');
INSERT INTO `t_brand` VALUES ('17', 'B17', 'Sandisk', '1');
INSERT INTO `t_brand` VALUES ('18', 'B18', 'LG', '1');
INSERT INTO `t_brand` VALUES ('19', 'B19', 'Sony', '0');
INSERT INTO `t_brand` VALUES ('20', 'B20', 'Neolution', '1');
INSERT INTO `t_brand` VALUES ('28', 'B28', 'Western', '1');

-- ----------------------------
-- Table structure for t_claim
-- ----------------------------
DROP TABLE IF EXISTS `t_claim`;
CREATE TABLE `t_claim` (
  `Number_Claim` int(11) NOT NULL AUTO_INCREMENT,
  `ClaimItem_ID` char(50) NOT NULL,
  `Cus_Name` char(50) NOT NULL,
  `Cus_Tel` char(20) NOT NULL,
  `ClaimItem_Name` char(100) NOT NULL,
  `S_ID` char(100) NOT NULL,
  `Dealer_ID` char(50) DEFAULT NULL,
  `Claim_Date_Add` date NOT NULL,
  `Claim_Date_Send` date DEFAULT NULL,
  `Claim_Date_D_Return` date DEFAULT NULL,
  `Claim_Date_C_Return` date DEFAULT NULL,
  `Claim_Status` char(10) DEFAULT NULL,
  `Claim_Type` char(20) NOT NULL,
  `Claim_Manner` char(100) NOT NULL,
  PRIMARY KEY (`Number_Claim`,`ClaimItem_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_claim
-- ----------------------------
INSERT INTO `t_claim` VALUES ('1', 'Claim_NO_0001', 'OneComputer', '2343435454', 'DDR4/2133 TEAM RED (8X2)', 'cvvv', null, '2017-08-24', null, null, null, '1', 'forshop', 'แรมไม่อ่านค่า');
INSERT INTO `t_claim` VALUES ('2', 'Claim_NO_0002', 'OneComputer', '', 'DDR4/2133 TEAM RED (8X2)', 'rams3', null, '2017-08-24', null, null, null, '1', 'forshop', 'แรมไม่อ่านค่า');
INSERT INTO `t_claim` VALUES ('3', 'Claim_NO_0003', 'OneComputer', '', 'DDR4/2133 TEAM RED (8X2)', 'cvvb', null, '2017-08-24', null, null, null, '1', 'forshop', 'แรมไม่อ่านค่า');
INSERT INTO `t_claim` VALUES ('4', 'Claim_NO_0004', 'OneComputer', '', 'CORE I3 4170 3.7 GHz', 'i3sss1', 'dealer_01', '2017-08-24', '0000-00-00', null, null, '1', 'forshop', 'พัดลมเสีย');
INSERT INTO `t_claim` VALUES ('5', 'Claim_NO_0005', 'OneComputer', '', 'CORE I3 4170 3.7 GHz', 'i3sss3', null, '2017-08-24', null, null, null, '1', 'forshop', 'พัดลมเสีย');
INSERT INTO `t_claim` VALUES ('6', 'Claim_NO_0006', 'OneComputer', '', 'CORE I3 4170 3.7 GHz', 'i3sss2', 'dealer_08', '2017-08-24', '0000-00-00', null, null, '1', 'forshop', 'พัดลมที่แถมมาเสีย');
INSERT INTO `t_claim` VALUES ('7', 'Claim_NO_0007', 'OneComputer', '', 'CORE I5 6600K 3.5 GHz (NO FAN)', 'CCCCD', 'dealer_06', '2017-08-24', '2017-08-25', '2017-08-25', '2017-08-25', '4', 'forshop', 'พัดลมเสีย');
INSERT INTO `t_claim` VALUES ('8', 'Claim_NO_0008', 'ทวีทอง วิวัฒนขจรสุข', '0846776905', 'CORE I5 6600K 3.5 GHz (NO FAN)', 'CCCCA', null, '2017-08-24', null, null, null, '0', 'forcus', 'ไฟรับเข้า vcore ปรับไม่ได้');
INSERT INTO `t_claim` VALUES ('9', 'Claim_NO_0009', 'อรรณพ แดงสี', '0830062177', 'AMD AM3+ FX-8350 4.0 Ghz.', 'KKKKP', 'dealer_01', '2017-08-24', '2017-08-25', '2017-08-25', '2017-10-04', '4', 'forcus', 'ขาไฟชำรุด');
INSERT INTO `t_claim` VALUES ('10', 'Claim_NO_0010', 'ทวีทอง วิวัฒนขจรสุข', '0846776905', 'CORE I5 6600K 3.5 GHz (NO FAN)', 'CCCCA', 'dealer_01', '2017-08-24', '2017-08-24', '2017-08-25', '2017-08-26', '4', 'forcus', 'ขาไฟช๊อต');
INSERT INTO `t_claim` VALUES ('11', 'Claim_NO_0011', 'OneComputer', '', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', 'WE123', 'dealer_01', '2017-08-24', '2017-10-04', '2017-10-05', '2017-10-05', '4', 'forshop', 'พัดลมเสีย');
INSERT INTO `t_claim` VALUES ('14', 'Claim_NO_0014', 'ธีทัช วันพรประเสริฐ์', '0846776905', 'AMD AM3+ FX-8350 4.0 Ghz.', 'cxz', null, '2017-08-25', null, null, null, '0', 'forcus', 'ไฟรับเข้า vcore ปรับไม่ได้');
INSERT INTO `t_claim` VALUES ('15', 'Claim_NO_0015', 'ธีรเมศ จำปาทุม', '0846776905', 'AMD AM3+ FX-8350 4.0 Ghz.', 'cxz', 'dealer_12', '2017-08-25', '2017-08-25', '2017-08-25', '2017-08-25', '4', 'forcus', 'ไฟรับเข้า vcore ปรับไม่ได้');
INSERT INTO `t_claim` VALUES ('16', 'Claim_NO_0016', 'ทวีทอง วิวัฒนขจรสุข', '0846776905', 'MSI VGA GTX1080TI GAMING X 11G', 'GGGGG', 'dealer_06', '2017-08-25', '0000-00-00', null, null, '1', 'forcus', 'เล่นเกมแล้ว FPS ตก');
INSERT INTO `t_claim` VALUES ('17', 'Claim_NO_0017', 'ทวีทอง วิวัฒนขจรสุข', '0846776905', '970 PRO3 R2.0', 'dsa', 'dealer_01', '2017-08-26', '0000-00-00', null, null, '1', 'forcus', 'USB Port เสีย');
INSERT INTO `t_claim` VALUES ('18', 'Claim_NO_0018', 'OneComputer', '', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', '445ff', 'dealer_01', '2017-08-27', '2017-10-09', '2017-10-09', '2017-10-09', '4', 'forshop', 'FPS ตกตอนเล่นเกมส์');
INSERT INTO `t_claim` VALUES ('19', 'Claim_NO_0019', 'พรเทพ ศรีมูลน้อย', '0846776905', 'FX-6300 3.5 GHz', 'A20003', 'dealer_01', '2017-08-28', '2017-10-03', '2017-10-04', '2017-10-04', '4', 'forcus', 'เปิดเครื่องแล้วดับ');
INSERT INTO `t_claim` VALUES ('20', 'Claim_NO_0020', 'OneComputer', '', 'PENTIUM G3260 3.30 GHz', 'pen1', 'dealer_01', '2017-10-03', '2017-10-05', '2017-10-05', '2017-10-05', '4', 'forshop', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('21', 'Claim_NO_0021', 'OneComputer', '', 'PENTIUM G3260 3.30 GHz', 'pen2', 'dealer_06', '2017-10-03', '2017-10-09', '2017-10-09', '2017-10-09', '4', 'forshop', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('22', 'Claim_NO_0022', 'พรเทพ ศรีมูลน้อย', '0846776905', 'CORE I5 6600K 3.5 GHz (NO FAN)', 'CCCCE', null, '2017-10-04', null, null, null, '0', 'forcus', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('23', 'Claim_NO_0023', 'พรเทพ ศรีมูลน้อย', '0846776905', 'CORE I5 6600K 3.5 GHz (NO FAN)', 'CCCCE', 'dealer_01', '2017-10-04', '2017-10-05', '2017-10-05', '2017-10-06', '4', 'forcus', 'เปิดเครื่องแล้วดับ');
INSERT INTO `t_claim` VALUES ('24', 'Claim_NO_0024', 'พรเทพ ศรีมูลน้อย', '0846776905', 'AMD AM3+ FX-6300 3.5 Ghz.', 'dwqqqqq', 'dealer_01', '2017-10-04', '2017-10-04', '2017-10-04', '2017-10-04', '4', 'forcus', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('25', 'Claim_NO_0025', 'พรเทพ ศรีมูลน้อย', '0846776905', 'AMD AM3+ FX-6300 3.5 Ghz.', '245LLW556977LS', null, '2017-10-04', null, null, null, '0', 'forcus', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('26', 'Claim_NO_0026', 'พรเทพ ศรีมูลน้อย', '0846776905', 'AMD AM3+ FX-6300 3.5 Ghz.', '245LLW556977LS', 'dealer_01', '2017-10-04', '2017-10-04', '2017-10-04', '2017-10-04', '4', 'forcus', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('27', 'Claim_NO_0027', 'อรรณพ แดงสี', '0846776905', 'FX-6300 3.5 GHz', 'A20006', 'dealer_01', '2017-10-04', '2017-10-04', '2017-10-04', '2017-10-04', '4', 'forcus', 'ไฟรับเข้า vcore ปรับไม่ได้');
INSERT INTO `t_claim` VALUES ('28', 'Claim_NO_0028', 'พรเทพ ศรีมูลน้อย', '0846776905', 'FX-6300 3.5 GHz', 'AS50006', 'dealer_01', '2017-10-04', '2017-10-04', '2017-10-04', '2017-10-04', '4', 'forcus', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('29', 'Claim_NO_0029', 'พรเทพ ศรีมูลน้อย', '0846776905', 'FX-6300 3.5 GHz', 'AS65001', 'dealer_01', '2017-10-04', '2017-10-04', '2017-10-04', '2017-10-04', '4', 'forcus', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('30', 'Claim_NO_0030', 'OneComputer', '', 'p_lg', 'lg0', 'dealer_01', '2017-10-05', '2017-10-05', '2017-10-05', '2017-10-05', '4', 'forshop', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('31', 'Claim_NO_0031', 'ปวรุตม์ อินทรักษา', '0899445388', '970 EXTREME3 (REV2)', '457886', 'dealer_01', '2017-10-05', '2017-10-05', '2017-10-05', '2017-10-05', '4', 'forcus', 'แผงวงจรไฟเสีย');
INSERT INTO `t_claim` VALUES ('32', 'Claim_NO_0032', 'OneComputer', '', 'PENTIUM G3260 3.30 GHz', 'rx0-2', 'dealer_01', '2017-10-06', '2017-10-06', '2017-10-09', '2017-10-09', '4', 'forshop', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('33', 'Claim_NO_0033', 'ทวีทอง วิวัฒนขจรสุข', '0846776905', 'DDR4/2133 TEAM RED (8X2)', 'bbbn', 'dealer_01', '2017-10-06', '2017-10-06', '2017-10-06', '2017-10-06', '4', 'forcus', 'Ram ไม่อ่านค่า');
INSERT INTO `t_claim` VALUES ('34', 'Claim_NO_0034', 'OneComputer', '', 'FX-8300 3.3 GHz', '32ssa', 'dealer_01', '2017-10-07', '2017-10-07', '2017-10-07', '2017-10-07', '4', 'forshop', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('35', 'Claim_NO_0035', 'อรรณพ แดงสี', '0846776905', 'WD SATA-3 BLUE 1.0 TB', 'K34451UDX', 'dealer_06', '2017-10-07', '2017-10-07', '2017-10-07', '2017-10-07', '4', 'forcus', 'ไฟไม่เข้า');
INSERT INTO `t_claim` VALUES ('36', 'Claim_NO_0036', 'OneComputer', '', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', 'RDKER', 'dealer_01', '2017-10-08', '2017-10-08', '2017-10-09', '2017-10-09', '4', 'forshop', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('37', 'Claim_NO_0037', 'OneComputer', '', '970 EXTREME3 (REV2)', '145755', 'dealer_06', '2017-10-08', '2017-10-08', '2017-10-09', '2017-10-09', '4', 'forshop', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('38', 'CLM1710-NO-00038', 'พรเทพ ศรีมูลน้อย', '0846776905', 'AMD AM3+ FX-8350 4.0 Ghz.', 'vvbn', 'dealer_01', '2017-10-09', '2017-10-09', '2017-10-09', '2017-10-09', '4', 'forcus', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('39', 'CLM-NO-00039', 'OneComputer', '', 'AMD AM3+ FX-8350 4.0 Ghz.', 'dsadsa12312312', null, '2017-10-09', null, null, null, '1', 'forshop', 'เปิดไม่ติด');
INSERT INTO `t_claim` VALUES ('40', 'CLM1710-NO-00040', 'OneComputer', '', 'AMD AM3+ FX-8350 4.0 Ghz.', 'dasdqwqqqygff', null, '2017-10-09', null, null, null, '1', 'forshop', 'เปิดไม่ติด');

-- ----------------------------
-- Table structure for t_claim_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_claim_detail`;
CREATE TABLE `t_claim_detail` (
  `Detail_Number` int(11) NOT NULL AUTO_INCREMENT,
  `ClaimItem_ID` char(50) NOT NULL,
  `Claim_Detail` char(255) NOT NULL,
  PRIMARY KEY (`Detail_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_claim_detail
-- ----------------------------
INSERT INTO `t_claim_detail` VALUES ('1', 'Claim_NO_0010', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : CORE I5 6600K 3.5 GHz S/N : HCV138BB62');
INSERT INTO `t_claim_detail` VALUES ('2', 'Claim_NO_0009', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : AMD FX-8300 3.5 Ghz. S/N : IJNYMTBB63');
INSERT INTO `t_claim_detail` VALUES ('3', 'Claim_NO_0007', 'สินค้าเคลมร้าน เปลี่ยนสวน 7 วัน เปลี่ยนสินค้าเคลมตัวใหม่ SN : KGB445BBZW  นำเข้าเป็นสินค้าใหม่');
INSERT INTO `t_claim_detail` VALUES ('4', 'Claim_NO_0015', 'เสนอคืนเงินจำนวน 2500 บาท');
INSERT INTO `t_claim_detail` VALUES ('5', 'Claim_NO_0024', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : AMD AM3+ FX-6300 3.5 Ghz. S/N : 245LLW556977LS');
INSERT INTO `t_claim_detail` VALUES ('6', 'Claim_NO_0027', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : FX-6300 3.5 GHz S/N : A30006');
INSERT INTO `t_claim_detail` VALUES ('7', 'Claim_NO_0026', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : AMD AM3+ FX-6300 3.5 Ghz. S/N : AS4000');
INSERT INTO `t_claim_detail` VALUES ('8', 'Claim_NO_0019', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : FX-6300 3.5 GHz S/N : AS50006');
INSERT INTO `t_claim_detail` VALUES ('9', 'Claim_NO_0028', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : FX-6300 3.5 GHz S/N : AS65001');
INSERT INTO `t_claim_detail` VALUES ('10', 'Claim_NO_0029', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : FX-6300 3.5 GHz S/N : AS650023222');
INSERT INTO `t_claim_detail` VALUES ('11', 'Claim_NO_0011', 'รับเข้าสินค้าของร้าน ชื่อสินค้า : Gigabyte RX 460 OC 2GB DDR5 128 BIT S/N : WE3553336XX');
INSERT INTO `t_claim_detail` VALUES ('12', 'Claim_NO_0020', 'รับเข้าสินค้าของร้าน ชื่อสินค้า : PENTIUM G3260 3.30 GHz S/N : pen45s');
INSERT INTO `t_claim_detail` VALUES ('13', 'Claim_NO_0030', 'รับเข้าสินค้าของร้าน ชื่อสินค้า : p_lg S/N : lg009');
INSERT INTO `t_claim_detail` VALUES ('14', 'Claim_NO_0031', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : 970 EXTREME3 (REV2) S/N : 457886NEW');
INSERT INTO `t_claim_detail` VALUES ('15', 'Claim_NO_0023', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : CORE I5 6600K 3.5 GHz (NO FAN) S/N : CCCCCCCZZZXCXZ');
INSERT INTO `t_claim_detail` VALUES ('16', 'Claim_NO_0033', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : DDR4/2133 TEAM RED (8X2) S/N : 8866945556');
INSERT INTO `t_claim_detail` VALUES ('17', 'Claim_NO_0034', 'รับเข้าสินค้าของร้าน ชื่อสินค้า : Product_test1 S/N : 1115aaa');
INSERT INTO `t_claim_detail` VALUES ('18', 'Claim_NO_0035', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : WD SATA-3 BLUE 1.0 TB S/N : sslz');
INSERT INTO `t_claim_detail` VALUES ('19', 'Claim_NO_0037', 'รับเข้าสินค้าของร้าน ชื่อสินค้า : 970 EXTREME3 (REV2) S/N : dsacxzzzasdas');
INSERT INTO `t_claim_detail` VALUES ('20', 'Claim_NO_0036', 'รับเข้าสินค้าของร้าน ชื่อสินค้า : Gigabyte RX 460 OC 2GB DDR5 128 BIT S/N : DSACXZVCXBVD1332S');
INSERT INTO `t_claim_detail` VALUES ('21', 'Claim_NO_0032', 'รับเข้าสินค้าของร้าน ชื่อสินค้า : AMD AM3+ FX-6300 3.5 Ghz. S/N : DSACXZAAA');
INSERT INTO `t_claim_detail` VALUES ('22', 'Claim_NO_0021', 'รับเข้าสินค้าของร้าน ชื่อสินค้า : PENTIUM G3260 3.30 GHz S/N : pen33asdczx');
INSERT INTO `t_claim_detail` VALUES ('23', 'Claim_NO_0018', 'รับเข้าสินค้าของร้าน ชื่อสินค้า : Gigabyte RX 460 OC 2GB DDR5 128 BIT S/N : cxzassddsaasmuf');
INSERT INTO `t_claim_detail` VALUES ('24', 'CLM1710-NO-00038', 'รับเข้าเป็นสินค้าเปลี่ยน ชื่อสินค้า : AMD AM3+ FX-8350 4.0 Ghz. S/N : vvbnbbcd');

-- ----------------------------
-- Table structure for t_claim_exchange
-- ----------------------------
DROP TABLE IF EXISTS `t_claim_exchange`;
CREATE TABLE `t_claim_exchange` (
  `Ex_Number` int(11) NOT NULL AUTO_INCREMENT,
  `ORD_ID` char(50) DEFAULT NULL,
  `Unit_ID` char(50) DEFAULT NULL,
  `Unit_ID_New` char(50) DEFAULT NULL,
  `P_Name` char(100) DEFAULT NULL,
  `S_ID` char(100) DEFAULT NULL,
  `Date_Ex` date DEFAULT NULL,
  `End_Warranty` date DEFAULT NULL,
  `Date_Sell_Shop` date DEFAULT NULL,
  `End_Warranty_Shop` date DEFAULT NULL,
  `ClaimItem_ID` char(50) DEFAULT NULL,
  `Warranty` char(50) DEFAULT NULL,
  `Ex_Status` char(10) DEFAULT NULL,
  PRIMARY KEY (`Ex_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_claim_exchange
-- ----------------------------
INSERT INTO `t_claim_exchange` VALUES ('1', 'ORD_20170823_NO_56', 'P126_G03SG21_NO_0070', 'P126_G03SG21_NO_0091', 'DDR4/2133 TEAM RED (8X2)', 'rams3', '2017-08-24', '0000-00-00', '2017-08-23', '0000-00-00', null, 'L-T', '3');
INSERT INTO `t_claim_exchange` VALUES ('2', 'ORD_20170823_NO_56', 'P126_G03SG21_NO_0091', 'P126_G03SG21_NO_0074', 'DDR4/2133 TEAM RED (8X2)', 'cvvb', '2017-08-24', '0000-00-00', '2017-08-23', '0000-00-00', null, 'L-T', '3');
INSERT INTO `t_claim_exchange` VALUES ('3', 'ORD_20170823_NO_56', 'P126_G03SG21_NO_0074', 'P126_G03SG21_NO_0092', 'DDR4/2133 TEAM RED (8X2)', 'rams4', '2017-08-24', '0000-00-00', '2017-08-23', '0000-00-00', null, 'L-T', '1');
INSERT INTO `t_claim_exchange` VALUES ('4', 'ORD_20170824_NO_58', 'P42_G01SG04_NO_0094', 'P42_G01SG04_NO_0096', 'CORE I3 4170 3.7 GHz', 'i3sss3', '2017-08-24', '2019-08-24', '2017-08-24', '2019-08-24', null, '2ปี', '3');
INSERT INTO `t_claim_exchange` VALUES ('5', 'ORD_20170824_NO_58', 'P42_G01SG04_NO_0096', 'P42_G01SG04_NO_0095', 'CORE I3 4170 3.7 GHz', 'i3sss2', '2017-08-24', '2019-08-24', '2017-08-24', '2019-08-24', null, '2ปี', '3');
INSERT INTO `t_claim_exchange` VALUES ('6', 'ORD_20170824_NO_58', 'P42_G01SG04_NO_0095', 'P42_G01SG04_NO_0097', 'CORE I3 4170 3.7 GHz', 'i3sss4', '2017-08-24', '2019-08-24', '2017-08-24', '2019-08-24', null, '2ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('7', 'ORD_20170824_NO_61', 'P58_6mH5lT', 'P58_ofPkXJ', 'CORE I5 6600K 3.5 GHz (NO FAN)', 'CCCCE', '2017-08-24', '2020-07-24', '2017-08-24', '2020-08-24', 'Claim_NO_0007', '3ปี', '3');
INSERT INTO `t_claim_exchange` VALUES ('8', 'ORD_20170822_NO_55', 'P05_G04SG29_NO_0081', 'P05_G04SG29_NO_0080', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', 'HHFE', '2017-08-24', '2019-03-01', '2017-08-22', '2019-08-22', 'Claim_NO_0011', '2ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('12', null, null, null, 'CORE I5 6600K 3.5 GHz', 'HCV138BB62', '2017-08-25', '2020-07-24', '2017-08-16', '2020-08-16', 'Claim_NO_0010', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('13', null, null, null, 'AMD FX-8300 3.5 Ghz.', 'IJNYMTBB63', '2017-08-25', '2020-07-20', '2017-08-11', '2020-08-11', 'Claim_NO_0009', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('14', 'ORD_20170827_NO_65', 'P05_G04SG29_NO_0082', 'P05_G04SG29_NO_0101', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', 'LERTR', '2017-08-27', '2019-03-01', '2017-08-27', '2019-08-27', 'Claim_NO_0018', '2ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('15', 'ORD_20171003_NO_73', 'P44_G01SG04_NO_0116', 'P44_G01SG04_NO_0117', 'PENTIUM G3260 3.30 GHz', 'pen2', '2017-10-03', '2020-10-03', '2017-10-03', '2020-10-03', 'Claim_NO_0020', '3ปี', '3');
INSERT INTO `t_claim_exchange` VALUES ('16', 'ORD_20171003_NO_73', 'P44_G01SG04_NO_0117', 'P44_G01SG04_NO_0118', 'PENTIUM G3260 3.30 GHz', 'pen3', '2017-10-03', '2020-10-03', '2017-10-03', '2020-10-03', 'Claim_NO_0021', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('17', 'ORD_20170922_NO_71', 'P06_G01SG01_NO_0088', 'P06_G01SG01_NO_0088', 'AMD AM3+ FX-6300 3.5 Ghz.', '245LLW556977LS', '2017-10-04', '2018-08-22', '2017-09-22', '2018-09-22', 'Claim_NO_0024', '1ปี', '3');
INSERT INTO `t_claim_exchange` VALUES ('18', 'ORD_20170815_NO_29', 'P34_CzJsZL', 'P34_CzJsZL', 'FX-6300 3.5 GHz', 'A30006', '2017-10-04', '2020-07-27', '2017-08-15', '2020-08-15', 'Claim_NO_0027', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('19', 'ORD_20170922_NO_71', 'P06_G01SG01_NO_0088', 'P06_G01SG01_NO_0088', 'AMD AM3+ FX-6300 3.5 Ghz.', 'AS4000', '2017-10-04', '2018-08-22', '2017-09-22', '2018-09-22', 'Claim_NO_0026', '1ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('20', 'ORD_20170813_NO_25', 'P34_2TBsbR', 'P34_2TBsbR', 'FX-6300 3.5 GHz', 'AS50006', '2017-10-04', '2020-07-27', '2017-08-13', '2020-08-13', 'Claim_NO_0019', '3ปี', '3');
INSERT INTO `t_claim_exchange` VALUES ('21', 'ORD_20170813_NO_25', 'P34_2TBsbR', 'P34_2TBsbR', 'FX-6300 3.5 GHz', 'AS65001', '2017-10-04', '2020-07-27', '2017-08-13', '2020-08-13', 'Claim_NO_0028', '3ปี', '3');
INSERT INTO `t_claim_exchange` VALUES ('22', 'ORD_20170813_NO_25', 'P34_2TBsbR', 'P34_2TBsbR', 'FX-6300 3.5 GHz', 'AS650023222', '2017-10-04', '2020-07-27', '2017-08-13', '2020-08-13', 'Claim_NO_0029', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('23', 'ORD_20171005_NO_76', 'P129_G46SG74_NO_0131', 'P129_G46SG74_NO_0132', 'p_lg', 'lg1', '2017-10-05', '2018-10-05', '2017-10-05', '2018-10-05', 'Claim_NO_0030', '1ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('24', 'ORD_20170827_NO_64', 'P81_G02SG08_NO_0084', 'P81_G02SG08_NO_0084', '970 EXTREME3 (REV2)', '457886NEW', '2017-10-05', '2020-08-22', '2017-08-27', '2020-08-27', 'Claim_NO_0031', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('25', null, null, null, 'CORE I5 6600K 3.5 GHz (NO FAN)', 'CCCCCCCZZZXCXZ', '2017-10-05', '2020-07-24', '2017-08-24', '2020-08-24', 'Claim_NO_0023', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('26', 'ORD_20171006_NO_78', 'P34_G03SG21_NO_0053', 'P44_G01SG04_NO_0130', 'PENTIUM G3260 3.30 GHz', 'pen45s', '2017-10-06', '2020-08-03', '2017-10-06', '2020-10-06', 'Claim_NO_0032', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('27', 'ORD_20170824_NO_57', 'P126_G03SG21_NO_0073', 'P126_G03SG21_NO_0073', 'DDR4/2133 TEAM RED (8X2)', '8866945556', '2017-10-06', '0000-00-00', '2017-08-24', '0000-00-00', 'Claim_NO_0033', 'L-T', '1');
INSERT INTO `t_claim_exchange` VALUES ('28', 'ORD_20171007_NO_79', 'P131_G47SG75_NO_0136', 'P35_G01SG01_NO_0077', 'FX-8300 3.3 GHz', 'cvd', '2017-10-07', '2020-10-07', '2017-10-07', '2020-10-07', 'Claim_NO_0034', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('29', 'ORD_20170913_NO_69', 'P128_G06SG39_NO_0112', 'P128_G06SG39_NO_0112', 'WD SATA-3 BLUE 1.0 TB', 'sslz', '2017-10-07', '2020-09-13', '2017-09-13', '2020-09-13', 'Claim_NO_0035', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('30', 'ORD_20171003_NO_72', 'P81_G02SG08_NO_0085', 'P05_G04SG29_NO_0129', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', 'WE3553336XX', '2017-10-08', '2020-08-22', '2017-10-03', '2020-10-03', 'Claim_NO_0036', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('31', 'ORD_20171008_NO_80', 'P81_G02SG08_NO_0086', 'P78_G02SG08_NO_0140', 'FM2A88M-HD+ R3.0', 'ZZCXXCXVBFLPOPOP', '2017-10-08', '2020-08-22', '2017-10-08', '2020-10-08', 'Claim_NO_0037', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('32', 'ORD_20170822_NO_54', 'P08_G01SG01_NO_0068', 'P08_G01SG01_NO_0068', 'AMD AM3+ FX-8350 4.0 Ghz.', 'vvbnbbcd', '2017-10-09', '2020-08-07', '2017-08-22', '2020-08-22', 'CLM1710-NO-00038', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('33', 'ORD1710-NO-00083', 'P08_G01SG01_NO_0141', 'UNTG01SG01-NO-00187', 'AMD AM3+ FX-8350 4.0 Ghz.', 'ccxzzzzzzz23309llk', '2017-10-09', '2020-10-08', '2017-10-09', '2020-10-09', 'CLM-NO-00039', '3ปี', '1');
INSERT INTO `t_claim_exchange` VALUES ('34', 'ORD1710-NO-00084', 'P08_G01SG01_NO_0142', 'UNTG01SG01-NO-00186', 'AMD AM3+ FX-8350 4.0 Ghz.', 'zzzjkkllio543', '2017-10-09', '2020-10-08', '2017-10-09', '2020-10-09', 'CLM1710-NO-00040', '3ปี', '1');

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `Number` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_ID` char(50) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Customer_Surname` varchar(50) NOT NULL,
  `Customer_FullName` varchar(100) NOT NULL,
  `Customer_Address` varchar(255) NOT NULL,
  `Customer_Tel` char(15) NOT NULL,
  `Customer_Status` char(10) NOT NULL,
  PRIMARY KEY (`Number`,`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', 'เงินสด', 'เงินสด', 'เงินสด', 'เงินสด', '', '', '1');
INSERT INTO `t_customer` VALUES ('2', 'cus_02', 'ทวีทอง', 'วิวัฒนขจรสุข', 'ทวีทอง วิวัฒนขจรสุข', 'บ้านเลขที่ 29 หมู่ 6 ซ.นาคนิวาส ถ.นาคนิวาส แขวงลาดพร้าว เขตลาดพร้าว กรุงเทพฯ 10230', '0846776905', '1');
INSERT INTO `t_customer` VALUES ('3', 'cus_03', 'ชัยวัฒน์', 'ญาณพจน์', 'ชัยวัฒน์ ญาณพจน์', 'บางนา กรุงเทพฯ', '0982499966', '1');
INSERT INTO `t_customer` VALUES ('4', 'cus_04', 'ทดสอบลูกค้า', 'นามสกุลทดสอบ', 'ทดสอบลูกค้า นามสกุลทดสอบ', 'กรุงเทพฯ', '0846776905', '1');
INSERT INTO `t_customer` VALUES ('5', 'cus_05', 'สถาพร', 'โรจณ์ปรีดา', 'สถาพร โรจณ์ปรีดา', 'กรุงเทพฯ', '0885008501', '1');
INSERT INTO `t_customer` VALUES ('6', 'cus_06', 'ทดสอบ', 'ทดสอบนามสกุล', 'ทดสอบ ทดสอบนามสกุล', 'กรุงเทพฯ', '0846776905', '1');
INSERT INTO `t_customer` VALUES ('7', 'cus_07', 'อรรณพ', 'แดงสี', 'อรรณพ แดงสี', 'กรุงเทพฯ', '0830062177', '1');
INSERT INTO `t_customer` VALUES ('8', 'cus_08', 'ธีทัช', 'วันพรประเสริฐ', 'ธีทัช วันพรประเสริฐ', 'กรุงเทพฯ', '0826893830', '1');
INSERT INTO `t_customer` VALUES ('9', 'cus_09', 'จิรสิน', 'เรืองชัยโชค', 'จรสิน เรื่องชัยโชค', 'กรุงเทพฯ', '0969412869', '1');
INSERT INTO `t_customer` VALUES ('10', 'cus_10', 'บริษัท อรรณพ จำกัด ', 'company', 'บริษัท อรรณพ จำกัด ', 'กรุงเทพฯ', '0830062177', '1');
INSERT INTO `t_customer` VALUES ('11', 'cus_11', 'บริษัท พรเทพ จำกัด', 'company', 'บริษัท พรเทพ จำกัด', 'เชียงใหม่', '0846776905', '1');
INSERT INTO `t_customer` VALUES ('12', 'cus_12', 'บริษัท ทีทัช จำกัด', 'company', 'บริษัท ทีทัช จำกัด', 'น่าน', '0826893830', '1');
INSERT INTO `t_customer` VALUES ('13', 'cus_13', 'บริษัท ทดสอบ จำกัด', 'company', 'บริษัท ทดสอบ จำกัด', 'กรุงเทพฯ', '0846776905', '1');
INSERT INTO `t_customer` VALUES ('14', 'cus_14', 'บริษัท ทดสอบ2 จำกัด', 'company', 'บริษัท ทดสอบ2 จำกัด', 'กรุงเทพฯ', '0846776905', '1');
INSERT INTO `t_customer` VALUES ('15', 'cus_15', 'ทดสอบชื่อ1', 'ทดสอบนามสกุล2', 'ทดสอบชื่อ1 ทดสอบนามสกุล2', 'กรุงเทพฯ', '0846776905', '1');
INSERT INTO `t_customer` VALUES ('16', 'cus_16', 'ทดสอบชื่อ2', 'ทดสอบนามสกุล2', 'ทดสอบชื่อ2 ทดสอบนามสกุล2', 'กรุงเทพฯ', '0846776905', '1');
INSERT INTO `t_customer` VALUES ('17', 'cus_17', 'ธีรเมศ', 'จำปาทุม', 'ธีรเมศ จำปาทุม', 'บางนา กรุงเทพฯ', '0867757277', '1');
INSERT INTO `t_customer` VALUES ('18', 'cus_18', 'ทดสอบลูกค้า', 'ทดสอบลูกค้า', 'ทดสอบลูกค้า ทดสอบลูกค้า', 'กรุงเทพฯ', '0846776905', '1');
INSERT INTO `t_customer` VALUES ('19', 'cus_19', 'พรเทพ', 'ศรีมูลน้อย', 'พรเทพ ศรีมูลน้อย', 'กรุงเทพฯ', '0846776905', '1');
INSERT INTO `t_customer` VALUES ('20', 'cus_20', 'eee', 'eee', 'eee eee', 'มอ', '2143455446', '1');
INSERT INTO `t_customer` VALUES ('21', 'cus_21', 'ชนกานต์', 'สามา', 'ชนกานต์ สามา', 'กรุงเทพฯ', '0982499966', '1');

-- ----------------------------
-- Table structure for t_dealer
-- ----------------------------
DROP TABLE IF EXISTS `t_dealer`;
CREATE TABLE `t_dealer` (
  `Number` int(11) NOT NULL AUTO_INCREMENT,
  `Dealer_ID` char(50) NOT NULL,
  `Dealer_Company` varchar(100) NOT NULL,
  `Dealer_Address` varchar(255) NOT NULL,
  `Dealer_Name` varchar(100) NOT NULL,
  `Dealer_Gender` char(10) NOT NULL,
  `Dealer_Tel` char(25) NOT NULL,
  `Dealer_Status` char(5) NOT NULL,
  PRIMARY KEY (`Number`,`Dealer_ID`),
  UNIQUE KEY `unique_id` (`Dealer_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dealer
-- ----------------------------
INSERT INTO `t_dealer` VALUES ('1', 'dealer_01', 'ascen resources', 'สำนักงานใหญ่ 29/54 หมู่ 2 ถนน 345 ตำบลลำโพ อำเภอบางบัวทอง จังหวัดนนทบุรี 11110 โทร 0-2961-7292', 'ชัยวัฒน์ ญาณพจน์', 'ชาย', '0846776905', '1');
INSERT INTO `t_dealer` VALUES ('6', 'dealer_06', 'ABC Company', 'กรุงเทพฯ', 'สถาพร โรจนปรีดา', 'ชาย', '0846776905', '1');
INSERT INTO `t_dealer` VALUES ('8', 'dealer_08', 'ABC Company', 'กรุงเทพฯ', 'Scat 1', 'หญิง', '0846776905', '1');
INSERT INTO `t_dealer` VALUES ('9', 'dealer_09', 'DDE Company', 'กรุงเทพฯ', 'Scat 1', 'หญิง', '0846776905', '1');
INSERT INTO `t_dealer` VALUES ('11', 'dealer_11', 'KKGL Company', 'ตราด', 'Scat 3', 'หญิง', '0846776905', '1');
INSERT INTO `t_dealer` VALUES ('12', 'dealer_12', 'ATX', '72/102', 'เบส เบส', 'ชาย', '0846776905', '1');
INSERT INTO `t_dealer` VALUES ('13', 'dealer_13', 'test_dealer_company', 'กรุงเทพฯ', 'test_dealer 1', 'ชาย', '0846776905', '1');
INSERT INTO `t_dealer` VALUES ('14', 'dealer_14', 'ABC company', 'กรุงเทพฯ', 'name sname', 'หญิง', '0846776905', '1');
INSERT INTO `t_dealer` VALUES ('15', 'dealer_15', 'ABC Company', 'กรุงเทพฯ', 'name1', 'ชาย', '0846776905', '1');
INSERT INTO `t_dealer` VALUES ('16', 'dealer_16', 'ABC company', 'กรุงเทพฯ', 'fname sname', 'ชาย', '0846776905', '1');
INSERT INTO `t_dealer` VALUES ('17', 'dealer_17', 'DIY Computer', 'กรุงเทพฯ', 'พรเทพ ศรีมูลน้อย', 'ชาย', '0846776905', '1');

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `Emp_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Emp_ID` char(10) NOT NULL,
  `Emp_Name` varchar(50) NOT NULL,
  `Emp_Address` varchar(255) NOT NULL,
  `Emp_Tel` char(25) NOT NULL,
  `Emp_Birthday` date NOT NULL,
  `Emp_PersonalCode` char(50) NOT NULL,
  `Emp_Pass` char(255) NOT NULL,
  `Emp_Type` char(25) NOT NULL,
  `Emp_Status` int(1) NOT NULL,
  `Emp_Gender` char(10) NOT NULL,
  `Emp_Img` char(255) DEFAULT NULL,
  PRIMARY KEY (`Emp_Number`,`Emp_ID`,`Emp_PersonalCode`),
  UNIQUE KEY `Emp_ID` (`Emp_ID`),
  UNIQUE KEY `Emp_PersonalCode` (`Emp_PersonalCode`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('1', 'emp01', 'ทวีทอง วิวัฒนขจรสุข', 'บ้านเลขที่ 29  ซอย นาคนิวาส 24 ถนน นาคนิวาสแขวง ลาดพร้าว เขตลาดพร้าว กรุงเทพฯ 10230', '0846776905', '1994-09-28', '1103701510129', '$2y$12$846970c872d400676bf67uaf0UoLMExyZVeQ7o89ImOdLHz/rgW5u', 'root', '1', 'ชาย', '20170829180401.jpg');
INSERT INTO `t_employee` VALUES ('2', 'emp02', 'สถาพร โรจนปรีดา', 'กรุงเทพฯ', '0885008501', '1994-03-15', '1102200127291', '$2y$12$846970c872d400676bf67uTlf12XWiaRyzjAoAnC93NVDd1M6ikNe', 'admin', '1', 'ชาย', '20171005145548.jpg');
INSERT INTO `t_employee` VALUES ('3', 'emp03', 'Joan of Arc', 'กรุงเทพฯ', '1111111111', '2017-03-30', '5434534123232', '$2y$12$846970c872d400676bf67uTlf12XWiaRyzjAoAnC93NVDd1M6ikNe', 'admin', '0', 'หญิง', '20170708142911.png');
INSERT INTO `t_employee` VALUES ('5', 'emp05', 'test1', 'โตเกียว', '1111111111', '0000-00-00', '1231235645645', '$2y$12$846970c872d400676bf67uHPEWOBXP1fw3HYVncgfwxGlCNX9XJ.u', 'user', '0', 'หญิง', '20170508194659.jpg');
INSERT INTO `t_employee` VALUES ('6', 'emp06', 'test', 'Bangkok', '1111111111', '0000-00-00', '1231231564564', '$2y$12$846970c872d400676bf67uaf0UoLMExyZVeQ7o89ImOdLHz/rgW5u', 'admin', '0', 'หญิง', '20170516214851.jpg');
INSERT INTO `t_employee` VALUES ('7', 'emp07', 'TTT', 'TT', '1111111111', '0000-00-00', '1231223123123', '$2y$12$846970c872d400676bf67uaf0UoLMExyZVeQ7o89ImOdLHz/rgW5u', 'user', '0', 'ชาย', '20170613205606.png');
INSERT INTO `t_employee` VALUES ('8', 'emp08', 'DSA', 'SDADAS', '1111111111', '0000-00-00', '1212121212121', '$2y$12$846970c872d400676bf67uaf0UoLMExyZVeQ7o89ImOdLHz/rgW5u', 'user', '0', 'ชาย', '20170613205638.png');
INSERT INTO `t_employee` VALUES ('9', 'emp09', 'Emp_Test', 'กรุงเทพฯ', '0846776905', '1994-09-28', '1213123123132', '$2y$12$846970c872d400676bf67uTlf12XWiaRyzjAoAnC93NVDd1M6ikNe', 'user', '1', 'หญิง', '20170614004527.png');
INSERT INTO `t_employee` VALUES ('10', 'emp10', 'dsa', 'dsadas', '1111111111', '1994-11-30', '1231321312312', '$2y$12$846970c872d400676bf67uaf0UoLMExyZVeQ7o89ImOdLHz/rgW5u', 'user', '0', 'หญิง', '');
INSERT INTO `t_employee` VALUES ('11', 'emp11', 'dsadsa', 'qqq', '1111111111', '2017-03-15', '3213234445566', '$2y$12$846970c872d400676bf67uaf0UoLMExyZVeQ7o89ImOdLHz/rgW5u', 'user', '0', 'ชาย', '20170614004731.png');
INSERT INTO `t_employee` VALUES ('12', 'emp12', 'dsa', '321', '1111111111', '0000-00-00', '1231414455661', '$2y$12$846970c872d400676bf67uaf0UoLMExyZVeQ7o89ImOdLHz/rgW5u', 'user', '0', 'ชาย', '20170614004804.png');
INSERT INTO `t_employee` VALUES ('13', 'emp13', 'Baselard', 'กรุงเทพฯ', '0886672589', '2014-06-03', '1564478993364', '$2y$12$846970c872d400676bf67uTlf12XWiaRyzjAoAnC93NVDd1M6ikNe', 'user', '0', 'หญิง', '20170720135530.jpg');
INSERT INTO `t_employee` VALUES ('14', 'emp14', 'อรรณพ แดงสี', 'ช่องนนทรี กรุงเทพฯ', '0886789776', '1995-03-20', '1547896369996', '$2y$12$846970c872d400676bf67uTlf12XWiaRyzjAoAnC93NVDd1M6ikNe', 'user', '0', 'ชาย', '20171005145712.jpg');
INSERT INTO `t_employee` VALUES ('15', 'emp15', 'ขวัญชัย พงษ์ประเสริฐ์', 'กรุงเทพฯ', '0846787878', '1990-03-16', '1103701510124', '$2y$12$846970c872d400676bf67uTlf12XWiaRyzjAoAnC93NVDd1M6ikNe', 'user', '0', 'ชาย', '');
INSERT INTO `t_employee` VALUES ('16', 'emp16', 'test_16', 'dsadsaxczsca', '0846776905', '2017-08-29', '1212', '$2y$12$846970c872d400676bf67uTlf12XWiaRyzjAoAnC93NVDd1M6ikNe', 'user', '0', 'หญิง', '');
INSERT INTO `t_employee` VALUES ('17', 'emp17', 'ทวีทอง วิวัฒนขจรสุขS', 'กรุงเทพฯ', '0846776905', '2017-08-28', '1103701510138', '$2y$12$846970c872d400676bf67uTlf12XWiaRyzjAoAnC93NVDd1M6ikNe', 'user', '0', 'ชาย', '');

-- ----------------------------
-- Table structure for t_group_product
-- ----------------------------
DROP TABLE IF EXISTS `t_group_product`;
CREATE TABLE `t_group_product` (
  `G_Number` int(10) NOT NULL AUTO_INCREMENT,
  `G_ID` char(50) NOT NULL,
  `G_Name` varchar(100) NOT NULL,
  `G_Status` char(5) NOT NULL,
  PRIMARY KEY (`G_Number`,`G_ID`),
  UNIQUE KEY `G_ID` (`G_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_group_product
-- ----------------------------
INSERT INTO `t_group_product` VALUES ('1', 'G01', 'CPU', '1');
INSERT INTO `t_group_product` VALUES ('2', 'G02', 'Mainboard', '1');
INSERT INTO `t_group_product` VALUES ('3', 'G03', 'Ram-PC', '1');
INSERT INTO `t_group_product` VALUES ('4', 'G04', 'GraphicsCard', '1');
INSERT INTO `t_group_product` VALUES ('5', 'G05', 'PowerSupply', '1');
INSERT INTO `t_group_product` VALUES ('6', 'G06', 'Storage Devices', '1');
INSERT INTO `t_group_product` VALUES ('7', 'G07', 'OpticalDrive', '1');
INSERT INTO `t_group_product` VALUES ('8', 'G08', 'Computer Case', '1');
INSERT INTO `t_group_product` VALUES ('9', 'G09', 'Keyboard(NB)', '1');
INSERT INTO `t_group_product` VALUES ('10', 'G10', 'Monitor(NB)', '1');
INSERT INTO `t_group_product` VALUES ('11', 'G11', 'Battery(NB)', '1');
INSERT INTO `t_group_product` VALUES ('12', 'G12', 'Adapter(NB)', '0');
INSERT INTO `t_group_product` VALUES ('43', 'G43', 'TS2', '0');
INSERT INTO `t_group_product` VALUES ('45', 'G45', 'TS4', '0');
INSERT INTO `t_group_product` VALUES ('46', 'G46', 'TEST_1', '1');
INSERT INTO `t_group_product` VALUES ('47', 'G47', 'TEST_main', '1');

-- ----------------------------
-- Table structure for t_import_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_import_detail`;
CREATE TABLE `t_import_detail` (
  `Number` int(11) NOT NULL AUTO_INCREMENT,
  `Import_ID` char(50) NOT NULL,
  `Date_Import` date NOT NULL,
  `Emp_ID` char(50) NOT NULL,
  `Ref_Import_ID` char(50) NOT NULL,
  `Dealer_ID` char(50) NOT NULL,
  `Import_Type` char(10) NOT NULL,
  PRIMARY KEY (`Number`,`Import_ID`),
  UNIQUE KEY `Import_ID` (`Import_ID`) USING BTREE,
  KEY `Dealer_ID` (`Dealer_ID`),
  CONSTRAINT `t_import_detail_ibfk_1` FOREIGN KEY (`Dealer_ID`) REFERENCES `t_dealer` (`Dealer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_import_detail
-- ----------------------------
INSERT INTO `t_import_detail` VALUES ('1', 'Import_id_20170720_1', '2017-07-20', 'emp01', 'KGRZ0156', 'dealer_01', 'sell');
INSERT INTO `t_import_detail` VALUES ('9', 'Import_id_20170724_1', '2017-07-24', 'emp01', '6696Z', 'dealer_01', 'sell');
INSERT INTO `t_import_detail` VALUES ('10', 'Import_id_20170727_1', '2017-07-27', 'emp01', 'KGC02', 'dealer_08', 'sell');
INSERT INTO `t_import_detail` VALUES ('11', 'Import_id_20170727_2', '2017-07-27', 'emp01', '650221', 'dealer_12', 'sell');
INSERT INTO `t_import_detail` VALUES ('15', 'Import_20170803_NO_15', '2017-08-03', 'emp01', 'raw', 'dealer_09', 'sell');
INSERT INTO `t_import_detail` VALUES ('16', 'Import_20170803_NO_16', '2017-08-03', 'emp01', 'qase', 'dealer_01', 'sell');
INSERT INTO `t_import_detail` VALUES ('18', 'Import_20170807_NO_18', '2017-08-07', 'emp01', 'dsa1', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('19', 'Import_20170807_NO_19', '2017-08-07', 'emp01', 'rgz23', 'dealer_08', 'sell');
INSERT INTO `t_import_detail` VALUES ('20', 'Import_20170807_NO_20', '2017-08-07', 'emp01', 'dsaq', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('21', 'Import_20170808_NO_21', '2017-08-08', 'emp01', 'dwer', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('22', 'Import_20170815_NO_22', '2017-08-15', 'emp01', 'DSERT', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('23', 'Import_20170822_NO_23', '2017-08-22', 'emp01', 'KKOI23', 'dealer_08', 'sell');
INSERT INTO `t_import_detail` VALUES ('24', 'Import_20170824_NO_24', '2017-08-24', 'emp01', 'esweq', 'dealer_01', 'sell');
INSERT INTO `t_import_detail` VALUES ('25', 'Import_20170824_NO_25', '2017-08-24', 'emp01', 'dweer', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('26', 'Import_20170824_NO_26', '2017-08-24', 'emp01', 'ds', 'dealer_09', 'sell');
INSERT INTO `t_import_detail` VALUES ('27', 'Import_20170826_NO_27', '2017-08-26', 'emp01', 'hjr2', 'dealer_01', 'sell');
INSERT INTO `t_import_detail` VALUES ('28', 'Import_20170826_NO_28', '2017-08-26', 'emp09', '55op', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('29', 'Import_20170827_NO_29', '2017-08-27', 'emp01', 'KLS223WEE4', 'dealer_01', 'sell');
INSERT INTO `t_import_detail` VALUES ('31', 'Import_20170913_NO_31', '2017-09-13', 'emp01', 'KSERZ882', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('32', 'Import_20171003_NO_32', '2017-10-03', 'emp01', 'KGR758', 'dealer_01', 'sell');
INSERT INTO `t_import_detail` VALUES ('33', 'Import_20171004_NO_33', '2017-10-04', 'emp01', 'KGRS88', 'dealer_01', 'sell');
INSERT INTO `t_import_detail` VALUES ('35', 'Import_20171005_NO_35', '2017-10-05', 'emp01', 'Claim_NO_0011', 'dealer_01', 're_sell');
INSERT INTO `t_import_detail` VALUES ('36', 'Import_20171005_NO_36', '2017-10-05', 'emp01', 'Claim_NO_0020', 'dealer_01', 're_sell');
INSERT INTO `t_import_detail` VALUES ('37', 'Import_20171005_NO_37', '2017-10-05', 'emp01', 'KOOILOW', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('38', 'Import_20171005_NO_38', '2017-10-05', 'emp01', 'Claim_NO_0030', 'dealer_01', 're_sell');
INSERT INTO `t_import_detail` VALUES ('39', 'Import_20171007_NO_39', '2017-10-07', 'emp01', '5454545', 'dealer_01', 'sell');
INSERT INTO `t_import_detail` VALUES ('40', 'Import_20171007_NO_40', '2017-10-07', 'emp01', 'Claim_NO_0034', 'dealer_01', 're_sell');
INSERT INTO `t_import_detail` VALUES ('41', 'Import_20171008_NO_41', '2017-10-08', 'emp01', 'aaaaaazzz', 'dealer_01', 'sell');
INSERT INTO `t_import_detail` VALUES ('42', 'Import_20171008_NO_42', '2017-10-08', 'emp01', 'dsadsacxz', 'dealer_01', 'sell');
INSERT INTO `t_import_detail` VALUES ('43', 'Import_20171008_NO_43', '2017-10-08', 'emp01', 'dsaa', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('44', 'Import_20171008_NO_44', '2017-10-08', 'emp01', 'dsadsazz', 'dealer_01', 'sell');
INSERT INTO `t_import_detail` VALUES ('45', 'Import_20171008_NO_45', '2017-10-08', 'emp01', 'dsadsacxz', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('46', 'Import_20171008_NO_46', '2017-10-08', 'emp01', 'dsacxzz', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('47', 'Import_20171008_NO_47', '2017-10-08', 'emp01', 'dxxxcvbbnn', 'dealer_08', 'sell');
INSERT INTO `t_import_detail` VALUES ('48', 'Import_20171008_NO_48', '2017-10-08', 'emp01', 'dsweaazxcvbgf', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('49', 'Import_20171008_NO_49', '2017-10-08', 'emp01', 'dsadzxczxvbvvdfd', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('50', 'Import_20171008_NO_50', '2017-10-08', 'emp01', 'DSACXZAQWEDFSA', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('51', 'IMP1710-NO-00051', '2017-10-08', 'emp01', 'DSACXZSERREFW', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('52', 'IMP1710-NO-00052', '2017-10-09', 'emp01', 'DSACXZAWDSA', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('53', 'IMP1710-NO-00053', '2017-10-09', 'emp01', 'DSACX535789', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('54', 'IMP1710-NO-00054', '2017-10-09', 'emp01', 'DSACXZAWQERT', 'dealer_06', 'sell');
INSERT INTO `t_import_detail` VALUES ('65', 'IMP1710-NO-00065', '2017-10-09', 'emp01', 'Claim_NO_0021', 'dealer_06', 're_sell');
INSERT INTO `t_import_detail` VALUES ('66', 'IMP1710-NO-00066', '2017-10-09', 'emp01', 'Claim_NO_0004', 'dealer_01', 're_sell');
INSERT INTO `t_import_detail` VALUES ('67', 'IMP1710-NO-00067', '2017-10-09', 'emp01', 'Claim_NO_0018', 'dealer_01', 're_sell');
INSERT INTO `t_import_detail` VALUES ('68', 'IMP1710-NO-00068', '2017-10-09', 'emp01', 'DCXXXZVVV', 'dealer_06', 'sell');

-- ----------------------------
-- Table structure for t_logfile
-- ----------------------------
DROP TABLE IF EXISTS `t_logfile`;
CREATE TABLE `t_logfile` (
  `L_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Emp_ID` varchar(255) NOT NULL,
  `Emp_Type` varchar(50) NOT NULL,
  `L_Date` date NOT NULL,
  `L_Time` varchar(255) NOT NULL,
  `L_Event` varchar(50) NOT NULL,
  `Session_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`L_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=952 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_logfile
-- ----------------------------
INSERT INTO `t_logfile` VALUES ('1', 'Emp01', 'admin', '2017-03-06', '00:05', 'login', '055tsr702d7vpl8ai7s4bq5ni4');
INSERT INTO `t_logfile` VALUES ('2', 'Emp01', 'admin', '2017-03-06', '06:01', 'login', '54racqiep93mhrfqi2e1e9fr35');
INSERT INTO `t_logfile` VALUES ('3', 'Emp01', 'admin', '2017-03-06', '06:06', 'login', '54racqiep93mhrfqi2e1e9fr35');
INSERT INTO `t_logfile` VALUES ('4', 'Emp01', 'admin', '2017-03-06', '06:13', 'login', '54racqiep93mhrfqi2e1e9fr35');
INSERT INTO `t_logfile` VALUES ('5', 'Emp01', 'admin', '2017-03-06', '06:32', 'login', '54racqiep93mhrfqi2e1e9fr35');
INSERT INTO `t_logfile` VALUES ('6', 'Emp02', 'user', '2017-03-06', '06:33', 'login', '54racqiep93mhrfqi2e1e9fr35');
INSERT INTO `t_logfile` VALUES ('7', 'Emp01', 'admin', '2017-03-06', '06:35', 'login', '54racqiep93mhrfqi2e1e9fr35');
INSERT INTO `t_logfile` VALUES ('8', 'Emp01', 'admin', '2017-03-06', '06:47', 'login', '54racqiep93mhrfqi2e1e9fr35');
INSERT INTO `t_logfile` VALUES ('9', 'Emp01', 'admin', '2017-03-06', '06:48', 'login', '54racqiep93mhrfqi2e1e9fr35');
INSERT INTO `t_logfile` VALUES ('10', 'Emp01', 'admin', '2017-03-06', '06:49', 'login', '54racqiep93mhrfqi2e1e9fr35');
INSERT INTO `t_logfile` VALUES ('11', 'Emp01', 'admin', '2017-03-06', '18:17', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('12', 'Emp02', 'user', '2017-03-06', '20:13', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('13', 'Emp01', 'admin', '2017-03-06', '20:14', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('14', 'Emp01', 'admin', '2017-03-06', '20:15', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('15', 'Emp01', 'admin', '2017-03-06', '20:18', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('16', 'Emp01', 'admin', '2017-03-06', '20:20', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('17', 'Emp01', 'admin', '2017-03-06', '20:59', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('18', 'Emp02', 'user', '2017-03-06', '21:03', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('19', 'Emp02', 'user', '2017-03-06', '21:04', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('20', 'Emp01', 'admin', '2017-03-06', '21:04', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('21', 'Emp01', 'admin', '2017-03-06', '21:07', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('22', 'Emp01', 'admin', '2017-03-06', '21:15', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('23', 'Emp02', 'user', '2017-03-06', '21:15', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('24', 'Emp01', 'admin', '2017-03-06', '21:17', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('25', 'Emp02', 'user', '2017-03-06', '21:18', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('26', 'Emp02', 'user', '2017-03-06', '21:18', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('27', 'Emp02', 'user', '2017-03-06', '21:19', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('28', 'Emp01', 'admin', '2017-03-06', '21:47', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('29', 'Emp02', 'user', '2017-03-06', '21:57', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('30', 'Emp02', 'user', '2017-03-06', '21:59', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('31', 'Emp01', 'admin', '2017-03-06', '22:43', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('32', 'Emp02', 'user', '2017-03-06', '22:44', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('33', 'Emp02', 'user', '2017-03-06', '22:45', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('34', 'Emp02', 'user', '2017-03-06', '22:47', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('35', 'Emp02', 'user', '2017-03-06', '22:47', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('36', 'Emp01', 'admin', '2017-03-06', '22:51', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('37', 'Emp02', 'user', '2017-03-06', '22:51', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('38', 'Emp01', 'admin', '2017-03-06', '22:52', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('39', 'Emp02', 'user', '2017-03-06', '22:52', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('40', 'Emp01', 'admin', '2017-03-06', '22:53', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('41', 'Emp02', 'user', '2017-03-06', '22:53', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('42', 'Emp01', 'admin', '2017-03-06', '22:54', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('43', 'Emp01', 'admin', '2017-03-06', '22:56', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('44', 'Emp01', 'admin', '2017-03-07', '00:10', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('45', 'Emp01', 'admin', '2017-03-07', '02:12', 'login', '9snemlaeaffarsa5gqbh8sanv6');
INSERT INTO `t_logfile` VALUES ('46', 'Emp01', 'admin', '2017-03-07', '03:04', 'login', '14i3upa564q6mjh0dldfh6m620');
INSERT INTO `t_logfile` VALUES ('47', 'Emp01', 'admin', '2017-03-07', '17:47', 'login', '61kmhbibddau3m9sebtvu5fgi3');
INSERT INTO `t_logfile` VALUES ('48', 'Emp01', 'admin', '2017-03-08', '09:21', 'login', '06i3lv966b9dof31itb60ifso7');
INSERT INTO `t_logfile` VALUES ('49', 'Emp01', 'admin', '2017-03-08', '20:44', 'login', 'srb1h15b26a9kbmrdbgh9e2785');
INSERT INTO `t_logfile` VALUES ('50', 'Emp01', 'admin', '2017-03-09', '20:03', 'login', 'lapc9labj5jh8bfdssrsrik376');
INSERT INTO `t_logfile` VALUES ('51', 'Emp01', 'admin', '2017-03-09', '23:33', 'login', 'lapc9labj5jh8bfdssrsrik376');
INSERT INTO `t_logfile` VALUES ('52', 'Emp01', 'admin', '2017-03-10', '22:43', 'login', '1n7is28t6qojrakr4v1ku16jd5');
INSERT INTO `t_logfile` VALUES ('53', 'Emp01', 'admin', '2017-03-11', '09:43', 'login', 'ej7a7q54rltdrj97c7m7fod2o1');
INSERT INTO `t_logfile` VALUES ('54', 'Emp01', 'admin', '2017-03-11', '22:12', 'login', 'ej7a7q54rltdrj97c7m7fod2o1');
INSERT INTO `t_logfile` VALUES ('55', 'Emp01', 'admin', '2017-03-20', '23:12', 'login', '0atbjj2b7hpsv52hhgp1ii61a5');
INSERT INTO `t_logfile` VALUES ('56', 'Emp01', 'admin', '2017-03-26', '16:18', 'login', '7fhhgcd6pdeeup3hhbemol6qd5');
INSERT INTO `t_logfile` VALUES ('57', 'Emp01', 'admin', '2017-03-27', '12:03', 'login', 'tc1r80h0681v9l6a2ficgp3fc7');
INSERT INTO `t_logfile` VALUES ('58', 'Emp01', 'admin', '2017-03-27', '13:12', 'login', 'tc1r80h0681v9l6a2ficgp3fc7');
INSERT INTO `t_logfile` VALUES ('59', 'Emp04', 'admin', '2017-03-27', '20:55', 'login', 'tc1r80h0681v9l6a2ficgp3fc7');
INSERT INTO `t_logfile` VALUES ('60', 'Emp03', 'admin', '2017-03-27', '20:55', 'login', 'tc1r80h0681v9l6a2ficgp3fc7');
INSERT INTO `t_logfile` VALUES ('61', 'Emp01', 'admin', '2017-03-27', '20:55', 'login', 'tc1r80h0681v9l6a2ficgp3fc7');
INSERT INTO `t_logfile` VALUES ('62', 'Emp04', 'admin', '2017-03-27', '20:56', 'login', 'tc1r80h0681v9l6a2ficgp3fc7');
INSERT INTO `t_logfile` VALUES ('63', 'Emp04', 'admin', '2017-03-27', '20:56', 'login', 'tc1r80h0681v9l6a2ficgp3fc7');
INSERT INTO `t_logfile` VALUES ('64', 'Emp04', 'admin', '2017-03-27', '21:00', 'login', 'kgmkpasi0mosjeii5m3jhkch94');
INSERT INTO `t_logfile` VALUES ('65', 'Emp02', 'user', '2017-03-27', '21:00', 'login', 'kgmkpasi0mosjeii5m3jhkch94');
INSERT INTO `t_logfile` VALUES ('66', 'Emp04', 'admin', '2017-03-27', '21:06', 'login', 'kgmkpasi0mosjeii5m3jhkch94');
INSERT INTO `t_logfile` VALUES ('67', 'Emp04', 'admin', '2017-03-27', '21:07', 'login', 'tc1r80h0681v9l6a2ficgp3fc7');
INSERT INTO `t_logfile` VALUES ('68', 'Emp04', 'admin', '2017-03-27', '21:18', 'login', 'tc1r80h0681v9l6a2ficgp3fc7');
INSERT INTO `t_logfile` VALUES ('69', 'Emp04', 'admin', '2017-03-27', '21:22', 'login', 'tc1r80h0681v9l6a2ficgp3fc7');
INSERT INTO `t_logfile` VALUES ('70', 'Emp01', 'admin', '2017-04-05', '02:44', 'login', '58lpimkfv0ff18nfkgvmm2ai87');
INSERT INTO `t_logfile` VALUES ('71', 'Emp04', 'admin', '2017-04-05', '02:45', 'login', '58lpimkfv0ff18nfkgvmm2ai87');
INSERT INTO `t_logfile` VALUES ('72', 'Emp01', 'admin', '2017-04-24', '03:10', 'login', 'lur8egfc80q79gqgv7f5jggm71');
INSERT INTO `t_logfile` VALUES ('73', 'Emp01', 'admin', '2017-04-24', '10:35', 'login', 'umu4ic4k2u5clp9ng8sl49o9p0');
INSERT INTO `t_logfile` VALUES ('74', 'Emp01', 'admin', '2017-04-24', '23:18', 'login', 'umu4ic4k2u5clp9ng8sl49o9p0');
INSERT INTO `t_logfile` VALUES ('75', 'Emp01', 'admin', '2017-05-07', '16:57', 'login', 'boio589si3jmj619gls45e1i13');
INSERT INTO `t_logfile` VALUES ('76', 'Emp01', 'admin', '2017-05-07', '16:59', 'login', 'si1bkjbfom0rjt9pl3c3oog3s0');
INSERT INTO `t_logfile` VALUES ('77', 'Emp01', 'admin', '2017-05-08', '11:50', 'login', 'e9aotqiouupqqiimb1epi7khk3');
INSERT INTO `t_logfile` VALUES ('78', 'Emp01', 'admin', '2017-05-08', '11:56', 'login', 'i0kd0npe4g8q5i3oac35tsig82');
INSERT INTO `t_logfile` VALUES ('79', 'Emp01', 'admin', '2017-05-08', '11:57', 'login', '7739tjhgcfn5g5p1252e39p0d3');
INSERT INTO `t_logfile` VALUES ('80', 'Emp01', 'admin', '2017-05-08', '15:21', 'login', '5ph9ib5vfhoaqsl832smenell0');
INSERT INTO `t_logfile` VALUES ('81', 'Emp01', 'admin', '2017-05-08', '16:33', 'login', '5ph9ib5vfhoaqsl832smenell0');
INSERT INTO `t_logfile` VALUES ('82', 'Emp05', 'user', '2017-05-08', '19:48', 'login', '5ph9ib5vfhoaqsl832smenell0');
INSERT INTO `t_logfile` VALUES ('83', 'Emp01', 'admin', '2017-05-08', '19:48', 'login', '5ph9ib5vfhoaqsl832smenell0');
INSERT INTO `t_logfile` VALUES ('84', 'Emp01', 'admin', '2017-05-09', '20:07', 'login', 'emh8cqvl4njp8qk0fle37vu987');
INSERT INTO `t_logfile` VALUES ('85', 'Emp01', 'admin', '2017-05-09', '22:45', 'login', 'emh8cqvl4njp8qk0fle37vu987');
INSERT INTO `t_logfile` VALUES ('86', 'Emp01', 'admin', '2017-05-14', '01:48', 'login', 'fvo526qf0lkt02e4u37errj3i0');
INSERT INTO `t_logfile` VALUES ('87', 'Emp01', 'admin', '2017-05-15', '20:41', 'login', 'p7mvuf6ai9c9k39a75pdue14p7');
INSERT INTO `t_logfile` VALUES ('88', 'Emp01', 'admin', '2017-05-15', '22:12', 'login', 'p7mvuf6ai9c9k39a75pdue14p7');
INSERT INTO `t_logfile` VALUES ('89', 'Emp01', 'admin', '2017-05-15', '22:18', 'login', 'p7mvuf6ai9c9k39a75pdue14p7');
INSERT INTO `t_logfile` VALUES ('90', 'Emp01', 'admin', '2017-05-16', '21:16', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('91', 'Emp01', 'admin', '2017-05-16', '21:30', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('92', 'Emp05', 'user', '2017-05-16', '21:33', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('93', 'Emp02', 'user', '2017-05-16', '21:33', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('94', 'Emp02', 'user', '2017-05-16', '21:33', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('95', 'Emp02', 'user', '2017-05-16', '21:33', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('96', 'Emp03', 'admin', '2017-05-16', '21:34', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('97', 'Emp01', 'admin', '2017-05-16', '21:35', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('98', 'Emp02', 'user', '2017-05-16', '21:41', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('99', 'Emp02', 'user', '2017-05-16', '21:41', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('100', 'Emp02', 'user', '2017-05-16', '21:42', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('101', 'Emp02', 'user', '2017-05-16', '21:43', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('102', 'Emp01', 'admin', '2017-05-16', '21:44', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('103', 'Emp02', 'user', '2017-05-16', '21:44', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('104', 'Emp05', 'user', '2017-05-16', '21:45', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('105', 'Emp01', 'admin', '2017-05-16', '21:48', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('106', 'Emp06', 'admin', '2017-05-16', '21:49', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('107', 'Emp01', 'admin', '2017-05-16', '21:49', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('108', 'Emp01', 'admin', '2017-05-16', '21:56', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('109', 'Emp01', 'admin', '2017-05-16', '21:57', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('110', 'Emp01', 'admin', '2017-05-16', '21:57', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('111', 'Emp01', 'admin', '2017-05-16', '21:57', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('112', 'Emp02', 'user', '2017-05-16', '22:02', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('113', 'Emp01', 'admin', '2017-05-16', '22:02', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('114', 'Emp01', 'admin', '2017-05-16', '22:04', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('115', 'Emp01', 'admin', '2017-05-16', '22:05', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('116', 'Emp01', 'admin', '2017-05-16', '22:11', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('117', 'Emp02', 'user', '2017-05-16', '22:11', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('118', 'Emp01', 'admin', '2017-05-16', '22:12', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('119', 'Emp01', 'admin', '2017-05-16', '22:12', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('120', 'Emp02', 'user', '2017-05-16', '22:12', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('121', 'Emp01', 'admin', '2017-05-16', '22:13', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('122', 'Emp01', 'admin', '2017-05-16', '22:14', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('123', 'Emp02', 'user', '2017-05-16', '22:14', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('124', 'Emp01', 'admin', '2017-05-16', '22:16', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('125', 'Emp02', 'user', '2017-05-16', '22:16', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('126', 'Emp01', 'admin', '2017-05-16', '22:21', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('127', 'Emp02', 'user', '2017-05-16', '22:21', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('128', 'Emp01', 'admin', '2017-05-16', '22:35', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('129', 'Emp02', 'user', '2017-05-16', '22:35', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('130', 'Emp02', 'user', '2017-05-16', '22:36', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('131', 'Emp02', 'user', '2017-05-16', '22:36', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('132', 'Emp02', 'user', '2017-05-16', '22:36', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('133', 'Emp01', 'admin', '2017-05-16', '22:36', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('134', 'Emp02', 'user', '2017-05-16', '22:37', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('135', 'Emp02', 'user', '2017-05-16', '22:38', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('136', 'Emp02', 'user', '2017-05-16', '22:38', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('137', 'Emp01', 'admin', '2017-05-16', '22:40', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('138', 'Emp02', 'user', '2017-05-16', '22:40', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('139', 'Emp02', 'user', '2017-05-16', '22:46', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('140', 'Emp02', 'user', '2017-05-16', '22:47', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('141', 'Emp02', 'user', '2017-05-16', '22:47', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('142', 'Emp01', 'admin', '2017-05-16', '22:56', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('143', 'Emp01', 'admin', '2017-05-16', '23:15', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('144', 'Emp01', 'admin', '2017-05-16', '23:15', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('145', 'emp01', 'admin', '2017-05-16', '23:32', 'logout', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('146', 'Emp01', 'admin', '2017-05-16', '23:34', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('147', 'emp01', 'admin', '2017-05-17', '00:00', 'logout', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('148', 'Emp01', 'admin', '2017-05-17', '00:01', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('149', 'emp01', 'admin', '2017-05-17', '00:01', 'logout', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('150', 'Emp01', 'admin', '2017-05-17', '00:01', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('151', 'emp01', 'admin', '2017-05-17', '00:01', 'logout', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('152', 'Emp02', 'user', '2017-05-17', '00:01', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('153', 'emp02', 'user', '2017-05-17', '00:01', 'logout', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('154', 'Emp01', 'admin', '2017-05-17', '00:02', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('155', 'emp01', 'admin', '2017-05-17', '03:07', 'logout', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('156', 'Emp01', 'admin', '2017-05-17', '03:07', 'login', 'vkv0fqgp9l0ege6c24s60uhi45');
INSERT INTO `t_logfile` VALUES ('157', 'Emp01', 'admin', '2017-05-17', '20:40', 'login', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('158', 'emp01', 'admin', '2017-05-17', '21:41', 'logout', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('159', 'Emp01', 'admin', '2017-05-17', '21:41', 'login', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('160', 'emp01', 'admin', '2017-05-17', '21:41', 'logout', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('161', 'Emp02', 'user', '2017-05-17', '21:41', 'login', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('162', 'emp02', 'user', '2017-05-17', '21:42', 'logout', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('163', 'Emp01', 'admin', '2017-05-17', '21:42', 'login', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('164', 'emp01', 'admin', '2017-05-17', '21:45', 'logout', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('165', 'Emp01', 'admin', '2017-05-17', '21:45', 'login', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('166', 'emp01', 'admin', '2017-05-17', '21:45', 'logout', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('167', 'Emp02', 'user', '2017-05-17', '21:45', 'login', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('168', 'emp02', 'user', '2017-05-17', '21:46', 'logout', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('169', 'Emp01', 'admin', '2017-05-17', '21:46', 'login', 'bdc0gddsks640i10bovnukmn76');
INSERT INTO `t_logfile` VALUES ('170', 'Emp01', 'admin', '2017-05-21', '19:40', 'login', '10q7ohnq05cl24uvm4td8fnpq2');
INSERT INTO `t_logfile` VALUES ('171', 'emp01', 'admin', '2017-05-21', '22:01', 'logout', '10q7ohnq05cl24uvm4td8fnpq2');
INSERT INTO `t_logfile` VALUES ('172', 'Emp01', 'admin', '2017-05-21', '22:02', 'login', '10q7ohnq05cl24uvm4td8fnpq2');
INSERT INTO `t_logfile` VALUES ('173', 'emp01', 'admin', '2017-05-22', '02:05', 'logout', '10q7ohnq05cl24uvm4td8fnpq2');
INSERT INTO `t_logfile` VALUES ('174', 'Emp01', 'admin', '2017-05-22', '02:05', 'login', '10q7ohnq05cl24uvm4td8fnpq2');
INSERT INTO `t_logfile` VALUES ('175', 'emp01', 'admin', '2017-05-22', '02:10', 'logout', '10q7ohnq05cl24uvm4td8fnpq2');
INSERT INTO `t_logfile` VALUES ('176', 'Emp01', 'admin', '2017-05-22', '02:10', 'login', '10q7ohnq05cl24uvm4td8fnpq2');
INSERT INTO `t_logfile` VALUES ('177', 'Emp01', 'admin', '2017-05-24', '14:22', 'login', 'f8h8tcr0jsmolc4chfkph97vj4');
INSERT INTO `t_logfile` VALUES ('178', 'emp01', 'admin', '2017-05-24', '19:32', 'logout', 'f8h8tcr0jsmolc4chfkph97vj4');
INSERT INTO `t_logfile` VALUES ('179', 'Emp02', 'user', '2017-05-24', '19:32', 'login', 'f8h8tcr0jsmolc4chfkph97vj4');
INSERT INTO `t_logfile` VALUES ('180', 'emp02', 'user', '2017-05-24', '19:32', 'logout', 'f8h8tcr0jsmolc4chfkph97vj4');
INSERT INTO `t_logfile` VALUES ('181', 'Emp01', 'admin', '2017-05-24', '19:32', 'login', 'f8h8tcr0jsmolc4chfkph97vj4');
INSERT INTO `t_logfile` VALUES ('182', 'Emp01', 'admin', '2017-05-25', '13:49', 'login', 'b3lnpkht4mmc15rgdb914ikg74');
INSERT INTO `t_logfile` VALUES ('183', 'emp01', 'admin', '2017-05-25', '14:25', 'logout', 'b3lnpkht4mmc15rgdb914ikg74');
INSERT INTO `t_logfile` VALUES ('184', 'Emp01', 'admin', '2017-05-25', '14:25', 'login', 'b3lnpkht4mmc15rgdb914ikg74');
INSERT INTO `t_logfile` VALUES ('185', 'Emp01', 'admin', '2017-05-25', '15:07', 'login', 'b3lnpkht4mmc15rgdb914ikg74');
INSERT INTO `t_logfile` VALUES ('186', 'emp01', 'admin', '2017-05-25', '15:08', 'logout', 'b3lnpkht4mmc15rgdb914ikg74');
INSERT INTO `t_logfile` VALUES ('187', 'Emp01', 'admin', '2017-05-25', '15:35', 'login', 'b3lnpkht4mmc15rgdb914ikg74');
INSERT INTO `t_logfile` VALUES ('188', 'Emp01', 'admin', '2017-05-26', '07:44', 'login', '5ajuvcq64comfbu5fg2alts9m5');
INSERT INTO `t_logfile` VALUES ('189', 'Emp01', 'admin', '2017-05-27', '06:53', 'login', '24emm7chb1tu5a5aaaegs221b2');
INSERT INTO `t_logfile` VALUES ('190', 'Emp01', 'admin', '2017-05-27', '14:12', 'login', '538pa05bhr6989v7kjl60t2ng1');
INSERT INTO `t_logfile` VALUES ('191', 'Emp01', 'admin', '2017-05-28', '08:26', 'login', '7vqa09osm4c435445atpsi4gp7');
INSERT INTO `t_logfile` VALUES ('192', 'Emp01', 'admin', '2017-05-28', '17:05', 'login', '7vqa09osm4c435445atpsi4gp7');
INSERT INTO `t_logfile` VALUES ('193', 'Emp01', 'admin', '2017-05-29', '05:11', 'login', '36m96hvt9g09mph0tqicl61em3');
INSERT INTO `t_logfile` VALUES ('194', 'emp01', 'admin', '2017-05-29', '09:01', 'logout', '36m96hvt9g09mph0tqicl61em3');
INSERT INTO `t_logfile` VALUES ('195', 'Emp01', 'admin', '2017-05-29', '11:32', 'login', '8mk56enuf6agk3lfgtleqhv3h2');
INSERT INTO `t_logfile` VALUES ('196', 'Emp01', 'admin', '2017-05-30', '09:23', 'login', 'e706tsc7bbrse8vaeh64c50hq1');
INSERT INTO `t_logfile` VALUES ('197', 'Emp01', 'admin', '2017-05-31', '12:17', 'login', 'o44cvb0vfid849onar9ao80ju5');
INSERT INTO `t_logfile` VALUES ('198', 'Emp01', 'admin', '2017-06-02', '14:20', 'login', '6loutasn1su1dvp7a03fecq8p1');
INSERT INTO `t_logfile` VALUES ('199', 'Emp01', 'admin', '2017-06-03', '14:39', 'login', 'kj5rh1rc3kat2j7kvekdtnr5v4');
INSERT INTO `t_logfile` VALUES ('200', 'Emp01', 'admin', '2017-06-04', '12:27', 'login', '64v63kej70ukivt9m2k9a0ldq0');
INSERT INTO `t_logfile` VALUES ('201', 'Emp01', 'admin', '2017-06-05', '00:14', 'login', '64v63kej70ukivt9m2k9a0ldq0');
INSERT INTO `t_logfile` VALUES ('202', 'Emp01', 'admin', '2017-06-05', '13:49', 'login', '0brmi834pavrkkococrde8uth4');
INSERT INTO `t_logfile` VALUES ('203', 'emp01', 'admin', '2017-06-05', '22:09', 'logout', '0brmi834pavrkkococrde8uth4');
INSERT INTO `t_logfile` VALUES ('204', 'Emp01', 'admin', '2017-06-05', '22:11', 'login', '0brmi834pavrkkococrde8uth4');
INSERT INTO `t_logfile` VALUES ('205', 'Emp01', 'admin', '2017-06-06', '08:48', 'login', 'fcmrsh5n3ghvhslb65hpe33k25');
INSERT INTO `t_logfile` VALUES ('206', 'Emp01', 'admin', '2017-06-09', '14:09', 'login', '4lt5p3v7rib7vcdk60ibch2q61');
INSERT INTO `t_logfile` VALUES ('207', 'Emp01', 'admin', '2017-06-09', '22:04', 'login', 'e9hoiml0uuili31r9ftvgjkmt6');
INSERT INTO `t_logfile` VALUES ('208', 'Emp01', 'admin', '2017-06-10', '18:20', 'login', '95ofnneep77jdqjav2fbijga35');
INSERT INTO `t_logfile` VALUES ('209', 'Emp01', 'admin', '2017-06-11', '00:56', 'login', '95ofnneep77jdqjav2fbijga35');
INSERT INTO `t_logfile` VALUES ('210', 'Emp01', 'admin', '2017-06-11', '15:18', 'login', 'k8t5racb7h70sv8d3qsn5lhsp0');
INSERT INTO `t_logfile` VALUES ('211', 'Emp01', 'admin', '2017-06-12', '01:17', 'login', '8gfs9tk019a4oiqu69p946iem7');
INSERT INTO `t_logfile` VALUES ('212', 'Emp01', 'admin', '2017-06-13', '17:53', 'login', '1qmgdneq05oa6l8050cl4j8tj0');
INSERT INTO `t_logfile` VALUES ('213', 'emp01', 'admin', '2017-06-13', '20:35', 'logout', '1qmgdneq05oa6l8050cl4j8tj0');
INSERT INTO `t_logfile` VALUES ('214', 'Emp02', 'user', '2017-06-13', '20:35', 'login', '1qmgdneq05oa6l8050cl4j8tj0');
INSERT INTO `t_logfile` VALUES ('215', 'Emp01', 'admin', '2017-06-13', '20:36', 'login', '1qmgdneq05oa6l8050cl4j8tj0');
INSERT INTO `t_logfile` VALUES ('216', 'Emp01', 'admin', '2017-06-14', '00:41', 'login', '1qmgdneq05oa6l8050cl4j8tj0');
INSERT INTO `t_logfile` VALUES ('217', 'emp01', 'admin', '2017-06-14', '00:48', 'logout', '1qmgdneq05oa6l8050cl4j8tj0');
INSERT INTO `t_logfile` VALUES ('218', 'Emp12', 'user', '2017-06-14', '00:48', 'login', '1qmgdneq05oa6l8050cl4j8tj0');
INSERT INTO `t_logfile` VALUES ('219', 'emp12', 'user', '2017-06-14', '00:48', 'logout', '1qmgdneq05oa6l8050cl4j8tj0');
INSERT INTO `t_logfile` VALUES ('220', 'Emp01', 'admin', '2017-06-14', '00:48', 'login', '1qmgdneq05oa6l8050cl4j8tj0');
INSERT INTO `t_logfile` VALUES ('221', 'emp01', 'admin', '2017-06-14', '00:59', 'logout', '1qmgdneq05oa6l8050cl4j8tj0');
INSERT INTO `t_logfile` VALUES ('222', 'Emp01', 'admin', '2017-06-14', '11:34', 'login', '8q4ebf3pfcfr008d6rbs5mf2d0');
INSERT INTO `t_logfile` VALUES ('223', 'Emp01', 'admin', '2017-06-14', '12:05', 'login', 'o9e2bjansprbd4ulq3g9405vh3');
INSERT INTO `t_logfile` VALUES ('224', 'Emp01', 'admin', '2017-06-14', '20:57', 'login', '6ifj0prt3j3du99bsllqv2brl7');
INSERT INTO `t_logfile` VALUES ('225', 'Emp01', 'admin', '2017-06-15', '20:07', 'login', '2ok2vb1ao65ckmfb65fi307tk6');
INSERT INTO `t_logfile` VALUES ('226', 'Emp01', 'admin', '2017-06-15', '20:10', 'login', '3ka8t2clcmo7hssfp4a5sv0br7');
INSERT INTO `t_logfile` VALUES ('227', 'Emp01', 'admin', '2017-06-16', '09:10', 'login', '39ruge4c6ua0c8ba0t4dh7h2j1');
INSERT INTO `t_logfile` VALUES ('228', 'Emp01', 'admin', '2017-06-17', '18:34', 'login', 'm7kvnjc05q6468l123efcohfp5');
INSERT INTO `t_logfile` VALUES ('229', 'Emp01', 'admin', '2017-06-17', '19:26', 'login', 'm7kvnjc05q6468l123efcohfp5');
INSERT INTO `t_logfile` VALUES ('230', 'Emp01', 'admin', '2017-06-18', '18:49', 'login', 'r29kff88hhskf09apme0bj4hl3');
INSERT INTO `t_logfile` VALUES ('231', 'emp01', 'admin', '2017-06-18', '21:52', 'logout', 'r29kff88hhskf09apme0bj4hl3');
INSERT INTO `t_logfile` VALUES ('232', 'Emp01', 'admin', '2017-06-18', '21:52', 'login', 'r29kff88hhskf09apme0bj4hl3');
INSERT INTO `t_logfile` VALUES ('233', 'Emp01', 'admin', '2017-06-19', '14:17', 'login', '64503ukfg7tc739q8uqhb059m3');
INSERT INTO `t_logfile` VALUES ('234', 'Emp01', 'admin', '2017-06-19', '16:40', 'login', 'aukpnlefe8qlri374limguqjk1');
INSERT INTO `t_logfile` VALUES ('235', 'emp01', 'admin', '2017-06-19', '16:41', 'logout', 'aukpnlefe8qlri374limguqjk1');
INSERT INTO `t_logfile` VALUES ('236', 'emp01', 'admin', '2017-06-19', '16:42', 'logout', '64503ukfg7tc739q8uqhb059m3');
INSERT INTO `t_logfile` VALUES ('237', 'Emp01', 'admin', '2017-06-19', '16:43', 'login', 's16at7dolorkk08mk8u1j9nt97');
INSERT INTO `t_logfile` VALUES ('238', 'emp01', 'admin', '2017-06-19', '16:44', 'logout', 's16at7dolorkk08mk8u1j9nt97');
INSERT INTO `t_logfile` VALUES ('239', 'Emp01', 'admin', '2017-06-19', '16:44', 'login', 's16at7dolorkk08mk8u1j9nt97');
INSERT INTO `t_logfile` VALUES ('240', 'Emp01', 'admin', '2017-06-19', '16:45', 'login', '64503ukfg7tc739q8uqhb059m3');
INSERT INTO `t_logfile` VALUES ('241', 'emp01', 'admin', '2017-06-19', '16:45', 'logout', 's16at7dolorkk08mk8u1j9nt97');
INSERT INTO `t_logfile` VALUES ('242', 'emp01', 'admin', '2017-06-19', '16:45', 'logout', '64503ukfg7tc739q8uqhb059m3');
INSERT INTO `t_logfile` VALUES ('243', 'Emp01', 'admin', '2017-06-19', '16:47', 'login', '64503ukfg7tc739q8uqhb059m3');
INSERT INTO `t_logfile` VALUES ('244', 'Emp01', 'admin', '2017-06-19', '18:35', 'login', 'i1eo8e63lu4gi70dvm93eq8la1');
INSERT INTO `t_logfile` VALUES ('245', 'Emp01', 'admin', '2017-06-20', '18:06', 'login', 't0u1ttgs3ks972092kvb8rcvt0');
INSERT INTO `t_logfile` VALUES ('246', 'emp01', 'admin', '2017-06-20', '20:05', 'logout', 't0u1ttgs3ks972092kvb8rcvt0');
INSERT INTO `t_logfile` VALUES ('247', 'Emp01', 'admin', '2017-06-20', '20:06', 'login', 't43qk5jd69vmffniud6crvm1b7');
INSERT INTO `t_logfile` VALUES ('248', 'Emp01', 'admin', '2017-06-20', '20:11', 'login', '1qabqe152k2j7gjdnq2dludbp7');
INSERT INTO `t_logfile` VALUES ('249', 'Emp01', 'admin', '2017-06-21', '16:20', 'login', 'oc11j1cipphagrqv8b12ku6oj4');
INSERT INTO `t_logfile` VALUES ('250', 'emp01', 'admin', '2017-06-22', '03:12', 'logout', 'oc11j1cipphagrqv8b12ku6oj4');
INSERT INTO `t_logfile` VALUES ('251', 'Emp01', 'admin', '2017-06-22', '16:32', 'login', 'mppef1fc70141lld8843oneeq7');
INSERT INTO `t_logfile` VALUES ('252', 'Emp01', 'admin', '2017-06-22', '18:09', 'login', '8jlvjqji0ualm64otgvap36150');
INSERT INTO `t_logfile` VALUES ('253', 'Emp01', 'admin', '2017-06-22', '18:25', 'login', 'cdfsjg3to16vh5mhhp3ibtl5r3');
INSERT INTO `t_logfile` VALUES ('254', 'Emp01', 'admin', '2017-06-23', '04:13', 'login', 'cdfsjg3to16vh5mhhp3ibtl5r3');
INSERT INTO `t_logfile` VALUES ('255', 'Emp01', 'admin', '2017-06-24', '19:44', 'login', 'rbnr23aler3c86s25h4e397v83');
INSERT INTO `t_logfile` VALUES ('256', 'Emp01', 'admin', '2017-06-25', '21:07', 'login', 'u4peg6a7f9al5mrk9ikbp653l4');
INSERT INTO `t_logfile` VALUES ('257', 'Emp01', 'admin', '2017-06-26', '03:48', 'login', 'quoj35focdfcqhs7mhsi050575');
INSERT INTO `t_logfile` VALUES ('258', 'Emp01', 'admin', '2017-06-26', '03:49', 'login', '34eo31anu759nj4d08562r1j81');
INSERT INTO `t_logfile` VALUES ('259', 'Emp01', 'admin', '2017-06-26', '21:44', 'login', 'd9580a7luhgemmn6alf7hdhgh3');
INSERT INTO `t_logfile` VALUES ('260', 'Emp01', 'admin', '2017-06-28', '02:59', 'login', 'p0l31a8u8fb7nlvohub5i7nis5');
INSERT INTO `t_logfile` VALUES ('261', 'Emp01', 'admin', '2017-06-29', '05:31', 'login', '0s0ihcroh91iafm97vpc3tsp95');
INSERT INTO `t_logfile` VALUES ('262', 'Emp01', 'admin', '2017-06-29', '11:18', 'login', '6b2011n7uufp5593lgsmkn6sp6');
INSERT INTO `t_logfile` VALUES ('263', 'Emp01', 'admin', '2017-06-29', '23:20', 'login', 'f1edel7k0jdubbjv89tpr4uie0');
INSERT INTO `t_logfile` VALUES ('264', 'Emp01', 'admin', '2017-07-02', '12:52', 'login', 'o2t02o4si59acr7ucfgpgau6t4');
INSERT INTO `t_logfile` VALUES ('265', 'Emp01', 'admin', '2017-07-03', '14:17', 'login', '39mgpsvmmri7r6159p1lhs96e2');
INSERT INTO `t_logfile` VALUES ('266', 'emp01', 'admin', '2017-07-03', '14:33', 'logout', '39mgpsvmmri7r6159p1lhs96e2');
INSERT INTO `t_logfile` VALUES ('267', 'Emp01', 'admin', '2017-07-03', '14:33', 'login', '39mgpsvmmri7r6159p1lhs96e2');
INSERT INTO `t_logfile` VALUES ('268', 'Emp01', 'admin', '2017-07-03', '19:38', 'login', '8jsov2rp7dqpc9gvhsptn7llq2');
INSERT INTO `t_logfile` VALUES ('269', 'Emp01', 'admin', '2017-07-04', '14:43', 'login', '1auunmel9dlafv4rj5j2h1e2d6');
INSERT INTO `t_logfile` VALUES ('270', 'Emp01', 'admin', '2017-07-05', '11:02', 'login', '9u8h8v3jsm7katvbc4gglv97a5');
INSERT INTO `t_logfile` VALUES ('271', 'Emp01', 'admin', '2017-07-06', '11:08', 'login', 'r6gbbo8gmhljc16gdbvufcmcp5');
INSERT INTO `t_logfile` VALUES ('272', 'emp01', 'admin', '2017-07-06', '18:39', 'logout', 'r6gbbo8gmhljc16gdbvufcmcp5');
INSERT INTO `t_logfile` VALUES ('273', 'Emp13', 'user', '2017-07-06', '18:40', 'login', 'r6gbbo8gmhljc16gdbvufcmcp5');
INSERT INTO `t_logfile` VALUES ('274', 'emp13', 'user', '2017-07-06', '18:40', 'logout', 'r6gbbo8gmhljc16gdbvufcmcp5');
INSERT INTO `t_logfile` VALUES ('275', 'Emp01', 'admin', '2017-07-06', '18:40', 'login', 'r6gbbo8gmhljc16gdbvufcmcp5');
INSERT INTO `t_logfile` VALUES ('276', 'emp01', 'admin', '2017-07-06', '23:29', 'logout', 'r6gbbo8gmhljc16gdbvufcmcp5');
INSERT INTO `t_logfile` VALUES ('277', 'Emp01', 'admin', '2017-07-06', '23:29', 'login', 'r6gbbo8gmhljc16gdbvufcmcp5');
INSERT INTO `t_logfile` VALUES ('278', 'emp01', 'admin', '2017-07-06', '23:50', 'logout', 'r6gbbo8gmhljc16gdbvufcmcp5');
INSERT INTO `t_logfile` VALUES ('279', 'Emp01', 'admin', '2017-07-06', '23:50', 'login', 'r6gbbo8gmhljc16gdbvufcmcp5');
INSERT INTO `t_logfile` VALUES ('280', 'emp01', 'admin', '2017-07-07', '12:59', 'login', 's51psgig7dfedpqs7f4vtutut5');
INSERT INTO `t_logfile` VALUES ('281', 'emp01', 'admin', '2017-07-08', '12:32', 'login', 'ablrhth8r7a8i9oirpc9nff4s1');
INSERT INTO `t_logfile` VALUES ('282', 'emp01', 'admin', '2017-07-08', '13:52', 'logout', 'ablrhth8r7a8i9oirpc9nff4s1');
INSERT INTO `t_logfile` VALUES ('283', 'emp01', 'admin', '2017-07-08', '13:52', 'login', 'ablrhth8r7a8i9oirpc9nff4s1');
INSERT INTO `t_logfile` VALUES ('284', 'emp01', 'admin', '2017-07-08', '13:55', 'login', 'r1kttbmlt2um4r6ecu43q3fgq5');
INSERT INTO `t_logfile` VALUES ('285', 'emp01', 'admin', '2017-07-08', '15:43', 'logout', 'r1kttbmlt2um4r6ecu43q3fgq5');
INSERT INTO `t_logfile` VALUES ('286', 'emp01', 'admin', '2017-07-08', '15:43', 'login', 'jsspmrfra7rghk3cgik5lrc9v7');
INSERT INTO `t_logfile` VALUES ('287', 'emp01', 'admin', '2017-07-08', '15:44', 'logout', 'jsspmrfra7rghk3cgik5lrc9v7');
INSERT INTO `t_logfile` VALUES ('288', 'emp01', 'admin', '2017-07-08', '15:44', 'login', 'r1kttbmlt2um4r6ecu43q3fgq5');
INSERT INTO `t_logfile` VALUES ('289', 'emp01', 'admin', '2017-07-09', '18:48', 'login', 'q72q3kf8in7p728fsvc853f4h3');
INSERT INTO `t_logfile` VALUES ('290', 'emp01', 'admin', '2017-07-10', '14:18', 'login', 'jkfheboj46m5fdedpudmtcmhi4');
INSERT INTO `t_logfile` VALUES ('291', 'emp01', 'admin', '2017-07-11', '15:05', 'login', 'ighv7lu849vh1tmin6fg4pq4p6');
INSERT INTO `t_logfile` VALUES ('292', 'emp01', 'admin', '2017-07-11', '17:02', 'login', 'chg3h2ejrpena0c29j0imlaae7');
INSERT INTO `t_logfile` VALUES ('293', 'emp01', 'admin', '2017-07-12', '15:18', 'login', 'g265n33d1j8kikqi7ub5m8nll2');
INSERT INTO `t_logfile` VALUES ('294', 'emp01', 'admin', '2017-07-13', '14:43', 'login', 'nacll44uqduft4nopf60lv2e82');
INSERT INTO `t_logfile` VALUES ('295', 'emp01', 'admin', '2017-07-13', '16:26', 'logout', 'nacll44uqduft4nopf60lv2e82');
INSERT INTO `t_logfile` VALUES ('296', 'emp02', 'user', '2017-07-13', '16:27', 'login', 'nacll44uqduft4nopf60lv2e82');
INSERT INTO `t_logfile` VALUES ('297', 'emp02', 'user', '2017-07-13', '16:28', 'logout', 'nacll44uqduft4nopf60lv2e82');
INSERT INTO `t_logfile` VALUES ('298', 'emp01', 'admin', '2017-07-13', '16:29', 'login', 'nacll44uqduft4nopf60lv2e82');
INSERT INTO `t_logfile` VALUES ('299', 'emp01', 'admin', '2017-07-13', '18:47', 'logout', 'nacll44uqduft4nopf60lv2e82');
INSERT INTO `t_logfile` VALUES ('300', 'emp02', 'user', '2017-07-13', '18:47', 'login', 'nacll44uqduft4nopf60lv2e82');
INSERT INTO `t_logfile` VALUES ('301', 'emp02', 'user', '2017-07-13', '18:48', 'logout', 'nacll44uqduft4nopf60lv2e82');
INSERT INTO `t_logfile` VALUES ('302', 'emp01', 'admin', '2017-07-13', '18:48', 'login', 'nacll44uqduft4nopf60lv2e82');
INSERT INTO `t_logfile` VALUES ('303', 'emp01', 'admin', '2017-07-16', '15:12', 'login', 'nbk6iialpvjkg7lojvke21qbs5');
INSERT INTO `t_logfile` VALUES ('304', 'emp01', 'admin', '2017-07-17', '17:03', 'login', '9r5mtvbgj363i0ofd7svqkrbl5');
INSERT INTO `t_logfile` VALUES ('305', 'emp01', 'admin', '2017-07-18', '17:25', 'login', 'ebpr8jnr3qn3vtm1p81pvii2e5');
INSERT INTO `t_logfile` VALUES ('306', 'emp01', 'admin', '2017-07-18', '18:05', 'logout', 'ebpr8jnr3qn3vtm1p81pvii2e5');
INSERT INTO `t_logfile` VALUES ('307', 'emp02', 'user', '2017-07-18', '18:05', 'login', 'ebpr8jnr3qn3vtm1p81pvii2e5');
INSERT INTO `t_logfile` VALUES ('308', 'emp02', 'user', '2017-07-18', '18:05', 'logout', 'ebpr8jnr3qn3vtm1p81pvii2e5');
INSERT INTO `t_logfile` VALUES ('309', 'emp01', 'admin', '2017-07-18', '18:05', 'login', 'ebpr8jnr3qn3vtm1p81pvii2e5');
INSERT INTO `t_logfile` VALUES ('310', 'emp01', 'admin', '2017-07-19', '04:03', 'login', 'ebpr8jnr3qn3vtm1p81pvii2e5');
INSERT INTO `t_logfile` VALUES ('311', 'emp01', 'admin', '2017-07-19', '06:51', 'logout', 'ebpr8jnr3qn3vtm1p81pvii2e5');
INSERT INTO `t_logfile` VALUES ('312', 'emp01', 'admin', '2017-07-19', '18:25', 'login', 'b7vpt4caa9h0e7c2aal0h8fvf0');
INSERT INTO `t_logfile` VALUES ('313', 'emp01', 'admin', '2017-07-20', '04:20', 'login', 'ldctmsf8lneen1938efmoj0m83');
INSERT INTO `t_logfile` VALUES ('314', 'emp01', 'admin', '2017-07-20', '13:55', 'logout', 'ldctmsf8lneen1938efmoj0m83');
INSERT INTO `t_logfile` VALUES ('315', 'emp13', 'user', '2017-07-20', '13:56', 'login', 'ldctmsf8lneen1938efmoj0m83');
INSERT INTO `t_logfile` VALUES ('316', 'emp01', 'admin', '2017-07-20', '13:56', 'login', 'ldctmsf8lneen1938efmoj0m83');
INSERT INTO `t_logfile` VALUES ('317', 'emp01', 'admin', '2017-07-20', '13:58', 'logout', 'ldctmsf8lneen1938efmoj0m83');
INSERT INTO `t_logfile` VALUES ('318', 'emp13', 'user', '2017-07-20', '13:59', 'login', 'ldctmsf8lneen1938efmoj0m83');
INSERT INTO `t_logfile` VALUES ('319', 'emp13', 'user', '2017-07-20', '13:59', 'logout', 'ldctmsf8lneen1938efmoj0m83');
INSERT INTO `t_logfile` VALUES ('320', 'emp02', 'user', '2017-07-20', '14:03', 'login', 'ldctmsf8lneen1938efmoj0m83');
INSERT INTO `t_logfile` VALUES ('321', 'emp02', 'user', '2017-07-20', '14:56', 'logout', 'ldctmsf8lneen1938efmoj0m83');
INSERT INTO `t_logfile` VALUES ('322', 'emp01', 'admin', '2017-07-20', '14:56', 'login', 'ldctmsf8lneen1938efmoj0m83');
INSERT INTO `t_logfile` VALUES ('323', 'emp01', 'admin', '2017-07-20', '15:04', 'login', 'kmf02e7kjc1hs2ulrpqp3ovsp5');
INSERT INTO `t_logfile` VALUES ('324', 'emp01', 'admin', '2017-07-20', '21:53', 'login', 'hsnh4acbbita9vkf5jjbue9n30');
INSERT INTO `t_logfile` VALUES ('325', 'emp01', 'admin', '2017-07-21', '09:41', 'login', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('326', 'emp01', 'admin', '2017-07-21', '20:52', 'login', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('327', 'emp01', 'admin', '2017-07-21', '22:35', 'logout', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('328', 'emp01', 'root', '2017-07-21', '22:37', 'login', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('329', 'emp01', 'root', '2017-07-21', '22:38', 'logout', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('330', 'emp01', 'root', '2017-07-21', '22:38', 'login', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('331', 'emp01', 'root', '2017-07-21', '22:41', 'logout', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('332', 'emp01', 'admin', '2017-07-21', '22:41', 'login', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('333', 'emp01', 'admin', '2017-07-21', '23:01', 'logout', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('334', 'emp01', 'admin', '2017-07-21', '23:01', 'login', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('335', 'emp01', 'admin', '2017-07-21', '23:02', 'logout', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('336', 'emp01', 'admin', '2017-07-21', '23:02', 'login', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('337', 'emp01', 'admin', '2017-07-21', '23:03', 'logout', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('338', 'emp02', 'root', '2017-07-21', '23:03', 'login', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('339', 'emp02', 'root', '2017-07-21', '23:03', 'logout', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('340', 'emp01', 'admin', '2017-07-21', '23:03', 'login', '6rafh362s1375r99r21g6u03t5');
INSERT INTO `t_logfile` VALUES ('341', 'emp01', 'admin', '2017-07-22', '03:04', 'login', 't4e00n5f45cg5fgafvrsv1ifc3');
INSERT INTO `t_logfile` VALUES ('342', 'emp01', 'admin', '2017-07-22', '16:13', 'login', 'miaceostqukf8lf7ptb1gqaod3');
INSERT INTO `t_logfile` VALUES ('343', 'emp01', 'admin', '2017-07-22', '23:53', 'login', 'miaceostqukf8lf7ptb1gqaod3');
INSERT INTO `t_logfile` VALUES ('344', 'emp01', 'admin', '2017-07-23', '18:35', 'login', '39ogr8tgpa5mklul5t1n1l9nd5');
INSERT INTO `t_logfile` VALUES ('345', 'emp01', 'admin', '2017-07-24', '06:46', 'login', '7o17168lufrahtgv65r3h9rii4');
INSERT INTO `t_logfile` VALUES ('346', 'emp01', 'admin', '2017-07-24', '18:45', 'login', '47oqktkldde0ia63n5jpnarjv5');
INSERT INTO `t_logfile` VALUES ('347', 'emp01', 'admin', '2017-07-25', '01:51', 'logout', '47oqktkldde0ia63n5jpnarjv5');
INSERT INTO `t_logfile` VALUES ('348', 'emp01', 'admin', '2017-07-25', '18:37', 'login', '4g23p9iuksfss965ke11uiq1m3');
INSERT INTO `t_logfile` VALUES ('349', 'emp01', 'admin', '2017-07-26', '23:13', 'login', '4536mikt87qc640i4tr7v04ia0');
INSERT INTO `t_logfile` VALUES ('350', 'emp01', 'admin', '2017-07-27', '00:04', 'login', '2avr3mk2k2nusdr9cmt241u1h4');
INSERT INTO `t_logfile` VALUES ('351', 'emp01', 'admin', '2017-07-27', '02:42', 'login', '2avr3mk2k2nusdr9cmt241u1h4');
INSERT INTO `t_logfile` VALUES ('352', 'emp01', 'admin', '2017-07-27', '12:47', 'login', 'om2b43d565sjfkq36odkjp4uv1');
INSERT INTO `t_logfile` VALUES ('353', 'emp01', 'admin', '2017-07-27', '15:56', 'login', 'om2b43d565sjfkq36odkjp4uv1');
INSERT INTO `t_logfile` VALUES ('354', 'emp01', 'admin', '2017-07-27', '18:49', 'login', 'om2b43d565sjfkq36odkjp4uv1');
INSERT INTO `t_logfile` VALUES ('355', 'emp01', 'admin', '2017-07-28', '09:57', 'login', 'bmcd1k4ouaef4spsqa48dsl4u6');
INSERT INTO `t_logfile` VALUES ('356', 'emp01', 'admin', '2017-07-28', '20:10', 'login', 'b6lktt5qkidnpqm53qratrlha6');
INSERT INTO `t_logfile` VALUES ('357', 'emp01', 'admin', '2017-07-28', '23:19', 'login', 'b6lktt5qkidnpqm53qratrlha6');
INSERT INTO `t_logfile` VALUES ('358', 'emp01', 'admin', '2017-07-29', '12:09', 'login', 'le2c3hmf23fdgjncvg6bcursk3');
INSERT INTO `t_logfile` VALUES ('359', 'emp01', 'admin', '2017-07-29', '22:25', 'login', 'bam5am2kqv3r6ioafh9k4cabg7');
INSERT INTO `t_logfile` VALUES ('360', 'emp01', 'admin', '2017-07-30', '03:11', 'login', 'jima0clgus66d3flv43hri5hr0');
INSERT INTO `t_logfile` VALUES ('361', 'emp01', 'admin', '2017-07-30', '13:16', 'login', '6rip9tc78rsr6b8fatobrcfcq6');
INSERT INTO `t_logfile` VALUES ('362', 'emp01', 'admin', '2017-07-31', '01:52', 'login', 'as420sihcdf9qrgnt28n4i7td3');
INSERT INTO `t_logfile` VALUES ('363', 'emp01', 'admin', '2017-07-31', '09:49', 'login', '6ee2agl3oo6p5j8lfdt6m7m7l2');
INSERT INTO `t_logfile` VALUES ('364', 'emp01', 'admin', '2017-07-31', '15:25', 'logout', '6ee2agl3oo6p5j8lfdt6m7m7l2');
INSERT INTO `t_logfile` VALUES ('365', 'emp01', 'admin', '2017-08-01', '01:22', 'login', '873v5h8ju8vkp9kr45qg53bs15');
INSERT INTO `t_logfile` VALUES ('366', 'emp01', 'admin', '2017-08-02', '08:54', 'login', 'gkgb6kbs5ja2pe1hobltqh7rs4');
INSERT INTO `t_logfile` VALUES ('367', 'emp01', 'admin', '2017-08-02', '20:13', 'login', 'kpqvvjvcuiamgcp7k0kcmac7i0');
INSERT INTO `t_logfile` VALUES ('368', 'emp01', 'admin', '2017-08-03', '09:00', 'login', 'j6782459pvlhvvfv6op4frulm6');
INSERT INTO `t_logfile` VALUES ('369', 'emp01', 'admin', '2017-08-04', '03:30', 'login', 'v0o1odeuiotvmd8a80rkd2ljg2');
INSERT INTO `t_logfile` VALUES ('370', 'emp01', 'admin', '2017-08-04', '08:59', 'logout', 'v0o1odeuiotvmd8a80rkd2ljg2');
INSERT INTO `t_logfile` VALUES ('371', 'emp02', 'root', '2017-08-04', '09:00', 'login', 'v0o1odeuiotvmd8a80rkd2ljg2');
INSERT INTO `t_logfile` VALUES ('372', 'emp02', 'root', '2017-08-04', '09:00', 'logout', 'v0o1odeuiotvmd8a80rkd2ljg2');
INSERT INTO `t_logfile` VALUES ('373', 'emp01', 'admin', '2017-08-05', '14:18', 'login', '00ib9a1o8tpd5blvr876ovknt5');
INSERT INTO `t_logfile` VALUES ('374', 'emp01', 'admin', '2017-08-05', '21:16', 'login', 'tsjfhpdtqbbiqom93p0kqtogb3');
INSERT INTO `t_logfile` VALUES ('375', 'emp01', 'admin', '2017-08-06', '11:49', 'login', '2aklttmoqk12inmr2634s0dkg5');
INSERT INTO `t_logfile` VALUES ('376', 'emp01', 'admin', '2017-08-07', '07:57', 'login', '7dq3itt9sig4bjon1mj9h1qg24');
INSERT INTO `t_logfile` VALUES ('377', 'emp01', 'admin', '2017-08-07', '22:41', 'login', 'cnqsqq77p460gkg3rgb5taegu6');
INSERT INTO `t_logfile` VALUES ('378', 'emp01', 'admin', '2017-08-08', '07:16', 'login', 'lnieg401jhu9kaoi9i6k14j614');
INSERT INTO `t_logfile` VALUES ('379', 'emp01', 'admin', '2017-08-08', '21:51', 'login', 'tufkma0ktrvsv340hoc3oql2p0');
INSERT INTO `t_logfile` VALUES ('380', 'emp01', 'admin', '2017-08-09', '09:56', 'login', '6872ne82vob1cps2q8emiq4sp3');
INSERT INTO `t_logfile` VALUES ('381', 'emp01', 'admin', '2017-08-09', '20:41', 'login', '2e2ujtq8okuasp8lh0kos3un42');
INSERT INTO `t_logfile` VALUES ('382', 'emp01', 'admin', '2017-08-09', '21:16', 'login', 'j8v8htt4suaj3rrsepin3k5it4');
INSERT INTO `t_logfile` VALUES ('383', 'emp01', 'admin', '2017-08-10', '12:23', 'login', '7mk66f7tj1dgnsa9g4h54gl9b4');
INSERT INTO `t_logfile` VALUES ('384', 'emp01', 'admin', '2017-08-10', '20:33', 'login', 'j4t8ofc0bno5pb7hhladd72gh3');
INSERT INTO `t_logfile` VALUES ('385', 'emp01', 'admin', '2017-08-11', '13:29', 'login', 'mu8cncdmco3vgpo92t7sclgek4');
INSERT INTO `t_logfile` VALUES ('386', 'emp01', 'admin', '2017-08-12', '14:25', 'login', 'f0mrs16nk0e4sulqc5si8b8625');
INSERT INTO `t_logfile` VALUES ('387', 'emp01', 'admin', '2017-08-12', '16:13', 'login', '0os49rnn2o84t08ffl4a3o2lf1');
INSERT INTO `t_logfile` VALUES ('388', 'emp01', 'admin', '2017-08-12', '18:56', 'login', '6hv58ivfuencnc6vhdohgguog4');
INSERT INTO `t_logfile` VALUES ('389', 'emp01', 'admin', '2017-08-13', '01:56', 'login', 'r8uhqjbvi4rg7p3477iu4h7vc4');
INSERT INTO `t_logfile` VALUES ('390', 'emp01', 'admin', '2017-08-13', '01:56', 'logout', 'r8uhqjbvi4rg7p3477iu4h7vc4');
INSERT INTO `t_logfile` VALUES ('391', 'emp01', 'admin', '2017-08-13', '01:58', 'login', 'r8uhqjbvi4rg7p3477iu4h7vc4');
INSERT INTO `t_logfile` VALUES ('392', 'emp01', 'admin', '2017-08-13', '02:07', 'logout', 'r8uhqjbvi4rg7p3477iu4h7vc4');
INSERT INTO `t_logfile` VALUES ('393', 'emp01', 'admin', '2017-08-13', '02:07', 'login', 'r8uhqjbvi4rg7p3477iu4h7vc4');
INSERT INTO `t_logfile` VALUES ('394', 'emp01', 'admin', '2017-08-13', '11:49', 'login', 'j8k5ehtra43hmi8paii6futpf3');
INSERT INTO `t_logfile` VALUES ('395', 'emp01', 'admin', '2017-08-14', '11:19', 'login', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('396', 'emp01', 'admin', '2017-08-15', '02:15', 'logout', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('397', 'emp01', 'admin', '2017-08-15', '02:20', 'login', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('398', 'emp01', 'admin', '2017-08-15', '02:20', 'logout', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('399', 'emp03', 'admin', '2017-08-15', '02:20', 'login', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('400', 'emp03', 'admin', '2017-08-15', '02:21', 'logout', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('401', 'emp09', 'user', '2017-08-15', '02:21', 'login', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('402', 'emp09', 'user', '2017-08-15', '02:38', 'logout', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('403', 'emp01', 'admin', '2017-08-15', '02:38', 'login', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('404', 'emp01', 'admin', '2017-08-15', '02:38', 'logout', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('405', 'emp09', 'user', '2017-08-15', '02:38', 'login', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('406', 'emp09', 'user', '2017-08-15', '02:46', 'logout', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('407', 'emp01', 'admin', '2017-08-15', '02:47', 'login', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('408', 'emp01', 'admin', '2017-08-15', '02:47', 'logout', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('409', 'emp09', 'user', '2017-08-15', '02:48', 'login', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('410', 'emp09', 'user', '2017-08-15', '03:29', 'logout', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('411', 'emp09', 'user', '2017-08-15', '03:29', 'login', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('412', 'emp09', 'user', '2017-08-15', '04:49', 'logout', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('413', 'emp01', 'admin', '2017-08-15', '04:49', 'login', 'tlnm1f7r026itadck83h5ef361');
INSERT INTO `t_logfile` VALUES ('414', 'emp01', 'admin', '2017-08-15', '08:24', 'login', 'eqq2q6b1g867pkcr4acdpiqfv1');
INSERT INTO `t_logfile` VALUES ('415', 'emp01', 'admin', '2017-08-15', '09:05', 'logout', 'eqq2q6b1g867pkcr4acdpiqfv1');
INSERT INTO `t_logfile` VALUES ('416', 'emp09', 'user', '2017-08-15', '09:05', 'login', 'eqq2q6b1g867pkcr4acdpiqfv1');
INSERT INTO `t_logfile` VALUES ('417', 'emp09', 'user', '2017-08-15', '09:05', 'logout', 'eqq2q6b1g867pkcr4acdpiqfv1');
INSERT INTO `t_logfile` VALUES ('418', 'emp01', 'admin', '2017-08-15', '09:05', 'login', 'eqq2q6b1g867pkcr4acdpiqfv1');
INSERT INTO `t_logfile` VALUES ('419', 'emp01', 'admin', '2017-08-15', '20:39', 'login', 'eom0ntru0keo4ejqgsos1a85a2');
INSERT INTO `t_logfile` VALUES ('420', 'emp01', 'admin', '2017-08-16', '13:03', 'login', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('421', 'emp01', 'admin', '2017-08-16', '13:15', 'logout', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('422', 'emp09', 'user', '2017-08-16', '13:15', 'login', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('423', 'emp09', 'user', '2017-08-16', '13:31', 'logout', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('424', 'emp01', 'admin', '2017-08-16', '13:31', 'login', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('425', 'emp01', 'admin', '2017-08-16', '13:37', 'logout', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('426', 'emp09', 'user', '2017-08-16', '13:37', 'login', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('427', 'emp09', 'user', '2017-08-16', '13:49', 'logout', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('428', 'emp01', 'admin', '2017-08-16', '13:49', 'login', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('429', 'emp01', 'admin', '2017-08-16', '21:14', 'logout', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('430', 'emp09', 'user', '2017-08-16', '21:14', 'login', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('431', 'emp09', 'user', '2017-08-16', '21:14', 'logout', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('432', 'emp01', 'admin', '2017-08-16', '21:15', 'login', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('433', 'emp01', 'admin', '2017-08-16', '21:26', 'logout', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('434', 'emp01', 'admin', '2017-08-16', '21:26', 'login', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('435', 'emp01', 'admin', '2017-08-16', '21:36', 'login', 'gj410oq7bhggiegcujj6adl9g3');
INSERT INTO `t_logfile` VALUES ('436', 'emp01', 'admin', '2017-08-16', '21:37', 'login', 'qh8em0j435ef7sdor4pnd8qp14');
INSERT INTO `t_logfile` VALUES ('437', 'emp01', 'admin', '2017-08-16', '21:39', 'login', 'qh8em0j435ef7sdor4pnd8qp14');
INSERT INTO `t_logfile` VALUES ('438', 'emp01', 'admin', '2017-08-16', '23:46', 'login', 'be6n2mf6t9fm1tle99ue72nji3');
INSERT INTO `t_logfile` VALUES ('439', 'emp01', 'admin', '2017-08-16', '23:48', 'login', 'cp25nj48g847uoqcsu6ei11et4');
INSERT INTO `t_logfile` VALUES ('440', 'emp01', 'admin', '2017-08-17', '01:40', 'login', 'cp25nj48g847uoqcsu6ei11et4');
INSERT INTO `t_logfile` VALUES ('441', 'emp01', 'admin', '2017-08-17', '02:21', 'logout', 'cp25nj48g847uoqcsu6ei11et4');
INSERT INTO `t_logfile` VALUES ('442', 'emp01', 'admin', '2017-08-17', '02:21', 'login', 'cp25nj48g847uoqcsu6ei11et4');
INSERT INTO `t_logfile` VALUES ('443', 'emp01', 'admin', '2017-08-17', '02:31', 'logout', 'cp25nj48g847uoqcsu6ei11et4');
INSERT INTO `t_logfile` VALUES ('444', 'emp01', 'admin', '2017-08-17', '12:35', 'login', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('445', 'emp01', 'admin', '2017-08-17', '18:33', 'logout', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('446', 'emp09', 'user', '2017-08-17', '18:33', 'login', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('447', 'emp01', 'admin', '2017-08-17', '18:51', 'login', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('448', 'emp01', 'admin', '2017-08-17', '22:02', 'logout', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('449', 'emp01', 'admin', '2017-08-17', '22:02', 'login', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('450', 'emp01', 'admin', '2017-08-17', '22:04', 'logout', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('451', 'emp02', 'root', '2017-08-17', '22:04', 'login', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('452', 'emp02', 'root', '2017-08-17', '22:04', 'logout', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('453', 'emp09', 'user', '2017-08-17', '22:05', 'login', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('454', 'emp09', 'user', '2017-08-17', '22:06', 'logout', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('455', 'emp01', 'admin', '2017-08-17', '22:06', 'login', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('456', 'emp01', 'admin', '2017-08-17', '23:42', 'logout', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('457', 'emp01', 'admin', '2017-08-18', '00:39', 'login', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('458', 'emp01', 'admin', '2017-08-18', '01:50', 'logout', 'jv46nt6dj74d6fbhakcbj5een2');
INSERT INTO `t_logfile` VALUES ('459', 'emp01', 'admin', '2017-08-18', '14:53', 'login', 'u8p4uss4c6hfeco898elklk5d3');
INSERT INTO `t_logfile` VALUES ('460', 'emp01', 'admin', '2017-08-18', '20:23', 'logout', 'u8p4uss4c6hfeco898elklk5d3');
INSERT INTO `t_logfile` VALUES ('461', 'emp01', 'admin', '2017-08-18', '20:23', 'login', 'u8p4uss4c6hfeco898elklk5d3');
INSERT INTO `t_logfile` VALUES ('462', 'emp01', 'admin', '2017-08-19', '11:07', 'login', 'p1dv3mq1t09vn5tlq9cb0r6uq4');
INSERT INTO `t_logfile` VALUES ('463', 'emp01', 'admin', '2017-08-19', '21:55', 'logout', 'p1dv3mq1t09vn5tlq9cb0r6uq4');
INSERT INTO `t_logfile` VALUES ('464', 'emp01', 'admin', '2017-08-19', '21:55', 'login', 'p1dv3mq1t09vn5tlq9cb0r6uq4');
INSERT INTO `t_logfile` VALUES ('465', 'emp01', 'admin', '2017-08-19', '22:19', 'login', 'm77nuug94lum6bo8cs8flh4o10');
INSERT INTO `t_logfile` VALUES ('466', 'emp01', 'admin', '2017-08-20', '11:40', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('467', 'emp01', 'admin', '2017-08-20', '13:29', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('468', 'emp01', 'admin', '2017-08-20', '13:29', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('469', 'emp01', 'admin', '2017-08-20', '13:29', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('470', 'emp09', 'user', '2017-08-20', '13:29', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('471', 'emp09', 'user', '2017-08-20', '13:34', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('472', 'emp01', 'admin', '2017-08-20', '13:34', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('473', 'emp01', 'admin', '2017-08-20', '13:52', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('474', 'emp09', 'user', '2017-08-20', '13:52', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('475', 'emp09', 'user', '2017-08-20', '13:54', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('476', 'emp09', 'user', '2017-08-20', '13:54', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('477', 'emp09', 'user', '2017-08-20', '14:09', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('478', 'emp01', 'admin', '2017-08-20', '14:09', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('479', 'emp01', 'admin', '2017-08-20', '15:25', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('480', 'emp09', 'user', '2017-08-20', '15:25', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('481', 'emp09', 'user', '2017-08-20', '15:28', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('482', 'emp01', 'admin', '2017-08-20', '15:28', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('483', 'emp01', 'admin', '2017-08-21', '00:58', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('484', 'emp09', 'user', '2017-08-21', '00:58', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('485', 'emp09', 'user', '2017-08-21', '00:59', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('486', 'emp01', 'admin', '2017-08-21', '00:59', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('487', 'emp01', 'admin', '2017-08-21', '01:50', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('488', 'emp09', 'user', '2017-08-21', '01:50', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('489', 'emp09', 'user', '2017-08-21', '01:51', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('490', 'emp01', 'admin', '2017-08-21', '01:53', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('491', 'emp01', 'admin', '2017-08-21', '03:02', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('492', 'emp01', 'admin', '2017-08-21', '03:04', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('493', 'emp01', 'admin', '2017-08-21', '03:06', 'login', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('494', 'emp01', 'admin', '2017-08-21', '03:08', 'logout', 'l0padgr6c5tpqfh2t8kkeund92');
INSERT INTO `t_logfile` VALUES ('495', 'emp01', 'admin', '2017-08-21', '12:13', 'login', 'd6d36rp6fvgj131il1ukesqhj4');
INSERT INTO `t_logfile` VALUES ('496', 'emp01', 'admin', '2017-08-21', '14:24', 'logout', 'd6d36rp6fvgj131il1ukesqhj4');
INSERT INTO `t_logfile` VALUES ('497', 'emp03', 'admin', '2017-08-21', '14:24', 'login', 'd6d36rp6fvgj131il1ukesqhj4');
INSERT INTO `t_logfile` VALUES ('498', 'emp03', 'admin', '2017-08-21', '14:34', 'logout', 'd6d36rp6fvgj131il1ukesqhj4');
INSERT INTO `t_logfile` VALUES ('499', 'emp01', 'admin', '2017-08-21', '14:34', 'login', 'd6d36rp6fvgj131il1ukesqhj4');
INSERT INTO `t_logfile` VALUES ('500', 'emp01', 'admin', '2017-08-21', '20:30', 'logout', 'd6d36rp6fvgj131il1ukesqhj4');
INSERT INTO `t_logfile` VALUES ('501', 'emp09', 'user', '2017-08-21', '20:30', 'login', 'd6d36rp6fvgj131il1ukesqhj4');
INSERT INTO `t_logfile` VALUES ('502', 'emp09', 'user', '2017-08-21', '20:31', 'logout', 'd6d36rp6fvgj131il1ukesqhj4');
INSERT INTO `t_logfile` VALUES ('503', 'emp01', 'admin', '2017-08-21', '20:31', 'login', 'd6d36rp6fvgj131il1ukesqhj4');
INSERT INTO `t_logfile` VALUES ('504', 'emp01', 'admin', '2017-08-22', '07:50', 'login', 'ojbfv6ebb1m36cbvm129vorg05');
INSERT INTO `t_logfile` VALUES ('505', 'emp01', 'admin', '2017-08-22', '18:42', 'login', 'qi2en9bburhlvk14k1oe5bs0g7');
INSERT INTO `t_logfile` VALUES ('506', 'emp01', 'admin', '2017-08-22', '19:00', 'logout', 'qi2en9bburhlvk14k1oe5bs0g7');
INSERT INTO `t_logfile` VALUES ('507', 'emp01', 'admin', '2017-08-22', '19:00', 'login', 'qi2en9bburhlvk14k1oe5bs0g7');
INSERT INTO `t_logfile` VALUES ('508', 'emp01', 'admin', '2017-08-23', '00:27', 'login', 'qi2en9bburhlvk14k1oe5bs0g7');
INSERT INTO `t_logfile` VALUES ('509', 'emp01', 'admin', '2017-08-23', '16:42', 'login', 'sirop2buqp6tfqremfn8d1njm5');
INSERT INTO `t_logfile` VALUES ('510', 'emp01', 'admin', '2017-08-23', '19:59', 'logout', 'sirop2buqp6tfqremfn8d1njm5');
INSERT INTO `t_logfile` VALUES ('511', 'emp01', 'admin', '2017-08-23', '20:06', 'login', 'sirop2buqp6tfqremfn8d1njm5');
INSERT INTO `t_logfile` VALUES ('512', 'emp01', 'admin', '2017-08-24', '00:00', 'logout', 'sirop2buqp6tfqremfn8d1njm5');
INSERT INTO `t_logfile` VALUES ('513', 'emp01', 'admin', '2017-08-24', '00:01', 'login', '86ngir9vfjo0274su8mbsic9m1');
INSERT INTO `t_logfile` VALUES ('514', 'emp01', 'admin', '2017-08-24', '00:59', 'login', 'el49rd9tho493r5ehr4f3on5f3');
INSERT INTO `t_logfile` VALUES ('515', 'emp01', 'admin', '2017-08-24', '08:34', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('516', 'emp01', 'admin', '2017-08-24', '16:38', 'logout', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('517', 'emp09', 'user', '2017-08-24', '16:38', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('518', 'emp09', 'user', '2017-08-24', '16:39', 'logout', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('519', 'emp01', 'admin', '2017-08-24', '16:40', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('520', 'emp01', 'admin', '2017-08-25', '01:08', 'logout', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('521', 'emp01', 'admin', '2017-08-25', '01:08', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('522', 'emp01', 'admin', '2017-08-25', '01:11', 'logout', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('523', 'emp01', 'admin', '2017-08-25', '01:11', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('524', 'emp01', 'admin', '2017-08-25', '04:08', 'logout', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('525', 'emp09', 'user', '2017-08-25', '04:08', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('526', 'emp09', 'user', '2017-08-25', '04:11', 'logout', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('527', 'emp01', 'admin', '2017-08-25', '04:12', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('528', 'emp01', 'admin', '2017-08-25', '04:12', 'logout', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('529', 'emp01', 'admin', '2017-08-25', '04:13', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('530', 'emp01', 'admin', '2017-08-25', '04:13', 'logout', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('531', 'emp09', 'user', '2017-08-25', '04:13', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('532', 'emp09', 'user', '2017-08-25', '04:37', 'logout', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('533', 'emp01', 'admin', '2017-08-25', '04:37', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('534', 'emp01', 'admin', '2017-08-25', '04:37', 'logout', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('535', 'emp09', 'user', '2017-08-25', '04:37', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('536', 'emp09', 'user', '2017-08-25', '04:42', 'logout', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('537', 'emp02', 'root', '2017-08-25', '04:43', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('538', 'emp02', 'root', '2017-08-25', '04:43', 'logout', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('539', 'emp09', 'user', '2017-08-25', '04:43', 'login', 'a7s4kjn6ejv4mo22m6deu5jbf0');
INSERT INTO `t_logfile` VALUES ('540', 'emp01', 'admin', '2017-08-25', '10:41', 'login', '1k0mfaavab0ac5sv73g2a6i8m5');
INSERT INTO `t_logfile` VALUES ('541', 'emp01', 'admin', '2017-08-25', '11:19', 'login', 'g13hvktvoupf9itd5pegb5l5r3');
INSERT INTO `t_logfile` VALUES ('542', 'emp01', 'admin', '2017-08-25', '18:55', 'login', 'g13hvktvoupf9itd5pegb5l5r3');
INSERT INTO `t_logfile` VALUES ('543', 'emp01', 'admin', '2017-08-25', '18:58', 'login', 'g13hvktvoupf9itd5pegb5l5r3');
INSERT INTO `t_logfile` VALUES ('544', 'emp01', 'admin', '2017-08-25', '19:06', 'login', 'g13hvktvoupf9itd5pegb5l5r3');
INSERT INTO `t_logfile` VALUES ('545', 'emp01', 'admin', '2017-08-26', '00:55', 'login', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('546', 'emp01', 'admin', '2017-08-26', '01:10', 'logout', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('547', 'emp01', 'admin', '2017-08-26', '01:10', 'login', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('548', 'emp01', 'admin', '2017-08-26', '01:13', 'logout', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('549', 'emp09', 'user', '2017-08-26', '01:14', 'login', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('550', 'emp09', 'user', '2017-08-26', '01:14', 'logout', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('551', 'emp01', 'admin', '2017-08-26', '01:14', 'login', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('552', 'emp01', 'admin', '2017-08-26', '01:14', 'logout', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('553', 'emp01', 'admin', '2017-08-26', '01:14', 'login', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('554', 'emp01', 'admin', '2017-08-26', '01:21', 'logout', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('555', 'emp09', 'user', '2017-08-26', '01:21', 'login', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('556', 'emp09', 'user', '2017-08-26', '01:22', 'logout', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('557', 'emp01', 'admin', '2017-08-26', '01:22', 'login', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('558', 'emp01', 'admin', '2017-08-26', '01:25', 'logout', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('559', 'emp01', 'admin', '2017-08-26', '01:26', 'login', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('560', 'emp01', 'admin', '2017-08-26', '01:26', 'logout', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('561', 'emp09', 'user', '2017-08-26', '01:26', 'login', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('562', 'emp09', 'user', '2017-08-26', '03:01', 'logout', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('563', 'emp01', 'admin', '2017-08-26', '03:01', 'login', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('564', 'emp01', 'admin', '2017-08-26', '03:28', 'logout', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('565', 'emp09', 'user', '2017-08-26', '03:28', 'login', 'o4q1toacfm2nv7ardm5ieahqp1');
INSERT INTO `t_logfile` VALUES ('566', 'emp01', 'admin', '2017-08-26', '08:02', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('567', 'emp01', 'admin', '2017-08-26', '09:29', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('568', 'emp01', 'root', '2017-08-26', '09:29', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('569', 'emp01', 'root', '2017-08-26', '09:35', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('570', 'emp02', 'admin', '2017-08-26', '09:36', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('571', 'emp02', 'admin', '2017-08-26', '09:36', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('572', 'emp01', 'root', '2017-08-26', '09:42', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('573', 'emp01', 'root', '2017-08-26', '09:42', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('574', 'emp01', 'root', '2017-08-26', '09:42', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('575', 'emp01', 'root', '2017-08-26', '10:13', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('576', 'emp02', 'admin', '2017-08-26', '10:13', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('577', 'emp02', 'admin', '2017-08-26', '10:17', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('578', 'emp01', 'root', '2017-08-26', '10:17', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('579', 'emp01', 'root', '2017-08-26', '10:19', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('580', 'emp02', 'admin', '2017-08-26', '10:19', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('581', 'emp02', 'admin', '2017-08-26', '10:19', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('582', 'emp01', 'root', '2017-08-26', '10:20', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('583', 'emp01', 'root', '2017-08-26', '11:09', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('584', 'emp01', 'root', '2017-08-26', '11:10', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('585', 'emp01', 'root', '2017-08-26', '11:23', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('586', 'emp01', 'root', '2017-08-26', '11:25', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('587', 'emp01', 'root', '2017-08-26', '11:42', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('588', 'emp01', 'root', '2017-08-26', '11:42', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('589', 'emp01', 'root', '2017-08-26', '11:42', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('590', 'emp01', 'root', '2017-08-26', '11:42', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('591', 'emp01', 'root', '2017-08-26', '11:47', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('592', 'emp01', 'root', '2017-08-26', '11:47', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('593', 'emp01', 'root', '2017-08-26', '11:47', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('594', 'emp01', 'root', '2017-08-26', '11:56', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('595', 'emp01', 'root', '2017-08-26', '11:58', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('596', 'emp01', 'root', '2017-08-26', '11:58', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('597', 'emp01', 'root', '2017-08-26', '11:59', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('598', 'emp01', 'root', '2017-08-26', '12:19', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('599', 'emp09', 'user', '2017-08-26', '12:19', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('600', 'emp09', 'user', '2017-08-26', '12:22', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('601', 'emp09', 'user', '2017-08-26', '12:24', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('602', 'emp09', 'user', '2017-08-26', '12:37', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('603', 'emp01', 'root', '2017-08-26', '12:37', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('604', 'emp01', 'root', '2017-08-26', '12:38', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('605', 'emp09', 'user', '2017-08-26', '12:41', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('606', 'emp09', 'user', '2017-08-26', '12:42', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('607', 'emp01', 'root', '2017-08-26', '12:42', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('608', 'emp01', 'root', '2017-08-26', '13:00', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('609', 'emp01', 'root', '2017-08-26', '13:14', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('610', 'emp01', 'root', '2017-08-26', '13:14', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('611', 'emp01', 'root', '2017-08-26', '18:00', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('612', 'emp01', 'root', '2017-08-26', '19:08', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('613', 'emp09', 'user', '2017-08-26', '19:09', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('614', 'emp09', 'user', '2017-08-26', '20:39', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('615', 'emp01', 'root', '2017-08-26', '20:39', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('616', 'emp01', 'root', '2017-08-26', '20:40', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('617', 'emp09', 'user', '2017-08-26', '20:40', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('618', 'emp09', 'user', '2017-08-26', '20:40', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('619', 'emp02', 'admin', '2017-08-26', '20:40', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('620', 'emp02', 'admin', '2017-08-26', '20:41', 'logout', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('621', 'emp01', 'root', '2017-08-26', '20:50', 'login', '0kvaonv7hc0fmt7ni7d1sgi3o3');
INSERT INTO `t_logfile` VALUES ('622', 'emp01', 'root', '2017-08-27', '16:10', 'login', '6s7s9f414o8kenj9pfrocjnlh1');
INSERT INTO `t_logfile` VALUES ('623', 'emp01', 'root', '2017-08-27', '19:05', 'login', '6s7s9f414o8kenj9pfrocjnlh1');
INSERT INTO `t_logfile` VALUES ('624', 'emp01', 'root', '2017-08-27', '21:22', 'logout', '6s7s9f414o8kenj9pfrocjnlh1');
INSERT INTO `t_logfile` VALUES ('625', 'emp01', 'root', '2017-08-27', '21:23', 'login', '6s7s9f414o8kenj9pfrocjnlh1');
INSERT INTO `t_logfile` VALUES ('626', 'emp01', 'root', '2017-08-27', '21:23', 'logout', '6s7s9f414o8kenj9pfrocjnlh1');
INSERT INTO `t_logfile` VALUES ('627', 'emp09', 'user', '2017-08-27', '21:23', 'login', '6s7s9f414o8kenj9pfrocjnlh1');
INSERT INTO `t_logfile` VALUES ('628', 'emp09', 'user', '2017-08-27', '21:47', 'logout', '6s7s9f414o8kenj9pfrocjnlh1');
INSERT INTO `t_logfile` VALUES ('629', 'emp01', 'root', '2017-08-27', '21:47', 'login', '6s7s9f414o8kenj9pfrocjnlh1');
INSERT INTO `t_logfile` VALUES ('630', 'emp01', 'root', '2017-08-28', '22:05', 'login', '4g9503me2c4p0s5uvboth5uur4');
INSERT INTO `t_logfile` VALUES ('631', 'emp01', 'root', '2017-08-29', '13:27', 'login', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('632', 'emp01', 'root', '2017-08-29', '13:27', 'logout', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('633', 'emp01', 'root', '2017-08-29', '13:28', 'login', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('634', 'emp01', 'root', '2017-08-29', '13:28', 'logout', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('635', 'emp09', 'user', '2017-08-29', '13:28', 'login', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('636', 'emp09', 'user', '2017-08-29', '13:28', 'logout', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('637', 'emp09', 'user', '2017-08-29', '13:28', 'login', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('638', 'emp09', 'user', '2017-08-29', '14:34', 'logout', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('639', 'emp01', 'root', '2017-08-29', '14:34', 'login', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('640', 'emp01', 'root', '2017-08-29', '16:55', 'logout', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('641', 'emp01', 'root', '2017-08-29', '16:55', 'login', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('642', 'emp01', 'root', '2017-08-29', '17:59', 'logout', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('643', 'emp01', 'root', '2017-08-29', '17:59', 'login', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('644', 'emp01', 'root', '2017-08-29', '18:02', 'logout', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('645', 'emp01', 'root', '2017-08-29', '18:02', 'login', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('646', 'emp01', 'root', '2017-08-29', '19:45', 'login', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('647', 'emp01', 'root', '2017-08-30', '00:51', 'logout', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('648', 'emp01', 'root', '2017-08-30', '01:21', 'login', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('649', 'emp01', 'root', '2017-08-30', '02:24', 'logout', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('650', 'emp01', 'root', '2017-08-30', '02:25', 'login', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('651', 'emp01', 'root', '2017-08-30', '02:26', 'logout', 'edorlass839h5nccrdngnos0j7');
INSERT INTO `t_logfile` VALUES ('652', 'emp01', 'root', '2017-08-30', '12:17', 'login', 'bo4t8rltl32fjkugv17imsfvv7');
INSERT INTO `t_logfile` VALUES ('653', 'emp01', 'root', '2017-08-30', '16:24', 'logout', 'bo4t8rltl32fjkugv17imsfvv7');
INSERT INTO `t_logfile` VALUES ('654', 'emp01', 'root', '2017-08-30', '16:24', 'login', 'bo4t8rltl32fjkugv17imsfvv7');
INSERT INTO `t_logfile` VALUES ('655', 'emp01', 'root', '2017-08-30', '22:40', 'login', 'egaud7t535451gmadsahti35l7');
INSERT INTO `t_logfile` VALUES ('656', 'emp01', 'root', '2017-08-31', '15:58', 'login', '1v9c0912fejmrncnov9fttsft3');
INSERT INTO `t_logfile` VALUES ('657', 'emp01', 'root', '2017-09-01', '03:42', 'login', 'vu1vempv10vr6aomfboku8e1s6');
INSERT INTO `t_logfile` VALUES ('658', 'emp01', 'root', '2017-09-01', '04:05', 'logout', 'vu1vempv10vr6aomfboku8e1s6');
INSERT INTO `t_logfile` VALUES ('659', 'emp01', 'root', '2017-09-01', '23:30', 'login', 'dp6jl1gh3jivdi1rmmbrsuqi61');
INSERT INTO `t_logfile` VALUES ('660', 'emp01', 'root', '2017-09-02', '19:04', 'login', 'be0manharcj611kl2iaq6hu4m4');
INSERT INTO `t_logfile` VALUES ('661', 'emp01', 'root', '2017-09-02', '20:02', 'login', 'be0manharcj611kl2iaq6hu4m4');
INSERT INTO `t_logfile` VALUES ('662', 'emp01', 'root', '2017-09-02', '20:02', 'logout', 'be0manharcj611kl2iaq6hu4m4');
INSERT INTO `t_logfile` VALUES ('663', 'emp09', 'user', '2017-09-02', '20:02', 'login', 'be0manharcj611kl2iaq6hu4m4');
INSERT INTO `t_logfile` VALUES ('664', 'emp09', 'user', '2017-09-02', '21:48', 'logout', 'be0manharcj611kl2iaq6hu4m4');
INSERT INTO `t_logfile` VALUES ('665', 'emp01', 'root', '2017-09-02', '21:48', 'login', 'be0manharcj611kl2iaq6hu4m4');
INSERT INTO `t_logfile` VALUES ('666', 'emp01', 'root', '2017-09-02', '22:17', 'logout', 'be0manharcj611kl2iaq6hu4m4');
INSERT INTO `t_logfile` VALUES ('667', 'emp01', 'root', '2017-09-03', '18:53', 'login', 'ahodrr6kar2diksm3ti2oauqm1');
INSERT INTO `t_logfile` VALUES ('668', 'emp01', 'root', '2017-09-04', '21:39', 'login', 'mp7migoh6odct1do231qah1031');
INSERT INTO `t_logfile` VALUES ('669', 'emp01', 'root', '2017-09-05', '20:46', 'login', 'at2d89j5ivms5mvs2vrjbamc33');
INSERT INTO `t_logfile` VALUES ('670', 'emp01', 'root', '2017-09-06', '22:10', 'login', 'fsikuvvh7e6gikarsdd65e2234');
INSERT INTO `t_logfile` VALUES ('671', 'emp01', 'root', '2017-09-08', '08:02', 'login', 'o9b4gdofnlpdggi6csudtja535');
INSERT INTO `t_logfile` VALUES ('672', 'emp01', 'root', '2017-09-08', '08:03', 'logout', 'o9b4gdofnlpdggi6csudtja535');
INSERT INTO `t_logfile` VALUES ('673', 'emp01', 'root', '2017-09-08', '22:52', 'login', 'eljdseg46t807fc335o7vu99u4');
INSERT INTO `t_logfile` VALUES ('674', 'emp01', 'root', '2017-09-08', '23:31', 'logout', 'eljdseg46t807fc335o7vu99u4');
INSERT INTO `t_logfile` VALUES ('675', 'emp01', 'root', '2017-09-08', '23:32', 'login', 'eljdseg46t807fc335o7vu99u4');
INSERT INTO `t_logfile` VALUES ('676', 'emp01', 'root', '2017-09-09', '20:54', 'login', 'cb0ucu5a2ukujf4mf32asn9912');
INSERT INTO `t_logfile` VALUES ('677', 'emp01', 'root', '2017-09-09', '21:35', 'logout', 'cb0ucu5a2ukujf4mf32asn9912');
INSERT INTO `t_logfile` VALUES ('678', 'emp01', 'root', '2017-09-09', '21:35', 'login', 'cb0ucu5a2ukujf4mf32asn9912');
INSERT INTO `t_logfile` VALUES ('679', 'emp01', 'root', '2017-09-09', '21:38', 'logout', 'cb0ucu5a2ukujf4mf32asn9912');
INSERT INTO `t_logfile` VALUES ('680', 'emp01', 'root', '2017-09-09', '21:38', 'login', 'cb0ucu5a2ukujf4mf32asn9912');
INSERT INTO `t_logfile` VALUES ('681', 'emp01', 'root', '2017-09-09', '23:20', 'login', 'cb0ucu5a2ukujf4mf32asn9912');
INSERT INTO `t_logfile` VALUES ('682', 'emp01', 'root', '2017-09-10', '00:34', 'logout', 'cb0ucu5a2ukujf4mf32asn9912');
INSERT INTO `t_logfile` VALUES ('683', 'emp01', 'root', '2017-09-10', '00:34', 'login', 'cb0ucu5a2ukujf4mf32asn9912');
INSERT INTO `t_logfile` VALUES ('684', 'emp01', 'root', '2017-09-10', '20:29', 'login', '36ff3rstpumg1lnv8usqn3rin5');
INSERT INTO `t_logfile` VALUES ('685', 'emp01', 'root', '2017-09-12', '21:03', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('686', 'emp01', 'root', '2017-09-12', '21:03', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('687', 'emp01', 'root', '2017-09-12', '21:04', 'logout', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('688', 'emp01', 'root', '2017-09-12', '21:04', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('689', 'emp01', 'root', '2017-09-12', '21:04', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('690', 'emp01', 'root', '2017-09-12', '21:05', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('691', 'emp01', 'root', '2017-09-12', '21:07', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('692', 'emp01', 'root', '2017-09-12', '21:07', 'logout', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('693', 'emp01', 'root', '2017-09-12', '21:08', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('694', 'emp01', 'root', '2017-09-12', '21:08', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('695', 'emp01', 'root', '2017-09-12', '21:08', 'logout', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('696', 'emp01', 'root', '2017-09-12', '21:10', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('697', 'emp01', 'root', '2017-09-12', '21:10', 'logout', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('698', 'emp01', 'root', '2017-09-12', '21:10', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('699', 'emp01', 'root', '2017-09-12', '21:10', 'logout', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('700', 'emp01', 'root', '2017-09-12', '21:11', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('701', 'emp01', 'root', '2017-09-12', '21:13', 'logout', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('702', 'emp01', 'root', '2017-09-12', '21:13', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('703', 'emp01', 'root', '2017-09-12', '21:13', 'logout', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('704', 'emp09', 'user', '2017-09-12', '21:14', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('705', 'emp09', 'user', '2017-09-12', '21:14', 'logout', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('706', 'emp01', 'root', '2017-09-12', '21:14', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('707', 'emp01', 'root', '2017-09-12', '22:53', 'logout', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('708', 'emp02', 'admin', '2017-09-12', '22:53', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('709', 'emp02', 'admin', '2017-09-12', '22:54', 'logout', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('710', 'emp01', 'root', '2017-09-12', '22:55', 'login', 't5mms1h22l1b261blliupomh71');
INSERT INTO `t_logfile` VALUES ('711', 'emp01', 'root', '2017-09-13', '08:54', 'login', '6guhuchslltj254cj8dubrht06');
INSERT INTO `t_logfile` VALUES ('712', 'emp01', 'root', '2017-09-13', '12:24', 'logout', '6guhuchslltj254cj8dubrht06');
INSERT INTO `t_logfile` VALUES ('713', 'emp01', 'root', '2017-09-13', '13:17', 'login', '6guhuchslltj254cj8dubrht06');
INSERT INTO `t_logfile` VALUES ('714', 'emp01', 'root', '2017-09-13', '21:27', 'login', '9f9qpnglv6ai4i8fcnfcutfbk5');
INSERT INTO `t_logfile` VALUES ('715', 'emp01', 'root', '2017-09-14', '01:08', 'logout', '9f9qpnglv6ai4i8fcnfcutfbk5');
INSERT INTO `t_logfile` VALUES ('716', 'emp09', 'user', '2017-09-14', '01:08', 'login', '9f9qpnglv6ai4i8fcnfcutfbk5');
INSERT INTO `t_logfile` VALUES ('717', 'emp09', 'user', '2017-09-14', '01:09', 'logout', '9f9qpnglv6ai4i8fcnfcutfbk5');
INSERT INTO `t_logfile` VALUES ('718', 'emp01', 'root', '2017-09-14', '01:11', 'login', '9f9qpnglv6ai4i8fcnfcutfbk5');
INSERT INTO `t_logfile` VALUES ('719', 'emp01', 'root', '2017-09-14', '04:06', 'login', 's0hcbc8l2mentsi6ekjn9jir10');
INSERT INTO `t_logfile` VALUES ('720', 'emp01', 'root', '2017-09-14', '10:05', 'logout', 's0hcbc8l2mentsi6ekjn9jir10');
INSERT INTO `t_logfile` VALUES ('721', 'emp01', 'root', '2017-09-14', '14:51', 'login', 'ia85v6202ljbi1mbs6crl2keo5');
INSERT INTO `t_logfile` VALUES ('722', 'emp01', 'root', '2017-09-14', '18:46', 'logout', 'ia85v6202ljbi1mbs6crl2keo5');
INSERT INTO `t_logfile` VALUES ('723', 'emp01', 'root', '2017-09-15', '00:01', 'login', 'bkbepd6hkshh7l687bg7f57js2');
INSERT INTO `t_logfile` VALUES ('724', 'emp01', 'root', '2017-09-15', '01:48', 'logout', 'bkbepd6hkshh7l687bg7f57js2');
INSERT INTO `t_logfile` VALUES ('725', 'emp02', 'admin', '2017-09-15', '01:48', 'login', 'bkbepd6hkshh7l687bg7f57js2');
INSERT INTO `t_logfile` VALUES ('726', 'emp02', 'admin', '2017-09-15', '01:51', 'logout', 'bkbepd6hkshh7l687bg7f57js2');
INSERT INTO `t_logfile` VALUES ('727', 'emp01', 'root', '2017-09-15', '01:51', 'login', 'bkbepd6hkshh7l687bg7f57js2');
INSERT INTO `t_logfile` VALUES ('728', 'emp01', 'root', '2017-09-15', '09:47', 'login', 'b9btv7vdi20c3ab6108gi6sir3');
INSERT INTO `t_logfile` VALUES ('729', 'emp01', 'root', '2017-09-15', '10:30', 'logout', 'b9btv7vdi20c3ab6108gi6sir3');
INSERT INTO `t_logfile` VALUES ('730', 'emp01', 'root', '2017-09-15', '10:30', 'login', 'b9btv7vdi20c3ab6108gi6sir3');
INSERT INTO `t_logfile` VALUES ('731', 'emp01', 'root', '2017-09-15', '10:30', 'logout', 'b9btv7vdi20c3ab6108gi6sir3');
INSERT INTO `t_logfile` VALUES ('732', 'emp01', 'root', '2017-09-15', '10:31', 'login', 'b9btv7vdi20c3ab6108gi6sir3');
INSERT INTO `t_logfile` VALUES ('733', 'emp01', 'root', '2017-09-15', '13:08', 'logout', 'b9btv7vdi20c3ab6108gi6sir3');
INSERT INTO `t_logfile` VALUES ('734', 'emp01', 'root', '2017-09-16', '05:10', 'login', '421fdhlu8jet2e5nli1o18db22');
INSERT INTO `t_logfile` VALUES ('735', 'emp01', 'root', '2017-09-16', '10:43', 'logout', '421fdhlu8jet2e5nli1o18db22');
INSERT INTO `t_logfile` VALUES ('736', 'emp01', 'root', '2017-09-19', '14:08', 'login', '17ea2bgk3t6218iij91p7mo6p0');
INSERT INTO `t_logfile` VALUES ('737', 'emp01', 'root', '2017-09-20', '14:09', 'login', '8v8e7nionqmnddoni9euuauit4');
INSERT INTO `t_logfile` VALUES ('738', 'emp01', 'root', '2017-09-20', '14:44', 'logout', '8v8e7nionqmnddoni9euuauit4');
INSERT INTO `t_logfile` VALUES ('739', 'emp01', 'root', '2017-09-22', '09:13', 'login', '38f0hjecbddroa8nhhvvds21v3');
INSERT INTO `t_logfile` VALUES ('740', 'emp01', 'root', '2017-09-22', '10:46', 'logout', '38f0hjecbddroa8nhhvvds21v3');
INSERT INTO `t_logfile` VALUES ('741', 'emp01', 'root', '2017-09-22', '11:53', 'login', '38f0hjecbddroa8nhhvvds21v3');
INSERT INTO `t_logfile` VALUES ('742', 'emp01', 'root', '2017-09-22', '19:43', 'logout', '38f0hjecbddroa8nhhvvds21v3');
INSERT INTO `t_logfile` VALUES ('743', 'emp01', 'root', '2017-09-24', '13:49', 'login', 'qlp2vic1506sp9c839r562doa4');
INSERT INTO `t_logfile` VALUES ('744', 'emp01', 'root', '2017-09-24', '14:00', 'logout', 'qlp2vic1506sp9c839r562doa4');
INSERT INTO `t_logfile` VALUES ('745', 'emp01', 'root', '2017-09-24', '14:50', 'login', 'qlp2vic1506sp9c839r562doa4');
INSERT INTO `t_logfile` VALUES ('746', 'emp01', 'root', '2017-09-24', '16:23', 'logout', 'qlp2vic1506sp9c839r562doa4');
INSERT INTO `t_logfile` VALUES ('747', 'emp01', 'root', '2017-09-25', '13:41', 'login', 'ier5vleu8mrj0738egnmou6811');
INSERT INTO `t_logfile` VALUES ('748', 'emp01', 'root', '2017-09-25', '14:46', 'logout', 'ier5vleu8mrj0738egnmou6811');
INSERT INTO `t_logfile` VALUES ('749', 'emp01', 'root', '2017-09-25', '20:57', 'login', 'ier5vleu8mrj0738egnmou6811');
INSERT INTO `t_logfile` VALUES ('750', 'emp01', 'root', '2017-09-25', '23:18', 'logout', 'ier5vleu8mrj0738egnmou6811');
INSERT INTO `t_logfile` VALUES ('751', 'emp01', 'root', '2017-09-26', '15:45', 'login', '6eribmq9471be4j7dsjoelifc7');
INSERT INTO `t_logfile` VALUES ('752', 'emp01', 'root', '2017-09-26', '16:30', 'logout', '6eribmq9471be4j7dsjoelifc7');
INSERT INTO `t_logfile` VALUES ('753', 'emp01', 'root', '2017-09-27', '19:19', 'login', 'r99nbc9f86b6bsgeq6i1a3e6p3');
INSERT INTO `t_logfile` VALUES ('754', 'emp01', 'root', '2017-09-27', '19:54', 'logout', 'r99nbc9f86b6bsgeq6i1a3e6p3');
INSERT INTO `t_logfile` VALUES ('755', 'emp01', 'root', '2017-09-27', '21:49', 'login', 'r99nbc9f86b6bsgeq6i1a3e6p3');
INSERT INTO `t_logfile` VALUES ('756', 'emp01', 'root', '2017-09-27', '22:16', 'logout', 'r99nbc9f86b6bsgeq6i1a3e6p3');
INSERT INTO `t_logfile` VALUES ('757', 'emp01', 'root', '2017-09-28', '09:42', 'login', '79gd93fvh80kjll088mfbfdie2');
INSERT INTO `t_logfile` VALUES ('758', 'emp01', 'root', '2017-09-28', '09:54', 'logout', '79gd93fvh80kjll088mfbfdie2');
INSERT INTO `t_logfile` VALUES ('759', 'emp01', 'root', '2017-09-28', '13:26', 'login', '79gd93fvh80kjll088mfbfdie2');
INSERT INTO `t_logfile` VALUES ('760', 'emp01', 'root', '2017-09-28', '14:54', 'login', '8fr5v05ss7icimi0gs5d2i7mj7');
INSERT INTO `t_logfile` VALUES ('761', 'emp01', 'root', '2017-09-28', '16:38', 'logout', '8fr5v05ss7icimi0gs5d2i7mj7');
INSERT INTO `t_logfile` VALUES ('762', 'emp01', 'root', '2017-09-28', '18:27', 'login', '8fr5v05ss7icimi0gs5d2i7mj7');
INSERT INTO `t_logfile` VALUES ('763', 'emp01', 'root', '2017-09-28', '22:06', 'logout', '8fr5v05ss7icimi0gs5d2i7mj7');
INSERT INTO `t_logfile` VALUES ('764', 'emp01', 'root', '2017-09-28', '23:31', 'login', 'p6sdtlro7u5jisg0e00qe6a5a6');
INSERT INTO `t_logfile` VALUES ('765', 'emp01', 'root', '2017-09-28', '23:31', 'login', 'p6sdtlro7u5jisg0e00qe6a5a6');
INSERT INTO `t_logfile` VALUES ('766', 'emp01', 'root', '2017-09-28', '23:31', 'logout', 'p6sdtlro7u5jisg0e00qe6a5a6');
INSERT INTO `t_logfile` VALUES ('767', 'emp01', 'root', '2017-09-28', '23:31', 'login', 'p6sdtlro7u5jisg0e00qe6a5a6');
INSERT INTO `t_logfile` VALUES ('768', 'emp01', 'root', '2017-09-28', '23:53', 'logout', 'p6sdtlro7u5jisg0e00qe6a5a6');
INSERT INTO `t_logfile` VALUES ('769', 'emp01', 'root', '2017-09-29', '00:09', 'login', 'p6sdtlro7u5jisg0e00qe6a5a6');
INSERT INTO `t_logfile` VALUES ('770', 'emp01', 'root', '2017-09-29', '00:47', 'logout', 'p6sdtlro7u5jisg0e00qe6a5a6');
INSERT INTO `t_logfile` VALUES ('771', 'emp01', 'root', '2017-09-29', '12:29', 'login', 'hg2tiq02c4910405b429lofhf2');
INSERT INTO `t_logfile` VALUES ('772', 'emp01', 'root', '2017-09-29', '12:29', 'logout', 'hg2tiq02c4910405b429lofhf2');
INSERT INTO `t_logfile` VALUES ('773', 'emp01', 'root', '2017-09-29', '12:29', 'login', 'hg2tiq02c4910405b429lofhf2');
INSERT INTO `t_logfile` VALUES ('774', 'emp01', 'root', '2017-09-29', '13:06', 'logout', 'hg2tiq02c4910405b429lofhf2');
INSERT INTO `t_logfile` VALUES ('775', 'emp01', 'root', '2017-09-29', '13:08', 'login', 'hg2tiq02c4910405b429lofhf2');
INSERT INTO `t_logfile` VALUES ('776', 'emp01', 'root', '2017-09-29', '19:01', 'logout', 'hg2tiq02c4910405b429lofhf2');
INSERT INTO `t_logfile` VALUES ('777', 'emp09', 'user', '2017-09-29', '19:01', 'login', 'hg2tiq02c4910405b429lofhf2');
INSERT INTO `t_logfile` VALUES ('778', 'emp09', 'user', '2017-09-29', '19:10', 'logout', 'hg2tiq02c4910405b429lofhf2');
INSERT INTO `t_logfile` VALUES ('779', 'emp01', 'root', '2017-09-29', '19:14', 'login', 'hg2tiq02c4910405b429lofhf2');
INSERT INTO `t_logfile` VALUES ('780', 'emp01', 'root', '2017-09-29', '23:04', 'logout', 'hg2tiq02c4910405b429lofhf2');
INSERT INTO `t_logfile` VALUES ('781', 'emp01', 'root', '2017-09-30', '00:52', 'login', 'hg2tiq02c4910405b429lofhf2');
INSERT INTO `t_logfile` VALUES ('782', 'emp01', 'root', '2017-09-30', '01:36', 'logout', 'hg2tiq02c4910405b429lofhf2');
INSERT INTO `t_logfile` VALUES ('783', 'emp01', 'root', '2017-09-30', '13:13', 'login', '8k5er8eq7h31k6oiqe3bc5h6p5');
INSERT INTO `t_logfile` VALUES ('784', 'emp01', 'root', '2017-09-30', '16:44', 'logout', '8k5er8eq7h31k6oiqe3bc5h6p5');
INSERT INTO `t_logfile` VALUES ('785', 'emp01', 'root', '2017-09-30', '17:06', 'login', '8k5er8eq7h31k6oiqe3bc5h6p5');
INSERT INTO `t_logfile` VALUES ('786', 'emp01', 'root', '2017-09-30', '17:06', 'logout', '8k5er8eq7h31k6oiqe3bc5h6p5');
INSERT INTO `t_logfile` VALUES ('787', 'emp01', 'root', '2017-09-30', '17:06', 'login', '8k5er8eq7h31k6oiqe3bc5h6p5');
INSERT INTO `t_logfile` VALUES ('788', 'emp01', 'root', '2017-09-30', '22:11', 'logout', '8k5er8eq7h31k6oiqe3bc5h6p5');
INSERT INTO `t_logfile` VALUES ('789', 'emp09', 'user', '2017-09-30', '22:11', 'login', '8k5er8eq7h31k6oiqe3bc5h6p5');
INSERT INTO `t_logfile` VALUES ('790', 'emp09', 'user', '2017-09-30', '22:36', 'logout', '8k5er8eq7h31k6oiqe3bc5h6p5');
INSERT INTO `t_logfile` VALUES ('791', 'emp01', 'root', '2017-09-30', '22:36', 'login', '8k5er8eq7h31k6oiqe3bc5h6p5');
INSERT INTO `t_logfile` VALUES ('792', 'emp01', 'root', '2017-10-01', '01:23', 'logout', '8k5er8eq7h31k6oiqe3bc5h6p5');
INSERT INTO `t_logfile` VALUES ('793', 'emp01', 'root', '2017-10-01', '12:48', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('794', 'emp01', 'root', '2017-10-01', '13:41', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('795', 'emp01', 'root', '2017-10-01', '15:22', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('796', 'emp01', 'root', '2017-10-01', '21:10', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('797', 'emp01', 'root', '2017-10-01', '21:10', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('798', 'emp01', 'root', '2017-10-01', '21:30', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('799', 'emp02', 'admin', '2017-10-01', '21:31', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('800', 'emp02', 'admin', '2017-10-01', '21:33', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('801', 'emp01', 'root', '2017-10-01', '21:33', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('802', 'emp01', 'root', '2017-10-01', '23:04', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('803', 'emp09', 'user', '2017-10-01', '23:04', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('804', 'emp09', 'user', '2017-10-01', '23:14', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('805', 'emp01', 'root', '2017-10-01', '23:14', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('806', 'emp01', 'root', '2017-10-01', '23:15', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('807', 'emp02', 'admin', '2017-10-01', '23:15', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('808', 'emp02', 'admin', '2017-10-01', '23:15', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('809', 'emp01', 'root', '2017-10-01', '23:15', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('810', 'emp01', 'root', '2017-10-01', '23:23', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('811', 'emp09', 'user', '2017-10-01', '23:23', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('812', 'emp09', 'user', '2017-10-01', '23:23', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('813', 'emp01', 'root', '2017-10-01', '23:23', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('814', 'emp01', 'root', '2017-10-02', '00:58', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('815', 'emp09', 'user', '2017-10-02', '00:59', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('816', 'emp09', 'user', '2017-10-02', '01:01', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('817', 'emp01', 'root', '2017-10-02', '01:01', 'login', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('818', 'emp01', 'root', '2017-10-02', '02:51', 'logout', 'jckshpvn858j256tdcbvlidma5');
INSERT INTO `t_logfile` VALUES ('819', 'emp01', 'root', '2017-10-02', '11:52', 'login', 'k19belr1lr52kcfdel242lfb64');
INSERT INTO `t_logfile` VALUES ('820', 'emp01', 'root', '2017-10-02', '12:21', 'logout', 'k19belr1lr52kcfdel242lfb64');
INSERT INTO `t_logfile` VALUES ('821', 'emp01', 'root', '2017-10-02', '13:00', 'login', 'k19belr1lr52kcfdel242lfb64');
INSERT INTO `t_logfile` VALUES ('822', 'emp01', 'root', '2017-10-02', '13:07', 'logout', 'k19belr1lr52kcfdel242lfb64');
INSERT INTO `t_logfile` VALUES ('823', 'emp01', 'root', '2017-10-02', '14:26', 'login', 'k19belr1lr52kcfdel242lfb64');
INSERT INTO `t_logfile` VALUES ('824', 'emp01', 'root', '2017-10-02', '16:55', 'logout', 'k19belr1lr52kcfdel242lfb64');
INSERT INTO `t_logfile` VALUES ('825', 'emp01', 'root', '2017-10-02', '16:56', 'login', 'k19belr1lr52kcfdel242lfb64');
INSERT INTO `t_logfile` VALUES ('826', 'emp01', 'root', '2017-10-02', '17:32', 'logout', 'k19belr1lr52kcfdel242lfb64');
INSERT INTO `t_logfile` VALUES ('827', 'emp01', 'root', '2017-10-02', '18:22', 'login', 'k19belr1lr52kcfdel242lfb64');
INSERT INTO `t_logfile` VALUES ('828', 'emp01', 'root', '2017-10-03', '04:33', 'logout', 'k19belr1lr52kcfdel242lfb64');
INSERT INTO `t_logfile` VALUES ('829', 'emp09', 'user', '2017-10-03', '04:33', 'login', 'k19belr1lr52kcfdel242lfb64');
INSERT INTO `t_logfile` VALUES ('830', 'emp09', 'user', '2017-10-03', '05:13', 'logout', 'k19belr1lr52kcfdel242lfb64');
INSERT INTO `t_logfile` VALUES ('831', 'emp01', 'root', '2017-10-03', '10:53', 'login', 'f7296mg6s7en7gcjuh2mkvo8h7');
INSERT INTO `t_logfile` VALUES ('832', 'emp01', 'root', '2017-10-03', '12:07', 'logout', 'f7296mg6s7en7gcjuh2mkvo8h7');
INSERT INTO `t_logfile` VALUES ('833', 'emp01', 'root', '2017-10-03', '12:30', 'login', 'f7296mg6s7en7gcjuh2mkvo8h7');
INSERT INTO `t_logfile` VALUES ('834', 'emp01', 'root', '2017-10-04', '04:12', 'logout', 'f7296mg6s7en7gcjuh2mkvo8h7');
INSERT INTO `t_logfile` VALUES ('835', 'emp01', 'root', '2017-10-04', '04:13', 'login', 'f7296mg6s7en7gcjuh2mkvo8h7');
INSERT INTO `t_logfile` VALUES ('836', 'emp01', 'root', '2017-10-04', '04:13', 'logout', 'f7296mg6s7en7gcjuh2mkvo8h7');
INSERT INTO `t_logfile` VALUES ('837', 'emp01', 'root', '2017-10-04', '12:59', 'login', 'hj2bmia3kkbi0ge19prfogmn96');
INSERT INTO `t_logfile` VALUES ('838', 'emp01', 'root', '2017-10-05', '02:29', 'logout', 'hj2bmia3kkbi0ge19prfogmn96');
INSERT INTO `t_logfile` VALUES ('839', 'emp01', 'root', '2017-10-05', '03:04', 'login', 'hj2bmia3kkbi0ge19prfogmn96');
INSERT INTO `t_logfile` VALUES ('840', 'emp01', 'root', '2017-10-05', '06:48', 'logout', 'hj2bmia3kkbi0ge19prfogmn96');
INSERT INTO `t_logfile` VALUES ('841', 'emp01', 'root', '2017-10-05', '09:37', 'login', 've6s9vv0euotu38hgkse6s81q3');
INSERT INTO `t_logfile` VALUES ('842', 'emp01', 'root', '2017-10-05', '10:11', 'logout', 've6s9vv0euotu38hgkse6s81q3');
INSERT INTO `t_logfile` VALUES ('843', 'emp01', 'root', '2017-10-05', '12:50', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('844', 'emp01', 'root', '2017-10-05', '12:52', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('845', 'emp01', 'root', '2017-10-05', '13:36', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('846', 'emp01', 'root', '2017-10-05', '13:58', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('847', 'emp09', 'user', '2017-10-05', '13:58', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('848', 'emp09', 'user', '2017-10-05', '14:02', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('849', 'emp01', 'root', '2017-10-05', '14:02', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('850', 'emp01', 'root', '2017-10-05', '14:35', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('851', 'emp01', 'root', '2017-10-05', '14:35', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('852', 'emp01', 'root', '2017-10-05', '14:41', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('853', 'emp01', 'root', '2017-10-05', '14:44', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('854', 'emp01', 'root', '2017-10-05', '14:48', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('855', 'emp01', 'root', '2017-10-05', '14:52', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('856', 'emp01', 'root', '2017-10-05', '14:52', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('857', 'emp02', 'admin', '2017-10-05', '14:53', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('858', 'emp02', 'admin', '2017-10-05', '14:57', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('859', 'emp14', 'user', '2017-10-05', '14:57', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('860', 'emp14', 'user', '2017-10-05', '14:57', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('861', 'emp01', 'root', '2017-10-05', '14:58', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('862', 'emp01', 'root', '2017-10-05', '15:02', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('863', 'emp01', 'root', '2017-10-05', '15:13', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('864', 'emp01', 'root', '2017-10-05', '15:37', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('865', 'emp01', 'root', '2017-10-05', '15:45', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('866', 'emp01', 'root', '2017-10-05', '15:53', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('867', 'emp01', 'root', '2017-10-05', '15:54', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('868', 'emp01', 'root', '2017-10-05', '16:25', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('869', 'emp02', 'admin', '2017-10-05', '16:26', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('870', 'emp02', 'admin', '2017-10-05', '16:28', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('871', 'emp09', 'user', '2017-10-05', '16:28', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('872', 'emp09', 'user', '2017-10-05', '16:43', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('873', 'emp01', 'root', '2017-10-05', '16:43', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('874', 'emp01', 'root', '2017-10-05', '17:15', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('875', 'emp01', 'root', '2017-10-05', '17:15', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('876', 'emp01', 'root', '2017-10-05', '17:15', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('877', 'emp09', 'user', '2017-10-05', '17:15', 'login', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('878', 'emp09', 'user', '2017-10-05', '17:58', 'logout', '67sdpm7im90vpg09q9amj6osc0');
INSERT INTO `t_logfile` VALUES ('879', 'emp01', 'root', '2017-10-05', '20:37', 'login', 'uhlgf42j6t92oo5ji9ces46ga0');
INSERT INTO `t_logfile` VALUES ('880', 'emp01', 'root', '2017-10-06', '05:48', 'logout', 'uhlgf42j6t92oo5ji9ces46ga0');
INSERT INTO `t_logfile` VALUES ('881', 'emp01', 'root', '2017-10-06', '09:47', 'login', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('882', 'emp01', 'root', '2017-10-06', '09:54', 'logout', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('883', 'emp01', 'root', '2017-10-06', '09:54', 'login', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('884', 'emp01', 'root', '2017-10-06', '10:03', 'logout', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('885', 'emp09', 'user', '2017-10-06', '10:03', 'login', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('886', 'emp09', 'user', '2017-10-06', '10:04', 'logout', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('887', 'emp01', 'root', '2017-10-06', '10:04', 'login', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('888', 'emp01', 'root', '2017-10-06', '10:07', 'logout', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('889', 'emp01', 'root', '2017-10-06', '10:07', 'login', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('890', 'emp01', 'root', '2017-10-06', '10:07', 'logout', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('891', 'emp09', 'user', '2017-10-06', '10:07', 'login', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('892', 'emp09', 'user', '2017-10-06', '10:08', 'logout', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('893', 'emp01', 'root', '2017-10-06', '10:08', 'login', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('894', 'emp01', 'root', '2017-10-06', '10:11', 'logout', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('895', 'emp09', 'user', '2017-10-06', '10:11', 'login', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('896', 'emp09', 'user', '2017-10-06', '10:13', 'logout', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('897', 'emp01', 'root', '2017-10-06', '10:13', 'login', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('898', 'emp01', 'root', '2017-10-06', '10:13', 'logout', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('899', 'emp09', 'user', '2017-10-06', '10:13', 'login', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('900', 'emp09', 'user', '2017-10-06', '10:14', 'logout', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('901', 'emp01', 'root', '2017-10-06', '10:14', 'login', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('902', 'emp01', 'root', '2017-10-06', '10:31', 'logout', '323fcf52cvm50k1ul39gci4s21');
INSERT INTO `t_logfile` VALUES ('903', 'emp01', 'root', '2017-10-06', '11:09', 'login', '79ff02igohh401m7prio7ohlv1');
INSERT INTO `t_logfile` VALUES ('904', 'emp01', 'root', '2017-10-06', '11:11', 'login', 'e861u2unbd1c6joag25laohhd5');
INSERT INTO `t_logfile` VALUES ('905', 'emp01', 'root', '2017-10-06', '11:12', 'login', '28jjfhb65jf5g372uueahed3b1');
INSERT INTO `t_logfile` VALUES ('906', 'emp01', 'root', '2017-10-06', '11:12', 'logout', '28jjfhb65jf5g372uueahed3b1');
INSERT INTO `t_logfile` VALUES ('907', 'emp01', 'root', '2017-10-06', '11:12', 'login', '28jjfhb65jf5g372uueahed3b1');
INSERT INTO `t_logfile` VALUES ('908', 'emp01', 'root', '2017-10-06', '11:13', 'login', 'q1sm9hnnmlm1comgbr6bhv4307');
INSERT INTO `t_logfile` VALUES ('909', 'emp01', 'root', '2017-10-06', '11:14', 'login', 'cjol0ojaa9b0bpok7ampn2jf44');
INSERT INTO `t_logfile` VALUES ('910', 'emp01', 'root', '2017-10-06', '11:16', 'login', 'h59tq7tjh8dde15r3uu7bnlq32');
INSERT INTO `t_logfile` VALUES ('911', 'emp01', 'root', '2017-10-06', '11:18', 'logout', 'h59tq7tjh8dde15r3uu7bnlq32');
INSERT INTO `t_logfile` VALUES ('912', 'emp01', 'root', '2017-10-06', '11:18', 'login', 'h59tq7tjh8dde15r3uu7bnlq32');
INSERT INTO `t_logfile` VALUES ('913', 'emp01', 'root', '2017-10-06', '11:21', 'login', 'oektspkto9so70u039q5dsb295');
INSERT INTO `t_logfile` VALUES ('914', 'emp01', 'root', '2017-10-06', '11:21', 'login', 'tbp4nim1tn3rg3i5ksgjo9c8l3');
INSERT INTO `t_logfile` VALUES ('915', 'emp01', 'root', '2017-10-06', '11:27', 'logout', 'tbp4nim1tn3rg3i5ksgjo9c8l3');
INSERT INTO `t_logfile` VALUES ('916', 'emp01', 'root', '2017-10-06', '11:27', 'login', 'u7n6lh7gbfgjmj8vv6viui3fs2');
INSERT INTO `t_logfile` VALUES ('917', 'emp01', 'root', '2017-10-06', '11:28', 'login', 'cstu7v0qeh2gfipqgckrv3tpd3');
INSERT INTO `t_logfile` VALUES ('918', 'emp01', 'root', '2017-10-06', '11:28', 'logout', 'cstu7v0qeh2gfipqgckrv3tpd3');
INSERT INTO `t_logfile` VALUES ('919', 'emp01', 'root', '2017-10-06', '11:28', 'login', 'k9qgp9ua9r7vej9ks0gkvhhm13');
INSERT INTO `t_logfile` VALUES ('920', 'emp01', 'root', '2017-10-06', '11:30', 'logout', 'k9qgp9ua9r7vej9ks0gkvhhm13');
INSERT INTO `t_logfile` VALUES ('921', 'emp01', 'root', '2017-10-06', '11:30', 'login', 'k9qgp9ua9r7vej9ks0gkvhhm13');
INSERT INTO `t_logfile` VALUES ('922', 'emp01', 'root', '2017-10-06', '11:31', 'logout', 'k9qgp9ua9r7vej9ks0gkvhhm13');
INSERT INTO `t_logfile` VALUES ('923', 'emp09', 'user', '2017-10-06', '11:31', 'login', 'k9qgp9ua9r7vej9ks0gkvhhm13');
INSERT INTO `t_logfile` VALUES ('924', 'emp09', 'user', '2017-10-06', '11:31', 'logout', 'k9qgp9ua9r7vej9ks0gkvhhm13');
INSERT INTO `t_logfile` VALUES ('925', 'emp01', 'root', '2017-10-06', '13:18', 'login', 'fo66e5pg7c9uckkpa2sd6f9056');
INSERT INTO `t_logfile` VALUES ('926', 'emp01', 'root', '2017-10-06', '14:01', 'logout', 'fo66e5pg7c9uckkpa2sd6f9056');
INSERT INTO `t_logfile` VALUES ('927', 'emp01', 'root', '2017-10-06', '14:50', 'login', '3m2dqhn45fg0fenriahesg68c3');
INSERT INTO `t_logfile` VALUES ('928', 'emp01', 'root', '2017-10-06', '15:33', 'login', '6dtgu0r4kn8871daa0fksvrtt2');
INSERT INTO `t_logfile` VALUES ('929', 'emp01', 'root', '2017-10-06', '17:52', 'logout', '6dtgu0r4kn8871daa0fksvrtt2');
INSERT INTO `t_logfile` VALUES ('930', 'emp01', 'root', '2017-10-06', '19:04', 'login', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('931', 'emp01', 'root', '2017-10-06', '20:43', 'logout', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('932', 'emp01', 'root', '2017-10-06', '20:43', 'login', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('933', 'emp01', 'root', '2017-10-06', '22:08', 'logout', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('934', 'emp01', 'root', '2017-10-07', '00:25', 'login', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('935', 'emp01', 'root', '2017-10-07', '00:37', 'logout', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('936', 'emp01', 'root', '2017-10-07', '00:55', 'login', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('937', 'emp01', 'root', '2017-10-07', '00:56', 'logout', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('938', 'emp01', 'root', '2017-10-07', '02:52', 'login', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('939', 'emp01', 'root', '2017-10-07', '02:53', 'logout', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('940', 'emp01', 'root', '2017-10-07', '03:41', 'login', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('941', 'emp01', 'root', '2017-10-07', '03:42', 'logout', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('942', 'emp01', 'root', '2017-10-07', '03:44', 'login', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('943', 'emp01', 'root', '2017-10-07', '03:48', 'logout', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('944', 'emp01', 'root', '2017-10-07', '03:54', 'login', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('945', 'emp01', 'root', '2017-10-07', '05:14', 'logout', 'v3g06npmcsl8v1lhted0c0i1b7');
INSERT INTO `t_logfile` VALUES ('946', 'emp01', 'root', '2017-10-07', '23:15', 'login', '443o5io606nl42e5ethqs9ir20');
INSERT INTO `t_logfile` VALUES ('947', 'emp01', 'root', '2017-10-07', '23:15', 'logout', '443o5io606nl42e5ethqs9ir20');
INSERT INTO `t_logfile` VALUES ('948', 'emp01', 'root', '2017-10-07', '23:15', 'login', '443o5io606nl42e5ethqs9ir20');
INSERT INTO `t_logfile` VALUES ('949', 'emp01', 'root', '2017-10-07', '23:34', 'login', '59qj5r9aenm0rcarpqpgefit62');
INSERT INTO `t_logfile` VALUES ('950', 'emp01', 'root', '2017-10-08', '02:53', 'logout', '59qj5r9aenm0rcarpqpgefit62');
INSERT INTO `t_logfile` VALUES ('951', 'emp01', 'root', '2017-10-08', '12:35', 'login', '5jao6na7fqt6jldme65epa4he7');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `P_Number` int(11) NOT NULL AUTO_INCREMENT,
  `P_ID` char(50) NOT NULL,
  `P_Name` varchar(150) NOT NULL,
  `P_Price` double NOT NULL,
  `B_ID` char(50) NOT NULL,
  `P_Detail` varchar(512) NOT NULL,
  `SG_ID` char(50) NOT NULL,
  `P_Status` char(10) NOT NULL,
  `P_Img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`P_Number`,`P_ID`),
  UNIQUE KEY `P_ID` (`P_ID`) USING BTREE,
  KEY `SG_ID` (`SG_ID`),
  KEY `B_ID` (`B_ID`),
  CONSTRAINT `t_product_ibfk_1` FOREIGN KEY (`SG_ID`) REFERENCES `t_sub_group_product` (`SG_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_product_ibfk_2` FOREIGN KEY (`B_ID`) REFERENCES `t_brand` (`B_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('5', 'P05', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', '4250', 'B04', 'GpuSpeed : 1342,Memory : 2 GB,Ram : DDR5,Buswidth : 128 bit, 1 dvi hdmi display port,', 'SG29', '1', '20171005125137.jpg');
INSERT INTO `t_product` VALUES ('6', 'P06', 'AMD AM3+ FX-6300 3.5 Ghz.', '3990', 'B01', 'Socket AM3+\r\nCpu/Thread : 6/6\r\nFrequency 3.5 Ghz.', 'SG01', '1', '20170717013703.jpg');
INSERT INTO `t_product` VALUES ('7', 'P07', 'INTEL 1151 CORE I3 7100 3.9 Ghz.', '4590', 'B02', 'Socket 1151,Cpu/Thread : 2/4,Frequency 3.9 Ghz.', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('8', 'P08', 'AMD AM3+ FX-8350 4.0 Ghz.', '6660', 'B01', 'Socket AM3+,Cpu/Thread : 8/8,Frequency 4.0 Ghz.', 'SG01', '1', '20170915120208.png');
INSERT INTO `t_product` VALUES ('9', 'P09', 'INTEL 1151 CORE I5 6400 2.7 GHz', '6390', 'B02', 'Socket : 1151, CPU Core / Thread : 4/4, Frequency : 2.70 GHz, Turbo : 3.30 GHz, CPU Bus : 8 GT/S, Architecture : 14nm, Cache L2 : 4 X 256 KB, Cache L3 : 6 MB, Power Peak : 65 W', 'SG05', '1', '20171006164945.jpg');
INSERT INTO `t_product` VALUES ('10', 'P10', 'MSI VGA GTX1080TI GAMING X 11G', '35900', 'B03', 'Stream Processors:	\r\n3584 Units\r\nMemory Clock:	\r\n11124 MHz (OC Mode)\r\nMemory Size:	\r\n11GB\r\nMemory Interface:	\r\n352-Bit\r\nMemory Type:	\r\nGDDR5X\r\nInterface:	\r\nPCI Express 3.0 x16\r\nOpenGL:	\r\nOpenGL® 4.5\r\nHDMI:	\r\n2 x HDMI v2.0\r\nDisplayPort:	\r\n2 x DisplayPort v1.4\r\nDVI:	\r\n1 x DL-DVI-D', 'SG32', '1', null);
INSERT INTO `t_product` VALUES ('12', 'P12', 'ASUS A68HM-K', '1640', 'B05', 'Model\r\nBrand : ASUS\r\nModel : A68HM-K\r\nSupport CPU\r\nSocket : FM2+\r\nCPU Generation : AMD A Series\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : A68\r\nCPU Series : Athlon', 'SG10', '1', null);
INSERT INTO `t_product` VALUES ('13', 'P13', 'ASUS A88XM-E USB 3.1', '2780', 'B05', 'Model\r\nBrand : ASUS\r\nModel : A88XM-E USB 3.1\r\nSupport CPU\r\nSocket : FM2+\r\nCPU Generation : AMD FX\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : A88\r\nCPU Series : -\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : 1333 / 1600 / 2133 / 1866 / 2400 (OC)', 'SG10', '1', null);
INSERT INTO `t_product` VALUES ('19', 'P19', 'A4-7300 3.8 GHz', '1360', 'B01', 'Socket : FM2\r\nCPU Core / Thread : 2/2\r\nFrequency : 3.80 GHz\r\nTurbo : 4.00 GHz\r\nCPU Bus : 1866 GT/S\r\nArchitecture : 32nm\r\nCache L2 : 1000 KB\r\nCache L3 : - MB\r\nPower Peak : 65 W', 'SG02', '1', null);
INSERT INTO `t_product` VALUES ('20', 'P20', 'A4-6300 3.7 GHz', '1140', 'B01', 'Socket : FM2\r\nCPU Core / Thread : 2/2\r\nFrequency : 3.70 GHz\r\nTurbo : 3.90 GHz\r\nCPU Bus : 1600 GT/S\r\nArchitecture : 32nm\r\nCache L2 : 1 KB\r\nCache L3 : - MB\r\nPower Peak : 65 W', 'SG02', '1', null);
INSERT INTO `t_product` VALUES ('21', 'P21', 'A6-6420K 3.5 GHz', '1670', 'B01', 'Socket : FM2\r\nCPU Core / Thread : 2/2\r\nFrequency : 4.00 GHz\r\nTurbo : 4.20 GHz\r\nCPU Bus : 5 GT/S\r\nArchitecture : 32nm\r\nCache L2 : 1 KB\r\nCache L3 : - MB\r\nPower Peak : 65 W', 'SG02', '1', null);
INSERT INTO `t_product` VALUES ('23', 'P23', 'A10 7890K BLACK EDITION', '3980', 'B01', 'Socket : FM2+\r\nCPU Core / Thread : 4/4\r\nFrequency : 4.1 GHz\r\nTurbo : 4.3 GHz\r\nCPU Bus : N/A GT/S\r\nArchitecture : N/Anm\r\nCache L2 : 4 KB\r\nCache L3 : 4 MB\r\nPower Peak : 95 W', 'SG03', '1', null);
INSERT INTO `t_product` VALUES ('24', 'P24', 'A10-7860K QUIET COOLER 3.6 GHz', '3500', 'B01', 'Socket : FM2\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.6 GHz\r\nTurbo : 4 GHz\r\nCPU Bus : N/A GT/S\r\nArchitecture : N/Anm\r\nCache L2 : 2 X 2 KB\r\nCache L3 : 4 MB\r\nPower Peak : 65 W', 'SG03', '1', null);
INSERT INTO `t_product` VALUES ('25', 'P25', 'A10-7870K 3.9 GHz', '3880', 'B01', 'Socket : FM2+\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.9 GHz\r\nTurbo : 4.1 GHz\r\nCPU Bus : 2133 GT/S\r\nArchitecture : 28nm\r\nCache L2 : 2 X 2 KB\r\nCache L3 : - MB\r\nPower Peak : 95 W', 'SG03', '1', null);
INSERT INTO `t_product` VALUES ('26', 'P26', 'A6-7400K 3.5 GHz', '1740', 'B01', 'Socket : FM2+\r\nCPU Core / Thread : 2/2\r\nFrequency : 3.50 GHz\r\nTurbo : 3.90 GHz\r\nCPU Bus : 1866 GT/S\r\nArchitecture : 28nm\r\nCache L2 : 1 KB\r\nCache L3 : - MB\r\nPower Peak : 65 W', 'SG03', '1', null);
INSERT INTO `t_product` VALUES ('27', 'P27', 'A6-7470K BLACK EDITION', '1990', 'B01', 'Socket : FM2+\r\nCPU Core / Thread : 2/2\r\nFrequency : 3.7 GHz\r\nTurbo : 4 GHz\r\nCPU Bus : N/A GT/S\r\nArchitecture : N/Anm\r\nCache L2 : 1 KB\r\nCache L3 : 1 MB\r\nPower Peak : 65 W', 'SG03', '1', null);
INSERT INTO `t_product` VALUES ('28', 'P28', 'A8-7650K QUIET COOLER 3.3 GHz', '2890', 'B01', 'Socket : FM2+\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.7 GHz\r\nTurbo : 4 GHz\r\nCPU Bus : N/A GT/S\r\nArchitecture : N/Anm\r\nCache L2 : 4 KB\r\nCache L3 : 4 MB\r\nPower Peak : 95 W', 'SG03', '1', null);
INSERT INTO `t_product` VALUES ('29', 'P29', 'A8-7670K QUIET COOLER 3.6 GHz', '3590', 'B01', 'Socket : FM2+\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.6 GHz\r\nTurbo : 3.9 GHz\r\nCPU Bus : N/A GT/S\r\nArchitecture : N/Anm\r\nCache L2 : 4 KB\r\nCache L3 : 4 MB\r\nPower Peak : 95 W', 'SG03', '1', null);
INSERT INTO `t_product` VALUES ('30', 'P30', 'AMD FM2+ ATHLON X4 845 QUIET COOLER 3.5 GHz', '1690', 'B01', 'Socket : FM2+\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.2 GHz\r\nTurbo : 4 GHz\r\nCPU Bus : N/A GT/S\r\nArchitecture : N/Anm\r\nCache L2 : 4 KB\r\nCache L3 : 4 MB\r\nPower Peak : 95 W', 'SG03', '1', null);
INSERT INTO `t_product` VALUES ('31', 'P31', 'ATHLON X4 870K 3.7 GHz', '2550', 'B01', 'Socket : FM2+\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.5 GHz\r\nTurbo : 3.5 GHz\r\nCPU Bus : N/A GT/S\r\nArchitecture : N/Anm\r\nCache L2 : N/A KB\r\nCache L3 : N/A MB\r\nPower Peak : N/A W', 'SG03', '1', null);
INSERT INTO `t_product` VALUES ('32', 'P32', 'X4 860K ATHLON QUIET COOLER', '2150', 'B01', 'Socket : FM2+\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.7 GHz\r\nTurbo : 4 GHz\r\nCPU Bus : N/A GT/S\r\nArchitecture : N/Anm\r\nCache L2 : 4 KB\r\nCache L3 : 4 MB\r\nPower Peak : 95 W', 'SG03', '1', null);
INSERT INTO `t_product` VALUES ('33', 'P33', 'X4 880K ATHLON QUIET COOLER', '2970', 'B01', 'Socket : FM2+\r\nCPU Core / Thread : 4/4\r\nFrequency : 4 GHz\r\nTurbo : 4.2 GHz\r\nCPU Bus : N/A GT/S\r\nArchitecture : N/Anm\r\nCache L2 : 4 KB\r\nCache L3 : 4 MB\r\nPower Peak : 95 W', 'SG03', '1', null);
INSERT INTO `t_product` VALUES ('34', 'P34', 'FX-6300 3.5 GHz', '3490', 'B01', 'Socket : AM3+\r\nCPU Core / Thread : 6/6\r\nFrequency : 3.50 GHz\r\nTurbo : 4.10 GHz\r\nCPU Bus : 2600 GT/S\r\nArchitecture : 32nm\r\nCache L2 : 6 KB\r\nCache L3 : 8 MB\r\nPower Peak : 95 W', 'SG01', '1', '20170826030516.jpg');
INSERT INTO `t_product` VALUES ('35', 'P35', 'FX-8300 3.3 GHz', '3980', 'B01', 'Socket : AM3/AM3+\r\nCPU Core / Thread : N/A\r\nFrequency : 3.5 GHz\r\nTurbo : 3.6 GHz\r\nCPU Bus : 5 GT/S\r\nArchitecture : 22nm\r\nCache L2 : N/A KB\r\nCache L3 : N/A MB\r\nPower Peak : N/A W', 'SG01', '1', '20170916061635.jpg');
INSERT INTO `t_product` VALUES ('36', 'P36', 'FX-8320 3.5 GHz', '4490', 'B01', 'Socket : AM3+\r\nCPU Core / Thread : 8/8\r\nFrequency : 3.50 GHz\r\nTurbo : 4.00 GHz\r\nCPU Bus : 2600 GT/S\r\nArchitecture : 32nm\r\nCache L2 : 8 KB\r\nCache L3 : 8 MB\r\nPower Peak : 125 W', 'SG01', '1', null);
INSERT INTO `t_product` VALUES ('37', 'P37', 'FX-8320E 3.2 GHz', '4490', 'B01', 'Socket : AM3+\r\nCPU Core / Thread : 8/8\r\nFrequency : 3.20 GHz\r\nTurbo : 4.00 GHz\r\nCPU Bus : 1866 GT/S\r\nArchitecture : 32nm\r\nCache L2 : 4x2 KB\r\nCache L3 : 8 MB\r\nPower Peak : 95 W', 'SG01', '1', null);
INSERT INTO `t_product` VALUES ('38', 'P38', 'FX-8350 4.0 GHz', '5290', 'B01', 'Socket : AM3+\r\nCPU Core / Thread : 8/8\r\nFrequency : 4.00 GHz\r\nTurbo : 4.20 GHz\r\nCPU Bus : - GT/S\r\nArchitecture : 32nm\r\nCache L2 : 8 KB\r\nCache L3 : 8 MB\r\nPower Peak : 125 W', 'SG01', '1', null);
INSERT INTO `t_product` VALUES ('39', 'P39', 'FX-8370 4.0 GHz', '5850', 'B01', 'Socket : AM3+\r\nCPU Core / Thread : 8/8\r\nFrequency : 4 GHz\r\nTurbo : 4.3 GHz\r\nCPU Bus : 1866 GT/S\r\nArchitecture : 32nm\r\nCache L2 : 4 X 2 KB\r\nCache L3 : 8 MB\r\nPower Peak : 125 W', 'SG01', '1', null);
INSERT INTO `t_product` VALUES ('40', 'P40', 'FX-9370 4.4 GHz', '7790', 'B01', 'Socket : AM3+\r\nCPU Core / Thread : 8/8\r\nFrequency : 4.40 GHz\r\nTurbo : 4.70 GHz\r\nCPU Bus : 1866 GT/S\r\nArchitecture : 32nm\r\nCache L2 : 8 KB\r\nCache L3 : 8 MB\r\nPower Peak : 220 W', 'SG01', '1', null);
INSERT INTO `t_product` VALUES ('41', 'P41', 'CELERON G1840 2.8 GHz', '1290', 'B02', 'Socket : 1150\r\nCPU Core / Thread : 2/2\r\nFrequency : 2.80 GHz\r\nTurbo : - GHz\r\nCPU Bus : 5 GT/S\r\nArchitecture : 22nm\r\nCache L2 : 2 X 256 KB\r\nCache L3 : 2 MB\r\nPower Peak : 53 W', 'SG04', '1', null);
INSERT INTO `t_product` VALUES ('42', 'P42', 'CORE I3 4170 3.7 GHz', '4050', 'B02', 'Socket : 1150\r\nCPU Core / Thread : 2/4\r\nFrequency : 3.70 GHz\r\nTurbo : - GHz\r\nCPU Bus : 5 GT/S\r\nArchitecture : 22nm\r\nCache L2 : 2 X 256 KB\r\nCache L3 : 3 MB\r\nPower Peak : 54 W', 'SG04', '1', null);
INSERT INTO `t_product` VALUES ('43', 'P43', 'PENTIUM G3250 3.2 GHz', '1890', 'B02', 'Socket : 1150\r\nCPU Core / Thread : 2/2\r\nFrequency : 3.20 GHz\r\nTurbo : - GHz\r\nCPU Bus : 5 GT/S\r\nArchitecture : 22nm\r\nCache L2 : 2 X 256 KB\r\nCache L3 : 3 MB\r\nPower Peak : 53 W', 'SG04', '1', null);
INSERT INTO `t_product` VALUES ('44', 'P44', 'PENTIUM G3260 3.30 GHz', '1980', 'B02', 'Socket : 1150\r\nCPU Core / Thread : 2/2\r\nFrequency : 3.3 GHz\r\nTurbo : - GHz\r\nCPU Bus : 1333 GT/S\r\nArchitecture : 22nm\r\nCache L2 : 2 X 256 KB\r\nCache L3 : 3 MB\r\nPower Peak : 53 W', 'SG04', '1', null);
INSERT INTO `t_product` VALUES ('45', 'P45', 'CORE I7 6800K 3.4 GHz (NO FAN)', '16400', 'B02', 'Socket : 2011\r\nCPU Core / Thread : N/A\r\nFrequency : 3.4 GHz\r\nTurbo : N/A GHz\r\nCPU Bus : N/A GT/S\r\nArchitecture : N/Anm\r\nCache L2 : 4 KB\r\nCache L3 : 4 MB\r\nPower Peak : 95 W', 'SG07', '1', null);
INSERT INTO `t_product` VALUES ('46', 'P46', 'CORE I7 6900K 3.20 GHz (NO FAN)', '40900', 'B02', 'Socket : 2011\r\nCPU Core / Thread : 8/16\r\nFrequency : 3.2 GHz\r\nTurbo : 3.7 GHz\r\nCPU Bus : N/A GT/S\r\nArchitecture : N/Anm\r\nCache L2 : N/A KB\r\nCache L3 : N/A MB\r\nPower Peak : 140 W', 'SG07', '1', null);
INSERT INTO `t_product` VALUES ('47', 'P47', 'CORE I7 6950X 3.0 GHz', '62900', 'B02', 'CORE I7 6950X 3.0 GHz', 'SG07', '1', null);
INSERT INTO `t_product` VALUES ('48', 'P48', 'XEON E5-2620 V4 2.1 GHz', '17400', 'B02', 'Socket : 2011\r\nCPU Core / Thread : 8/16\r\nFrequency : 2.10 GHz\r\nTurbo : 3.00 GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14 Nm\r\nCache L2 : 256 KB\r\nCache L3 : 20 MB\r\nPower Peak : 95 W', 'SG07', '1', null);
INSERT INTO `t_product` VALUES ('49', 'P49', 'CELERON G3930 2.9 GHz', '1590', 'B01', 'Socket : 1151\r\nCPU Core / Thread : 2/2\r\nFrequency : 2.90 GHz\r\nTurbo : -\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : -\r\nCache L3 : 2 MB\r\nPower Peak : 51 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('50', 'P50', 'CORE I3 6100 3.7 GHz', '3990', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 2/4\r\nFrequency : 3.70 GHz\r\nTurbo : - GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : 2 X 256 KB\r\nCache L3 : 3 MB\r\nPower Peak : 47 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('51', 'P51', 'CORE I3 7100 3.9 GHz', '4240', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 2/4\r\nFrequency : 3.90 GHz\r\nTurbo : -\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : -\r\nCache L3 : 3 MB\r\nPower Peak : 51 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('52', 'P52', 'CORE I3 7300 4.0 GHz', '5590', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 2/4\r\nFrequency : 4.00 GHz\r\nTurbo : -\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : -\r\nCache L3 : 4 MB\r\nPower Peak : 51 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('53', 'P53', 'CORE I3 7350K 4.20 GHz (NO FAN)', '6790', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 2/4\r\nFrequency : 4.20 GHz\r\nTurbo : -\r\nCPU Bus : 8 GT GT/S\r\nArchitecture : 14 Nm\r\nCache L2 : 2 X 256 KB\r\nCache L3 : 4 MB\r\nPower Peak : 60 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('54', 'P54', 'CORE I5 6400 2.7 GHz', '6390', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/4\r\nFrequency : 2.70 GHz\r\nTurbo : 3.30 GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : 4 X 256 KB\r\nCache L3 : 6 MB\r\nPower Peak : 65 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('55', 'P55', 'CORE I5 6402P 2.8 GHz', '6290', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/4\r\nFrequency : 2.8 GHz\r\nTurbo : 3.4 GHz\r\nCPU Bus : 2133 GT/S\r\nArchitecture : 14nm\r\nCache L2 : 2 X 256 KB\r\nCache L3 : 6 MB\r\nPower Peak : 65 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('56', 'P56', 'CORE I5 6500 3.2 GHz', '7250', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.20 GHz\r\nTurbo : 3.60 GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : 4 X 256 KB\r\nCache L3 : 6 MB\r\nPower Peak : 65 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('57', 'P57', 'CORE I5 6600 3.3 GHz', '7990', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.30 GHz\r\nTurbo : 3.90 GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : 4 X 256 KB\r\nCache L3 : 6 MB\r\nPower Peak : 65 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('58', 'P58', 'CORE I5 6600K 3.5 GHz (NO FAN)', '8150', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.50 GHz\r\nTurbo : 3.90 GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : 4 X 256 KB\r\nCache L3 : 6 MB\r\nPower Peak : 91 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('59', 'P59', 'CORE I5 7400 3.0 GHz', '6590', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.00 GHz\r\nTurbo : 3.50 GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : -\r\nCache L3 : 6 MB\r\nPower Peak : 65 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('60', 'P60', 'CORE I5 7500 3.4 GHz', '7290', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.40 GHz\r\nTurbo : 3.80 GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : -\r\nCache L3 : 6 MB\r\nPower Peak : 65 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('61', 'P61', 'CORE I5 7600 3.5 GHz', '8390', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.50 GHz\r\nTurbo : 4.10 GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : -\r\nCache L3 : 6 MB\r\nPower Peak : 65 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('62', 'P62', 'CORE I5 7600K 3.8 GHz (NO FAN)', '9290', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.80 GHz\r\nTurbo : 4.20 GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : -\r\nCache L3 : 6 MB\r\nPower Peak : 91 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('63', 'P63', 'CORE I7 6700 3.4 GHz', '11190', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/8\r\nFrequency : 3.40 GHz\r\nTurbo : 4.00 GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : 4 X 256 KB\r\nCache L3 : 8 MB\r\nPower Peak : 65 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('64', 'P64', 'CORE I7 6700K 4.0 GHz (NO FAN)', '11690', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/8\r\nFrequency : 4.00 GHz\r\nTurbo : 4.20 GHz\r\nCPU Bus : 34.1 GT/S\r\nArchitecture : 14nm\r\nCache L2 : 4 X 256 KB\r\nCache L3 : 8 MB\r\nPower Peak : 91 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('65', 'P65', 'CORE I7 7700 3.6 GHz', '11200', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/8\r\nFrequency : 3.60 GHz\r\nTurbo : 4.20 GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : -\r\nCache L3 : 8 MB\r\nPower Peak : 65 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('66', 'P66', 'CORE I7 7700K 4.2 GHz (NO FAN)', '12800', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 4/8\r\nFrequency : 4.20 GHz\r\nTurbo : 4.50 GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : -\r\nCache L3 : 8 MB\r\nPower Peak : 91 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('67', 'P67', 'PENTIUM G4400 3.3 GHz', '1990', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 2/2\r\nFrequency : 3.30 GHz\r\nTurbo : - GHz\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : 2 X 256 KB\r\nCache L3 : 2 X 256 MB\r\nPower Peak : 54 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('68', 'P68', 'PENTIUM G4560', '2340', 'B02', 'Socket : 1151\r\nCPU Core / Thread : 2/4\r\nFrequency : 3.50 GHz\r\nTurbo : -\r\nCPU Bus : 8 GT/S\r\nArchitecture : 14nm\r\nCache L2 : -\r\nCache L3 : 3 MB\r\nPower Peak : 54 W', 'SG05', '1', null);
INSERT INTO `t_product` VALUES ('69', 'P69', 'RYZEN5 1400 3.2GHz', '6190', 'B01', 'Processor Number:	AMD RYZEN5 1400\r\nNumber of Cores:	4\r\nNumber of Threads:	8\r\nClock Speed:	3.4GHz\r\nBus Speed:	3.2GHz\r\nBit Technology:	\r\nL2 Cache:	2MB\r\nL3 Cache:	8MB\r\nType Socket:	AM4\r\nOther:	65W', 'SG59', '1', null);
INSERT INTO `t_product` VALUES ('70', 'P70', 'RYZEN5 1500X 3.5GHz', '7090', 'B01', '\r\nProcessor Number:	AMD RYZEN5 1500X\r\nNumber of Cores:	4\r\nNumber of Threads:	8\r\nClock Speed:	3.5GHz\r\nBus Speed:	3.7GHz\r\nBit Technology:	\r\nL2 Cache:	2MB\r\nL3 Cache:	8MB\r\nType Socket:	AM4\r\nOther:	65W', 'SG59', '1', null);
INSERT INTO `t_product` VALUES ('71', 'P71', 'RYZEN5 1600 3.2GHz', '8050', 'B01', '\r\nProcessor Number:	AMD RYZEN5 1600\r\nNumber of Cores:	6\r\nNumber of Threads:	12\r\nClock Speed:	3.2GHz\r\nBus Speed:	3.6GHz\r\nBit Technology:	\r\nL2 Cache:	3MB\r\nL3 Cache:	16MB\r\nType Socket:	AM4\r\nOther:	65W', 'SG59', '1', null);
INSERT INTO `t_product` VALUES ('72', 'P72', 'RYZEN5 1600X 3.6GHz (NO FAN)', '9440', 'B01', 'Processor Number:	AMD RYZEN5 1600X\r\nNumber of Cores:	6\r\nNumber of Threads:	12\r\nClock Speed:	3.6GHz\r\nBus Speed:	4.0GHz\r\nBit Technology:	\r\nL2 Cache:	3MB\r\nL3 Cache:	16MB\r\nType Socket:	AM4\r\nOther:	95W', 'SG59', '1', null);
INSERT INTO `t_product` VALUES ('73', 'P73', 'RYZEN7 1700 3.0GHz', '12750', 'B01', 'Socket : AM4\r\nCPU Core / Thread : 8/16\r\nFrequency : 3.00 GHz\r\nTurbo : 3.70 GHz\r\nCPU Bus : -\r\nArchitecture : 14 Nm\r\nCache L2 : 8 X 512 KB\r\nCache L3 : 16 MB\r\nPower Peak : 65 W', 'SG59', '1', null);
INSERT INTO `t_product` VALUES ('74', 'P74', 'RYZEN7 1700X 3.4GHz (NO FAN)', '14900', 'B01', 'Socket : AM4\r\nCPU Core / Thread : 8/16\r\nFrequency : 3.40 GHz\r\nTurbo : 3.80 GHz\r\nCPU Bus : -\r\nArchitecture : 14nm\r\nCache L2 : 8 X 512 KB\r\nCache L3 : 16 MB\r\nPower Peak : 95 W', 'SG59', '1', null);
INSERT INTO `t_product` VALUES ('75', 'P75', 'RYZEN7 1800X 3.6 GHz (NO FAN)', '18900', 'B01', 'Socket : AM4\r\nCPU Core / Thread : 8/16\r\nFrequency : 3.60 GHz\r\nTurbo : 4.00 GHz\r\nCPU Bus : -\r\nArchitecture : 14nm\r\nCache L2 : 8 X 512 KB\r\nCache L3 : 16 MB\r\nPower Peak : 95 W', 'SG59', '1', null);
INSERT INTO `t_product` VALUES ('76', 'P76', 'FM2A68M-DG3+', '1550', 'B06', '• Support for Socket FM2+ 95W / FM2 100W processors\r\n   • All Solid Capacitor Design\r\n   • Supports Dual Channel DDR3 2400+(OC)\r\n   • 1 x PCIe 3.0 x16, 1 x PCIe 2.0 x1, 1 x PCI, Supports AMD Dual Graphics\r\n   • Integrated AMD Radeon™ R7/R5 Series Graphics in A-series APU\r\n   • Graphics Output Options : D-Sub, DVI-D\r\n   • 5.1 CH HD Audio (Realtek ALC662 Audio Codec)\r\n   • 1 x Print Port Header, 1 x COM Port Header\r\n   • 4 x SATA3, 2 x USB 3.0, 10 x USB 2.0 (6 Front, 4 Rear)\r\n   • Supports ASRock Cloud, APP S', 'SG09', '1', null);
INSERT INTO `t_product` VALUES ('77', 'P77', 'FM2A68M-HD+', '1560', 'B06', 'Model\r\nBrand : ASROCK\r\nModel : FM2A68M-HD+\r\nSupport CPU\r\nSocket : FM2+\r\nCPU Generation : AMD FX\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : A68\r\nCPU Series : Athlon II X4, Athlon II X2, Phenom II X6, Sempron, Phenom II X2, Phenom II X3, Phenom II X4, Athlon II X3\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : 1333 / 1600 / 1066 / 1866 (OC) / 2133 (OC) / 2400 +(OC)\r\nOnboard\r\nVGA Onboard Chip : Integrated AMD Radeon R7/R5 Series\r\nAudio Chip : Realtek ALC662 Audio Codec', 'SG09', '1', null);
INSERT INTO `t_product` VALUES ('78', 'P78', 'FM2A88M-HD+ R3.0', '2050', 'B06', 'Model\r\nBrand : ASROCK\r\nModel : FM2A88M-HD+ R3.0\r\nSupport CPU\r\nSocket : FM2\r\nCPU Generation : AMD FX\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : A88\r\nCPU Series : Athlon\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : -\r\nOnboard\r\nVGA Onboard Chip : NONE\r\nAudio Chip : NONE\r\nรองรับระบบเสียง : Flexible 8-Channel\r\nStorage Connector\r\nPort SATA 2 : 2 Port\r\nPort SATA 3 : 2 Port\r\nรองรับฟังก์ชั่น RAID : 0/1/5/10\r\nExpansion Slots\r\nรายละเอียดอื่นๆ : -\r\nSlot : -\r\nNetwork\r\nChipset ', 'SG08', '1', null);
INSERT INTO `t_product` VALUES ('79', 'P79', 'A68HM-E', '1790', 'B05', 'Model\r\nBrand : ASUS\r\nModel : A68HM-E\r\nSupport CPU\r\nSocket : FM2\r\nCPU Generation : AMD FX\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : A68\r\nCPU Series : -\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR4\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : -\r\nOnboard\r\nVGA Onboard Chip : AMD® Dual Graphics Technology Support *\r\nAudio Chip : Realtek® ALC887-VD 8-Channel High Definition Audio CODEC *3\r\nรองรับระบบเสียง : N/A\r\nStorage Connector\r\nPort SATA 2 : 2 Port\r\nPort SATA 3 : 2 Port\r\nรองรับฟังก์ชั่น RAID : 0/1/5/10\r\nExpans', 'SG09', '1', null);
INSERT INTO `t_product` VALUES ('80', 'P80', ' F2A68HM-DS2', '1540', 'B04', 'Model\r\nBrand : GIGABYTE\r\nModel : GA-F2A68HM-DS2\r\nSupport CPU\r\nSocket : FM2+\r\nCPU Generation : AMD A Series\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : A68\r\nCPU Series : Athlon\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 64 GB\r\nRam Bus : 1333 / 1600 / 2133 / 1866 / 2400 (OC)\r\nOnboard\r\nVGA Onboard Chip : Integrated Graphics Processor\r\nAudio Chip : Realtek ALC887 Audio Codec\r\nรองรับระบบเสียง : 7.1\r\nStorage Connector\r\nPort SATA 2 : NONE Port\r\nPort SATA 3 : 4 Port\r\nรองรับฟังก์ชั่น RAID', 'SG09', '1', null);
INSERT INTO `t_product` VALUES ('81', 'P81', '970 EXTREME3 (REV2)', '2720', 'B06', 'Brand : ASROCK\r\nModel : 970 EXTREME3 R2.0\r\nSupport CPU\r\nSocket : AM3/AM3+\r\nCPU Generation : AMD FX\r\nรองรับการกินไฟ CPU : 140v\r\nMainboard Chipset : 970\r\nCPU Series : Athlon II X4, Athlon II X2, Phenom II X6, Sempron, Phenom II X2, Phenom II X3, Phenom II X4, Athlon II X3\r\nMemmory\r\nจำนวน Slot แรม : 4\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 64 GB\r\nRam Bus : 1333 / 1600 / 2133 / 1866\r\nOnboard\r\nVGA Onboard Chip : NONE\r\nAudio Chip : Realtek ALC892 Audio Codec\r\nรองรับระบบเสียง : 7.1\r\nStorage Connector\r\nPort SATA 2 :', 'SG08', '1', null);
INSERT INTO `t_product` VALUES ('82', 'P82', '970 PRO3 R2.0', '2340', 'B06', 'Model\r\nBrand : ASROCK\r\nModel : 970 PRO3 R2.0\r\nSupport CPU\r\nSocket : AM3+\r\nCPU Generation : AMD A Series\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : 970\r\nCPU Series : Athlon\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : -\r\nOnboard\r\nVGA Onboard Chip : NONE\r\nAudio Chip : NONE\r\nรองรับระบบเสียง : Flexible 8-Channel\r\nStorage Connector\r\nPort SATA 2 : 2 Port\r\nPort SATA 3 : 2 Port\r\nรองรับฟังก์ชั่น RAID : 0/1/5/10\r\nExpansion Slots\r\nรายละเอียดอื่นๆ : -\r\nSlot : -\r\nNetwork\r\nChip', 'SG08', '1', null);
INSERT INTO `t_product` VALUES ('83', 'P83', '970 PRO GAMING/AURA', '4550', 'B05', 'Model\r\nBrand : ASUS\r\nModel : 970 PRO GAMING/AURA\r\nSupport CPU\r\nSocket : AM3+\r\nCPU Generation : AMD FX\r\nรองรับการกินไฟ CPU : N/Av\r\nMainboard Chipset : 970\r\nCPU Series : -\r\nMemmory\r\nจำนวน Slot แรม : 4\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : -\r\nOnboard\r\nVGA Onboard Chip : N/A\r\nAudio Chip : SupremeFX 8-Channel High Definition Audio CODEC\r\nรองรับระบบเสียง : SupremeFX 8-Channel\r\nStorage Connector\r\nPort SATA 2 : 14 Port\r\nPort SATA 3 : 2 Port\r\nรองรับฟังก์ชั่น RAID : 0/1/5/10\r\nExpansion Slots\r\nรายละเอ', 'SG08', '1', null);
INSERT INTO `t_product` VALUES ('84', 'P84', 'M5A78L-M/LE/USB3', '1860', 'B05', 'Model\r\nBrand : ASUS\r\nModel : M5A78L-M/LE/USB3\r\nSupport CPU\r\nSocket : AM3+\r\nCPU Generation : AMD A Series\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : A88\r\nCPU Series : Athlon, Pentium\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : NONE GB\r\nRam Bus : -\r\nOnboard\r\nVGA Onboard Chip : NONE\r\nAudio Chip : NONE\r\nรองรับระบบเสียง : NONE\r\nStorage Connector\r\nPort SATA 2 : 2 Port\r\nPort SATA 3 : 2 Port\r\nรองรับฟังก์ชั่น RAID : 0/1/5/10\r\nExpansion Slots\r\nรายละเอียดอื่นๆ : -\r\nSlot : -\r\nNetwork\r\nChipse', 'SG08', '1', null);
INSERT INTO `t_product` VALUES ('85', 'P85', ' 78LMT USB3 R6', '1790', 'B04', 'Model\r\nBrand : GIGABYTE\r\nModel : 78LMT USB3 R6\r\nSupport CPU\r\nSocket : AM3+\r\nCPU Generation : AMD A Series\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : A88\r\nCPU Series : -\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : -\r\nOnboard\r\nVGA Onboard Chip : NONE\r\nAudio Chip : NONE\r\nรองรับระบบเสียง : Flexible 8-Channel\r\nStorage Connector\r\nPort SATA 2 : 2 Port\r\nPort SATA 3 : 2 Port\r\nรองรับฟังก์ชั่น RAID : 0/1/5/10\r\nExpansion Slots\r\nรายละเอียดอื่นๆ : -\r\nSlot : -\r\nNetwork\r\nChipset', 'SG08', '1', null);
INSERT INTO `t_product` VALUES ('86', 'P86', '970-GAMING', '3550', 'B04', 'Model\r\nBrand : GIGABYTE\r\nModel : 970-GAMING\r\nSupport CPU\r\nSocket : AM3+\r\nCPU Generation : AMD A Series\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : 970\r\nCPU Series : -\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : -\r\nOnboard\r\nVGA Onboard Chip : NONE\r\nAudio Chip : NONE\r\nรองรับระบบเสียง : Flexible 8-Channel\r\nStorage Connector\r\nPort SATA 2 : 2 Port\r\nPort SATA 3 : 2 Port\r\nรองรับฟังก์ชั่น RAID : 0/1/5/10\r\nExpansion Slots\r\nรายละเอียดอื่นๆ : -\r\nSlot : -\r\nNetwork\r\nChipset LA', 'SG08', '1', null);
INSERT INTO `t_product` VALUES ('87', 'P87', '760GM-P23 (FX)', '1490', 'B03', 'Model\r\nBrand : MSI\r\nModel : 760GM-P23 (FX\r\nSupport CPU\r\nSocket : AM3+\r\nCPU Generation : AMD FX\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : 760\r\nCPU Series : -\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 128 GB\r\nRam Bus : -\r\nOnboard\r\nVGA Onboard Chip : NONE\r\nAudio Chip : NONE\r\nรองรับระบบเสียง : NONE\r\nStorage Connector\r\nPort SATA 2 : NONE Port\r\nPort SATA 3 : NONE Port\r\nรองรับฟังก์ชั่น RAID : 0/1/5/10\r\nExpansion Slots\r\nรายละเอียดอื่นๆ : -\r\nSlot : -\r\nNetwork\r\nChipset LAN : NONE\r\nความเ', 'SG08', '1', null);
INSERT INTO `t_product` VALUES ('89', 'P89', '990FXA GAMING', '4750', 'B03', 'Model\r\nBrand : MSI\r\nModel : 990FXA GAMING\r\nSupport CPU\r\nSocket : AM3/AM3+\r\nCPU Generation : AMD FX\r\nรองรับการกินไฟ CPU : 95v\r\nMainboard Chipset : 990\r\nCPU Series : Athlon II X4, Athlon II X2, Phenom II X6, Sempron, Phenom II X2, Phenom II X3, Phenom II X4, Athlon II X3\r\nMemmory\r\nจำนวน Slot แรม : 4\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : 1333 / 1600 / 1866 / 1066 / 2133 (OC)\r\nOnboard\r\nVGA Onboard Chip : N/A\r\nAudio Chip : Realtek ALC1150 Audio Codec\r\nรองรับระบบเสียง : 7.1\r\nStorage Connector\r\nPo', 'SG01', '1', null);
INSERT INTO `t_product` VALUES ('90', 'P90', 'A68HM-K', '1640', 'B05', 'Model\r\nBrand : ASUS\r\nModel : A68HM-K\r\nSupport CPU\r\nSocket : FM2+\r\nCPU Generation : AMD A Series\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : A68\r\nCPU Series : Athlon\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : 1333 / 1600 / 2133 / 1866 / 2400 (OC)\r\nOnboard\r\nVGA Onboard Chip : NONE\r\nAudio Chip : Realtek ALC887 Audio Codec\r\nรองรับระบบเสียง : 8\r\nStorage Connector\r\nPort SATA 2 : NONE Port\r\nPort SATA 3 : 4 Port\r\nรองรับฟังก์ชั่น RAID : 0/1/10\r\nExpansion Slots\r\nรายละเอียด', 'SG10', '1', null);
INSERT INTO `t_product` VALUES ('91', 'P91', 'A88XM-E USB 3.1', '2780', 'B05', 'Model\r\nBrand : ASUS\r\nModel : A88XM-E USB 3.1\r\nSupport CPU\r\nSocket : FM2+\r\nCPU Generation : AMD FX\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : A88\r\nCPU Series : -\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : 1333 / 1600 / 2133 / 1866 / 2400 (OC)\r\nOnboard\r\nVGA Onboard Chip : Integrated AMD Radeon™\r\nAudio Chip : Realtek® ALC887 8-Channel High Definition Audio CODEC *4\r\nรองรับระบบเสียง : N/A\r\nStorage Connector\r\nPort SATA 2 : 3 Port\r\nPort SATA 3 : 3 Port\r\nรองรับฟังก์ชั่', 'SG10', '1', null);
INSERT INTO `t_product` VALUES ('92', 'P92', 'F2A88XM-HD3P', '2320', 'B04', 'Model\r\nBrand : GIGABYTE\r\nModel : F2A88XM-HD3P\r\nSupport CPU\r\nSocket : FM2+\r\nCPU Generation : AMD FX\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : A88\r\nCPU Series : -\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : -\r\nOnboard\r\nVGA Onboard Chip : NONE\r\nAudio Chip : NONE\r\nรองรับระบบเสียง : Flexible 8-Channel\r\nStorage Connector\r\nPort SATA 2 : 2 Port\r\nPort SATA 3 : NONE Port\r\nรองรับฟังก์ชั่น RAID : 0/1/5/10\r\nExpansion Slots\r\nรายละเอียดอื่นๆ : -\r\nSlot : -\r\nNetwork\r\nChipset LAN', 'SG10', '1', null);
INSERT INTO `t_product` VALUES ('93', 'P93', 'A68HM GAMING', '2190', 'B03', 'Type Socket:	Socket FM2+\r\nChipset:	AMD A68H Chipset\r\nCPU support:	Supports AMD A-series/ Athlon processors for Socket FM2/FM2+*\r\nMemory Type:	2 x DDR3 memory slots supporting up to 32GB\r\nSupports DDR3 2400(OC)/ 2133(OC)/ 1866/ 1600/ 1333 MHz\r\nDual channel memory architecture\r\nSupports non-ECC, un-buffered memory\r\nSupports AMD Memory Profile \r\nSupports Extreme Memory Profile\r\nStorage :	AMD A68H Chipset\r\n- 4x SATA 6Gb/s ports\r\n- Supports RAID 0, RAID 1 and RAID 10\r\n1 x M.2 slot (Key M)*\r\n- Supports up to PCIe', 'SG10', '1', null);
INSERT INTO `t_product` VALUES ('94', 'P94', 'H81M-VG4 R2.0', '1370', 'B06', 'Model\r\nBrand : ASROCK\r\nModel : H81M-VG4\r\nSupport CPU\r\nSocket : 1150\r\nCPU Generation : Intel Socket 1150 For 4th Generation Intel Core Processors\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : H81\r\nCPU Series : Core I3, Core I5, Core I7, Pentium, Celeron\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 16 GB\r\nRam Bus : 1333 / 1600 / 1066\r\nOnboard\r\nVGA Onboard Chip : Intel HD Graphics 4400/4600\r\nAudio Chip : Realtek ALC662 Audio Codec\r\nรองรับระบบเสียง : 5.1\r\nStorage Connector\r\nPort SATA 2 :', 'SG08', '1', null);
INSERT INTO `t_product` VALUES ('95', 'P95', 'H81M-D', '1790', 'B05', 'Model\r\nBrand : ASUS\r\nModel : H81M-D\r\nSupport CPU\r\nSocket : 1150\r\nCPU Generation : 4th Generation Intel Core Processors\r\nรองรับการกินไฟ CPU : NONEv\r\nMainboard Chipset : H81\r\nCPU Series : Core I3, Core I5, Core I7, Pentium, Celeron\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 16 GB\r\nRam Bus : 1333 / 1600 / 1066\r\nOnboard\r\nVGA Onboard Chip : Intel HD Graphics\r\nAudio Chip : Realtek ALC887 Audio Codec\r\nรองรับระบบเสียง : 8\r\nStorage Connector\r\nPort SATA 2 : 2 Port\r\nPort SATA 3 : 2 Port\r\nรองรับ', 'SG11', '1', null);
INSERT INTO `t_product` VALUES ('96', 'P96', 'H81M-K', '1650', 'B05', 'Model\r\nBrand : ASUS\r\nModel : H81M-K\r\nSupport CPU\r\nSocket : 1150\r\nCPU Generation : Intel Socket 1150 For 4th Generation Intel Core Processors\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : H81\r\nCPU Series : Core I3, Core I5, Core I7, Pentium, Celeron\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 16 GB\r\nRam Bus : 1333 / 1600 / 1066\r\nOnboard\r\nVGA Onboard Chip : NONE\r\nAudio Chip : Realtek ALC887\r\nรองรับระบบเสียง : 8\r\nStorage Connector\r\nPort SATA 2 : 2 Port\r\nPort SATA 3 : 2 Port\r\nรองรับฟังก', 'SG11', '1', null);
INSERT INTO `t_product` VALUES ('97', 'P97', 'H81M-DS2', '1760', 'B04', 'Model\r\nBrand : GIGABYTE\r\nModel : GA-H81M-DS2\r\nSupport CPU\r\nSocket : 1150\r\nCPU Generation : Intel Socket 1150 For The 5th/4th Generation Intel Core Processors\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : H81\r\nCPU Series : Core I3, Core I5, Core I7, Pentium, Celeron\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 16 GB\r\nRam Bus : 1333 / 1600\r\nOnboard\r\nVGA Onboard Chip : Intel HD Graphics 4400/4600\r\nAudio Chip : Realtek ALC887 Audio Codec\r\nรองรับระบบเสียง : 7.1\r\nStorage Connector\r\nPort SA', 'SG11', '1', null);
INSERT INTO `t_product` VALUES ('98', 'P98', 'H81M-P33', '1490', 'B03', 'Model\r\nBrand : MSI\r\nModel : H81M-P33\r\nSupport CPU\r\nSocket : 1150\r\nCPU Generation : 4th Generation Intel Core Processors\r\nรองรับการกินไฟ CPU : NONEv\r\nMainboard Chipset : H81\r\nCPU Series : Core I3, Core I5, Core I7, Pentium, Celeron\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 16 GB\r\nRam Bus : 1333 / 1600 / 1066\r\nOnboard\r\nVGA Onboard Chip : Intel HD Graphics\r\nAudio Chip : Realtek ALC887 Audio Codec\r\nรองรับระบบเสียง : Flexible 8-Channel Audio With Jack Sensing\r\nStorage Connector\r\nPort SAT', 'SG11', '1', null);
INSERT INTO `t_product` VALUES ('99', 'P99', 'H61M-K', '2150', 'B05', 'Model\r\nBrand : ASUS\r\nModel : H61M-K\r\nSupport CPU\r\nSocket : 1151\r\nCPU Generation : 7th Generation Intel Core Processors\r\nรองรับการกินไฟ CPU : -\r\nMainboard Chipset : H61\r\nCPU Series : Core I3, Core I5, Core I7, Pentium, Celeron\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 16 GB\r\nRam Bus : 1333 / 1600 / 1066 / 2000 (OC) / 1866 (OC) / 2133 (OC)\r\nOnboard\r\nVGA Onboard Chip : Integrated Graphics\r\nAudio Chip : Realtek® ALC887\r\nรองรับระบบเสียง : 8-Channel High Definition Audio CODEC\r\nStorage Co', 'SG13', '1', null);
INSERT INTO `t_product` VALUES ('100', 'P100', 'H61M-DS2 (REV4)', '1840', 'B04', 'Model\r\nBrand : GIGABYTE\r\nModel : ็H61M-DS2 (REV4)\r\nSupport CPU\r\nSocket : 1155\r\nCPU Generation : 4th Generation Intel Core Processors\r\nรองรับการกินไฟ CPU : -V\r\nMainboard Chipset : H61\r\nCPU Series : Pentium G, Core I3, Core I5, Core I7, Pentium\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 16 GB\r\nRam Bus : 1333 / 1066 / 800\r\nOnboard\r\nVGA Onboard Chip : Intel HD Graphics 2000/3000\r\nAudio Chip : Realtek ALC887 Codec\r\nรองรับระบบเสียง : Flexible 7.1-Channel\r\nStorage Connector\r\nPort SATA 2 : 4', 'SG13', '1', null);
INSERT INTO `t_product` VALUES ('101', 'P101', 'H61M-P31/W8', '1890', 'B03', 'Model\r\nBrand : MSI\r\nModel : ็H61M-P31/W8\r\nSupport CPU\r\nSocket : 1155\r\nCPU Generation : 3th Generation Intel Core Processors\r\nรองรับการกินไฟ CPU : -V\r\nMainboard Chipset : H61\r\nCPU Series : Core I3, Core I5, Core I7, Pentium, Celeron\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR3\r\nความจุแรมสูงสุด : 16 GB\r\nRam Bus : 1333 / 1066\r\nOnboard\r\nVGA Onboard Chip : -\r\nAudio Chip : Realtek® ALC887\r\nรองรับระบบเสียง : Flexible 8-Channel\r\nStorage Connector\r\nPort SATA 2 : 4 Port\r\nPort SATA 3 : - Port\r\nรองรับฟังก์ชั่น RAID ', 'SG13', '1', null);
INSERT INTO `t_product` VALUES ('103', 'P103', 'B250 PRO4', '3290', 'B06', 'Type Socket:	1151\r\nChipset:	Intel B250\r\nCPU support:	- Supports 7th and 6th Generation Intel(R) CoreTM i7/i5/i3/Pentium(R)/Celeron(R) Processors (Socket 1151)\r\n- Digi Power design\r\n- 8 Power Phase design\r\n- Supports Intel(R) Turbo Boost 2.0 Technology\r\nMemory Type:	- Dual Channel DDR4 Memory Technology\r\n- 4 x DDR4 DIMM Slots\r\n- Supports DDR4 2400/2133 non-ECC, un-buffered memory*\r\n- Supports ECC UDIMM memory modules (operate in non-ECC mode)\r\n- Max. capacity of system memory: 64GB**\r\n- Supports Intel(R) Ext', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('104', 'P104', 'B250M HDV (KABY LAKE)', '2400', 'B06', 'Type Socket:	Socket 115\r\nChipset:	- Intel B250\r\nCPU support:	- Supports 7th and 6th Generation Intel CoreTM i7/i5/i3/Pentium/Celeron Processors (Socket 1151)\r\n- Digi Power design\r\n- 5 Power Phase design\r\n- Supports Intel Turbo Boost 2.0 Technology\r\nMemory Type:	- Dual Channel DDR4 Memory Technology\r\n- 2 x DDR4 DIMM Slots\r\n- Supports DDR4 2400/2133 non-ECC, un-buffered memory*\r\n- Supports ECC UDIMM memory modules (operate in non-ECC mode)\r\n- Max. capacity of system memory: 32GB**\r\n- Supports Intel(R) Extreme', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('105', 'P105', 'B250M PRO4', '2790', 'B06', '\r\nType Socket:	Socket 1151\r\nChipset:	- Intel B250\r\nCPU support:	- Supports 7th and 6th Generation Intel Core i7/i5/i3/Pentium/Celeron Processors (Socket 1151)\r\n- Digi Power design\r\n- 6 Power Phase design\r\n- Supports Intel Turbo Boost 2.0 Technology\r\nMemory Type:	- Dual Channel DDR4 Memory Technology\r\n- 4 x DDR4 DIMM Slots\r\n- Supports DDR4 2400/2133 non-ECC, un-buffered memory*\r\n- Supports ECC UDIMM memory modules (operate in non-ECC mode)\r\n- Max. capacity of system memory: 64GB**\r\n- Supports Intel Extreme M', 'SG08', '1', null);
INSERT INTO `t_product` VALUES ('106', 'P106', 'H110M-DVS DDR4 R3.0', '1650', 'B06', 'Model\r\nBrand : ASROCK\r\nModel : H110M-DVS DDR4 R3.0\r\nSupport CPU\r\nSocket : 1151\r\nCPU Generation : Intel Socket 1151 For 6th Generation Intel Core Processors\r\nรองรับการกินไฟ CPU : N/Av\r\nMainboard Chipset : H110\r\nCPU Series : Celeron Processors For Socket LGA1151\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR4\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : 2133\r\nOnboard\r\nVGA Onboard Chip : Intel® HD Graphics 510/530\r\nAudio Chip : Realtek ALC887 Audio Codec\r\nรองรับระบบเสียง : 7.1 CH HD Audio\r\nStorage Connector\r\nPort SATA ', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('107', 'P107', 'H110M-HDV R3.0', '1880', 'B06', 'Model\r\nBrand : ASROCK\r\nModel : H110M-HDV R3.0\r\nSupport CPU\r\nSocket : 1151\r\nCPU Generation : Intel Socket 1151 For 6th Generation Intel Core Processors\r\nรองรับการกินไฟ CPU : N/Av\r\nMainboard Chipset : H110\r\nCPU Series : Celeron Processors For Socket LGA1151\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR4\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : 2133\r\nOnboard\r\nVGA Onboard Chip : Intel® HD Graphics 510/530\r\nAudio Chip : Realtek ALC887 Audio Codec\r\nรองรับระบบเสียง : 7.1 CH HD Audio\r\nStorage Connector\r\nPort SATA 2 : 0', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('108', 'P108', 'H270 PRO4 (KABY LAKE)', '3690', 'B06', 'Type Socket:	Socket 1151\r\nChipset:	- Intel H270\r\nCPU support:	- Supports 7th and 6th Generation Intel CoreTM i7/i5/i3/Pentium/Celeron Processors (Socket 1151)\r\n- Digi Power design\r\n- 8 Power Phase design\r\n- Supports Intel Turbo Boost 2.0 Technology\r\nMemory Type:	- Dual Channel DDR4 Memory Technology\r\n- 4 x DDR4 DIMM Slots\r\n- Supports DDR4 2400/2133 non-ECC, un-buffered memory*\r\n- Supports ECC UDIMM memory modules (operate in non-ECC mode)\r\n- Max. capacity of system memory: 64GB*\r\n- Supports Intel(R) Extreme', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('109', 'P109', 'Z270 EXTREME4', '5990', 'B06', 'Type Socket:	-1151\r\nChipset:	Intel Z270\r\nCPU support:	- Supports 7th and 6th Generation Intel(R) CoreTM i7/i5/i3/Pentium(R)/Celeron(R) Processors (Socket 1151)\r\n- Digi Power design\r\n- 10 Power Phase design\r\n- Supports Intel Turbo Boost 2.0 Technology\r\n- Supports Intel K-Series unlocked CPUs\r\n- Supports ASRock BCLK Full-range Overclocking\r\nMemory Type:	- Dual Channel DDR4 Memory Technology\r\n- 4 x DDR4 DIMM Slots\r\n- Supports DDR4 3866+(OC)*/3733(OC)/3600(OC)/3200(OC)/2933(OC)/2800(OC)/2400**/2133 non-ECC, un-', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('110', 'P110', 'Z270 GAMING K4 (KABY LAKE)', '5490', 'B06', 'Type Socket:	1151\r\nChipset:	Intel Z270\r\nCPU support:	- Supports 7th and 6th Generation Intel Core i7/i5/i3/Pentium/Celeron Processors (Socket 1151)\r\n- Digi Power design\r\n- 8 Power Phase design\r\n- Supports Intel Turbo Boost 2.0 Technology\r\n- Supports Intel K-Series unlocked CPUs\r\n- Supports ASRock BCLK Full-range Overclocking\r\nMemory Type:	- Dual Channel DDR4 Memory Technology\r\n- 4 x DDR4 DIMM Slots\r\n- Supports DDR4 3733+(OC)*/3600(OC)/3200(OC)/2933(OC)/2800(OC)/2400**/2133 non-ECC, un-buffered memory\r\n- Sup', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('111', 'P111', 'Z270 GAMING K6 (KABY LAKE)', '6280', 'B06', 'Type Socket:	1151\r\nChipset:	Intel Z270\r\nCPU support:	7th and 6th Generation Intel Core i7/i5/i3/Pentium(R)/Celeron Processors (Socket 1151)\r\nMemory Type:	Dual Channel DDR4 Memory Technology\r\n- 4 x DDR4 DIMM Slots\r\n- Supports DDR4 3866+(OC)*/3733(OC)/3600(OC)/3200(OC)/2933(OC)/2800(OC)/2400**/2133 non-ECC, un-buffered memory\r\n- Supports ECC UDIMM memory modules (operate in non-ECC mode)\r\n- Max. capacity of system memory: 64GB\r\n- Supports Intel(R) Extreme\r\nStorage :	- 6 x SATA3 6.0 Gb/s Connectors, support RA', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('112', 'P112', 'Z270 PRO4', '4290', 'B06', 'Type Socket:	1151\r\nChipset:	Intel Z270\r\nCPU support:	- Supports 7th and 6th Generation Intel Core i7/i5/i3/Pentium/Celeron Processors (Socket 1151)\r\n- Digi Power design\r\n- 8 Power Phase design\r\n- Supports Intel Turbo Boost 2.0 Technology\r\n- Supports Intel K-Series unlocked CPUs\r\n- Supports ASRock BCLK Full-range Overclocking\r\nMemory Type:	- Dual Channel DDR4 Memory Technology\r\n- 4 x DDR4 DIMM Slots\r\n- Supports DDR4 3733+(OC)*/3600(OC)/3200(OC)/2933(OC)/2800(OC)/2400**/2133 non-ECC, un-buffered memory\r\n- Sup', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('113', 'P113', 'Z270 SUPERCARRIER', '12900', 'B06', '\r\nType Socket:	Socket 1151\r\nChipset:	Intel Z270\r\nCPU support:	- Supports 7th and 6th Generation Intel(R) CoreTM i7/i5/i3/Pentium(R)/Celeron(R) Processors (Socket 1151)\r\n- Digi Power design\r\n- 14 Power Phase design\r\nMemory Type:	- Dual Channel DDR4 Memory Technology\r\n- 4 x DDR4 DIMM Slots\r\n- Supports DDR4 3733+(OC)*/3600(OC)/3200(OC)/2933(OC)/2800(OC)/2400**/2133 non-ECC, un-buffered memory\r\nStorage :	- 6 x SATA3 6.0 Gb/s Connectors, support RAID (RAID 0, RAID 1, RAID 5, RAID 10, Intel(R) Rapid Storage Techn', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('114', 'P114', 'Z270 TAICHI (KABY LAKE)', '7990', 'B06', 'Type Socket:	1151\r\nChipset:	- Intel Z270\r\nCPU support:	- Supports 7th and 6th Generation Intel(R) CoreTM i7/i5/i3/Pentium(R)/Celeron(R) Processors (Socket 1151)\r\n- Digi Power design\r\n- 12 Power Phase design\r\n- Supports Intel(R) Turbo Boost 2.0 Technology\r\nMemory Type:	- Dual Channel DDR4 Memory Technology\r\n- 4 x DDR4 DIMM Slots\r\n- Supports DDR4 3733+(OC)*/3600(OC)/3200(OC)/2933(OC)/2800(OC)/2400**/2133 non-ECC, un-buffered memory\r\n- Supports ECC UDIMM memory modules (operate in non-ECC mode)\r\nStorage :	- 6 ', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('115', 'P115', 'PRIME B250M-D', '2990', 'B05', '\r\nType Socket:	Socket 1151\r\nChipset:	Intel B250\r\nCPU support:	Build in Intel(R) Socket 1151 for 7th/6th Generation CoreTM i7/CoreTM i5/CoreTM i3/Pentium(R)/Celeron(R) Processors \r\nSupports Intel(R) 14 nm CPU\r\nSupports Intel(R) Turbo Boost Technology 2.0\r\nMemory Type:	2 x DIMM, Max. 32GB, DDR4 2400/2133 MHz Non-ECC, Un-buffered Memory \r\nDual Channel Memory Architecture \r\nSupports Intel(R) Extreme Memory Profile (XMP)\r\nStorage :	Intel(R) B250 Chipset : \r\n1 x M.2 Socket 3, , with M Key, type 2242/2260/2280 sto', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('116', 'P116', 'H110M-D DDR4', '1940', 'B05', 'Model\r\nBrand : ASUS\r\nModel : H110M-D DDR4\r\nSupport CPU\r\nSocket : 1151\r\nCPU Generation : Intel Socket 1151 For 6th Generation Intel Core Processors\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : H110\r\nCPU Series : -\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR4\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : -\r\nOnboard\r\nVGA Onboard Chip : NONE\r\nAudio Chip : NONE\r\nรองรับระบบเสียง : Flexible 8-Channel\r\nStorage Connector\r\nPort SATA 2 : 2 Port\r\nPort SATA 3 : NONE Port\r\nรองรับฟังก์ชั่น RAID : 0/1/5/10\r\nExpansion Slots\r\nรา', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('117', 'P117', 'H110M-K', '1790', 'B05', 'Model\r\nBrand : ASUS\r\nModel : H110M-K\r\nSupport CPU\r\nSocket : 1151\r\nCPU Generation : Intel Socket 1151 For 6th Generation Intel Core Processors\r\nรองรับการกินไฟ CPU : 100v\r\nMainboard Chipset : H110\r\nCPU Series : -\r\nMemmory\r\nจำนวน Slot แรม : 2\r\nชนิดของแรม : DDR4\r\nความจุแรมสูงสุด : 32 GB\r\nRam Bus : -\r\nOnboard\r\nVGA Onboard Chip : Integrated Graphics Processor- Intel®\r\nAudio Chip : Realtek® ALC887 8-Channel High Definition Audio CODEC *1\r\nรองรับระบบเสียง : N/A\r\nStorage Connector\r\nPort SATA 2 : N/A Port\r\nPort SATA ', 'SG12', '1', null);
INSERT INTO `t_product` VALUES ('118', 'P118', 'AM4 ASUS PRIME B350 PLUS', '3850', 'B05', 'Type Socket:	Socket AM4\r\nChipset:	AMD B350\r\nCPU support:	AMD AM4 Socket for AMD RyzenTM/AthlonTM II/7th Generation A-series/AthlonTM Processors \r\nSupports CPU up to 8 cores\r\nMemory Type:	AMD RyzenTM Processors\r\n4 x DIMM, Max. 64GB, DDR4 3200(O.C.)/2933(O.C.)/2666/2400/2133 MHz Non-ECC, Un-buffered Memory \r\nAMD 7th Generation A-series/AthlonTM Processors\r\n4 x DIMM, Max. 4GB, DDR4 2400/2133 MHz Non-ECC, Un-buffered Memory \r\nDual Channel Memory Architecture', 'SG62', '1', '20170624203537.jpg');
INSERT INTO `t_product` VALUES ('119', 'P119', 'AM4 GIGABYTE AB350 GAMING 3', '3590', 'B04', 'Type Socket:	Socket AM4\r\nChipset:	AMD B350\r\nCPU support:	AMD RYZEN processor\r\nMemory Type:	4 x DDR4 DIMM sockets supporting up to 64 GB of system memory\r\nDual channel memory architecture\r\nSupport for DDR4 3200(O.C.)/2933(O.C.)/2667/2400/2133 MHz memory modules\r\nSupport for ECC Un-buffered DIMM 1Rx8/2Rx8 memory modules (operate in non-ECC mode)', 'SG62', '1', '20170624205005.jpg');
INSERT INTO `t_product` VALUES ('120', 'P120', 'AM4 MSI X370 SLI PLUS', '5250', 'B03', 'Type Socket:	Socket AM4\r\nChipset:	AMD X370 Chipset\r\nCPU support:	AMD RYZEN series processors and 7th Gen A-series/ Athlon processors for Socket AM4\r\nMemory Type:	o 4 x DDR4 memory slots, support up to 64GB\r\n- Supports DDR4 1866/ 2133/ 2400/ 2667(OC)/ 2933(OC)/ 3200(OC)+ Mhz *\r\no Dual channel memory architecture\r\no Supports non-ECC, un-buffered memory\r\no Supports ECC UDIMM memory (non-ECC mode)', 'SG62', '1', '');
INSERT INTO `t_product` VALUES ('124', 'P124', 'kkee', '1000', 'B01', '231', 'SG67', '1', '');
INSERT INTO `t_product` VALUES ('125', 'P125', '120GB SSD CORSAIR LE200 SATA-3', '2390', 'B13', 'Capacity: 120 GB\r\nDrive Size: 2.5\r\nRead Speed: Up to 550MB/s\r\nWrite Speed: Up to 500MB/s\r\nInterface: SATA 3 6Gb/s', 'SG41', '1', '20170722010210.jpg');
INSERT INTO `t_product` VALUES ('126', 'P126', 'DDR4/2133 TEAM RED (8X2)', '4350', 'B10', 'ชนิดแรม : DDR4\r\nความจุ : 16 GB\r\nRAM Bus : 2133\r\n8GB x 2', 'SG21', '1', '20170722011046.jpg');
INSERT INTO `t_product` VALUES ('127', 'P127', 'RYZEN3 1300X', '4990', 'B01', 'Socket : AM4\r\nCPU Core / Thread : 4/4\r\nFrequency : 3.5GHz\r\nTurbo : 3.7GHz\r\nCPU Bus : -\r\nArchitecture : 14nm\r\nCache L2 : 2 MB\r\nCache L3 : 8 MB\r\nPower Peak : 65W', 'SG59', '1', '20170910070001.jpg');
INSERT INTO `t_product` VALUES ('128', 'P128', 'WD SATA-3 BLUE 1.0 TB', '1490', 'B28', 'ความจุ : 1.0\r\nหน่วยความจุ : TB\r\nขนาด SSD : 3.5\r\nความเร็วอ่าน / เขียน : 7200\r\nTechnology : SSHD\r\nPort เชื่อมต่อ : Port เชื่อมต่อSATA III', 'SG39', '1', '');
INSERT INTO `t_product` VALUES ('129', 'P129', 'p_lg', '1000', 'B18', 'test_detail', 'SG74', '1', '20171005134012.jpg');
INSERT INTO `t_product` VALUES ('130', 'P130', 'GIGABYTE RX 550 GAMIMG OC 2GB', '3690', 'B04', 'Bus Interface : 1 x PCI Express 3.0 x16 Slots\r\nChipset : AMD\r\nSeries : AMD R Series\r\nGPU Name : N/A\r\nGPU Model : Radeon RX550\r\nTechnology : 14\r\nความเร็ว GPU : N/A MHz\r\nความเร็ว RAM : N/A\r\nขนาดความจุ RAM : 2 GB\r\nชนิดของ RAM : GDDR5', 'SG29', '1', '20171006191340.png');
INSERT INTO `t_product` VALUES ('131', 'P131', 'Product_test1', '1500', 'B01', 'speed 5.0 ghz', 'SG75', '1', '20171007035802.png');

-- ----------------------------
-- Table structure for t_product_unit
-- ----------------------------
DROP TABLE IF EXISTS `t_product_unit`;
CREATE TABLE `t_product_unit` (
  `Number` int(11) NOT NULL AUTO_INCREMENT,
  `P_ID` char(50) NOT NULL,
  `Import_ID` char(50) NOT NULL,
  `Unit_ID` char(50) NOT NULL,
  `S_ID` char(100) NOT NULL COMMENT 'serial number product',
  `Date_Receive` date NOT NULL,
  `End_Warranty` date DEFAULT NULL,
  `Warranty` char(20) NOT NULL,
  `PU_Status` char(10) NOT NULL,
  PRIMARY KEY (`Number`,`Unit_ID`),
  UNIQUE KEY `Unit_ID` (`Unit_ID`) USING BTREE,
  KEY `P_ID` (`P_ID`),
  KEY `Import_ID` (`Import_ID`),
  CONSTRAINT `t_product_unit_ibfk_3` FOREIGN KEY (`P_ID`) REFERENCES `t_product` (`P_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_product_unit_ibfk_4` FOREIGN KEY (`Import_ID`) REFERENCES `t_import_detail` (`Import_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product_unit
-- ----------------------------
INSERT INTO `t_product_unit` VALUES ('1', 'P08', 'Import_id_20170720_1', 'P08_kIdZJX', 'KKKKZ', '2017-07-20', '2020-07-20', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('2', 'P08', 'Import_id_20170720_1', 'P08_XojzlX', 'KKKKK', '2017-07-20', '2020-07-20', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('3', 'P08', 'Import_id_20170720_1', 'P08_q1vVTh', 'KKKKA', '2017-07-20', '2020-07-20', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('4', 'P08', 'Import_id_20170720_1', 'P08_0Z4PWn', 'KKKKB', '2017-07-20', '2020-07-20', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('5', 'P08', 'Import_id_20170720_1', 'P08_OCVOr8', 'KKKKP', '2017-07-20', '2020-07-20', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('24', 'P58', 'Import_id_20170724_1', 'P58_8sjdaC', 'CCCCA', '2017-07-24', '2020-07-24', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('25', 'P58', 'Import_id_20170724_1', 'P58_toQevz', 'CCCCB', '2017-07-24', '2020-07-24', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('26', 'P58', 'Import_id_20170724_1', 'P58_1i1u1f', 'CCCCC', '2017-07-24', '2020-07-24', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('27', 'P58', 'Import_id_20170724_1', 'P58_6mH5lT', 'CCCCD', '2017-07-24', '2020-07-24', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('28', 'P58', 'Import_id_20170724_1', 'P58_ofPkXJ', 'CCCCE', '2017-07-24', '2020-07-24', '3ปี', '3');
INSERT INTO `t_product_unit` VALUES ('29', 'P10', 'Import_id_20170724_1', 'P10_bmJ0td', 'GGGGG', '2017-07-24', '2019-07-24', '2ปี', '2');
INSERT INTO `t_product_unit` VALUES ('30', 'P10', 'Import_id_20170724_1', 'P10_z1iCNf', 'GGGGA', '2017-07-24', '2019-07-24', '2ปี', '2');
INSERT INTO `t_product_unit` VALUES ('31', 'P126', 'Import_id_20170727_1', 'P126_cQaSUP', 'RRZ', '2017-07-27', '2022-07-27', '5ปี', '2');
INSERT INTO `t_product_unit` VALUES ('32', 'P126', 'Import_id_20170727_1', 'P126_XTmlji', 'RRA', '2017-07-27', '2022-07-27', '5ปี', '2');
INSERT INTO `t_product_unit` VALUES ('33', 'P126', 'Import_id_20170727_1', 'P126_1upXSR', 'RRY', '2017-07-27', '2022-07-27', '5ปี', '2');
INSERT INTO `t_product_unit` VALUES ('34', 'P34', 'Import_id_20170727_2', 'P34_eZv9UV', 'A20001', '2017-07-27', '2020-07-27', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('35', 'P34', 'Import_id_20170727_2', 'P34_UoDkv0', 'A20002', '2017-07-27', '2020-07-27', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('36', 'P34', 'Import_id_20170727_2', 'P34_2TBsbR', 'A20003', '2017-07-27', '2020-07-27', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('37', 'P34', 'Import_id_20170727_2', 'P34_5JGVgg', 'A20004', '2017-07-27', '2020-07-27', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('38', 'P34', 'Import_id_20170727_2', 'P34_DjZ4CK', 'A20005', '2017-07-27', '2020-07-27', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('39', 'P34', 'Import_id_20170727_2', 'P34_CzJsZL', 'A20006', '2017-07-27', '2020-07-27', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('40', 'P34', 'Import_id_20170727_2', 'P34_z8s7e1', 'A20007', '2017-07-27', '2020-07-27', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('41', 'P34', 'Import_id_20170727_2', 'P34_PAiOuE', 'A20008', '2017-07-27', '2020-07-27', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('42', 'P34', 'Import_id_20170727_2', 'P34_SLghxy', 'A20009', '2017-07-27', '2020-07-27', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('43', 'P34', 'Import_id_20170727_2', 'P34_uWpr1A', 'A200010', '2017-07-27', '2020-07-27', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('52', 'P34', 'Import_20170803_NO_15', 'P34_G03SG21_NO_0052', 'rx0', '2017-08-03', '2020-08-03', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('53', 'P34', 'Import_20170803_NO_15', 'P34_G03SG21_NO_0053', 'rx0-2', '2017-08-03', '2020-08-03', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('54', 'P126', 'Import_20170803_NO_15', 'P126_G03SG21_NO_0054', 'zsw', '2017-08-03', '0000-00-00', 'L-T', '2');
INSERT INTO `t_product_unit` VALUES ('55', 'P126', 'Import_20170803_NO_15', 'P126_G03SG21_NO_0055', 'wsd', '2017-08-03', '0000-00-00', 'L-T', '2');
INSERT INTO `t_product_unit` VALUES ('56', 'P125', 'Import_20170803_NO_16', 'P125_G06SG41_NO_0056', 'none', '2017-08-03', '2020-08-03', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('57', 'P125', 'Import_20170803_NO_16', 'P125_G06SG41_NO_0057', 'none', '2017-08-03', '2020-08-03', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('58', 'P06', 'Import_20170807_NO_18', 'P06_G01SG01_NO_0058', 'qwer', '2017-08-07', '0000-00-00', 'ไม่มีประกัน', '2');
INSERT INTO `t_product_unit` VALUES ('59', 'P06', 'Import_20170807_NO_18', 'P06_G01SG01_NO_0059', 'dsa', '2017-08-07', '0000-00-00', 'ไม่มีประกัน', '2');
INSERT INTO `t_product_unit` VALUES ('60', 'P06', 'Import_20170807_NO_18', 'P06_G01SG01_NO_0060', 'dsaq', '2017-08-07', '0000-00-00', 'ไม่มีประกัน', '2');
INSERT INTO `t_product_unit` VALUES ('61', 'P06', 'Import_20170807_NO_18', 'P06_G01SG01_NO_0061', 'eer', '2017-08-07', '0000-00-00', 'ไม่มีประกัน', '2');
INSERT INTO `t_product_unit` VALUES ('62', 'P06', 'Import_20170807_NO_18', 'P06_G01SG01_NO_0062', 'dcvffdf', '2017-08-07', '0000-00-00', 'ไม่มีประกัน', '2');
INSERT INTO `t_product_unit` VALUES ('63', 'P82', 'Import_20170807_NO_18', 'P82_G02SG08_NO_0063', 'qweq', '2017-08-07', '2020-08-07', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('64', 'P82', 'Import_20170807_NO_18', 'P82_G02SG08_NO_0064', 'dsa', '2017-08-07', '2020-08-07', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('65', 'P08', 'Import_20170807_NO_19', 'P08_G01SG01_NO_0065', 'cxz', '2017-08-07', '2020-08-07', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('66', 'P08', 'Import_20170807_NO_19', 'P08_G01SG01_NO_0066', 'swer', '2017-08-07', '2020-08-07', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('67', 'P08', 'Import_20170807_NO_19', 'P08_G01SG01_NO_0067', 'sffg', '2017-08-07', '2020-08-07', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('68', 'P08', 'Import_20170807_NO_19', 'P08_G01SG01_NO_0068', 'vvbn', '2017-08-07', '2020-08-07', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('69', 'P126', 'Import_20170807_NO_19', 'P126_G03SG21_NO_0069', 'dertty', '2017-08-07', '0000-00-00', 'L-T', '2');
INSERT INTO `t_product_unit` VALUES ('70', 'P126', 'Import_20170807_NO_19', 'P126_G03SG21_NO_0070', 'cvvv', '2017-08-07', '0000-00-00', 'L-T', '2');
INSERT INTO `t_product_unit` VALUES ('71', 'P10', 'Import_20170807_NO_20', 'P10_G04SG32_NO_0071', 'dfg', '2017-08-07', '2019-08-07', '2ปี', '1');
INSERT INTO `t_product_unit` VALUES ('72', 'P10', 'Import_20170807_NO_20', 'P10_G04SG32_NO_0072', 'xswe', '2017-08-07', '2019-08-07', '2ปี', '1');
INSERT INTO `t_product_unit` VALUES ('73', 'P126', 'Import_20170807_NO_20', 'P126_G03SG21_NO_0073', 'bbbn', '2017-08-07', '0000-00-00', 'L-T', '2');
INSERT INTO `t_product_unit` VALUES ('74', 'P126', 'Import_20170807_NO_20', 'P126_G03SG21_NO_0074', 'cvvb', '2017-08-07', '0000-00-00', 'L-T', '3');
INSERT INTO `t_product_unit` VALUES ('75', 'P35', 'Import_20170808_NO_21', 'P35_G01SG01_NO_0075', 'dasf', '2017-08-08', '2020-08-08', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('76', 'P35', 'Import_20170808_NO_21', 'P35_G01SG01_NO_0076', 'das', '2017-08-08', '2020-08-08', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('77', 'P35', 'Import_20170808_NO_21', 'P35_G01SG01_NO_0077', 'cvd', '2017-08-08', '2020-08-08', '3ปี', '3');
INSERT INTO `t_product_unit` VALUES ('78', 'P05', 'Import_20170815_NO_22', 'P05_G04SG29_NO_0078', 'DWE', '2017-03-01', '2019-03-01', '2ปี', '2');
INSERT INTO `t_product_unit` VALUES ('79', 'P05', 'Import_20170815_NO_22', 'P05_G04SG29_NO_0079', 'FFG', '2017-03-01', '2019-03-01', '2ปี', '2');
INSERT INTO `t_product_unit` VALUES ('80', 'P05', 'Import_20170815_NO_22', 'P05_G04SG29_NO_0080', 'HHFE', '2017-03-01', '2019-03-01', '2ปี', '3');
INSERT INTO `t_product_unit` VALUES ('81', 'P05', 'Import_20170815_NO_22', 'P05_G04SG29_NO_0081', 'WE123', '2017-03-01', '2019-03-01', '2ปี', '2');
INSERT INTO `t_product_unit` VALUES ('82', 'P05', 'Import_20170815_NO_22', 'P05_G04SG29_NO_0082', '445ff', '2017-03-01', '2019-03-01', '2ปี', '2');
INSERT INTO `t_product_unit` VALUES ('83', 'P81', 'Import_20170822_NO_23', 'P81_G02SG08_NO_0083', 'KKOLOO', '2017-08-22', '2020-08-22', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('84', 'P81', 'Import_20170822_NO_23', 'P81_G02SG08_NO_0084', '457886', '2017-08-22', '2020-08-22', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('85', 'P81', 'Import_20170822_NO_23', 'P81_G02SG08_NO_0085', 'RDKER', '2017-08-22', '2020-08-22', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('86', 'P81', 'Import_20170822_NO_23', 'P81_G02SG08_NO_0086', '145755', '2017-08-22', '2020-08-22', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('87', 'P81', 'Import_20170822_NO_23', 'P81_G02SG08_NO_0087', 'drr', '2017-08-22', '2020-08-22', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('88', 'P06', 'Import_20170822_NO_23', 'P06_G01SG01_NO_0088', 'dwqqqqq', '2017-08-22', '2018-08-22', '1ปี', '2');
INSERT INTO `t_product_unit` VALUES ('89', 'P126', 'Import_20170824_NO_24', 'P126_G03SG21_NO_0089', 'rams1', '2017-08-24', '0000-00-00', 'L-T', '2');
INSERT INTO `t_product_unit` VALUES ('90', 'P126', 'Import_20170824_NO_24', 'P126_G03SG21_NO_0090', 'rams2', '2017-08-24', '0000-00-00', 'L-T', '2');
INSERT INTO `t_product_unit` VALUES ('91', 'P126', 'Import_20170824_NO_24', 'P126_G03SG21_NO_0091', 'rams3', '2017-08-24', '0000-00-00', 'L-T', '3');
INSERT INTO `t_product_unit` VALUES ('92', 'P126', 'Import_20170824_NO_24', 'P126_G03SG21_NO_0092', 'rams4', '2017-08-24', '0000-00-00', 'L-T', '3');
INSERT INTO `t_product_unit` VALUES ('93', 'P126', 'Import_20170824_NO_24', 'P126_G03SG21_NO_0093', 'rams5', '2017-08-24', '0000-00-00', 'L-T', '2');
INSERT INTO `t_product_unit` VALUES ('94', 'P42', 'Import_20170824_NO_25', 'P42_G01SG04_NO_0094', 'i3sss1', '2017-08-24', '2019-08-24', '2ปี', '2');
INSERT INTO `t_product_unit` VALUES ('95', 'P42', 'Import_20170824_NO_25', 'P42_G01SG04_NO_0095', 'i3sss2', '2017-08-24', '2019-08-24', '2ปี', '3');
INSERT INTO `t_product_unit` VALUES ('96', 'P42', 'Import_20170824_NO_25', 'P42_G01SG04_NO_0096', 'i3sss3', '2017-08-24', '2019-08-24', '2ปี', '3');
INSERT INTO `t_product_unit` VALUES ('97', 'P42', 'Import_20170824_NO_25', 'P42_G01SG04_NO_0097', 'i3sss4', '2017-08-24', '2019-08-24', '2ปี', '3');
INSERT INTO `t_product_unit` VALUES ('98', 'P42', 'Import_20170824_NO_25', 'P42_G01SG04_NO_0098', 'i3sss5', '2017-08-24', '2019-08-24', '2ปี', '2');
INSERT INTO `t_product_unit` VALUES ('99', 'P42', 'Import_20170824_NO_26', 'P42_G01SG04_NO_0099', 'i3sss2', '2017-08-24', '2019-08-24', '2ปี', '2');
INSERT INTO `t_product_unit` VALUES ('100', 'P13', 'Import_20170826_NO_27', 'P13_G02SG10_NO_0100', 'dsa', '2017-08-26', '2019-08-26', '2ปี', '2');
INSERT INTO `t_product_unit` VALUES ('101', 'P05', 'Import_20170826_NO_28', 'P05_G04SG29_NO_0101', 'LERTR', '2017-08-26', '2019-08-26', '2ปี', '3');
INSERT INTO `t_product_unit` VALUES ('102', 'P05', 'Import_20170826_NO_28', 'P05_G04SG29_NO_0102', 'KSWE11', '2017-08-26', '2019-08-26', '2ปี', '1');
INSERT INTO `t_product_unit` VALUES ('103', 'P05', 'Import_20170826_NO_28', 'P05_G04SG29_NO_0103', 'CGH3877', '2017-08-26', '2019-08-26', '2ปี', '1');
INSERT INTO `t_product_unit` VALUES ('104', 'P05', 'Import_20170826_NO_28', 'P05_G04SG29_NO_0104', 'KKLEr', '2017-08-26', '2019-08-26', '2ปี', '1');
INSERT INTO `t_product_unit` VALUES ('105', 'P05', 'Import_20170826_NO_28', 'P05_G04SG29_NO_0105', 'IOPP22', '2017-08-26', '2019-08-26', '2ปี', '2');
INSERT INTO `t_product_unit` VALUES ('106', 'P06', 'Import_20170827_NO_29', 'P06_G01SG01_NO_0106', 'KGR882', '2017-08-27', '0000-00-00', 'ไม่มีประกัน', '2');
INSERT INTO `t_product_unit` VALUES ('112', 'P128', 'Import_20170913_NO_31', 'P128_G06SG39_NO_0112', 'K34451UDX', '2017-09-13', '2020-09-13', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('113', 'P128', 'Import_20170913_NO_31', 'P128_G06SG39_NO_0113', 'K34451UAO', '2017-09-13', '2020-09-13', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('114', 'P128', 'Import_20170913_NO_31', 'P128_G06SG39_NO_0114', 'K4855ALWA', '2017-09-13', '2020-09-13', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('115', 'P128', 'Import_20170913_NO_31', 'P128_G06SG39_NO_0115', 'KLOAASCDE', '2017-09-13', '2020-09-13', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('116', 'P44', 'Import_20171003_NO_32', 'P44_G01SG04_NO_0116', 'pen1', '2017-10-03', '2020-10-03', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('117', 'P44', 'Import_20171003_NO_32', 'P44_G01SG04_NO_0117', 'pen2', '2017-10-03', '2020-10-03', '3ปี', '3');
INSERT INTO `t_product_unit` VALUES ('118', 'P44', 'Import_20171003_NO_32', 'P44_G01SG04_NO_0118', 'pen3', '2017-10-03', '2020-10-03', '3ปี', '3');
INSERT INTO `t_product_unit` VALUES ('119', 'P44', 'Import_20171003_NO_32', 'P44_G01SG04_NO_0119', 'pen4', '2017-10-03', '2020-10-03', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('120', 'P126', 'Import_20171004_NO_33', 'P126_G03SG21_NO_0120', 'ramss1', '2017-10-04', '0000-00-00', 'L-T', '1');
INSERT INTO `t_product_unit` VALUES ('121', 'P126', 'Import_20171004_NO_33', 'P126_G03SG21_NO_0121', 'ramss2', '2017-10-04', '0000-00-00', 'L-T', '1');
INSERT INTO `t_product_unit` VALUES ('122', 'P126', 'Import_20171004_NO_33', 'P126_G03SG21_NO_0122', 'ramss3', '2017-10-04', '0000-00-00', 'L-T', '1');
INSERT INTO `t_product_unit` VALUES ('123', 'P126', 'Import_20171004_NO_33', 'P126_G03SG21_NO_0123', 'ramss4', '2017-10-04', '0000-00-00', 'L-T', '1');
INSERT INTO `t_product_unit` VALUES ('129', 'P05', 'Import_20171005_NO_35', 'P05_G04SG29_NO_0129', 'WE3553336XX', '2017-10-05', '2019-03-01', '2ปี', '3');
INSERT INTO `t_product_unit` VALUES ('130', 'P44', 'Import_20171005_NO_36', 'P44_G01SG04_NO_0130', 'pen45s', '2017-10-05', '2020-10-03', '3ปี', '3');
INSERT INTO `t_product_unit` VALUES ('131', 'P129', 'Import_20171005_NO_37', 'P129_G46SG74_NO_0131', 'lg0', '2017-10-05', '2018-10-05', '1ปี', '2');
INSERT INTO `t_product_unit` VALUES ('132', 'P129', 'Import_20171005_NO_37', 'P129_G46SG74_NO_0132', 'lg1', '2017-10-05', '2018-10-05', '1ปี', '3');
INSERT INTO `t_product_unit` VALUES ('133', 'P129', 'Import_20171005_NO_37', 'P129_G46SG74_NO_0133', 'lg2', '2017-10-05', '2018-10-05', '1ปี', '1');
INSERT INTO `t_product_unit` VALUES ('134', 'P129', 'Import_20171005_NO_37', 'P129_G46SG74_NO_0134', 'lg3', '2017-10-05', '2018-10-05', '1ปี', '1');
INSERT INTO `t_product_unit` VALUES ('135', 'P129', 'Import_20171005_NO_38', 'P129_G46SG74_NO_0135', 'lg009', '2017-10-05', '2018-10-05', '1ปี', '1');
INSERT INTO `t_product_unit` VALUES ('136', 'P131', 'Import_20171007_NO_39', 'P131_G47SG75_NO_0136', '32ssa', '2017-10-07', '2020-10-07', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('137', 'P131', 'Import_20171007_NO_39', 'P131_G47SG75_NO_0137', '11131zz', '2017-10-07', '2020-10-07', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('138', 'P131', 'Import_20171007_NO_40', 'P131_G47SG75_NO_0138', '1115aaa', '2017-10-07', '2020-10-07', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('139', 'P78', 'Import_20171008_NO_41', 'P78_G02SG08_NO_0139', 'SKDZZ121233545787', '2017-10-08', '2020-10-08', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('140', 'P78', 'Import_20171008_NO_41', 'P78_G02SG08_NO_0140', 'ZZCXXCXVBFLPOPOP', '2017-10-08', '2020-10-08', '3ปี', '3');
INSERT INTO `t_product_unit` VALUES ('141', 'P08', 'Import_20171008_NO_42', 'P08_G01SG01_NO_0141', 'dsadsa12312312', '2017-10-08', '2020-10-08', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('142', 'P08', 'Import_20171008_NO_42', 'P08_G01SG01_NO_0142', 'dasdqwqqqygff', '2017-10-08', '2020-10-08', '3ปี', '2');
INSERT INTO `t_product_unit` VALUES ('143', 'P131', 'Import_20171008_NO_43', 'P131_G47SG75_NO_0143', 'none', '2017-10-08', '2018-01-08', '3เดือน', '2');
INSERT INTO `t_product_unit` VALUES ('144', 'P131', 'Import_20171008_NO_43', 'P131_G47SG75_NO_0144', 'none', '2017-10-08', '2018-01-08', '3เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('145', 'P34', 'Import_20171008_NO_44', 'P34_G01SG01_NO_0145', 'dsasa', '2017-10-08', '2020-10-08', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('146', 'P34', 'Import_20171008_NO_44', 'P34_G01SG01_NO_0146', 'dsad', '2017-10-08', '2020-10-08', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('147', 'P34', 'Import_20171008_NO_44', 'P34_G01SG01_NO_0147', 'dscxz', '2017-10-08', '2020-10-08', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('148', 'P34', 'Import_20171008_NO_44', 'P34_G01SG01_NO_0148', 'dsa', '2017-10-08', '2020-10-08', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('149', 'P06', 'Import_20171008_NO_44', 'P06_G01SG01_NO_0149', 'ddsw', '2017-10-08', '2020-10-08', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('150', 'P06', 'Import_20171008_NO_44', 'P06_G01SG01_NO_0150', 'we231', '2017-10-08', '2020-10-08', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('151', 'P08', 'Import_20171008_NO_45', 'P08_G01SG01_NO_0151', 'dsacxz', '2017-10-08', '2020-10-08', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('152', 'P08', 'Import_20171008_NO_45', 'P08_G01SG01_NO_0152', '123aaaaaaaaaaaaaaa', '2017-10-08', '2020-10-08', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('153', 'P08', 'Import_20171008_NO_45', 'P08_G01SG01_NO_0153', '123esqaqsdaqwe423erdfesw', '2017-10-08', '2020-10-08', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('154', 'P08', 'Import_20171008_NO_45', 'P08_G01SG01_NO_0154', '1231235r34t646rte', '2017-10-08', '2020-10-08', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('155', 'P08', 'Import_20171008_NO_45', 'P08_G01SG01_NO_0155', '3432423srgfvds', '2017-10-08', '2020-10-08', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('156', 'P130', 'Import_20171008_NO_46', 'P130_G04SG29_NO_0156', '1123dwertt', '2017-10-08', '2019-10-08', '2ปี', '1');
INSERT INTO `t_product_unit` VALUES ('157', 'P130', 'Import_20171008_NO_46', 'P130_G04SG29_NO_0157', '213tytu6754', '2017-10-08', '2019-10-08', '2ปี', '1');
INSERT INTO `t_product_unit` VALUES ('158', 'P130', 'Import_20171008_NO_46', 'P130_G04SG29_NO_0158', '32454bjjygfsd', '2017-10-08', '2019-10-08', '2ปี', '1');
INSERT INTO `t_product_unit` VALUES ('159', 'P131', 'Import_20171008_NO_47', 'P131_G47SG75_NO_0159', 'none', '2017-10-08', '0000-00-00', 'ไม่มีประกัน', '1');
INSERT INTO `t_product_unit` VALUES ('160', 'P131', 'Import_20171008_NO_47', 'P131_G47SG75_NO_0160', 'none', '2017-10-08', '0000-00-00', 'ไม่มีประกัน', '1');
INSERT INTO `t_product_unit` VALUES ('161', 'P131', 'Import_20171008_NO_48', 'P131_G47SG75_NO_0161', '32sarewrew', '2017-10-08', '2017-10-28', '20วัน', '1');
INSERT INTO `t_product_unit` VALUES ('162', 'P131', 'Import_20171008_NO_48', 'P131_G47SG75_NO_0162', 'cxzawgghy', '2017-10-08', '2017-10-28', '20วัน', '1');
INSERT INTO `t_product_unit` VALUES ('163', 'P131', 'Import_20171008_NO_49', 'P131_G47SG75_NO_0163', 'dcxzcdsfdgdf', '2017-10-08', '2018-07-08', '9เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('164', 'P131', 'Import_20171008_NO_49', 'P131_G47SG75_NO_0164', '1dsad123dsacsa', '2017-10-08', '2018-07-08', '9เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('165', 'P131', 'Import_20171008_NO_50', 'P131_G47SG75_NO_0165', 'dsazccxzvcxvxc', '2017-10-08', '2021-10-08', '4ปี', '1');
INSERT INTO `t_product_unit` VALUES ('166', 'P131', 'Import_20171008_NO_50', 'P131_G47SG75_NO_0166', 'zzxcfgdgd23456', '2017-10-08', '2021-10-08', '4ปี', '1');
INSERT INTO `t_product_unit` VALUES ('167', 'P131', 'IMP1710-NO-00051', 'UNTG47SG75-NO-00167', '1dsacxz', '2017-10-08', '2018-07-08', '9เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('168', 'P131', 'IMP1710-NO-00051', 'UNTG47SG75-NO-00168', '2dfstrgfvdbvc', '2017-10-08', '2018-07-08', '9เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('169', 'P131', 'IMP1710-NO-00051', 'UNTG47SG75-NO-00169', '54fgfddbvg', '2017-10-08', '2018-07-08', '9เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('170', 'P131', 'IMP1710-NO-00051', 'UNTG47SG75-NO-00170', '54fgdvbcfggg', '2017-10-08', '2018-07-08', '9เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('171', 'P131', 'IMP1710-NO-00052', 'UNTP131G47SG75-NO-00171', 'dsacxzzxv', '2017-10-09', '2018-07-09', '9เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('172', 'P131', 'IMP1710-NO-00052', 'UNTP131G47SG75-NO-00172', 'dfdergftr123', '2017-10-09', '2018-07-09', '9เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('173', 'P131', 'IMP1710-NO-00052', 'UNTP131G47SG75-NO-00173', '66798fghfgd', '2017-10-09', '2018-07-09', '9เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('174', 'P131', 'IMP1710-NO-00053', 'UNTP131G47SG75-NO-00174', '098767fdasdasd', '2017-10-09', '2018-07-09', '9เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('175', 'P131', 'IMP1710-NO-00053', 'UNTP131G47SG75-NO-00175', '323dsadfsdfgdf', '2017-10-09', '2018-07-09', '9เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('176', 'P131', 'IMP1710-NO-00053', 'UNTP131G47SG75-NO-00176', 'czxasda123dswsz', '2017-10-09', '2018-07-09', '9เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('177', 'P131', 'IMP1710-NO-00054', 'UNTG47SG75-NO-00177', '15767ADSCXZVDS', '2017-10-09', '2018-04-09', '6เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('178', 'P131', 'IMP1710-NO-00054', 'UNTG47SG75-NO-00178', '96375DSAFFDGDV', '2017-10-09', '2018-04-09', '6เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('179', 'P131', 'IMP1710-NO-00054', 'UNTG47SG75-NO-00179', '47AZXCFKLUIOPE', '2017-10-09', '2018-04-09', '6เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('180', 'P131', 'IMP1710-NO-00054', 'UNTG47SG75-NO-00180', 'QXXCV231FEDDG', '2017-10-09', '2018-04-09', '6เดือน', '1');
INSERT INTO `t_product_unit` VALUES ('184', 'P44', 'IMP1710-NO-00065', 'UNTG01SG04-NO-00065', 'pen33asdczx', '2017-10-09', '2020-10-03', '3ปี', '1');
INSERT INTO `t_product_unit` VALUES ('185', 'P05', 'IMP1710-NO-00067', 'UNTG04SG29-NO-00067', 'cxzassddsaasmuf', '2017-10-09', '2019-03-01', '2ปี', '2');
INSERT INTO `t_product_unit` VALUES ('186', 'P08', 'IMP1710-NO-00068', 'UNTG01SG01-NO-00186', 'zzzjkkllio543', '2017-10-09', '2020-10-09', '3ปี', '3');
INSERT INTO `t_product_unit` VALUES ('187', 'P08', 'IMP1710-NO-00068', 'UNTG01SG01-NO-00187', 'ccxzzzzzzz23309llk', '2017-10-09', '2020-10-09', '3ปี', '3');

-- ----------------------------
-- Table structure for t_repair
-- ----------------------------
DROP TABLE IF EXISTS `t_repair`;
CREATE TABLE `t_repair` (
  `Number` int(11) NOT NULL AUTO_INCREMENT,
  `R_ID` char(50) NOT NULL,
  `R_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Customer_ID` char(50) NOT NULL,
  `Type` char(20) NOT NULL,
  `A_Emp_ID` char(10) NOT NULL,
  PRIMARY KEY (`Number`,`R_ID`),
  UNIQUE KEY `R_ID` (`R_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair
-- ----------------------------
INSERT INTO `t_repair` VALUES ('6', 'Repair_NO_0006', '2017-08-14 21:15:15', 'cus_17', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('7', 'Repair_NO_0007', '2017-08-14 22:51:49', 'cus_05', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('9', 'Repair_NO_0009', '2017-08-18 16:10:15', 'cus_07', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('10', 'Repair_NO_0010', '2017-08-18 16:31:05', 'cus_09', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('11', 'Repair_NO_0011', '2017-08-18 21:47:39', 'cus_11', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('12', 'Repair_NO_0012', '2017-08-20 21:28:02', 'cus_02', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('13', 'Repair_NO_0013', '2017-08-20 22:40:47', 'cus_02', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('14', 'Repair_NO_0014', '2017-08-20 23:44:46', 'cus_08', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('15', 'Repair_NO_0015', '2017-08-21 00:04:46', 'cus_09', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('16', 'Repair_NO_0016', '2017-08-22 19:31:31', 'cus_02', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('18', 'Repair_NO_0018', '2017-08-26 18:24:42', 'cus_07', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('19', 'Repair_NO_0019', '2017-08-26 18:25:37', 'cus_02', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('20', 'Repair_NO_0020', '2017-08-27 20:13:15', 'cus_17', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('21', 'Repair_NO_0021', '2017-08-27 21:58:16', 'cus_07', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('22', 'Repair_NO_0022', '2017-08-27 21:59:41', 'cus_10', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('23', 'Repair_NO_0023', '2017-08-27 22:01:21', 'cus_02', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('24', 'Repair_NO_0024', '2017-08-27 22:02:38', 'cus_08', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('25', 'Repair_NO_0025', '2017-08-27 22:06:55', 'cus_07', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('26', 'Repair_NO_0026', '2017-08-27 22:45:08', 'cus_10', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('27', 'Repair_NO_0027', '2017-08-27 23:02:30', 'cus_02', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('28', 'Repair_NO_0028', '2017-09-29 15:37:40', 'cus_02', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('29', 'Repair_NO_0029', '2017-10-01 21:16:01', 'cus_08', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('31', 'Repair_NO_0031', '2017-10-01 21:33:21', 'cus_19', 'N', 'emp02');
INSERT INTO `t_repair` VALUES ('32', 'Repair_NO_0032', '2017-10-05 13:49:47', 'cus_07', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('33', 'Repair_NO_0033', '2017-10-05 16:22:29', 'cus_07', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('34', 'Repair_NO_0034', '2017-10-05 17:17:08', 'cus_07', 'N', 'emp09');
INSERT INTO `t_repair` VALUES ('35', 'Repair_NO_0035', '2017-10-05 17:34:01', 'cus_19', 'N', 'emp09');
INSERT INTO `t_repair` VALUES ('36', 'Repair_NO_0036', '2017-10-06 09:50:32', 'cus_17', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('37', 'Repair_NO_0037', '2017-10-06 16:17:44', 'cus_21', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('38', 'Repair_NO_0038', '2017-10-06 16:22:40', 'cus_21', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('39', 'Repair_NO_0039', '2017-10-07 04:12:32', 'cus_02', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('40', 'RPN1710-NO-00040', '2017-10-09 02:06:05', 'cus_07', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('41', 'RPN1710-NO-00041', '2017-10-09 02:10:47', 'cus_19', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('42', 'RPN1710-NO-00042', '2017-10-09 02:14:52', 'cus_19', 'N', 'emp01');
INSERT INTO `t_repair` VALUES ('43', 'RPN1710-NO-00043', '2017-10-09 02:19:16', 'cus_07', 'N', 'emp01');

-- ----------------------------
-- Table structure for t_repair_case
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_case`;
CREATE TABLE `t_repair_case` (
  `Case_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Item_ID` char(50) NOT NULL,
  `Service_Menu` char(100) NOT NULL,
  `Service_Price` double NOT NULL,
  `Service_Detail` char(255) DEFAULT NULL,
  `Repair_Type` char(10) NOT NULL,
  `Ref_ID_Sell` char(50) DEFAULT NULL,
  `Repair_Warranty` char(20) NOT NULL,
  `Repair_EndWar` date DEFAULT NULL,
  PRIMARY KEY (`Case_Number`),
  KEY `Item_ID` (`Item_ID`),
  KEY `Ref_ID_Sell` (`Ref_ID_Sell`),
  CONSTRAINT `t_repair_case_ibfk_1` FOREIGN KEY (`Item_ID`) REFERENCES `t_repair_item` (`Item_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_repair_case_ibfk_2` FOREIGN KEY (`Ref_ID_Sell`) REFERENCES `t_sell` (`ORD_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_case
-- ----------------------------
INSERT INTO `t_repair_case` VALUES ('41', 'Repair_NO_0009item_10', 'ลง windows ใหม่ PC', '250', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('42', 'Repair_NO_0012item_13', 'ลง windows ใหม่ PC', '250', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('43', 'Repair_NO_0011item_12', 'กู้ข้อมูล', '1500', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('44', 'Repair_NO_0007item_7', 'ลง Driver USB ใหม่', '50', 'ลง Driver USB ใหม่ เพราะถูก Uninstall', 'Custom', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('45', 'Repair_NO_0013item_14', 'ซ่อมวงจรไฟ', '1500', '', 'Menu', null, '1 เดือน', '2017-09-21');
INSERT INTO `t_repair_case` VALUES ('46', 'Repair_NO_0014item_15', 'ขายสินค้า - เปลี่ยนอุปกรณ์', '4250', 'ขายสินค้าเพื่อซ่อม', 'Sell', 'ORD_20170820_NO_53', 'ตามใบเสร็จ', null);
INSERT INTO `t_repair_case` VALUES ('47', 'Repair_NO_0014item_15', 'ลง windows ใหม่ PC', '250', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('48', 'Repair_NO_0015item_16', 'ลง windows ใหม่ NB', '300', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('49', 'Repair_NO_0015item_16', 'ซ่อมการ์ดจอ', '2000', '', 'Menu', null, '1 เดือน', '2017-09-21');
INSERT INTO `t_repair_case` VALUES ('51', 'Repair_NO_0010item_11', 'ลง windows ใหม่ PC', '250', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('52', 'Repair_NO_0010item_11', 'ซ่อมการ์ดจอ', '900', 'เปาลมร้อน chip การ์ดจอใหม่', 'Custom', null, '3 เดือน', '2017-11-21');
INSERT INTO `t_repair_case` VALUES ('53', 'Repair_NO_0016item_17', 'ลง windows ใหม่ NB', '300', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('54', 'Repair_NO_0016item_17', 'ขายสินค้า - เปลี่ยนอุปกรณ์', '4250', 'ขายสินค้าเพื่อซ่อม', 'Sell', 'ORD_20170822_NO_55', 'ตามใบเสร็จ', null);
INSERT INTO `t_repair_case` VALUES ('55', 'Repair_NO_0019item_20', 'ทำความสะอาด', '50', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('56', 'Repair_NO_0019item_20', 'กู้ข้อมูล', '1500', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('57', 'Repair_NO_0020item_21', 'ลง windows ใหม่ PC', '250', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('58', 'Repair_NO_0020item_21', 'ขายสินค้า - เปลี่ยนอุปกรณ์', '3990', 'ขายสินค้าเพื่อซ่อม', 'Sell', 'ORD_20170827_NO_66', 'ตามใบเสร็จ', null);
INSERT INTO `t_repair_case` VALUES ('59', 'Repair_NO_0020item_21', 'ขายสินค้า - เปลี่ยนอุปกรณ์', '4250', 'ขายสินค้าเพื่อซ่อม', 'Sell', 'ORD_20170827_NO_67', 'ตามใบเสร็จ', null);
INSERT INTO `t_repair_case` VALUES ('60', 'Repair_NO_0021item_22', 'กู้ข้อมูล', '1500', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('61', 'Repair_NO_0027item_29', 'ลง windows ใหม่ NB', '300', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('62', 'Repair_NO_0027item_28', 'กู้ข้อมูล', '1500', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('63', 'Repair_NO_0025item_26', 'ลง windows ใหม่ NB', '300', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('64', 'Repair_NO_0028item_30', 'ซ่อมโปรแกรม NB', '300', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('65', 'Repair_NO_0031item_34', 'ซ่อมโปรแกรม NB', '300', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('66', 'Repair_NO_0029item_31', 'ซ่อมโปรแกรม NB', '300', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('67', 'Repair_NO_0029item_31', 'ทำความสะอาด', '50', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('68', 'Repair_NO_0023item_24', 'ซ่อมวงจรไฟ', '1500', '', 'Menu', null, '1 เดือน', '2017-11-03');
INSERT INTO `t_repair_case` VALUES ('69', 'Repair_NO_0023item_24', 'ทำความสะอาด', '50', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('70', 'Repair_NO_0024item_25', 'ซ่อมการ์ดจอ', '2000', '', 'Menu', null, '1 เดือน', '2017-11-03');
INSERT INTO `t_repair_case` VALUES ('71', 'Repair_NO_0024item_25', 'ทำความสะอาด', '50', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('72', 'Repair_NO_0024item_25', 'ซ่อมวงจรไฟ', '1500', '', 'Menu', null, '3 เดือน', '2018-01-03');
INSERT INTO `t_repair_case` VALUES ('74', 'Repair_NO_0026item_27', 'ซ่อมโปรแกรม PC', '250', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('75', 'Repair_NO_0034item_37', 'ซ่อมวงจรไฟ', '1500', '', 'Menu', null, '1 เดือน', '2017-11-05');
INSERT INTO `t_repair_case` VALUES ('76', 'Repair_NO_0034item_37', 'ทำความสะอาด', '50', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('77', 'Repair_NO_0035item_38', 'ซ่อมวงจรไฟ', '1500', '', 'Menu', null, '1 เดือน', '2017-11-05');
INSERT INTO `t_repair_case` VALUES ('78', 'Repair_NO_0035item_38', 'ซ่อมการ์ดจอ', '2000', '', 'Menu', null, '3 เดือน', '2018-01-05');
INSERT INTO `t_repair_case` VALUES ('79', 'Repair_NO_0037item_40', 'ซ่อมการ์ดจอ', '2000', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('80', 'Repair_NO_0037item_40', 'ซ่อมวงจรไฟ', '1500', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('81', 'Repair_NO_0038item_41', 'ซ่อมการ์ดจอ', '2000', '', 'Menu', null, '1 เดือน', '2017-11-06');
INSERT INTO `t_repair_case` VALUES ('82', 'Repair_NO_0038item_41', 'ซ่อมวงจรไฟ', '1500', '', 'Menu', null, '3 เดือน', '2018-01-06');
INSERT INTO `t_repair_case` VALUES ('83', 'Repair_NO_0039item_42', 'ซ่อมโปรแกรม NB', '300', '', 'Menu', null, 'ไม่มี', null);
INSERT INTO `t_repair_case` VALUES ('85', 'RPN1710-NO-00042-45', 'ขายสินค้า - เปลี่ยนอุปกรณ์', '4250', 'ขายสินค้าเพื่อซ่อม', 'Sell', 'ORD1710-NO-00086', 'ตามใบเสร็จ', null);
INSERT INTO `t_repair_case` VALUES ('86', 'RPN1710-NO-00043-46', 'ซ่อมวงจรไฟ', '1500', '', 'Menu', null, '1 เดือน', '2017-11-09');

-- ----------------------------
-- Table structure for t_repair_claim
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_claim`;
CREATE TABLE `t_repair_claim` (
  `Repair_Claim_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Repair_Claim_ID` char(50) NOT NULL,
  `Item_ID` char(50) NOT NULL,
  `Date_R` datetime NOT NULL,
  `Date_S` datetime DEFAULT NULL,
  `Item_manner` char(100) NOT NULL,
  `Item_Detail` varchar(255) DEFAULT NULL,
  `Repair_Claim_Status` char(20) NOT NULL,
  `Customer_ID` char(50) NOT NULL,
  `Emp_ID` char(50) DEFAULT NULL,
  PRIMARY KEY (`Repair_Claim_Number`,`Repair_Claim_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_claim
-- ----------------------------
INSERT INTO `t_repair_claim` VALUES ('1', 'Claim_Repair_NO_0001', 'Repair_NO_0013item_14', '2017-08-21 18:23:03', '2017-08-21 23:21:56', 'เปิดไม่ติด', 'ซ่อมวงจรไฟใหม่อีกครั้ง เปลี่ยน c ใหม่', '4', 'cus_02', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('2', 'Claim_Repair_NO_0002', 'Repair_NO_0015item_16', '2017-08-21 19:14:45', null, 'เปิดไม่ติด', '', '0', 'cus_09', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('3', 'Claim_Repair_NO_0003', 'Repair_NO_0010item_11', '2017-08-21 20:32:51', '2017-08-21 23:43:13', 'การ์ดจอเสีย', 'เป่าลมร้อน chip การ์ดจอซ้ำ', '4', 'cus_09', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('4', 'Claim_Repair_NO_0004', 'Repair_NO_0013item_14', '2017-08-22 09:01:22', '2017-09-14 04:20:12', 'เปิดไม่ติด', 'ซ่อมวงจรไฟใหม่', '4', 'cus_02', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('5', 'Claim_Repair_NO_0005', 'Repair_NO_0015item_16', '2017-08-22 19:36:49', null, 'เปิดไม่ติด', '', '0', 'cus_09', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('6', 'Claim_Repair_NO_0006', 'Repair_NO_0010item_11', '2017-08-24 16:38:31', null, 'การ์ดจอเสีย', '', '0', 'cus_09', 'emp09');
INSERT INTO `t_repair_claim` VALUES ('7', 'Claim_Repair_NO_0007', 'Repair_NO_0010item_11', '2017-08-24 16:40:14', null, 'การ์ดจอเสีย', '', '0', 'cus_09', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('8', 'Claim_Repair_NO_0008', 'Repair_NO_0010item_11', '2017-08-24 16:41:59', null, 'การ์ดจอเสีย', '', '0', 'cus_09', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('9', 'Claim_Repair_NO_0009', 'Repair_NO_0010item_11', '2017-10-03 01:14:16', null, 'การ์ดจอเสีย', '', '0', 'cus_09', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('10', 'Claim_Repair_NO_0010', 'Repair_NO_0023item_24', '2017-10-03 03:24:37', '2017-10-03 04:28:32', 'เปิดใช้งานได้ 30 นาที ถึง 1 ชั่วโมง เครื่องก็ดับ', 'ตรวจเช็คแผงไฟ mainboard ใหม่ ', '4', 'cus_02', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('11', 'Claim_Repair_NO_0011', 'Repair_NO_0010item_11', '2017-10-03 04:17:03', null, 'test', '', '0', 'cus_09', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('12', 'Claim_Repair_NO_0012', 'Repair_NO_0034item_37', '2017-10-05 17:29:22', null, 'เปิดได้ 30 นาทีแล้วดับ', '', '0', 'cus_07', 'emp09');
INSERT INTO `t_repair_claim` VALUES ('13', 'Claim_Repair_NO_0013', 'Repair_NO_0035item_38', '2017-10-05 17:37:13', null, 'เล่นเกมแล้วจอดับ', 'ทดสอบแล้วปกติ', '3', 'cus_19', 'emp09');
INSERT INTO `t_repair_claim` VALUES ('14', 'Claim_Repair_NO_0014', 'Repair_NO_0038item_41', '2017-10-06 17:22:51', '2017-10-06 17:24:39', 'เปิดได้30นาที จอดับ', 'ยกชิพเซ็ตการ์ดจอใหม่', '4', 'cus_21', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('15', 'Claim_Repair_NO_0015', 'Repair_NO_0034item_37', '2017-10-06 20:55:39', null, 'เปิดได้30นาที จอดับ', '', '0', 'cus_07', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('16', 'Claim_Repair_NO_0016', 'Repair_NO_0038item_41', '2017-10-06 20:55:56', null, 'เปิดได้30นาที จอดับ', '', '0', 'cus_21', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('17', 'Claim_Repair_NO_0017', 'RPN1710-NO-00043-46', '2017-10-09 02:22:49', '2017-10-09 02:23:29', 'เปิดใช้งานได้ 30 นาที ถึง 1 ชั่วโมง เครื่องก็ดับ', 'แก้ไขแผงวงจรไฟใหม่', '4', 'cus_07', 'emp01');
INSERT INTO `t_repair_claim` VALUES ('18', 'RPC1710-NO-00018', 'RPN1710-NO-00043-46', '2017-10-09 02:33:18', '2017-10-09 02:34:04', 'ใช้งานได้ 30 นาที - 1 ชั่วโมง เครื่องก็ดับ', 'แก้ไขแผงวงจร', '4', 'cus_07', 'emp01');

-- ----------------------------
-- Table structure for t_repair_item
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_item`;
CREATE TABLE `t_repair_item` (
  `Item_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Item_ID` char(50) NOT NULL,
  `R_ID` char(50) NOT NULL,
  `Type_Item` char(25) NOT NULL,
  `Item_Name` char(50) NOT NULL,
  `Item_SN` char(100) DEFAULT NULL,
  `Item_eqm` char(150) DEFAULT NULL,
  `Item_manner` char(100) NOT NULL,
  `Item_Status` char(5) NOT NULL,
  `Emp_ID` char(10) DEFAULT NULL,
  `SMS_Stack` int(11) NOT NULL,
  `Repair_Total_Price` int(11) DEFAULT NULL,
  PRIMARY KEY (`Item_Number`,`Item_ID`),
  UNIQUE KEY `Item_ID` (`Item_ID`),
  KEY `R_ID` (`R_ID`),
  CONSTRAINT `t_repair_item_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `t_repair` (`R_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_item
-- ----------------------------
INSERT INTO `t_repair_item` VALUES ('6', 'Repair_NO_0006item_6', 'Repair_NO_0006', 'NoteBook', 'Dell  INSPIRON 4356', 'K2311WS14444', 'สายไฟ AC,Adapter,', 'จอแตก,ฝาพับหัก', '0', '', '0', '0');
INSERT INTO `t_repair_item` VALUES ('7', 'Repair_NO_0007item_7', 'Repair_NO_0007', 'PC-Case', 'Hp All IN ONE 2.1', 'KKD123', 'สายไฟ AC,Adapter,', 'usb เสียบไม่เข้า', '4', 'emp01', '0', '50');
INSERT INTO `t_repair_item` VALUES ('10', 'Repair_NO_0009item_10', 'Repair_NO_0009', 'PC-Case', 'Case Tt2000 สีดำ', '', '', 'ลง Windows ใหม่', '4', 'emp01', '1', '250');
INSERT INTO `t_repair_item` VALUES ('11', 'Repair_NO_0010item_11', 'Repair_NO_0010', 'PC-Case', 'Case Dell สีดำ', '', '', 'การ์ดจอเสีย', '4', 'emp03', '0', '1150');
INSERT INTO `t_repair_item` VALUES ('12', 'Repair_NO_0011item_12', 'Repair_NO_0011', 'ETC', 'Hard disk 1TB.', 'sdwesad1123', 'สายUSB,', 'กู้ข้อมูล', '4', 'emp01', '1', '1500');
INSERT INTO `t_repair_item` VALUES ('13', 'Repair_NO_0012item_13', 'Repair_NO_0012', 'PC-Case', 'Case Dell สีแดง', '', '', 'ลง windows ใหม่', '4', 'emp01', '0', '250');
INSERT INTO `t_repair_item` VALUES ('14', 'Repair_NO_0013item_14', 'Repair_NO_0013', 'NoteBook', 'lenovo z475', 'LLER112WML', 'สายไฟ AC,Adapter,', 'เปิดไม่ติด', '4', 'emp01', '1', '1500');
INSERT INTO `t_repair_item` VALUES ('15', 'Repair_NO_0014item_15', 'Repair_NO_0014', 'PC-Case', 'Case Neolution Z3', '', '', 'การ์ดจอเสีย', '4', 'emp01', '0', '4500');
INSERT INTO `t_repair_item` VALUES ('16', 'Repair_NO_0015item_16', 'Repair_NO_0015', 'NoteBook', 'Acer C4', 'LLW33PU', '', 'เปิดไม่ติด', '4', 'emp01', '0', '2300');
INSERT INTO `t_repair_item` VALUES ('17', 'Repair_NO_0016item_17', 'Repair_NO_0016', 'NoteBook', 'Lenovo z475', 'SERZASFFERQQ', 'กระเป๋า,สายไฟ AC,Adapter,', 'ลง windows ใหม่', '4', 'emp01', '1', '4550');
INSERT INTO `t_repair_item` VALUES ('19', 'Repair_NO_0018item_19', 'Repair_NO_0018', 'ETC', 'External HDD 1.0 TB Toshiba', '', 'สายUSB,', 'กู้ข้อมูล', '2', 'emp09', '0', null);
INSERT INTO `t_repair_item` VALUES ('20', 'Repair_NO_0019item_20', 'Repair_NO_0019', 'ETC', 'External HDD 1.0 TB Toshiba', '', 'สายไฟ AC,Adapter,', 'กู้ข้อมูล', '4', 'emp09', '0', '1550');
INSERT INTO `t_repair_item` VALUES ('21', 'Repair_NO_0020item_21', 'Repair_NO_0020', 'PC-Case', 'Case Neolution GO28', 'SNKJ88ER33Q', 'สายไฟ AC,Adapter,', 'ลงวินโด้วใหม่', '4', 'emp01', '0', '8490');
INSERT INTO `t_repair_item` VALUES ('22', 'Repair_NO_0021item_22', 'Repair_NO_0021', 'ETC', 'External HDD 1.0 TB Toshiba', '', 'สายUSB,', 'กู้ข้อมูล', '4', 'emp01', '0', '1500');
INSERT INTO `t_repair_item` VALUES ('23', 'Repair_NO_0022item_23', 'Repair_NO_0022', 'ETC', 'External HDD 2.0 TB Toshiba', 'dsaww', 'สายUSB,', 'กู้ข้อมูล', '2', 'emp01', '0', null);
INSERT INTO `t_repair_item` VALUES ('24', 'Repair_NO_0023item_24', 'Repair_NO_0023', 'NoteBook', 'Acer z9', 'dsaweqw', '', 'เปิดไม่ติด', '4', 'emp01', '0', '1550');
INSERT INTO `t_repair_item` VALUES ('25', 'Repair_NO_0024item_25', 'Repair_NO_0024', 'NoteBook', 'lenovo y486', 'ewqedsa', '', 'เปิดไม่ติด', '4', 'emp09', '0', '3550');
INSERT INTO `t_repair_item` VALUES ('26', 'Repair_NO_0025item_26', 'Repair_NO_0025', 'NoteBook', 'Lenovo z470', 'KKOI', 'สายไฟ AC,Adapter,', 'ลงโปรแกรมใหม่', '4', 'emp01', '0', '300');
INSERT INTO `t_repair_item` VALUES ('27', 'Repair_NO_0026item_27', 'Repair_NO_0026', 'PC-Case', 'Case Neolution GO2833', '', 'สายUSB,', 'ลงโปรแกรมใหม่', '2', 'emp09', '0', '0');
INSERT INTO `t_repair_item` VALUES ('28', 'Repair_NO_0027item_28', 'Repair_NO_0027', 'ETC', 'External HDD 1.0 TB Toshiba', '', 'สายUSB,', 'กู้ข้อมูล', '4', 'emp01', '0', '1500');
INSERT INTO `t_repair_item` VALUES ('29', 'Repair_NO_0027item_29', 'Repair_NO_0027', 'NoteBook', 'Lenovo G41', 'KKlsow', '', 'ลงโปรแกรมใหม่', '4', 'emp01', '0', '300');
INSERT INTO `t_repair_item` VALUES ('30', 'Repair_NO_0028item_30', 'Repair_NO_0028', 'NoteBook', 'Lenovo z470', 'KK4ZQ22SS', 'กระเป๋า,สายไฟ AC,Adapter,', 'ลงโปรแกรมใหม่', '4', 'emp01', '1', '300');
INSERT INTO `t_repair_item` VALUES ('31', 'Repair_NO_0029item_31', 'Repair_NO_0029', 'NoteBook', 'Lenovo z470', 'LZ45KOSL11', '', 'ลงโปรแกรมใหม่', '3', 'emp01', '0', '350');
INSERT INTO `t_repair_item` VALUES ('34', 'Repair_NO_0031item_34', 'Repair_NO_0031', 'NoteBook', 'acer aspire e15', 'A115Q336987', '', 'ลงโปรแกรมใหม่', '3', 'emp01', '8', '300');
INSERT INTO `t_repair_item` VALUES ('35', 'Repair_NO_0032item_35', 'Repair_NO_0032', 'NoteBook', 'lenovo y450', 'KKSSSSAAA', '', 'ลงโปรแกรมใหม่', '2', 'emp02', '0', null);
INSERT INTO `t_repair_item` VALUES ('36', 'Repair_NO_0033item_36', 'Repair_NO_0033', 'NoteBook', 'lenovo y450', 'kkk1', 'สายไฟ AC,Adapter,', 'เปิดไม่ติด', '2', 'emp01', '0', null);
INSERT INTO `t_repair_item` VALUES ('37', 'Repair_NO_0034item_37', 'Repair_NO_0034', 'NoteBook', 'lenovo z475', 'KOS8845', 'สายไฟ AC,Adapter,', 'เปิดไม่ติด', '4', 'emp09', '0', '1550');
INSERT INTO `t_repair_item` VALUES ('38', 'Repair_NO_0035item_38', 'Repair_NO_0035', 'NoteBook', 'lenovo z475', 'KKKOIOO', '', 'เปิดไม่ติด', '4', 'emp09', '0', '3500');
INSERT INTO `t_repair_item` VALUES ('39', 'Repair_NO_0036item_39', 'Repair_NO_0036', 'NoteBook', 'acer aspire e15', 'LASK55412ZZ', '', 'ลงโปรแกรมใหม่', '2', 'emp01', '0', null);
INSERT INTO `t_repair_item` VALUES ('40', 'Repair_NO_0037item_40', 'Repair_NO_0037', 'NoteBook', 'Acer aspire 4', 'KKOOOIOIOIOIOIOIO', '', 'เปิดไม่ติด', '4', 'emp01', '1', '3500');
INSERT INTO `t_repair_item` VALUES ('41', 'Repair_NO_0038item_41', 'Repair_NO_0038', 'NoteBook', 'lenovo z475', 'KOIZZZ', '', 'จอติดๆดับๆ', '4', 'emp01', '0', '3500');
INSERT INTO `t_repair_item` VALUES ('42', 'Repair_NO_0039item_42', 'Repair_NO_0039', 'NoteBook', 'lenovo z475', 'sd115647', '', 'ลงโปรแกรมใหม่', '4', 'emp01', '1', '300');
INSERT INTO `t_repair_item` VALUES ('43', 'RPN1710-NO-00040item_43', 'RPN1710-NO-00040', 'NoteBook', 'Lenovo z470', 'KKOZXCDWW', 'สายไฟ AC,Adapter,', 'ซ่อมโปรแกรม', '2', 'emp01', '0', null);
INSERT INTO `t_repair_item` VALUES ('44', 'RPN1710-NO-00041#44', 'RPN1710-NO-00041', 'PC-Case', 'Case Neolution GO28 สีแดง', '', '', 'เปิดไม่ติด', '0', '', '0', null);
INSERT INTO `t_repair_item` VALUES ('45', 'RPN1710-NO-00042-45', 'RPN1710-NO-00042', 'PC-Case', 'Case Neolution GO28 สีเงิน', '', '', 'เปิดไม่ติด', '4', 'emp01', '0', '4250');
INSERT INTO `t_repair_item` VALUES ('46', 'RPN1710-NO-00043-46', 'RPN1710-NO-00043', 'NoteBook', 'Lenovo z470', 'cxzczvcxasddssd', '', 'เปิดไม่ติด', '4', 'emp01', '0', '1500');

-- ----------------------------
-- Table structure for t_return_item
-- ----------------------------
DROP TABLE IF EXISTS `t_return_item`;
CREATE TABLE `t_return_item` (
  `Return_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Ref_ID_Return` char(100) NOT NULL,
  `ReturnItem_Time` datetime NOT NULL,
  PRIMARY KEY (`Return_Number`,`Ref_ID_Return`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_return_item
-- ----------------------------
INSERT INTO `t_return_item` VALUES ('1', 'Repair_NO_0014item_15', '2017-08-21 00:19:42');
INSERT INTO `t_return_item` VALUES ('2', 'Repair_NO_0015item_16', '2017-08-21 00:34:27');
INSERT INTO `t_return_item` VALUES ('3', 'Repair_NO_0013item_14', '2017-08-21 00:36:42');
INSERT INTO `t_return_item` VALUES ('4', 'Repair_NO_0012item_13', '2017-08-21 01:30:08');
INSERT INTO `t_return_item` VALUES ('5', 'Repair_NO_0009item_10', '2017-08-21 01:31:16');
INSERT INTO `t_return_item` VALUES ('6', 'Repair_NO_0010item_11', '2017-08-21 14:29:25');
INSERT INTO `t_return_item` VALUES ('7', 'Repair_NO_0011item_12', '2017-08-21 23:15:43');
INSERT INTO `t_return_item` VALUES ('8', 'Claim_Repair_NO_0001', '2017-08-21 23:21:56');
INSERT INTO `t_return_item` VALUES ('9', 'Claim_Repair_NO_0003', '2017-08-21 23:43:13');
INSERT INTO `t_return_item` VALUES ('10', 'Repair_NO_0016item_17', '2017-08-22 19:35:03');
INSERT INTO `t_return_item` VALUES ('11', 'Claim_NO_0015', '2017-08-25 17:03:02');
INSERT INTO `t_return_item` VALUES ('12', 'Repair_NO_0019item_20', '2017-08-26 20:57:05');
INSERT INTO `t_return_item` VALUES ('13', 'Claim_NO_0010', '2017-08-26 23:15:27');
INSERT INTO `t_return_item` VALUES ('14', 'Repair_NO_0020item_21', '2017-08-27 23:43:36');
INSERT INTO `t_return_item` VALUES ('15', 'Repair_NO_0007item_7', '2017-08-28 01:35:38');
INSERT INTO `t_return_item` VALUES ('16', 'Repair_NO_0021item_22', '2017-08-28 01:40:08');
INSERT INTO `t_return_item` VALUES ('17', 'Repair_NO_0027item_29', '2017-08-28 01:43:48');
INSERT INTO `t_return_item` VALUES ('18', 'Repair_NO_0027item_28', '2017-08-28 01:45:50');
INSERT INTO `t_return_item` VALUES ('19', 'Repair_NO_0025item_26', '2017-08-28 01:52:38');
INSERT INTO `t_return_item` VALUES ('20', 'Claim_Repair_NO_0004', '2017-09-14 04:20:12');
INSERT INTO `t_return_item` VALUES ('21', 'Repair_NO_0028item_30', '2017-09-29 15:39:57');
INSERT INTO `t_return_item` VALUES ('22', 'Repair_NO_0023item_24', '2017-10-03 01:47:08');
INSERT INTO `t_return_item` VALUES ('23', 'Claim_Repair_NO_0010', '2017-10-03 04:28:32');
INSERT INTO `t_return_item` VALUES ('24', 'Repair_NO_0024item_25', '2017-10-03 04:38:47');
INSERT INTO `t_return_item` VALUES ('25', 'Claim_NO_0024', '2017-10-04 13:51:03');
INSERT INTO `t_return_item` VALUES ('26', 'Claim_NO_0027', '2017-10-04 21:20:37');
INSERT INTO `t_return_item` VALUES ('27', 'Claim_NO_0026', '2017-10-04 21:23:28');
INSERT INTO `t_return_item` VALUES ('28', 'Claim_NO_0019', '2017-10-04 21:50:18');
INSERT INTO `t_return_item` VALUES ('29', 'Claim_NO_0009', '2017-10-04 21:56:03');
INSERT INTO `t_return_item` VALUES ('30', 'Claim_NO_0028', '2017-10-04 22:03:56');
INSERT INTO `t_return_item` VALUES ('31', 'Claim_NO_0029', '2017-10-04 22:04:24');
INSERT INTO `t_return_item` VALUES ('32', 'Claim_NO_0031', '2017-10-05 13:58:03');
INSERT INTO `t_return_item` VALUES ('33', 'Repair_NO_0034item_37', '2017-10-05 17:21:25');
INSERT INTO `t_return_item` VALUES ('34', 'Repair_NO_0035item_38', '2017-10-05 17:35:16');
INSERT INTO `t_return_item` VALUES ('35', 'Claim_NO_0023', '2017-10-06 15:59:29');
INSERT INTO `t_return_item` VALUES ('36', 'Claim_NO_0033', '2017-10-06 15:59:43');
INSERT INTO `t_return_item` VALUES ('37', 'Repair_NO_0037item_40', '2017-10-06 16:19:24');
INSERT INTO `t_return_item` VALUES ('38', 'Repair_NO_0038item_41', '2017-10-06 16:24:45');
INSERT INTO `t_return_item` VALUES ('39', 'Claim_Repair_NO_0014', '2017-10-06 17:24:39');
INSERT INTO `t_return_item` VALUES ('40', 'Repair_NO_0039item_42', '2017-10-07 04:25:02');
INSERT INTO `t_return_item` VALUES ('41', 'Claim_NO_0035', '2017-10-07 04:33:32');
INSERT INTO `t_return_item` VALUES ('42', 'CLM1710-NO-00038', '2017-10-09 01:26:58');
INSERT INTO `t_return_item` VALUES ('43', 'RPN1710-NO-00042-45', '2017-10-09 02:17:05');
INSERT INTO `t_return_item` VALUES ('44', 'RPN1710-NO-00043-46', '2017-10-09 02:20:38');
INSERT INTO `t_return_item` VALUES ('45', 'Claim_Repair_NO_0017', '2017-10-09 02:23:29');
INSERT INTO `t_return_item` VALUES ('46', 'RPC1710-NO-00018', '2017-10-09 02:34:04');

-- ----------------------------
-- Table structure for t_sell
-- ----------------------------
DROP TABLE IF EXISTS `t_sell`;
CREATE TABLE `t_sell` (
  `Number` int(11) NOT NULL AUTO_INCREMENT,
  `ORD_ID` char(50) NOT NULL,
  `Customer_ID` char(50) NOT NULL,
  `Date_Sell` datetime NOT NULL,
  `Total_Money` double NOT NULL,
  `ORD_Status` char(5) NOT NULL,
  `ORD_Type` char(10) NOT NULL,
  `Emp_ID` char(10) NOT NULL,
  PRIMARY KEY (`Number`,`ORD_ID`),
  UNIQUE KEY `ORD_ID` (`ORD_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell
-- ----------------------------
INSERT INTO `t_sell` VALUES ('4', 'ORD_N4_20170727', 'เงินสด', '2017-07-27 03:18:01', '14810', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('5', 'ORD_N5_20170727', 'cus_02', '2017-07-27 03:31:46', '11010', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('6', 'ORD_N6_20170727', 'เงินสด', '2017-07-27 12:50:50', '14810', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('7', 'ORD_N7_20170730', 'เงินสด', '2017-07-30 08:34:24', '6660', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('8', 'ORD_N8_20170730', 'เงินสด', '2017-07-30 13:17:12', '3490', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('9', 'ORD_N9_20170730', 'เงินสด', '2017-07-30 13:36:01', '3490', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('12', 'ORD_N12_20170730', 'เงินสด', '2017-07-30 13:42:19', '4350', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('16', 'ORD_20170811_NO_16', 'เงินสด', '2017-08-11 21:28:45', '15330', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('17', 'ORD_20170811_NO_17', 'เงินสด', '2017-08-11 21:32:18', '3990', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('18', 'ORD_20170811_NO_18', 'เงินสด', '2017-08-11 21:32:43', '3990', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('19', 'ORD_20170811_NO_19', 'เงินสด', '2017-08-11 21:59:49', '13320', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('20', 'ORD_20170811_NO_20', 'เงินสด', '2017-08-11 22:04:59', '6660', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('21', 'ORD_20170811_NO_21', 'เงินสด', '2017-08-11 23:31:18', '3990', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('23', 'ORD_20170812_NO_23', 'เงินสด', '2017-08-12 14:26:26', '3490', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('24', 'ORD_20170813_NO_24', 'cus_10', '2017-08-13 14:36:13', '3490', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('25', 'ORD_20170813_NO_25', 'cus_11', '2017-08-13 14:37:29', '3490', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('26', 'ORD_20170813_NO_26', 'cus_07', '2017-08-13 14:58:12', '42880', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('28', 'ORD_20170813_NO_28', 'เงินสด', '2017-08-13 16:02:09', '35900', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('29', 'ORD_20170815_NO_29', 'เงินสด', '2017-08-15 02:49:27', '3490', '1', 'sell', 'emp09');
INSERT INTO `t_sell` VALUES ('30', 'ORD_20170816_NO_30', 'เงินสด', '2017-08-16 21:52:22', '8150', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('31', 'ORD_20170817_NO_31', 'เงินสด', '2017-08-17 02:03:04', '3980', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('32', 'ORD_20170817_NO_32', 'เงินสด', '2017-08-17 02:23:37', '4350', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('33', 'ORD_20170817_NO_33', 'เงินสด', '2017-08-17 12:44:45', '4350', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('34', 'ORD_20170817_NO_34', 'cus_17', '2017-08-17 16:12:49', '8230', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('35', 'ORD_20170817_NO_35', 'เงินสด', '2017-08-17 18:34:31', '2390', '1', 'sell', 'emp09');
INSERT INTO `t_sell` VALUES ('36', 'ORD_20170817_NO_36', 'เงินสด', '2017-08-17 20:39:16', '3490', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('37', 'ORD_20170818_NO_37', 'เงินสด', '2017-08-18 17:52:29', '4350', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('38', 'ORD_20170818_NO_38', 'เงินสด', '2017-08-18 17:53:51', '4350', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('53', 'ORD_20170820_NO_53', 'cus_08', '2017-08-20 23:45:31', '4250', '1', 'repair', 'emp01');
INSERT INTO `t_sell` VALUES ('54', 'ORD_20170822_NO_54', 'cus_18', '2017-08-22 19:29:56', '13640', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('55', 'ORD_20170822_NO_55', 'cus_02', '2017-08-22 19:33:43', '4250', '1', 'repair', 'emp01');
INSERT INTO `t_sell` VALUES ('56', 'ORD_20170823_NO_56', 'เงินสด', '2017-08-23 23:02:02', '4350', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('57', 'ORD_20170824_NO_57', 'เงินสด', '2017-08-24 10:17:51', '13050', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('58', 'ORD_20170824_NO_58', 'เงินสด', '2017-08-24 11:05:22', '4050', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('59', 'ORD_20170824_NO_59', 'เงินสด', '2017-08-24 12:43:20', '8100', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('60', 'ORD_20170824_NO_60', 'เงินสด', '2017-08-24 13:18:51', '3990', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('61', 'ORD_20170824_NO_61', 'เงินสด', '2017-08-24 13:20:00', '8150', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('62', 'ORD_20170825_NO_62', 'เงินสด', '2017-08-25 04:04:22', '2720', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('63', 'ORD_20170826_NO_63', 'เงินสด', '2017-08-26 11:22:28', '2780', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('64', 'ORD_20170827_NO_64', 'เงินสด', '2017-08-27 19:00:06', '2720', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('65', 'ORD_20170827_NO_65', 'เงินสด', '2017-08-27 21:20:01', '4250', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('66', 'ORD_20170827_NO_66', 'cus_17', '2017-08-27 23:07:43', '3990', '1', 'repair', 'emp01');
INSERT INTO `t_sell` VALUES ('67', 'ORD_20170827_NO_67', 'cus_17', '2017-08-27 23:08:10', '4250', '1', 'repair', 'emp01');
INSERT INTO `t_sell` VALUES ('68', 'ORD_20170829_NO_68', 'เงินสด', '2017-08-29 16:53:34', '2390', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('69', 'ORD_20170913_NO_69', 'เงินสด', '2017-09-13 10:19:59', '2980', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('70', 'ORD_20170913_NO_70', 'cus_10', '2017-09-13 10:22:52', '2980', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('71', 'ORD_20170922_NO_71', 'เงินสด', '2017-09-22 17:30:53', '3990', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('72', 'ORD_20171003_NO_72', 'เงินสด', '2017-10-03 18:58:51', '2720', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('73', 'ORD_20171003_NO_73', 'เงินสด', '2017-10-03 23:38:48', '1980', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('74', 'ORD_20171004_NO_74', 'เงินสด', '2017-10-04 00:25:25', '4350', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('76', 'ORD_20171005_NO_76', 'เงินสด', '2017-10-05 13:50:58', '1000', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('77', 'ORD_20171005_NO_77', 'cus_07', '2017-10-05 14:45:59', '1980', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('78', 'ORD_20171006_NO_78', 'cus_20', '2017-10-06 13:36:45', '3490', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('79', 'ORD_20171007_NO_79', 'เงินสด', '2017-10-07 04:16:41', '3000', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('80', 'ORD_20171008_NO_80', 'เงินสด', '2017-10-08 00:55:43', '2720', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('81', 'ORD1710-NO-00081', 'เงินสด', '2017-10-08 23:05:08', '1500', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('82', 'ORD1710-NO-00082', 'เงินสด', '2017-10-09 01:28:26', '1500', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('83', 'ORD1710-NO-00083', 'เงินสด', '2017-10-09 01:29:56', '6660', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('84', 'ORD1710-NO-00084', 'เงินสด', '2017-10-09 01:44:53', '6660', '1', 'sell', 'emp01');
INSERT INTO `t_sell` VALUES ('86', 'ORD1710-NO-00086', 'cus_19', '2017-10-09 02:16:18', '4250', '1', 'repair', 'emp01');

-- ----------------------------
-- Table structure for t_sell_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_sell_detail`;
CREATE TABLE `t_sell_detail` (
  `Number` int(11) NOT NULL AUTO_INCREMENT,
  `ORD_ID` char(50) NOT NULL,
  `P_ID` char(50) NOT NULL,
  `P_Name` varchar(100) NOT NULL,
  `P_Price` double NOT NULL,
  `Unit_ID` char(50) NOT NULL,
  `S_ID` char(100) NOT NULL,
  `Date_Receive` date NOT NULL,
  `End_Warranty` date NOT NULL,
  `Warranty` char(20) NOT NULL,
  `Date_Sell_Shop` date NOT NULL,
  `End_Warranty_Shop` date NOT NULL,
  `Unit_Status` char(10) NOT NULL,
  PRIMARY KEY (`Number`,`ORD_ID`),
  KEY `ORD_ID` (`ORD_ID`),
  CONSTRAINT `t_sell_detail_ibfk_1` FOREIGN KEY (`ORD_ID`) REFERENCES `t_sell` (`ORD_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sell_detail
-- ----------------------------
INSERT INTO `t_sell_detail` VALUES ('4', 'ORD_N4_20170727', 'P08', 'AMD AM3+ FX-8350 4.0 Ghz.', '6660', 'P08_q1vVTh', 'KKKKA', '2017-07-20', '2020-07-20', '3ปี', '2017-07-27', '2020-07-27', '1');
INSERT INTO `t_sell_detail` VALUES ('5', 'ORD_N4_20170727', 'P58', 'CORE I5 6600K 3.5 GHz (NO FAN)', '8150', 'P58_1i1u1f', 'CCCCC', '2017-07-24', '2020-07-24', '3ปี', '2017-07-27', '2020-07-27', '1');
INSERT INTO `t_sell_detail` VALUES ('6', 'ORD_N5_20170727', 'P08', 'AMD AM3+ FX-8350 4.0 Ghz.', '6660', 'P08_XojzlX', 'KKKKK', '2017-07-20', '2020-07-20', '3ปี', '2017-07-27', '2020-07-27', '1');
INSERT INTO `t_sell_detail` VALUES ('7', 'ORD_N5_20170727', 'P126', 'DDR4/2133 TEAM ELITE PLUS UD-D4 (CL15) RED (8X2)', '4350', 'P126_1upXSR', 'RRY', '2017-07-27', '2022-07-27', '5ปี', '2017-07-27', '2022-07-27', '1');
INSERT INTO `t_sell_detail` VALUES ('8', 'ORD_N6_20170727', 'P08', 'AMD AM3+ FX-8350 4.0 Ghz.', '6660', 'P08_kIdZJX', 'KKKKZ', '2017-07-20', '2020-07-20', '3ปี', '2017-07-27', '2020-07-27', '1');
INSERT INTO `t_sell_detail` VALUES ('9', 'ORD_N6_20170727', 'P58', 'CORE I5 6600K 3.5 GHz (NO FAN)', '8150', 'P58_toQevz', 'CCCCB', '2017-07-24', '2020-07-24', '3ปี', '2017-07-27', '2020-07-27', '1');
INSERT INTO `t_sell_detail` VALUES ('10', 'ORD_N7_20170730', 'P08', 'AMD AM3+ FX-8350 4.0 Ghz.', '6660', 'P08_0Z4PWn', 'KKKKB', '2017-07-20', '2020-07-20', '3ปี', '2017-07-30', '2020-07-30', '1');
INSERT INTO `t_sell_detail` VALUES ('11', 'ORD_N8_20170730', 'P34', 'FX-6300 3.5 GHz', '3490', 'P34_uWpr1A', 'A200010', '2017-07-27', '2020-07-27', '3ปี', '2017-07-30', '2020-07-30', '1');
INSERT INTO `t_sell_detail` VALUES ('12', 'ORD_N9_20170730', 'P34', 'FX-6300 3.5 GHz', '3490', 'P34_SLghxy', 'A20009', '2017-07-27', '2020-07-27', '3ปี', '2017-07-30', '2020-07-30', '1');
INSERT INTO `t_sell_detail` VALUES ('15', 'ORD_N12_20170730', 'P126', 'DDR4/2133 TEAM ELITE PLUS UD-D4 (CL15) RED (8X2)', '4350', 'P126_XTmlji', 'RRA', '2017-07-27', '2022-07-27', '5ปี', '2017-07-30', '2022-07-30', '1');
INSERT INTO `t_sell_detail` VALUES ('23', 'ORD_20170811_NO_16', 'P06', 'AMD AM3+ FX-6300 3.5 Ghz.', '3990', 'P06_G01SG01_NO_0058', 'qwer', '2017-08-07', '0000-00-00', 'ไม่มีประกัน', '2017-08-11', '0000-00-00', '1');
INSERT INTO `t_sell_detail` VALUES ('24', 'ORD_20170811_NO_16', 'P08', 'AMD AM3+ FX-8350 4.0 Ghz.', '6660', 'P08_OCVOr8', 'KKKKP', '2017-07-20', '2020-07-20', '3ปี', '2017-08-11', '2020-08-11', '3');
INSERT INTO `t_sell_detail` VALUES ('25', 'ORD_20170811_NO_16', 'P82', '970 PRO3 R2.0', '2340', 'P82_G02SG08_NO_0063', 'qweq', '2017-08-07', '2020-08-07', '3ปี', '2017-08-11', '2020-08-11', '1');
INSERT INTO `t_sell_detail` VALUES ('26', 'ORD_20170811_NO_16', 'P82', '970 PRO3 R2.0', '2340', 'P82_G02SG08_NO_0064', 'dsa', '2017-08-07', '2020-08-07', '3ปี', '2017-08-11', '2020-08-11', '1');
INSERT INTO `t_sell_detail` VALUES ('27', 'ORD_20170811_NO_17', 'P06', 'AMD AM3+ FX-6300 3.5 Ghz.', '3990', 'P06_G01SG01_NO_0059', 'dsa', '2017-08-07', '0000-00-00', 'ไม่มีประกัน', '2017-08-11', '0000-00-00', '1');
INSERT INTO `t_sell_detail` VALUES ('28', 'ORD_20170811_NO_18', 'P06', 'AMD AM3+ FX-6300 3.5 Ghz.', '3990', 'P06_G01SG01_NO_0060', 'dsaq', '2017-08-07', '0000-00-00', 'ไม่มีประกัน', '2017-08-11', '0000-00-00', '1');
INSERT INTO `t_sell_detail` VALUES ('29', 'ORD_20170811_NO_19', 'P08', 'AMD AM3+ FX-8350 4.0 Ghz.', '6660', 'P08_G01SG01_NO_0065', 'cxz', '2017-08-07', '2020-08-07', '3ปี', '2017-08-11', '2020-08-11', '3');
INSERT INTO `t_sell_detail` VALUES ('30', 'ORD_20170811_NO_19', 'P08', 'AMD AM3+ FX-8350 4.0 Ghz.', '6660', 'P08_G01SG01_NO_0066', 'swer', '2017-08-07', '2020-08-07', '3ปี', '2017-08-11', '2020-08-11', '1');
INSERT INTO `t_sell_detail` VALUES ('31', 'ORD_20170811_NO_20', 'P08', 'AMD AM3+ FX-8350 4.0 Ghz.', '6660', 'P08_G01SG01_NO_0067', 'sffg', '2017-08-07', '2020-08-07', '3ปี', '2017-08-11', '2020-08-11', '1');
INSERT INTO `t_sell_detail` VALUES ('32', 'ORD_20170811_NO_21', 'P06', 'AMD AM3+ FX-6300 3.5 Ghz.', '3990', 'P06_G01SG01_NO_0061', 'eer', '2017-08-07', '0000-00-00', 'ไม่มีประกัน', '2017-08-11', '0000-00-00', '1');
INSERT INTO `t_sell_detail` VALUES ('34', 'ORD_20170812_NO_23', 'P34', 'FX-6300 3.5 GHz', '3490', 'P34_eZv9UV', 'A20001', '2017-07-27', '2020-07-27', '3ปี', '2017-08-12', '2020-08-12', '1');
INSERT INTO `t_sell_detail` VALUES ('35', 'ORD_20170811_NO_16', 'P34', 'FX-6300 3.5 GHz', '3490', 'P34_UoDkv0', 'A20002', '2017-07-27', '2020-07-27', '3ปี', '2017-08-13', '2020-08-13', '1');
INSERT INTO `t_sell_detail` VALUES ('36', 'ORD_20170813_NO_25', 'P34', 'FX-6300 3.5 GHz', '3490', 'P34_2TBsbR', 'A20003', '2017-07-27', '2020-07-27', '3ปี', '2017-08-13', '2020-08-13', '3');
INSERT INTO `t_sell_detail` VALUES ('37', 'ORD_20170813_NO_26', 'P34', 'FX-6300 3.5 GHz', '3490', 'P34_5JGVgg', 'A20004', '2017-07-27', '2020-07-27', '3ปี', '2017-08-13', '2020-08-13', '1');
INSERT INTO `t_sell_detail` VALUES ('38', 'ORD_20170813_NO_26', 'P34', 'FX-6300 3.5 GHz', '3490', 'P34_DjZ4CK', 'A20005', '2017-07-27', '2020-07-27', '3ปี', '2017-08-13', '2020-08-13', '1');
INSERT INTO `t_sell_detail` VALUES ('39', 'ORD_20170813_NO_26', 'P10', 'MSI VGA GTX1080TI GAMING X 11G', '35900', 'P10_bmJ0td', 'GGGGG', '2017-07-24', '2019-07-24', '2ปี', '2017-08-13', '2019-08-13', '1');
INSERT INTO `t_sell_detail` VALUES ('43', 'ORD_20170813_NO_28', 'P10', 'MSI VGA GTX1080TI GAMING X 11G', '35900', 'P10_z1iCNf', 'GGGGA', '2017-07-24', '2019-07-24', '2ปี', '2017-08-13', '2019-08-13', '1');
INSERT INTO `t_sell_detail` VALUES ('44', 'ORD_20170815_NO_29', 'P34', 'FX-6300 3.5 GHz', '3490', 'P34_CzJsZL', 'A20006', '2017-07-27', '2020-07-27', '3ปี', '2017-08-15', '2020-08-15', '3');
INSERT INTO `t_sell_detail` VALUES ('45', 'ORD_20170816_NO_30', 'P58', 'CORE I5 6600K 3.5 GHz (NO FAN)', '8150', 'P58_8sjdaC', 'CCCCA', '2017-07-24', '2020-07-24', '3ปี', '2017-08-16', '2020-08-16', '3');
INSERT INTO `t_sell_detail` VALUES ('46', 'ORD_20170817_NO_31', 'P35', 'FX-8300 3.3 GHz', '3980', 'P35_G01SG01_NO_0075', 'dasf', '2017-08-08', '2020-08-08', '3ปี', '2017-08-17', '2020-08-17', '1');
INSERT INTO `t_sell_detail` VALUES ('47', 'ORD_20170817_NO_32', 'P126', 'DDR4/2133 TEAM ELITE PLUS UD-D4 (CL15) RED (8X2)', '4350', 'P126_cQaSUP', 'RRZ', '2017-07-27', '2022-07-27', '5ปี', '2017-08-17', '2022-08-17', '1');
INSERT INTO `t_sell_detail` VALUES ('48', 'ORD_20170817_NO_33', 'P126', 'DDR4/2133 TEAM ELITE PLUS UD-D4 (CL15) RED (8X2)', '4350', 'P126_G03SG21_NO_0054', 'zsw', '2017-08-03', '0000-00-00', 'L-T', '2017-08-17', '0000-00-00', '1');
INSERT INTO `t_sell_detail` VALUES ('49', 'ORD_20170817_NO_34', 'P05', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', '4250', 'P05_G04SG29_NO_0078', 'DWE', '2017-03-01', '2019-03-01', '2ปี', '2017-08-17', '2019-08-17', '1');
INSERT INTO `t_sell_detail` VALUES ('50', 'ORD_20170817_NO_34', 'P35', 'FX-8300 3.3 GHz', '3980', 'P35_G01SG01_NO_0076', 'das', '2017-08-08', '2020-08-08', '3ปี', '2017-08-17', '2020-08-17', '1');
INSERT INTO `t_sell_detail` VALUES ('51', 'ORD_20170817_NO_35', 'P125', '120GB SSD CORSAIR LE200 SATA-3', '2390', 'P125_G06SG41_NO_0056', 'none', '2017-08-03', '2020-08-03', '3ปี', '2017-08-17', '2020-08-17', '1');
INSERT INTO `t_sell_detail` VALUES ('52', 'ORD_20170817_NO_36', 'P34', 'FX-6300 3.5 GHz', '3490', 'P34_z8s7e1', 'A20007', '2017-07-27', '2020-07-27', '3ปี', '2017-08-17', '2020-08-17', '1');
INSERT INTO `t_sell_detail` VALUES ('53', 'ORD_20170818_NO_37', 'P126', 'DDR4/2133 TEAM ELITE PLUS UD-D4 (CL15) RED (8X2)', '4350', 'P126_G03SG21_NO_0055', 'wsd', '2017-08-03', '0000-00-00', 'L-T', '2017-08-18', '0000-00-00', '1');
INSERT INTO `t_sell_detail` VALUES ('54', 'ORD_20170818_NO_38', 'P126', 'DDR4/2133 TEAM ELITE PLUS UD-D4 (CL15) RED (8X2)', '4350', 'P126_G03SG21_NO_0069', 'dertty', '2017-08-07', '0000-00-00', 'L-T', '2017-08-18', '0000-00-00', '1');
INSERT INTO `t_sell_detail` VALUES ('70', 'ORD_20170820_NO_53', 'P05', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', '4250', 'P05_G04SG29_NO_0079', 'FFG', '2017-03-01', '2019-03-01', '2ปี', '2017-08-20', '2019-08-20', '1');
INSERT INTO `t_sell_detail` VALUES ('71', 'ORD_20170822_NO_54', 'P34', 'FX-6300 3.5 GHz', '3490', 'P34_PAiOuE', 'A20008', '2017-07-27', '2020-07-27', '3ปี', '2017-08-22', '2020-08-22', '1');
INSERT INTO `t_sell_detail` VALUES ('72', 'ORD_20170822_NO_54', 'P34', 'FX-6300 3.5 GHz', '3490', 'P34_G03SG21_NO_0052', 'rx0', '2017-08-03', '2020-08-03', '3ปี', '2017-08-22', '2020-08-22', '1');
INSERT INTO `t_sell_detail` VALUES ('73', 'ORD_20170822_NO_54', 'P08', 'AMD AM3+ FX-8350 4.0 Ghz.', '6660', 'P08_G01SG01_NO_0068', 'vvbn', '2017-08-07', '2020-08-07', '3ปี', '2017-08-22', '2020-08-22', '3');
INSERT INTO `t_sell_detail` VALUES ('74', 'ORD_20170822_NO_55', 'P05', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', '4250', 'P05_G04SG29_NO_0081', 'WE123', '2017-03-01', '2019-03-01', '2ปี', '2017-08-22', '2019-08-22', '3');
INSERT INTO `t_sell_detail` VALUES ('75', 'ORD_20170823_NO_56', 'P126', 'DDR4/2133 TEAM ELITE PLUS RED (8X2)', '4350', 'P126_G03SG21_NO_0070', 'cvvv', '2017-08-07', '0000-00-00', 'L-T', '2017-08-23', '0000-00-00', '3');
INSERT INTO `t_sell_detail` VALUES ('76', 'ORD_20170824_NO_57', 'P126', 'DDR4/2133 TEAM RED (8X2)', '4350', 'P126_G03SG21_NO_0073', 'bbbn', '2017-08-07', '0000-00-00', 'L-T', '2017-08-24', '0000-00-00', '3');
INSERT INTO `t_sell_detail` VALUES ('77', 'ORD_20170824_NO_57', 'P126', 'DDR4/2133 TEAM RED (8X2)', '4350', 'P126_G03SG21_NO_0089', 'rams1', '2017-08-24', '0000-00-00', 'L-T', '2017-08-24', '0000-00-00', '1');
INSERT INTO `t_sell_detail` VALUES ('78', 'ORD_20170824_NO_57', 'P126', 'DDR4/2133 TEAM RED (8X2)', '4350', 'P126_G03SG21_NO_0090', 'rams2', '2017-08-24', '0000-00-00', 'L-T', '2017-08-24', '0000-00-00', '1');
INSERT INTO `t_sell_detail` VALUES ('79', 'ORD_20170824_NO_58', 'P42', 'CORE I3 4170 3.7 GHz', '4050', 'P42_G01SG04_NO_0094', 'i3sss1', '2017-08-24', '2019-08-24', '2ปี', '2017-08-24', '2019-08-24', '3');
INSERT INTO `t_sell_detail` VALUES ('80', 'ORD_20170824_NO_59', 'P42', 'CORE I3 4170 3.7 GHz', '4050', 'P42_G01SG04_NO_0098', 'i3sss5', '2017-08-24', '2019-08-24', '2ปี', '2017-08-24', '2019-08-24', '1');
INSERT INTO `t_sell_detail` VALUES ('81', 'ORD_20170824_NO_59', 'P42', 'CORE I3 4170 3.7 GHz', '4050', 'P42_G01SG04_NO_0099', 'i3sss2', '2017-08-24', '2019-08-24', '2ปี', '2017-08-24', '2019-08-24', '1');
INSERT INTO `t_sell_detail` VALUES ('82', 'ORD_20170824_NO_60', 'P06', 'AMD AM3+ FX-6300 3.5 Ghz.', '3990', 'P06_G01SG01_NO_0062', 'dcvffdf', '2017-08-07', '0000-00-00', 'ไม่มีประกัน', '2017-08-24', '0000-00-00', '1');
INSERT INTO `t_sell_detail` VALUES ('83', 'ORD_20170824_NO_61', 'P58', 'CORE I5 6600K 3.5 GHz (NO FAN)', '8150', 'P58_6mH5lT', 'CCCCD', '2017-07-24', '2020-07-24', '3ปี', '2017-08-24', '2020-08-24', '3');
INSERT INTO `t_sell_detail` VALUES ('84', 'ORD_20170825_NO_62', 'P81', '970 EXTREME3 (REV2)', '2720', 'P81_G02SG08_NO_0083', 'KKOLOO', '2017-08-22', '2020-08-22', '3ปี', '2017-08-25', '2020-08-25', '1');
INSERT INTO `t_sell_detail` VALUES ('85', 'ORD_20170826_NO_63', 'P13', 'ASUS A88XM-E USB 3.1', '2780', 'P13_G02SG10_NO_0100', 'dsa', '2017-08-26', '2019-08-26', '2ปี', '2017-08-26', '2019-08-26', '1');
INSERT INTO `t_sell_detail` VALUES ('86', 'ORD_20170827_NO_64', 'P81', '970 EXTREME3 (REV2)', '2720', 'P81_G02SG08_NO_0084', '457886', '2017-08-22', '2020-08-22', '3ปี', '2017-08-27', '2020-08-27', '3');
INSERT INTO `t_sell_detail` VALUES ('87', 'ORD_20170827_NO_65', 'P05', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', '4250', 'P05_G04SG29_NO_0082', '445ff', '2017-03-01', '2019-03-01', '2ปี', '2017-08-27', '2019-08-27', '3');
INSERT INTO `t_sell_detail` VALUES ('88', 'ORD_20170827_NO_66', 'P06', 'AMD AM3+ FX-6300 3.5 Ghz.', '3990', 'P06_G01SG01_NO_0106', 'KGR882', '2017-08-27', '0000-00-00', 'ไม่มีประกัน', '2017-08-27', '0000-00-00', '1');
INSERT INTO `t_sell_detail` VALUES ('89', 'ORD_20170827_NO_67', 'P05', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', '4250', 'P05_G04SG29_NO_0105', 'IOPP22', '2017-08-26', '2019-08-26', '2ปี', '2017-08-27', '2019-08-27', '1');
INSERT INTO `t_sell_detail` VALUES ('90', 'ORD_20170829_NO_68', 'P125', '120GB SSD CORSAIR LE200 SATA-3', '2390', 'P125_G06SG41_NO_0057', 'none', '2017-08-03', '2020-08-03', '3ปี', '2017-08-29', '2020-08-29', '1');
INSERT INTO `t_sell_detail` VALUES ('91', 'ORD_20170913_NO_69', 'P128', 'WD SATA-3 BLUE 1.0 TB', '1490', 'P128_G06SG39_NO_0112', 'K34451UDX', '2017-09-13', '2020-09-13', '3ปี', '2017-09-13', '2020-09-13', '3');
INSERT INTO `t_sell_detail` VALUES ('92', 'ORD_20170913_NO_69', 'P128', 'WD SATA-3 BLUE 1.0 TB', '1490', 'P128_G06SG39_NO_0113', 'K34451UAO', '2017-09-13', '2020-09-13', '3ปี', '2017-09-13', '2020-09-13', '1');
INSERT INTO `t_sell_detail` VALUES ('93', 'ORD_20170913_NO_70', 'P128', 'WD SATA-3 BLUE 1.0 TB', '1490', 'P128_G06SG39_NO_0114', 'K4855ALWA', '2017-09-13', '2020-09-13', '3ปี', '2017-09-13', '2020-09-13', '1');
INSERT INTO `t_sell_detail` VALUES ('94', 'ORD_20170913_NO_70', 'P128', 'WD SATA-3 BLUE 1.0 TB', '1490', 'P128_G06SG39_NO_0115', 'KLOAASCDE', '2017-09-13', '2020-09-13', '3ปี', '2017-09-13', '2020-09-13', '1');
INSERT INTO `t_sell_detail` VALUES ('95', 'ORD_20170922_NO_71', 'P06', 'AMD AM3+ FX-6300 3.5 Ghz.', '3990', 'P06_G01SG01_NO_0088', 'dwqqqqq', '2017-08-22', '2018-08-22', '1ปี', '2017-09-22', '2018-09-22', '3');
INSERT INTO `t_sell_detail` VALUES ('96', 'ORD_20171003_NO_72', 'P81', '970 EXTREME3 (REV2)', '2720', 'P81_G02SG08_NO_0085', 'RDKER', '2017-08-22', '2020-08-22', '3ปี', '2017-10-03', '2020-10-03', '3');
INSERT INTO `t_sell_detail` VALUES ('97', 'ORD_20171003_NO_73', 'P44', 'PENTIUM G3260 3.30 GHz', '1980', 'P44_G01SG04_NO_0116', 'pen1', '2017-10-03', '2020-10-03', '3ปี', '2017-10-03', '2020-10-03', '3');
INSERT INTO `t_sell_detail` VALUES ('98', 'ORD_20171004_NO_74', 'P126', 'DDR4/2133 TEAM RED (8X2)', '4350', 'P126_G03SG21_NO_0093', 'rams5', '2017-08-24', '0000-00-00', 'L-T', '2017-10-04', '0000-00-00', '1');
INSERT INTO `t_sell_detail` VALUES ('103', 'ORD_20171005_NO_76', 'P129', 'p_lg', '1000', 'P129_G46SG74_NO_0131', 'lg0', '2017-10-05', '2018-10-05', '1ปี', '2017-10-05', '2018-10-05', '3');
INSERT INTO `t_sell_detail` VALUES ('104', 'ORD_20171005_NO_77', 'P44', 'PENTIUM G3260 3.30 GHz', '1980', 'P44_G01SG04_NO_0119', 'pen4', '2017-10-03', '2020-10-03', '3ปี', '2017-10-05', '2020-10-05', '1');
INSERT INTO `t_sell_detail` VALUES ('105', 'ORD_20171006_NO_78', 'P34', 'FX-6300 3.5 GHz', '3490', 'P34_G03SG21_NO_0053', 'rx0-2', '2017-08-03', '2020-08-03', '3ปี', '2017-10-06', '2020-10-06', '3');
INSERT INTO `t_sell_detail` VALUES ('106', 'ORD_20171007_NO_79', 'P131', 'Product_test1', '1500', 'P131_G47SG75_NO_0136', '32ssa', '2017-10-07', '2020-10-07', '3ปี', '2017-10-07', '2020-10-07', '3');
INSERT INTO `t_sell_detail` VALUES ('107', 'ORD_20171007_NO_79', 'P131', 'Product_test1', '1500', 'P131_G47SG75_NO_0137', '11131zz', '2017-10-07', '2020-10-07', '3ปี', '2017-10-07', '2020-10-07', '1');
INSERT INTO `t_sell_detail` VALUES ('108', 'ORD_20171008_NO_80', 'P81', '970 EXTREME3 (REV2)', '2720', 'P81_G02SG08_NO_0086', '145755', '2017-08-22', '2020-08-22', '3ปี', '2017-10-08', '2020-10-08', '3');
INSERT INTO `t_sell_detail` VALUES ('109', 'ORD1710-NO-00081', 'P131', 'Product_test1', '1500', 'P131_G47SG75_NO_0138', '1115aaa', '2017-10-07', '2020-10-07', '3ปี', '2017-10-08', '2020-10-08', '1');
INSERT INTO `t_sell_detail` VALUES ('110', 'ORD1710-NO-00082', 'P131', 'Product_test1', '1500', 'P131_G47SG75_NO_0143', 'none', '2017-10-08', '2018-01-08', '3เดือน', '2017-10-09', '2018-01-09', '1');
INSERT INTO `t_sell_detail` VALUES ('111', 'ORD1710-NO-00083', 'P08', 'AMD AM3+ FX-8350 4.0 Ghz.', '6660', 'P08_G01SG01_NO_0141', 'dsadsa12312312', '2017-10-08', '2020-10-08', '3ปี', '2017-10-09', '2020-10-09', '3');
INSERT INTO `t_sell_detail` VALUES ('112', 'ORD1710-NO-00084', 'P08', 'AMD AM3+ FX-8350 4.0 Ghz.', '6660', 'P08_G01SG01_NO_0142', 'dasdqwqqqygff', '2017-10-08', '2020-10-08', '3ปี', '2017-10-09', '2020-10-09', '3');
INSERT INTO `t_sell_detail` VALUES ('114', 'ORD1710-NO-00086', 'P05', 'Gigabyte RX 460 OC 2GB DDR5 128 BIT', '4250', 'UNTG04SG29-NO-00067', 'cxzassddsaasmuf', '2017-10-09', '2019-03-01', '2ปี', '2017-10-09', '2019-10-09', '1');

-- ----------------------------
-- Table structure for t_service_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_service_menu`;
CREATE TABLE `t_service_menu` (
  `S_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Service_ID` char(50) NOT NULL,
  `Service_Menu` char(100) NOT NULL,
  `Service_Price` double NOT NULL,
  `Service_Status` char(5) NOT NULL,
  `Service_Type` char(10) NOT NULL,
  PRIMARY KEY (`S_Number`,`Service_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_service_menu
-- ----------------------------
INSERT INTO `t_service_menu` VALUES ('1', 'Ser_01', 'ซ่อมโปรแกรม PC', '250', '1', 'PC');
INSERT INTO `t_service_menu` VALUES ('2', 'Ser_02', 'ซ่อมโปรแกรม NB', '300', '1', 'NB');
INSERT INTO `t_service_menu` VALUES ('3', 'Ser_03', 'ทำความสะอาด', '50', '1', 'All');
INSERT INTO `t_service_menu` VALUES ('4', 'Ser_04', 'กู้ข้อมูล', '1500', '1', 'All');
INSERT INTO `t_service_menu` VALUES ('5', 'Ser_05', 'ซ่อมวงจรไฟ', '1500', '1', 'NB');
INSERT INTO `t_service_menu` VALUES ('6', 'Ser_06', 'ซ่อมการ์ดจอ', '2000', '1', 'NB');
INSERT INTO `t_service_menu` VALUES ('7', 'Ser_07', 'ตรวจเช็คเครื่อง', '50', '1', 'All');
INSERT INTO `t_service_menu` VALUES ('8', 'Ser_08', 'ล้างไวรัส', '100', '1', 'All');

-- ----------------------------
-- Table structure for t_shop
-- ----------------------------
DROP TABLE IF EXISTS `t_shop`;
CREATE TABLE `t_shop` (
  `Shop_Name` char(100) NOT NULL,
  `Shop_Address` char(255) NOT NULL,
  `Shop_Tel` char(15) NOT NULL,
  `Shop_Img` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shop
-- ----------------------------
INSERT INTO `t_shop` VALUES ('One Computer Service', 'ห้อง 3103 ชั้น 3 อาคารพันทิพย์ บางกะปิ ถนนลาดพร้าว <br>แขวงคลองจั่น เขตบางกะปิ กรุงเทพฯ 10240', '02-187-3065', '20170817020153.png');

-- ----------------------------
-- Table structure for t_sms
-- ----------------------------
DROP TABLE IF EXISTS `t_sms`;
CREATE TABLE `t_sms` (
  `SMS_Number` int(11) NOT NULL AUTO_INCREMENT,
  `SMS_List_id` char(100) NOT NULL,
  `SMS_Detail` varchar(255) NOT NULL,
  `SMS_Time` datetime NOT NULL,
  `SMS_Tel_Send` char(20) NOT NULL,
  PRIMARY KEY (`SMS_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sms
-- ----------------------------
INSERT INTO `t_sms` VALUES ('1', 'Repair_NO_0013item_14', 'จาก OneComputer ถึงคุณ : ทวีทอง สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-08-20 23:22:09', '0846776905');
INSERT INTO `t_sms` VALUES ('2', 'Repair_NO_0009item_10', 'จาก OneComputer ถึงคุณ : อรรณพ สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-08-20 23:22:40', '0830062177');
INSERT INTO `t_sms` VALUES ('3', 'Repair_NO_0011item_12', 'จาก OneComputer ถึงคุณ : บริษัท พรเทพ จำกัด สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-08-21 13:46:03', '0846776905');
INSERT INTO `t_sms` VALUES ('4', 'Claim_Repair_NO_0001', 'จาก OneComputer ถึงคุณ : ทวีทอง สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-08-21 22:59:26', '0846776905');
INSERT INTO `t_sms` VALUES ('5', 'Claim_Repair_NO_0001', 'จาก OneComputer ถึงคุณ : ทวีทอง สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-08-21 23:00:42', '0846776905');
INSERT INTO `t_sms` VALUES ('6', 'Claim_Repair_NO_0001', 'จาก OneComputer ถึงคุณ : ทวีทอง สินค้าซ่อมเคลมเสร็จเรียบร้อยแล้ว', '2017-08-21 23:01:29', '0846776905');
INSERT INTO `t_sms` VALUES ('7', 'Claim_Repair_NO_0004', 'จาก OneComputer ถึงคุณ : ทวีทอง สินค้าซ่อมเคลมเสร็จเรียบร้อยแล้ว', '2017-08-22 09:02:08', '0846776905');
INSERT INTO `t_sms` VALUES ('8', 'Repair_NO_0016item_17', 'จาก OneComputer ถึงคุณ : ทวีทอง สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-08-22 19:34:47', '0846776905');
INSERT INTO `t_sms` VALUES ('9', 'Claim_NO_0010', 'จากร้าน OneComputer ถึงคุณทวีทอง วิวัฒนขจรสุข สินค้าเคลมมาถึงร้านแล้ว', '2017-08-25 17:34:29', '0846776905');
INSERT INTO `t_sms` VALUES ('10', 'Claim_Repair_NO_0004', 'จาก OneComputer ถึงคุณ : ทวีทอง สินค้าซ่อมเคลมเสร็จเรียบร้อยแล้ว', '2017-08-29 15:31:29', '0846776905');
INSERT INTO `t_sms` VALUES ('11', 'Repair_NO_0028item_30', 'จาก OneComputer ถึงคุณ : ทวีทอง สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-09-29 15:39:41', '0846776905');
INSERT INTO `t_sms` VALUES ('12', 'Repair_NO_0031item_34', 'จาก OneComputer ถึงคุณ : พรเทพ สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-10-03 10:53:58', '0846776905');
INSERT INTO `t_sms` VALUES ('13', 'Repair_NO_0031item_34', 'จาก OneComputer ถึงคุณ : พรเทพ สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-10-03 12:31:04', '0846776905');
INSERT INTO `t_sms` VALUES ('14', 'Repair_NO_0031item_34', 'จาก OneComputer ถึงคุณ : พรเทพ สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-10-03 19:13:35', '0846776905');
INSERT INTO `t_sms` VALUES ('15', 'Claim_NO_0024', 'จากร้าน OneComputer ถึงคุณพรเทพ ศรีมูลน้อย สินค้าเคลมมาถึงร้านแล้ว', '2017-10-04 13:50:43', '0846776905');
INSERT INTO `t_sms` VALUES ('16', 'Claim_NO_0031', 'จากร้าน OneComputer ถึงคุณปวรุตม์ อินทรักษา สินค้าเคลมมาถึงร้านแล้ว', '2017-10-05 13:57:51', '0899445388');
INSERT INTO `t_sms` VALUES ('17', 'Repair_NO_0031item_34', 'จาก OneComputer ถึงคุณ : พรเทพ สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-10-05 14:08:26', '0846776905');
INSERT INTO `t_sms` VALUES ('18', 'Repair_NO_0031item_34', 'จาก OneComputer ถึงคุณ : พรเทพ สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-10-06 10:08:40', '0846776905');
INSERT INTO `t_sms` VALUES ('19', 'Repair_NO_0031item_34', 'จาก OneComputer ถึงคุณ : พรเทพ สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-10-06 11:23:54', '0846776905');
INSERT INTO `t_sms` VALUES ('20', 'Repair_NO_0037item_40', 'จาก OneComputer ถึงคุณ : ชนกานต์ สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-10-06 16:19:20', '0982499966');
INSERT INTO `t_sms` VALUES ('21', 'Repair_NO_0031item_34', 'จาก OneComputer ถึงคุณ : พรเทพ สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-10-07 00:56:15', '0846776905');
INSERT INTO `t_sms` VALUES ('22', 'Repair_NO_0031item_34', 'จาก OneComputer ถึงคุณ : พรเทพ สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-10-07 02:52:59', '0846776905');
INSERT INTO `t_sms` VALUES ('23', 'Repair_NO_0039item_42', 'จาก OneComputer ถึงคุณ : ทวีทอง สินค้าซ่อมเสร็จเรียบร้อยแล้ว', '2017-10-07 04:24:50', '0846776905');
INSERT INTO `t_sms` VALUES ('24', 'Claim_NO_0035', 'จากร้าน OneComputer ถึงคุณอรรณพ แดงสี สินค้าเคลมมาถึงร้านแล้ว', '2017-10-07 04:33:14', '0846776905');

-- ----------------------------
-- Table structure for t_sub_group_product
-- ----------------------------
DROP TABLE IF EXISTS `t_sub_group_product`;
CREATE TABLE `t_sub_group_product` (
  `SG_Number` int(10) NOT NULL AUTO_INCREMENT,
  `SG_ID` char(50) NOT NULL,
  `SG_Name` varchar(150) NOT NULL,
  `G_ID` char(50) NOT NULL,
  `SG_Status` char(5) NOT NULL,
  PRIMARY KEY (`SG_Number`,`SG_ID`),
  UNIQUE KEY `SG_ID` (`SG_ID`) USING BTREE,
  KEY `G_ID` (`G_ID`),
  CONSTRAINT `t_sub_group_product_ibfk_1` FOREIGN KEY (`G_ID`) REFERENCES `t_group_product` (`G_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sub_group_product
-- ----------------------------
INSERT INTO `t_sub_group_product` VALUES ('1', 'SG01', 'Socket AMD AM3+', 'G01', '1');
INSERT INTO `t_sub_group_product` VALUES ('2', 'SG02', 'Socket AMD FM2', 'G01', '1');
INSERT INTO `t_sub_group_product` VALUES ('3', 'SG03', 'Socket AMD FM2+', 'G01', '1');
INSERT INTO `t_sub_group_product` VALUES ('4', 'SG04', 'Socket LGA 1150', 'G01', '1');
INSERT INTO `t_sub_group_product` VALUES ('5', 'SG05', 'Socket LGA 1151', 'G01', '1');
INSERT INTO `t_sub_group_product` VALUES ('6', 'SG06', 'Socket LGA 1155', 'G01', '1');
INSERT INTO `t_sub_group_product` VALUES ('7', 'SG07', 'Socket LGA 2011', 'G01', '1');
INSERT INTO `t_sub_group_product` VALUES ('8', 'SG08', 'Socket AMD AM3+', 'G02', '1');
INSERT INTO `t_sub_group_product` VALUES ('9', 'SG09', 'Socket AMD FM2', 'G02', '1');
INSERT INTO `t_sub_group_product` VALUES ('10', 'SG10', 'Socket AMD FM2+', 'G02', '1');
INSERT INTO `t_sub_group_product` VALUES ('11', 'SG11', 'Socket LGA 1150', 'G02', '1');
INSERT INTO `t_sub_group_product` VALUES ('12', 'SG12', 'Socket LGA 1151', 'G02', '1');
INSERT INTO `t_sub_group_product` VALUES ('13', 'SG13', 'Socket LGA 1155', 'G02', '1');
INSERT INTO `t_sub_group_product` VALUES ('14', 'SG14', 'Socket LGA 2011', 'G02', '1');
INSERT INTO `t_sub_group_product` VALUES ('15', 'SG15', 'DDR-2/800', 'G03', '1');
INSERT INTO `t_sub_group_product` VALUES ('16', 'SG16', 'DDR-3/1333', 'G03', '1');
INSERT INTO `t_sub_group_product` VALUES ('17', 'SG17', 'DDR-3/1600', 'G03', '1');
INSERT INTO `t_sub_group_product` VALUES ('18', 'SG18', 'DDR-3/1866', 'G03', '1');
INSERT INTO `t_sub_group_product` VALUES ('19', 'SG19', 'DDR-3/2133', 'G03', '1');
INSERT INTO `t_sub_group_product` VALUES ('20', 'SG20', 'DDR-3/2400', 'G03', '1');
INSERT INTO `t_sub_group_product` VALUES ('21', 'SG21', 'DDR-4/2133', 'G03', '1');
INSERT INTO `t_sub_group_product` VALUES ('22', 'SG22', 'DDR-4/2400', 'G03', '1');
INSERT INTO `t_sub_group_product` VALUES ('23', 'SG23', 'DDR-4/2666', 'G03', '1');
INSERT INTO `t_sub_group_product` VALUES ('24', 'SG24', 'DDR-4/3000', 'G03', '1');
INSERT INTO `t_sub_group_product` VALUES ('25', 'SG25', 'DDR-4/3200', 'G03', '1');
INSERT INTO `t_sub_group_product` VALUES ('26', 'SG26', 'DDR-4/3600', 'G03', '1');
INSERT INTO `t_sub_group_product` VALUES ('27', 'SG27', 'AMD R7 Series', 'G04', '1');
INSERT INTO `t_sub_group_product` VALUES ('28', 'SG28', 'AMD R9 Series', 'G04', '1');
INSERT INTO `t_sub_group_product` VALUES ('29', 'SG29', 'AMD RX Series', 'G04', '1');
INSERT INTO `t_sub_group_product` VALUES ('30', 'SG30', 'NVIDIA 700 Series', 'G04', '1');
INSERT INTO `t_sub_group_product` VALUES ('31', 'SG31', 'NVIDIA 900 Series', 'G04', '1');
INSERT INTO `t_sub_group_product` VALUES ('32', 'SG32', 'NVIDIA 1000 Series', 'G04', '1');
INSERT INTO `t_sub_group_product` VALUES ('33', 'SG33', '500 Watt', 'G05', '1');
INSERT INTO `t_sub_group_product` VALUES ('34', 'SG34', '550 Watt', 'G05', '1');
INSERT INTO `t_sub_group_product` VALUES ('35', 'SG35', '600 Watt', 'G05', '1');
INSERT INTO `t_sub_group_product` VALUES ('36', 'SG36', '650 Watt', 'G05', '1');
INSERT INTO `t_sub_group_product` VALUES ('37', 'SG37', '700 Watt', 'G05', '1');
INSERT INTO `t_sub_group_product` VALUES ('38', 'SG38', '750 Watt', 'G05', '1');
INSERT INTO `t_sub_group_product` VALUES ('39', 'SG39', 'HardDisk PC', 'G06', '1');
INSERT INTO `t_sub_group_product` VALUES ('40', 'SG40', 'HardDisk Notebook', 'G06', '1');
INSERT INTO `t_sub_group_product` VALUES ('41', 'SG41', 'Solid State Drive', 'G06', '1');
INSERT INTO `t_sub_group_product` VALUES ('42', 'SG42', 'Internal', 'G07', '1');
INSERT INTO `t_sub_group_product` VALUES ('43', 'SG43', 'External', 'G07', '1');
INSERT INTO `t_sub_group_product` VALUES ('44', 'SG44', 'Radeon HD 7000', 'G04', '1');
INSERT INTO `t_sub_group_product` VALUES ('45', 'SG45', 'Size 15.6 inch', 'G10', '1');
INSERT INTO `t_sub_group_product` VALUES ('59', 'SG59', 'Socket AMD AM4', 'G01', '1');
INSERT INTO `t_sub_group_product` VALUES ('62', 'SG62', 'Socket AMD AM4', 'G02', '1');
INSERT INTO `t_sub_group_product` VALUES ('67', 'SG67', 'STS2_1', 'G01', '1');
INSERT INTO `t_sub_group_product` VALUES ('72', 'SG72', 'STS2_2', 'G43', '0');
INSERT INTO `t_sub_group_product` VALUES ('73', 'SG73', 'Size 14.3 inch', 'G10', '1');
INSERT INTO `t_sub_group_product` VALUES ('74', 'SG74', 'sub_test_1', 'G46', '1');
INSERT INTO `t_sub_group_product` VALUES ('75', 'SG75', 'TEST_Sub', 'G47', '1');

-- ----------------------------
-- Table structure for t_warranty
-- ----------------------------
DROP TABLE IF EXISTS `t_warranty`;
CREATE TABLE `t_warranty` (
  `War_Number` int(11) NOT NULL AUTO_INCREMENT,
  `War_Name` char(50) NOT NULL,
  `War_Value` char(50) NOT NULL,
  `War_Status` char(10) NOT NULL,
  `War_Level` char(10) NOT NULL,
  `War_Time` int(11) NOT NULL,
  PRIMARY KEY (`War_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warranty
-- ----------------------------
INSERT INTO `t_warranty` VALUES ('1', 'ไม่มีประกัน', 'none', '2', '0', '0');
INSERT INTO `t_warranty` VALUES ('2', 'L-T', 'L-T', '2', '0', '0');
INSERT INTO `t_warranty` VALUES ('3', '7วัน', '+7 days', '1', '1', '7');
INSERT INTO `t_warranty` VALUES ('4', '15วัน', '+15 days', '1', '1', '15');
INSERT INTO `t_warranty` VALUES ('5', '30วัน', '+30 days', '1', '1', '30');
INSERT INTO `t_warranty` VALUES ('6', '3เดือน', '+3 month', '1', '2', '3');
INSERT INTO `t_warranty` VALUES ('7', '6เดือน', '+6 month', '1', '2', '6');
INSERT INTO `t_warranty` VALUES ('8', '1ปี', '+1 year', '1', '3', '1');
INSERT INTO `t_warranty` VALUES ('9', '2ปี', '+2 year', '1', '3', '2');
INSERT INTO `t_warranty` VALUES ('10', '3ปี', '+3 year', '1', '3', '3');
INSERT INTO `t_warranty` VALUES ('11', '5ปี', '+5 year', '1', '3', '5');
INSERT INTO `t_warranty` VALUES ('14', '20วัน', '+20 days', '1', '1', '20');
INSERT INTO `t_warranty` VALUES ('15', '9เดือน', '+9 month', '1', '2', '9');
INSERT INTO `t_warranty` VALUES ('16', '4ปี', '+4 year', '1', '3', '4');
