-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2021 at 03:37 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ICC_Crickets`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cricket_Types`
--

CREATE TABLE `Cricket_Types` (
  `Type` varchar(10) NOT NULL,
  `Overs` int(11) DEFAULT NULL,
  `Duration` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Cricket_Types`
--

INSERT INTO `Cricket_Types` (`Type`, `Overs`, `Duration`) VALUES
('ODI', 50, '1 Day'),
('T20', 20, '1 Day'),
('Test', 450, '5 Days');

-- --------------------------------------------------------

--
-- Table structure for table `Leagues`
--

CREATE TABLE `Leagues` (
  `League_ID` int(11) NOT NULL,
  `Type` varchar(10) DEFAULT NULL,
  `League_Name` varchar(100) NOT NULL,
  `League_Year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Leagues`
--

INSERT INTO `Leagues` (`League_ID`, `Type`, `League_Name`, `League_Year`) VALUES
(1, 'ODI', 'ICC Cricket World Cup', 2015),
(2, 'ODI', 'ICC Cricket World Cup', 2019),
(3, 'T20', 'ICC Men\'s T20 World Cup', 2016),
(4, 'T20', 'ICC Men\'s T20 World Cup', 2021),
(5, 'ODI', 'ICC Champions Trophy', 2013),
(6, 'ODI', 'ICC Champions Trophy', 2017),
(10, 'Test', 'ICC World Test Championship', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `Matches`
--

CREATE TABLE `Matches` (
  `Match_ID` int(11) NOT NULL,
  `Stadium_ID` int(11) DEFAULT NULL,
  `League_ID` int(11) DEFAULT NULL,
  `Date_and_Time` datetime DEFAULT NULL,
  `Match_Type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Matches`
--

INSERT INTO `Matches` (`Match_ID`, `Stadium_ID`, `League_ID`, `Date_and_Time`, `Match_Type`) VALUES
(1, 6, 1, '2015-03-28 14:30:00', 'Final'),
(7, 17, 1, '2015-03-25 14:30:00', 'Semi-Final'),
(8, 10, 1, '2015-03-24 14:00:00', 'Semi-Final'),
(9, 8, 1, '2015-03-20 14:00:00', 'Qualifier'),
(10, 10, 1, '2015-03-07 14:00:00', 'Qualifier'),
(11, 6, 1, '2015-02-22 14:30:00', 'Qualifier'),
(17, 11, 2, '2019-07-14 10:30:00', 'Final'),
(18, 13, 2, '2019-07-11 10:30:00', 'Semi-Final'),
(19, 16, 2, '2019-07-09 10:30:00', 'Semi-Final'),
(20, 13, 2, '2019-07-06 10:30:00', 'Qualifier'),
(21, 16, 2, '2019-07-06 13:30:00', 'Qualifier'),
(22, 1, 3, '2016-04-03 19:30:00', 'Final'),
(23, 4, 3, '2016-03-31 19:30:00', 'Semi-Final'),
(24, 3, 3, '2016-03-30 19:30:00', 'Semi-Final'),
(25, 2, 3, '2016-03-28 19:30:00', 'Qualifier'),
(26, 5, 3, '2016-03-27 19:30:00', 'Qualifier'),
(27, 3, 3, '2016-03-27 19:30:00', 'Qualifier'),
(28, 15, 4, '2021-11-14 18:00:00', 'Final'),
(29, 18, 4, '2021-11-11 18:00:00', 'Semi-Final'),
(30, 15, 4, '2021-11-10 18:00:00', 'Semi-Final'),
(31, 18, 4, '2021-11-16 18:00:00', 'Qualifier'),
(32, 15, 4, '2021-11-06 18:00:00', 'Qualifier'),
(33, 18, 4, '2021-10-31 18:00:00', 'Qualifier'),
(34, 19, 5, '2013-06-23 10:30:00', 'Final'),
(35, 20, 5, '2013-06-20 10:30:00', 'Semi-Final'),
(36, 13, 5, '2013-06-19 10:30:00', 'Semi-Final'),
(37, 13, 5, '2013-06-17 10:30:00', 'Qualifier'),
(38, 20, 5, '2013-06-16 10:30:00', 'Qualifier'),
(39, 19, 5, '2013-06-15 10:30:00', 'Qualifier'),
(40, 13, 6, '2017-06-18 10:30:00', 'Final'),
(41, 20, 6, '2017-06-15 10:30:00', 'Semi-Final'),
(42, 19, 6, '2017-06-14 10:30:00', 'Semi-Final'),
(43, 20, 6, '2017-06-11 10:30:00', 'Qualifier'),
(44, 13, 6, '2017-06-10 10:30:00', 'Qualifier'),
(45, 20, 6, '2017-06-07 10:30:00', 'Qualifier'),
(46, 3, 10, '2019-03-01 10:00:00', 'Series'),
(47, 2, 10, '2019-03-08 10:00:00', 'Series'),
(48, 5, 10, '2019-03-15 10:00:00', 'Series'),
(49, 1, 10, '2019-03-22 10:00:00', 'Series'),
(50, 4, 10, '2019-03-30 10:00:00', 'Series');

-- --------------------------------------------------------

--
-- Table structure for table `Players`
--

CREATE TABLE `Players` (
  `Player_ID` int(11) NOT NULL,
  `Team_ID` int(11) DEFAULT NULL,
  `Player_Name` varchar(200) DEFAULT NULL,
  `Player_Country` varchar(100) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Player_Type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Players`
--

INSERT INTO `Players` (`Player_ID`, `Team_ID`, `Player_Name`, `Player_Country`, `Date_of_Birth`, `Player_Type`) VALUES
(42, 1, 'Virat Kohli', 'India', '1988-11-05', 'Batter'),
(43, 1, 'Rohit Sharma', 'India', '1987-04-30', 'Batter'),
(44, 1, 'MS Dhoni', 'India', '1981-07-07', 'Wicket Keeper'),
(45, 1, 'K. L. Rahul', 'India', '1992-04-18', 'Batter'),
(46, 1, 'Ravindra Jadeja', 'India', '1988-12-06', 'All-rounder'),
(47, 1, 'Hardik Pandya', 'India', '1993-10-11', 'All-rounder'),
(48, 1, 'Mayank Agarwal', 'India', '1991-02-16', 'Batter'),
(49, 1, 'Jasprit Bumrah', 'India', '1993-12-06', 'Bowler'),
(50, 1, 'Bhuvneshwar Kumar', 'India', '1990-02-05', 'Bowler'),
(51, 1, 'Yuzvendra Chahal', 'India', '1990-07-23', 'Bowler'),
(52, 1, 'Mohammed Siraj', 'India', '1994-03-13', 'Bowler'),
(53, 2, 'Ahmed Shehzad', 'Pakistan', '1991-11-23', 'Batter'),
(54, 2, 'Junaid Khan', 'Pakistan', '1989-12-24', 'Batter'),
(55, 2, 'Umar Akmal', 'Pakistan', '1990-05-26', 'Batter'),
(56, 2, 'Ehsan Adil', 'Pakistan', '1993-03-15', 'Bowler'),
(57, 2, 'Imad Wasim', 'Pakistan', '1988-12-18', 'All-rounder'),
(58, 3, 'Jonny Bairstow', 'England', '1989-09-28', 'Batter'),
(59, 3, 'Chris Woakes', 'England', '1989-03-02', 'All-rounder'),
(60, 3, 'Jos Buttler', 'England', '1990-09-28', 'Wicket Keeper'),
(61, 3, 'Jack Leach', 'England', '1991-07-22', 'Bowler'),
(62, 3, 'Mark Wood', 'England', '1990-01-11', 'Bowler'),
(63, 4, 'Aaron Finch', 'Australia', '1986-11-17', 'Batter'),
(64, 4, 'Adam Zampa', 'Australia', '1992-03-31', 'Bowler'),
(65, 4, 'Glenn Maxwell', 'Australia', '1988-10-14', 'Batter'),
(66, 4, 'David Warner', 'Australia', '1986-10-27', 'Bowler'),
(67, 4, 'Mitchell Starc', 'Australia', '1990-01-30', 'Bowler'),
(68, 5, 'Ajaz Patel', 'India', '1990-01-30', 'Batter'),
(69, 5, 'Colin de Grandhomme', 'New Zealand', '1986-07-22', 'All-rounder'),
(70, 5, 'Kane Williamson', 'New Zealand', '1990-08-08', 'Batter'),
(71, 5, 'Trent Boult', 'New Zealand', '1989-07-22', 'Bowler'),
(72, 5, 'Mitchell Santner', 'New Zealand', '1992-02-05', 'Batter'),
(73, 6, 'Angelo Mathews', 'Sri Lanka', '1987-06-02', 'Batter'),
(74, 6, 'Isuru Udana', 'Sri Lanka', '1988-02-17', 'Bowler'),
(75, 7, 'Aiden Markram', 'South Africa', '1994-10-04', 'Batter'),
(76, 7, 'Chris Morris', 'South Africa', '1987-03-04', 'All-rounder'),
(77, 7, 'AB de Villiers', 'South Africa', '1984-02-17', 'Batter'),
(78, 8, 'Darren Bravo', 'West Indies', '1989-02-06', 'All-rounder'),
(79, 8, 'Kieron Pollard', 'West Indies', '1987-05-12', 'All-rounder'),
(80, 8, 'Shimron Hetmyer', 'West Indies', '1993-03-23', 'Batter'),
(81, 9, 'Mushfiqur Rahim', 'Bangladesh', '1987-06-09', 'Wicket Keeper'),
(82, 10, 'Rashid Khan', 'Afghanistan', '1998-09-20', 'Bowler'),
(83, 7, 'Faf du Plessis', 'South Africa', '1984-07-13', 'Batter'),
(84, 7, 'Quinton de Kock', 'South Africa', '1992-12-17', 'Wicket-keeper'),
(85, 6, 'Frank Karunaratne', 'Sri Lanka', '1988-04-21', 'Batter'),
(86, 6, 'Ashen Bandara', 'Sri Lanka', '1998-11-23', 'Batter'),
(87, 6, 'Lahiru Kumara', 'Sri Lanka', '1997-02-13', 'Bowler'),
(88, 8, 'Jason Holder', 'West Indies', '1991-11-05', 'All-rounder'),
(89, 8, 'Kraigg Brathwaite', 'West Indies', '1992-12-01', 'Batsman'),
(90, 9, 'Aminul Islam', 'Bangladesh', '1999-11-06', 'All-rounder'),
(91, 9, 'Mustafizur Rahman', 'Bangladesh', '1995-10-06', 'Batter'),
(92, 9, 'Abu Jayed Chowdhury', 'Bangladesh', '1993-08-02', 'Bowler'),
(93, 9, 'Syed Khaled Ahmed', 'Bangladesh', '1992-09-20', 'Bowler'),
(94, 10, 'Mohammad Nabi', 'Afghanistan', '1985-01-01', 'All-rounder'),
(95, 10, 'Usman Ghani', 'Afghanistan', '1996-11-20', 'Batsman'),
(96, 10, 'Samiullah Shinwari', 'Afghanistan ', '1987-12-31', 'All-rounder'),
(97, 10, 'Dawlat Zadran', 'Afghanistan', '1988-03-19', 'Bowler');

-- --------------------------------------------------------

--
-- Table structure for table `Player_Stats`
--

CREATE TABLE `Player_Stats` (
  `Stat_ID` int(11) NOT NULL,
  `Player_ID` int(11) DEFAULT NULL,
  `Match_ID` int(11) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL,
  `Balls_Played` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Player_Stats`
--

INSERT INTO `Player_Stats` (`Stat_ID`, `Player_ID`, `Match_ID`, `Runs`, `Wickets`, `Balls_Played`) VALUES
(4, 63, 1, 58, 0, 50),
(5, 66, 1, 56, 0, 58),
(6, 64, 1, 0, 3, 0),
(7, 67, 1, 23, 4, 20),
(8, 65, 1, 30, 2, 34),
(9, 70, 1, 56, 0, 70),
(10, 68, 1, 18, 0, 23),
(11, 71, 1, 5, 2, 10),
(12, 69, 1, 20, 1, 28),
(13, 72, 1, 21, 0, 25),
(14, 66, 7, 79, 0, 68),
(15, 63, 7, 82, 0, 79),
(16, 65, 7, 96, 3, 85),
(17, 67, 7, 43, 4, 40),
(18, 64, 7, 0, 1, 0),
(19, 42, 7, 54, 0, 58),
(20, 45, 7, 43, 0, 47),
(21, 43, 7, 34, 0, 32),
(22, 47, 7, 7, 2, 5),
(23, 49, 7, 6, 2, 7),
(24, 69, 8, 45, 2, 48),
(25, 70, 8, 56, 0, 50),
(26, 71, 8, 0, 3, 0),
(27, 72, 8, 47, 0, 50),
(28, 68, 8, 36, 0, 35),
(29, 75, 8, 23, 1, 20),
(30, 77, 8, 101, 0, 84),
(31, 76, 8, 47, 1, 40),
(32, 84, 8, 34, 0, 30),
(33, 83, 8, 51, 0, 45),
(34, 53, 9, 65, 2, 60),
(35, 54, 9, 45, 1, 38),
(36, 55, 9, 34, 0, 36),
(37, 58, 17, 65, 0, 59),
(38, 59, 17, 67, 2, 69),
(39, 60, 17, 35, 0, 40),
(40, 61, 17, 0, 3, 0),
(41, 62, 17, 3, 2, 5),
(42, 58, 18, 38, 0, 30),
(43, 59, 18, 56, 0, 60),
(44, 60, 18, 90, 0, 93),
(45, 61, 18, 7, 2, 6),
(46, 62, 18, 3, 3, 7),
(47, 73, 20, 45, 0, 42),
(48, 74, 20, 2, 3, 5),
(49, 85, 20, 32, 0, 37),
(50, 86, 20, 8, 0, 9),
(51, 87, 20, 0, 2, 0),
(52, 58, 22, 56, 0, 46),
(53, 59, 22, 37, 1, 30),
(54, 60, 22, 64, 0, 45),
(55, 61, 22, 12, 2, 10),
(56, 62, 22, 0, 3, 0),
(57, 78, 22, 32, 2, 30),
(58, 79, 22, 56, 1, 30),
(59, 80, 22, 54, 0, 32),
(60, 88, 22, 12, 1, 10),
(61, 42, 23, 56, 0, 45),
(62, 45, 23, 32, 0, 26),
(63, 46, 23, 12, 2, 10),
(64, 43, 23, 70, 0, 65),
(65, 49, 23, 0, 4, 0),
(66, 69, 24, 23, 0, 20),
(67, 70, 24, 45, 1, 40),
(68, 71, 24, 12, 3, 12),
(69, 72, 24, 24, 1, 20),
(70, 82, 26, 34, 1, 23),
(71, 94, 26, 34, 1, 43),
(72, 95, 26, 23, 2, 18),
(73, 77, 25, 67, 0, 40),
(74, 84, 25, 46, 0, 56),
(75, 83, 25, 28, 1, 20),
(76, 76, 25, 12, 3, 10),
(77, 85, 25, 45, 1, 40),
(78, 73, 25, 34, 0, 30),
(79, 74, 25, 0, 1, 0),
(80, 85, 25, 34, 1, 30),
(81, 86, 25, 23, 0, 20),
(82, 87, 25, 12, 1, 10),
(83, 63, 27, 45, 0, 42),
(84, 64, 27, 0, 2, 1),
(85, 65, 27, 45, 2, 34),
(86, 66, 27, 45, 0, 34),
(87, 67, 27, 23, 2, 25),
(88, 82, 46, 102, 5, 115),
(89, 94, 46, 45, 2, 70),
(90, 95, 46, 45, 1, 59),
(91, 96, 46, 123, 0, 156),
(92, 97, 46, 45, 5, 67),
(93, 63, 46, 123, 0, 145),
(94, 64, 46, 12, 4, 18),
(95, 65, 46, 110, 3, 156),
(96, 66, 46, 98, 0, 123),
(97, 67, 46, 67, 6, 70),
(98, 81, 47, 65, 2, 70),
(99, 90, 47, 140, 0, 170),
(100, 91, 47, 69, 1, 78),
(101, 92, 47, 89, 2, 90),
(102, 93, 47, 12, 6, 19),
(103, 58, 47, 102, 1, 123),
(104, 59, 47, 67, 2, 89),
(105, 60, 47, 89, 0, 98),
(106, 61, 47, 123, 1, 160),
(107, 62, 47, 34, 6, 45),
(108, 68, 48, 123, 1, 167),
(109, 69, 46, 16, 4, 28),
(110, 70, 48, 89, 0, 102),
(111, 71, 48, 78, 1, 89),
(112, 72, 48, 34, 4, 65),
(113, 42, 48, 89, 0, 90),
(114, 43, 48, 78, 0, 89),
(115, 45, 48, 126, 0, 167),
(116, 47, 48, 67, 4, 87),
(117, 49, 48, 32, 7, 45),
(118, 75, 49, 67, 1, 80),
(119, 76, 49, 89, 3, 95),
(120, 77, 49, 167, 0, 170),
(121, 83, 49, 102, 0, 120),
(122, 84, 49, 89, 2, 90),
(123, 53, 49, 45, 2, 56),
(124, 54, 49, 67, 3, 87),
(125, 55, 49, 98, 0, 103),
(126, 56, 49, 56, 1, 67),
(127, 73, 50, 89, 0, 98),
(128, 74, 50, 34, 5, 56),
(129, 85, 50, 89, 0, 97),
(130, 86, 50, 23, 5, 36),
(131, 78, 50, 83, 3, 98),
(132, 79, 50, 104, 2, 115),
(133, 80, 50, 98, 1, 107);

-- --------------------------------------------------------

--
-- Table structure for table `Scores`
--

CREATE TABLE `Scores` (
  `Scores_ID` int(11) NOT NULL,
  `Match_ID` int(11) DEFAULT NULL,
  `Team_ID` int(11) DEFAULT NULL,
  `Runs` int(11) DEFAULT NULL,
  `Wickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Scores`
--

INSERT INTO `Scores` (`Scores_ID`, `Match_ID`, `Team_ID`, `Runs`, `Wickets`) VALUES
(25, 1, 5, 183, 10),
(26, 1, 4, 186, 3),
(27, 7, 4, 327, 7),
(28, 7, 1, 233, 10),
(29, 8, 5, 299, 6),
(30, 8, 7, 281, 5),
(31, 9, 4, 216, 4),
(32, 9, 2, 213, 10),
(33, 10, 2, 222, 10),
(34, 10, 7, 202, 10),
(35, 11, 1, 307, 7),
(36, 11, 7, 177, 10),
(37, 17, 3, 242, 10),
(38, 17, 5, 241, 8),
(39, 18, 3, 226, 2),
(40, 18, 4, 223, 10),
(41, 19, 5, 239, 8),
(42, 19, 1, 221, 10),
(43, 20, 1, 265, 3),
(44, 20, 6, 264, 7),
(45, 21, 4, 315, 10),
(46, 21, 7, 325, 6),
(47, 22, 3, 155, 9),
(48, 22, 8, 161, 6),
(49, 23, 1, 192, 2),
(50, 23, 8, 193, 3),
(51, 24, 5, 153, 8),
(52, 24, 3, 159, 3),
(53, 25, 6, 120, 10),
(54, 25, 7, 159, 3),
(55, 26, 10, 123, 7),
(56, 26, 8, 117, 8),
(57, 27, 4, 160, 6),
(58, 27, 1, 161, 4),
(59, 28, 5, 172, 4),
(60, 28, 4, 173, 2),
(61, 29, 2, 176, 4),
(62, 29, 4, 177, 5),
(63, 30, 3, 166, 4),
(64, 30, 5, 167, 5),
(65, 31, 8, 157, 7),
(66, 31, 4, 161, 2),
(67, 32, 7, 189, 2),
(68, 32, 3, 179, 8),
(69, 33, 1, 110, 7),
(70, 33, 5, 111, 2),
(71, 34, 3, 124, 8),
(72, 34, 1, 129, 7),
(73, 35, 6, 181, 8),
(74, 35, 1, 182, 2),
(75, 36, 7, 175, 10),
(76, 36, 3, 179, 3),
(77, 37, 4, 233, 10),
(78, 37, 6, 253, 8),
(79, 38, 3, 169, 10),
(80, 38, 5, 159, 8),
(81, 39, 1, 182, 2),
(82, 39, 2, 165, 10),
(83, 40, 1, 158, 10),
(84, 40, 2, 338, 4),
(85, 41, 9, 264, 7),
(86, 41, 1, 265, 1),
(87, 42, 3, 211, 10),
(88, 42, 2, 215, 2),
(89, 43, 7, 191, 10),
(90, 43, 1, 193, 2),
(91, 44, 4, 236, 9),
(92, 44, 3, 240, 4),
(93, 45, 2, 219, 8),
(94, 45, 7, 119, 3),
(95, 46, 10, 489, 13),
(96, 46, 4, 506, 11),
(97, 47, 9, 589, 12),
(98, 47, 3, 562, 11),
(99, 48, 1, 612, 9),
(100, 48, 5, 436, 14),
(101, 49, 2, 389, 16),
(102, 49, 7, 468, 10),
(103, 50, 6, 548, 17),
(104, 50, 8, 589, 9);

-- --------------------------------------------------------

--
-- Table structure for table `Stadiums`
--

CREATE TABLE `Stadiums` (
  `Stadium_ID` int(11) NOT NULL,
  `Stadium_Name` varchar(200) NOT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Stadium_Country` varchar(100) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Stadiums`
--

INSERT INTO `Stadiums` (`Stadium_ID`, `Stadium_Name`, `City`, `Stadium_Country`, `Capacity`) VALUES
(1, 'Eden Gardens', 'Kolkata', 'India', 80000),
(2, 'M. A. Chidambaram Stadium', 'Chennai', 'India', 50000),
(3, 'M. Chinnaswamy Stadium', 'Bengaluru', 'India', 38000),
(4, 'Wankhede Stadium', 'Mumbai', 'India', 33108),
(5, 'Narendra Modi Stadium', 'Ahmedabad', 'India', 132000),
(6, 'Melbourne Cricket Ground', 'Melbourne', 'Australia', 100024),
(7, 'Perth Stadium', 'Perth', 'Australia', 61266),
(8, 'Adelaide Oval', 'Adelaide', 'Australia', 53583),
(9, 'MDocklands Stadium', 'Melbourne', 'Australia', 48003),
(10, 'Eden Park', 'Auckland', 'New Zealand', 42000),
(11, 'Lord\'s', 'London', 'England', 30000),
(12, 'Wanderers Stadium', 'Johannesburg', 'South Africa', 34000),
(13, 'The Oval', 'London', 'England', 25500),
(14, 'Pallekele International Cricket Stadium', 'Pallekele', 'Sri Lanka', 35000),
(15, 'Dubai International Cricket Stadium', 'Dubai', 'United Arab Emirates', 25000),
(16, 'Rose Bowl', 'Southampton', 'England', 25000),
(17, 'Sydney Cricket Ground', 'Sydney', 'Australia', 48000),
(18, 'Sharjah Cricket Association Stadium', 'Sharjah', 'United Arab Emirates', 27000),
(19, 'Edgbaston', 'Birmingham', 'England', 25000),
(20, 'Sophia Gardens', 'Cardiff', 'England', 15643);

-- --------------------------------------------------------

--
-- Stand-in structure for view `strike_rates`
-- (See below for the actual view)
--
CREATE TABLE `strike_rates` (
`Player_ID` int(11)
,`Strike_Rate` decimal(17,4)
);

-- --------------------------------------------------------

--
-- Table structure for table `Teams`
--

CREATE TABLE `Teams` (
  `Team_ID` int(11) NOT NULL,
  `Team_Name` varchar(100) NOT NULL,
  `Coach` varchar(100) DEFAULT NULL,
  `Owner` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Teams`
--

INSERT INTO `Teams` (`Team_ID`, `Team_Name`, `Coach`, `Owner`) VALUES
(1, 'India', 'Rahul Dravid', 'Board of Control for Cricket in India'),
(2, 'Pakistan', 'Misbah-ul-Haq', 'Pakistan Cricket Board'),
(3, 'England', 'Chris Silverwood', 'England and Wales Cricket Board'),
(4, 'Australia', 'Justin Langer', 'Cricket Australia'),
(5, 'New Zealand', 'Gary Stead', 'New Zealand Cricket'),
(6, 'Sri Lanka', 'Mickey Arthur', 'Sri Lanka Cricket'),
(7, 'South Africa', 'Mark Boucher', 'Cricket South Africa'),
(8, 'West Indies', 'Phil Simmons', 'Cricket West Indies'),
(9, 'Bangladesh', 'Russell Domingo', 'Bangladesh Cricket Board'),
(10, 'Afghanistan', 'Lance Klusener', 'Afghanistan Cricket Board');

-- --------------------------------------------------------

--
-- Table structure for table `Teams_Selected`
--

CREATE TABLE `Teams_Selected` (
  `Selection_ID` int(11) NOT NULL,
  `League_ID` int(11) DEFAULT NULL,
  `Team_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Teams_Selected`
--

INSERT INTO `Teams_Selected` (`Selection_ID`, `League_ID`, `Team_ID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 7),
(7, 2, 1),
(8, 2, 3),
(9, 2, 4),
(10, 2, 5),
(11, 2, 6),
(12, 2, 7),
(13, 3, 1),
(14, 3, 4),
(15, 3, 3),
(16, 3, 6),
(17, 3, 7),
(18, 3, 8),
(19, 4, 1),
(20, 4, 2),
(21, 4, 3),
(22, 4, 4),
(23, 4, 5),
(24, 4, 8),
(25, 5, 1),
(26, 5, 2),
(27, 5, 3),
(28, 5, 4),
(29, 5, 5),
(30, 5, 6),
(31, 6, 1),
(32, 6, 2),
(33, 6, 3),
(34, 6, 4),
(35, 6, 7),
(36, 6, 9),
(37, 5, 7),
(38, 3, 5),
(39, 3, 10),
(40, 4, 7),
(41, 10, 10),
(42, 10, 4),
(43, 10, 9),
(44, 10, 3),
(45, 10, 1),
(46, 10, 5),
(48, 10, 2),
(49, 10, 7),
(50, 10, 6),
(51, 10, 8);

-- --------------------------------------------------------

--
-- Structure for view `strike_rates`
--
DROP TABLE IF EXISTS `strike_rates`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `icc_crickets`.`strike_rates`  AS SELECT `icc_crickets`.`player_stats`.`Player_ID` AS `Player_ID`, `icc_crickets`.`player_stats`.`Runs`/ `icc_crickets`.`player_stats`.`Balls_Played` * 100 AS `Strike_Rate` FROM `icc_crickets`.`player_stats` WHERE `icc_crickets`.`player_stats`.`Runs` / `icc_crickets`.`player_stats`.`Balls_Played` * 100 > 100 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cricket_Types`
--
ALTER TABLE `Cricket_Types`
  ADD PRIMARY KEY (`Type`);

--
-- Indexes for table `Leagues`
--
ALTER TABLE `Leagues`
  ADD PRIMARY KEY (`League_ID`),
  ADD KEY `Type` (`Type`);

--
-- Indexes for table `Matches`
--
ALTER TABLE `Matches`
  ADD PRIMARY KEY (`Match_ID`),
  ADD KEY `Stadium_ID` (`Stadium_ID`),
  ADD KEY `League_ID` (`League_ID`);

--
-- Indexes for table `Players`
--
ALTER TABLE `Players`
  ADD PRIMARY KEY (`Player_ID`),
  ADD KEY `Team_ID` (`Team_ID`);

--
-- Indexes for table `Player_Stats`
--
ALTER TABLE `Player_Stats`
  ADD PRIMARY KEY (`Stat_ID`),
  ADD KEY `Player_ID` (`Player_ID`),
  ADD KEY `Match_ID` (`Match_ID`);

--
-- Indexes for table `Scores`
--
ALTER TABLE `Scores`
  ADD PRIMARY KEY (`Scores_ID`),
  ADD KEY `Match_ID` (`Match_ID`),
  ADD KEY `Team_ID` (`Team_ID`);

--
-- Indexes for table `Stadiums`
--
ALTER TABLE `Stadiums`
  ADD PRIMARY KEY (`Stadium_ID`);

--
-- Indexes for table `Teams`
--
ALTER TABLE `Teams`
  ADD PRIMARY KEY (`Team_ID`);

--
-- Indexes for table `Teams_Selected`
--
ALTER TABLE `Teams_Selected`
  ADD PRIMARY KEY (`Selection_ID`),
  ADD KEY `League_ID` (`League_ID`),
  ADD KEY `Team_ID` (`Team_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Leagues`
--
ALTER TABLE `Leagues`
  MODIFY `League_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Matches`
--
ALTER TABLE `Matches`
  MODIFY `Match_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `Players`
--
ALTER TABLE `Players`
  MODIFY `Player_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `Player_Stats`
--
ALTER TABLE `Player_Stats`
  MODIFY `Stat_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `Scores`
--
ALTER TABLE `Scores`
  MODIFY `Scores_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `Stadiums`
--
ALTER TABLE `Stadiums`
  MODIFY `Stadium_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Teams`
--
ALTER TABLE `Teams`
  MODIFY `Team_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Teams_Selected`
--
ALTER TABLE `Teams_Selected`
  MODIFY `Selection_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Leagues`
--
ALTER TABLE `Leagues`
  ADD CONSTRAINT `leagues_ibfk_1` FOREIGN KEY (`Type`) REFERENCES `cricket_types` (`Type`) ON DELETE SET NULL;

--
-- Constraints for table `Matches`
--
ALTER TABLE `Matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`Stadium_ID`) REFERENCES `Stadiums` (`Stadium_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`League_ID`) REFERENCES `Leagues` (`League_ID`) ON DELETE SET NULL;

--
-- Constraints for table `Players`
--
ALTER TABLE `Players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `Teams` (`Team_ID`) ON DELETE SET NULL;

--
-- Constraints for table `Player_Stats`
--
ALTER TABLE `Player_Stats`
  ADD CONSTRAINT `player_stats_ibfk_1` FOREIGN KEY (`Player_ID`) REFERENCES `Players` (`Player_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `player_stats_ibfk_2` FOREIGN KEY (`Match_ID`) REFERENCES `Matches` (`Match_ID`) ON DELETE SET NULL;

--
-- Constraints for table `Scores`
--
ALTER TABLE `Scores`
  ADD CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`Match_ID`) REFERENCES `Matches` (`Match_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `scores_ibfk_2` FOREIGN KEY (`Team_ID`) REFERENCES `Teams` (`Team_ID`) ON DELETE SET NULL;

--
-- Constraints for table `Teams_Selected`
--
ALTER TABLE `Teams_Selected`
  ADD CONSTRAINT `teams_selected_ibfk_1` FOREIGN KEY (`League_ID`) REFERENCES `Leagues` (`League_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `teams_selected_ibfk_2` FOREIGN KEY (`Team_ID`) REFERENCES `Teams` (`Team_ID`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
