-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2014 at 08:28 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lab_management_software`
--

-- --------------------------------------------------------

--
-- Table structure for table `pateint_id_central_labs`
--

CREATE TABLE IF NOT EXISTS `pateint_id_central_labs` (
  `PID` int(7) NOT NULL AUTO_INCREMENT,
  `Pateint_First_Name` varchar(256) NOT NULL,
  `Pateint_Last_Name` varchar(256) NOT NULL,
  `Pateint_password` varchar(15) NOT NULL,
  `Pateint_Age` int(3) NOT NULL,
  `Pateint_Gender` int(1) NOT NULL,
  `Pateint_Mobile` varchar(11) NOT NULL,
  `Pateint_City` varchar(256) NOT NULL,
  `Pateint_Blood_Group` varchar(20) NOT NULL,
  `Pateint_Email` varchar(256) NOT NULL,
  `Pateint_DOB` date NOT NULL,
  `Pateint_Address` varchar(256) NOT NULL,
  `Pateint_Pincode` varchar(20) NOT NULL,
  `Pateint_UID` varchar(256) NOT NULL,
  `Client_ID` varchar(20) NOT NULL,
  `Doctor_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pateint_id_central_labs`
--

INSERT INTO `pateint_id_central_labs` (`PID`, `Pateint_First_Name`, `Pateint_Last_Name`, `Pateint_password`, `Pateint_Age`, `Pateint_Gender`, `Pateint_Mobile`, `Pateint_City`, `Pateint_Blood_Group`, `Pateint_Email`, `Pateint_DOB`, `Pateint_Address`, `Pateint_Pincode`, `Pateint_UID`, `Client_ID`, `Doctor_ID`) VALUES
(1, 'indrajeet', '', '', 18, 0, '9486963152', '', '', '', '0000-00-00', '', '', '9c5b43e', '1', '1'),
(2, 'q', '', '', 12, 0, '1234567890', '', '', '', '0000-00-00', '', '', '3ade3fd', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tests_table`
--

