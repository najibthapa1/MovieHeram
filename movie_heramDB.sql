-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 22, 2025 at 06:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_heram`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `Favorite_ID` int(11) NOT NULL,
  `Movie_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `Membership_ID` int(11) NOT NULL,
  `Membership_Type` varchar(100) NOT NULL,
  `Price` int(11) NOT NULL,
  `Features` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`Membership_ID`, `Membership_Type`, `Price`, `Features`) VALUES
(1, 'Premium Plus+', 1299, '4K Ultra HD + HDR\r\nDollby Atmos Support\r\nWatch on 4 devices\r\nAd-free experience\r\nDownload & watch offline\r\nShare with family\r\nExclusive premieres'),
(2, 'Premium', 999, '4K Ultra HD\r\nBest sound quality\r\nWatch on 2 devices\r\nAd-free experience\r\nDownload & watch offline\r\nShare with a friend'),
(3, 'Standard', 599, 'HD Streaming\r\nGood sound quality\r\nWatch on 1 device\r\nAd-free experience\r\nDownload & watch offline');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `Movie_ID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Genre` varchar(100) NOT NULL,
  `Release_Year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`Movie_ID`, `Title`, `Genre`, `Release_Year`) VALUES
(1, 'Mission Impossible The Final Reckoning', 'Action', 2023),
(2, 'Maharaja', 'Action', 2023),
(3, 'Breaking Bad', 'Series', 2023),
(4, 'Chhaava', 'Action', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `movie_user`
--

CREATE TABLE `movie_user` (
  `Movie_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Is_Admin` tinyint(1) NOT NULL,
  `Membership_ID` int(11) DEFAULT NULL,
  `Created_Date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `Name`, `Email`, `Password`, `Image`, `Is_Admin`, `Membership_ID`, `Created_Date`) VALUES
(12, 'admin', 'admin@gmail.com', '4LnQXqBzqLZxvJBBhnwtsRFcEI7rI3Vz8SLNqG/6Pvtse2GsvWn8dtDgcb5IYibeSJg7Kg==', NULL, 1, NULL, NULL),
(25, 'najj', 'najib@gmail.com', 'Bac7iOtLu+acDIpTEw3JsEPe6ubeTB+j2n6tD53MxXpDgsBJXw4xlFUtmop1J/wxgDyRu6w=', 'avatar2.png', 0, 1, '2025-04-20'),
(26, 'ram', 'ram@gmail.com', 'QaxDVVCkcsMY/EMpujUumtdLJpHZnEBynWMpkUdPUx2TKGQgHp2uL9ust7t/dj/a1xQKUw==', 'avatar1.png', 0, 3, '2025-04-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`Favorite_ID`),
  ADD KEY `favorite_movie_fk` (`Movie_ID`),
  ADD KEY `favorite_user_fk` (`User_ID`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`Membership_ID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`Movie_ID`);

--
-- Indexes for table `movie_user`
--
ALTER TABLE `movie_user`
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Movie_ID` (`Movie_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `user_membership_fk` (`Membership_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `Favorite_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `Membership_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `Movie_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_movie_fk` FOREIGN KEY (`Movie_ID`) REFERENCES `movie` (`Movie_ID`),
  ADD CONSTRAINT `favorite_user_fk` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `movie_user`
--
ALTER TABLE `movie_user`
  ADD CONSTRAINT `movie_user_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`),
  ADD CONSTRAINT `movie_user_ibfk_2` FOREIGN KEY (`Movie_ID`) REFERENCES `movie` (`Movie_ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_membership_fk` FOREIGN KEY (`Membership_ID`) REFERENCES `membership` (`Membership_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
