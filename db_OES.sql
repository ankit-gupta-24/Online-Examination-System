-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2020 at 02:41 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id12289904_phplogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `images` longblob DEFAULT NULL,
  `comp_code` int(5) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`, `images`, `comp_code`, `course`) VALUES
(15, 'test123', '$2y$10$xAQ8oKvsOmGSmGfL3tZKOuekKGx7ElFGmUENG3W6ZJ97gA2qL.aKa', 'guptaankit7988@gmail.com', 0x43657274696669656420706172746e65722042616e6e65722e6a7067, 41634, 'mcadd'),
(22, 'temp123', '$2y$10$2WzjC.JTF0Llu6KYynjEheiWLVhlVL/1Ge5g7PlY9lRTmLnuMgOjC', 'temp@mail.com', 0x494d475f32303139303832335f3136323830392e6a7067, 98765, 'mcadd'),
(27, 'ajay123', '$2y$10$L.U.VFm19r9VUyQILheRBe.slOLJEVmPY3ZpRdSi915cX8c6.7BU.', 'ajay123@mail.com', NULL, 41630, 'MCADD'),
(30, 'Ankush123', '$2y$10$JlqAT32mnx28CNjcdXu/MuRkTUfmEr65EwGNyWuF2owi0sKH/pwP2', 'Ankush123@mail.com', NULL, 42999, 'Mcadd'),
(31, 'Sid', '$2y$10$Peb8N3GQtMoeaDeAzAIH.uFUwUaVBY1AoCpsXEBFGwXeKclZkyKEm', 'sid@sid.sid', NULL, 17214, 'sid'),
(33, 'ankush', '$2y$10$3oCiHokk6foHvrSwcSno/eVuWOl2WS6khC7swDbPH/NlVP2ASluDW', 'ankushsss99@gmail.com', NULL, 43999, 'mcadd');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(3, 'oes_soc_admin', '$2y$10$Bv3itk8OMUDgtK/K8Rsr0uVz1mUQwtHrB60yVotnxRJR1LQo.nj3K', 'admin@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `html_questions`
--

CREATE TABLE `html_questions` (
  `id` varchar(75) NOT NULL,
  `question` text NOT NULL,
  `answer` varchar(10) DEFAULT NULL,
  `explaination` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `html_questions`
--

INSERT INTO `html_questions` (`id`, `question`, `answer`, `explaination`) VALUES
('q1', '<div class=\"w3-padding w3-khaki w3-margin\"><h4><b> Which HTML Tag is used to write JavaScript code ?</b></h4>\r\n					<input type=\"radio\" name=\"q1\" value=\"A\">\r\n					<label>&lt;html&gt;</label><br>				\r\n					<input type=\"radio\" name=\"q1\" value=\"B\">\r\n					<label>&lt;style&gt;</label><br>				\r\n					<input type=\"radio\" name=\"q1\" value=\"C\">\r\n					<label>&lt;script&gt;</label><br>				\r\n					<input type=\"radio\" name=\"q1\" value=\"D\">\r\n					<label>&lt;body&gt;</label><br>\r\n				</div>', 'C', NULL),
('q2', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n<h4><b> Which of the following has all the tags belongs to table ?</b></h4>		\r\n					<input type=\"radio\" name=\"q2\" value=\"A\" >\r\n					<label >&lt;tbody&gt;, &lt;th&gt;, &lt;tr&gt;, &lt;td&gt; </label><br>				\r\n					<input type=\"radio\" name=\"q2\" value=\"B\" >\r\n					<label >&lt;style&gt;, &lt;html&gt;, &lt;script&gt; </label><br>				\r\n					<input type=\"radio\" name=\"q2\" value=\"C\" >\r\n					<label >&lt;h1&gt;, &lt;tr&gt;, &lt;h3&gt;, &lt;h4&gt;, &lt;h5&gt;</label><br>				\r\n					<input type=\"radio\" name=\"q2\" value=\"D\" >\r\n					<label >&lt;p&gt;, &lt;tfoot&gt;, &lt;h6&gt;, &lt;table&gt; </label><br>\r\n				</div>', 'A', NULL),
('q3', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n					<h4><b> &lt;body&gt; is an opening or closing tag ?</b></h4>\r\n					<input type=\"radio\" name=\"q3\" value=\"A\" >\r\n					<label>opening</label><br>\r\n					<input type=\"radio\" name=\"q3\" value=\"B\">\r\n					<label >closing</label><br>\r\n					<input type=\"radio\" name=\"q3\" value=\"C\" >\r\n					<label >none of above</label> <br>\r\n				</div>', 'A', NULL),
('q4', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> What is an element that does not have a closing tag called?</b></h4>\r\n				 	<input type=\"radio\" name=\"q4\" value=\"A\">\r\n				 	<label >double element</label><br>\r\n				 	<input type=\"radio\" name=\"q4\" value=\"B\" >\r\n				 	<label >empty element</label><br>\r\n				 	<input type=\"radio\" name=\"q4\" value=\"C\" >\r\n				 	<label >none of above</label><br>\r\n				 </div>\r\n', 'B', NULL),
('q5', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> What does HTML stand for?</b></h4>\r\n				 	<input type=\"radio\" name=\"q5\" value=\"A\">\r\n				 	<label>Hyper Text Machine Language</label><br>\r\n				 	<input type=\"radio\" name=\"q5\" value=\"B\">\r\n				 	<label>Hyper Text Mobile Language</label><br>\r\n				 	<input type=\"radio\" name=\"q5\" value=\"C\">\r\n				 	<label>HTML doesn\'t have any full form</label><br>\r\n				 	<input type=\"radio\" name=\"q5\" value=\"D\">\r\n				 	<label>Hyper Text Markup Language</label><br>\r\n				 </div>', 'D', NULL),
('q6', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> Choose the correct HTML element for the largest heading.</b></h4>\r\n				 	<input type=\"radio\" name=\"q6\" value=\"A\">\r\n				 	<label>&lt;h2&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q6\" value=\"B\">\r\n				 	<label>&lt;h1&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q6\" value=\"C\">\r\n				 	<label>&lt;h6&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q6\" value=\"D\">\r\n				 	<label>&lt;h7&gt;</label><br>\r\n				 </div>\r\n', 'B', NULL),
('q7', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> What is the correct HTML for creating a hyperlink?</b></h4>\r\n				 	<input type=\"radio\" name=\"q7\" value=\"A\">\r\n				 	<label>&lt;a src=\"url\" &gt;some text &lt;/a&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q7\" value=\"B\">\r\n				 	<label>&lt;a url=\"href\" &gt;some text &lt;/a&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q7\" value=\"C\">\r\n				 	<label>&lt;a href=\"url\" &gt;some text &lt;/a&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q7\" value=\"D\">\r\n				 	<label>none of above</label><br>\r\n				 </div>', 'C', NULL),
('q8', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> What is the correct HTML for inserting an image?</b></h4>\r\n				 	<input type=\"radio\" name=\"q8\" value=\"A\">\r\n				 	<label>&lt;img href=\"path to image\"/&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q8\" value=\"B\">\r\n				 	<label>&lt;img src=\"path to image\" alt=\"alternate text\"/&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q8\" value=\"C\">\r\n				 	<label>There is no tag for inserting image</label><br>\r\n				 	<input type=\"radio\" name=\"q8\" value=\"D\">\r\n				 	<label>none of the above</label><br>\r\n				 </div>', 'B', NULL),
('q9', ' <div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> An &lt;iframe&gt; is used to display a web page within a web page.</b></h4>\r\n				 	<input type=\"radio\" name=\"q9\" value=\"A\">\r\n				 	<label>True</label><br>\r\n				 	<input type=\"radio\" name=\"q9\" value=\"B\">\r\n				 	<label>False</label><br>\r\n				 </div>', 'A', NULL),
('q10', ' <div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> HTML comments start with &lt;!-- and end with --&gt;</b></h4>\r\n				 	<input type=\"radio\" name=\"q10\" value=\"A\">\r\n				 	<label>True</label><br>\r\n				 	<input type=\"radio\" name=\"q10\" value=\"B\">\r\n				 	<label>False</label><br>\r\n				 </div>', 'A', NULL),
('q11', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b>In HTML, onblur and onfocus are:</b></h4>\r\n				 	<input type=\"radio\" name=\"q11\" value=\"A\">\r\n				 	<label>Event Attributes</label><br>\r\n				 	<input type=\"radio\" name=\"q11\" value=\"B\">\r\n				 	<label>Elements</label><br>\r\n				 	<input type=\"radio\" name=\"q11\" value=\"C\">\r\n				 	<label>Tags</label><br>\r\n				 	<input type=\"radio\" name=\"q11\" value=\"D\">\r\n				 	<label>None of the Above</label><br>\r\n				 </div>', 'A', NULL),
('q12', ' <div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> Which element represents marked or highlighted text for reference purposes?</b></h4>\r\n				 	<input type=\"radio\" name=\"q12\" value=\"A\">\r\n				 	<label>&lt;mark&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q12\" value=\"B\">\r\n				 	<label>&lt;bold&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q12\" value=\"C\">\r\n				 	<label>&lt;strong&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q12\" value=\"D\">\r\n				 	<label>&lt;markque&gt;</label><br>\r\n				 </div>', 'A', NULL),
('q13', ' <div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> www is based on which model?</b></h4>\r\n				 	<input type=\"radio\" name=\"q13\" value=\"A\">\r\n				 	<label>Spiral Model</label><br>\r\n				 	<input type=\"radio\" name=\"q13\" value=\"B\">\r\n				 	<label>Waterfall</label><br>\r\n				 	<input type=\"radio\" name=\"q13\" value=\"C\">\r\n				 	<label>Client-Server</label><br>\r\n				 	<input type=\"radio\" name=\"q13\" value=\"D\">\r\n				 	<label>None of the above</label><br>\r\n				 </div>', 'C', NULL),
('q14', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> Web pages starts with which ofthe following tag?</b></h4>\r\n				 	<input type=\"radio\" name=\"q14\" value=\"A\">\r\n				 	<label>&lt;body&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q14\" value=\"B\">\r\n				 	<label>&lt;head&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q14\" value=\"C\">\r\n				 	<label>&lt;br&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q14\" value=\"D\">\r\n				 	<label>&lt;html&gt;</label><br>\r\n				 </div>', 'D', NULL),
('q15', ' <div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> Which of the following is a container? </b></h4>\r\n				 	<input type=\"radio\" name=\"q15\" value=\"A\">\r\n				 	<label>&lt;body&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q15\" value=\"B\">\r\n				 	<label>&lt;select&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q15\" value=\"C\">\r\n				 	<label>&lt;form&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q15\" value=\"D\">\r\n				 	<label>All the above</label><br>\r\n				 </div>', 'D', NULL),
('q16', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> Correct HTML to left align the content inside a table cell is</b></h4>\r\n				 	<input type=\"radio\" name=\"q16\" value=\"A\">\r\n				 	<label>&lt;td align=\"left\"&gt;some text&lt;/td&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q16\" value=\"B\">\r\n				 	<label>&lt;td align=\"right\"&gt;some text&lt;/td&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q16\" value=\"C\">\r\n				 	<label>&lt;td left=\"true\"&gt;some text&lt;/td&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q16\" value=\"D\">\r\n				 	<label>&lt;td right=\"false\"&gt;some text&lt;/td&gt;</label><br>\r\n				 </div>', 'A', NULL),
('q17', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> How can you open a link in a new browser window?</b></h4>\r\n				 	<input type=\"radio\" name=\"q17\" value=\"A\">\r\n				 	<label> target=\"new\"</label><br>\r\n				 	<input type=\"radio\" name=\"q17\" value=\"B\">\r\n				 	<label> target=\"_blank\"</label><br>\r\n				 	<input type=\"radio\" name=\"q17\" value=\"C\">\r\n				 	<label> target=\"newtab\"</label><br>\r\n				 	<input type=\"radio\" name=\"q17\" value=\"D\">\r\n				 	<label> open=\"new\"</label><br>\r\n				 </div>', 'B', NULL),
('q18', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> The body tag usually used after</b></h4>\r\n				 	<input type=\"radio\" name=\"q18\" value=\"A\">\r\n				 	<label> &lt;footer&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q18\" value=\"B\">\r\n				 	<label> &lt;h1&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q18\" value=\"C\">\r\n				 	<label> &lt;html&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q18\" value=\"D\">\r\n				 	<label> &lt;head&gt;</label><br>\r\n				 </div>', 'D', NULL),
('q19', ' <div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> How can you make an e-mail link?</b></h4>\r\n				 	<input type=\"radio\" name=\"q19\" value=\"A\">\r\n				 	<label>&lt; a href=\"mailto:example@email.com\" &gt;some text&lt;/a&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q19\" value=\"B\">\r\n				 	<label>&lt; a src=\"mailto:example@email.com\" &gt;some text&lt;/a&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q19\" value=\"C\">\r\n				 	<label>&lt; a href=\"example@email.com\" &gt;some text&lt;/a&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q19\" value=\"D\">\r\n				 	<label>&lt; a src=\"example@email.com\" &gt;some text&lt;/a&gt;</label><br>\r\n				 </div>\r\n', 'A', NULL),
('q20', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b> What is the correct HTML for adding a background color to body?</b></h4>\r\n				 	<input type=\"radio\" name=\"q20\" value=\"A\">\r\n				 	<label> &lt;body bg=\"color name\"&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q20\" value=\"B\">\r\n				 	<label> &lt;body background=\"color name\"&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q20\" value=\"C\">\r\n				 	<label> &lt;body bgcolor=\"color name\"&gt;</label><br>\r\n				 	<input type=\"radio\" name=\"q20\" value=\"D\">\r\n				 	<label> &lt;body color=\"color name\"&gt;</label><br>\r\n				 </div>', 'C', NULL),
('q21', '	 <div class=\"w3-padding w3-khaki w3-margin\">\r\n				 	<h4><b>What is the difference between xml & html?</b></h4>\r\n				 	<input type=\"radio\" name=\"q21\" value=\"A\">\r\n				 	<label>&nbsp;&nbsp;HTML is used for data exchange but XML not</label><br>\r\n				 	<input type=\"radio\" name=\"q21\" value=\"B\">\r\n				 	<label>&nbsp;&nbsp;XML is used for data exchange but HTML not</label><br>\r\n				 	<input type=\"radio\" name=\"q21\" value=\"C\">\r\n				 	<label>&nbsp;&nbsp;HTML can have user defined tags but XML can\'t</label><br>\r\n				 	<input type=\"radio\" name=\"q21\" value=\"D\">\r\n				 	<label>&nbsp;&nbsp;None of the above </label><br>\r\n				 </div>', 'B', NULL),
('q22', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n	<h4><b>Opening Tag of HTML is called </b></h4>\r\n 	<input type=\"radio\" name=\"q22\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Closing Tag</label><br>\r\n	<input type=\"radio\" name=\"q22\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Closed Tag</label><br>\r\n 	<input type=\"radio\" name=\"q22\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Starting Tag</label><br>\r\n 	<input type=\"radio\" name=\"q22\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;None of these</label><br>\r\n</div>', 'C', NULL),
('q23', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>HTML file is saved using _____ extension</b></h4>\r\n 	<input type=\"radio\" name=\"q23\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;.html</label><br>\r\n 	<input type=\"radio\" name=\"q23\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;.hml</label><br>\r\n 	<input type=\"radio\" name=\"q23\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;.htl</label><br>\r\n 	<input type=\"radio\" name=\"q23\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;none of these</label><br>\r\n</div>', 'A', NULL),
('q24', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>HTML code written on MAC PC can be browsed on PC with windows 7 installed, User will able to same design that was designed on MAC PC.</b></h4>\r\n 	<input type=\"radio\" name=\"q24\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;TRUE</label><br>\r\n 	<input type=\"radio\" name=\"q24\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;FALSE</label><br>\r\n 	<input type=\"radio\" name=\"q24\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;code will not run on windows pc</label><br>\r\n 	<input type=\"radio\" name=\"q24\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;none of these</label><br>\r\n</div>', 'A', NULL),
('q25', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Who was the primary author of HTML?</b></h4>\r\n 	<input type=\"radio\" name=\"q25\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Brendan Eich</label><br>\r\n 	<input type=\"radio\" name=\"q25\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Dr. C.V. Raman</label><br>\r\n 	<input type=\"radio\" name=\"q25\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Dr. A.P.J. Abdul Kalam</label><br>\r\n 	<input type=\"radio\" name=\"q25\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;Tim Berners-Lee</label><br>\r\n</div>', 'D', NULL),
('q26', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which of the following is valid color code?</b></h4>\r\n 	<input type=\"radio\" name=\"q26\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;#000000</label><br>\r\n 	<input type=\"radio\" name=\"q26\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;#00</label><br>\r\n 	<input type=\"radio\" name=\"q26\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;#0000</label><br>\r\n 	<input type=\"radio\" name=\"q26\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;#00000000</label><br>\r\n</div>', 'A', NULL),
('q27', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Generally caption tag is used with _____</b></h4>\r\n 	<input type=\"radio\" name=\"q27\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;form&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q27\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;table&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q27\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;select&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q27\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;None of these</label><br>\r\n</div>', 'B', NULL),
('q28', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Is width=\"100\" and width=\"100%\" same?</b></h4>\r\n 	<input type=\"radio\" name=\"q28\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Yes</label><br>\r\n 	<input type=\"radio\" name=\"q28\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;No</label><br>\r\n</div>', 'B', NULL),
('q29', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>How can we resize the image?</b></h4>\r\n 	<input type=\"radio\" name=\"q29\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;using resize attribute</label><br>\r\n 	<input type=\"radio\" name=\"q29\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;using size attribute</label><br>\r\n 	<input type=\"radio\" name=\"q29\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;using width and height attribute</label><br>\r\n 	<input type=\"radio\" name=\"q29\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;using rs attribute</label><br>\r\n</div>', 'C', NULL),
('q30', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>For frames in HTML, How do you specify the rest of screen?</b></h4>\r\n 	<input type=\"radio\" name=\"q30\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;using &</label><br>\r\n 	<input type=\"radio\" name=\"q30\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;using /</label><br>\r\n 	<input type=\"radio\" name=\"q30\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;using #</label><br>\r\n 	<input type=\"radio\" name=\"q30\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;using *</label><br>\r\n</div>', 'D', NULL),
('q31', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Can I paly audio in HTML?</b></h4>\r\n 	<input type=\"radio\" name=\"q31\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Yes</label><br>\r\n 	<input type=\"radio\" name=\"q31\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Np</label><br>\r\n</div>', 'A', NULL),
('q32', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which of the following are attributes of font tag?</b></h4>\r\n 	<input type=\"radio\" name=\"q32\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;color</label><br>\r\n 	<input type=\"radio\" name=\"q32\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;face</label><br>\r\n 	<input type=\"radio\" name=\"q32\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Both A and B</label><br>\r\n 	<input type=\"radio\" name=\"q32\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;None of these</label><br>\r\n</div>\r\n', 'C', NULL),
('q33', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b> The attribute of &lt;form> tag</b></h4>\r\n 	<input type=\"radio\" name=\"q33\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;method</label><br>\r\n 	<input type=\"radio\" name=\"q33\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;action</label><br>\r\n 	<input type=\"radio\" name=q33\"\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Both A & B</label><br>\r\n 	<input type=\"radio\" name=\"q33\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;None of these</label><br>\r\n</div>', 'C', NULL),
('q34', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which of the following attributes of text box control allow to limit the maximum character?</b></h4>\r\n 	<input type=\"radio\" name=\"q34\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;size</label><br>\r\n 	<input type=\"radio\" name=\"q34\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;maxlength</label><br>\r\n 	<input type=\"radio\" name=\"q34\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;len</label><br>\r\n 	<input type=\"radio\" name=\"q34\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;All of these</label><br>\r\n</div>', 'B', NULL),
('q35', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>	HTML is what type of language ?</b></h4>\r\n 	<input type=\"radio\" name=\"q35\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Programming Language</label><br>\r\n 	<input type=\"radio\" name=\"q35\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Scripting Language</label><br>\r\n 	<input type=\"radio\" name=\"q35\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Network Protocol</label><br>\r\n 	<input type=\"radio\" name=\"q35\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;Markup Language</label><br>\r\n</div>', 'D', NULL),
('q36', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>HTML uses </b></h4>\r\n 	<input type=\"radio\" name=\"q36\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Fixed tags defined by the language</label><br>\r\n 	<input type=\"radio\" name=\"q36\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;User defined tags</label><br>\r\n 	<input type=\"radio\" name=\"q36\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Both A & B</label><br>\r\n 	<input type=\"radio\" name=\"q36\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;HTML doen not use tags</label><br>\r\n</div>', 'A', NULL),
('q37', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Apart from &lt;b> tag, what other tag makes text bold ?</b></h4>\r\n 	<input type=\"radio\" name=\"q37\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;emp></label><br>\r\n 	<input type=\"radio\" name=\"q37\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;mark></label><br>\r\n 	<input type=\"radio\" name=\"q37\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;strong></label><br>\r\n 	<input type=\"radio\" name=\"q37\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;black></label><br>\r\n</div>', 'C', NULL),
('q38', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>What tag is used to display a picture in a HTML page?</b></h4>\r\n 	<input type=\"radio\" name=\"q38\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;img></label><br>\r\n 	<input type=\"radio\" name=\"q38\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;image></label><br>\r\n 	<input type=\"radio\" name=\"q38\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;picture></label><br>\r\n 	<input type=\"radio\" name=\"q38\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;pic></label><br>\r\n</div>', 'A', NULL),
('q39', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which attribute is used in img tag to specify path of image?</b></h4>\r\n 	<input type=\"radio\" name=\"q39\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;href</label><br>\r\n 	<input type=\"radio\" name=\"q39\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;sourcepath</label><br>\r\n 	<input type=\"radio\" name=\"q39\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;filepath</label><br>\r\n 	<input type=\"radio\" name=\"q39\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;src</label><br>\r\n</div>', 'D', NULL),
('q40', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>HTML tags are surrounded by which type of brackets.</b></h4>\r\n 	<input type=\"radio\" name=\"q40\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;angle</label><br>\r\n 	<input type=\"radio\" name=\"q40\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;curly</label><br>\r\n 	<input type=\"radio\" name=\"q40\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;square</label><br>\r\n 	<input type=\"radio\" name=\"q40\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;paranthesis</label><br>\r\n</div>', 'A', NULL),
('q41', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>	Tags and test that are not directly displayed on the page are written in _____ section.</b></h4>\r\n 	<input type=\"radio\" name=\"q41\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;form></label><br>\r\n 	<input type=\"radio\" name=\"q41\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;head></label><br>\r\n 	<input type=\"radio\" name=\"q41\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;body></label><br>\r\n 	<input type=\"radio\" name=\"q41\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;Any of these</label><br>\r\n</div>', 'B', NULL),
('q42', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>	HTML web pages can be read and rendered by _________.</b></h4>\r\n 	<input type=\"radio\" name=\"q42\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;compiler</label><br>\r\n 	<input type=\"radio\" name=\"q42\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;interpreter</label><br>\r\n 	<input type=\"radio\" name=\"q42\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Assembler</label><br>\r\n 	<input type=\"radio\" name=\"q42\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;Web Browser</label><br>\r\n</div>', 'D', NULL),
('q43', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b> Each cell of the table can be represented by using ______.</b></h4>\r\n 	<input type=\"radio\" name=\"q43\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;tr&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q43\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;td&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q43\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;th&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q43\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;thead&gt;</label><br>\r\n</div>', 'B', NULL),
('q44', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>An unordered list in HTML starts with</b></h4>\r\n 	<input type=\"radio\" name=\"q44\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;ul&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q44\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;li&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q44\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;ol&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q44\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;None of these</label><br>\r\n</div>', 'A', NULL),
('q45', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b> To set a value for all elements used in HTML document _____ can be used.</b></h4>\r\n 	<input type=\"radio\" name=\"q45\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;# (hash)</label><br>\r\n 	<input type=\"radio\" name=\"q45\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;* (astrik)</label><br>\r\n 	<input type=\"radio\" name=\"q45\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;. (dot)</label><br>\r\n 	<input type=\"radio\" name=\"q45\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;& (ampersand)</label><br>\r\n</div>', 'B', NULL),
('q46', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>_____ select only div element with their id contribute set to “div1”.</b></h4>\r\n 	<input type=\"radio\" name=\"q46\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;#div2{color: red;}</label><br>\r\n 	<input type=\"radio\" name=\"q46\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;div.div1 {color: red;}</label><br>\r\n 	<input type=\"radio\" name=\"q46\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;#div1 div {color: red;}</label><br>\r\n 	<input type=\"radio\" name=\"q46\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;div#div1{color: red;}</label><br>\r\n</div>', 'D', NULL),
('q47', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>HTML &lt;dl&gt; tag defines the _____</b></h4>\r\n 	<input type=\"radio\" name=\"q47\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Ordered list</label><br>\r\n 	<input type=\"radio\" name=\"q47\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Description list</label><br>\r\n 	<input type=\"radio\" name=\"q47\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Unordered list</label><br>\r\n 	<input type=\"radio\" name=\"q47\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;Dscriptive list</label><br>\r\n</div>', 'B', NULL),
('q48', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which of the following rule indicates all occurrences of the span element within a div element have a pink background.</b></h4>\r\n 	<input type=\"radio\" name=\"q48\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;div * span {background-color: pink;}</label><br>\r\n 	<input type=\"radio\" name=\"q48\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;span div {background-color: pink;}</label><br>\r\n 	<input type=\"radio\" name=\"q48\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;div span {background-color: pink;}</label><br>\r\n 	<input type=\"radio\" name=\"q48\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;div#span {background-color:pink;}</label><br>\r\n</div>', 'C', NULL),
('q49', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>______ would select all h4 tags that have a div tag as a preceding sibling.</b></h4>\r\n 	<input type=\"radio\" name=\"q49\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;div~h4 {font-size: 20px;}</label><br>\r\n 	<input type=\"radio\" name=\"q49\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;h4 ~ div {font-size: 20px;}</label><br> \r\n 	<input type=\"radio\" name=\"q49\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;div+h4 {font-size: 20px;}</label><br>\r\n 	<input type=\"radio\" name=\"q49\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;div>h4 {font-size: 20px;}</label><br> \r\n</div>', 'B', NULL),
('q50', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>valign attribute does not take the value ___________</b></h4>\r\n 	<input type=\"radio\" name=\"q50\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;justify</label><br>\r\n 	<input type=\"radio\" name=\"q50\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;middle</label><br>\r\n 	<input type=\"radio\" name=\"q50\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;baseline</label><br>\r\n 	<input type=\"radio\" name=\"q50\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;bottom</label><br>\r\n</div>', 'A', NULL),
('q51', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>In HTML gap betwwn two cells of same table is called:</b></h4>\r\n 	<input type=\"radio\" name=\"q51\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;celldifference</label><br>\r\n 	<input type=\"radio\" name=\"q51\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;cellpadding</label><br>\r\n 	<input type=\"radio\" name=\"q51\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;cellspacing</label><br>\r\n 	<input type=\"radio\" name=\"q51\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;All the above</label><br>\r\n</div>', 'C', NULL),
('q52', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>If you want to start you list numbering start from 2000, Which attribute will you use</b></h4>\r\n 	<input type=\"radio\" name=\"q52\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;startfrom=\"2000\"</label><br>\r\n 	<input type=\"radio\" name=\"q52\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;begin=\"2000\"</label><br>\r\n 	<input type=\"radio\" name=\"q52\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;start=\"2000\"</label><br>\r\n 	<input type=\"radio\" name=\"q52\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;All of above</label><br>\r\n</div>\r\n', 'C', NULL),
('q53', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>For table heading we can use ____________.</b></h4>\r\n 	<input type=\"radio\" name=\"q53\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;tr&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q53\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;td&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q53\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;th&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q53\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;thead&gt;</label><br>\r\n</div>', 'C', NULL),
('q54', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>A CSS2 selector, _______ selects all elements of E that have set the given attribute attr equal to the given value.</b></h4>\r\n 	<input type=\"radio\" name=\"q54\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;E[attr~=value]</label><br>\r\n 	<input type=\"radio\" name=\"q54\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;E[attr^=value]</label><br>\r\n 	<input type=\"radio\" name=\"q54\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;E[attr=value]</label><br>\r\n 	<input type=\"radio\" name=\"q54\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;E[attr|=value]</label><br>\r\n</div>', 'C', NULL),
('q55', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>If you want to merge two or more rows in a table which attribute will you use ?</b></h4>\r\n 	<input type=\"radio\" name=\"q55\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;rowmerge</label><br>\r\n 	<input type=\"radio\" name=\"q55\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;rowspan</label><br>\r\n 	<input type=\"radio\" name=\"q55\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;colspan</label><br>\r\n 	<input type=\"radio\" name=\"q55\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;colmerge</label><br>\r\n</div>', 'B', NULL),
('q56', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which element embeds an HTML document inside into current document?</b></h4>\r\n 	<input type=\"radio\" name=\"q56\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;div&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q56\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;span&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q56\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;iframe&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q56\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;insert&gt;</label><br>\r\n</div>', 'C', NULL),
('q57', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>In HTML form &lt;input type=\"text\"> is used for</b></h4>\r\n 	<input type=\"radio\" name=\"q57\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;One line text</label><br>\r\n 	<input type=\"radio\" name=\"q57\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Block of text</label><br>\r\n 	<input type=\"radio\" name=\"q57\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;one paragraph</label><br>\r\n 	<input type=\"radio\" name=\"q57\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;None </label><br>\r\n</div>', 'A', NULL),
('q58', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b> Web design that makes your web page look good on all devices is called as?</b></h4>\r\n 	<input type=\"radio\" name=\"q58\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Good Web Design</label><br>\r\n 	<input type=\"radio\" name=\"q58\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Interactive Web Design</label><br>\r\n 	<input type=\"radio\" name=\"q58\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Responsive Web Design</label><br>\r\n 	<input type=\"radio\" name=\"q58\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;None</label><br>\r\n</div>', 'C', NULL),
('q59', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which of following is not an inline element?</b></h4>\r\n 	<input type=\"radio\" name=\"q59\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;span&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q59\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;a&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q59\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;img&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q59\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;div&gt;</label><br>\r\n</div>', 'D', NULL),
('q60', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>In HTML space between table cell content and cell border is called:</b></h4>\r\n 	<input type=\"radio\" name=\"q60\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;cellpadding</label><br>\r\n 	<input type=\"radio\" name=\"q60\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;cellsacing</label><br>\r\n 	<input type=\"radio\" name=\"q60\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;celldifference</label><br>\r\n 	<input type=\"radio\" name=\"q60\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;All of the above</label><br>\r\n</div>', 'A', NULL),
('q61', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Scrolling piece of text displayed either horizontally or vertically is created by</b></h4>\r\n 	<input type=\"radio\" name=\"q61\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;floating text&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q61\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;marquee&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q61\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;scroll&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q61\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;All of Above</label><br>\r\n</div>', 'B', NULL),
('q62', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b> Which are commonly used methods for request and response between a client and server?</b></h4>\r\n 	<input type=\"radio\" name=\"q62\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;get and put</label><br>\r\n 	<input type=\"radio\" name=\"q62\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;set and put</label><br>\r\n 	<input type=\"radio\" name=\"q62\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;set and post</label><br>\r\n 	<input type=\"radio\" name=\"q62\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;get and post</label><br>\r\n</div>', 'D', NULL),
('q63', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>&lt;input type=\"reset\"> defines a</b></h4>\r\n 	<input type=\"radio\" name=\"q63\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;reset button</label><br>\r\n 	<input type=\"radio\" name=\"q63\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;reset radio button</label><br>\r\n 	<input type=\"radio\" name=\"q63\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;reset checkbox</label><br>\r\n 	<input type=\"radio\" name=\"q63\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;None</label><br>\r\n</div>', 'A', NULL),
('q64', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>What is the use of iframe in HTML?</b></h4>\r\n 	<input type=\"radio\" name=\"q64\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;To display a webpage within a web page.</label><br>\r\n 	<input type=\"radio\" name=\"q64\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;To display a webpage without browser</label><br>\r\n 	<input type=\"radio\" name=\"q64\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;To display a webpage with animation effect</label><br>\r\n 	<input type=\"radio\" name=\"q64\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;None of these</label><br>\r\n</div>', 'A', NULL),
('q65', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>If you want to use square in place of circle in unordered list, Which attribute will you use? </b></h4>\r\n 	<input type=\"radio\" name=\"q65\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;type=\"square\"</label><br>\r\n 	<input type=\"radio\" name=\"q65\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;type=\"sqrt\"</label><br>\r\n 	<input type=\"radio\" name=\"q65\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;type=\"rect\"</label><br>\r\n 	<input type=\"radio\" name=\"q65\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;All of above</label><br>\r\n</div>', 'A', NULL),
('q66', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>&lt;input type=\"datetime-local\"> specifies date and time with</b></h4>\r\n 	<input type=\"radio\" name=\"q66\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;local time</label><br>\r\n 	<input type=\"radio\" name=\"q66\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;international time</label><br>\r\n 	<input type=\"radio\" name=\"q66\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;no time zone</label><br>\r\n 	<input type=\"radio\" name=\"q66\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;local time zone</label><br>\r\n</div>', 'C', NULL),
('q67', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>In HTML which element is used to define a multi-line input field?</b></h4>\r\n 	<input type=\"radio\" name=\"q67\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;text&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q67\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;textarea&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q67\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;block&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q67\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;None of these</label><br>\r\n</div>', 'B', NULL),
('q68', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>HTML5 documents may contains a ________ element, which is used to set the header section of a document.</b></h4>\r\n 	<input type=\"radio\" name=\"q68\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;footer</label><br>\r\n 	<input type=\"radio\" name=\"q68\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;header</label><br>\r\n 	<input type=\"radio\" name=\"q68\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;section</label><br>\r\n 	<input type=\"radio\" name=\"q68\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;article</label><br>\r\n</div>', 'B', NULL),
('q69', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b> ________ contains the navigation menu, or other navigation functionality for the page.</b></h4>\r\n 	<input type=\"radio\" name=\"q69\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;article</label><br>\r\n 	<input type=\"radio\" name=\"q69\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;section</label><br>\r\n 	<input type=\"radio\" name=\"q69\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;header</label><br>\r\n 	<input type=\"radio\" name=\"q69\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;nav</label><br>\r\n</div>', 'D', NULL),
('q70', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>To insert a video, we use a video tag and set its src attribute to a local or remote URL containing a playable movie.</b></h4>\r\n 	<input type=\"radio\" name=\"q70\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;True</label><br>\r\n 	<input type=\"radio\" name=\"q70\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;False</label><br>\r\n</div>', 'A', NULL),
('q71', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which tag is used for list item?</b></h4>\r\n 	<input type=\"radio\" name=\"q71\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;di&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q71\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&gt;listitem&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q71\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;dl&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q71\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;li&gt;</label><br>\r\n</div>', 'D', NULL),
('q72', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Consider the following markup and answer the question that follow.\r\n<code ><pre>&lt;source src=\"html_5.mp4\" type=\"video/mp4\">\r\n			&lt;source src=\"html_5.ogv\" type=\"video/ogg\">\r\n</pre></code>\r\nWhat is the need to add multiple file formats for the same file?</b></h4>\r\n 	<input type=\"radio\" name=\"q72\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;To provide fallback support</label><br>\r\n 	<input type=\"radio\" name=\"q72\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;To address the media support problem</label><br>\r\n 	<input type=\"radio\" name=\"q72\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Both A & B</label><br>\r\n 	<input type=\"radio\" name=\"q72\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;None of these</label><br>\r\n</div>', 'C', NULL),
('q73', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Action attribute in HTML specifies</b></h4>\r\n 	<input type=\"radio\" name=\"q73\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Which HTTP method is used</label><br>\r\n 	<input type=\"radio\" name=\"q73\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;What action is going on</label><br>\r\n 	<input type=\"radio\" name=\"q73\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Where to submit form</label><br>\r\n 	<input type=\"radio\" name=\"q73\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;The auto completion of form</label><br>\r\n</div>', 'C', NULL),
('q74', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>What is the full form of SVG?</b></h4>\r\n 	<input type=\"radio\" name=\"q74\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Specific Varying Graphics</label><br>\r\n 	<input type=\"radio\" name=\"q74\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Server Video Graphics</label><br>\r\n 	<input type=\"radio\" name=\"q74\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Storage Video Graphics</label><br>\r\n 	<input type=\"radio\" name=\"q74\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;Scalable Vector Graphics</label><br>\r\n</div>', 'D', NULL),
('q75', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>What is the replacement for cookies in HTML5?</b></h4>\r\n 	<input type=\"radio\" name=\"q75\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Web beacons</label><br>\r\n 	<input type=\"radio\" name=\"q75\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Java scripts</label><br>\r\n 	<input type=\"radio\" name=\"q75\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Local Storage</label><br>\r\n 	<input type=\"radio\" name=\"q75\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;All of these</label><br>\r\n</div>', 'D', NULL),
('q76', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>For creating a drop-down list in HTML form which element is used?</b></h4>\r\n 	<input type=\"radio\" name=\"q76\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;list&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q76\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;select&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q76\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;dropdown&gt;</label><br>\r\n 	<input type=\"radio\" name=\"q76\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;All of these</label><br>\r\n</div>', 'B', NULL),
('q77', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>How will you define a submit button?</b></h4>\r\n 	<input type=\"radio\" name=\"q77\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;input type=\"submit\" value=\"submit\"></label><br>\r\n 	<input type=\"radio\" name=\"q77\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;button type=\"submit\" value=\"submit\"></label><br>\r\n 	<input type=\"radio\" name=\"q77\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Both A & B</label><br>\r\n 	<input type=\"radio\" name=\"q77\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;There is no tag to define submit button</label><br>\r\n</div>', 'C', NULL),
('q78', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which tag is used to defines multiple media resources for media elements audio and video?</b></h4>\r\n 	<input type=\"radio\" name=\"q78\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;source></label><br>\r\n 	<input type=\"radio\" name=\"q78\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;video></label><br>\r\n 	<input type=\"radio\" name=\"q78\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;audio></label><br>\r\n 	<input type=\"radio\" name=\"q78\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;canvas></label><br>\r\n</div>', 'A', NULL),
('q79', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Default method while submitting a method when method attribute is not set</b></h4>\r\n 	<input type=\"radio\" name=\"q79\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Get</label><br>\r\n 	<input type=\"radio\" name=\"q79\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Set</label><br>\r\n 	<input type=\"radio\" name=\"q79\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Put</label><br>\r\n 	<input type=\"radio\" name=\"q79\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;Post</label><br>\r\n</div>', 'A', NULL),
('q80', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which of the following is not the value for align attribute?</b></h4>\r\n 	<input type=\"radio\" name=\"q80\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;justify</label><br>\r\n 	<input type=\"radio\" name=\"q80\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;middle</label><br>\r\n 	<input type=\"radio\" name=\"q80\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;char</label><br>\r\n 	<input type=\"radio\" name=\"q80\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;left</label><br>\r\n</div>', 'C', NULL),
('q81', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>&lt;fieldset> element in HTML is used for</b></h4>\r\n 	<input type=\"radio\" name=\"q81\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Group of irrelevant data</label><br>\r\n 	<input type=\"radio\" name=\"q81\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;input field</label><br>\r\n 	<input type=\"radio\" name=\"q81\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Text Data</label><br>\r\n 	<input type=\"radio\" name=\"q81\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;Group of related data</label><br>\r\n</div>', 'D', NULL),
('q82', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>How can we embed youtube videos in webpage.</b></h4>\r\n 	<input type=\"radio\" name=\"q82\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;using &lt;iframe></label><br>\r\n 	<input type=\"radio\" name=\"q82\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;using &lt;video></label><br>\r\n 	<input type=\"radio\" name=\"q82\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;using &lt;audio></label><br>\r\n 	<input type=\"radio\" name=\"q82\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;All of these</label><br>\r\n</div>', 'A', NULL),
('q83', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which attribute specifies a unique alphanumeric identifier to be associated with an element?</b></h4>\r\n 	<input type=\"radio\" name=\"q83\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;class</label><br>\r\n 	<input type=\"radio\" name=\"q83\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;id</label><br>\r\n 	<input type=\"radio\" name=\"q83\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;article</label><br>\r\n 	<input type=\"radio\" name=\"q83\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;unique</label><br>\r\n</div>', 'B', NULL),
('q84', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>The _______ attribute specifies an inline style associated with an element, which determines the rendering of the affected element.</b></h4>\r\n 	<input type=\"radio\" name=\"q84\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;dir</label><br>\r\n 	<input type=\"radio\" name=\"q84\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;class</label><br>\r\n 	<input type=\"radio\" name=\"q84\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;id</label><br>\r\n 	<input type=\"radio\" name=\"q84\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;style</label><br>\r\n</div>', 'D', NULL),
('q85', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which attribute is used to provide an advisory text about an element or its contents?</b></h4>\r\n 	<input type=\"radio\" name=\"q85\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;title</label><br>\r\n 	<input type=\"radio\" name=\"q85\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;dir</label><br>\r\n 	<input type=\"radio\" name=\"q85\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;tooltip</label><br>\r\n 	<input type=\"radio\" name=\"q85\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;head</label><br>\r\n</div>', 'A', NULL),
('q86', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Loop attribute is not used with ____________</b></h4>\r\n 	<input type=\"radio\" name=\"q86\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;audio></label><br>\r\n 	<input type=\"radio\" name=\"q86\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;marquee></label><br>\r\n 	<input type=\"radio\" name=\"q86\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;video></label><br>\r\n 	<input type=\"radio\" name=\"q86\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;track></label><br>\r\n</div>', 'D', NULL),
('q87', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Use of checked attribute is ________.</b></h4>\r\n 	<input type=\"radio\" name=\"q87\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Whether on page load element should be checked</label><br>\r\n 	<input type=\"radio\" name=\"q87\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Whether on page load all form element should be checked</label><br>\r\n 	<input type=\"radio\" name=\"q87\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Whether on page load all list element should be checked</label><br>\r\n 	<input type=\"radio\" name=\"q87\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;Whether on page load all multimedia elements should be checked</label><br>\r\n</div>', 'A', NULL),
('q88', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which works similar to &lt;i> element?</b></h4>\r\n 	<input type=\"radio\" name=\"q88\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;b></label><br>\r\n 	<input type=\"radio\" name=\"q88\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;strong></label><br>\r\n 	<input type=\"radio\" name=\"q88\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;em></label><br>\r\n 	<input type=\"radio\" name=\"q88\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;None of these</label><br>\r\n</div>', 'C', NULL);
INSERT INTO `html_questions` (`id`, `question`, `answer`, `explaination`) VALUES
('q89', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which element is used for short quote?</b></h4>\r\n 	<input type=\"radio\" name=\"q89\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;q></label><br>\r\n 	<input type=\"radio\" name=\"q89\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;blockquote></label><br>\r\n 	<input type=\"radio\" name=\"q89\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;em></label><br>\r\n 	<input type=\"radio\" name=\"q89\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;abbr></label><br>\r\n</div>', 'A', NULL),
('q90', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>What is the work of &lt;address> element?</b></h4>\r\n 	<input type=\"radio\" name=\"q90\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Contains contact details for author</label><br>\r\n 	<input type=\"radio\" name=\"q90\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Contains IP address</label><br>\r\n 	<input type=\"radio\" name=\"q90\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Contains home address</label><br>\r\n 	<input type=\"radio\" name=\"q90\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;Contains url</label><br>\r\n</div>', 'A', NULL),
('q91', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>The major difference between minlength and min attribute is ______.</b></h4>\r\n 	<input type=\"radio\" name=\"q91\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;minlength is for the minimum number of characters and min is for the minimum value</label><br>\r\n 	<input type=\"radio\" name=\"q91\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;minlength is for the minimum value and min is for the minimum number of characters</label><br>\r\n 	<input type=\"radio\" name=\"q91\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;minlength is for multiple values and min is for the single value</label><br>\r\n 	<input type=\"radio\" name=\"q91\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;min is for single value and minlength is for multiple values</label><br>\r\n</div>', 'A', NULL),
('q92', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which property is similar to C/C++ can be applied to comments?</b></h4>\r\n 	<input type=\"radio\" name=\"q92\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;for loop</label><br>\r\n 	<input type=\"radio\" name=\"q92\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;if else</label><br>\r\n 	<input type=\"radio\" name=\"q92\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;while loop</label><br>\r\n 	<input type=\"radio\" name=\"q92\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;switch case</label><br>\r\n</div>', 'B', NULL),
('q93', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which of the following tag defines the progress of a task?</b></h4>\r\n 	<input type=\"radio\" name=\"q93\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;meter></label><br>\r\n 	<input type=\"radio\" name=\"q93\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;progress></label><br>\r\n 	<input type=\"radio\" name=\"q93\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;gauge></label><br>\r\n 	<input type=\"radio\" name=\"q93\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;wbr></label><br>\r\n</div>', 'B', NULL),
('q94', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which of the following defines graphic drawing using JavaScript?</b></h4>\r\n 	<input type=\"radio\" name=\"q94\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;class></label><br>\r\n 	<input type=\"radio\" name=\"q94\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;graphics></label><br>\r\n 	<input type=\"radio\" name=\"q94\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;draw></label><br>\r\n 	<input type=\"radio\" name=\"q94\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;canvas></label><br>\r\n</div>', 'D', NULL),
('q95', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>How title attribute works?</b></h4>\r\n 	<input type=\"radio\" name=\"q95\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Displays text when hovering over the element</label><br>\r\n 	<input type=\"radio\" name=\"q95\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Focus text when hovering over the element</label><br>\r\n 	<input type=\"radio\" name=\"q95\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Highlight text when hovering over the element</label><br>\r\n 	<input type=\"radio\" name=\"q95\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;Zoom in and zoom out text when hovering over the element</label><br>\r\n</div>', 'A', NULL),
('q96', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>For smaller text which element is used?</b></h4>\r\n 	<input type=\"radio\" name=\"q96\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;&lt;tiny></label><br>\r\n 	<input type=\"radio\" name=\"q96\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;&lt;min></label><br>\r\n 	<input type=\"radio\" name=\"q96\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;&lt;em></label><br>\r\n 	<input type=\"radio\" name=\"q96\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;&lt;small></label><br>\r\n</div>', 'D', NULL),
('q97', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which method is used to get user’s position in HTML5 geolocation API?</b></h4>\r\n 	<input type=\"radio\" name=\"q97\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;getCurrentPosition()</label><br>\r\n 	<input type=\"radio\" name=\"q97\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;getDirectPosition()</label><br>\r\n 	<input type=\"radio\" name=\"q97\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;pos()</label><br>\r\n 	<input type=\"radio\" name=\"q97\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;getDirection</label><br>\r\n</div>', 'A', NULL),
('q98', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which of the following is not the software for editing images?</b></h4>\r\n 	<input type=\"radio\" name=\"q98\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;Adobe Fireworks</label><br>\r\n 	<input type=\"radio\" name=\"q98\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;Paintshop Pro</label><br>\r\n 	<input type=\"radio\" name=\"q98\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;Paint.net</label><br>\r\n 	<input type=\"radio\" name=\"q98\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;SplashUp</label><br>\r\n</div>', 'D', NULL),
('q99', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>Which scheme is used for secure HyperText Transfer Protocol?</b></h4>\r\n 	<input type=\"radio\" name=\"q99\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;ftp</label><br>\r\n 	<input type=\"radio\" name=\"q99\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;http</label><br>\r\n 	<input type=\"radio\" name=\"q99\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;file</label><br>\r\n 	<input type=\"radio\" name=\"q99\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;https</label><br>\r\n</div>', 'D', NULL),
('q100', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n 	<h4><b>What is the default value of type attribute of &lt;input> element?</b></h4>\r\n 	<input type=\"radio\" name=\"q100\" value=\"A\">\r\n 	<label>&nbsp;&nbsp;text</label><br>\r\n 	<input type=\"radio\" name=\"q100\" value=\"B\">\r\n 	<label>&nbsp;&nbsp;password</label><br>\r\n 	<input type=\"radio\" name=\"q100\" value=\"C\">\r\n 	<label>&nbsp;&nbsp;number</label><br>\r\n 	<input type=\"radio\" name=\"q100\" value=\"D\">\r\n 	<label>&nbsp;&nbsp;file</label><br>\r\n</div>', 'A', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Javascript_questions`
--

