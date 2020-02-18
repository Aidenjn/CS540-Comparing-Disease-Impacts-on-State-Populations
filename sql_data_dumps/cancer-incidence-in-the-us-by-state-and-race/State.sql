-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主機： classmysql.engr.oregonstate.edu:3306
-- 產生時間： 2020 年 02 月 18 日 01:21
-- 伺服器版本： 10.4.11-MariaDB-log
-- PHP 版本： 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `cs540_chenyuw`
--

-- --------------------------------------------------------

--
-- 資料表結構 `State`
--

CREATE TABLE `State` (
  `Name` varchar(20) DEFAULT NULL,
  `Percentage_population_below_poverty` decimal(3,1) DEFAULT NULL,
  `Percentage_population_insured` decimal(3,1) DEFAULT NULL,
  `Population` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `State`
--

INSERT INTO `State` (`Name`, `Percentage_population_below_poverty`, `Percentage_population_insured`, `Population`) VALUES
('Alabama', '18.4', '89.2', 4874747),
('Alaska', '10.1', '84.5', 739795),
('Arizona', '17.7', '88.1', 7016270),
('Arkansas', '18.8', '90.6', 3004279),
('California', '15.8', '91.6', 39536653),
('Colorado', '12.2', '91.4', 5607154),
('Connecticut', '10.4', '94.2', 3588184),
('Delaware', '12.0', '93.3', 961939),
('District of Columbia', '17.9', '95.9', 693972),
('Florida', '16.1', '84.6', 20984400),
('Georgia', '17.8', '85.1', 10429379),
('Hawaii', '10.8', '95.8', 1427538),
('Idaho', '15.2', '88.2', 1716943),
('Illinois', '14.0', '92.5', 12802023),
('Indiana', '15.0', '90.5', 6666818),
('Iowa', '12.3', '95.0', 3145711),
('Kansas', '13.3', '90.1', 2913123),
('Kentucky', '18.8', '94.0', 4454189),
('Louisiana', '19.7', '88.2', 4684333),
('Maine', '13.5', '89.9', 1335907),
('Maryland', '9.9', '93.0', 6052177),
('Massachusetts', '11.4', '97.0', 6859819),
('Michigan', '16.3', '93.6', 9962311),
('Minnesota', '10.8', '95.2', 5576606),
('Mississippi', '22.3', '86.0', 2984100),
('Missouri', '15.3', '89.4', 6113532),
('Montana', '14.9', '90.0', 1050493),
('Nebraska', '12.4', '90.3', 1920076),
('Nevada', '14.9', '86.9', 2998039),
('New Hampshire', '8.5', '92.8', 1342795),
('New Jersey', '10.9', '90.8', 9005644),
('New Mexico', '20.9', '88.8', 2088070),
('New York', '15.5', '92.9', 19849399),
('North Carolina', '16.8', '87.8', 10273419),
('North Dakota', '11.2', '92.4', 755393),
('Ohio', '15.4', '93.3', 11658609),
('Oklahoma', '16.5', '84.0', 3930864),
('Oregon', '15.7', '92.6', 4142776),
('Pennsylvania', '13.3', '93.2', 12805537),
('Rhode Island', '13.8', '94.9', 1059639),
('South Carolina', '17.2', '87.9', 5024369),
('South Dakota', '14.0', '89.6', 869666),
('Tennessee', '17.2', '89.4', 6715984),
('Texas', '16.7', '81.4', 28304596),
('Utah', '11.7', '90.3', 3101833),
('Vermont', '11.6', '95.3', 623657),
('Virginia', '11.4', '90.1', 8470020),
('Washington', '12.7', '93.1', 7405743),
('West Virginia', '17.7', '93.5', 1815857),
('Wisconsin', '12.7', '93.7', 5795483),
('Wyoming', '11.6', '86.6', 579315);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
