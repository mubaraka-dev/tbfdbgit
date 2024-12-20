-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 28 nov. 2024 à 14:31
-- Version du serveur : 8.0.40-0ubuntu0.24.04.1
-- Version de PHP : 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tbfdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `iddepart` int UNSIGNED NOT NULL,
  `nomdepart` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`iddepart`, `nomdepart`) VALUES
(1, 'RH'),
(2, 'Environnement'),
(3, 'A');

-- --------------------------------------------------------

--
-- Structure de la table `formStagiaire`
--

CREATE TABLE `formStagiaire` (
  `idstagiaire` bigint NOT NULL,
  `dateNaissance` date NOT NULL,
  `adresse` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `etablissement` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `parcours` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `specialite` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dureestage` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `objectifStage` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `encadrant` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `conventionStage` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `assurance` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `remuneration` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `competenceAnt` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `langue` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `attenteStage` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `idpersonform` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `formStagiaire`
--

INSERT INTO `formStagiaire` (`idstagiaire`, `dateNaissance`, `adresse`, `etablissement`, `parcours`, `specialite`, `dureestage`, `dateDebut`, `dateFin`, `objectifStage`, `encadrant`, `conventionStage`, `assurance`, `remuneration`, `competenceAnt`, `langue`, `attenteStage`, `idpersonform`) VALUES
(2, '2003-02-14', '35 KAYIBA,Q.PLATEAU 1,C/MONT-NGAFULA', 'UNIKIN', 'it fondamental', 'INFORMATIQUE DE GESTION', '14 JOURS', '2024-11-15', '2024-12-09', 'Metrre en pratique les matières apprisent au sein de la GET SKILLCLASS', 'COACH RUBEN KAYAMBALA', 'OUI', 'CELIBATEUR', 'REMBOURSEMENT TRANSORT', 'it fondamental', 'FRANCAIS', 'Maitriser le fonctionnement de la logistique', 19),
(3, '2002-09-22', 'LUKULA 4,Q/MFIDI,FIAKALA', 'GET SKILLSCLASS', 'IT FONDAMENTALE', 'SCIENCE ECONOMIQUE ET GESTION', '20 JOURS', '2024-11-07', '2050-01-01', 'Mise à niveau', 'COACH RUBEN KAYAMBALA', 'ASSISTANCE,REMBOURSEMENT TRANSPORT', 'CELIBATAIRE', 'REMBOURSEMENT TRANSPORT', '-', 'FRANCAIS,LINGALA,TSHILUBA', 'Mise à niveau', 20),
(4, '2003-12-10', '110bis,revolution,Q/3, MASINA', 'UNIKIN', 'INDISPONIBLE', 'INFORMATIQUE', 'INDISPONIBLE', '2050-01-01', '2050-01-01', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 21),
(5, '2002-11-28', 'KUMBI 7,Q/MIKONDO,C/KIMBASEKE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', '2050-01-01', '2050-01-01', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 22),
(6, '2003-06-24', 'KIAFU 17,Q/INTENDANCE,C/LEMBA', 'UNIKIN', 'INDISPONIBLE', 'gestion anglais des affaires', '3 jours', '2050-01-01', '2050-01-01', 'Pratiquer tous ce qu\'on a eu apprendre et ameliorer', 'RUBEN KAYAMBALA', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'lingala,français', 'INDISPONIBLE', 23),
(7, '1999-05-08', 'BASUKU 48,Q/KIMONDO,C/MONT-NGAFULA', 'UNIKIN', 'IT FONDAMENTAL', 'INFORMATIQUE DE GESTION ET ANGLAIS DES AFFAIRES', 'INDISPONIBLE', '2050-01-01', '2050-01-01', 'INDISPONIBLE', 'RUBEN KAYAMBALA', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'français,anglais,lingala', 'INDISPONIBLE', 24),
(8, '1999-04-16', 'JEAN ELOHO 7 BIS,Q/KINDELE,C/MONT-NGAFULA', 'UNIKIN', 'INDISPONIBLE', 'CONCEPTION DE SYSTEME D\'INFORMATION', 'INDISPONIBLE', '2050-01-01', '2050-01-01', 'NDISPONIBLE', 'COACH RUBEN KAYAMBALA', 'NDISPONIBLE', 'NDISPONIBLE', 'NDISPONIBLE', 'NDISPONIBLE', 'FRANçAIS,ANGLAIS,SHWAHILI,TSHILUBA,LINGALA', 'NDISPONIBLE', 25),
(9, '1999-07-17', 'kikwiti 11,Q/masamba,C/mont-ngafula', 'UNIKIN', 'INDISPONIBLE', 'GESTION INFORMATIQUE', '3 JOURS', '2050-01-01', '2050-01-01', 'INDISPONIBLE', 'RUBEN KAYAMBALA', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'FRANçAIS,LINGALA,KIKONGO', '-Etant que stagiaire j\'aimerai l\'apprentissage pratique\r\n-Intégration dans l\'équipe', 27),
(10, '1998-02-28', 'Nganaketi 27B,Q/Pelende,C/maina', 'UNIKIN', 'INDISPONIBLE', 'MEDECINE PHYSIQUE ET DE MEADATAPTION', '3 JOUS', '2050-01-01', '2050-01-01', 'Mise en application de cours reçu en Get skillsclass ', 'RUBEN KAYAMBALA', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'KIKONGO,LINGALA,FRANçAIS', 'Etre à la hauteur de tout ce qui nous sera démandé ', 28),
(11, '1997-03-02', 'kikwiti 2,Q/MASAMBA,C/MONT-NGAFULA', 'GET SKILLSCLASS', 'INDISPONIBLE', 'GENIE INFORMATIQUE', '3 JOUS', '2050-01-01', '2050-01-01', 'INDISPONIBLE', 'RUBEN KAYAMBALA', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'LINGALA,SWAHILI,TSHILUBA,FRANçAIS', 'Experimentation des apprentissages de notre parcours à la get skillsclass', 29),
(12, '2000-02-23', '24/71,9RUE,Q/CITE-VERTE,C/SELEMBAO', 'GET SKILLSCLASS', 'INDISPONIBLE', 'ECONOMIE PUBLIQUE', 'INDISPONIBLE', '2050-01-01', '2050-01-01', 'INDISPONIBLE', 'RUBEN KAYAMBALA', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'INDISPONIBLE', 'FRANçAIS,LINGALA,ANGLAIS', 'Etant stagiaire au sein de cette entreprise je m\'engage de travailler en équipe,apporter un peu le developpement ', 30);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `idpersonne` bigint NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `postnom` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sexe` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `statut` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `admin` int DEFAULT '0',
  `date` date DEFAULT NULL,
  `emailEditeur` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`idpersonne`, `nom`, `postnom`, `prenom`, `sexe`, `email`, `phone`, `statut`, `password`, `admin`, `date`, `emailEditeur`) VALUES
