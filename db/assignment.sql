-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2020 at 09:30 PM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.3.24-3+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--
CREATE DATABASE IF NOT EXISTS `assignment` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `assignment`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `AddressID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Address` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `Address2` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `Country` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `State` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `City` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `Zip` int(6) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`AddressID`, `User_ID`, `Address`, `Address2`, `Country`, `State`, `City`, `Zip`, `Phone`) VALUES(12, 2, '01, Angan Park Society', '150 Ring Road', 'India', 'Gujarat', 'Rajkot', 360004, 8849619271);
INSERT INTO `address` (`AddressID`, `User_ID`, `Address`, `Address2`, `Country`, `State`, `City`, `Zip`, `Phone`) VALUES(14, 5, 'ShankarDev Nagar', 'Tarajan ', 'India', 'Assam', 'Johrat', 785001, 9090348025);
INSERT INTO `address` (`AddressID`, `User_ID`, `Address`, `Address2`, `Country`, `State`, `City`, `Zip`, `Phone`) VALUES(15, 5, 'Sun City Appartment', 'Suladhara', 'India', 'Assam', 'Johrat', 785034, 9090348034);
INSERT INTO `address` (`AddressID`, `User_ID`, `Address`, `Address2`, `Country`, `State`, `City`, `Zip`, `Phone`) VALUES(27, 1, 'Sarthi Bunglows', 'Thaltej', 'India', 'Gujarat', 'Ahmedabad', 380061, 8899889988);
INSERT INTO `address` (`AddressID`, `User_ID`, `Address`, `Address2`, `Country`, `State`, `City`, `Zip`, `Phone`) VALUES(28, 1, 'Goyal Intercity', 'Drive-in-road', 'India', 'Gujarat', 'Ahmedabad', 380054, 9898989898);
INSERT INTO `address` (`AddressID`, `User_ID`, `Address`, `Address2`, `Country`, `State`, `City`, `Zip`, `Phone`) VALUES(29, 1, 'Goyal Bunglows', 'Thaltej', 'India', 'Gujarat', 'Ahmedabad', 380061, 8899567828);
INSERT INTO `address` (`AddressID`, `User_ID`, `Address`, `Address2`, `Country`, `State`, `City`, `Zip`, `Phone`) VALUES(30, 3, 'ABC Apartments', 'Satellite', 'India', 'Gujarat', 'Ahmedabad', 380072, 8845789984);

-- --------------------------------------------------------

--
-- Table structure for table `optiongroups`
--

CREATE TABLE `optiongroups` (
  `OptionGroupID` int(11) NOT NULL,
  `OptionGroupName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `optiongroups`
--

INSERT INTO `optiongroups` (`OptionGroupID`, `OptionGroupName`) VALUES(1, 'color');
INSERT INTO `optiongroups` (`OptionGroupID`, `OptionGroupName`) VALUES(2, 'size');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `OptionID` int(11) NOT NULL,
  `OptionGroupID` int(11) DEFAULT NULL,
  `OptionName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`OptionID`, `OptionGroupID`, `OptionName`) VALUES(1, 1, 'red');
INSERT INTO `options` (`OptionID`, `OptionGroupID`, `OptionName`) VALUES(2, 1, 'blue');
INSERT INTO `options` (`OptionID`, `OptionGroupID`, `OptionName`) VALUES(3, 1, 'green');
INSERT INTO `options` (`OptionID`, `OptionGroupID`, `OptionName`) VALUES(4, 2, 'S');
INSERT INTO `options` (`OptionID`, `OptionGroupID`, `OptionName`) VALUES(5, 2, 'M');
INSERT INTO `options` (`OptionID`, `OptionGroupID`, `OptionName`) VALUES(6, 2, 'L');
INSERT INTO `options` (`OptionID`, `OptionGroupID`, `OptionName`) VALUES(7, 2, 'XL');
INSERT INTO `options` (`OptionID`, `OptionGroupID`, `OptionName`) VALUES(8, 2, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `DetailID` int(11) NOT NULL,
  `DetailOrderID` int(11) NOT NULL,
  `DetailProductID` int(11) NOT NULL,
  `DetailName` varchar(250) COLLATE latin1_german2_ci NOT NULL,
  `DetailPrice` float NOT NULL,
  `DetailSKU` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `DetailQuantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `OrderUserID` int(11) NOT NULL,
  `OrderAmount` float NOT NULL,
  `OrderShipName` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderShipAddress` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderShipAddress2` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderCity` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `OrderState` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `OrderZip` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `OrderCountry` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `OrderPhone` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `OrderFax` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `OrderShipping` float NOT NULL,
  `OrderTax` float NOT NULL,
  `OrderEmail` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OrderShipped` tinyint(1) NOT NULL DEFAULT '0',
  `OrderTrackingNumber` varchar(80) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE `productcategories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(50) COLLATE latin1_german2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`CategoryID`, `CategoryName`) VALUES(1, 'Running');
