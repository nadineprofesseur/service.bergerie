-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  jeu. 04 oct. 2018 à 08:05
-- Version du serveur :  5.7.23
-- Version de PHP :  7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bergerie`
--

-- --------------------------------------------------------

--
-- Structure de la table `clochette`
--

CREATE TABLE `clochette` (
  `id` int(11) NOT NULL,
  `mouton` int(11) NOT NULL,
  `moment` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `duree` float NOT NULL,
  `lieu` text NOT NULL,
  `intensite` float NOT NULL,
  `repetition` int(11) NOT NULL,
  `raison` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clochette`
--

INSERT INTO `clochette` (`id`, `mouton`, `moment`, `duree`, `lieu`, `intensite`, `repetition`, `raison`) VALUES
(1, 1, '2018-10-04 15:05:10', 2.5, 'A', 5, 2, ''),
(2, 1, '2018-10-04 04:00:00', 5, 'B', 9, 3, ''),
(3, 2, '2018-10-01 04:00:00', 1, 'C', 3, 2, ''),
(4, 2, '2018-10-03 04:00:00', 10, 'A', 4, 2, '');

-- --------------------------------------------------------

--
-- Structure de la table `mouton`
--

CREATE TABLE `mouton` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `naissance` date NOT NULL,
  `poids` float NOT NULL,
  `couleur` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mouton`
--

INSERT INTO `mouton` (`id`, `nom`, `naissance`, `poids`, `couleur`, `description`) VALUES
(1, 'Dolly', '2018-10-01', 5, 'rousse', 'bla bla'),
(2, 'Rollo', '2018-09-03', 10, 'Noir', 'Bla');

-- --------------------------------------------------------

--
-- Structure de la table `troupeau`
--

CREATE TABLE `troupeau` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `etable` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `troupeau`
--

INSERT INTO `troupeau` (`id`, `nom`, `etable`, `description`) VALUES
(1, 'vaillants', 'Étable Rouge', 'blablabla'),
(2, 'Les Frisés', 'Étable Verte', 'bla');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clochette`
--
ALTER TABLE `clochette`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mouton`
--
ALTER TABLE `mouton`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `troupeau`
--
ALTER TABLE `troupeau`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clochette`
--
ALTER TABLE `clochette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `mouton`
--
ALTER TABLE `mouton`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `troupeau`
--
ALTER TABLE `troupeau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