(1, 'tbf', 'tbf', 'tbf', '', 'tbf@gmail.com', '111111111111', 'superuser', 'tbf', 1, '2024-08-15', ''),
(19, 'ENOFO', 'ENOJU', 'EVI', 'F', 'evienofo31@gmail.com', '243998784483', 'Stagiaire', '123evi', 1, '2024-11-19', 'tbf@gmail.com'),
(20, 'NGOY', 'WA NGOY', 'GRACE', 'F', 'gracengoy95@gmail.com', '243832529680', 'Stagiaire', '1234', 0, '2024-11-19', 'evienofo31@gmail.com'),
(21, 'KUTEBWA', 'KUTEBWA', 'JENNYFA', 'F', 'Jennymopaokutebwa@gmail.com', '243817741160', 'Stagiaire', '1234', 0, '2024-11-19', 'evienofo31@gmail.com'),
(22, 'NTUMBA', 'NTUMBA', 'ESTHER', 'F', 'estherntumba367@gmail.com', '243980645232', 'Stagiaire', '1234', 0, '2024-11-19', 'evienofo31@gmail.com'),
(23, 'NZENGO', '-', 'PETER', 'M', 'Nzongopeter06@mail.com', '243900911827', 'Stagiaire', '1234', 0, '2024-11-19', 'evienofo31@gmail.com'),
(24, 'KAPENGA', 'NGOYI', 'BERNARD', 'M', 'bernardkapega8@gmail.com', '243821329833', 'Stagiaire', '1234', 0, '2024-11-19', NULL),
(25, 'ELEMBA', '-', 'PASCAL', 'M', 'elembapas@gmail.com', '243833516355', 'Stagiaire', '1234', 0, '2024-11-19', NULL),
(26, 'Mubaraka', 'Gembesse', 'C\'arrive', 'M', 'carrivemubaraka28@gmail.com', '243819339737', 'Stagiaire', 'carrive245', 1, '2024-11-20', 'tbf@gmail.com'),
(27, 'NYIMI', 'PHANZU', 'JOEL', 'M', 'Joelnyimi8@gmail.com', '243897201445', 'Stagiaire', '1234', 0, '2024-11-20', 'evienofo31@gmail.com'),
(28, 'NKUNI', '-', 'CARMI', 'M', 'carminkuni@gmail.com', '243815306802', 'Stagiaire', '1234', 0, '2024-11-20', 'evienofo31@gmail.com'),
(29, 'NSANGA', '-', 'DANIEL-WILSON', 'M', 'danielmangamusasa@gmail.com', '243819889444', 'Stagiaire', '1234', 0, '2024-11-20', 'evienofo31@gmail.com'),
(30, 'MBUYI', '-', 'PLAMEDIE', 'F', 'Plamemba@gmail.com', '243829380892', 'Stagiaire', '1234', 0, '2024-11-20', 'evienofo31@gmail.com'),
(31, 'SANGA', '-', 'JEMERIE', 'M', 'Sangamonganga@gmail.com', '243811275006', 'Stagiaire', '1234', 0, '2024-11-20', 'evienofo31@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `presence`
--

CREATE TABLE `presence` (
  `idpresence` int NOT NULL,
  `dateTime` datetime NOT NULL,
  `date` date NOT NULL,
  `heureArrive` time NOT NULL,
  `scanSignature` mediumblob NOT NULL,
  `idpersonp` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `rapportj`
--

CREATE TABLE `rapportj` (
  `idrapportj` bigint NOT NULL,
  `texteRapport` mediumtext,
  `scanDoc` mediumblob,
  `heureDepart` time NOT NULL,
  `captureHD` mediumblob,
  `idpersonrj` bigint NOT NULL,
  `periode` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `rapportpv`
--

CREATE TABLE `rapportpv` (
  `idrapportpv` bigint NOT NULL,
  `depDirection` int UNSIGNED NOT NULL,
  `dateReunion` date NOT NULL,
  `nbrParticipant` int NOT NULL,
  `texteRapport` mediumtext,
  `idpersonrpv` bigint NOT NULL,
  `periode` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE `visite` (
  `idvisite` bigint NOT NULL,
  `personVisite` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `motifVisite` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `personPresente` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `scanPiece` mediumblob NOT NULL,
  `dateTime` datetime NOT NULL,
  `idpersonv` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`iddepart`);

--
-- Index pour la table `formStagiaire`
--
ALTER TABLE `formStagiaire`
  ADD PRIMARY KEY (`idstagiaire`),
  ADD KEY `idpersonform` (`idpersonform`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`idpersonne`);

--
-- Index pour la table `presence`
--
ALTER TABLE `presence`
  ADD PRIMARY KEY (`idpresence`),
  ADD KEY `idpersonp` (`idpersonp`);

--
-- Index pour la table `rapportj`
--
ALTER TABLE `rapportj`
  ADD PRIMARY KEY (`idrapportj`),
  ADD KEY `idpersonrj` (`idpersonrj`);

--
-- Index pour la table `rapportpv`
--
ALTER TABLE `rapportpv`
  ADD PRIMARY KEY (`idrapportpv`),
  ADD KEY `idpersonrpv` (`idpersonrpv`),
  ADD KEY `fk_depDirection` (`depDirection`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`idvisite`),
  ADD KEY `idpersonv` (`idpersonv`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `iddepart` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `formStagiaire`
--
ALTER TABLE `formStagiaire`
  MODIFY `idstagiaire` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `idpersonne` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `presence`
--
ALTER TABLE `presence`
  MODIFY `idpresence` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `rapportj`
--
ALTER TABLE `rapportj`
  MODIFY `idrapportj` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `rapportpv`
--
ALTER TABLE `rapportpv`
  MODIFY `idrapportpv` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `visite`
--
ALTER TABLE `visite`
  MODIFY `idvisite` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `formStagiaire`
--
ALTER TABLE `formStagiaire`
  ADD CONSTRAINT `fk_personne` FOREIGN KEY (`idpersonform`) REFERENCES `personne` (`idpersonne`),
  ADD CONSTRAINT `formStagiaire_ibfk_1` FOREIGN KEY (`idpersonform`) REFERENCES `personne` (`idpersonne`);

--
-- Contraintes pour la table `presence`
--
ALTER TABLE `presence`
  ADD CONSTRAINT `presence_ibfk_1` FOREIGN KEY (`idpersonp`) REFERENCES `personne` (`idpersonne`);

--
-- Contraintes pour la table `rapportj`
--
ALTER TABLE `rapportj`
  ADD CONSTRAINT `fk_persrj` FOREIGN KEY (`idpersonrj`) REFERENCES `personne` (`idpersonne`),
  ADD CONSTRAINT `rapportj_ibfk_1` FOREIGN KEY (`idpersonrj`) REFERENCES `personne` (`idpersonne`);

--
-- Contraintes pour la table `rapportpv`
--
ALTER TABLE `rapportpv`
  ADD CONSTRAINT `fk_depDirection` FOREIGN KEY (`depDirection`) REFERENCES `departement` (`iddepart`),
  ADD CONSTRAINT `rapportpv_ibfk_1` FOREIGN KEY (`idpersonrpv`) REFERENCES `personne` (`idpersonne`);

--
-- Contraintes pour la table `visite`
--
ALTER TABLE `visite`
  ADD CONSTRAINT `fk_persv` FOREIGN KEY (`idpersonv`) REFERENCES `personne` (`idpersonne`),
  ADD CONSTRAINT `visite_ibfk_1` FOREIGN KEY (`idpersonv`) REFERENCES `personne` (`idpersonne`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
