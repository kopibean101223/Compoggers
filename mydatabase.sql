-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 04:44 PM
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
-- Database: `mydatabase`
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
  `BORROWED_DATE` date NOT NULL DEFAULT current_timestamp(),
  `DATE_DUE` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`TITLE`, `ISBN`, `CATEGORY`, `AUTHOR`, `COPYRIGHT`, `PUBLISHER`, `STATUS`, `BORROWER_ID`, `BORROWED_DATE`, `DATE_DUE`) VALUES
('One Hundred Years of Solitude', '9780060883287', 'Fiction', 'Gabriel Garcia Marquez', '1967', 'Harper Perennial Modern Classics', 'CURRENTLY_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('The Alchemist', '9780061122415', 'Fiction', 'Paulo Coelho', '1988', 'HarperTorch', 'CURRENTLY_BORROWED', NULL, '2024-05-11', '2024-05-14'),
('A Peoples History of the United States', '9780061965586', 'NonFictional', 'Howard Zinn', '1980', 'Harper Perennial', 'CURRENTLY_BORROWED', NULL, '2024-05-11', '2024-05-14'),
('Sapiens: A Brief History of Humankind', '9780062316110', 'NonFictional', 'Yuval Noah Harari', '2015', 'Harper', 'CURRENTLY_BORROWED', 'K12152855', '2024-05-11', '2024-05-14'),
('Economics: Principles, Problems, and Policies', '9780078021855', 'Academic', 'Campbell R. McConnell, Stanley L. Brue, Sean Masak', '2014', 'McGraw-Hill Education', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Data Mining: Practical Machine Learning Tools and Techniques', '9780128042915', 'Academic', 'Ian H. Witten, Eibe Frank, Mark A. Hall, Christoph', '2016', 'Morgan Kaufmann', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Psychology: From Inquiry to Understanding', '9780134552514', 'Academic', 'Scott O. Lilienfeld, Steven J. Lynn, Laura L. Namy', '2017', 'Pearson', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Pride and Prejudice', '9780141439518', 'Fiction', 'Jane Austen', '1813', 'T. Egerton, Whitehall', 'CURRENTLY_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('The Color Purple', '9780156028356', 'Fiction', 'Alice Walker', '1982', 'Harcourt Brace Jovanovich', 'CURRENTLY_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Introduction to Algorithms', '9780262033848', 'Academic', 'Thomas H. Cormen, Charles E. Leiserson, Ronald L. ', '2009', 'The MIT Press', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Quiet: The Power of Introverts in a World that Cant Stop Talking', '9780307352156', 'NonFictional', 'Susan Cain', '2012', 'Random House', 'CURRENTLY_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('The Road', '9780307387899', 'Fiction', 'Cormac McCarthy', '2006', 'Alfred A. Knopf Inc.', 'CURRENTLY_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('The Catcher in the Rye', '9780316769488', 'Fiction', 'J.D. Salinger', '1951', 'Little, Brown and Company', 'CURRENTLY_BORROWED', 'K12152855', '2024-05-11', '2024-05-14'),
('Chemistry: The Central Science', '9780321910417', 'Academic', 'Theodore E. Brown, H. Eugene LeMay Jr., Bruce E. B', '2014', 'Pearson', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Linear Algebra and Its Applications', '9780321982384', 'Academic', 'David C. Lay, Steven R. Lay, Judi J. McDonald', '2015', 'Pearson', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Thinking, Fast and Slow', '9780374533557', 'NonFictional', 'Daniel Kahneman', '2011', 'Farrar, Straus and Giroux', 'CURRENTLY_BORROWED', 'K12152855', '2024-05-11', '2024-05-14'),
('The Book Thief', '9780375842207', 'Fiction', 'Markus Zusak', '2006', '2006 Picador', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('The Handmaids Tale', '9780385490818', 'Fiction', 'Margaret Atwood', '1985', 'McClelland and Stewart', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('Atonement', '9780385721790', 'Fiction', 'Ian McEwan', '2001', 'Jonathan Cape', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('Introduction to Sociology', '9780393937489', 'Academic', 'Anthony Giddens, Mitchell Duneier, Richard P. Appe', '2016', 'W. W. Norton & Company', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Educated: A Memoir', '9780399590504', 'NonFictional', 'Tara Westover', '2018', 'Random House', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('To Kill a Mockingbird', '9780446310789', 'Fiction', 'Harper Lee', '1960', 'J.B. Lippincott & Co.', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('1984', '9780451524935', 'Fiction', 'George Orwell', '1949', 'Secker & Warburg', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('The Lord of the Rings', '9780618640157', 'Fiction', 'J.R.R. Tolkien', '1954', 'Allen & Unwin', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('How to Win Friends and Influence People', '9780671027032', 'NonFictional', 'Dale Carnegie', '1936', 'Pocket Books', 'CURRENTLY_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('The Mushroom at the End of the World: On the Possibility of Life in Capitalist Ruins', '9780691178325', 'NonFictional', 'Anna Lowenhaupt Tsing', '2015', 'Princeton University Press', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('The Great Gatsby', '9780743273565', 'Fiction', 'F. Scott Fitzgerald', '1925', 'Charles Scribner\'s Sons', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('The Six Wives of Henry VIII', '9780802136831', 'NonFictional', 'Alison Weir', '1991', 'Grove Press', 'CURRENTLY_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Mans Search for Meaning', '9780807014295', 'NonFictional', 'Viktor E. Frankl', '1946', 'Beacon Press', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('The Power of Habit: Why We Do What We Do in Life and Business', '9780812981605', 'NonFictional', 'Charles Duhigg', '2012', 'Random House', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('Organic Chemistry', '9781118454312', 'Academic', 'T. W. Graham Solomons, Craig B. Fryhle', '2013', 'Wiley', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Microeconomics: Theory and Applications with Calculus', '9781118572276', 'Academic', 'Jeffrey M. Perloff', '2014', 'Wiley', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Introduction to the Theory of Computation', '9781133187790', 'Academic', 'Michael Sipser', '2012', 'Cengage Learning', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Principles of Neural Science', '9781259860943', 'Academic', 'Eric R. Kandel, James H. Schwartz, Thomas M. Jesse', '2013', 'McGraw-Hill Education', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Fundamentals of Corporate Finance', '9781259918959', 'Academic', 'Stephen A. Ross, Randolph W. Westerfield, Bradford', '2018', 'McGraw-Hill Education', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Physics for Scientists and Engineers', '9781305965520', 'Academic', 'Raymond A. Serway, John W. Jewett', '2018', 'Cengage Learning', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Introduction to the Practice of Statistics', '9781319013389', 'Academic', 'David S. Moore, George P. McCabe, Bruce A. Craig', '2018', 'W. H. Freeman', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Genetics: A Conceptual Approach', '9781319050964', 'Academic', 'Benjamin A. Pierce', '2018', 'W. H. Freeman', 'CANNOT_BE_BORROWED', NULL, '0000-00-00', '0000-00-00'),
('Beloved', '9781400033416', 'Fiction', 'Toni Morrison', '1987', 'Alfred A. Knopf Inc.', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('The Art of War', '9781590302255', 'NonFictional ', 'Sun Tzu', 'Circa 5th Century BC', 'Shambhala Publications', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('The Kite Runner', '9781594480003', 'Fiction', 'Khaled Hosseini', '2003', 'Riverhead Books', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00'),
('The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change', '9781982137274', 'NonFictional', 'Stephen R. Covey', '1989', 'Simon & Schuster', 'AVAILABLE', NULL, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `student_borrower`
--

CREATE TABLE `student_borrower` (
  `TRANSACTIONNO` int(50) NOT NULL,
  `LASTNAME` varchar(50) NOT NULL,
  `FIRSTNAME` varchar(50) NOT NULL,
  `INITIAL` char(1) NOT NULL,
  `COURSE` varchar(50) NOT NULL,
  `STUDENTID` varchar(50) NOT NULL,
  `YEARLVL` varchar(50) NOT NULL,
  `SECTION` varchar(50) NOT NULL,
  `PENALTY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_borrower`
--

CREATE TABLE `teacher_borrower` (
  `LASTNAME` varchar(50) NOT NULL,
  `FIRSTNAME` varchar(50) NOT NULL,
  `INITIAL` varchar(1) NOT NULL,
  `EMPLOYEEID` varchar(50) NOT NULL,
  `DEPARTMENT` varchar(50) NOT NULL,
  `DATE_BORROWED` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `student_borrower`
--
ALTER TABLE `student_borrower`
  ADD PRIMARY KEY (`TRANSACTIONNO`),
  ADD UNIQUE KEY `TRANSACTIONNO` (`TRANSACTIONNO`),
  ADD UNIQUE KEY `STUDENTID` (`STUDENTID`);

--
-- Indexes for table `teacher_borrower`
--
ALTER TABLE `teacher_borrower`
  ADD PRIMARY KEY (`EMPLOYEEID`),
  ADD UNIQUE KEY `EMPLOYEEID` (`EMPLOYEEID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_borrower`
--
ALTER TABLE `student_borrower`
  MODIFY `TRANSACTIONNO` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
