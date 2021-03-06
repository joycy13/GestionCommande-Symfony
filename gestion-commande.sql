-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 23, 2019 at 09:57 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gestion-commande`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `adresse`, `mail`, `tel`) VALUES
(178905, 'Ohayon', 'Bryan', '19 avenue Paul Herbe - 95200 Sarcelles', 'ohayon.bryan@gmail.comm', 663967243),
(276899, 'Levy', 'Arie', '30 avenue Paul Herbe - 95200 Sarcelles', 'arie_levy@hotmail.fr', 603983452),
(358912, 'Toledano', 'Alan', '69 rue de la Republique - 93230 Romainville', 'alan.toledano@gmail.com', 623973520),
(548990, 'Hababou', 'Ruben', '76 rue du Champ Gallo - 95350 Saint Brice sous Foret', 'hababouruben@gmail.com', 61691150),
(930768, 'Elmaleh', 'Joyce', '14 rue Archereau - 75019 Paris', 'elmalehjoyce@gmail.com', 658003726);

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `date_co` datetime NOT NULL,
  `date_li` datetime NOT NULL,
  `id_pro_id` int(11) NOT NULL,
  `id_cli_id` int(11) NOT NULL,
  `id_sta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`id`, `date_co`, `date_li`, `id_pro_id`, `id_cli_id`, `id_sta_id`) VALUES
(3, '2019-04-25 00:00:00', '2019-05-02 00:00:00', 11003, 548990, 8),
(4, '2019-05-01 00:00:00', '2019-05-09 00:00:00', 12001, 358912, 1),
(34, '2019-04-30 00:00:00', '2019-05-07 00:00:00', 7856, 276899, 3),
(64, '2019-04-23 00:00:00', '2019-05-27 00:00:00', 6593, 930768, 8),
(955, '2019-05-01 00:00:00', '2019-05-05 00:00:00', 771, 178905, 5);

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190505135751', '2019-05-05 13:57:58'),
('20190505135950', '2019-05-05 13:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`id`, `libelle`) VALUES
(771, 'PC Ultra-Portable Asus'),
(6593, 'Apple iPhone XS'),
(7856, 'Apple iPad Pro'),
(11003, 'Chromebook HP'),
(12001, 'Tablette HP Spectre X2');

-- --------------------------------------------------------

--
-- Table structure for table `statut`
--

CREATE TABLE `statut` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statut`
--

INSERT INTO `statut` (`id`, `libelle`) VALUES
(1, 'En cours de validation '),
(2, 'Validée'),
(3, 'En cours de préparation '),
(4, 'Préparée'),
(5, 'En cours d\'expédition'),
(6, 'Expediée'),
(7, 'Transit'),
(8, 'Livrée');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6EEAA67DE5805157` (`id_pro_id`),
  ADD KEY `IDX_6EEAA67D9A79575D` (`id_cli_id`),
  ADD KEY `IDX_6EEAA67DC8BA16A` (`id_sta_id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=930769;

--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=956;

--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12002;

--
-- AUTO_INCREMENT for table `statut`
--
ALTER TABLE `statut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67D9A79575D` FOREIGN KEY (`id_cli_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_6EEAA67DC8BA16A` FOREIGN KEY (`id_sta_id`) REFERENCES `statut` (`id`),
  ADD CONSTRAINT `FK_6EEAA67DE5805157` FOREIGN KEY (`id_pro_id`) REFERENCES `produit` (`id`);