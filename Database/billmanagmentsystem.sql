-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2017 at 04:04 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `billmanagmentsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `aname` varchar(100) NOT NULL,
  `aemail` varchar(100) NOT NULL,
  `apassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `aname`, `aemail`, `apassword`) VALUES
(1, 'Osama', 'osama@gmail.com', 'd6a6bc0db10694a2d90e3a69648f3a03');

-- --------------------------------------------------------

--
-- Stand-in structure for view `allbills`
-- (See below for the actual view)
--
CREATE TABLE `allbills` (
`bill_cid` int(11)
,`bill_num` int(11)
,`issuedate` varchar(50)
,`duedate` varchar(50)
,`unit_cost` int(11)
,`units_consumed` int(11)
,`total_cost` int(11)
,`after_due_date` int(11)
,`bill_status` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `bill_cid` int(11) NOT NULL,
  `bill_num` int(11) NOT NULL,
  `issuedate` varchar(50) NOT NULL,
  `duedate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `bill_cid`, `bill_num`, `issuedate`, `duedate`) VALUES
(1, 2, 44552, '20-12-2007', '30-12-2007');

-- --------------------------------------------------------

--
-- Table structure for table `billdetails`
--

CREATE TABLE `billdetails` (
  `bill_id` int(11) NOT NULL,
  `unit_cost` int(11) NOT NULL,
  `total_cost` int(11) NOT NULL,
  `units_consumed` int(11) NOT NULL,
  `after_due_date` int(11) NOT NULL,
  `bill_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billdetails`
--

INSERT INTO `billdetails` (`bill_id`, `unit_cost`, `total_cost`, `units_consumed`, `after_due_date`, `bill_status`) VALUES
(1, 20, 2000, 100, 2080, 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `conid` int(11) NOT NULL,
  `con_meterno` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `con_type` varchar(50) NOT NULL,
  `con_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`conid`, `con_meterno`, `cid`, `con_type`, `con_date`) VALUES
(1, '4415887', 2, 'Domastic', '20-12-2004'),
(3, '123213123', 25, 'Commercial', '123123213');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customerdetails`
-- (See below for the actual view)
--
CREATE TABLE `customerdetails` (
`cid` int(11)
,`name` varchar(100)
,`email` varchar(100)
,`cnic` varchar(13)
,`address` varchar(100)
,`conid` int(11)
,`con_meterno` varchar(100)
,`con_type` varchar(50)
,`con_date` varchar(50)
,`total_units_on_meter` int(11)
,`previous_month_units` int(11)
,`current_units` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cnic` varchar(13) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cid`, `name`, `email`, `cnic`, `address`, `password`) VALUES
(2, 'Osama', 'osama@gmail.com', '1452369874563', 'house j-18/8', '7c4ab2635bc11858c6c26ccbadba065b'),
(25, 'talha', 'talha@gmail.com', '123123213', 'asdasd', '7d2731ef68f1d34e02a42aedaaf68cad');

-- --------------------------------------------------------

--
-- Table structure for table `meterdetails`
--

CREATE TABLE `meterdetails` (
  `conid` int(11) NOT NULL,
  `total_units_on_meter` int(11) NOT NULL,
  `previous_month_units` int(11) NOT NULL,
  `current_units` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meterdetails`
--

INSERT INTO `meterdetails` (`conid`, `total_units_on_meter`, `previous_month_units`, `current_units`) VALUES
(1, 44785, 44000, 44785),
(3, 44552, 44500, 44552);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `fc_surcharge` int(11) NOT NULL,
  `ptv_fee` int(11) NOT NULL,
  `gst` int(11) NOT NULL,
  `electricity_duty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `com_unit_cost` int(11) NOT NULL,
  `dom_unit_cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`com_unit_cost`, `dom_unit_cost`) VALUES
(12, 19);

-- --------------------------------------------------------

--
-- Structure for view `allbills`
--
DROP TABLE IF EXISTS `allbills`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `allbills`  AS  select `b`.`bill_cid` AS `bill_cid`,`b`.`bill_num` AS `bill_num`,`b`.`issuedate` AS `issuedate`,`b`.`duedate` AS `duedate`,`bd`.`unit_cost` AS `unit_cost`,`bd`.`units_consumed` AS `units_consumed`,`bd`.`total_cost` AS `total_cost`,`bd`.`after_due_date` AS `after_due_date`,`bd`.`bill_status` AS `bill_status` from (`bill` `b` join `billdetails` `bd` on((`b`.`bill_id` = `bd`.`bill_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `customerdetails`
--
DROP TABLE IF EXISTS `customerdetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customerdetails`  AS  select `c`.`cid` AS `cid`,`c`.`name` AS `name`,`c`.`email` AS `email`,`c`.`cnic` AS `cnic`,`c`.`address` AS `address`,`con`.`conid` AS `conid`,`con`.`con_meterno` AS `con_meterno`,`con`.`con_type` AS `con_type`,`con`.`con_date` AS `con_date`,`m`.`total_units_on_meter` AS `total_units_on_meter`,`m`.`previous_month_units` AS `previous_month_units`,`m`.`current_units` AS `current_units` from ((`customers` `c` join `connections` `con` on((`con`.`cid` = `c`.`cid`))) join `meterdetails` `m` on((`con`.`conid` = `m`.`conid`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `fk_bill_cid` (`bill_cid`);

--
-- Indexes for table `billdetails`
--
ALTER TABLE `billdetails`
  ADD KEY `fk_bill_id` (`bill_id`);

--
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`conid`),
  ADD KEY `fk_cid` (`cid`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cnic` (`cnic`);

--
-- Indexes for table `meterdetails`
--
ALTER TABLE `meterdetails`
  ADD KEY `FK_conid` (`conid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `connections`
--
ALTER TABLE `connections`
  MODIFY `conid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_bill_cid` FOREIGN KEY (`bill_cid`) REFERENCES `customers` (`cid`);

--
-- Constraints for table `billdetails`
--
ALTER TABLE `billdetails`
  ADD CONSTRAINT `fk_bill_id` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`);

--
-- Constraints for table `connections`
--
ALTER TABLE `connections`
  ADD CONSTRAINT `fk_cid` FOREIGN KEY (`cid`) REFERENCES `customers` (`cid`);

--
-- Constraints for table `meterdetails`
--
ALTER TABLE `meterdetails`
  ADD CONSTRAINT `FK_conid` FOREIGN KEY (`conid`) REFERENCES `connections` (`conid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
