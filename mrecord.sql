-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2017 at 12:30 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mrecord`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`, `role`, `status`) VALUES
(1, 'info@synergywebdesigners.com', 'admin', 'Admin', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE IF NOT EXISTS `airline` (
`id` int(11) NOT NULL,
  `airline` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`id`, `airline`, `name`, `description`) VALUES
(1, 'IndiGoAirlines', 'Nima Test', '<p>nice</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `airline_list`
--

CREATE TABLE IF NOT EXISTS `airline_list` (
`id` int(11) NOT NULL,
  `airline` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `airline_list`
--

INSERT INTO `airline_list` (`id`, `airline`, `description`) VALUES
(1, 'AirAsia', ''),
(2, 'AirIndia', ''),
(3, 'BritishAirways', ''),
(4, 'EasyJet', ''),
(5, 'Emirates', ''),
(6, 'GoAir', ''),
(7, 'IndiGoAirlines', ''),
(8, 'JetAirways', ''),
(9, 'JetBlue', ''),
(10, 'Skylanes', ''),
(11, 'TataAirlines', '');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
`id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `org` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `username`, `message`, `org`, `created`) VALUES
(1, '9310203050', 'try', 'Vee Bee Tours & Travels', '30 Jan 06 :39 pm');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
`id` int(11) NOT NULL,
  `eto` varchar(100) NOT NULL,
  `efrom` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `eto`, `efrom`, `place`, `title`, `description`, `type`) VALUES
(1, '', '', '', '', '<h2>2017</h2>\r\n\r\n<h4>JANUARY</h4>\r\n\r\n<div>National</div>\r\n\r\n<div>\r\n<div>6-8 - Chennai - TTF</div>\r\n\r\n<div>11-13 - Pune - Destination Britain roadwhow</div>\r\n\r\n<div>12-14 -&nbsp;Kochi - IITM Cochin</div>\r\n\r\n<div>9 -&nbsp;Kolkata - Best of Auspalia workshop</div>\r\n\r\n<div>19-21 -&nbsp;Kochi - IITM Kochi</div>\r\n\r\n<div>19-21 - Nagpur - Global Panorama Showcase (GPS)</div>\r\n\r\n<div>30 -&nbsp;Chennai - South African Tourism roadshow</div>\r\n\r\n<div>31 -&nbsp;Bangalore - South African Tourism roadshow</div>\r\n</div>\r\n\r\n<div>International</div>\r\n\r\n<div>\r\n<div>16-20 - MBS, Singapore - ASEAN Tourism Forum (ATF)</div>\r\n\r\n<div>18-22 -&nbsp;Madrid, Spain - FITUR (FITUR)</div>\r\n\r\n<div>23 -&nbsp;Bangkok - Thailand Tourism Forum</div>\r\n\r\n<div>26-29 - Istanbul, Turkey - EMTT</div>\r\n</div>\r\n\r\n<h4><strong>FEBRUARY</strong></h4>\r\n\r\n<div>National</div>\r\n\r\n<div>\r\n<div>1Feb - New Delhi - South African Tourism roadshow</div>\r\n\r\n<div>3Feb -&nbsp;Mumbai - South African Tourism roadshow</div>\r\n\r\n<div>7Feb -&nbsp;Mumbai - Auspian Tourism Board&nbsp; roadshow</div>\r\n\r\n<div>8 Feb -&nbsp;Chennai - Auspian Tourism Board&nbsp; roadshow</div>\r\n\r\n<div>8-9 Feb -&nbsp;Mumbai - CAPA India Aviation Summit</div>\r\n\r\n<div>9 Feb -&nbsp;New Delhi - Toursim&nbsp; Board roadshow</div>\r\n\r\n<div>9-11 Feb&nbsp;-&nbsp;Mumbai - IITT 2017</div>\r\n\r\n<div>10 Feb -&nbsp;Mumbai - Visit Indonesia roadshow</div>\r\n\r\n<div>13 Feb -&nbsp;New Delhi - Visit Indonesia roadshow</div>\r\n\r\n<div>15-17 Feb -&nbsp;New Delhi - SATTE</div>\r\n\r\n<div>21-23 Feb -&nbsp;Mumbai - OTM</div>\r\n\r\n<div>24 Feb - &nbsp;Mumbai - Philippines roadshow</div>\r\n\r\n<div>24-26</div>\r\n\r\n<div>Kolkata</div>\r\n\r\n<div>IITM Kolkata</div>\r\n\r\n<div>25-28</div>\r\n\r\n<div>Goa</div>\r\n\r\n<div>Goa Carnival</div>\r\n\r\n<div>27</div>\r\n\r\n<div>New Delhi</div>\r\n\r\n<div>Philippines roadshow</div>\r\n\r\n<div>27 Feb &ndash; 1 Mar</div>\r\n\r\n<div>New Delhi</div>\r\n\r\n<div>TTF</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>28 Feb &ndash; 2 Mar</div>\r\n\r\n<div>Gurugarm</div>\r\n\r\n<div>Phocuswright india</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>International</div>\r\n\r\n<div>\r\n<div>7-9</div>\r\n\r\n<div>Abu Dhabi</div>\r\n\r\n<div>IBTM Arabia</div>\r\n\r\n<div>16-18</div>\r\n\r\n<div>Istanbul, Turkey</div>\r\n\r\n<div>World Tourism From Global Meeting</div>\r\n\r\n<div>21-22</div>\r\n\r\n<div>Melbourne, Auspalia</div>\r\n\r\n<div>AIME 2017</div>\r\n\r\n<div>22-23</div>\r\n\r\n<div>Olympia, London</div>\r\n\r\n<div>pavel Technology Europe</div>\r\n\r\n<div>22-23</div>\r\n\r\n<div>Grand Hall Olympia, London</div>\r\n\r\n<div>Business pavel Show</div>\r\n\r\n<div>22-24</div>\r\n\r\n<div>Istanbul, Turkey</div>\r\n\r\n<div>ACE of M.I.C.E</div>\r\n\r\n<div>23-25</div>\r\n\r\n<div>Guangzhou, China</div>\r\n\r\n<div>Guangzhou International pavel Fair (GITF)</div>\r\n\r\n<div>27 Feb &ndash; 1 Mar</div>\r\n\r\n<div>Kyoto, Japan</div>\r\n\r\n<div>ILTM Japan</div>\r\n</div>\r\n\r\n<h4>March</h4>\r\n\r\n<div>National</div>\r\n\r\n<div>\r\n<div>12-14</div>\r\n\r\n<div>Goa</div>\r\n\r\n<div>India pavel Mart</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>22-23</div>\r\n\r\n<div>New Delhi</div>\r\n\r\n<div>FICCI pavel &amp; Hospitality Tech Conclave</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>International</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>1-2</div>\r\n\r\n<div>Olympia, London</div>\r\n\r\n<div>International Confex 2017</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>8-12</div>\r\n\r\n<div>Berlin, Germany</div>\r\n\r\n<div>ITB Berlin</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>12-15</div>\r\n\r\n<div>Istanbul, Turkey</div>\r\n\r\n<div>OTOAI Turkey EduCon</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>14-16</div>\r\n\r\n<div>Moscow, Russia</div>\r\n\r\n<div>MITT<u>&nbsp;Mitt</u></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>21-23</div>\r\n\r\n<div>Shanghai, China</div>\r\n\r\n<div>IT&amp;CM China2017</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>26-29</div>\r\n\r\n<div>Hyderabad</div>\r\n\r\n<div>Connection Luxury</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>29-31</div>\r\n\r\n<div>Beijing, China</div>\r\n\r\n<div>COTTM&nbsp; Cottm</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>29-31</div>\r\n\r\n<div>Kiev, Ukraine</div>\r\n\r\n<div><u>Uitt</u></div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<h4>APRIL</h4>\r\n\r\n<div>National</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>3</div>\r\n\r\n<div>Ahmedabad</div>\r\n\r\n<div>Ras AI Khaimah rodshow</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>4</div>\r\n\r\n<div>Mumbai</div>\r\n\r\n<div>Hotel Operation Summit India</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>4</div>\r\n\r\n<div>Mumbai</div>\r\n\r\n<div>Ras AI Khaimah rodshow</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>5</div>\r\n\r\n<div>Bengaluru</div>\r\n\r\n<div>Best of Auspalia rodshow</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>5-6</div>\r\n\r\n<div>Mumbai</div>\r\n\r\n<div>Hotel Investment Conference South Asia</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>6</div>\r\n\r\n<div>New Delhi</div>\r\n\r\n<div>Ras AI Khaimah rodshow</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>7</div>\r\n\r\n<div>Hyderabad</div>\r\n\r\n<div>Best of Auspalia rodshow</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>8-9</div>\r\n\r\n<div>New Delhi</div>\r\n\r\n<div>pavel Experiential Show</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>11</div>\r\n\r\n<div>Chennai</div>\r\n\r\n<div>Best of Auspalia rodshow</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>23-25</div>\r\n\r\n<div>Jaipur</div>\r\n\r\n<div>Great India pavel Bazaar 2017</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>International</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>2-4</div>\r\n\r\n<div>Milan, Italy</div>\r\n\r\n<div>BIT Milan</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>6-8</div>\r\n\r\n<div>Baku, Azerbaijan</div>\r\n\r\n<div>Azerbaijan International Aiff Tourism Fair (AITF)</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>13-15</div>\r\n\r\n<div>Novosibirsk, Russia, SITT</div>\r\n\r\n<div>Sitt</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>19-21</div>\r\n\r\n<div>Almaty, Kazakhastan</div>\r\n\r\n<div>Kazakhastan International&nbsp; Tourism Fair (KITF)</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>20-23</div>\r\n\r\n<div>Shanghai, China</div>\r\n\r\n<div>Shanghai World pavel Fair 2o17</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>22-24</div>\r\n\r\n<div>Xi an, China</div>\r\n\r\n<div>CXSRITE</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>24-27</div>\r\n\r\n<div>Dubai, UAE</div>\r\n\r\n<div>Arabian pavel Mart 2017(ATM)</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>25-27</div>\r\n\r\n<div>Singapore</div>\r\n\r\n<div>Digital pavel Summit APAC</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>26-27</div>\r\n\r\n<div>Bangkok, Thailand</div>\r\n\r\n<div>WTTC Global Summit 2017</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>30Apr-2 Mar</div>\r\n\r\n<div>Sydney, Auspalia</div>\r\n\r\n<div>Annual Meeting &amp; Events Induspy Conference</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<h4>MAY</h4>\r\n\r\n<div>International</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>9-12</div>\r\n\r\n<div>Calgary, Canada</div>\r\n\r\n<div>Rendez -vous Canada</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>9-12</div>\r\n\r\n<div>Auckland, New Zealand</div>\r\n\r\n<div>pEN 2017</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>10-12</div>\r\n\r\n<div>Shanghai, China</div>\r\n\r\n<div>ITB China 2017</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>14-18</div>\r\n\r\n<div>Sydney, Auspalia</div>\r\n\r\n<div>Auspalian Tourism Exchange (ATE)</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>16-18</div>\r\n\r\n<div>Frankfurt, Germany</div>\r\n\r\n<div>IMEX</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>16-18</div>\r\n\r\n<div>Amsterdam, Netherland</div>\r\n\r\n<div>Phocuswright Europe</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>16-18</div>\r\n\r\n<div>Durban, South Africa</div>\r\n\r\n<div>INDABA</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>17-19</div>\r\n\r\n<div>Penang Malaysia</div>\r\n\r\n<div>WTM Connect Asia</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>18-21</div>\r\n\r\n<div>Negombo, Sri Lanka</div>\r\n\r\n<div>PATA Annual Summit 2017</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>21-24</div>\r\n\r\n<div>Ireland</div>\r\n\r\n<div>Connections Luxury</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>31 May- 1 Jun</div>\r\n\r\n<div>Auckland New Zealand</div>\r\n\r\n<div>CINZ Meeting 2017</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<h4>JUNE</h4>\r\n\r\n<div>International</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>4-6</div>\r\n\r\n<div>Cancun, Mexico</div>\r\n\r\n<div>IATA AGM 2017</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>5-8</div>\r\n\r\n<div>Shanghai, China</div>\r\n\r\n<div>ILTM Asia</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>13-15</div>\r\n\r\n<div>Olympia Grand London UK</div>\r\n\r\n<div>The Meeting Show</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>15-18</div>\r\n\r\n<div>HKCEC, Hong Kong</div>\r\n\r\n<div>International pavel Expo (ITE)</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>18-21</div>\r\n\r\n<div>Quito, Ecuador</div>\r\n\r\n<div>Connections Meeting</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>23-25</div>\r\n\r\n<div>China National Convention Center, Beijing, China</div>\r\n\r\n<div>Beijing international Tourism Expo (BITE)</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<h4>JULY</h4>\r\n\r\n<div>National</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>8-9</div>\r\n\r\n<div>New&nbsp; Delhi</div>\r\n\r\n<div>pavel Wedding show</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>13-15</div>\r\n\r\n<div>Ahmedabad</div>\r\n\r\n<div>Global Panorama Showcase(GPS)</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>14-16</div>\r\n\r\n<div>Chennai</div>\r\n\r\n<div>IITM</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>20-22</div>\r\n\r\n<div>Chandigarh</div>\r\n\r\n<div>Global Panorama Showcase(GPS)</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>21-23</div>\r\n\r\n<div>Bengaluru</div>\r\n\r\n<div>IITM</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>27-29</div>\r\n\r\n<div>Kolkata</div>\r\n\r\n<div>Global Panorama Showcase (GPS)</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>International</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>15-19</div>\r\n\r\n<div>Boston, USA</div>\r\n\r\n<div>GBTA Convention</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<h4>August</h4>\r\n\r\n<div>National</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>3-5</div>\r\n\r\n<div>Kochi</div>\r\n\r\n<div>Global Panorama Showcase (GPS)</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>10-12</div>\r\n\r\n<div>Pune</div>\r\n\r\n<div>Global Panorama Showcase (GPS)</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>International</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>22-23</div>\r\n\r\n<div>Tokyo&nbsp; Japan</div>\r\n\r\n<div>ACTE Conference</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>29-31</div>\r\n\r\n<div>Florida, USA</div>\r\n\r\n<div>La Cita</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<h4>SEPTEMBER</h4>\r\n\r\n<div>National</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>2-3</div>\r\n\r\n<div>New Delhi</div>\r\n\r\n<div>pavel Technology Show</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>22-24</div>\r\n\r\n<div>Mumbai</div>\r\n\r\n<div>IITM</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>International</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>13-15</div>\r\n\r\n<div>Macau</div>\r\n\r\n<div>PATA pavel Mart 2017</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>21-24</div>\r\n\r\n<div>Tokyo, Japan</div>\r\n\r\n<div>JATA Tourism Expo</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>26-28</div>\r\n\r\n<div>Bangkok, Thailand</div>\r\n\r\n<div>IT&amp;CMA and CTW Asia Pacific 2017</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>26-29</div>\r\n\r\n<div>Paris, France</div>\r\n\r\n<div>IFTM Top Resa</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>27-29</div>\r\n\r\n<div>Astana</div>\r\n\r\n<div>Astana, Kazakhstan Astana Leisure</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<h4>OCTOBER</h4>\r\n\r\n<div>International</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>11-13</div>\r\n\r\n<div>London, UK</div>\r\n\r\n<div>CARA- ACTIV Global Summit</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>25-27</div>\r\n\r\n<div>Marina Bay Sands Singapore</div>\r\n\r\n<div>ITB Asia 2017</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>29 Oct- 1 Nov</div>\r\n\r\n<div>Portugal</div>\r\n\r\n<div>Connection Wellbeing</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<h4>NOVEMBER</h4>\r\n\r\n<div>National</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>24-26</div>\r\n\r\n<div>Pune</div>\r\n\r\n<div>IITM</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<div>International</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>6-8</div>\r\n\r\n<div>London, UK</div>\r\n\r\n<div>WTM London</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>12-15</div>\r\n\r\n<div>Prague, Czech Republic</div>\r\n\r\n<div>ICCA Congress</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>19-22</div>\r\n\r\n<div>Tuscany, Italy</div>\r\n\r\n<div>Connection Meeting</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<h4>DECEMBER</h4>\r\n\r\n<div>National</div>\r\n\r\n<div>\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>1-3</div>\r\n\r\n<div>Hyderabad</div>\r\n\r\n<div>IITM</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>2-3</div>\r\n\r\n<div>New Delhi</div>\r\n\r\n<div>pavel Business Show</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
`id` int(11) NOT NULL,
  `hotel` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `hotel`, `name`, `description`) VALUES
(1, 'Frhi Hotels & Resorts', 'FRHI HOTLES & RESORTS', '<p>M- 56 M Block Market Greater kailash Part 2 New Delhi- 1100048</p>\r\n\r\n<p>Tel- 91 9999613488</p>\r\n\r\n<p>Email- tekla. Maira@frhi.com</p>\r\n\r\n<p>Website- <a href="http://www.frhi.com">www.frhi.com</a></p>\r\n\r\n<p>Mr. Takla Maira, Director Global Sales</p>\r\n'),
(2, 'Hilton', 'HILTON HOTELS', '<p>5<sup>th</sup> Floor, Building No. 9A, DLF Cyber City, DLF Phase- III, Gurgaon, 122002, Haryana</p>\r\n\r\n<p>Tel- 0124 4822622 Email: <a href="mailto:pariva.rustagi@hilton.com,suhail.bhatia@hilton.com">pariva.rustagi@hilton.com,suhail.bhatia@hilton.com</a></p>\r\n\r\n<p>Website: <a href="http://hilton.com">http://hilton.com</a></p>\r\n\r\n<p>Mr. Pariva Rustagi Regional Director of Sales-&nbsp; India (9910301572)</p>\r\n\r\n<p>Mr. Suhail Bhatia Director of Sales- ISO India (9821795175)</p>\r\n\r\n<p>Contact- Pooja Singh, Director of Sales- Leisure &amp; MICE, India</p>\r\n\r\n<p>Mobile- 7728897403 E-mail- <a href="mailto:pooja.singh2@hilton.com">pooja.singh2@hilton.com</a></p>\r\n'),
(3, 'Hyatt', 'HYATT HOTLES', '<p>New Delhi NCR NH8, Sector 83, Gorgoan-122004 Haryana</p>\r\n\r\n<p>Tel- 0124 6281234</p>\r\n\r\n<p>Email: <a href="mailto:suman.julka@hyatt.com">suman.julka@hyatt.com</a></p>\r\n\r\n<p>Website: <a href="http://gorgoan">http://gorgoan</a>. regency.hyatt.com</p>\r\n\r\n<p>Mr. Suman Julka, Director of Sales and Marketing (8130993030)</p>\r\n'),
(4, 'Intercontinental Hotels Group', 'INTERCONTINENTAL HOTELS GROUP (IHG)', '<p>11<sup>th</sup> Floor, Building no. 10 DLF Cyber City, Tower C DLF Phase II Gurgaon-122002 Haryana</p>\r\n\r\n<p>Tel- 91 1244551172</p>\r\n\r\n<p><a href="mailto:Email-anil.verma@ihg,com">Email-anil.verma@ihg,com</a></p>\r\n\r\n<p>Website- <a href="http://www.ihg.com">www.ihg.com</a></p>\r\n\r\n<p>Jaideep Khanna, Director Regional Sales, South West Asia Global Sales &amp; National Sales</p>\r\n\r\n<p>Mr. Anil Verma, Director National Sales (91 9821400773/ 91 9560956161)</p>\r\n'),
(6, 'Starwood', 'STARWOOD SALES ORGANIZATION', '<p>Booth No: E410</p>\r\n\r\n<p>Le Meridien New Delhi, Windsor Place, New Delhi 110001</p>\r\n\r\n<p>Tel: +91 1123711128</p>\r\n\r\n<p>E-mail id: <a href="mailto:barun.gupta@starwoodhotels.com">barun.gupta@starwoodhotels.com</a></p>\r\n\r\n<p>Website: <a href="http://www.starwoodhotels.com">www.starwoodhotels.com</a></p>\r\n\r\n<p>Mr. Barun Gupta, Account Director (91 9958696662)</p>\r\n'),
(7, 'Taj', 'TAJ HOTELS RESORTS & PALACES', '<p>Booth No: E313</p>\r\n\r\n<p>Oxford House, NF Road Colaba Mumbai- 400001 Maharashtra</p>\r\n\r\n<p>Tel- 91 9820099778</p>\r\n\r\n<p>Email- <a href="mailto:suku.verghese@tahhotels.com">suku.verghese@tahhotels.com</a>, <a href="mailto:hansy.dhawan@tajhotels.com">hansy.dhawan@tajhotels.com</a></p>\r\n\r\n<p>Mr. Suku Verghese, AVP &ndash; Sales (919820099778</p>\r\n\r\n<p>Mr. Hansy Dhawan, Sales Manager (91 9953715581)</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_list`
--

CREATE TABLE IF NOT EXISTS `hotel_list` (
`id` int(11) NOT NULL,
  `hotel` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `hotel_list`
--

INSERT INTO `hotel_list` (`id`, `hotel`, `description`) VALUES
(1, 'Atlantis', ''),
(2, 'BurjAlArab', ''),
(3, 'FairmontHotel', ''),
(4, 'Hyatt', ''),
(5, 'Hilton', ''),
(6, 'IntercontinentalHotelsGroup', ''),
(7, 'Jumeirah', ''),
(8, 'Starwood', ''),
(9, 'TheOberoi', ''),
(10, 'Taj', ''),
(11, 'FrhiHotels&Resorts', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picture` mediumtext NOT NULL,
  `message` mediumtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `picture`, `message`, `created`, `updated`) VALUES
(6, 'Air India to start Delhi-Kochi-Dubai from Feb 1', 'uploads/5cc0d721a6891a8f356ae6233f6793aeair-india-logo-e1483593018580-220x165.jpg', '<p>Air India has launched a new flight from Delhi to Kochi to Dubai, which would be starting from February 1, 2017, revealed Ashwani Lohani, CMD, Air India. Talking at an informal meeting, he said, &ldquo;The Delhi-Kochi sector is an important an busy sector and hence the new flight has been started. This would further offer connection to Dubai, allowing people from Kochi to go to Dubai, which too is a popular route.&rdquo; Other than that he revealed that in the international sector Air India will be starting a total of 6 routes and around 22 flights in the regional sector, which would eventually come under the government&rsquo;s Regional Connectivity Scheme.</p>\r\n\r\n<p><img src="http://tourismbreakingnews.com/wp-content/uploads/2017/01/air-india-logo-e1483593018580-220x165.jpg" style="width:220px" /></p>\r\n', '2017-01-30 08:49:35', '0000-00-00 00:00:00'),
(9, 'Meeting', '', '<p>Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy.</p>\r\n\r\n<p>Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy.</p>\r\n\r\n<p>Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy.</p>\r\n\r\n<p>Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy.</p>\r\n\r\n<p>Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy.</p>\r\n\r\n<p>Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy&nbsp;Dummy Dummy.</p>\r\n', '2017-01-30 07:04:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notisboard`
--

CREATE TABLE IF NOT EXISTS `notisboard` (
`id` int(11) NOT NULL,
  `detail` mediumtext NOT NULL,
  `day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `notisboard`
--

INSERT INTO `notisboard` (`id`, `detail`, `day`) VALUES
(1, '<p>Air India has launched a new flight from Delhi to Kochi to Dubai, which would be starting from February 1, 2017, revealed Ashwani Lohani, CMD, Air India. Talking at an informal meeting, he said, &ldquo;The Delhi-Kochi sector is an important an busy sector and hence the new flight has been started. This would further offer connection to Dubai, allowing people from Kochi to go to Dubai, which too is a popular route.&rdquo; Other than that he revealed that in the international sector Air India will be starting a total of 6 routes and around 22 flights in the regional sector, which would eventually come under the government&rsquo;s Regional Connectivity Scheme.</p>\r\n', '2017-01-30 09:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE IF NOT EXISTS `organisation` (
`org_id` int(11) NOT NULL,
  `org_name` varchar(100) NOT NULL,
  `org_desc` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `organisation`
--

INSERT INTO `organisation` (`org_id`, `org_name`, `org_desc`) VALUES
(1, 'Meetings', ''),
(2, 'Conference ', ''),
(3, 'Incentives', ''),
(4, 'Exhibitions', ''),
(5, 'Others', '');

-- --------------------------------------------------------

--
-- Table structure for table `ownership`
--

CREATE TABLE IF NOT EXISTS `ownership` (
`o_id` int(11) NOT NULL,
  `o_name` varchar(100) NOT NULL,
  `o_desc` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ownership`
--

INSERT INTO `ownership` (`o_id`, `o_name`, `o_desc`) VALUES
(1, 'Sole Prop', ''),
(2, 'Partnership', ''),
(3, 'PVT LTD', ''),
(4, 'LLP', ''),
(5, 'Ltd', '');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE IF NOT EXISTS `record` (
`m_id` int(11) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `m_org` varchar(100) NOT NULL,
  `m_trade` varchar(100) NOT NULL,
  `m_date` varchar(100) NOT NULL,
  `m_ownership` varchar(100) NOT NULL,
  `m_add` varchar(100) NOT NULL,
  `m_tele` varchar(100) NOT NULL,
  `m_mob` varchar(100) NOT NULL,
  `m_ofmail` varchar(100) NOT NULL,
  `m_permail` varchar(100) NOT NULL,
  `m_web` varchar(100) NOT NULL,
  `m_branche` varchar(100) NOT NULL,
  `m_iata` varchar(100) NOT NULL,
  `m_turnover` varchar(100) NOT NULL,
  `m_pan` varchar(100) NOT NULL,
  `m_taxno` varchar(100) NOT NULL,
  `m_orgid` varchar(100) NOT NULL,
  `m_wd` varchar(100) NOT NULL,
  `m_first_destination` varchar(100) NOT NULL,
  `m_second_destination` varchar(100) NOT NULL,
  `m_no_group` varchar(100) NOT NULL,
  `m_tradew` varchar(100) NOT NULL,
  `m_fauthorized` varchar(100) NOT NULL,
  `m_sauth` varchar(100) NOT NULL,
  `m_linkedin` varchar(100) NOT NULL,
  `m_reference` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`m_id`, `m_name`, `m_org`, `m_trade`, `m_date`, `m_ownership`, `m_add`, `m_tele`, `m_mob`, `m_ofmail`, `m_permail`, `m_web`, `m_branche`, `m_iata`, `m_turnover`, `m_pan`, `m_taxno`, `m_orgid`, `m_wd`, `m_first_destination`, `m_second_destination`, `m_no_group`, `m_tradew`, `m_fauthorized`, `m_sauth`, `m_linkedin`, `m_reference`, `username`, `password`) VALUES
(14, 'Ram Kumar', 'HRA Holidays', 'Aditya Grand Vacation', '2017-01-12', 'Ltd', 'B-70,Sec-64', '123232131221', '9818004759', 'rm@agvacation.com', 'kumar.mvt003@gmail.com', 'http://www.agvacation.com', 'Agra', '', '50 Lakh', 'AAHFH7663P', '0', 'Meetings, Conference', 'Asia, SE Asia', 'Singapore', 'Dubai', 'No Association', 'No Association', 'Mr. Ram Kumar', 'Mr. Mohit Kumar', '', '  ', '9818004759', 'nima'),
(15, 'Varinder Narang ', 'V3 Events Pvt ltd', 'V3 Events Pvt Ltd ', '2009-09-10', 'Pvt Ltd', '313 Ansal Classic Towers, Rajouri Garden ,New Delhi ', '911164642222', '9201232132', 'v3entertainments@gmail.com', 'v3entertainments@gmail.com', 'http://www.v3events.in', 'Mumbai', 'Non Iata', '20 crores', 'AADCV1009Q', 'AADCV1009QSD001', 'Meetings, Conference, Incentives, Others', 'Asia, SE Asia', 'USA', 'Australia', 'EEMA', 'EEMA', 'Ms Heena \r\nDirector\r\nheenav3events@gmail.com ', 'Ms Romani \r\nEvent Manager\r\nromaniv3events@gmail.com', 'http://synergywebdesigners.com', '  Mr Gajesh Girdhar ', '9507169295', 'nima'),
(16, 'RAKESH TOMAR', 'YELLOW PLANET HOLIDAYS PVT LTD', '', '23-05-2014', 'Pvt Ltd', 'E-7 Madhuban Palace Sector-23 Rajnagar Ghaziabad-201002 (UP)- Delhi NCR INDIA ', '0120 2783817,18', '9818923268', 'rakesh.t@yellowplanet.in', 'rakeshtomar1@hotmail.com', 'www.yellowplanet.in', 'no', 'no', '10', 'AAACY6777H', 'AAACY6777HSD001', 'Meetings, Conference, Incentives', 'Asia', 'THILAND', 'DUBAI', 'adtoi', 'adtoi', 'RAKESH TOMAR', 'NAVIN AGARWAL', 'https://www.linkedin.com/?trk=nav_logo', '', '9818923268', 'nima'),
(17, 'ANIL BANSAL', 'DEVRAHA INTERNATIONAL', 'HOLIDAY DESIRE', '08-10-2013', 'Partnership', '32/101, WAZIRPUR COMMERCIAL COMPLEX, RING ROAD, DELHI -110052', '1142474755', '9818993311', 'info@holidaydesire.com', 'anilbansal@holidaydesire.com', 'www.holidaydesire.com', '', '', 'Rs. 20 million', 'AAJFD6529Q', 'N/A', 'Incentives', 'Asia', 'EUROPE', 'AUSTRALIA', 'N/A', 'N/A', 'ANIL BANSAL', 'SUSHIL BANSAL', '', '', '9818993311', 'nima'),
(18, 'Dipankar Banerjee', 'Veho Travels pvt. ltd.', '', '21-09-2015', 'Pvt Ltd', '2 NC Dutta sarany 5th floor room no. 586, kolkata 700001', '033-65250018', '9674663347', 'info@vehotravels.com', 'dbanerjee@vehotravels.com', 'www.vehotravels.com', 'KOLKATA', '', '2.5 CR', 'AAFCV2468P', 'AAFCV2468PSD001', 'Conference, Incentives', 'Asia, SE Asia, Americas, Africa, EU, UK, CIS/Russian Fed', 'Dubai, UAE', 'Thailand', 'TAFI', 'TAFI', 'Name: Dipankar Banerjee \nDesignation: Director\nMobile: +91 9674663347\nEmail: dbanerjee@vehotravels.c', 'Name: Sujay Mahato\nDesignation: Domestic Head\nMobile:  +91 8016188489\nEmail: smahato@vehotravels.com', '', 'INDIGO\nSPICEJET\nITC HOTELS\nHYATT HOTELS\nBONTON TOURS\nINTERSIGHT TOURS & TRAVELS', '9674663347', 'admin'),
(19, 'Dr Ranganath K B', 'One Travel Park Services Private Limited', 'One Travel Park Services Private Limited', '07-08-2014', 'Partnership', '1299-C Konda Pride Road No. 1 Jubilee Hills Hyderabad - 500033', '4022222229', '9948998765', 'ranganath@onetravelpark.com', 'rangkb@yahoo.com', 'www.onetravelpark.com', '', '', '3 Crores', 'AAFCG7057H', 'AAFCG7057HSD001', 'Meetings, Conference, Incentives, Others', 'Asia, SE Asia, UK', 'Istanbul, Turkey', 'Dubai, UAE', 'Interserve', '', 'Dr.Ranganath K B\nManager\nTel.:7032999704\nemail:ranganath@onetravelpark.com', 'Mr.P.Anand Kumar\nManager - Leisure & Corporate Sales\nTel.: 8885047070\nemail: ananad@onetravelpark.co', '', '', '', ''),
(20, 'NITIN SURI', 'LAVIDA TRAVELS', '', '04-01-2012', 'Sole Prop', 'NO.304, A-18, 3RD FLOOR, ?RAM HOUSE? OPPOSITE BERCOS RESTAURANT, MIDDLE CIRCLE, CONNAUGHT PLACE, NEW', '011-23327062, 23320164, 43568353', '9810293747', 'nitin@lavidatravels.com', 'nitin_suri@yahoo.com', 'www.lavidatravels.com', '', '14-3-21532', '10 CR', 'AXJPS3676C', 'AXJPS3676CSD002', 'Meetings, Conference, Incentives, Exhibitions, Others', 'Asia, SE Asia, Americas, Africa, EU, UK', 'CUBA - US', 'BARCELONA - SPAIN', 'IATA, OTOAI, TAAI, IATO, ADTOI', 'IATA, OTOAI, TAAI, IATO, ADTOI', 'NITIN SURI\nADMIN HEAD\n9810293747\nnitin@lavidatravels.com', 'SRISHATI SINGHAL\nDIRECTOR\n9810546868\nsrishati@lavidatravels.com', '', '', '', ''),
(21, 'VARSHA JALAN', 'NARAYANI ASSOCIATES', 'NARAYANI ASSOCIATES', '17-07-2015', 'Partnership', 'C/O SHANTI COMBINE, F.A.ROAD, KUMARPARA, GUWAHATI - 781 001 (ASSAM)', '9.20E+11', '9864822988', 'info@narayaniassociates.com', 'info@narayaniassociates.com', 'www.narayaniassociates.com', 'FANCY BAZAR, GUWAHATI', '', '0', 'AAMFN1047Q', 'AAMFN1047QSD001', 'Meetings, Conference, Exhibitions, Others', 'Asia', 'BANGKOK, THAILAND', 'SINGPORE, MALAYSIA', 'NOT APPLICABLE', 'NOT APPLICABLE', 'PRIYANK JALAN\nHOUSE NO-11, M.M.ROAD,\nFANCY BAZAR, GUWAHATI - 781001 (ASSAM)\nMANAGER - OPERATIONS\n986', 'AASHISH JALAN\nC/O SHANTI COMBINE\nANZUMAN MANZIL\nGORUND FLOOR, F.A.ROAD,\nKUMARPARA, GUWAHATI - 781001', '', 'GO AIRLINES (INDIA) LTD\nSPICEJET LTD\nINTERGLOBE AVIATION LTD\nVINAYAKA TOURS & LEISURE, KOLKATA\nSHREE', '', ''),
(22, 'GAGAN KUMAR', 'STHI HOLIDAYS INDIA PVT LTD', '', '14-10-2014', 'Pvt Ltd', '111RG COMPLEX 2PRASHANT VIHAR ROHINI SEC 14', '47505445', '9999075445', 'info@theleafholidays.com', 'gagan@theleafholidays.com', 'www.theleafholidays.com', 'DELHI', '', '20cr', ' AAVCS0421P', 'AAVCS0421PSD001', 'Meetings, Conference, Incentives', 'Asia, SE Asia, Africa, EU, CIS/Russian Fed', 'se asia', 'asia', 'NA', 'NA', 'GAGAN KUMAR (DIRCTOR) 9999075445', 'MONIKA ARORA DIRECTOR 9650255666', '', '', '', ''),
(23, 'Dheeraj Jain', 'TNY Holidays Pvt. Ltd. ', 'Travel & You', '26-09-2013', 'Pvt Ltd', '314A, Unitech Arcadia', 'gurgaon', '9711375610', 'dheeraj.jain@travelandyou.in', 'dheeraj.jain@travelandyou.in', 'www.travelandyou.in', 'Bangalore ', '', '12 Caror', 'AAECT7773Q', 'AAECT7773QSD002', 'Meetings, Conference, Incentives, Others', 'Asia, SE Asia, EU, CIS/Russian Fed, China, Middle East ', 'China ', 'SE Asia ', 'IATO', 'IATO', 'Name            : Dheeraj Jain \nDesignation   : Head - Outbound Tours \nE mail           : dheeraj.ja', 'Name            : Ashwani Shukla  \nDesignation   : Head - Operations  \nE mail           : ashwani.sh', 'dheeraj.jain@travelandyou.in', 'nima', '', ''),
(24, 'SUBHASH CHAND BAGRA', 'AMBITION TRAVELS & TOURS PVT LTD', '', '29-10-2014', 'Pvt Ltd', '401, MERLIN CHAMBERS,18,BRITISH INDIAN STREET,KOLKATA-700069', '3366504444', '9331032588', 'info@ambitiontravels.net', 'scbagra@gmail.com', 'www.ambitiontravels.net', '', '', '6 crores', 'AAMCA9828P', 'AAMCA9828PSD001', 'Meetings, Conference, Incentives, Exhibitions, Others', 'Asia, SE Asia, Americas, Africa, EU, UK, JAPAN', 'AUSTRALIA', 'NEWZEALAND', 'SKAL', 'SKAL', 'SUBHASH CHAND BAGRA\nDIRECTOR\n9331032588\nsubhash@ambitiontravels.net', 'ANSHUL BAGRA\nDIRECTOR\n9330899721\nanshulbagra@ambitiontravels.net', '', '', '', ''),
(25, 'Imran Khan', 'VITA TOUR & TRAVEL LLP', 'TRAVEL TRADE', '12-12-2015', 'LLP', 'UB - 10, Arunachal Building, Connaught Place, New Delhi', '011 - 43602777', '9899013306', 'ceo@vitatourism.com', 'imrankhan0303@gmail.com', 'www.vitatourism.com', 'Delhi, Mumbai, Kolkata, ', 'N/A', '1Cr+', 'AANFV4789J', 'AANFV4789JSD002', 'Meetings, Conference, Incentives, Exhibitions', 'Asia', 'Dubai- UAE ', 'Sri Lanka', 'NONE', 'NONE', 'Imran khan\nC.E.O\nceo@vitatourism.com\n9899013306', 'Arun Agarwal\nV.P. Sales (India & UAE)\nvpsales@vitatourism.com\n8151855728', '', 'Mr Rakesh Arora \nNina India Tour\nninaindiatours@gmail.com\n9990010612', '', ''),
(26, 'Dr Ranganath K B', 'One Travel Park Services Private Limited', 'One Travel Park Services Private Limited', '07-08-2014', 'Partnership', '1299-C Konda Pride Road No. 1 Jubilee Hills Hyderabad - 500033', '4022222229', '9948998765', 'ranganath@onetravelpark.com', 'rangkb@yahoo.com', 'www.onetravelpark.com', '', '', '3 Crores', 'AAFCG7057H', 'AAFCG7057HSD001', 'Meetings, Conference, Incentives, Others', 'Asia, SE Asia, UK', 'Istanbul, Turkey', 'Dubai, UAE', 'Interserve', 'Interserve', 'Dr.Ranganath K B\nManager\nTel.:7032999704\nemail:ranganath@onetravelpark.com', 'Mr.P.Anand Kumar\nManager - Leisure & Corporate Sales\nTel.: 8885047070\nemail: ananad@onetravelpark.co', '', '', '', ''),
(27, 'Imran Khan', 'VITA TOUR & TRAVEL LLP', 'TRAVEL TRADE', '12-12-2015', 'LLP', 'UB - 10, Arunachal Building, Connaught Place, New Delhi', '011 - 43602777', '9899013306', 'ceo@vitatourism.com', 'imrankhan0303@gmail.com', 'www.vitatourism.com', 'Delhi, Mumbai, Kolkata, ', 'N/A', '1Cr+', 'AANFV4789J', 'AANFV4789JSD002', 'Meetings, Conference, Incentives, Exhibitions', 'Asia', 'Dubai- UAE ', 'Sri Lanka', 'NONE', 'NONE', 'Imran khan\nC.E.O\nceo@vitatourism.com\n9899013306', 'Arun Agarwal\nV.P. Sales (India & UAE)\nvpsales@vitatourism.com\n8151855728', '', 'Mr Rakesh Arora \nNina India Tour\nninaindiatours@gmail.com\n9990010612', '', ''),
(28, 'Jagdeep Bhagat', 'Vee Bee Tours & Travels', 'Vee Bee', '01/04/2000\n', '0', 'Shop # 18, SD Block Market, Main Road Pitampura, Delhi - 110034, INDIA', '9868203050', '9310203050', 'sales@veebeetours.com', 'jb@veebeetours.com', 'https://www.veebeetours.com', 'NONE', '14307204', '5', 'AAEPB3096P', 'AAEPB3096PST001', '3', '2', 'CANADA', 'ITALY', '01-May', 'Array', 'JAGDEEP BHAGAT', 'VARUN BHAGAT', '', '', '9310203050', 'nima'),
(29, 'Harkamal Singh Gill', 'Kanwal Holiday Resorts Pvt Ltd', 'Hi Times', '05-12-2004', '0', 'Ajit Complex, Jalandhar, Punjab', '1815088800', '9814061612', 'harkamal@hi-times.com', 'harkamal@hi-times.com', 'https://www.hi-times.com', 'Delhi', '', '5cr', 'ST001AACCK4813A', '', '1', '7', 'Canada', 'Spain', 'Nov-25', 'Array', 'Harkamal Singh Gill', 'Subhash Chander', '', '', '9814061612', 'nima'),
(30, 'Ritesh Joshi', 'Incentives and Conference Planners', 'ICON Planners', '19-04-2010', '0', '149,Viviekananda Road, Kolkata', '3365671523', '8954888048', 'ritesh@iconplanners.com', 'ritesh@iconplanners.com', 'http://www.iconplanners.com', 'Kolkata, Mumbai, Delhi NCR', '', '12 Cr', '', 'AADF10250PSD001', '1', '5', 'Istanbul', 'Barcelona', 'Nov-25', 'Array', 'Sunaina Chatterjee', 'Vikrant Gulani', '', '', '8954888048', 'nima');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE IF NOT EXISTS `resources` (
`id` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=241 ;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `country`, `description`) VALUES
(1, 'Afghanistan', ''),
(2, 'Albania', ''),
(3, 'Algeria', ''),
(4, 'American Samoa', ''),
(5, 'Andorra', ''),
(6, 'Angola', ''),
(7, 'Anguilla', ''),
(9, 'Antigua and Barbuda', ''),
(10, 'Argentina', ''),
(11, 'Armenia', ''),
(12, 'Aruba', ''),
(13, 'Australia', ''),
(14, 'Austria', ''),
(15, 'Azerbaijan', ''),
(16, 'Bahamas', ''),
(17, 'Bahrain', ''),
(18, 'Bangladesh', ''),
(19, 'Barbados', ''),
(20, 'Belarus', ''),
(21, 'Belgium', ''),
(22, 'Belize', ''),
(23, 'Benin', ''),
(24, 'Bermuda', ''),
(25, 'Bhutan', ''),
(26, 'Bolivia', ''),
(27, 'Bosnia and Herzegovina', ''),
(28, 'Botswana', ''),
(29, 'Brazil', ''),
(30, 'Brunei Darussalam', ''),
(31, 'Bulgaria', ''),
(32, 'Burkina Faso', ''),
(33, 'Burundi', ''),
(34, 'Cambodia', ''),
(35, 'Cameroon', ''),
(36, 'Canada', ''),
(37, 'Cape Verde', ''),
(38, 'Cayman Islands', ''),
(39, 'Central African Republic', ''),
(40, 'Chad', ''),
(41, 'Chile', ''),
(42, 'China', ''),
(43, 'Christmas Island', ''),
(44, 'Cocos (Keeling) Islands', ''),
(45, 'Colombia', ''),
(46, 'Comoros', ''),
(47, 'Democratic Republic of the Congo (Kinshasa)', ''),
(48, 'Congo, Republic of (Brazzaville)', ''),
(49, 'Cook Islands', ''),
(50, 'Costa Rica', ''),
(51, 'Ivory Coast', ''),
(52, 'Croatia', ''),
(53, 'Cuba', ''),
(54, 'Cyprus', ''),
(55, 'Czech Republic', ''),
(56, 'Denmark', ''),
(57, 'Djibouti', ''),
(58, 'Dominica', ''),
(59, 'Dominican Republic', ''),
(60, 'East Timor (Timor-Leste)', ''),
(61, 'Ecuador', ''),
(62, 'Egypt', ''),
(63, 'El Salvador', ''),
(64, 'Equatorial Guinea', ''),
(65, 'Eritrea', ''),
(66, 'Estonia', ''),
(67, 'Ethiopia', ''),
(68, 'Falkland Islands', ''),
(69, 'Faroe Islands', ''),
(70, 'Fiji', ''),
(71, 'Finland', ''),
(72, 'France', ''),
(73, 'French Guiana', ''),
(74, 'French Polynesia', ''),
(75, 'French Southern Territories', ''),
(76, 'Gabon', ''),
(77, 'Gambia', ''),
(78, 'Georgia', ''),
(79, 'Germany', ''),
(80, 'Ghana', ''),
(81, 'Gibraltar', ''),
(82, 'Great Britain', ''),
(83, 'Greece', ''),
(84, 'Greenland', ''),
(85, 'Grenada', ''),
(86, 'Guadeloupe', ''),
(87, 'Guam', ''),
(88, 'Guatemala', ''),
(89, 'Guinea', ''),
(90, 'Guinea-Bissau', ''),
(91, 'Guyana', ''),
(92, 'Haiti', ''),
(93, 'Holy See', ''),
(94, 'Honduras', ''),
(95, 'Hong Kong', ''),
(96, 'Hungary', ''),
(97, 'Iceland', ''),
(98, 'India', ''),
(99, 'Indonesia', ''),
(100, 'Iran (Islamic Republic of)', ''),
(101, 'Iraq', ''),
(102, 'Ireland', ''),
(103, 'Israel', ''),
(104, 'Italy', ''),
(105, 'Jamaica', ''),
(106, 'Japan', ''),
(107, 'Jordan', ''),
(108, 'Kazakhstan', ''),
(109, 'Kenya', ''),
(110, 'Kiribati', ''),
(111, 'Korea', ''),
(112, 'Democratic People''s Rep. (North Korea)', ''),
(113, 'Korea, Republic of (South Korea)', ''),
(114, 'Kosovo', ''),
(115, 'Kuwait', ''),
(116, 'Kyrgyzstan', ''),
(117, 'Lao, People''s Democratic Republic', ''),
(118, 'Latvia', ''),
(119, 'Lebanon', ''),
(120, 'Lesotho', ''),
(121, 'Liberia', ''),
(122, 'Libya', ''),
(123, 'Liechtenstein', ''),
(124, 'Lithuania', ''),
(125, 'Luxembourg', ''),
(126, 'Macau', ''),
(127, 'Macedonia, Rep. of', ''),
(128, 'Madagascar', ''),
(129, 'Malawi', ''),
(130, 'Malaysia', ''),
(131, 'Maldives', ''),
(132, 'Mali', ''),
(133, 'Malta', ''),
(134, 'Marshall Islands', ''),
(135, 'Martinique', ''),
(136, 'Mauritania', ''),
(137, 'Mauritius', ''),
(138, 'Mayotte', ''),
(139, 'Mexico', ''),
(140, 'Micronesia, Federal States of', ''),
(141, 'Moldova, Republic of', ''),
(142, 'Monaco', ''),
(143, 'Mongolia', ''),
(144, 'Montenegro', ''),
(145, 'Montserrat', ''),
(146, 'Morocco', ''),
(147, 'Mozambique', ''),
(148, 'Myanmar', ''),
(149, 'Namibia', ''),
(150, 'Nauru', ''),
(151, 'Nepal', ''),
(152, 'Netherlands Antilles', ''),
(153, 'New Caledonia', ''),
(154, 'New Zealand', ''),
(155, 'Nicaragua', ''),
(156, 'Niger', ''),
(157, 'Nigeria', ''),
(158, 'Niue', ''),
(159, 'Northern Mariana Islands', ''),
(160, 'Northern Mariana Islands', ''),
(161, 'Norway', ''),
(162, 'Oman', ''),
(163, 'Pakistan', ''),
(164, 'Palau', ''),
(165, 'Palestinian territories', ''),
(166, 'Panama', ''),
(167, 'Papua New Guinea', ''),
(168, 'Paraguay', ''),
(169, 'Peru', ''),
(170, 'Philippines', ''),
(171, 'Pitcairn Island', ''),
(172, 'Poland', ''),
(173, 'Portugal', ''),
(174, 'Puerto Rico', ''),
(175, 'Qatar', ''),
(176, 'Reunion Island', ''),
(177, 'Romania', ''),
(178, 'Russian Federation', ''),
(179, 'Rwanda', ''),
(180, 'Saint Kitts and Nevis', ''),
(181, 'Saint Lucia', ''),
(182, 'Saint Vincent and the Grenadines', ''),
(183, 'Samoa', ''),
(184, 'San Marino', ''),
(185, 'Sao Tome and Principe', ''),
(186, 'Saudi Arabia', ''),
(187, 'Senegal', ''),
(188, 'Serbia', ''),
(189, 'Seychelles', ''),
(190, 'Sierra Leone', ''),
(191, 'Singapore', ''),
(192, 'Slovakia (Slovak Republic)', ''),
(193, 'Slovenia', ''),
(194, 'Solomon Islands', ''),
(195, 'Somalia', ''),
(196, 'South Africa', ''),
(197, 'South Sudan', ''),
(198, 'Spain', ''),
(199, 'Sri Lanka', ''),
(200, 'Sudan', ''),
(201, 'Suriname', ''),
(202, 'Swaziland', ''),
(203, 'Sweden', ''),
(204, 'Switzerland', ''),
(205, 'Syria', ''),
(206, 'Syrian Arab Republic', ''),
(207, 'Taiwan (Republic of China)', ''),
(208, 'Tajikistan', ''),
(209, 'Tanzania; officially the United Republic of Tanzania', ''),
(210, 'Thailand', ''),
(211, 'Tibet', ''),
(212, 'Timor-Leste ', ''),
(213, 'Togo', ''),
(214, 'Tokelau', ''),
(215, 'Tonga', ''),
(216, 'Trinidad and Tobago', ''),
(217, 'Tunisia', ''),
(218, 'Turkey', ''),
(219, 'Turkmenistan', ''),
(220, 'Turks and Caicos Islands', ''),
(221, 'Tuvalu', ''),
(222, 'Uganda', ''),
(223, 'Ukraine', ''),
(224, 'UAE', ''),
(225, 'United Kingdom', ''),
(226, 'United States', ''),
(227, 'Uruguay', ''),
(228, 'Uzbekistan', ''),
(229, 'Vanuatu', ''),
(230, 'Vatican City State (Holy See)', ''),
(231, 'Venezuela', ''),
(232, 'Vietnam', ''),
(233, 'Virgin Islands (British)', ''),
(234, 'Virgin Islands (U.S.)', ''),
(235, 'Wallis and Futuna Islands', ''),
(236, 'Western Sahara', ''),
(237, 'Yemen', ''),
(238, 'Zambia', ''),
(239, 'Zimbabwe', ''),
(240, 'South Korea', '');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
`id` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `des` varchar(1000) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=156 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `country`, `state`, `des`) VALUES
(1, 'india', 'Delhi', ''),
(2, 'UAE', 'Dubai', ''),
(3, 'india', 'Punjab', ''),
(4, 'india', 'Haryana', ''),
(5, 'Australia', 'Adelaide', ''),
(6, 'Australia', 'Hobart', ''),
(7, 'Australia', 'NewSouthWales', ''),
(8, 'Australia', 'Melbourne', ''),
(9, 'Australia', 'Brisbane', ''),
(10, 'Australia', 'GoldCoast', ''),
(11, 'Australia', 'Perth', ''),
(27, 'Canada', 'Alberta', ''),
(28, 'Canada', 'BritishColumbia', ''),
(29, 'Canada', 'Manitoba', ''),
(30, 'Canada', 'NewBrunswick', ''),
(31, 'Canada', 'NewfoundlandandLabrador', ''),
(32, 'Canada', 'NorthwestTerritories', ''),
(33, 'Canada', 'NovaScotia', ''),
(34, 'Canada', 'Nunavut', ''),
(35, 'Canada', 'Ontario', ''),
(36, 'Canada', 'PrinceEdwardIsland', ''),
(37, 'Canada', 'Quebec', ''),
(38, 'Canada', 'Saskatchewan', ''),
(39, 'Canada', 'Yukon', ''),
(40, 'United Kingdom', 'GreatBritain', ''),
(41, 'United Kingdom', 'Scotland', ''),
(42, 'United Kingdom', 'NorthernIreland', ''),
(43, 'United States', 'NewYork', ''),
(44, 'United States', 'California', ''),
(45, 'United States', 'LasVegas', ''),
(46, 'United States', 'Chicago ', ''),
(52, 'UAE', 'AbuDhabi', ''),
(53, 'UAE', 'Sharjah', ''),
(54, 'UAE', 'Ajman', ''),
(55, 'UAE', 'RasAlKhaimah', ''),
(56, 'UAE', 'Fujairah', ''),
(117, 'india', 'AndhraPradesh', ''),
(118, 'india', 'ArunachalPradesh', ''),
(119, 'india', 'Assam', ''),
(120, 'india', 'Bihar', ''),
(121, 'india', 'Chhattisgarh', ''),
(122, 'india', 'Goa', ''),
(123, 'india', 'Gujarat', ''),
(124, 'india', 'Chandigarh', ''),
(125, 'india', 'HimachalPradesh', ''),
(126, 'india', 'Jammu&Kashmir', ''),
(127, 'india', 'Jharkhand', ''),
(128, 'india', 'Karnataka', ''),
(129, 'india', 'Kerala', ''),
(130, 'india', 'MadhyaPradesh', ''),
(131, 'india', 'Maharashtra', ''),
(132, 'india', 'Manipur', ''),
(133, 'india', 'Meghalaya', ''),
(134, 'india', 'Mizoram', ''),
(135, 'india', 'Nagaland', ''),
(136, 'india', 'Odisha', ''),
(137, 'india', 'DadraandNagarHaveli', ''),
(138, 'india', 'Rajasthan', ''),
(139, 'india', 'Sikkim', ''),
(140, 'india', 'TamilNadu', ''),
(141, 'india', 'Telangana', ''),
(142, 'india', 'Tripura', ''),
(143, 'india', 'UttarPradesh', ''),
(144, 'india', 'Uttarakhand', ''),
(145, 'india', 'WestBengal', ''),
(146, 'india', 'AndamanandNicobarIslands', ''),
(147, 'india', 'Daman and Diu', ''),
(148, 'india', 'Lakshadweep', ''),
(149, 'india', 'Puducherry', ''),
(150, 'Nepal', 'Nepal', ''),
(151, 'China', 'China', ''),
(152, 'Fiji', 'Fiji', ''),
(153, 'Taiwan (Republic of China)', 'Taiwan(Republic of China)', ''),
(154, 'South Africa', 'SouthAfrica', ''),
(155, 'South Korea', 'SouthKorea', '');

-- --------------------------------------------------------

--
-- Table structure for table `tourism`
--

CREATE TABLE IF NOT EXISTS `tourism` (
`id` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `detail` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tourism`
--

INSERT INTO `tourism` (`id`, `country`, `state`, `detail`) VALUES
(1, 'China', 'China', '<p><strong><u>CHINA NATIONAL TOURIST OFFICE</u></strong></p>\r\n\r\n<p>Booth No: G102</p>\r\n\r\n<p>D- 78 Malcha Marg Chankya Puri New Delhi -&nbsp; 110021</p>\r\n\r\n<p>Tel &ndash; 91 9971647981 Fax- 011 41680541</p>\r\n\r\n<p>Email &ndash; <a href="mailto:xtianly@126.com">xtianly@126.com</a>, <a href="mailto:gulshan081@gmail.com">gulshan081@gmail.com</a></p>\r\n\r\n<p>Mr. Tain xin, Director, (91 9971647981)</p>\r\n\r\n<p>Mr. Gulshan Chawla, Administrator (91 8010511888)</p>\r\n'),
(2, 'UAE', 'Dubai', '<p><strong>DUBAI BUSINGESS EVENTS, DUBAI COPRORATION FOR TOURISM AND COMMERCE MARKETING (DCTCM) </strong></p>\r\n\r\n<p>Booth No: D410</p>\r\n\r\n<p>Suite 811, Hubtown Viva 8<sup>th</sup> Floor, W.E Highway Andheri- Jogeshwari (E) Mumbai- 400060 Maharashtra</p>\r\n\r\n<p>Tel- 91 222838777/28392795</p>\r\n\r\n<p>Email &ndash; <a href="mailto:cvaz@dubaitourism.ae">cvaz@dubaitourism.ae</a>, <a href="mailto:cgomes@dubaitouris.ae">cgomes@dubaitouris.ae</a></p>\r\n\r\n<p>Website- <a href="http://www.visitdubai.com">www.visitdubai.com</a></p>\r\n\r\n<p>Mr.Carl Vaz, Gomes, Sr Manager, Projects &amp; Administration (91n9820276855)</p>\r\n'),
(3, 'India', 'Goa', '<p><strong><em>GOA TOURISM&nbsp; DEVELOPMENT CORPORATION&nbsp; LTD</em></strong></p>\r\n\r\n<p>Booth&nbsp; No: E200</p>\r\n\r\n<p>Erd Floor, partayan Bhavan, patto</p>\r\n\r\n<p>Patto Panaji- 403001, Goa</p>\r\n\r\n<p>Tel 91-8322437132/ 2437728/ 2438551</p>\r\n\r\n<p>Fax- 91 832237433</p>\r\n\r\n<p>Website- <a href="http://www.goa-tourism.com">www.goa-tourism.com</a></p>\r\n\r\n<p>Mr. Dilip Parulekar, Hon&rsquo;ble Minister for Tourism, Woman and Child Development &amp; Protocol &amp; Force</p>\r\n\r\n<p>Mr. Nikhil U. Desai, managing Director</p>\r\n\r\n<p>Mr, Deepak Narvrkar, PRO</p>\r\n\r\n<p>New Delhi Address: Goa Sadan, 18 Amrita Shergil Marg, New Delhi</p>\r\n\r\n<p><span style="font-size:11.0pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tel 91 1124629964 Fax- 91 1124629956</span></span></p>\r\n'),
(4, 'India', 'HimachalPradesh', '<p><strong>GOVERNMENT OF HIMACHAL PARDESH</strong></p>\r\n\r\n<p>Booth No: E100</p>\r\n\r\n<p>Department of Tourism &amp; Civil Aviation Block No. 28</p>\r\n\r\n<p>Shimla &ndash; 171009 Himachal Pradesh</p>\r\n\r\n<p>Tel- 91 1772625864, 2659925, 26120625, 2625924</p>\r\n\r\n<p>Fax- 91 77262556/ 2625864</p>\r\n\r\n<p>Email- <a href="mailto:toursmmin-hp@nic.in">toursmmin-hp@nic.in</a> Website- www/himachaltourism.gov.in</p>\r\n\r\n<p>Mr. V C Pharka. IAS, Addl. Chief Secretary</p>\r\n\r\n<p>Mr. Mohan Chouhan, IAS, Director of Tourism and Civil Aviation, HP &amp; Mission Director (IDIPT-HP)</p>\r\n\r\n<p>Dr, Manoj Sharma, Additional Director- Tourism &amp; Civil Aviation</p>\r\n\r\n<p>New Delhi Address: 36 Janpath, Chanderlok Building, New Delhi-110001</p>\r\n\r\n<p>Tel- 91 1123325320 Fax- 91 1123731072</p>\r\n\r\n<p>Email- <a href="mailto:newdelhi@hptdc.in">newdelhi@hptdc.in</a>&nbsp; Website- <a href="http://www.hptdc.in">http://www.hptdc.in</a></p>\r\n\r\n<p>Mrs. Poonam Bhardwaj, Asst, General Manager, (91 9871252017)</p>\r\n\r\n<p>Mr. Ankush Sud, Asst, Manager, (91 98 8088679)</p>\r\n'),
(5, 'India', 'Jammu&Kashmir', '<p><strong>GOVERNMENT OF JAMMU &amp; KASHMIR</strong></p>\r\n\r\n<p>Booth No: D100</p>\r\n\r\n<p>Directorate of Tourism Tourist Reception Centre Srinagar &ndash; 190001 Jammu &amp; Kashmir</p>\r\n\r\n<p>Tel &ndash; 91 194 2452690/ 91/2472449/ 2520409</p>\r\n\r\n<p>Fax &ndash; 91 194 2452361/ 2479548/ 2472449, 91 191 2548358</p>\r\n\r\n<p>Website &ndash; www. Jktourism.org</p>\r\n\r\n<p>Mr. Farooq Ahmed Shah.IAS, Secretary Tourism, Government of Jammu &amp; Kashmir</p>\r\n\r\n<p>Mr. Mahmood Ahmed Shaj, Director Tourism (Kashmir)</p>\r\n\r\n<p>Mr. Sushma Chauhan, IAS, Director Tourism (Jammu)</p>\r\n\r\n<p>Delhi Address: Department of Tourism Room No 14 &amp; 15, Front Wing Hotel Janpath</p>\r\n\r\n<p>New Delhi &ndash; 110001</p>\r\n\r\n<p>Tel &ndash; 91 1123744948</p>\r\n\r\n<p>Fax &ndash; 91 1123744947</p>\r\n\r\n<p>&nbsp;Email: <a href="mailto:pamtick@gmail.com">pamtick@gmail.com</a></p>\r\n\r\n<p>Ms. Pamela Kachroo, Tourist Officer</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Co &ndash; Participants :</p>\r\n\r\n<p>SHER- KASHMIR INTERNATIONAL CONRERENCE CENTRE (SKICC)</p>\r\n\r\n<p>Chshma Shahi</p>\r\n\r\n<p>Srinagar &ndash; 910001</p>\r\n\r\n<p>Phone+ 91 -9194- 2501201- 2501093, 2501193</p>\r\n\r\n<p>Fax; + 91 194- 2500778</p>\r\n\r\n<p>Email : <a href="mailto:info@skicc.in">info@skicc.in</a>&nbsp; Website : <a href="http://www.skicc.in">www.skicc.in</a></p>\r\n\r\n<p><span style="font-size:11.0pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Mr. Shahanwaz, Manager marketing and OSD to Secretary, Shahnawaz <a href="mailto:786@yahoo.com">786@yahoo.com</a>, 941904344</span></span></p>\r\n'),
(6, 'India', 'WestBengal', '<p><strong>GOVERNMENT OF WEST BENGAL</strong></p>\r\n\r\n<p>Department of Tourism 1 Kiran Shankar Roy Road, New Secretariat Building 3<sup>rd</sup> Floor Kolkata- 700001 West Bengal</p>\r\n\r\n<p>&nbsp;Tel- 91 3322144427</p>\r\n\r\n<p><a href="mailto:Email-jdkoltourism@gmail.com">Email-jdkoltourism@gmail.com</a>, <a href="mailto:Wbtourismpublicity1@gmail.com">Wbtourismpublicity1@gmail.com</a>, director. <a href="mailto:tourism@gmail.com">tourism@gmail.com</a></p>\r\n\r\n<p>Website- http:westbengaltourism.gov.in, <a href="http://www.wbtourism.gov.in">www.wbtourism.gov.in</a></p>\r\n\r\n<p>Shri, Gautam Deb, Hon&rsquo;ble Minister for Tourism</p>\r\n\r\n<p>Mr. A, R. Bardhan, IAS, Principle Secretary (Tourism)</p>\r\n\r\n<p>Mr. Rajat Kumar Bose, IAS, Director</p>\r\n\r\n<p><span style="font-size:11.0pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Contact- MOHAMMED IQBAL, FINANCIAL ADVISOR</span></span></p>\r\n'),
(7, 'South Korea', 'SouthKorea', '<p><strong>KOREA TOURISM OGRANISATION</strong></p>\r\n\r\n<p>Booth No.C100</p>\r\n\r\n<p>S8 &amp; S9, 2<sup>nd</sup> Floor, Global Foyer Sector 43Gurgaon -12002 Haryana</p>\r\n\r\n<p>Tel- 91 971199833</p>\r\n\r\n<p>Email- <a href="mailto:sandeep@knto.or.kr">sandeep@knto.or.kr</a></p>\r\n\r\n<p>Website- <a href="http://www.visitkorea.or.kr">www.visitkorea.or.kr</a></p>\r\n\r\n<p>Mr. Sandeep Dutta, Marketing Manager</p>\r\n\r\n<p>Co-Participant: JANE TOUR &amp; DMC</p>\r\n\r\n<p>Country: South Korea</p>\r\n\r\n<p>Name of Delegate: Mr. Alain Ahn, Manager- Europe &amp; South Asia Market</p>\r\n\r\n<p>Email: <a href="mailto:dmc@janetour.com">dmc@janetour.com</a> &amp; alain@janetour.com</p>\r\n\r\n<p>Mob: +82-2-34833351</p>\r\n\r\n<p>Website: <a href="http://www.janetour.com">www.janetour.com</a></p>\r\n'),
(8, 'Nepal', 'Nepal', '<p><strong>NEPAL TOURISM BOARD</strong></p>\r\n\r\n<p>Booth No: B100</p>\r\n\r\n<p>P. O. Box 11018 Tourism Service Cente Bhrikuti Mandap Kathmandu, Nepal</p>\r\n\r\n<p>Tel- 977-1- 4256909, 4256229</p>\r\n\r\n<p>Fax- 977- 1- 4256910, 422640</p>\r\n\r\n<p>Email &ndash; <a href="mailto:udai@btp.org.np">udai@btp.org.np</a>&nbsp;&nbsp;&nbsp; <a href="mailto:krtimalsena@ntp.org.np">krtimalsena@ntp.org.np</a></p>\r\n\r\n<p>Website- <a href="http://www.welcomenapal.com">www.welcomenapal.com</a></p>\r\n\r\n<p>Mr. Deepak Raj Joshi, CEO</p>\r\n\r\n<p>Mr. Ujjwala Dali, Officiating Director, Tourism Marketing &amp; Promotion Department</p>\r\n\r\n<p><span style="font-size:11.0pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Mr. Khem Raj Timalsena, Sr. Officer, Tourism Marketing and Promotion Deparment</span></span></p>\r\n'),
(9, 'South Africa', 'SouthAfrica', '<p><strong>SOUTH AFRICAN TOURISM</strong></p>\r\n\r\n<p>Booth No: E424</p>\r\n\r\n<p>Unit No 3, Ground Floor, TCG financial Center C 53, G Block, Bandra Kurla Complex, Bandra East. India</p>\r\n\r\n<p>Email &ndash; <a href="mailto:alpa@southafrica.net">alpa@southafrica.net</a>, <a href="mailto:vaishala@southafruca.net">vaishala@southafruca.net</a></p>\r\n\r\n<p>Web- www.southafrica/net &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>Alpa Jani, Trade Relation Manager (91 9820607760)</p>\r\n\r\n<p>Vaishala Vuyyala, Business Development Consultant (91 8142001009)</p>\r\n'),
(10, 'Taiwan (Republic of China)', 'Taiwan(Republic of China)', '<p><strong>TAIWAN TOURISM BUREAU</strong></p>\r\n\r\n<p>Booth No: E400 Think Strawberries Luxury Travel Marketing Pvt Ltd. C &ndash; 41 Gulmohar Park New Delhi- 110049</p>\r\n\r\n<p>Email- <a href="mailto:noel@ttbrip.in">noel@ttbrip.in</a>, <a href="mailto:sarab@thinkstrawberries.com">sarab@thinkstrawberries.com</a></p>\r\n\r\n<p>Mr. Noel Saxena, VP &ndash; Sales (91 9811129667)</p>\r\n\r\n<p>TAJ HOTELS RESORTS &amp; PALACES</p>\r\n\r\n<p>Booth No: E313</p>\r\n\r\n<p>Oxford House, NF Road Colaba Mumbai- 400001 Maharashtra</p>\r\n\r\n<p>Tel- 91 9820099778</p>\r\n\r\n<p>Email- <a href="mailto:suku.verghese@tahhotels.com">suku.verghese@tahhotels.com</a>, <a href="mailto:hansy.dhawan@tajhotels.com">hansy.dhawan@tajhotels.com</a></p>\r\n\r\n<p>Mr. Suku Verghese, AVP &ndash; Sales (919820099778</p>\r\n\r\n<p>Mr. Hansy Dhawan, Sales Manager (91 9953715581)</p>\r\n'),
(11, 'India', 'Gujarat', '<p><strong>TOURISM CORPORATION OF GUJARAT LIMITED</strong></p>\r\n\r\n<p>Booth No: E300</p>\r\n\r\n<p>Block &ndash; 16/17, 4<sup>th</sup> Floor Udyog&nbsp; Bhavan Sector- 11 Gandhinagar - 382011 Gujart</p>\r\n\r\n<p>Tel- 91 7923222645, 91 79 23222523, 23220002</p>\r\n\r\n<p>Fax &ndash; 91 7923222189, 91 79 23238908</p>\r\n\r\n<p>Email- <a href="mailto:gujtour@icenet.net">gujtour@icenet.net</a>;&nbsp; <a href="mailto:gujarattourism@vsnl.net">gujarattourism@vsnl.net</a></p>\r\n\r\n<p>Website- http://www.gujarattourism.com</p>\r\n\r\n<p>Mr. S. J. Haider, IAS, Principal Secratory Tourism</p>\r\n\r\n<p>Mr. Kamalshbhai, Patel, Chairman</p>\r\n\r\n<p>Mr. N. Srivastav IFS, Managing Director</p>\r\n\r\n<p>Mr. Kingshuk Biswas, Manager (Investment &amp; Marketing)</p>\r\n\r\n<p>Mr. Subhash Joshi, Deputy Manager Marketing</p>\r\n\r\n<p>New Delhi Address: A/ 6 State Emporia Bldg Baba Kharak Singh Marg New Delhi &ndash; 110001</p>\r\n\r\n<p>Tel - 91 1123744015</p>\r\n\r\n<p>Fax &ndash; 91 1123367050</p>\r\n\r\n<p>Email - Somanspathy@yahoo.com</p>\r\n\r\n<p>Website- http;//www.gujarattourism.com</p>\r\n\r\n<p>Mr. Soman Sreenath Pathy, Liaison Officer</p>\r\n'),
(12, 'Fiji', 'Fiji', '<p><strong>TOURISM FIJI</strong></p>\r\n\r\n<p>Booth No: E423</p>\r\n\r\n<p>55, Neelam Building Road 2, Hindu Colony Dadar East Mumbai- 400014 Maharashtra Email- tourismfiji@globaldestination.in</p>\r\n\r\n<p>Ms. Vijayanthi Kari, India Representative, Tourism Fiji (91 9664483033)</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `mob` varchar(100) NOT NULL,
  `organisation` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `status`, `mob`, `organisation`) VALUES
(1, 'admin', '123', 'Member', '8954888048', 'Incentives and Conference Planners'),
(2, 'admin2', '123', 'Executive', '9810354946', 'Northwest Travels Pvt Ltd'),
(3, 'admin3', '123', 'Executive', '9442038894', 'LEMURIA INDIA HOLIDAYS');

-- --------------------------------------------------------

--
-- Table structure for table `working_destination`
--

CREATE TABLE IF NOT EXISTS `working_destination` (
`wd_id` int(11) NOT NULL,
  `wd_name` varchar(100) NOT NULL,
  `wd_desc` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `working_destination`
--

INSERT INTO `working_destination` (`wd_id`, `wd_name`, `wd_desc`) VALUES
(1, 'Asia', ''),
(2, 'SE Asia', ''),
(3, 'Americas', ''),
(4, 'Africa', ''),
(5, 'EU', ''),
(6, 'UK', ''),
(7, 'CIS/Russian Fed', ''),
(8, 'Other', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airline_list`
--
ALTER TABLE `airline_list`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `airline` (`airline`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_list`
--
ALTER TABLE `hotel_list`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `hotel` (`hotel`), ADD UNIQUE KEY `hotel_2` (`hotel`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notisboard`
--
ALTER TABLE `notisboard`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
 ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `ownership`
--
ALTER TABLE `ownership`
 ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
 ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `s_name` (`state`);

--
-- Indexes for table `tourism`
--
ALTER TABLE `tourism`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `working_destination`
--
ALTER TABLE `working_destination`
 ADD PRIMARY KEY (`wd_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `airline_list`
--
ALTER TABLE `airline_list`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `hotel_list`
--
ALTER TABLE `hotel_list`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `notisboard`
--
ALTER TABLE `notisboard`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `organisation`
--
ALTER TABLE `organisation`
MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ownership`
--
ALTER TABLE `ownership`
MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `tourism`
--
ALTER TABLE `tourism`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `working_destination`
--
ALTER TABLE `working_destination`
MODIFY `wd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
