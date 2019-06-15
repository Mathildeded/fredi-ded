-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 25 avr. 2018 à 08:22
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

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
(' 17 05 40 010 439', 'M', 'baba@baba.fr', 'azerty', 'LOTANG', 'CYPRIEN', '1999-09-30', '16, rue de Gerbéviller', '54000', 'Nancy', 0),
(' 17 05 40 010 401', 'M', 'baba@baba.fr', 'azerty', 'LIEVIN', 'NATHAN', '1997-01-24', '42, rue de la commanderie', '54840', 'Sexey les bois', 0),
(' 17 05 40 010 419', 'M', NULL, NULL, 'LANIELLE', 'NICOLAS', '1998-09-02', '10, rue des orchidées', '54600', 'Villers les Nancy', NULL),
(' 17 05 40 010 429', 'M', NULL, NULL, 'LAMOINE', 'GREGOIRE', '1993-07-23', '65, rue de la sivrite', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 432', 'M', NULL, NULL, 'LAFIEGLON', 'CLEMENT', '2002-11-16', '62, avenue Paul Déroulède', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 341', 'F', NULL, NULL, 'HUMERT', 'ISABELLE', '1976-06-04', '4 rue du maréchal Galliéni', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 382', 'F', NULL, NULL, 'HAGENBACH', 'CLEMENTINE', '1997-11-26', '19, rue de Lavaux', '54520', 'Laxou', NULL),
(' 17 05 40 010 395', 'M', NULL, NULL, 'GARBILLON', 'GILLES', '1963-07-08', '31, avenue de Marron', '54600', 'Villers lès nancy', NULL),
(' 17 05 40 010 446', 'M', NULL, NULL, 'DUCRICK', 'AUGUSTIN', '1996-12-03', '31, rue du chanoine Pierron', '54600', 'Villers lès nancy', NULL),
(' 17 05 40 010 409', 'F', NULL, NULL, 'DEPRETRE', 'BEATRICE', '1998-01-27', '26, rue du petit étang', '54110', 'Buissoncourt', NULL),
(' 17 05 40 010 351', 'M', NULL, NULL, 'DEPERRIN', 'ARNAUD', '1982-12-31', '40 rue Paul Bert', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 402', 'M', NULL, NULL, 'COTIN', 'FLORIAN', '1995-04-15', '14 route de Toul', '54113', 'Blenod les toul', NULL),
(' 17 05 40 010 440', 'M', NULL, NULL, 'CHOUARNO', 'TOM', '1999-08-02', '168, avenue de Boufflers', '54000', 'Nancy', NULL),
(' 17 05 40 010 441', 'M', NULL, NULL, 'CHEVOITINE', 'LOUIS', '1998-03-29', '40, rue de la république', '54320', 'Maxéville', NULL),
(' 17 05 40 010 414', 'M', NULL, NULL, 'CHERPION', 'UGO', '1999-09-24', '63, rue Français', '54000', 'Nancy', NULL),
(' 17 05 40 010 444', 'M', NULL, NULL, 'CALDI', 'THOMAS', '1998-09-22', '12, rue de Malzéville', '54000', 'Nancy', NULL),
(' 17 05 40 010 407', 'M', NULL, NULL, 'BINNET', 'MARIUS', '1997-08-21', '12, rue Edouard Grosjean', '54520', 'Laxou', NULL),
(' 17 05 40 010 254', 'F', NULL, NULL, 'BILLOT', 'MARIANNE', '1986-09-28', '6, rue de la Sapinière', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 329', 'F', NULL, NULL, 'BILLOT', 'CLAIRE', '1963-06-07', '6, rue de la Sapinière', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 308', 'M', NULL, NULL, 'BILLOT', 'DIDIER', '1962-09-24', '6, rue de la Sapinière', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 442', 'F', NULL, NULL, 'BIDELOT', 'JULIE', '1991-11-30', '5, rue des trois épis', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 399', 'F', NULL, NULL, 'BIDELOT', 'BRIGITTE', '1958-09-20', '5, rue des trois épis', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 334', 'F', NULL, NULL, 'BIACQUEL', 'VERONIQUE', '1962-12-09', '27, rue de Santifontaine', '54000', 'Nancy', NULL),
(' 17 05 40 010 309', 'M', NULL, NULL, 'BECKER', 'ROMAIN', '1998-03-28', '1, rue des Mésanges', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 338', 'M', NULL, NULL, 'BERBIER', 'THEO', '1998-03-24', '12, rue de Marron', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 340', 'F', NULL, NULL, 'BERBIER', 'LUCILLE', '1998-03-24', '12, rue de Marron', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 443', 'M', NULL, NULL, 'BANDILELLA', 'CLEMENT', '1998-07-26', '30, rue Widric 1er', '54600', 'Villers lès Nancy', NULL),
(' 17 05 40 010 364', 'M', NULL, NULL, 'LUQUE', 'ETIENNE', '1951-12-26', '1, rue de Normandie', '54500', 'Vandoeuvre', NULL),
(' 17 05 40 010 353', 'M', NULL, NULL, 'PERNOT', 'PAUL', '1996-04-26', '6, rue Winston Churchill', '54000', 'Nancy', NULL),
(' 17 05 40 010 121', 'M', NULL, NULL, 'SILBERT', 'GILLES', '1957-01-03', '2 , grande rue', '54210', 'Azelot', NULL),
(' 17 05 40 010 447', 'F', NULL, NULL, 'SILBERT', 'LEA', '2000-04-14', '1, allée du cénacle', '54520', 'Laxou', NULL),
(' 17 05 40 010 405', 'M', NULL, NULL, 'TORTEMANN', 'PIERRE', '1997-10-13', '34, rue de Badonviller', '54000', 'Nancy', NULL),
(' 17 05 40 010 437', 'M', NULL, NULL, 'ZOECKEL', 'MATHIEU', '2000-06-02', '15, rue de la Seille', '54320', 'Maxéville', NULL),
(' 17 05 40 010 418', 'F', NULL, NULL, 'ZUEL', 'STEPHANIE', '1970-09-25', '8, sentier de Saint-Arriant', '54520', 'Laxou', NULL),
('17 05 40 010 448', 'M', NULL, NULL, 'ZUERO', 'THOMAS', '2000-08-14', 'immeuble Savoie', '54520', 'Laxou', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
CREATE TABLE IF NOT EXISTS `clubs` (
  `id` int(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `num_ligue` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `num_ligue` (`num_ligue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clubs`
--

INSERT INTO `clubs` (`id`, `nom`, `num_ligue`) VALUES
(0, 'le club 0', 0);

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

-- --------------------------------------------------------

--
-- Structure de la table `ligues`
--

DROP TABLE IF EXISTS `ligues`;
CREATE TABLE IF NOT EXISTS `ligues` (
  `id` int(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `sigle` varchar(255) NOT NULL,
  `president` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ligues`
--

INSERT INTO `ligues` (`id`, `nom`, `sigle`, `president`) VALUES
(0, 'uneLigue', 'ul', 'mr president');

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
