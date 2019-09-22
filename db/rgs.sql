-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2018 at 02:27 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rgs`
--

-- --------------------------------------------------------

--
-- Table structure for table `boiler`
--

CREATE TABLE `boiler` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boiler`
--

INSERT INTO `boiler` (`id`, `name`, `contact`, `work`, `note`, `address`, `postcode`, `email`, `website`, `area_cover`) VALUES
(1, 'Pawel', '+7783261744', 'Extensions, - Roofing - Loft conversions, Bathroom refurbishments and decoration, -Bricklaying joinery work, - Carpentry, -Electricity, - Plumbing,- Building and home refurbishment - Kitchen installation, -Interior and exterior painting, - Tiling - Plastering - Glazing', '', 'No', '', '', 'https://www.gumtree.com/p/building-services/pc-building-contractors-ltd-extensions-loft-conversion-renovation-bathroom/1290279798', ''),
(2, 'Hanzo', '2086109900', 'Architecture  Interior Design  Building Survey  Cost Advice  Planning permissions  Construction Work', '', '', '', 'ee@email.com', 'https://www.gumtree.com/p/building-services/chartered-building-company-and-interior-designers.-10-year-work-warranty/1294161790', ''),
(3, 'MJ', '7951539355', 'Painting & Decorating including interior and exterior works and Wall-Paper hanging  Plastering, Plaster-Board fixing, Rendering  Suspended ceilings & Alcove unit solutions [down lights or special effect lighting]  Floor and Wall Tiling  Carpentry & Joinery [staircases, floors, partition walls, doors, windows etc.]  Custom Built MDF or Venire Shelves, Cupboards, Alcove Solutions  Hard wood floor installation & Parquet floor renovation  Kitchen Fitting [including renovation, new installation or remodelling]  Bathroom Installation [including rearrangement of suite, bathroom updates or refurbishment]  UPVC Windows Supply and Installation including certificates', '', '', '3162', '', 'https://www.gumtree.com/p/building-services/experienced-builder-with-references-and-own-team.-daily-rate-%C2%A3120/1158961853', ''),
(4, 'Alex', '7706805971', 'plastering painting tiling plasterboard dryliner,bricklayer roofing fixing door partition', '', '', '', '', 'https://www.gumtree.com/p/building-services/plastering-painting-tiler-carpenter-bricklayer-rendering-plasterboard-partition-/1294392396', ''),
(5, 'Hassan', '7403005700', 'builder', '', '', '', '', 'https://www.gumtree.com/p/building-services/building-job-/1294734641', ''),
(6, 'silvio', '7397689301', 'plastering  -wall tilling  -floor tilling  -flooring laminate and hardwood  -electrical  -plumbing  -central heating  -partitions  -staircase renovation  -painting and decorating  -wallpapering  -kitchen fitting  -bathroom fitting  -decking  -bricklaying  -complete flat renovation  -complete shop renovation  -complete restaurant renovation  -hotel renovation  -extensions', '', '', '', '', 'https://www.gumtree.com/p/building-services/-residential-and-comercial-building-services./1181399265', ''),
(7, 'Karl', '7392761395', 'Full Property Renovations Basements, Lofts Painting & Decorating Bathrooms & Kitchens Carpentry & Windows Sash windows  Plumbing & Electrical installations Tiling & Flooring Decking & Fencing Interiors & Exteriors', '', '', '', '', 'https://www.gumtree.com/p/building-services/polish-builders.-kk-build-contractor/1290623615', ''),
(8, 'Re', '7454580479', 'builder', '', '', '', '', 'https://www.gumtree.com/p/building-services/coded-welder-looking-for-work/1294727139', ''),
(9, 'Domas', '7770087643', 'Kitchen and bathroom refurbishments, extensions, loft conversions, carpentry, heating and plumbing, painting and decorating, tiling,, kitchen fitting', '', '', '', '', 'https://www.gumtree.com/p/building-services/professional-lithuanian-builders.-extensions-loft-conversions-kitchen-fitters-bathroom-fitter./1105835812', ''),
(10, 'Piotr', '7590474168', 'Extensions  - Patios  - Lofts  - Driveways  Bathrooms and more', '', '', '', '', 'https://www.gumtree.com/p/building-services/extensions-patios-lofts-driveways-bathrooms-excellent-stone-work/1294692542', ''),
(11, 'Tubb', '2082127327', 'REFURBISHMENT / FIT OUT / SHOPFITTING / GLASS PARTITION', '', '', '', '', 'https://www.gumtree.com/p/building-services/refurbishment-fit-out-shopfitting-glass-partition/1276889920', ''),
(12, 'John', '7496854930', 'builder', '', '', '', '', 'https://www.gumtree.com/p/building-services/determined-to-construct-limited-/1293242221', ''),
(13, 'John', '2089432037', 'Residential Development and Improvements | Commercial Development | High end Residential | Demolition and Reconstruction | Refurbishments | Steel Structures | Dry-lining | Project and Contract Management | BREEAM Coordination | Sustainable Solutions | Natural Recourses | Mechanical and Electrical Coordination and Installations', '', '', '', '', 'https://www.gumtree.com/p/building-services/dynamic-building-contractor-tricor-construction-limited-innovation-inspiration-vision-/1289553485', ''),
(14, 'JORGE', '7492253246', 'CARPENTER and JOINER', '', '', '', '', 'https://www.gumtree.com/p/building-services/i-need-of-work-carpenter-and-joiner/1294689882', ''),
(15, 'Krystian', '7800565211', 'basement  brick work  loft  roof  extension  steel construction  kitchen fitting  bathroom fitting  plastering  tiling  electrical  flooring  decorating  carpentry & joinery  boiler fitting & electrical heating  rendering  painting decorating', '', '', '', '', 'https://www.gumtree.com/p/building-services/maxbuilders-team-ltd-construction-and-refurbishment-specialist/1281962196', ''),
(16, 'Alan', '07445238886', '1. plastering 2. plumbing  3. tiling   4. painting', '', '', '', '', 'https://www.gumtree.com/p/building-services/general-propertys-maintenance/1292945700', ''),
(17, 'Arturas', '7871916140', 'Welder', '', '', '', '', 'https://www.gumtree.com/p/building-services/welder/1222714678', ''),
(18, 'Mariusz', '7813407788', 'General building,plumbing and heating', '', '', '', '', 'https://www.gumtree.com/p/building-services/general-building-plumbing-and-heating-.-premium-quality-work-and-customer-satisfaction-is-our-task-./1106146581', ''),
(19, 'Kamil', '7548866735', 'builder', '', '', '', '', 'https://www.gumtree.com/p/building-services/need-a-building-company-just-call.-all-kinds-of-work-/1293459425', ''),
(20, 'Gold', '7817771891', 'Bathroom Fitting, Carpentry, Gardening, Handy work, Loft Conversion, Painting and Decorating, Plastering, Plumbing, Tiling', '', '', '', '', 'https://www.gumtree.com/p/building-services/gold-building-services/1294652367', ''),
(21, 'Mo', '7387167378', 'Loft Conversions  Extensions  Basement Conversions  Garage Conversions  Building Conversions  Outhouses Built  Full house and Flat Refurbishments  Bathroom Refurbishment  Kitchen Refurbishment  Full electrical rewires  Plumbing first and second fix  Staircases', '', '', '', '', 'https://www.gumtree.com/p/building-services/ireno-ltd-london-s-premier-builder-affordable-pricing-/1294651718', ''),
(22, 'Radovan', '7878741294', 'Handyman, carpentry, flooring, tiling, painting and decorating', '', '', '', '', 'https://www.gumtree.com/p/building-services/multitrade-handyman-carpentry-flooring-tiling-painting-and-decorating./1133245840', ''),
(23, 'POKUTO', '7428025536', 'builders', '', '', '', '', 'https://www.gumtree.com/p/building-services/we-offer-you-building-and-repair-work-with-extremely-quality-and-fast-24h/1294638652', ''),
(24, 'Olivia', '7929632898', 'builders', '', '', '', '', 'https://www.gumtree.com/p/building-services/labourers-required-sw-london/1294628684', ''),
(25, 'RED', '7462484484', 'builder', '', '', '', '', 'https://www.gumtree.com/p/building-services/labourers-or-cleaners-team-of-4-guys-we-are-available-for-more-work/1098287665', ''),
(26, 'RED', '7462484485', 'builder', '', '', '', '', 'https://www.gumtree.com/p/building-services/labourers-or-cleaners-team-of-4-guys-we-are-available-for-more-work/1098287666', ''),
(28, 'Green', '547', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bricklayer`
--

CREATE TABLE `bricklayer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `builder`
--

CREATE TABLE `builder` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `carpenter`
--

CREATE TABLE `carpenter` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `construction_manager`
--

CREATE TABLE `construction_manager` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `electrician`
--

CREATE TABLE `electrician` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `handyman`
--

CREATE TABLE `handyman` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `house_extension`
--

CREATE TABLE `house_extension` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `labourer`
--

CREATE TABLE `labourer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loft_conversion`
--

CREATE TABLE `loft_conversion` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `painter`
--

CREATE TABLE `painter` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plasterer`
--

CREATE TABLE `plasterer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plumber`
--

CREATE TABLE `plumber` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `refurbishment`
--

CREATE TABLE `refurbishment` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roofer`
--

CREATE TABLE `roofer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tiller`
--

CREATE TABLE `tiller` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `work` text,
  `note` text,
  `address` text,
  `postcode` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `area_cover` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boiler`
--
ALTER TABLE `boiler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `bricklayer`
--
ALTER TABLE `bricklayer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `builder`
--
ALTER TABLE `builder`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `carpenter`
--
ALTER TABLE `carpenter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `construction_manager`
--
ALTER TABLE `construction_manager`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `electrician`
--
ALTER TABLE `electrician`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `handyman`
--
ALTER TABLE `handyman`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `house_extension`
--
ALTER TABLE `house_extension`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `labourer`
--
ALTER TABLE `labourer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `loft_conversion`
--
ALTER TABLE `loft_conversion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `painter`
--
ALTER TABLE `painter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `plasterer`
--
ALTER TABLE `plasterer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `plumber`
--
ALTER TABLE `plumber`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `refurbishment`
--
ALTER TABLE `refurbishment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `roofer`
--
ALTER TABLE `roofer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `tiller`
--
ALTER TABLE `tiller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boiler`
--
ALTER TABLE `boiler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `bricklayer`
--
ALTER TABLE `bricklayer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `builder`
--
ALTER TABLE `builder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carpenter`
--
ALTER TABLE `carpenter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `construction_manager`
--
ALTER TABLE `construction_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `electrician`
--
ALTER TABLE `electrician`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `handyman`
--
ALTER TABLE `handyman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `house_extension`
--
ALTER TABLE `house_extension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labourer`
--
ALTER TABLE `labourer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loft_conversion`
--
ALTER TABLE `loft_conversion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `painter`
--
ALTER TABLE `painter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plasterer`
--
ALTER TABLE `plasterer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plumber`
--
ALTER TABLE `plumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refurbishment`
--
ALTER TABLE `refurbishment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roofer`
--
ALTER TABLE `roofer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiller`
--
ALTER TABLE `tiller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
