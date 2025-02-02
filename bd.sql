-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 31, 2025 at 11:06 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `adrese`
--

DROP TABLE IF EXISTS `adrese`;
CREATE TABLE IF NOT EXISTS `adrese` (
  `id_adresa` int NOT NULL AUTO_INCREMENT,
  `id_magazin` int DEFAULT NULL,
  `oras` varchar(50) DEFAULT NULL,
  `strada` varchar(50) DEFAULT NULL,
  `nr` int DEFAULT NULL,
  `judet` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_adresa`),
  UNIQUE KEY `id_magazin` (`id_magazin`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `adrese`
--

INSERT INTO `adrese` (`id_adresa`, `id_magazin`, `oras`, `strada`, `nr`, `judet`) VALUES
(1, 1, 'Bucuresti', 'Strada Victoriei', 10, 'Ilfov'),
(2, 2, 'Cluj-Napoca', 'Bulevardul Eroilor', 25, 'Cluj'),
(3, 3, 'Timisoara', 'Calea Aradului', 7, 'Timis'),
(4, 4, 'Iasi', 'Strada Cuza Voda', 15, 'Iasi'),
(5, 5, 'Constanta', 'Bd. Mamaia', 40, 'Constanta'),
(6, 6, 'Bucuresti', 'Str. Calarasi', 24, 'Ilfov'),
(7, 7, 'Cluj-Napoca', 'Str. Motilor', 12, 'Cluj'),
(8, 8, 'Timisoara', 'Str. Marasesti', 5, 'Timis'),
(9, 9, 'Iasi', 'Str. Sararie', 19, 'Iasi'),
(10, 10, 'Brasov', 'Str. Pictor Luchian', 4, 'Brasov'),
(11, 11, 'Constanta', 'Str. Mircea cel Batrân', 30, 'Constanta');

-- --------------------------------------------------------

--
-- Table structure for table `angajati`
--

DROP TABLE IF EXISTS `angajati`;
CREATE TABLE IF NOT EXISTS `angajati` (
  `id_angajati` int NOT NULL AUTO_INCREMENT,
  `functie` varchar(255) NOT NULL,
  `salariu` decimal(10,2) NOT NULL,
  `data_angajare` date DEFAULT NULL,
  `id_magazin` int DEFAULT NULL,
  `id_persoana` int DEFAULT NULL,
  `data_nasterii` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `istoric_training` text,
  `program_lucru` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_angajati`),
  KEY `id_magazin` (`id_magazin`),
  KEY `fk_angajati_persoane` (`id_persoana`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `angajati`
--

INSERT INTO `angajati` (`id_angajati`, `functie`, `salariu`, `data_angajare`, `id_magazin`, `id_persoana`, `data_nasterii`, `status`, `istoric_training`, `program_lucru`) VALUES
(1, 'Manager', 3000.00, '2024-01-15', 1, 5, '2004-12-07', 'concediu medical', 'fara training', '8:00-16.00'),
(2, 'Vânzator', 1500.00, '2024-02-01', 1, 6, '2003-07-12', 'activ', 'fara training', '8:00-16.00'),
(3, 'Manager', 2800.00, '2024-01-10', 2, 7, '2003-09-15', 'activ', 'fara training', '8:00-17.00'),
(4, 'Vânzator', 1400.00, '2024-02-10', 2, 8, '2002-04-12', 'activ', 'fara training', '8:00-17.00'),
(5, 'Vânzator', 1600.00, '2024-01-25', 3, 9, '2002-05-12', 'concediu', 'fara training', '8:00-19:00'),
(6, 'Manager', 3200.00, '2024-03-01', 5, 10, '2004-12-07', 'activ', 'fara training', '8:00-16.00'),
(7, 'Vânzator', 1600.00, '2024-02-15', 4, 11, '2004-12-07', 'concediu medical', 'fara training', '8:00-19:00'),
(8, 'Casier', 1400.00, '2024-02-20', 5, 12, '2003-07-12', 'activ', 'fara training', '8:00-17.00'),
(9, 'Manager', 3200.00, '2024-03-01', 3, 13, '2003-09-15', 'activ', 'fara training', '8:00-16.00'),
(10, 'Manager', 3200.00, '2024-02-15', 4, 14, '2003-09-15', 'activ', 'fara training', '8:00-17.00'),
(11, 'Manager', 2500.00, '2020-09-05', 6, 3, '2003-09-15', 'concediu medical', 'fara training', '8:00-19:00'),
(12, 'Vânzator', 1500.00, '2020-12-12', 6, 4, '2003-07-12', 'activ', 'fara training', '8:00-19:00'),
(13, 'Vânzator', 3000.00, '2025-01-10', 6, 38, '1990-03-15', 'activ', 'training initial', '8:00-16:00'),
(14, 'Manager magazin', 4500.00, '2025-01-12', 7, 39, '1985-05-22', 'activ', 'training management', '9:00-17:00'),
(15, 'Asistent vânzari', 2500.00, '2025-01-14', 8, 40, '1992-08-30', 'activ', 'training vânzari', '10:00-18:00'),
(16, 'Vânzator', 2800.00, '2025-01-16', 9, 41, '1993-02-10', 'activ', 'training produs', '8:30-16:30'),
(17, 'Manager magazin', 4700.00, '2025-01-18', 10, 42, '1984-12-01', 'activ', 'training leadership', '9:00-17:00'),
(18, 'Asistent vânzari', 2600.00, '2025-01-20', 11, 43, '1990-07-25', 'activ', 'training în stiluri vestimentare', '10:00-18:00'),
(19, 'Vânzator', 2900.00, '2025-01-22', 6, 44, '1991-09-10', 'activ', 'training initial', '8:00-16:00'),
(20, 'Manager magazin', 4600.00, '2025-01-24', 7, 45, '1983-04-15', 'activ', 'training management', '9:00-17:00'),
(21, 'Asistent vânzari', 2700.00, '2025-01-26', 8, 46, '1992-06-22', 'activ', 'training vânzari', '10:00-18:00'),
(22, 'Vânzator', 3100.00, '2025-01-28', 9, 47, '1994-03-05', 'activ', 'training produs', '8:30-16:30'),
(23, 'Manager magazin', 4800.00, '2025-01-30', 10, 48, '1986-11-12', 'activ', 'training leadership', '9:00-17:00'),
(24, 'Asistent vânzari', 2800.00, '2025-02-01', 11, 49, '1993-01-18', 'activ', 'training stiluri vestimentare', '10:00-18:00'),
(25, 'Vânzator', 1500.00, '2020-12-12', 6, 4, '2003-11-03', 'concediu', 'fara training', '8:00-17.00');

-- --------------------------------------------------------

--
-- Table structure for table `categorii_de_produse`
--

DROP TABLE IF EXISTS `categorii_de_produse`;
CREATE TABLE IF NOT EXISTS `categorii_de_produse` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `nume` varchar(100) NOT NULL,
  `descriere` text,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categorii_de_produse`
--

INSERT INTO `categorii_de_produse` (`id_categorie`, `nume`, `descriere`, `status`) VALUES
(1, 'Haine pentru barbati', 'Pantaloni, camasi, geci si alte articole vestimentare pentru barbati.', 'activ'),
(2, 'Haine pentru femei', 'Rochii, bluze, fuste si alte articole vestimentare pentru femei.', 'activ'),
(3, 'Haine pentru copii', 'Haine si accesorii pentru copii de toate vârstele.', 'activ'),
(4, 'Încaltaminte', 'Pantofi, ghete, sandale si alte tipuri de încaltaminte.', 'activ'),
(5, 'Accesorii', 'Genti, curele, esarfe si alte accesorii.', 'activ'),
(6, 'Jucarii', ' Plush-uri ', 'inactiv');

-- --------------------------------------------------------

--
-- Table structure for table `categorii_produse`
--

DROP TABLE IF EXISTS `categorii_produse`;
CREATE TABLE IF NOT EXISTS `categorii_produse` (
  `id_categorie` int NOT NULL,
  `id_produs` int NOT NULL,
  PRIMARY KEY (`id_categorie`,`id_produs`),
  KEY `id_produs` (`id_produs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categorii_produse`
--

INSERT INTO `categorii_produse` (`id_categorie`, `id_produs`) VALUES
(1, 1),
(2, 2),
(4, 3),
(5, 4),
(3, 5),
(1, 6),
(2, 7),
(1, 8),
(4, 9),
(2, 10),
(4, 11),
(1, 12),
(2, 13),
(5, 14),
(3, 15);

-- --------------------------------------------------------

--
-- Table structure for table `clienti`
--

DROP TABLE IF EXISTS `clienti`;
CREATE TABLE IF NOT EXISTS `clienti` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `data_inregistrarii` date DEFAULT NULL,
  `id_persoana` int DEFAULT NULL,
  `tip_client` varchar(50) DEFAULT NULL,
  `puncte_recompensa` int DEFAULT '0',
  `reducere_actuala` decimal(5,2) DEFAULT '0.00',
  PRIMARY KEY (`id_client`),
  KEY `fk_clienti_persoane` (`id_persoana`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `clienti`
--

INSERT INTO `clienti` (`id_client`, `data_inregistrarii`, `id_persoana`, `tip_client`, `puncte_recompensa`, `reducere_actuala`) VALUES
(1, '2024-01-15', 15, 'VIP', 100, 10.00),
(2, '2024-01-20', 16, 'client nou', 50, 5.00),
(3, '2024-01-22', 17, 'client nou', 50, 5.00),
(4, '2024-01-20', 1, 'client fidel', 70, 7.00),
(5, '2024-02-01', 2, 'client nou', 50, 5.00),
(6, '2025-01-10', 31, 'VIP', 150, 15.00),
(7, '2025-01-11', 32, 'Client Nou', 50, 5.00),
(8, '2025-01-12', 18, 'VIP', 200, 20.00),
(9, '2025-01-13', 19, 'Client Nou', 30, 3.00),
(10, '2025-01-14', 20, 'Client Fidel', 300, 30.00),
(11, '2025-01-15', 21, 'Client Nou', 60, 6.00),
(12, '2025-01-16', 22, 'VIP', 250, 25.00),
(13, '2025-01-17', 23, 'Client Fidel', 400, 40.00),
(14, '2025-01-18', 24, 'Client Nou', 45, 4.00),
(15, '2025-01-19', 25, 'VIP', 350, 35.00),
(16, '2025-01-20', 26, 'Client Nou', 70, 7.00),
(17, '2025-01-21', 27, 'Client Fidel', 500, 50.00),
(18, '2025-01-22', 28, 'Client Nou', 80, 8.00),
(19, '2025-01-23', 29, 'VIP', 450, 45.00),
(20, '2025-01-24', 30, 'Client Nou', 20, 2.00),
(21, '2025-01-10', 33, 'VIP', 150, 15.00),
(22, '2025-01-11', 34, 'Standard', 50, 5.00),
(23, '2025-01-12', 35, 'VIP', 200, 20.00),
(24, '2025-01-13', 36, 'Standard', 30, 3.00),
(25, '2025-01-14', 37, 'Gold', 300, 30.00),
(26, '2025-01-15', 21, 'Standard', 60, 6.00),
(27, '2025-01-16', 22, 'VIP', 250, 25.00),
(28, '2025-01-17', 23, 'Gold', 400, 40.00),
(29, '2025-01-18', 24, 'Standard', 45, 4.00),
(30, '2025-01-19', 25, 'VIP', 350, 35.00),
(31, '2025-01-20', 26, 'Standard', 70, 7.00),
(32, '2025-01-21', 27, 'Gold', 500, 50.00),
(33, '2025-01-22', 28, 'Standard', 80, 8.00),
(34, '2025-01-23', 29, 'VIP', 450, 45.00),
(35, '2025-01-24', 30, 'Standard', 20, 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `comenzi`
--

DROP TABLE IF EXISTS `comenzi`;
CREATE TABLE IF NOT EXISTS `comenzi` (
  `id_comanda` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `id_client` int DEFAULT NULL,
  `metoda_livrare` varchar(50) DEFAULT NULL,
  `mod_plata` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_comanda`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comenzi`
--

INSERT INTO `comenzi` (`id_comanda`, `data`, `total`, `id_client`, `metoda_livrare`, `mod_plata`) VALUES
(1, '2024-01-25', 400.00, 1, 'curier', 'card'),
(2, '2024-01-26', 150.00, 2, 'ridicare personala', 'card'),
(3, '2024-01-27', 300.00, 23, 'curier', 'transfer bancar'),
(4, '2025-01-15', 250.75, 1, 'Livrare la domiciliu', 'Plata cu cardul'),
(5, '2025-01-16', 120.50, 2, 'Ridicare din magazin', 'Plata la livrare'),
(6, '2025-01-17', 85.20, 25, 'Livrare rapida', 'Plata cu cardul'),
(7, '2025-01-18', 305.60, 23, 'Livrare la domiciliu', 'Plata cu cardul'),
(8, '2025-01-19', 210.30, 29, 'Livrare standard', 'Plata cu numerar'),
(9, '2025-01-20', 140.90, 16, 'Ridicare din magazin', 'Plata cu cardul'),
(10, '2025-01-21', 190.75, 23, 'Livrare rapida', 'Plata la livrare'),
(11, '2025-01-22', 65.40, 24, 'Livrare standard', 'Plata cu numerar'),
(12, '2025-01-23', 320.10, 27, 'Livrare la domiciliu', 'Plata cu cardul'),
(13, '2025-01-24', 115.80, 33, 'Ridicare din magazin', 'Plata la livrare'),
(14, '2025-01-25', 275.50, 28, 'Livrare rapida', 'Plata cu cardul'),
(15, '2025-01-26', 142.30, 19, 'Livrare standard', 'Plata cu numerar'),
(16, '2025-01-27', 310.90, 24, 'Livrare la domiciliu', 'Plata cu cardul'),
(17, '2025-01-28', 180.60, 20, 'Livrare rapida', 'Plata la livrare'),
(18, '2025-01-29', 250.00, 15, 'Ridicare din magazin', 'Plata cu cardul');

-- --------------------------------------------------------

--
-- Table structure for table `comenzi_produse`
--

DROP TABLE IF EXISTS `comenzi_produse`;
CREATE TABLE IF NOT EXISTS `comenzi_produse` (
  `id_comanda` int NOT NULL,
  `id_produs` int NOT NULL,
  PRIMARY KEY (`id_comanda`,`id_produs`),
  KEY `id_produs` (`id_produs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comenzi_produse`
--

INSERT INTO `comenzi_produse` (`id_comanda`, `id_produs`) VALUES
(1, 1),
(18, 1),
(1, 2),
(3, 2),
(18, 2),
(2, 3),
(15, 3),
(2, 4),
(12, 4),
(3, 5),
(16, 5),
(17, 5),
(12, 7),
(13, 7),
(14, 7),
(16, 8),
(16, 9),
(17, 10),
(15, 20),
(17, 20),
(18, 25),
(14, 27),
(17, 35),
(15, 36),
(16, 37),
(13, 45),
(16, 45);

-- --------------------------------------------------------

--
-- Table structure for table `furnizori`
--

DROP TABLE IF EXISTS `furnizori`;
CREATE TABLE IF NOT EXISTS `furnizori` (
  `id_furnizor` int NOT NULL AUTO_INCREMENT,
  `nume` varchar(255) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `oras` varchar(100) DEFAULT NULL,
  `strada` varchar(255) DEFAULT NULL,
  `nr` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `tip_furnizor` varchar(50) DEFAULT NULL,
  `data_inregistrare` date DEFAULT NULL,
  `status_furnizor` varchar(50) DEFAULT NULL,
  `judet` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_furnizor`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `furnizori`
--

INSERT INTO `furnizori` (`id_furnizor`, `nume`, `telefon`, `oras`, `strada`, `nr`, `email`, `website`, `tip_furnizor`, `data_inregistrare`, `status_furnizor`, `judet`) VALUES
(1, 'Furnizor 1', '0123456789', 'Bucuresti', 'Strada Mare', '1', 'furnizor@gmail', 'furnizor1.ro', 'producator', '2024-12-01', 'inactiv', 'Bucuresti'),
(2, 'Furnizor 2', '0987654321', 'Cluj', 'Strada Mica', '2', 'furnizor2@gmail', 'furnizor2.ro', 'distribuitor', '2023-07-09', 'inactiv', 'Cluj'),
(3, 'Furnizor 3', '1234567890', 'Timisoara', 'Strada Noua', '3', 'frurnizor3@gmail', 'furnizor3.ro', 'producator', '2020-11-11', 'activ', 'Timisoara'),
(4, 'Fashion Wholesale', '0745123456', 'Bucuresti', 'Str. Mihai Eminescu', '15', 'contact@fashionwhole', 'www.fashionwholesale.com', 'îmbracaminte', '2020-03-01', 'activ', 'Ilfov'),
(5, 'Trendy Fabrics', '0756123456', 'Cluj-Napoca', 'Str. Ion Creanga', '22', 'info@trendyfabrics.c', 'www.trendyfabrics.com', 'materiale textile', '2019-07-15', 'activ', 'Cluj'),
(6, 'Style Factory', '0767123456', 'Timisoara', 'Str. Vasile Alecsandri', '9', 'contact@stylefactory', 'www.stylefactory.com', 'întreprindere de moda', '2021-05-10', 'activ', 'Timis'),
(7, 'Luxury Textiles', '0748123456', 'Iasi', 'Str. Costache Negri', '12', 'sales@luxurytextiles', 'www.luxurytextiles.com', 'materiale textile', '2018-11-20', 'activ', 'Iasi'),
(8, 'Urban Chic Supplies', '0739123456', 'Brasov', 'Str. Libertatii', '5', 'contact@urbanchicsup', 'www.urbanchicsupplies.com', 'îmbracaminte', '2020-01-10', 'activ', 'Brasov'),
(9, 'Elegant Apparel Co.', '0720123456', 'Constanta', 'Str. Tomis', '33', 'support@elegantappar', 'www.elegantapparelco.com', 'întreprindere de moda', '2021-02-20', 'activ', 'Constanta'),
(10, 'Sleek Designs', '0771123456', 'Ploiesti', 'Str. Mihail Kogalniceanu', '18', 'contact@sleekdesigns', 'www.sleekdesigns.com', 'întreprindere de moda', '2020-08-14', 'activ', 'Prahova'),
(11, 'Fabric World', '0782123456', 'Craiova', 'Str. Stirbei Voda', '44', 'info@fabricworld.com', 'www.fabricworld.com', 'materiale textile', '2017-10-25', 'activ', 'Dolj'),
(12, 'Textile Traders', '0743123456', 'Oradea', 'Str. Emanuil Gojdu', '2', 'sales@textiletraders', 'www.textiletraders.com', 'materiale textile', '2022-01-15', 'activ', 'Bihor'),
(13, 'Chic Couture', '0754123456', 'Pitesti', 'Str. Victoriei', '8', 'contact@chiccouture.', 'www.chiccouture.com', 'întreprindere de moda', '2021-06-30', 'activ', 'Arges'),
(14, 'Classic Clothing', '0735123456', 'Sibiu', 'Str. Avram Iancu', '10', 'info@classicclothing', 'www.classicclothing.com', 'îmbracaminte', '2019-05-05', 'activ', 'Sibiu'),
(15, 'Luxury Fashion Group', '0766123456', 'Bucuresti', 'Str. Stefan cel Mare', '20', 'contact@luxuryfashio', 'www.luxuryfashiongroup.com', 'întreprindere de moda', '2018-03-18', 'activ', 'Bucuresti'),
(16, 'Fashion Inc.', '0783123456', 'Târgu Mures', 'Str. Unirii', '5', 'contact@fashioninc.c', 'www.fashioninc.com', 'producator', '2020-11-21', 'activ', 'Mures'),
(17, 'Smart Apparel', '0726123456', 'Arad', 'Str. Bulevardul Revolutiei', '26', 'support@smartapparel', 'www.smartapparel.com', 'întreprindere de moda', '2022-02-28', 'activ', 'Arad'),
(18, 'Vogue Textiles', '0756123457', 'Bucuresti', 'Str. Barbu Vacerescu', '3', 'contact@vogotextiles', 'www.vogotextiles.com', 'materiale textile', '2019-12-10', 'activ', 'Bucuresti'),
(19, 'Trendy Clothes Ltd.', '0767123457', 'Galati', 'Str. Otelarilor', '11', 'sales@trendyclothesl', 'www.trendyclothesltd.com', 'îmbracaminte', '2021-03-15', 'activ', 'Galati'),
(20, 'EcoFashion Supplies', '0772123456', 'Suceava', 'Str. Calea Unirii', '28', 'contact@ecofashionsu', 'www.ecofashionsupplies.com', 'materiale textile', '2020-09-05', 'activ', 'Suceava');

-- --------------------------------------------------------

--
-- Table structure for table `magazine_categorii`
--

DROP TABLE IF EXISTS `magazine_categorii`;
CREATE TABLE IF NOT EXISTS `magazine_categorii` (
  `id_magazin` int NOT NULL,
  `id_categorie` int NOT NULL,
  PRIMARY KEY (`id_magazin`,`id_categorie`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `magazine_categorii`
--

INSERT INTO `magazine_categorii` (`id_magazin`, `id_categorie`) VALUES
(1, 1),
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(1, 2),
(3, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(2, 3),
(3, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(2, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(4, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6);

-- --------------------------------------------------------

--
-- Table structure for table `magazine_sh`
--

DROP TABLE IF EXISTS `magazine_sh`;
CREATE TABLE IF NOT EXISTS `magazine_sh` (
  `id_magazin` int NOT NULL AUTO_INCREMENT,
  `nume_magazin` varchar(50) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `data_deschiderii` date DEFAULT NULL,
  `status_magazin` varchar(50) DEFAULT NULL,
  `tip_magazin` varchar(50) DEFAULT NULL,
  `ora_deschidere` time DEFAULT NULL,
  `ora_inchidere` time DEFAULT NULL,
  `zona_geografica` varchar(100) DEFAULT NULL,
  `program_lucru` text,
  `rating` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`id_magazin`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `magazine_sh`
--

INSERT INTO `magazine_sh` (`id_magazin`, `nume_magazin`, `telefon`, `email`, `data_deschiderii`, `status_magazin`, `tip_magazin`, `ora_deschidere`, `ora_inchidere`, `zona_geografica`, `program_lucru`, `rating`) VALUES
(1, 'Magazin Second Hand', '0722334455', 'magazinsh@gmail', '2024-12-12', 'Renovare', 'fizic', '08:00:00', '19:00:00', 'centru', 'Luni-Vineri', 4.00),
(2, 'Thrift Store', '0733667788', 'thriftstore@gmail', '2020-12-10', 'activ', 'online', NULL, NULL, NULL, NULL, 4.30),
(3, 'Retro Chic', '0744990011', 'retrochiv@gmail.com', '2019-05-27', 'renovare', 'fizic', '08:00:00', '19:00:00', 'centrul orasului', 'Luni-Sambata', 4.30),
(4, 'Vintage Vibes', '0755123456', 'Vintagevibes@gmail', '2018-06-03', 'activ', 'fizic', '08:00:00', '19:00:00', 'centul orasului', 'Luni-Sambata', 4.30),
(5, 'Sustainable Style', '0766778899', 'sustainablestyle@gmail', '2021-09-18', NULL, 'online', NULL, NULL, NULL, NULL, 4.70),
(6, 'Retro Revival', '0740123456', 'contact@retrorevival.com', '2018-05-10', 'activ', 'fizic', '09:00:00', '20:00:00', 'urban', 'Luni-Duminica', 4.50),
(7, 'Vintage Treasure', '0723345678', 'info@vintagetreasure.com', '2016-09-15', 'activ', 'fizic', '10:00:00', '19:00:00', 'centrul orasului', 'Luni-Sâmbata', 4.70),
(8, 'Thrift Haven', '0734567890', 'support@thrifthaven.com', '2020-03-20', 'activ', 'fizic', '08:30:00', '18:30:00', 'suburban', 'Luni-Sâmbata', 4.20),
(9, 'EcoWear', '0765432109', 'contact@ecowear.com', '2019-07-05', 'activ', 'fizic', '09:30:00', '19:30:00', 'rural', 'Luni-Vineri', 4.60),
(10, 'ReStyle Boutique', '0776543210', 'hello@restyleboutique.com', '2021-11-12', 'activ', 'fizic', '10:00:00', '18:00:00', 'urban', 'Marti-Duminica', 4.30),
(11, 'Second Chance', '0787654321', 'sales@secondchance.com', '2015-02-28', 'activ', 'fizic', '09:00:00', '21:00:00', 'centrul orasului', 'Luni-Duminica', 4.00);

-- --------------------------------------------------------

--
-- Table structure for table `marci`
--

DROP TABLE IF EXISTS `marci`;
CREATE TABLE IF NOT EXISTS `marci` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(255) NOT NULL,
  `descriere` text,
  `status` varchar(20) DEFAULT NULL,
  `tara_de_origine` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `marci`
--

INSERT INTO `marci` (`id_marca`, `marca`, `descriere`, `status`, `tara_de_origine`) VALUES
(1, 'Nike', 'Produse de sport si încaltaminte de performanta', 'activa', 'SUA 🇺🇸'),
(2, 'Adidas', 'Încaltaminte sportive si îmbracaminte casual', 'activa', 'Germania'),
(3, 'Puma', 'Încaltaminte sportive si articole vestimentare', 'activa', 'Germania'),
(4, 'Reebok', 'Încaltaminte sportive si produse de fitness', 'lichidare', 'Marea Britanie'),
(5, 'Levi\'s', 'Brand iconic de blugi si îmbracaminte casual.', 'activ', 'SUA'),
(6, 'Zara', 'Retailer de moda rapida, parte din grupul Inditex.', 'activ', 'Spania'),
(7, 'H&M', 'Companie internationala de moda accesibila.', 'activ', 'Suedia '),
(8, 'Gucci', 'Brand italian de lux, renumit pentru design exclusivist.', 'activ', 'Italia'),
(9, 'Prada', 'Brand de lux italian cunoscut pentru articole de piele ?i mod?.', 'activ', 'Italia'),
(10, 'Balenciaga', 'Casa de moda cu designuri avangardiste.', 'activ', 'Spania'),
(11, 'Calvin Klein', 'Brand de îmbracaminte si parfumuri recunoscut la nivel mondial.', 'activ', 'SUA'),
(12, 'Versace', 'Brand italian de lux cu design extravagant.', 'activ', 'Italia'),
(13, 'Tommy Hilfiger', 'Brand american de moda casual si premium.', 'activ', 'SUA'),
(14, 'New Balance', 'Producator de încaltaminte sportiva si casual.', 'activ', 'SUA'),
(15, 'Under Armour', 'Brand de echipamente sportive de înalta performanta.', 'activ', 'SUA'),
(16, 'North Face', 'Producator de îmbracaminte si echipamente outdoor.', 'activ', 'SUA'),
(17, 'Lacoste', 'Brand francez de îmbracaminte casual si sport.', 'activ', 'Franta'),
(18, 'Diesel', 'Brand italian de moda, cunoscut pentru blugi si haine casual.', 'activ', 'Italia'),
(19, 'Fendi', 'Casa de moda italiana, faimoasa pentru genti de lux.', 'activ', 'Italia'),
(20, 'Burberry', 'Casa de moda britanica, renumita pentru trenciurile sale.', 'activ', 'Marea Britanie'),
(21, 'Supreme', 'Brand de streetwear american, cunoscut pentru editiile limitate.', 'activ', 'SUA');

-- --------------------------------------------------------

--
-- Table structure for table `persoane`
--

DROP TABLE IF EXISTS `persoane`;
CREATE TABLE IF NOT EXISTS `persoane` (
  `id_persoana` int NOT NULL AUTO_INCREMENT,
  `nume` varchar(100) DEFAULT NULL,
  `prenume` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `oras` varchar(100) DEFAULT NULL,
  `strada` varchar(255) DEFAULT NULL,
  `nr` varchar(20) DEFAULT NULL,
  `judet` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_persoana`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `persoane`
--

INSERT INTO `persoane` (`id_persoana`, `nume`, `prenume`, `email`, `telefon`, `oras`, `strada`, `nr`, `judet`) VALUES
(1, 'Popescu', 'Ion', 'ion.popescu@email.com', '0712345678', 'Bucuresti', 'Bd ', '3', 'Bucuresti'),
(2, 'Ionescu', 'Maria', 'maria.ionescu@email.com', '0723456789', 'Ploiesti', 'Gageni', '4', 'Prahova'),
(3, 'Georgescu', 'Andrei', 'andrei.georgescu@email.com', '0734567890', 'Ploiesti', 'Gageni', '30', 'Prahova'),
(4, 'Vasilescu', 'Elena', 'elena.vasilescu@email.com', '0745678901', 'Bucuresti', 'Strada Victoriei', '50', 'Bucuresti'),
(5, 'Popescu', 'Andrei', 'andrei.popescu@example.com', '0745123456', 'Bucuresti', 'Str. Calarasi', '24', 'Ilfov'),
(6, 'Ionescu', 'Maria', 'maria.ionescu@example.com', '0746123456', 'Cluj-Napoca', 'Str. Morilor', '12', 'Cluj'),
(7, 'Georgescu', 'Ion', 'ion.georgescu@example.com', '0747123456', 'Timisoara', 'Str. Principala', '5', 'Timis'),
(8, 'Radu', 'Alexandra', 'alexandra.radu@example.com', '0748123456', 'Iasi', 'Str. Sararie', '19', 'Iasi'),
(9, 'Vasilescu', 'Mihai', 'mihai.vasilescu@example.com', '0749123456', 'Brasov', 'Str. Pictor Luchian', '4', 'Brasov'),
(10, 'Popa', 'Elena', 'elena.popa@example.com', '0750123456', 'Constanta', 'Str. Mircea cel Batrân', '30', 'Constanta'),
(11, 'Marin', 'George', 'george.marin@example.com', '0751123456', 'Pitesti', 'Str. Victoriei', '10', 'Arges'),
(12, 'Dumitrescu', 'Simona', 'simona.dumitrescu@example.com', '0752123456', 'Galati', 'Str. Otelarilor', '8', 'Galati'),
(13, 'Stanciu', 'Andreea', 'andreea.stanciu@example.com', '0753123456', 'Bucuresti', 'Str. Stefan cel Mare', '22', 'Bucuresti'),
(14, 'Munteanu', 'Florin', 'florin.munteanu@example.com', '0754123456', 'Suceava', 'Str. Calea Unirii', '28', 'Suceava'),
(15, 'Neagu', 'Cristian', 'cristian.neagu@example.com', '0755123456', 'Oradea', 'Str. Emanuil Gojdu', '2', 'Bihor'),
(16, 'B?lan', 'Ioana', 'ioana.balan@example.com', '0756123456', 'Târgu Mures', 'Str. Unirii', '11', 'Mures'),
(17, 'Iordache', 'Daniela', 'daniela.iordache@example.com', '0757123456', 'Arad', 'Str. Bulevardul Revolutiei', '15', 'Arad'),
(18, 'Fischer', 'Karl', 'karl.fischer@example.com', '0758123456', 'Ploiesti', 'Str. Mihail Kogalniceanu', '18', 'Prahova'),
(19, 'Mocanu', 'Laura', 'laura.mocanu@example.com', '0759123456', 'Sibiu', 'Str. Avram Iancu', '10', 'Sibiu'),
(20, 'Lupescu', 'Victor', 'victor.lupescu@example.com', '0760123456', 'Bucuresti', 'Str. Barbu Vacarescu', '3', 'Bucuresti'),
(21, 'Amza', 'Carmen', 'carmen.amza@example.com', '0761123456', 'Iasi', 'Str. Costache Negri', '12', 'Iasi'),
(22, 'C?linescu', 'Mihai', 'mihai.calinescu@example.com', '0762123456', 'Cluj-Napoca', 'Str. Ion Creanga', '22', 'Cluj'),
(23, 'P?unescu', 'Adriana', 'adriana.paunescu@example.com', '0763123456', 'Bucuresti', 'Str. Bulevardul Dacia', '4', 'Ilfov'),
(24, 'Moldovan', 'Sorin', 'sorin.moldovan@example.com', '0764123456', 'Satu Mare', 'Str. Arcului', '8', 'Satu Mare'),
(25, 'Dana', 'Vasile', 'vasile.dinca@example.com', '0765123456', 'Pitesti', 'Str. Dacia', '5', 'Arges'),
(26, 'Iancu', 'Raluca', 'raluca.iancu@example.com', '0766123456', 'Bacau', 'Str. Calea Moldovei', '19', 'Bacau'),
(27, 'Sima', 'Ion', 'ion.sima@example.com', '0767123456', 'Ploiesti', 'Str. Mihail Kogalniceanu', '10', 'Prahova'),
(28, 'Tudor', 'Denisa', 'denisa.tudor@example.com', '0768123456', 'Craiova', 'Str. Stirbei Voda', '5', 'Dolj'),
(29, 'Sârbu', 'Marian', 'marian.sarbu@example.com', '0769123456', 'Constanta', 'Str. Tomis', '22', 'Constanta'),
(30, 'Botezatu', 'Gabriela', 'gabriela.botezatu@example.com', '0770123456', 'Bucuresti', 'Str. Calea Victoriei', '15', 'Bucuresti'),
(31, 'Gheorghiu', 'Mihail', 'mihail.gheorghiu@example.com', '0771123456', 'Timisoara', 'Str. Marasesti', '7', 'Timis'),
(32, 'Stoica', 'Anca', 'anca.stoica@example.com', '0772123456', 'Galati', 'Str. Brailei', '9', 'Galati'),
(33, 'Dobre', 'Tudor', 'tudor.dobre@example.com', '0773123456', 'Bucuresti', 'Str. Mihai Eminescu', '14', 'Bucuresti'),
(34, 'Popescu', 'Larisa', 'larisa.popescu@example.com', '0774123456', 'Bistrita', 'Str. Gheorgheni', '3', 'Bistrita'),
(35, 'Popescu', 'Andrei', 'andrei.popescu@email.com', '0712345678', 'Bucuresti', 'Strada Victoriei', '10', 'Ilfov'),
(36, 'Ionescu', 'Maria', 'maria.ionescu@email.com', '0723456789', 'Cluj-Napoca', 'Strada Principala', '15', 'Cluj'),
(37, 'Georgescu', 'Ion', 'ion.georgescu@email.com', '0734567890', 'Timisoara', 'Strada Pacii', '5', 'Timis'),
(38, 'Dumitru', 'Elena', 'elena.dumitru@email.com', '0745678901', 'Brasov', 'Strada Harman', '8', 'Brasov'),
(39, 'Popa', 'Alexandra', 'alexandra.popa@email.com', '0756789012', 'Iasi', 'Strada Unirii', '12', 'Iasi'),
(40, 'Vasilescu', 'Mihai', 'mihai.vasilescu@email.com', '0767890123', 'Constanta', 'Strada Dorobantilor', '3', 'Constanta'),
(41, 'Stan', 'Ioana', 'ioana.stan@email.com', '0778901234', 'Ploiesti', 'Strada Timis', '6', 'Prahova'),
(42, 'Iliescu', 'Radu', 'radu.iliescu@email.com', '0789012345', 'Bacau', 'Strada Calea Moldovei', '18', 'Bacau'),
(43, 'Costache', 'Gabriela', 'gabriela.costache@email.com', '0790123456', 'Suceava', 'Strada Cetatii', '4', 'Suceava'),
(44, 'Munteanu', 'Florin', 'florin.munteanu@email.com', '0701234567', 'Oradea', 'Strada Bihorului', '2', 'Bihor'),
(45, 'Neagu', 'Anca', 'anca.neagu@email.com', '0712345679', 'Arad', 'Strada Albinelor', '9', 'Arad'),
(46, 'Sava', 'Nicolae', 'nicolae.sava@email.com', '0723456780', 'Galati', 'Strada Rosiori', '11', 'Galati'),
(47, 'Marin', 'Roxana', 'roxana.marin@email.com', '0734567891', 'Craiova', 'Strada Mare', '7', 'Dolj'),
(48, 'B?lan', 'Andreea', 'andreea.balan@email.com', '0745678902', 'Slatina', 'Strada Oltului', '13', 'Olt'),
(49, 'Dima', 'Lucian', 'lucian.dima@email.com', '0756789013', 'Târgu Mures', 'Strada Tudor Vladimirescu', '14', 'Mures');

-- --------------------------------------------------------

--
-- Table structure for table `produse`
--

DROP TABLE IF EXISTS `produse`;
CREATE TABLE IF NOT EXISTS `produse` (
  `id_produs` int NOT NULL AUTO_INCREMENT,
  `stare` varchar(50) NOT NULL,
  `pret` decimal(10,2) NOT NULL,
  `nume_produs` varchar(255) NOT NULL,
  `id_marca` int DEFAULT NULL,
  `cantitate` int DEFAULT NULL,
  `reducere` int DEFAULT NULL,
  PRIMARY KEY (`id_produs`),
  KEY `fk_produse_marca` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produse`
--

INSERT INTO `produse` (`id_produs`, `stare`, `pret`, `nume_produs`, `id_marca`, `cantitate`, `reducere`) VALUES
(1, 'Nou', 100.00, 'Camasa alba', 20, 10, 20),
(2, 'Usor uzat', 50.00, 'Rochie de seara', NULL, 3, 0),
(3, 'Foarte uzat', 20.00, 'Pantofi sport', NULL, 30, 15),
(4, 'Nou', 80.00, 'Geanta de mâna', NULL, 2, 40),
(5, 'Usor uzat', 30.00, 'Jacheta pentru copii', NULL, 7, 5),
(6, 'Nou', 120.00, 'Camasa casual', 17, 1, 30),
(7, 'Usor uzat', 40.00, 'Bluza de vara', NULL, 6, 10),
(8, 'Foarte uzat', 15.00, 'Pantaloni scurti', NULL, 20, 5),
(9, 'Nou', 150.00, 'Ghete de iarna', NULL, 5, 50),
(10, 'Usor uzat', 55.00, 'Fusta de seara', NULL, 4, 15),
(11, 'Foarte uzat', 25.00, 'Pantofi eleganti', NULL, 5, 5),
(12, 'Nou', 80.00, 'Pulover gros', NULL, 3, 20),
(13, 'Usor uzat', 100.00, 'Jacheta de piele', NULL, 4, 20),
(14, 'Nou', 40.00, 'Caciula ', NULL, 16, 30),
(15, 'Foarte uzat', 10.00, 'Salopete pentru copii', 17, 1, 5),
(16, 'Nou', 100.00, 'Camasa alba', NULL, 3, 40),
(17, 'Usor uzat', 50.00, 'Rochie de seara', NULL, 2, 10),
(18, 'Foarte uzat', 20.00, 'Pantofi sport', 3, 1, 0),
(19, 'Nou', 150.00, 'Ghete de iarna', NULL, 3, 20),
(20, 'Usor uzat', 55.00, 'Fusta de seara', NULL, 10, 50),
(21, 'Nou', 300.00, 'Adidasi Nike', 1, 1, 20),
(22, 'Usor uzat', 50.00, 'Tricou Adidas', 2, 2, 30),
(23, 'Foarte uzat', 40.00, 'Pantofi sport Puma', 3, 3, 30),
(24, 'Nou', 150.00, 'Ghete Reebok', 4, 1, 40),
(25, 'Usor uzat', 120.00, 'Adidasi Adidas', 2, 1, 40),
(26, 'Nou', 300.00, 'Adidasi Nike', 1, 1, 50),
(27, 'Usor uzat', 50.00, 'Tricou Adidas', 2, 4, 10),
(28, 'Foarte uzat', 40.00, 'Pantofi sport Puma', 3, 5, 20),
(29, 'Nou', 150.00, 'Ghete Reebok', 4, 1, 50),
(30, 'Usor uzat', 120.00, 'Adidasi Adidas', 2, 2, 50),
(31, 'nou', 120.50, 'Geaca de piele vintage', NULL, 5, 10),
(32, 'usor uzat', 45.00, 'Blugi Levis', NULL, 12, 5),
(33, 'nou', 80.00, 'Pulover din lâna', NULL, 8, 15),
(34, 'usor uzat', 35.99, 'Rochie eleganta', NULL, 6, 7),
(35, 'nou', 95.50, 'Trench coat clasic', NULL, 10, 12),
(36, 'usor uzat', 25.00, 'Tricou grafic', NULL, 20, 5),
(37, 'nou', 150.00, 'Pantofi din piele naturala', NULL, 4, 10),
(38, 'usor uzat', 60.00, 'Geanta de umar Guess', NULL, 3, 8),
(39, 'nou', 110.00, 'Sacou office', NULL, 7, 10),
(40, 'usor uzat', 55.00, 'Bluza din matase', NULL, 9, 5),
(41, 'nou', 75.00, 'Cizme lungi din piele', NULL, 6, 12),
(42, 'usor uzat', 40.00, 'Fusta plisata', NULL, 8, 5),
(43, 'nou', 135.00, 'Hanorac Adidas', NULL, 5, 10),
(44, 'usor uzat', 48.00, 'Pantaloni chino', NULL, 7, 7),
(45, 'nou', 200.00, 'Geaca North Face', NULL, 3, 15),
(46, 'usor uzat', 65.00, 'Sneakers Puma', NULL, 6, 10),
(47, 'nou', 90.00, 'Camasa din in', NULL, 10, 10),
(48, 'usor uzat', 30.00, 'Vesta din denim', NULL, 9, 5),
(49, 'nou', 170.00, 'Rucsac urban', NULL, 4, 12),
(50, 'usor uzat', 50.00, 'Pardesiu elegant', NULL, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `produse_furnizori`
--

DROP TABLE IF EXISTS `produse_furnizori`;
CREATE TABLE IF NOT EXISTS `produse_furnizori` (
  `id_produs` int NOT NULL,
  `id_furnizor` int NOT NULL,
  PRIMARY KEY (`id_produs`,`id_furnizor`),
  KEY `id_furnizor` (`id_furnizor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produse_furnizori`
--

INSERT INTO `produse_furnizori` (`id_produs`, `id_furnizor`) VALUES
(1, 1),
(3, 1),
(5, 1),
(11, 1),
(21, 1),
(1, 2),
(2, 2),
(11, 2),
(21, 2),
(2, 3),
(3, 3),
(4, 3),
(12, 3),
(22, 3),
(2, 4),
(12, 4),
(22, 4),
(3, 5),
(13, 5),
(23, 5),
(3, 6),
(13, 6),
(23, 6),
(4, 7),
(14, 7),
(24, 7),
(4, 8),
(14, 8),
(24, 8),
(5, 9),
(15, 9),
(25, 9),
(5, 10),
(15, 10),
(25, 10),
(6, 11),
(16, 11),
(6, 12),
(16, 12),
(7, 13),
(17, 13),
(7, 14),
(17, 14),
(8, 15),
(18, 15),
(8, 16),
(18, 16),
(9, 17),
(19, 17),
(9, 18),
(19, 18),
(10, 19),
(20, 19),
(10, 20),
(20, 20);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adrese`
--
ALTER TABLE `adrese`
  ADD CONSTRAINT `adrese_ibfk_1` FOREIGN KEY (`id_magazin`) REFERENCES `magazine_sh` (`id_magazin`) ON DELETE CASCADE;

--
-- Constraints for table `angajati`
--
ALTER TABLE `angajati`
  ADD CONSTRAINT `angajati_ibfk_1` FOREIGN KEY (`id_magazin`) REFERENCES `magazine_sh` (`id_magazin`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_angajati_persoane` FOREIGN KEY (`id_persoana`) REFERENCES `persoane` (`id_persoana`) ON DELETE CASCADE;

--
-- Constraints for table `categorii_produse`
--
ALTER TABLE `categorii_produse`
  ADD CONSTRAINT `categorii_produse_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorii_de_produse` (`id_categorie`) ON DELETE CASCADE,
  ADD CONSTRAINT `categorii_produse_ibfk_2` FOREIGN KEY (`id_produs`) REFERENCES `produse` (`id_produs`) ON DELETE CASCADE;

--
-- Constraints for table `clienti`
--
ALTER TABLE `clienti`
  ADD CONSTRAINT `fk_clienti_persoane` FOREIGN KEY (`id_persoana`) REFERENCES `persoane` (`id_persoana`) ON DELETE CASCADE;

--
-- Constraints for table `comenzi`
--
ALTER TABLE `comenzi`
  ADD CONSTRAINT `comenzi_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clienti` (`id_client`) ON DELETE CASCADE;

--
-- Constraints for table `comenzi_produse`
--
ALTER TABLE `comenzi_produse`
  ADD CONSTRAINT `comenzi_produse_ibfk_1` FOREIGN KEY (`id_comanda`) REFERENCES `comenzi` (`id_comanda`) ON DELETE CASCADE,
  ADD CONSTRAINT `comenzi_produse_ibfk_2` FOREIGN KEY (`id_produs`) REFERENCES `produse` (`id_produs`) ON DELETE CASCADE;

--
-- Constraints for table `magazine_categorii`
--
ALTER TABLE `magazine_categorii`
  ADD CONSTRAINT `magazine_categorii_ibfk_1` FOREIGN KEY (`id_magazin`) REFERENCES `magazine_sh` (`id_magazin`) ON DELETE CASCADE,
  ADD CONSTRAINT `magazine_categorii_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `categorii_de_produse` (`id_categorie`) ON DELETE CASCADE;

--
-- Constraints for table `produse`
--
ALTER TABLE `produse`
  ADD CONSTRAINT `fk_produse_marca` FOREIGN KEY (`id_marca`) REFERENCES `marci` (`id_marca`) ON DELETE SET NULL;

--
-- Constraints for table `produse_furnizori`
--
ALTER TABLE `produse_furnizori`
  ADD CONSTRAINT `produse_furnizori_ibfk_1` FOREIGN KEY (`id_produs`) REFERENCES `produse` (`id_produs`) ON DELETE CASCADE,
  ADD CONSTRAINT `produse_furnizori_ibfk_2` FOREIGN KEY (`id_furnizor`) REFERENCES `furnizori` (`id_furnizor`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
