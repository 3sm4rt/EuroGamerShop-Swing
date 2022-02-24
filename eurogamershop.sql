-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Már 29. 22:54
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `eurogamershop`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `admin`
--

CREATE TABLE `admin` (
  `id` int(40) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `admin`
--

INSERT INTO `admin` (`id`, `mail`, `user`, `pass`) VALUES
(1, 'tapai43@gmail.com', '3sm4rt', 'asd'),
(2, 'eurogamer@gmail.com', 'EuroGamer', 'Euro2016');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eladas`
--

CREATE TABLE `eladas` (
  `id` int(20) NOT NULL,
  `vegosszeg` int(20) NOT NULL,
  `fizetett` int(20) NOT NULL,
  `visszajaro` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `elszamolas`
--

CREATE TABLE `elszamolas` (
  `id` int(20) NOT NULL,
  `vasarlo_id` int(20) NOT NULL,
  `termek_neve` varchar(100) NOT NULL,
  `termek_ara` int(20) NOT NULL,
  `vegosszeg` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE `termekek` (
  `cikkszam` varchar(100) NOT NULL,
  `platform` varchar(40) NOT NULL,
  `nev` varchar(60) NOT NULL,
  `ar` int(60) NOT NULL,
  `afa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`cikkszam`, `platform`, `nev`, `ar`, `afa`) VALUES
('1', 'Xbox 360', 'Grand Theft Auto 5', 11, ''),
('2', 'Playstation 4', 'Uncharted', 12000, ''),
('EGS12818', 'Xbox One', 'Burnout Paradise', 4990, ''),
('EGS12817', 'Xbox One', 'Rare Replay', 5990, ''),
('EGS12816', 'Xbox One', 'Project Cars 2', 5990, ''),
('EGS12815', 'Xbox one', 'Deadrising 4', 5990, ''),
('EGS12814', 'Xbox One', 'Dying Light The Following', 5990, ''),
('1234', 'Valami', 'Valami', 29000, '27%'),
('54123', 'asdasd', 'asdasd', 299000, '27%');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vasarlok`
--

CREATE TABLE `vasarlok` (
  `id` int(11) NOT NULL,
  `iranyitoszam` varchar(6) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `lakcim` varchar(70) NOT NULL,
  `telefonszam` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `megjegyzes` varchar(100) NOT NULL,
  `pont` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `vasarlok`
--

INSERT INTO `vasarlok` (`id`, `iranyitoszam`, `nev`, `lakcim`, `telefonszam`, `email`, `megjegyzes`, `pont`) VALUES
(1, '5000', 'Nandor', 'Szege', '06307528586', 'tapai43@gmail.com', '', NULL);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `vasarlok`
--
ALTER TABLE `vasarlok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `vasarlok`
--
ALTER TABLE `vasarlok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
