-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 16 juin 2019 à 23:05
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `m2l-fredi`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

DROP TABLE IF EXISTS `adherents`;
CREATE TABLE IF NOT EXISTS `adherents` (
  `num_licence` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `adresse` varchar(255) NOT NULL,
  `code_postal` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `num_club` int(255) DEFAULT NULL,
  PRIMARY KEY (`num_licence`),
  KEY `num_club` (`num_club`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `adherents`
--

INSERT INTO `adherents` (`num_licence`, `sexe`, `mail`, `mdp`, `nom`, `prenom`, `date_naissance`, `adresse`, `code_postal`, `ville`, `num_club`) VALUES
('01', 'M', 'mathilde@hotmail.fr', '01', 'BANDILELLA', 'CLEMENT', '1998-07-26', '30, rue Widric 1er', '54600', 'Villers lès Nancy', 0),
('02', 'F', NULL, NULL, 'BERBIER', 'LUCILLE', '1998-03-24', '12, rue de Marron', '54600', 'Villers lès Nancy', NULL),
('03', 'M', NULL, NULL, 'BERBIER', 'THEO', '1998-03-24', '12, rue de Marron', '54600', 'Villers lès Nancy', NULL),
('04', 'M', NULL, NULL, 'BECKER', 'ROMAIN', '1998-03-28', '1, rue des Mésanges', '54600', 'Villers lès Nancy', NULL),
('05', 'F', NULL, NULL, 'BIACQUEL', 'VERONIQUE', '1962-12-09', '27, rue de Santifontaine', '54000', 'Nancy', NULL),
('06', 'F', NULL, NULL, 'BIDELOT', 'BRIGITTE', '1958-09-20', '5, rue des trois épis', '54600', 'Villers lès Nancy', NULL),
('07', 'F', NULL, NULL, 'BIDELOT', 'JULIE', '1991-11-30', '5, rue des trois épis', '54600', 'Villers lès Nancy', NULL),
('08', 'M', NULL, NULL, 'BILLOT', 'DIDIER', '1962-09-24', '6, rue de la Sapinière', '54600', 'Villers lès Nancy', NULL),
('09', 'F', NULL, NULL, 'BILLOT', 'CLAIRE', '1963-06-07', '6, rue de la Sapinière', '54600', 'Villers lès Nancy', NULL),
('10', 'F', NULL, NULL, 'BILLOT', 'MARIANNE', '1986-09-28', '6, rue de la Sapinière', '54600', 'Villers lès Nancy', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_frais`
--

DROP TABLE IF EXISTS `ligne_frais`;
CREATE TABLE IF NOT EXISTS `ligne_frais` (
  `num_licence` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `motif` int(11) NOT NULL,
  `trajet` varchar(255) NOT NULL,
  `km` int(11) NOT NULL,
  `cout_trajet` float NOT NULL,
  `cout_peage` float NOT NULL,
  `cout_repas` float NOT NULL,
  `cout_hebergement` float NOT NULL,
  `km_valide` tinyint(1) NOT NULL,
  `peage_valide` tinyint(1) NOT NULL,
  `repas_valide` tinyint(1) NOT NULL,
  `hebergement_valide` tinyint(1) NOT NULL,
  PRIMARY KEY (`num_licence`,`date`),
  KEY `motif` (`motif`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ligne_frais`
--

INSERT INTO `ligne_frais` (`num_licence`, `date`, `motif`, `trajet`, `km`, `cout_trajet`, `cout_peage`, `cout_repas`, `cout_hebergement`, `km_valide`, `peage_valide`, `repas_valide`, `hebergement_valide`) VALUES
('01', '2019-02-28', 1, 'depart', 140, 12, 54, 20, 50, 0, 0, 0, 0),
('01', '2019-06-02', 1, 'arrivé', 140, 80, 40, 15, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `motifs`
--

DROP TABLE IF EXISTS `motifs`;
CREATE TABLE IF NOT EXISTS `motifs` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `motifs`
--

INSERT INTO `motifs` (`id`, `libelle`) VALUES
(1, 'Réunion'),
(2, 'Compétition régionale'),
(3, 'Compétition nationale\r\n'),
(4, 'Compétition internationnale'),
(5, 'Stage');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
