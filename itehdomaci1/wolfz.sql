-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2021 at 01:23 PM
-- Server version: 10.4.14-MihailoDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wolfz`
--

-- --------------------------------------------------------

--
-- Table structure for table `mediji`
--

CREATE TABLE `mediji` (
  `id` int(5) UNSIGNED NOT NULL,
  `naziv` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zemlja` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `karakter_medija` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `god_osnivanja` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mediji`
--

INSERT INTO `mediji` (`id`, `naziv`, `zemlja`, `karakter_medija`, `god_osnivanja`) VALUES
(1, 'Pink', 'Pink', 'Informativni i drustveno-politiske teme', '2010-01-11'),
(2, 'Nova.rs', 'Nova.rs', 'Informativni i drustveno-politicke teme', '2008-09-25'),
(3, 'RTS', 'RTS', 'Razonoda i slobodno vreme', '2009-01-29'),
(4, 'NatGeo', 'NatGeo', 'Istrazivacko novinarstvo', '1933-06-28'),
(5, 'CNN', 'CNN', 'Edukativni, aktivisticki, mediji civilnog sektora', '1942-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `sponzori`
--

CREATE TABLE `sponzori` (
  `id` int(5) UNSIGNED NOT NULL,
  `naziv` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `datumOsnivanja` date NOT NULL,
  `paket` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponzori`
--

INSERT INTO `sponzori` (`id`, `naziv`, `opis`, `datumOsnivanja`, `paket`) VALUES
(1, 'VAST', 'Prikupljaju??i i analiziraju??i podatke od svog osnivanja 2005. godine, Vast je postao vode??a kompanija u oblastima vertikalne pretrage, ve??ta??ke intelegencije, ma??inskog u??enja i Big Data tehnologija. Proizvode koje razvijamo za tr??i??ta trgovine automobilima, CarStory, i nekretninama, HomeStory, kori', '2005-08-03', 'Srebrni'),
(2, 'FishingBooker', 'FishingBooker je najve??a online platforma/tr??i??te za rezervaciju pecanja u Evropi sa timom od 35 ljudi i godi??njom stopom rasta od +300% (ve?? 4 godine). Svake godine desetine hiljada ljudi rezervi??e svoju avanturu preko FishingBooker-a, ??irom sveta.', '2016-07-08', 'Zlatni'),
(3, 'enjoy.ing', 'Enjoy.Ing je ??vajcarska in??enjerska kompanija, ??ije je sedi??te u Cirihu, a razvojni timovi u Beogradu i Ni??u. Na??i klijenti dolaze iz razli??itih industrija, uklju??uju??i velike internacionalne kompanije iz finansijskog i telekomunikacionog sektora.', '2015-06-25', 'Zlatni'),
(4, 'Codetribe', 'Kako sam naziv kompanije ka??e - pleme koje ??ivi za kodiranje.\r\nPet friendly, inovativna kompanija koju ??ine programeri, istra??iva??i, gikovi i mislioci koji su konekcija izme??u odli??ne ideje i proizvoda, a pre svega su tim.', '2010-03-19', 'Bronzani'),
(5, 'LedgerComm', 'Oni su mali fintech start up sa BIG planovima. Njihovo poslovanje je usmereno na primenu nove tehnologije u industriji s pokvarenim vodovodom. Specijalisti su za korporativno tr??i??te zajmova i dizajniraju novu tehnologiju kako bi pomogli da se zajmovi br??e namiruju. Njihova tehnologija je usredsre??e', '2019-07-01', 'Srebrni');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(14, '1', '$2y$10$0Tbdee.REeSHGfP7znuHfOxAPhDSXMF2.czy5GDYj.EKpgp11YlFu', '2020-11-02 00:49:24'),
(16, '2', '$2y$10$ZTeEIwR/58b90HbmGl5u3uuUHxo0xHAofomX1zcPkYpI75lNAcoHu', '2020-11-02 00:51:32'),
(17, '3', '$2y$10$pKwoLzWqUoBlX3z0B9m2fOsDqdX.cfgm1l4bX3oNwHBcEkfeAA/ra', '2020-11-02 00:52:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mediji`
--
ALTER TABLE `mediji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponzori`
--
ALTER TABLE `sponzori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mediji`
--
ALTER TABLE `mediji`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sponzori`
--
ALTER TABLE `sponzori`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
