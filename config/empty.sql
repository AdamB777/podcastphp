-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2023 at 11:54 AM
-- Server version: 8.0.31-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `podcasty`
--

-- --------------------------------------------------------

--
-- Table structure for table `autorzy`
--

CREATE TABLE `autorzy` (
  `Id` int NOT NULL,
  `imieAutora` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwiskoAutora` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `opisAutora` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci,
  `idPodcastu` int NOT NULL,
  `zdjecieAutora` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci,
  `idKategorii` int NOT NULL,
  `data` date DEFAULT NULL,
  `idUzytkownika` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategorie`
--

CREATE TABLE `kategorie` (
  `Id` int NOT NULL,
  `nazwa` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentarzedoautorow`
--

CREATE TABLE `komentarzedoautorow` (
  `Id` int NOT NULL,
  `tytul` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `tresc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `idAutora` int NOT NULL,
  `idUzytkownika` int NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentarzedopodcastow`
--

CREATE TABLE `komentarzedopodcastow` (
  `Id` int NOT NULL,
  `tytul` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `tresc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `idUzytkownika` int NOT NULL,
  `idPodcastu` int NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsy`
--

CREATE TABLE `newsy` (
  `Id` int NOT NULL,
  `tytul` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `tresc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `idUzytkownika` int NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oceny`
--

CREATE TABLE `oceny` (
  `Id` int NOT NULL,
  `ocena` double DEFAULT NULL,
  `idPodcastu` int NOT NULL,
  `idUzytkownika` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `podcasty`
--

CREATE TABLE `podcasty` (
  `Id` int NOT NULL,
  `tytul` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `idAutora` int DEFAULT NULL,
  `zdjeciePodcastu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `idKategorii` int NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `Id` int NOT NULL,
  `imie` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `login` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `haslo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `czyAdmin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `komentarzedoautorow`
--
ALTER TABLE `komentarzedoautorow`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `komentarzedopodcastow`
--
ALTER TABLE `komentarzedopodcastow`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `newsy`
--
ALTER TABLE `newsy`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `idPodcastu` (`idPodcastu`,`idUzytkownika`);

--
-- Indexes for table `podcasty`
--
ALTER TABLE `podcasty`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentarzedoautorow`
--
ALTER TABLE `komentarzedoautorow`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentarzedopodcastow`
--
ALTER TABLE `komentarzedopodcastow`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsy`
--
ALTER TABLE `newsy`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oceny`
--
ALTER TABLE `oceny`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `podcasty`
--
ALTER TABLE `podcasty`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
