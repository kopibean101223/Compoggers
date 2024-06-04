-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 03:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comprog`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `TITLE` varchar(100) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `CATEGORY` varchar(50) NOT NULL,
  `AUTHOR` varchar(50) NOT NULL,
  `COPYRIGHT` varchar(50) NOT NULL,
  `PUBLISHER` varchar(50) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `BORROWER_ID` varchar(50) DEFAULT NULL,
  `BORROWED_DATE` date DEFAULT NULL,
  `DATE_DUE` date DEFAULT NULL,
  `PAYMENT` varchar(50) NOT NULL,
  `PENALTY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`TITLE`, `ISBN`, `CATEGORY`, `AUTHOR`, `COPYRIGHT`, `PUBLISHER`, `STATUS`, `BORROWER_ID`, `BORROWED_DATE`, `DATE_DUE`, `PAYMENT`, `PENALTY`) VALUES
('One Hundred Years of Solitude', '9780060883287', 'Fiction', 'Gabriel Garcia Marquez', '1967', 'Harper Perennial Modern Classics', 'AVAILABLE', NULL, NULL, NULL, '', 0),
('The Alchemist', '9780061122415', 'Fiction', 'Paulo Coelho', '1988', 'HarperTorch', 'BORROWED', 'k143143', '2024-06-04', '2024-06-07', 'NOT YET PAID', 0),
('A Peoples History of the United States', '9780061965586', 'NonFictional', 'Howard Zinn', '1980', 'Harper Perennial', 'AVAILABLE', NULL, NULL, NULL, '', 0),
('Sapiens: A Brief History of Humankind', '9780062316110', 'NonFictional', 'Yuval Noah Harari', '2015', 'Harper', 'BORROWED', 'k143143', '2024-06-04', '2024-06-07', 'NOT YET PAID', 0),
('Economics: Principles, Problems, and Policies', '9780078021855', 'Academic', 'Campbell R. McConnell, Stanley L. Brue, Sean Masak', '2014', 'McGraw-Hill Education', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Data Mining: Practical Machine Learning Tools and Techniques', '9780128042915', 'Academic', 'Ian H. Witten, Eibe Frank, Mark A. Hall, Christoph', '2016', 'Morgan Kaufmann', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Psychology: From Inquiry to Understanding', '9780134552514', 'Academic', 'Scott O. Lilienfeld, Steven J. Lynn, Laura L. Namy', '2017', 'Pearson', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Pride and Prejudice', '9780141439518', 'Fiction', 'Jane Austen', '1813', 'T. Egerton, Whitehall', 'AVAILABLE', NULL, NULL, NULL, '', 0),
('The Color Purple', '9780156028356', 'Fiction', 'Alice Walker', '1982', 'Harcourt Brace Jovanovich', 'BORROWED', 'k143143', '2024-06-04', '2024-06-07', 'NOT YET PAID', 0),
('Introduction to Algorithms', '9780262033848', 'Academic', 'Thomas H. Cormen, Charles E. Leiserson, Ronald L. ', '2009', 'The MIT Press', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Quiet: The Power of Introverts in a World that Cant Stop Talking', '9780307352156', 'NonFictional', 'Susan Cain', '2012', 'Random House', 'BORROWED', 'k143143', '2024-06-04', '2024-06-07', 'NOT YET PAID', 0),
('The Road', '9780307387899', 'Fiction', 'Cormac McCarthy', '2006', 'Alfred A. Knopf Inc.', 'AVAILABLE', '', '0000-00-00', '0000-00-00', '', 0),
('The Catcher in the Rye', '9780316769488', 'Fiction', 'J.D. Salinger', '1951', 'Little, Brown and Company', 'BORROWED', 'k143143', '2024-06-04', '2024-06-07', 'NOT YET PAID', 0),
('Chemistry: The Central Science', '9780321910417', 'Academic', 'Theodore E. Brown, H. Eugene LeMay Jr., Bruce E. B', '2014', 'Pearson', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Linear Algebra and Its Applications', '9780321982384', 'Academic', 'David C. Lay, Steven R. Lay, Judi J. McDonald', '2015', 'Pearson', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Thinking, Fast and Slow', '9780374533557', 'NonFictional', 'Daniel Kahneman', '2011', 'Farrar, Straus and Giroux', 'AVAILABLE', '', '0000-00-00', '0000-00-00', '', 0),
('The Book Thief', '9780375842207', 'Fiction', 'Markus Zusak', '2006', '2006 Picador', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('The Handmaid\'s Tale', '9780385490818', 'Fiction', 'Margaret Atwood', '1985', 'McClelland and Stewart', 'AVAILABLE', '', '0000-00-00', '0000-00-00', '', 0),
('Atonement', '9780385721790', 'Fiction', 'Ian McEwan', '2001', 'Jonathan Cape', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('Introduction to Sociology', '9780393937489', 'Academic', 'Anthony Giddens, Mitchell Duneier, Richard P. Appe', '2016', 'W. W. Norton & Company', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Educated: A Memoir', '9780399590504', 'NonFictional', 'Tara Westover', '2018', 'Random House', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('To Kill a Mockingbird', '9780446310789', 'Fiction', 'Harper Lee', '1960', 'J.B. Lippincott & Co.', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('1984', '9780451524935', 'Fiction', 'George Orwell', '1949', 'Secker & Warburg', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('The Lord of the Rings', '9780618640157', 'Fiction', 'J.R.R. Tolkien', '1954', 'Allen & Unwin', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('How to Win Friends and Influence People', '9780671027032', 'NonFictional', 'Dale Carnegie', '1936', 'Pocket Books', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('The Mushroom at the End of the World: On the Possibility of Life in Capitalist Ruins', '9780691178325', 'NonFictional', 'Anna Lowenhaupt Tsing', '2015', 'Princeton University Press', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('The Great Gatsby', '9780743273565', 'Fiction', 'F. Scott Fitzgerald', '1925', 'Charles Scribner\'s Sons', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('The Six Wives of Henry VIII', '9780802136831', 'NonFictional', 'Alison Weir', '1991', 'Grove Press', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('Mans Search for Meaning', '9780807014295', 'NonFictional', 'Viktor E. Frankl', '1946', 'Beacon Press', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('The Power of Habit: Why We Do What We Do in Life and Business', '9780812981605', 'NonFictional', 'Charles Duhigg', '2012', 'Random House', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('Organic Chemistry', '9781118454312', 'Academic', 'T. W. Graham Solomons, Craig B. Fryhle', '2013', 'Wiley', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Microeconomics: Theory and Applications with Calculus', '9781118572276', 'Academic', 'Jeffrey M. Perloff', '2014', 'Wiley', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Introduction to the Theory of Computation', '9781133187790', 'Academic', 'Michael Sipser', '2012', 'Cengage Learning', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Principles of Neural Science', '9781259860943', 'Academic', 'Eric R. Kandel, James H. Schwartz, Thomas M. Jesse', '2013', 'McGraw-Hill Education', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Fundamentals of Corporate Finance', '9781259918959', 'Academic', '', '2018', 'McGraw-Hill Education', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Physics for Scientists and Engineers', '9781305965520', 'Academic', 'Raymond A. Serway, John W. Jewett', '2018', 'Cengage Learning', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Introduction to the Practice of Statistics', '9781319013389', 'Academic', 'David S. Moore, George P. McCabe, Bruce A. Craig', '2018', 'W. H. Freeman', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Genetics: A Conceptual Approach', '9781319050964', 'Academic', 'Benjamin A. Pierce', '2018', 'W. H. Freeman', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00', '', 0),
('Beloved', '9781400033416', 'Fiction', 'Toni Morrison', '1987', 'Alfred A. Knopf Inc.', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('The Art of War', '9781590302255', 'NonFictional ', 'Sun Tzu', 'Circa 5th Century BC', 'Shambhala Publications', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0),
('The Kite Runner', '9781594480003', 'Fiction', 'Khaled Hosseini', '2003', 'Riverhead Books', 'AVAILABLE', NULL, NULL, NULL, '', 0),
('The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change', '9781982137274', 'NonFictional', 'Stephen R. Covey', '1989', 'Simon & Schuster', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `borrower_table`
--

CREATE TABLE `borrower_table` (
  `TRANSACTIONNO` int(11) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `LASTNAME` varchar(50) NOT NULL,
  `FIRSTNAME` varchar(50) NOT NULL,
  `INITIAL` char(3) NOT NULL,
  `ID` varchar(50) NOT NULL,
  `YEARLVL` int(11) DEFAULT NULL,
  `SECTION` varchar(50) DEFAULT NULL,
  `COURSE` varchar(50) DEFAULT NULL,
  `DEPARTMENT` varchar(50) DEFAULT NULL,
  `PENALTY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrower_table`
--

INSERT INTO `borrower_table` (`TRANSACTIONNO`, `TYPE`, `LASTNAME`, `FIRSTNAME`, `INITIAL`, `ID`, `YEARLVL`, `SECTION`, `COURSE`, `DEPARTMENT`, `PENALTY`) VALUES
(13, 'STUDENT', 'MIGUEL', 'JOHN', 'D', 'K12152855', 1, 'CCSAD', 'BSCS', NULL, 0),
(14, 'TEACHER', 'EXALA', 'JOHN ARVIE', 'D', 'K143143', NULL, NULL, NULL, 'CHK', NULL),
(16, 'TEACHER', '', '', '', '', NULL, NULL, NULL, 'CHK', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `borrower_table`
--
ALTER TABLE `borrower_table`
  ADD PRIMARY KEY (`TRANSACTIONNO`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrower_table`
--
ALTER TABLE `borrower_table`
  MODIFY `TRANSACTIONNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