CREATE TABLE `Javascript_questions` (
  `id` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `explaination` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `java_questions`
--

CREATE TABLE `java_questions` (
  `id` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `explaination` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `java_questions`
--

INSERT INTO `java_questions` (`id`, `question`, `answer`, `explaination`) VALUES
('q1', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n		 	<h4><b>What is java ?</b></h4><div class=\'qimg\'><img src=\"../images/IMG-20200201-WA0003.jpeg\" alt=\"question image\" style=\"width:20%;\"></div><input type=\"radio\" name=\"q1\" value=\"A\">\r\n				 	<label>&nbsp;&nbsp;Programming language</label><br>\r\n				 	<input type=\"radio\" name=\"q1\" value=\"B\">\r\n				 	<label>&nbsp;&nbsp;Markup language</label><br>\r\n				 	<input type=\"radio\" name=\"q1\" value=\"C\">\r\n				 	<label>&nbsp;&nbsp;Both A and B</label><br>\r\n				 	<input type=\"radio\" name=\"q1\" value=\"D\">\r\n				 	<label>&nbsp;&nbsp;None of these</label><br>\r\n				</div>', 'A', 'Java is a programming language from oracle.'),
('q2', '<div class=\"w3-padding w3-khaki w3-margin\">\r\n		 	<h4><b>Is Java object oriented ?</b></h4><input type=\"radio\" name=\"q2\" value=\"A\">\r\n				 	<label>&nbsp;&nbsp;True</label><br>\r\n				 	<input type=\"radio\" name=\"q2\" value=\"B\">\r\n				 	<label>&nbsp;&nbsp;False</label><br>\r\n				 	<input type=\"radio\" name=\"q2\" value=\"C\">\r\n				 	<label>&nbsp;&nbsp;Not sure</label><br>\r\n				 	<input type=\"radio\" name=\"q2\" value=\"D\">\r\n				 	<label>&nbsp;&nbsp;None of these</label><br>\r\n				</div>', 'A', 'Java is object oriented programming language developed by sun microsystem.');

-- --------------------------------------------------------

--
-- Table structure for table `list_of_test`
--

CREATE TABLE `list_of_test` (
  `id` int(11) NOT NULL,
  `TestSeriesName` varchar(75) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_of_test`
--

INSERT INTO `list_of_test` (`id`, `TestSeriesName`) VALUES
(1, 'html'),
(38, 'java'),
(41, 'php'),
(42, 'Javascript');

-- --------------------------------------------------------

--
-- Table structure for table `otp_details`
--

CREATE TABLE `otp_details` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `otp` int(6) NOT NULL,
  `isused` int(1) NOT NULL DEFAULT 0,
  `gtime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `php_questions`
--

CREATE TABLE `php_questions` (
  `id` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `explaination` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `score_card`
--

CREATE TABLE `score_card` (
  `id` int(11) DEFAULT NULL,
  `html` int(11) DEFAULT NULL,
  `java` int(11) DEFAULT 0,
  `php` int(11) DEFAULT 0,
  `Javascript` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `score_card`
--

INSERT INTO `score_card` (`id`, `html`, `java`, `php`, `Javascript`) VALUES
(22, NULL, 0, 0, 0),
(15, 27, 0, 0, 0),
(25, 1, 0, 0, 0),
(27, NULL, 0, 0, 0),
(29, 3, 0, 0, 0),
(30, 3, 0, 0, 0),
(31, 26, 0, 0, 0),
(33, NULL, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `comp_code` (`comp_code`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `html_questions`
--
ALTER TABLE `html_questions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `Javascript_questions`
--
ALTER TABLE `Javascript_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `java_questions`
--
ALTER TABLE `java_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_of_test`
--
ALTER TABLE `list_of_test`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TestSeriesName` (`TestSeriesName`);

--
-- Indexes for table `otp_details`
--
ALTER TABLE `otp_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `php_questions`
--
ALTER TABLE `php_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score_card`
--
ALTER TABLE `score_card`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `list_of_test`
--
ALTER TABLE `list_of_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `otp_details`
--
ALTER TABLE `otp_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