CREATE TABLE IF NOT EXISTS `tests_table` (
  `PID` int(20) NOT NULL AUTO_INCREMENT,
  `Test_ID` int(10) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `normal_min` float NOT NULL,
  `normal_max` float NOT NULL,
  `alert_min` float NOT NULL,
  `alert_max` float NOT NULL,
  `absurd_min` float NOT NULL,
  `absurd_max` float NOT NULL,
  `Group_ID` varchar(16) NOT NULL,
  `Group_Name` varchar(256) NOT NULL,
  `Type_Profile` varchar(256) NOT NULL,
  `Unit` varchar(256) NOT NULL,
  `Method` varchar(256) NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `tests_table`
--

INSERT INTO `tests_table` (`PID`, `Test_ID`, `Name`, `description`, `normal_min`, `normal_max`, `alert_min`, `alert_max`, `absurd_min`, `absurd_max`, `Group_ID`, `Group_Name`, `Type_Profile`, `Unit`, `Method`) VALUES
(6, 1001, 'Haemoglobin', 'baad mey', 12, 16, 10, 18, 2, 20, 'G1001', 'Haemoglobin', 'Haematology', 'gm %', 'Cyanmeth Haemoglobin'),
(7, 1002, 'Haemoglobin', 'baad mey', 12, 16, 10, 18, 2, 20, 'G1002', 'CBC', 'Haematology', 'gm %', 'Cyanmeth Haemoglobin'),
(8, 1003, 'Total RBC-count', 'thtrfd', 4.5, 5.1, 3, 6, 1, 100, 'G1002', 'CBC', 'Haematology', 'X 10^6', 'Focussed Flow Impedance'),
(9, 1004, 'Haematocrit', 'vv', 35.9, 44.6, 25, 55, 5, 90, 'G1002', 'CBC', 'Haematology', '%', 'Focussed Flow Impedance'),
(10, 1005, 'Mean Corpus Volume (MCV)', 'ff', 80, 96, 50, 120, 0, 1000, 'G1002', 'CBC', 'Haematology', 'fL', 'Calculated'),
(11, 1006, 'Mean Corpus Hgb (MCH)', 'ww', 27.5, 33.2, 20, 50, 10, 500, 'G1002', 'CBC', 'Haematology', 'pg', 'Calculated'),
(12, 1007, 'Mean Corpus Hgb Con (MCHC)', 'ee', 33.4, 35.5, 25, 40, 2, 100, 'G1002', 'CBC', 'Haematology', '%', 'Calculated'),
(13, 1008, 'Total WBC-Count', '', 4400, 11000, 2000, 16000, 100, 100000, 'G1002', 'CBC', 'Haematology', 'Cells / cubic mm', 'Focussed Flow Impedance'),
(14, 1009, 'Nutrophils', '', 43, 72, 20, 87, 10, 99, 'G1002', 'CBC', 'Haematology', '%', 'Absorbance Cytochemistry'),
(16, 1010, 'Lymphocytes', '', 18, 43, 10, 100, 1, 1000, 'G1002', 'CBC', 'Haematology', '%', 'Absorbance Cytochemistry'),
(17, 1011, 'Eosinophils', '', 1, 6, 0, 10, 0, 100, 'G1002', 'CBC', 'Haematology', '%', 'Absorbance Impedance'),
(18, 1012, 'Monocytes', '', 3, 6, 1, 10, 0, 100, 'G1002', 'CBC', 'Haematology', '%', 'Absorbance Cytochemistry'),
(19, 1013, 'Basophils', '', 0, 2, 0, 5, 0, 100, 'G1002', 'CBC', 'Haematology', '', 'Absorbance Cytochemistry'),
(20, 1014, 'Platelets Count', '', 1.5, 4.5, 0, 10, 0, 50, 'G1002', 'CBC', 'Haematology', 'Lacs / cubic mm', 'Focussed Flow Impedance'),
(21, 1015, 'RDW', '', 11.5, 15.5, 5, 25, 0, 100, 'G1002', 'CBC', 'Haematology', '%', 'Calculated'),
(22, 1016, 'MPV', '', 6, 10, 1, 30, 0, 100, 'G1002', 'CBC', 'Haematology', 'fL', ''),
(23, 1017, 'Iron, Serum', '', 28, 170, 10, 240, 0, 1000, 'G1003', 'Iron, Serum', 'Haematology', 'micro gm / dl', 'Colorimetric method on automated clinical chemsitry auto analyser'),
(25, 1018, 'Cholesterol, Serum', 'Desirable - Less than 200; Borderline - 200 to 239; High - Greater than 240', 148, 268, 100, 270, 10, 1000, 'G1004', 'Cholesterol, Serum', 'Cardiac', 'mg/dL', 'Cholesterol Oxidase on Clinical Autoanalyzer'),
(26, 1019, 'Triglycerides, Serum', '', 44, 223, 10, 1000, 0, 2000, 'G1005', 'Lipid Profile (Basic)', 'Cardiac', 'mg/dL', 'GPO PAP on Clinical Chemistry Autoanalyzer'),
(28, 1020, 'Fasting Plasma Glucose', '', 74, 100, 50, 150, 0, 1000, 'G1001', 'Fasting Plasma Glucose', 'Biochemistry', 'mg/dL', ''),
(29, 1021, 'Hb A 1 C', '', 4.6, 6.5, 0, 0, 0, 0, 'G1003', 'Hb A 1 C', 'Biochemistry', '%', ''),
(30, 1022, 'SGPT ; ALT', '', 7, 35, 0, 0, 0, 0, 'G1008', 'SGPT ; ALT', 'Liver function test', 'U/L', ''),
(31, 1023, 'SGOT; AST, serum', '', 13, 35, 0, 0, 0, 0, 'G1010', 'SGOT; AST', 'Liver function test', 'U/L', ''),
(32, 1024, 'BILIRUBIN total, serum', '', 0.3, 1.2, 0, 0, 0, 0, 'G1009', 'BILIRUBIN', 'Liver function test', 'mg/dL', ''),
(33, 1025, 'BILIRUBIN direct, serum', '', 0, 0.4, 0, 0, 0, 0, 'G1009', 'BILIRUBIN', 'Liver function test', 'mg/dL', ''),
(34, 1026, 'BILIRUBIN indirect, serum', '', 0.2, 1.2, 0, 0, 0, 0, 'G1009', 'BILIRUBIN', 'Liver function test', 'mg/dL', ''),
(35, 1027, 'BUN', '', 7, 23, 0, 0, 0, 0, 'G1066', 'BUN', 'Renal', 'mg/dL', ''),
(36, 1028, 'Creatinine, serum', '', 0, 0, 0, 0, 0, 0, 'G1013', 'CREATITINE', 'Renal', 'mg/dL', ''),
(37, 1029, 'Sodium', '', 136, 145, 0, 0, 0, 0, 'G1047', 'Sodium and potassium', 'Renal', 'mmol/L', ''),
(38, 1030, 'TSH (Thyroid stimulating hormone), serum', '', 0.4, 4.2, 0, 0, 0, 0, 'G1015', 'TSH(Thyroid stimulating hormone)', 'thyroid', 'micro IU/ML', ''),
(39, 1031, 'T3', '', 2, 4, 0, 0, 0, 0, 'G1016', 'T3,T4,TSH', 'thyroid', 'micro IU/ML', ''),
(40, 1032, 'T4', '', 2, 4, 0, 0, 0, 0, 'G1016', 'T3,T4,TSH', 'thyroid', 'micro IU/ML', ''),
(41, 1033, 'TSH (Thyroid stimulating hormone), serum', '', 2, 4, 0, 0, 0, 0, 'G1016', 'T3,T4,TSH', 'thyroid', 'micro IU/ML', ''),
(42, 1034, 'Blood pressure, Systiolic', '', 120, 139, 0, 0, 0, 0, 'G1050', 'physical', '', 'mm/hg', ''),
(43, 1035, 'Blood pressure, dystiolic', '', 80, 85, 0, 0, 0, 0, 'G1050', 'physical', 'physical', 'mm/hg', ''),
(44, 1036, 'Height', '', 50, 220, 0, 0, 0, 0, 'G1050', 'physical', 'physical', 'cm', ''),
(45, 1037, 'Weight', '', 30, 120, 0, 0, 0, 0, 'G1050', 'physical', 'physical', 'kg', ''),
(46, 1038, 'waist', '', 60, 100, 0, 0, 0, 0, 'G1050', 'physical', 'physical', 'cm', ''),
(47, 1040, 'BMI', '', 20, 25, 0, 0, 0, 0, 'G1050', 'physical', 'physical', 'kg/metre sq', '');

-- --------------------------------------------------------

--
-- Table structure for table `test_groups`
--

CREATE TABLE IF NOT EXISTS `test_groups` (
  `PID` int(16) NOT NULL AUTO_INCREMENT,
  `Group_ID` varchar(16) NOT NULL,
  `Group_Name` varchar(256) NOT NULL,
  `MRP` int(10) NOT NULL,
  `price_a` int(10) NOT NULL,
  `price_b` int(10) NOT NULL,
  `price_c` int(10) NOT NULL,
  `price_d` int(10) NOT NULL,
  `Blog_code` varchar(256) NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `test_groups`
--

INSERT INTO `test_groups` (`PID`, `Group_ID`, `Group_Name`, `MRP`, `price_a`, `price_b`, `price_c`, `price_d`, `Blog_code`) VALUES
(1, 'G1099', 'Haemoglobin', 70, 30, 0, 0, 0, ''),
(2, 'G1002', 'CBC', 250, 100, 0, 0, 0, ''),
(3, 'G1003', 'Iron,serum', 300, 240, 0, 0, 0, ''),
(4, 'G1068', 'Cholestrol,serum', 120, 30, 0, 0, 0, ''),
(5, 'G1017', 'Lipid Profile (Basic)', 600, 200, 0, 0, 0, ''),
(6, 'G1022', 'R Factor(Quantitative) By Nephlometer', 500, -1, 0, 0, 0, ''),
(7, 'G1008', 'SGPT; ALT', 120, -1, 0, 0, 0, ''),
(8, 'G1009', 'BILIRUBIN', 150, -1, 0, 0, 0, ''),
(9, 'G1010', 'SGOT;AST', 120, -1, 0, 0, 0, ''),
(10, 'G1050', 'Physical', 20, -1, 0, 0, 0, ''),
(11, 'G1013', 'CREATININE', 120, -1, 0, 0, 0, ''),
(13, 'G1014', 'UREA', 120, -1, 0, 0, 0, ''),
(14, 'G1015', 'TSH (Thyroid Stimulating Hormone)', 300, -1, 0, 0, 0, ''),
(15, 'G1016', 'T3,T4,TSH', 700, -1, 0, 0, 0, ''),
(16, 'G1066', 'BUN', 120, -1, 0, 0, 0, ''),
(17, 'G1067', 'Vitamin D', 1800, -1, 0, 0, 0, ''),
(18, 'G1021', 'HIV 1 & 2 Antibody (Qualitative), by Tridot Method', 250, 0, 0, 0, 0, ''),
(19, 'G1020', 'HBsAg(Australia Antigen),by Strip Method', 700, 0, 0, 0, 0, ''),
(20, 'G1049', 'Rh Factor', 0, 0, 0, 0, 0, ''),
(21, 'G1006', 'BlOOD GROUP', 60, 0, 0, 0, 0, ''),
(22, 'G1005', 'POST PRANDIAL PLASMA GLUCOSE ', 80, 0, 0, 0, 0, ''),
(23, 'G1004', 'RANDOM PLASMA GLUCOSE', 80, 0, 0, 0, 0, ''),
(24, 'G1003', 'HB A 1 C', 550, 0, 0, 0, 0, ''),
(25, 'G1001', 'FASTING PLASMA GLUCOSE', 80, 0, 0, 0, 0, ''),
(26, 'G1047', 'Sodium and Potassium', 300, 0, 0, 0, 0, ''),
(27, 'G1024', 'Vitamin B-12, Serum', 1000, 0, 0, 0, 0, ''),
(28, 'G1050', 'physical', 100, 30, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `test_results_labname`
--

CREATE TABLE IF NOT EXISTS `test_results_labname` (
  `PID` int(7) NOT NULL AUTO_INCREMENT,
  `Pateint_UID` varchar(256) NOT NULL,
  `Pateint_Mobile` varchar(10) NOT NULL,
  `Client_ID` varchar(256) NOT NULL,
  `Doctor_ID` varchar(256) NOT NULL,
  `Branch_Code` varchar(256) NOT NULL,
  `Transcation_ID` varchar(40) NOT NULL,
  `Test_ID` varchar(256) NOT NULL,
  `Test_Name` varchar(256) NOT NULL,
  `Test_Results` varchar(256) NOT NULL,
  `Time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Amount_Payable` varchar(256) NOT NULL,
  `Amount_Recieved` varchar(256) NOT NULL,
  `Referral_Payable` varchar(256) NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `test_results_labname`
--

INSERT INTO `test_results_labname` (`PID`, `Pateint_UID`, `Pateint_Mobile`, `Client_ID`, `Doctor_ID`, `Branch_Code`, `Transcation_ID`, `Test_ID`, `Test_Name`, `Test_Results`, `Time_stamp`, `Amount_Payable`, `Amount_Recieved`, `Referral_Payable`) VALUES
(1, '3ade3fd', '', '', '', '', '3ade3fd237', '1002', '', '0', '2014-09-19 17:53:57', '', '', ''),
(2, '3ade3fd', '', '', '', '', '3ade3fd237', '1003', '', '0', '2014-09-19 17:53:57', '', '', ''),
(3, '3ade3fd', '', '', '', '', '3ade3fd237', '1004', '', '0', '2014-09-19 17:53:57', '', '', ''),
(4, '3ade3fd', '', '', '', '', '3ade3fd237', '1005', '', '0', '2014-09-19 17:53:57', '', '', ''),
(5, '3ade3fd', '', '', '', '', '3ade3fd237', '1006', '', '0', '2014-09-19 17:53:57', '', '', ''),
(6, '3ade3fd', '', '', '', '', '3ade3fd237', '1007', '', '0', '2014-09-19 17:53:57', '', '', ''),
(7, '3ade3fd', '', '', '', '', '3ade3fd237', '1008', '', '0', '2014-09-19 17:53:57', '', '', ''),
(8, '3ade3fd', '', '', '', '', '3ade3fd237', '1009', '', '0', '2014-09-19 17:53:57', '', '', ''),
(9, '3ade3fd', '', '', '', '', '3ade3fd237', '1010', '', '0', '2014-09-19 17:53:57', '', '', ''),
(10, '3ade3fd', '', '', '', '', '3ade3fd237', '1011', '', '0', '2014-09-19 17:53:57', '', '', ''),
(11, '3ade3fd', '', '', '', '', '3ade3fd237', '1012', '', '0', '2014-09-19 17:53:57', '', '', ''),
(12, '3ade3fd', '', '', '', '', '3ade3fd237', '1013', '', '0', '2014-09-19 17:53:57', '', '', ''),
(13, '3ade3fd', '', '', '', '', '3ade3fd237', '1014', '', '0', '2014-09-19 17:53:57', '', '', ''),
(14, '3ade3fd', '', '', '', '', '3ade3fd237', '1015', '', '0', '2014-09-19 17:53:57', '', '', ''),
(15, '3ade3fd', '', '', '', '', '3ade3fd237', '1016', '', '0', '2014-09-19 17:53:57', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_labname`
--

CREATE TABLE IF NOT EXISTS `transactions_labname` (
  `PID` int(7) NOT NULL AUTO_INCREMENT,
  `Pateint_UID` varchar(256) NOT NULL,
  `Client_ID` varchar(256) NOT NULL,
  `Doctor_ID` varchar(256) NOT NULL,
  `Branch_Code` varchar(256) NOT NULL,
  `Group_Code_Requested` varchar(256) NOT NULL,
  `Group_ID` varchar(10) NOT NULL,
  `Transaction_ID` varchar(40) NOT NULL,
  `Time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Amount_Payable` varchar(256) NOT NULL,
  `Amount_Recieved` varchar(256) NOT NULL,
  `Referral_Payable` varchar(256) NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `transactions_labname`
--

INSERT INTO `transactions_labname` (`PID`, `Pateint_UID`, `Client_ID`, `Doctor_ID`, `Branch_Code`, `Group_Code_Requested`, `Group_ID`, `Transaction_ID`, `Time_stamp`, `Amount_Payable`, `Amount_Recieved`, `Referral_Payable`) VALUES
(1, '3ade3fd', '', '', '', '', 'G1002', '3ade3fd237', '2014-09-19 17:53:57', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
