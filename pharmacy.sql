-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 02:34 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

CREATE Database batin_pharmacy;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_drugs`
--

CREATE TABLE `category_drugs` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_drugs`
--

INSERT INTO `category_drugs` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Obat Cair', '2022-05-28 15:24:30', '2022-05-28 15:24:30'),
(2, 'Obat Tablet', '2022-05-28 15:24:30', '2022-05-28 15:24:30'),
(3, 'Obat Kapsul', '2022-05-28 15:24:30', '2022-05-28 15:24:30'),
(4, 'Obat Oles', '2022-05-28 15:24:30', '2022-05-28 15:24:30'),
(5, 'Obat Suppositoria', '2022-05-28 15:24:30', '2022-05-28 15:24:30'),
(6, 'Obat Tetes', '2022-05-28 15:24:30', '2022-05-28 15:24:30'),
(7, 'Obat Inhaler', '2022-05-28 15:24:30', '2022-05-28 15:24:30'),
(8, 'Obat Suntik', '2022-05-28 15:24:30', '2022-05-28 15:24:30'),
(9, 'Obat Implan', '2022-05-28 15:24:30', '2022-05-28 15:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `name`, `exp_date`, `price`, `stock`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Paracetamol 500Mg', '2023-05-28', 370, 100, '2022-05-28 20:07:30', '2022-05-28 20:07:30', 2),
(2, 'Antalgin 500Mg\r\n', '2023-05-28', 500, 120, '2022-05-28 20:07:30', '2022-05-28 20:31:21', 2),
(3, 'Furosemide 40Mg', '2023-05-29', 210, 122, '2022-05-28 20:07:30', '2022-05-28 20:07:30', 2),
(4, 'Metronidazole 500Mg', '2023-05-31', 545, 133, '2022-05-28 20:07:30', '2022-05-28 20:31:44', 2),
(5, 'Metoclopramide 10Mg', '2023-06-01', 200, 144, '2022-05-28 20:07:30', '2022-05-28 20:32:09', 2),
(6, 'Griseofulvin 125Mg', '2023-06-03', 588, 255, '2022-05-28 20:07:30', '2022-05-28 20:07:30', 2),
(7, 'Pyrazinamide 500Mg', '2023-06-05', 584, 202, '2022-05-28 20:07:30', '2022-05-28 20:07:30', 2),
(8, 'Tetracycline 500Mg', '2023-07-13', 1507, 223, '2022-05-28 20:07:30', '2022-05-28 20:07:30', 3),
(9, 'Mucera Sirup 60Ml', '2023-08-25', 40656, 98, '2022-05-28 20:07:30', '2022-05-28 20:07:30', 1),
(10, 'Fluconazole 150Mg', '2023-09-09', 26462, 55, '2022-05-28 20:07:30', '2022-05-28 20:07:30', 3);

-- --------------------------------------------------------

--
-- Table structure for table `history_sales`
--

CREATE TABLE `history_sales` (
  `id` int(11) NOT NULL,
  `username_staff` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `does` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `history_sales_drugs`
--

CREATE TABLE `history_sales_drugs` (
  `id` int(11) NOT NULL,
  `id_history_sale` int(11) DEFAULT NULL,
  `id_drugs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `id` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`id`, `position`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-05-28 14:51:08', '2022-05-28 14:51:08'),
(2, 'staff warehouse', '2022-05-28 14:51:08', '2022-05-28 14:51:08'),
(3, 'staff frontline', '2022-05-28 14:51:08', '2022-05-28 14:51:08'),
(4, 'admin', '2022-05-28 14:52:51', '2022-05-28 14:52:51'),
(5, 'staff warehouse', '2022-05-28 14:52:51', '2022-05-28 14:52:51'),
(6, 'staff frontline', '2022-05-28 14:52:51', '2022-05-28 14:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `gender` enum('P','L') DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `occupation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `username`, `image`, `gender`, `email`, `password`, `created_at`, `updated_at`, `occupation_id`) VALUES
(1, 'agung adipurwa', 'https://ik.imagekit.io/j8loglunjkf/Twibbon_PrvnXfWeW.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1652426894362', 'L', 'adiagung707@gmail.com', '22032002', '2022-05-28 14:51:08', '2022-05-28 14:51:08', 1),
(2, 'maysa putra', 'asfafdgdafgfdggagfgadf.jpg', 'L', 'maysaputrwa@gmail.com', '23052002', '2022-05-28 14:52:37', '2022-05-28 14:52:37', 2),
(3, 'prami apsari', 'https://ik.imagekit.io/j8loglunjkf/lena_yU9gSleAb.jpeg?ik-sdk-version=javascript-1.4.3&updatedAt=1647764841545', 'P', 'pramiapsari@gmail.com', '19012002', '2022-05-28 14:52:37', '2022-05-28 14:52:37', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_drugs`
--
ALTER TABLE `category_drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cs_catergory` (`category_id`);

--
-- Indexes for table `history_sales`
--
ALTER TABLE `history_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cs_staff` (`username_staff`);

--
-- Indexes for table `history_sales_drugs`
--
ALTER TABLE `history_sales_drugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_history_sale` (`id_history_sale`),
  ADD KEY `fk_drug` (`id_drugs`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cs_username` (`username`),
  ADD KEY `fk_occ` (`occupation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_drugs`
--
ALTER TABLE `category_drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `history_sales`
--
ALTER TABLE `history_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_sales_drugs`
--
ALTER TABLE `history_sales_drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drugs`
--
ALTER TABLE `drugs`
  ADD CONSTRAINT `cs_catergory` FOREIGN KEY (`category_id`) REFERENCES `category_drugs` (`id`);

--
-- Constraints for table `history_sales`
--
ALTER TABLE `history_sales`
  ADD CONSTRAINT `cs_staff` FOREIGN KEY (`username_staff`) REFERENCES `staff` (`username`);

--
-- Constraints for table `history_sales_drugs`
--
ALTER TABLE `history_sales_drugs`
  ADD CONSTRAINT `fk_drug` FOREIGN KEY (`id_drugs`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `fk_history_sale` FOREIGN KEY (`id_history_sale`) REFERENCES `history_sales` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `fk_occ` FOREIGN KEY (`occupation_id`) REFERENCES `occupation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
