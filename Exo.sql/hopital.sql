-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 24 juil. 2024 à 16:43
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hopital`
--

-- --------------------------------------------------------

--
-- Structure de la table `association_patient_chambre`
--

CREATE TABLE `association_patient_chambre` (
  `id_patient` int(5) DEFAULT NULL,
  `id_chambre` int(5) DEFAULT NULL,
  `date_entree` date DEFAULT NULL,
  `date_sortie` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `association_patient_chambre`
--

INSERT INTO `association_patient_chambre` (`id_patient`, `id_chambre`, `date_entree`, `date_sortie`) VALUES
(1, 10, '2011-02-01', '2011-02-15'),
(2, 17, '2011-01-01', '2011-02-01'),
(3, 11, '2010-05-28', '2010-07-26'),
(4, 11, '2010-11-11', '2011-01-15'),
(5, 12, '2010-12-01', '2011-01-15'),
(6, 6, '2011-01-10', '2011-02-15'),
(7, 13, '2011-01-07', '2011-01-30'),
(8, 8, '2011-01-09', '2011-01-11'),
(9, 14, '2011-01-21', '2011-02-11'),
(10, 10, '2011-01-18', '2011-02-02'),
(11, 2, '2011-01-13', '2011-01-14'),
(12, 2, '2011-01-11', '2011-01-11'),
(13, 13, '2011-02-01', '2011-02-17'),
(14, 3, '2011-02-01', '2011-02-02'),
(15, 4, '2011-02-01', '2011-02-05'),
(16, 16, '2011-02-01', '2011-02-09'),
(17, 4, '2011-02-07', '2011-02-09'),
(18, 7, '2011-02-09', '2011-02-11'),
(19, 19, '2011-02-07', '2011-02-16'),
(20, 7, '2011-02-01', '2011-02-02'),
(21, 18, '2011-02-01', '2011-02-13'),
(22, 22, '2011-02-01', '2011-02-19'),
(23, 23, '2011-01-11', '2011-02-10'),
(24, 24, '2011-01-05', '2011-02-23'),
(25, 21, '2011-01-15', '2011-02-08'),
(26, 26, '2011-02-08', '2011-02-22'),
(27, 10, '2011-02-09', '2011-02-21'),
(28, 27, '2011-02-08', '2011-02-27'),
(29, 8, '2011-02-01', '2011-02-06'),
(30, 9, '2011-02-01', '2011-02-08'),
(31, 20, '2011-02-01', '2011-02-25'),
(32, 15, '2011-02-01', '2011-02-25'),
(33, 25, '2011-02-05', '2011-02-19'),
(34, 5, '2011-02-12', '2011-02-13'),
(35, 27, '2011-02-01', '2011-02-18'),
(36, 21, '2011-02-09', '2011-02-23'),
(37, 6, '2011-02-16', '2011-02-17'),
(38, 3, '2011-02-08', '2011-02-10'),
(39, 2, '2011-02-01', '2011-02-01'),
(40, 1, '2011-02-10', '2011-02-10');

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `id_chambre` int(5) NOT NULL,
  `capacite` int(1) NOT NULL,
  `id_service` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`id_chambre`, `capacite`, `id_service`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 2, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(9, 1, 1),
(10, 2, 2),
(11, 1, 2),
(12, 1, 2),
(13, 1, 2),
(14, 1, 2),
(15, 2, 2),
(16, 1, 2),
(17, 1, 2),
(18, 1, 2),
(19, 1, 3),
(20, 2, 3),
(21, 1, 3),
(22, 1, 3),
(23, 1, 3),
(24, 1, 3),
(25, 2, 3),
(26, 1, 3),
(27, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `id_patient` int(5) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `sexe` char(1) NOT NULL,
  `poids` int(3) NOT NULL,
  `taille` int(3) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `date_naissance` date NOT NULL,
  `date_admission` date NOT NULL,
  `date_sortie` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`id_patient`, `prenom`, `nom`, `sexe`, `poids`, `taille`, `telephone`, `date_naissance`, `date_admission`, `date_sortie`) VALUES
(1, 'william', 'chavel', 'm', 70, 175, '0146216430', '1960-12-01', '2011-02-01', '2011-02-15'),
(2, 'gaetan', 'cottet', 'm', 72, 170, '0151184997', '1965-11-28', '2011-01-01', '2011-02-01'),
(3, 'jean', 'laborde', 'm', 65, 190, '0185102539', '1985-10-02', '2010-05-28', '2010-07-26'),
(4, 'charles', 'grand', 'm', 55, 165, '0117583312', '1969-06-06', '2010-11-11', '2011-01-15'),
(5, 'brigitte', 'fellier', 'f', 70, 163, '0114081420', '1967-03-07', '2010-12-01', '2011-01-15'),
(6, 'sarah', 'lafaye', 'f', 61, 166, '0186593933', '1986-08-23', '2011-01-10', '2011-02-15'),
(7, 'lucas', 'durand', 'm', 82, 175, '0180301513', '1961-12-01', '2011-01-07', '2011-01-30'),
(8, 'quentin', 'dupont', 'm', 83, 180, '0117396545', '1972-02-17', '2011-01-09', '2011-01-11'),
(9, 'patrick', 'lieutan', 'm', 88, 182, '0144348754', '1981-03-10', '2011-01-21', '2011-02-11'),
(10, 'emmanuel', 'winter', 'm', 87, 175, '0183858337', '1976-12-01', '2011-01-18', '2011-02-02'),
(11, 'elodie', 'blanchet', 'f', 50, 162, '0157746582', '1980-12-05', '2011-01-13', '2011-01-14'),
(12, 'agathe', 'laborde', 'f', 53, 159, '0162033996', '1988-12-10', '2011-01-11', '2011-01-11'),
(13, 'valentine', 'massin', 'f', 52, 167, '0110455932', '1985-12-11', '2011-02-01', '2011-02-17'),
(14, 'charlotte', 'desprez', 'f', 63, 169, '0117665710', '1982-12-01', '2011-02-01', '2011-02-02'),
(15, 'alice', 'geraud', 'f', 58, 163, '0148375244', '1977-03-02', '2011-02-01', '2011-02-05'),
(16, 'samuel', 'sennard', 'm', 70, 175, '0113683166', '1972-07-02', '2011-02-01', '2011-02-09'),
(17, 'mathieu', 'perrin', 'm', 69, 177, '0110840454', '1980-12-11', '2011-02-07', '2011-02-09'),
(18, 'noemie', 'miller', 'f', 53, 165, '0187703552', '1979-09-09', '2011-02-09', '2011-02-11'),
(19, 'simon', 'martin', 'm', 70, 170, '0138125000', '1965-10-09', '2011-02-07', '2011-02-16'),
(20, 'florian', 'lagarde', 'm', 73, 189, '0149531555', '1990-12-01', '2011-02-01', '2011-02-02'),
(21, 'clement', 'quotin', 'm', 71, 207, '0198939819', '1982-05-30', '2011-02-01', '2011-02-13'),
(22, 'yvon', 'cognet', 'm', 70, 172, '0188659362', '1970-07-19', '2011-02-01', '2011-02-19'),
(23, 'lea', 'sicra', 'f', 70, 175, '0157933349', '1973-12-01', '2011-01-11', '2011-02-10'),
(24, 'chloe', 'subar', 'f', 70, 175, '0131766662', '1975-12-01', '2011-01-05', '2011-02-23'),
(25, 'camille', 'biancalani', 'f', 77, 188, '0113191528', '1976-11-16', '2011-01-15', '2011-02-08'),
(26, 'alexandre', 'tuison', 'm', 68, 178, '0140220642', '1973-06-22', '2011-02-08', '2011-02-22'),
(27, 'julie', 'lobreau', 'f', 70, 175, '0193737792', '1979-07-07', '2011-02-09', '2011-02-21'),
(28, 'leo', 'flandroi', 'm', 76, 175, '0147575988', '1971-04-05', '2011-02-08', '2011-02-27'),
(29, 'antoine', 'radic', 'm', 55, 175, '0177033081', '1945-10-15', '2011-02-01', '2011-02-06'),
(30, 'lola', 'avinel', 'f', 70, 175, '0197074890', '1935-12-27', '2011-02-01', '2011-02-08'),
(31, 'celia', 'rambier', 'f', 48, 160, '0186475830', '1973-12-07', '2011-02-01', '2011-02-25'),
(32, 'anna', 'neumann', 'f', 45, 158, '0149147033', '1930-12-01', '2011-02-01', '2011-02-25'),
(33, 'caroline', 'masson', 'f', 54, 159, '0128901977', '1955-03-25', '2011-02-05', '2011-02-19'),
(34, 'adele', 'lopez', 'f', 67, 180, '0198909606', '1957-07-25', '2011-02-12', '2011-02-13'),
(35, 'sabrina', 'leroy', 'f', 56, 160, '0122084960', '1929-01-16', '2011-02-01', '2011-02-18'),
(36, 'nathalie', 'compan', 'f', 88, 169, '0133667297', '1982-09-22', '2011-02-09', '2011-02-23'),
(37, 'franck', 'arbaud', 'm', 95, 185, '0112235717', '1980-08-17', '2011-02-16', '2011-02-17'),
(38, 'tom', 'rigaud', 'm', 73, 182, '0120412292', '1986-11-08', '2011-02-08', '2011-02-10'),
(39, 'johan', 'gibert', 'm', 70, 175, '0121502685', '1928-11-15', '2011-02-01', '2011-02-01'),
(40, 'priscillia', 'messini', 'f', 63, 170, '0143324279', '1961-10-11', '2011-02-10', '2011-02-10');

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `id_personnel` int(5) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `sexe` char(1) NOT NULL,
  `profession` varchar(25) NOT NULL,
  `qualite` varchar(25) NOT NULL,
  `date_naissance` date NOT NULL,
  `salaire` int(6) NOT NULL,
  `id_service` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`id_personnel`, `prenom`, `nom`, `sexe`, `profession`, `qualite`, `date_naissance`, `salaire`, `id_service`) VALUES
(1, 'nathan', 'charvet', 'm', 'infirmier', 'employes', '1980-08-26', 1600, '1'),
(2, 'aurore', 'nicodeme', 'f', 'infirmier', 'employes', '1951-01-31', 1600, '1'),
(3, 'marie', 'archimbaud', 'f', 'secretaire', 'employes', '1978-02-01', 1300, '1'),
(4, 'oceane', 'trousse', 'f', 'infirmier', 'employes', '1983-11-23', 1600, '1'),
(5, 'enzo', 'delclos', 'm', 'infirmier', 'stagiaire', '1981-06-10', 700, '1'),
(6, 'ines', 'moulet', 'f', 'aide soignant', 'employes', '1988-05-21', 1400, '1'),
(7, 'hugo', 'larousse', 'm', 'medecin', 'employes', '1971-06-20', 1900, '1'),
(8, 'jonathan', 'durak', 'm', 'medecin', 'employes', '1986-03-15', 2000, '2'),
(9, 'axelle', 'boyet', 'f', 'secretaire', 'employes', '1968-04-17', 1300, '2'),
(10, 'morgane', 'baget', 'f', 'psychologue', 'employes', '1965-03-11', 1700, '3'),
(11, 'melissa', 'garcia', 'f', 'infirmier', 'employes', '1987-08-10', 1600, '3'),
(12, 'kevin', 'lagain', 'm', 'infirmier', 'employes', '1981-01-06', 1600, '2'),
(13, 'ophelie', 'peyras', 'f', 'medecin', 'employes', '1960-12-08', 2000, '3'),
(14, 'victoria', 'mazet', 'f', 'infirmier', 'employes', '1976-08-26', 1650, '2'),
(15, 'alexis', 'desmaison', 'm', 'infirmier', 'employes', '1980-01-29', 1600, '3'),
(16, 'robin', 'audy', 'm', 'infirmier', 'employes', '1970-09-29', 1600, '3'),
(17, 'assia', 'givaudan', 'f', 'infirmier', 'employes', '1960-05-05', 1500, '2');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id_service` int(5) NOT NULL,
  `nom` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`id_chambre`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id_patient`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id_personnel`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id_service`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `id_chambre` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `id_patient` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id_personnel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id_service` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
