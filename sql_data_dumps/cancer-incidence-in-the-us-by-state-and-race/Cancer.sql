-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主機： classmysql.engr.oregonstate.edu:3306
-- 產生時間： 2020 年 02 月 18 日 01:19
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
-- 資料表結構 `Cancer`
--

CREATE TABLE `Cancer` (
  `Id` int(5) DEFAULT NULL,
  `Name` varchar(49) DEFAULT NULL,
  `Category` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `Cancer`
--

INSERT INTO `Cancer` (`Id`, `Name`, `Category`) VALUES
(20010, 'Lip', 'Oral Cavity and Pharynx'),
(20020, 'Tongue', 'Oral Cavity and Pharynx'),
(20030, 'Salivary Gland', 'Oral Cavity and Pharynx'),
(20040, 'Floor of Mouth', 'Oral Cavity and Pharynx'),
(20050, 'Gum and Other Mouth', 'Oral Cavity and Pharynx'),
(20060, 'Nasopharynx', 'Oral Cavity and Pharynx'),
(20070, 'Tonsil', 'Oral Cavity and Pharynx'),
(20080, 'Oropharynx', 'Oral Cavity and Pharynx'),
(20090, 'Hypopharynx', 'Oral Cavity and Pharynx'),
(20100, 'Other Oral Cavity and Pharynx', 'Oral Cavity and Pharynx'),
(21010, 'Esophagus', 'Digestive System'),
(21020, 'Stomach', 'Digestive System'),
(21030, 'Small Intestine', 'Digestive System'),
(21041, 'Colon and Rectum', 'Digestive System'),
(21060, 'Anus, Anal Canal and Anorectum', 'Digestive System'),
(21071, 'Liver and Intrahepatic Bile Duct', 'Digestive System'),
(21080, 'Gallbladder', 'Digestive System'),
(21090, 'Other Biliary', 'Digestive System'),
(21100, 'Pancreas', 'Digestive System'),
(21110, 'Retroperitoneum', 'Digestive System'),
(21120, 'Peritoneum, Omentum and Mesentery', 'Digestive System'),
(21130, 'Other Digestive Organs', 'Digestive System'),
(22010, 'Nose, Nasal Cavity and Middle Ear', 'Respiratory System'),
(22020, 'Larynx', 'Respiratory System'),
(22030, 'Lung and Bronchus', 'Respiratory System'),
(22050, 'Pleura', 'Respiratory System'),
(22060, 'Trachea, Mediastinum and Other Respiratory Organs', 'Respiratory System'),
(23000, 'Bones and Joints', 'Bones and Joints'),
(24000, 'Soft Tissue including Heart', 'Soft Tissue including Heart'),
(25010, 'Melanoma of the Skin', 'Skin excluding Basal and Squamous'),
(25020, 'Other Non-Epithelial Skin', 'Skin excluding Basal and Squamous'),
(26001, 'Female Breast', 'Male and Female Breast'),
(26002, 'Male Breast', 'Male and Female Breast'),
(27010, 'Cervix Uteri', 'Female Genital System'),
(27020, 'Corpus Uteri', 'Female Genital System'),
(27030, 'Uterus, NOS', 'Female Genital System'),
(27040, 'Ovary', 'Female Genital System'),
(27050, 'Vagina', 'Female Genital System'),
(27060, 'Vulva', 'Female Genital System'),
(27070, 'Other Female Genital Organs', 'Female Genital System'),
(28010, 'Prostate', 'Male Genital System'),
(28020, 'Testis', 'Male Genital System'),
(28030, 'Penis', 'Male Genital System'),
(28040, 'Other Male Genital Organs', 'Male Genital System'),
(29010, 'Urinary Bladder, invasive and in situ', 'Urinary System'),
(29020, 'Kidney and Renal Pelvis', 'Urinary System'),
(29030, 'Ureter', 'Urinary System'),
(29040, 'Other Urinary Organs', 'Urinary System'),
(30000, 'Eye and Orbit', 'Eye and Orbit'),
(31010, 'Brain', 'Brain and Other Nervous System'),
(31040, 'Cranial Nerves Other Nervous System', 'Brain and Other Nervous System'),
(32010, 'Thyroid', 'Endocrine System'),
(32020, 'Other Endocrine including Thymus', 'Endocrine System'),
(33011, 'Hodgkin Lymphoma', 'Lymphomas'),
(33041, 'Non-Hodgkin Lymphoma', 'Lymphomas'),
(34000, 'Myeloma', 'Myeloma'),
(35011, 'Acute Lymphocytic Leukemia', 'Leukemias'),
(35012, 'Chronic Lymphocytic Leukemia', 'Leukemias'),
(35021, 'Acute Myeloid Leukemia', 'Leukemias'),
(35022, 'Chronic Myeloid Leukemia', 'Leukemias'),
(35041, 'Other Leukemias', 'Leukemias'),
(36010, 'Mesothelioma', 'Mesothelioma'),
(36020, 'Kaposi Sarcoma', 'Kaposi Sarcoma'),
(37000, 'Miscellaneous', 'Miscellaneous');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
