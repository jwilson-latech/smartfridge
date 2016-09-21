-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2016 at 02:16 AM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `LTR_Fridgedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Allergies`
--

CREATE TABLE IF NOT EXISTS `Allergies` (
  `AName` varchar(45) NOT NULL,
  `Owner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ingredients`
--

CREATE TABLE IF NOT EXISTS `Ingredients` (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `SName` varchar(45) NOT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Calories` int(11) DEFAULT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `Ingredients`
--

INSERT INTO `Ingredients` (`SID`, `SName`, `Type`, `Calories`) VALUES
(1, 'Apples', 'Produce', 100),
(2, 'Eggs', 'Baking Goods', 80),
(3, 'Avocados', 'Produce', 60),
(4, 'Cookies', 'Bakery', 120),
(5, 'Salt', 'Spice', 0),
(6, 'Cheese', 'Dairy', 150),
(7, 'Lettuce', 'Vegetable', 20),
(8, 'Carrots', 'Produce', 50),
(9, 'Tomatoes', 'Produce', 50),
(11, 'Bacon', 'Meat', 250),
(12, 'Banana', 'Fruit', 0),
(13, 'Lemon', 'Fruit', 0),
(28, 'Apple', 'Produce', 50),
(29, 'Green Pepper', 'Produce', 10),
(30, 'Pie', 'Bakery', 0),
(31, 'Lettuce', 'Vegetable', 20),
(32, 'Orange', 'Produce', 15),
(37, 'Juice', 'Beverages', 25),
(40, 'Coke', 'Beverages', 120),
(41, 'Cake', 'Bakery', 0),
(42, 'Chicken', 'Meat', 500),
(43, 'Lettuce', 'Produce', 0),
(44, 'Pesto', 'Condiments', 15),
(45, 'Turkey', 'Meat', 200),
(46, 'Cupcake', 'Bakery', 40),
(47, 'avacados', 'fruit', 100),
(48, 'Cocacola', 'Beverages', 0),
(49, 'Pork', 'Meat', 0),
(50, 'Beef', 'Meat', 0),
(51, 'Beer', 'Beverages', 0),
(52, 'Bacardi', 'Beverages', 0),
(53, 'Jack Daniels', 'Beverage', 0),
(54, 'Bacardi', 'Beverage', 0),
(55, 'Capitan Morgans', 'Beverage', 0),
(56, 'Pizza', 'Frozen Food', 0),
(57, 'Corn Dog', 'Meat', 0),
(58, 'Root beer', 'Beverages', 120),
(59, 'Chocolate', 'Snacks', 0),
(60, 'Apple Juice', 'Beverages', 0),
(61, 'Black tea', 'Beverages', 0),
(62, 'Lard', 'Fat', 1),
(63, 'Lemon', 'Produce', 17),
(64, 'Banana', 'Produce', 0),
(65, 'Potato', 'Produce', 0),
(66, 'Grapes', 'Produce', 40),
(67, 'Berry', 'Produce', 40);

-- --------------------------------------------------------

--
-- Table structure for table `Inventory`
--

CREATE TABLE IF NOT EXISTS `Inventory` (
  `SID` int(11) NOT NULL,
  `SName` varchar(45) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Quant_curr` int(11) DEFAULT NULL,
  `Quant_threshold` int(11) DEFAULT NULL,
  `MName` varchar(15) NOT NULL DEFAULT ' ',
  `Expiration_date` date DEFAULT NULL,
  `Calories` int(11) DEFAULT NULL,
  `Owner` varchar(45) NOT NULL,
  PRIMARY KEY (`SID`,`Owner`),
  KEY `MID` (`MName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Inventory`
--

INSERT INTO `Inventory` (`SID`, `SName`, `Type`, `Quant_curr`, `Quant_threshold`, `MName`, `Expiration_date`, `Calories`, `Owner`) VALUES
(1, 'Apples', 'Produce', 9, 9, 'lbs.', '2016-04-21', 100, 'aou001'),
(2, 'Eggs', 'Cereal/Breakfast', 12, 12, '', '2016-04-25', 80, 'aou001'),
(3, 'Avocados', 'Produce', 3, 3, '', '2016-04-12', 60, 'aou001'),
(5, 'Salt', 'Spice', 3, 3, 'tbs', '2016-04-20', 0, 'aou001'),
(8, 'Carrots', 'Produce', 10, 10, '', '2016-04-24', 50, 'aou001'),
(9, 'Tomatoes', 'Produce', 5, 5, '', '2016-04-11', 50, 'aou001'),
(32, 'Orange', 'Produce', 13, 14, ' ', '2016-04-26', 15, 'admin'),
(37, 'Juice', 'Beverages', 7, 7, 'oz. ', '2016-05-06', 25, 'admin'),
(42, 'Chicken', 'Meat', 5, 5, 'lbs.', '2016-05-02', 100, 'admin'),
(43, 'Lettuce', 'Produce', 4, 16, ' ', '2016-04-14', 0, 'admin'),
(43, 'Lettuce', 'Produce', 4, 8, ' ', '0000-00-00', 0, 'aou001'),
(44, 'Pesto', 'Condiments', 2, 2, 'oz. ', '2016-04-13', 15, 'admin'),
(45, 'Turkey', 'Meat', 1, 5, 'lbs.', '2016-04-30', 200, 'admin'),
(46, 'Cupcake', 'Bakery', 6, 6, ' ', '2016-05-04', 40, 'admin'),
(50, 'Beef', 'Meat', 10, 10, 'lbs.', '2016-05-17', 200, 'admin'),
(50, 'Beef', 'Meat', 10, 10, 'lbs.', '0000-00-00', 0, 'aou001'),
(58, 'Root beer', 'Beverages', 2, 2, 'liter', '2016-05-27', 120, 'admin'),
(63, 'Lemon', 'Produce', 7, 7, ' ', '2016-05-28', 17, 'admin');

--
-- Triggers `Inventory`
--
DROP TRIGGER IF EXISTS `InsertInventory`;
DELIMITER //
CREATE TRIGGER `InsertInventory` BEFORE INSERT ON `Inventory`
 FOR EACH ROW begin
	/* Check if item exists in Ingredients table, if it doesn't add it to ingredients */
    if not exists (Select I.SID from Ingredients I where SName = new.SName and Type = new.Type) then
		Insert into Ingredients(SName, Type, Calories) values(new.SName, new.Type, new.Calories);
    end if;
    /* If item exits in ingredients steal the ID */ 
    set new.sid = (Select I.SID from Ingredients I where SName = new.SName and Type = new.Type);
    /* Set threshold value */
	set new.Quant_threshold = new.Quant_Curr;
	/* Delete item in shopping list if present in shopping list*/
	delete from ShoppingList where Owner = new.Owner AND SID = new.SID;
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `addToShoppingList`;
DELIMITER //
CREATE TRIGGER `addToShoppingList` BEFORE UPDATE ON `Inventory`
 FOR EACH ROW begin
	if(new.Quant_Curr <= (0.25 * old.Quant_threshold)) then
		insert into ShoppingList value(old.SID, new.SName, new.Type, (new.Quant_threshold - new.Quant_curr), new.Quant_threshold, new.MName, new.Expiration_date, new.Calories, new.Owner) 
        on duplicate key update Quant_curr = (new.Quant_threshold - new.Quant_curr);
	end if;
    IF(new.Quant_curr > (0.25 * old.Quant_threshold)) THEN
		delete from ShoppingList where SName = new.SName AND Type = new.Type AND Owner = new.Owner AND SID = new.SID;
	END IF;
    if(new.Quant_Curr > old.Quant_threshold) then
		set new.Quant_threshold = new.Quant_Curr;
    end if;
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Measure`
--

CREATE TABLE IF NOT EXISTS `Measure` (
  `MID` int(11) NOT NULL AUTO_INCREMENT,
  `MName` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `Measure`
--

INSERT INTO `Measure` (`MID`, `MName`) VALUES
(1, 'cup'),
(2, 'gallon'),
(3, 'lbs.'),
(4, 'liter'),
(5, 'oz.'),
(6, 'slices'),
(7, 'tbs.'),
(8, 'teaspoons'),
(9, '');

-- --------------------------------------------------------

--
-- Table structure for table `Recipes`
--

CREATE TABLE IF NOT EXISTS `Recipes` (
  `RName` varchar(45) NOT NULL,
  `RID` int(11) NOT NULL DEFAULT '0',
  `Type` varchar(45) DEFAULT NULL,
  `Img_Path` varchar(45) DEFAULT NULL,
  `URL` text,
  PRIMARY KEY (`RName`,`RID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ShoppingList`
--

CREATE TABLE IF NOT EXISTS `ShoppingList` (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `SName` varchar(45) NOT NULL,
  `Type` varchar(15) DEFAULT NULL,
  `Quant_curr` int(11) DEFAULT NULL,
  `Quant_threshold` int(11) DEFAULT NULL,
  `MName` varchar(15) NOT NULL DEFAULT ' ',
  `Expiration_date` date DEFAULT '2016-06-05',
  `Calories` int(11) DEFAULT NULL,
  `Owner` varchar(45) NOT NULL,
  PRIMARY KEY (`SID`,`Owner`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `ShoppingList`
--

INSERT INTO `ShoppingList` (`SID`, `SName`, `Type`, `Quant_curr`, `Quant_threshold`, `MName`, `Expiration_date`, `Calories`, `Owner`) VALUES
(43, 'Lettuce', 'Produce', 12, 16, 'oz.', '2016-04-14', 0, 'admin'),
(45, 'Turkey', 'Meat', 4, 5, 'lbs.', '2016-04-30', 200, 'admin'),
(49, 'Pork', 'Meat', 10, 10, 'lbs.', '0000-00-00', 0, 'aou001'),
(56, 'Pizza', 'Frozen Food', 2, 2, ' ', '0000-00-00', 0, 'JD'),
(57, 'Corn Dog', 'Meat', 8, 8, '', '0000-00-00', 0, 'JD'),
(60, 'Apple Juice', 'Beverages', 2, 2, 'liter', '0000-00-00', 0, 'admin'),
(64, 'Banana', 'Produce', 8, 8, '', '0000-00-00', 0, 'admin'),
(65, 'Potato', 'Produce', 6, 6, '', '0000-00-00', 0, 'admin');

--
-- Triggers `ShoppingList`
--
DROP TRIGGER IF EXISTS `InsertShoppingList`;
DELIMITER //
CREATE TRIGGER `InsertShoppingList` BEFORE INSERT ON `ShoppingList`
 FOR EACH ROW begin
	/* Check if item exists in Ingredients table, if it doesn't add it to ingredients */
    if not exists (Select I.SID from Ingredients I where SName = new.SName and Type = new.Type) then
		Insert into Ingredients(SName, Type, Calories) values(new.SName, new.Type, new.Calories);
    end if;
    /* If item exits in ingredients steal the ID */ 
    set new.sid = (Select I.SID from Ingredients I where SName = new.SName and Type = new.Type);
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Type`
--

CREATE TABLE IF NOT EXISTS `Type` (
  `TID` int(11) NOT NULL AUTO_INCREMENT,
  `TName` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`TID`,`TName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `Type`
--

INSERT INTO `Type` (`TID`, `TName`) VALUES
(1, 'Bakery'),
(2, 'Baking Goods'),
(3, 'Beverages'),
(4, 'Canned'),
(5, 'Cereal/Breakfast'),
(6, 'Condiments'),
(7, 'Dairy'),
(8, 'Deli'),
(9, 'Frozen Foods'),
(10, 'Meat'),
(11, 'Produce'),
(12, 'Seasoning'),
(13, 'Snacks'),
(14, '');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `User_Name` varchar(45) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `User_Email` varchar(45) NOT NULL,
  `User_Password` varchar(64) NOT NULL,
  `Color_scheme` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `User_Name_UNIQUE` (`User_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`User_Name`, `User_ID`, `User_Email`, `User_Password`, `Color_scheme`) VALUES
('admin', 0, 'admin@admin.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'red'),
('JD', 1, 'jd@owensolution.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'red'),
('John', 2, 'john@doe.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'red'),
('aou001', 3, 'aou001@latech.edu', '02eccbf0750514554014c7afae4464a645fe7150b494d1872883a10d2e51463b', 'red'),
('Debra', 4, 'debralblackman@gmail.com', 'aa27b024dcd5a4277839e03e7674c60149ba7ed4d6392f0381a6b6548908260d', 'red');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