INSERT INTO `productcategories` (`CategoryID`, `CategoryName`) VALUES(2, 'Walking');
INSERT INTO `productcategories` (`CategoryID`, `CategoryName`) VALUES(3, 'HIking');
INSERT INTO `productcategories` (`CategoryID`, `CategoryName`) VALUES(4, 'Track and Trail');
INSERT INTO `productcategories` (`CategoryID`, `CategoryName`) VALUES(5, 'Short Sleave');
INSERT INTO `productcategories` (`CategoryID`, `CategoryName`) VALUES(6, 'Long Sleave');

-- --------------------------------------------------------

--
-- Table structure for table `productoptions`
--

CREATE TABLE `productoptions` (
  `ProductOptionID` int(10) UNSIGNED NOT NULL,
  `ProductID` int(10) UNSIGNED NOT NULL,
  `OptionID` int(10) UNSIGNED NOT NULL,
  `OptionPriceIncrement` double DEFAULT NULL,
  `OptionGroupID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `productoptions`
--

INSERT INTO `productoptions` (`ProductOptionID`, `ProductID`, `OptionID`, `OptionPriceIncrement`, `OptionGroupID`) VALUES(1, 1, 1, 0, 1);
INSERT INTO `productoptions` (`ProductOptionID`, `ProductID`, `OptionID`, `OptionPriceIncrement`, `OptionGroupID`) VALUES(2, 1, 2, 0, 1);
INSERT INTO `productoptions` (`ProductOptionID`, `ProductID`, `OptionID`, `OptionPriceIncrement`, `OptionGroupID`) VALUES(3, 1, 3, 0, 1);
INSERT INTO `productoptions` (`ProductOptionID`, `ProductID`, `OptionID`, `OptionPriceIncrement`, `OptionGroupID`) VALUES(4, 1, 4, 0, 2);
INSERT INTO `productoptions` (`ProductOptionID`, `ProductID`, `OptionID`, `OptionPriceIncrement`, `OptionGroupID`) VALUES(5, 1, 5, 0, 2);
INSERT INTO `productoptions` (`ProductOptionID`, `ProductID`, `OptionID`, `OptionPriceIncrement`, `OptionGroupID`) VALUES(6, 1, 6, 0, 2);
INSERT INTO `productoptions` (`ProductOptionID`, `ProductID`, `OptionID`, `OptionPriceIncrement`, `OptionGroupID`) VALUES(7, 1, 7, 2, 2);
INSERT INTO `productoptions` (`ProductOptionID`, `ProductID`, `OptionID`, `OptionPriceIncrement`, `OptionGroupID`) VALUES(8, 1, 8, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(12) NOT NULL,
  `ProductSKU` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `ProductName` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `ProductPrice` float DEFAULT '675',
  `ProductWeight` float DEFAULT NULL,
  `ProductCartDesc` varchar(250) COLLATE latin1_german2_ci DEFAULT NULL,
  `ProductShortDesc` varchar(1000) COLLATE latin1_german2_ci DEFAULT NULL,
  `ProductLongDesc` text COLLATE latin1_german2_ci,
  `ProductThumb` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `ProductImage` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `ProductCategoryID` int(11) DEFAULT NULL,
  `ProductUpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ProductStock` float DEFAULT NULL,
  `ProductLive` tinyint(1) DEFAULT '0',
  `ProductUnlimited` tinyint(1) DEFAULT '1',
  `ProductLocation` varchar(250) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(993, '0000-0002', 'Sling Bag (Black)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:01:21', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(992, '0000-0001', 'Messenger Bag', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 15:51:52', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(994, '0000-0003', 'Sling Bag (Blue)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:01:21', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(995, '0000-0004', 'Sling Bag (Red)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:01:21', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(996, '0000-0005', 'Sling Bag (Orange)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:01:21', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(997, '0000-0006', 'Sling Bag (Yellow)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:01:21', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(998, '0000-0007', 'Sling Bag (Green)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:01:21', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(999, '0000-0008', 'Sling Bag (Pink)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:01:21', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1000, '0000-0009', 'Sling Bag (Purple)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:01:21', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1001, '0000-0010', 'Sling Bag (Marsala)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:01:21', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1002, '0000-00011', 'Sling Bag (Voila)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:05:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1003, '0000-0012', 'Sling Bag (Cyan)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:05:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1004, '0000-0013', 'Sling Bag (Pistachio)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:05:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1005, '0000-0014', 'Sling Bag (Grey)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:05:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1006, '0000-0015', 'Sling Bag (Brown)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:05:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1007, '0000-0016', 'Sling Bag (White)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:05:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1008, '0000-0017', 'Sling Bag (Cobalt)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:05:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1009, '0000-0018', 'Sling Bag (Teal)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:05:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1010, '0000-0019', 'Sling Bag (Orchid)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:05:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1011, '0000-0020', 'Shoulder Bag (Black)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:08:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1012, '0000-0021', 'Shoulder Bag (Blue)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:08:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1013, '0000-0022', 'Shoulder Bag (Red)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:08:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1014, '0000-0023', 'Shoulder Bag (Orange)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:08:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1015, '0000-0024', 'Shoulder Bag (Yellow)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:08:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1016, '0000-0025', 'Shoulder Bag (Green)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:08:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1017, '0000-0026', 'Shoulder Bag (Pink)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:08:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1018, '0000-0027', 'Shoulder Bag (Purple)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:08:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1019, '0000-0028', 'Shoulder Bag (Marsala)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:08:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1020, '0000-0029', 'Shoulder Bag (Voila)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:12:54', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1021, '0000-0030', 'Shoulder Bag (Cyan)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:12:54', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1022, '0000-0031', 'Shoulder Bag (Pistachio)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:12:54', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1023, '0000-0032', 'Shoulder Bag (Grey)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:12:54', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1024, '0000-0033', 'Shoulder Bag (Brown)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:12:54', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1025, '0000-0034', 'Shoulder Bag (White)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:12:54', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1026, '0000-0035', 'Shoulder Bag (Cobalt)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:12:54', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1027, '0000-0036', 'Shoulder Bag (Teal)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:12:54', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1028, '0000-0037', 'Shoulder Bag (Orchid)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:12:54', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1029, '0000-0038', 'Satchel (Black)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1030, '0000-0039', 'Satchel (Blue)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1031, '0000-0040', 'Satchel (Red)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1032, '0000-0041', 'Satchel (Orange)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1033, '0000-0042', 'Satchel (Yellow)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1034, '0000-0043', 'Satchel (Green)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1035, '0000-0044', 'Satchel (Pink)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1036, '0000-0045', 'Satchel (Purple)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1037, '0000-0046', 'Satchel (Marsala)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1038, '0000-0047', 'Satchel (Voila)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:25', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1039, '0000-0048', 'Satchel (Cyan)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:25', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1040, '0000-0049', 'Satchel (Pistachio)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:25', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1041, '0000-0050', 'Satchel (Grey)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:25', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1042, '0000-0051', 'Satchel (Brown)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:25', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1043, '0000-0052', 'Satchel (White)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:25', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1044, '0000-0053', 'Satchel (Cobalt)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:25', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1045, '0000-0054', 'Satchel (Teal)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:25', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1046, '0000-0055', 'Satchel (Orchid)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:16:25', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1047, '0000-0056', 'Tote (Black)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1048, '0000-0057', 'Tote (Blue)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1049, '0000-0058', 'Tote (Red)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1050, '0000-0059', 'Tote (Orange)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1051, '0000-0060', 'Tote (Yellow)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1052, '0000-0061', 'Tote (Green)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1053, '0000-0062', 'Tote (Pink)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1054, '0000-0063', 'Tote (Purple)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1055, '0000-0064', 'Tote (Marsala)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:13', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1056, '0000-0065', 'Tote (Voila)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:29', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1057, '0000-0066', 'Tote (Cyan)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:29', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1058, '0000-0067', 'Tote (Pistachio)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:29', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1059, '0000-0068', 'Tote (Grey)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:29', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1060, '0000-0069', 'Tote (Brown)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:29', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1061, '0000-0070', 'Tote (White)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:29', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1062, '0000-0071', 'Tote (Cobalt)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:29', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1063, '0000-0072', 'Tote (Teal)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:29', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1064, '0000-0073', 'Tote (Orchid)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:19:29', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1065, '0000-0074', 'Hobo (Black)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:09', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1066, '0000-0075', 'Hobo (Blue)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:09', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1067, '0000-0076', 'Hobo (Red)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:09', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1068, '0000-0077', 'Hobo (Orange)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:09', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1069, '0000-0078', 'Hobo (Yellow)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:09', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1070, '0000-0079', 'Hobo (Green)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:09', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1071, '0000-0080', 'Hobo (Pink)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:09', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1072, '0000-0081', 'Hobo (Purple)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:09', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1073, '0000-0082', 'Hobo (Marsala)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:09', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1074, '0000-0083', 'Hobo (Voila)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:20', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1075, '0000-0084', 'Hobo (Cyan)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:20', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1076, '0000-0085', 'Hobo (Pistachio)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:20', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1077, '0000-0086', 'Hobo (Grey)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:20', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1078, '0000-0087', 'Hobo (Brown)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:20', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1079, '0000-0088', 'Hobo (White)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:20', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1080, '0000-0089', 'Hobo (Cobalt)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:20', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1081, '0000-0090', 'Hobo (Teal)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:20', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1082, '0000-0091', 'Hobo (Orchid)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:22:20', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1083, '0000-0092', 'Messenger Bag (Black)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1084, '0000-0093', 'Messenger Bag (Blue)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1085, '0000-0094', 'Messenger Bag (Red)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1086, '0000-0095', 'Messenger Bag (Orange)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1087, '0000-0096', 'Messenger Bag (Yellow)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1088, '0000-0097', 'Messenger Bag (Green)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1089, '0000-0098', 'Messenger Bag (Pink)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1090, '0000-0099', 'Messenger Bag (Purple)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1091, '0000-0100', 'Messenger Bag (Marsala)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:46', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1092, '0000-0101', 'Messenger Bag (Voila)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:57', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1093, '0000-0102', 'Messenger Bag (Cyan)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:57', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1094, '0000-0103', 'Messenger Bag (Pistachio)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:57', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1095, '0000-0104', 'Messenger Bag (Grey)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:57', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1096, '0000-0105', 'Messenger Bag (Brown)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:57', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1097, '0000-0106', 'Messenger Bag (White)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:57', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1098, '0000-0107', 'Messenger Bag (Cobalt)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:57', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1099, '0000-0108', 'Messenger Bag (Teal)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:57', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1100, '0000-0109', 'Messenger Bag (Orchid)', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:25:57', NULL, 0, 1, NULL);
INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES(1101, '0000-0110', 'Sling Bag', 675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 16:26:31', NULL, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserEmail` varchar(500) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserPassword` varchar(500) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserFirstName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserLastName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserPhone` varchar(10) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserIDCard` longblob,
  `UserAddress` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserAddress2` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserCountry` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserState` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserCity` varchar(90) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserZip` varchar(12) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserAddressPhone` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserEmailVerified` tinyint(1) DEFAULT '0',
  `UserRegistrationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UserVerificationCode` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserIP` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserFax` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserPhone`, `UserIDCard`, `UserAddress`, `UserAddress2`, `UserCountry`, `UserState`, `UserCity`, `UserZip`, `UserAddressPhone`, `UserEmailVerified`, `UserRegistrationDate`, `UserVerificationCode`, `UserIP`, `UserFax`) VALUES(1, 'akansha.lalwani@sigmainfo.net', '0cc175b9c0f1b6a831c399e269772661', 'Akansha', 'Lalwani', '9998090780', 0x89504e470d0a1a0a0000000d4948445200000131000000a50803000000033b3abb000000e1504c5445ffffffff6600fcfffffefffdff6400fe6700ff5e00ed1a3bfe6100fc5500ec0031ec001dfd5800ed1437fffefef95700f38993fbf5edec0025f05467f95c00faeddffce2e4ec002df7986cfd5200faf9f1f9e3d3f7cbb0f9e8d7f69f6efbf1e7f4ab83f68143f4a479f37b89e9ac7cefd3bbf37844fad4beef995af2c8aaf6834ff6bb97f58c5df8d9c8fb4100f96d1cf5ac88f67b39f6722ff6c1a2f6b48ff76913f69e6cf8cab1f15b00f47027f28f55f7844cf2a675f59666f9bf98f5d2b5eb0008ee3750ef475dee314bf5909cf8bac2f15f71f7aeb7f7a2adef3550f37384d64d5bb3000007e349444154789ced9c8b76da3810866dc932565070dc98121b08976eca364009b724c0b26993deb6efff402bd940b8194c30c8a6f39d437b92a630fe35339e19c951140000000000000000000000000000000000000000000000000000000000000000000000000000002049208c5d2cdb88d060ecbfa4dae0fe95498e620acedf94a47e3e56f0c79a4c0bc221961429c8aa5dfdfdc942522dc1f8f6a34c03428370befed16e34a587036e7cbe916dc37650b670d5fa6cde6511427225c3a8e154a4af5a0058c0ff769b776ddb713a5dd7fbae4c9332185d335a90bc6a1be00e95efde12ca1cf3b68665bb973048b973b481ab48cda46b98d8834b85eb96c97483d95779ae9e7c3bb1d27508ebc9366315a18cdb2cf350d435d5a0fd9ed472e215acd44ca2d959d976ac828bf5469f3283104da76d9ebee487a3e225d0a2c957702cddd5a7609ce191a7f050ec50ca9d8ba884f1f425fe2923db361fab65a82aadc546311e8d9608455f2d9568ecb15a44f1310f29b74c55b5be2bdb90a9034d435155855aaae1b478fa42b25bc857b052a684a8ec5e6e7d339104659fae06fcaee8399740372b0fb1d16a4281f2a524b429db0e05b93722146d83a89a2f97c6cc6113c7c8bd141108d947cf3c6249b3018b0a8bf78a23e2e88648f3c2208dcbc6b46a76f21331025774e1fffa489a05bc1e2d7df20a546d12891e3c7dd52d84e393efa754a96726abcb32c09a14a8645e2e55a795826886704cca8929bc74753c438973ec34c63b599eec8bbc573499b1e05c5ef535969f56d78171e9719262ed630fe710ef15ef5b941a0bae25043358bf1cc3f6c307ddeafe5d5c1b1ca5409c6570eba65c1105ea925cfc4bdd19f0f425bfd50ea0ee4cab9edba3dc8f4422476eb13eb429d3d45534db1c156298ec6714cde91aebff1c6755110fc50ea3babaec5d7ef5658ff3bcce8859b27f05a3b63e35f6d0931e21c2a4575ceb5ca21d321fef4a31762f0eea3ab38566ff1ef8b350b13beb15d7e9653883ae1583d1ea069092b55f579b2b761863bd772dd578812a06114130ea8da2515c8639ebe0c962a8cf99dc3b84624204dcec8d6cd3eb7e02f532eff32846c39cf560f444e78d2e1fe443b2dd06090e453f1cc5281aa14cbc7ac73560b7337f217a23ba25c67e79e03e553b3c1437a8c5f5e2d597b79316abe944003dbad0f676227b6321989bef556c87ad2b2116f43287b5d847a30f564af682f19abdff26cdc44d78288e5b54f48a24307789eff3eaeb3a8fe235fb0a06a12a5bb81a8d46734685df153b1bef8a33a7a6ad7a4c76d2c28070d6248b57650cf77e57b7c9439117a8dbe55275da2eb80989c709f76c3960cc227a533184c5d846c1c5ee9017a8bcafdf9cba843b1366c6e05cce8e64cde5eb206cf8e635e7a13808158a9e60cc163b69c9520c2b55b67225c4d929934dfdd1cddf8950dc54a0ce7f8841073d2b1e1bdb3b8051c95e133cda6336eca54cce26a1e203ef1575634b1131938b8851b4fc5dd1ddc1a8b71294defa77dcd0718950a95015a1686c4f5c93b7d744fa42d3fa365160dc5a3b9d227abbb47da34b643bffaec81397a69270d94ba4af723119b5fd1a9e9c80cbd2fbcdad83457e57f47ac5904af9fec5d3575dee29dfbd40e380668f8b605e6f2a2bc5c1b77005eae242783b69f11dad6ec5b283ae58ec7bd9e5aca8af66c384cc249050e9c6bb2beea896380830cecbbcdc08e8d22d5738aa17ddd9bc0a897173b1f04fc536770b450f83f6ab7c059299bd663436cdab043a65ad61b55eb8c9e79b4fddf2b8d237bd2157c8bbe29c5e4ea76bf90e9b5c3076c3788aa633462933f98be9bbbb96ff16de285af6054740cd09e72bde41889ddd6af6bfc5285a89ed46ed4ed4573ba4c8e1e9cbdf494b72384e40dbd358047a0dba6ed29aed6050e7708a69843713ba795b434a1c1eeb8808376c5ff306c4b142f33ae9d5d732d9c0fa757fc10cdae2e9eb649c6b427edddc2212bd74daf9e4cd724ee206f9caa114d3cdc64de28bfbb5340fa19846edeb2252e278ce777ff266e4798ca7af9ebcb3ed07a7f4b69e2718dda93cb8717a08266a703f42c5c428da3b157d8ad13805b5a3ab60c54e5a6c4f45474775f3719bf088830016c2a71b8e3e5829849c5d6c8210ef20c0896b35257868bd03dea9e8532bee0369ec1b9606233c7da1444f567722ec4831482fda11e94bf6551c13dcdea324d3e9a8209e87fca314436f7532a27abfa023660f881e0334666f1992f1e6b19c45a7d93b6e2683ddc1eba3d8e1c422e2a10e718ee984bba18de4ed9d0a7f42184f5f493cc7141dcd1d24d30ca75f153b697fa6774dc9f7c39d59e5c597edb957b237b62300598dd5078e978351d3a95de996927528fa6020f430f0355bba05f85f6a9ac1a83deaf2da3ea9c7e40e00eeb62923cbc70c09116a317350ad25e81185a38031c24d719895e99a269e5b107f1a3aa366bf522d648563fde1a96b05ff973916bbd551bbafd9ba6e3cb6daa3ebbb42d13f80894f7bb4ba07e2b151cbb24a25cb72712c7e4961ecc94c1b6ba49cf20e07000000000000000000000000000000000000000007e1c3c53cb2ad49025fce5ec9bd936d4d12489fcf7126db9a2490fefafc7c79c95f5f9f2f5f40b110a473efbfa55ebe7f3f537efcf809511982f4bbf71f72a9e79774e632f70c3e1602aed8c5cbb7dc39570cf25828b862bf2e7fe55242b1142816022f2a5fce41b1d0788abdbb784e2ba05838d2fffdbaf8f1fb67eaf9e7ef14e4b130a4cf7367e767b9d479ee3c053e1686746a0e502c045fd2737c916d0d000000000009e67fafb68933178cbe700000000049454e44ae426082, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-11-09 09:56:03', NULL, NULL, NULL);
INSERT INTO `users` (`UserID`, `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserPhone`, `UserIDCard`, `UserAddress`, `UserAddress2`, `UserCountry`, `UserState`, `UserCity`, `UserZip`, `UserAddressPhone`, `UserEmailVerified`, `UserRegistrationDate`, `UserVerificationCode`, `UserIP`, `UserFax`) VALUES(2, 'ijen.ghadiya@sigmainfo.net', '0cc175b9c0f1b6a831c399e269772661', 'Ijen', 'Ghadiya', '9990009900', 0x39663963366239343731653131326632623639313735373932383364393834392e6a7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-11-09 10:45:44', NULL, NULL, NULL);
INSERT INTO `users` (`UserID`, `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserPhone`, `UserIDCard`, `UserAddress`, `UserAddress2`, `UserCountry`, `UserState`, `UserCity`, `UserZip`, `UserAddressPhone`, `UserEmailVerified`, `UserRegistrationDate`, `UserVerificationCode`, `UserIP`, `UserFax`) VALUES(3, 'jinal.shah@sigmainfo.net', '0cc175b9c0f1b6a831c399e269772661', 'Jinal', 'Shah', '8880000000', 0x39663963366239343731653131326632623639313735373932383364393834392e6a7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-11-09 11:35:49', NULL, NULL, NULL);
INSERT INTO `users` (`UserID`, `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserPhone`, `UserIDCard`, `UserAddress`, `UserAddress2`, `UserCountry`, `UserState`, `UserCity`, `UserZip`, `UserAddressPhone`, `UserEmailVerified`, `UserRegistrationDate`, `UserVerificationCode`, `UserIP`, `UserFax`) VALUES(4, 'labani.acharjee@sigmainfo.net', '0cc175b9c0f1b6a831c399e269772661', 'Labani', 'Acharjee', '9998889988', 0x63393966333630396563393962613964383139643936353561633037633036652e6a7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-11-11 10:37:56', NULL, NULL, NULL);
INSERT INTO `users` (`UserID`, `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserPhone`, `UserIDCard`, `UserAddress`, `UserAddress2`, `UserCountry`, `UserState`, `UserCity`, `UserZip`, `UserAddressPhone`, `UserEmailVerified`, `UserRegistrationDate`, `UserVerificationCode`, `UserIP`, `UserFax`) VALUES(5, 'kirtiman.dutta@sigmainfo.net', '0cc175b9c0f1b6a831c399e269772661', 'Kirtiman', 'Dutta', '9999999999', 0x39663963366239343731653131326632623639313735373932383364393834392e6a7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-11-11 10:39:48', NULL, NULL, NULL);
INSERT INTO `users` (`UserID`, `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserPhone`, `UserIDCard`, `UserAddress`, `UserAddress2`, `UserCountry`, `UserState`, `UserCity`, `UserZip`, `UserAddressPhone`, `UserEmailVerified`, `UserRegistrationDate`, `UserVerificationCode`, `UserIP`, `UserFax`) VALUES(10, 'rithik.jain@sigmainfo.net', '0cc175b9c0f1b6a831c399e269772661', 'Rithik', 'Jain', '8888888888', 0x62653063363231373634663666333530396562363931303637633761613937382e706e67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-11-11 21:46:58', NULL, NULL, NULL);
INSERT INTO `users` (`UserID`, `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserPhone`, `UserIDCard`, `UserAddress`, `UserAddress2`, `UserCountry`, `UserState`, `UserCity`, `UserZip`, `UserAddressPhone`, `UserEmailVerified`, `UserRegistrationDate`, `UserVerificationCode`, `UserIP`, `UserFax`) VALUES(11, 'ilavati.makwana@sigmainfo.net', '0cc175b9c0f1b6a831c399e269772661', 'Ilavati', 'Makwana', '9988998800', 0x39663963366239343731653131326632623639313735373932383364393834392e6a7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-11-11 22:01:42', NULL, NULL, NULL);
INSERT INTO `users` (`UserID`, `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserPhone`, `UserIDCard`, `UserAddress`, `UserAddress2`, `UserCountry`, `UserState`, `UserCity`, `UserZip`, `UserAddressPhone`, `UserEmailVerified`, `UserRegistrationDate`, `UserVerificationCode`, `UserIP`, `UserFax`) VALUES(12, 'masumi.upadhyay@sigmainfo.net', '0cc175b9c0f1b6a831c399e269772661', 'Masumi', 'Upadhyay', '7788665533', 0x64623561376531383839336539353231643766306663643166396432373631362e6a7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-11-11 22:02:29', NULL, NULL, NULL);
INSERT INTO `users` (`UserID`, `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserPhone`, `UserIDCard`, `UserAddress`, `UserAddress2`, `UserCountry`, `UserState`, `UserCity`, `UserZip`, `UserAddressPhone`, `UserEmailVerified`, `UserRegistrationDate`, `UserVerificationCode`, `UserIP`, `UserFax`) VALUES(13, 'sampath.g@sigmainfo.net', '0cc175b9c0f1b6a831c399e269772661', 'Sampath', 'Kumar G', '8787878787', 0x31383234343833613631393139363731393639646139356666386364343339362e6a7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-11-11 22:04:19', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`AddressID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `optiongroups`
--
ALTER TABLE `optiongroups`
  ADD PRIMARY KEY (`OptionGroupID`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`OptionID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`DetailID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `productoptions`
--
ALTER TABLE `productoptions`
  ADD PRIMARY KEY (`ProductOptionID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `AddressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `optiongroups`
--
ALTER TABLE `optiongroups`
  MODIFY `OptionGroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `OptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `productoptions`
--
ALTER TABLE `productoptions`
  MODIFY `ProductOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1102;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `Foriegn` FOREIGN KEY (`User_ID`) REFERENCES `users` (`UserID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
